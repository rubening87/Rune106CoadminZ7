class RuneServerAdmin expands WebApplication config;

var() class<RuneServerAdminSpectator> SpectatorType;
var RuneServerAdminSpectator Spectator;

var	ListItem GameTypeList;

var ListItem IncludeMaps;
var ListItem ExcludeMaps;

var ListItem IncludeMutators;
var ListItem ExcludeMutators;

var config string MenuPage;
var config string RootPage;

var config string CurrentPage;
var config string CurrentMenuPage;
var config string CurrentIndexPage;
var config string CurrentPlayersPage;
var config string CurrentGamePage;
var config string CurrentConsolePage;
var config string CurrentConsoleLogPage;
var config string CurrentConsoleSendPage;
var config string DefaultSendText;
var config string CurrentMutatorsPage;
var config string CurrentRestartPage;

var config string DefaultsPage;
var config string DefaultsMenuPage;
var config string DefaultsMapsPage;
var config string DefaultsRulesPage;
var config string DefaultsSettingsPage;
var config string DefaultsServerPage;
var config string DefaultsIPPolicyPage;
var config string DefaultsRestartPage;

var config string MessageUHTM;


var config string DefaultBG;
var config string HighlightedBG;

var config string AdminRealm;
var config string AdminUsername;
var config string AdminPassword;

event Init()
{
	Super.Init();
	
	if (SpectatorType != None)
		Spectator = Level.Spawn(SpectatorType);
	else
		Spectator = Level.Spawn(class'RuneServerAdminSpectator');
	
	// won't change as long as the server is up
	LoadGameTypes();	
	LoadMutators();
}

function LoadGameTypes()
{
	local class<GameInfo>	TempClass;
	local String 			NextGame;
	local ListItem	TempItem;
	local int				i, Pos;

	// reinitialize list if needed
	GameTypeList = None;
	
	// Compile a list of all gametypes.
	TempClass = class'GameInfo';
	NextGame = Level.GetNextInt("GameInfo", 0); 
	while (NextGame != "")
	{
		Pos = InStr(NextGame, ".");
		TempClass = class<GameInfo>(DynamicLoadObject(NextGame, class'Class'));

		TempItem = new(None) class'ListItem';
		TempItem.Tag = TempClass.Default.GameName;
		TempItem.Data = NextGame;

		if (GameTypeList == None)
			GameTypeList = TempItem;
		else
			GameTypeList.AddElement(TempItem);

		NextGame = Level.GetNextInt("GameInfo", ++i);
	}
}	

function LoadMutators()
{
	local int NumMutatorClasses;
	local string NextMutator, NextDesc;
	local listitem TempItem;
	local Mutator M;
	local int j;
	local int k;

	ExcludeMutators = None;

	Level.GetNextIntDesc("Engine.Mutator", 0, NextMutator, NextDesc);
	while( (NextMutator != "") && (NumMutatorClasses < 50) )
	{
		TempItem = new(None) class'ListItem';
		
		k = InStr(NextDesc, ",");
		if (k == -1)
			TempItem.Tag = NextDesc;
		else
			TempItem.Tag = Left(NextDesc, k);

		TempItem.Data = NextMutator;

		if (ExcludeMutators == None)
			ExcludeMutators = TempItem;
		else
			ExcludeMutators.AddSortedElement(ExcludeMutators, TempItem);
		NumMutatorClasses++;
		Level.GetNextIntDesc("Engine.Mutator", NumMutatorClasses, NextMutator, NextDesc);
	}

	IncludeMutators = None;
	
	for (M = Level.Game.BaseMutator.NextMutator; M != None; M = M.NextMutator)
	{
		TempItem = ExcludeMutators.DeleteElement(ExcludeMutators, String(M.Class));
		
		if (TempItem != None) {
			if (IncludeMutators == None)
				IncludeMutators = TempItem;
			else
				IncludeMutators.AddElement(TempItem);
		}
		else
			log("Unknown Mutator in use: "@String(M.Class));
	}
}

function String UsedMutators()
{
	local ListItem TempItem;
	local String OutStr;
	
	if(IncludeMutators == None)
		return "";

	OutStr = IncludeMutators.Data;
	for (TempItem = IncludeMutators.Next; TempItem != None; TempItem = TempItem.Next)
	{
		OutStr = OutStr$","$TempItem.Data;
	}
	
	return OutStr;
}

function String GenerateMutatorListSelect(ListItem MutatorList)
{
	local ListItem TempItem;
	local String ResponseStr, SelectedStr;
	
	if (MutatorList == None)
		return "<option value=\"\">*** None ***</option>";
		
	for (TempItem = MutatorList; TempItem != None; TempItem = TempItem.Next)
	{
		SelectedStr = "";
		if (TempItem.bJustMoved)
		{
			SelectedStr = " selected";
			TempItem.bJustMoved=false;
		}
		ResponseStr = ResponseStr$"<option value=\""$TempItem.Data$"\""$SelectedStr$">"$TempItem.Tag$"</option>";
	}
	return ResponseStr;
}

function String PadLeft(String InStr, int Width, String PadStr)
{
	local String OutStr;
	
	if (Len(PadStr) == 0)
		PadStr = " ";
		
	for (OutStr=InStr; Len(OutStr) < Width; OutStr=PadStr$OutStr);
	
	return Right(OutStr, Width); // in case PadStr is more than one character
}

function ApplyMapList(out ListItem ExcludeMaps, out ListItem IncludeMaps, String GameType, String MapListType)
{
	local class<MapList> MapListClass;
	local ListItem TempItem;
	local int IncludeCount, i;
	
	MapListClass = Class<MapList>(DynamicLoadObject(MapListType, class'Class'));
	
	IncludeMaps = None;
	ReloadExcludeMaps(ExcludeMaps, GameType);
	
	IncludeCount = ArrayCount(MapListClass.Default.Maps);
	for(i=0;i<IncludeCount;i++)
	{
		if(MapListClass.Default.Maps[i] == "")
			break;
		if (ExcludeMaps != None)
		{
			TempItem = ExcludeMaps.DeleteElement(ExcludeMaps, MapListClass.Default.Maps[i]);
			
			if(TempItem != None)
			{
				if (IncludeMaps == None)
					IncludeMaps = TempItem;
				else
					IncludeMaps.AddElement(TempItem);
			}
			else
				Log("*** Unknown map in Map List: "$MapListClass.Default.Maps[i]);
		}
		else
			Log("*** Empty exclude list, i="$i);
	}
}

function ReloadExcludeMaps(out ListItem ExcludeMaps, String GameType)
{
	local class<GameInfo>	GameClass;
	local string FirstMap, NextMap, TestMap, MapName;
	local ListItem TempItem;

	GameClass = class<GameInfo>(DynamicLoadObject(GameType, class'Class'));
	
	ExcludeMaps = None;
	if(GameClass.Default.MapPrefix == "")
		return;
	FirstMap = Level.GetMapName(GameClass.Default.MapPrefix, "", 0);
	NextMap = FirstMap;
	while (!(FirstMap ~= TestMap) && FirstMap != "")
	{
		// Add the map.
		TempItem = new(None) class'ListItem';
		TempItem.Data = NextMap;
		
		if(Right(NextMap, 4) ~= ".unr")
			TempItem.Tag = Left(NextMap, Len(NextMap) - 4);
		else
			TempItem.Tag = NextMap;
			
		if (ExcludeMaps == None)
			ExcludeMaps = TempItem;
		else
			ExcludeMaps.AddSortedElement(ExcludeMaps, TempItem);
			
		NextMap = Level.GetMapName(GameClass.Default.MapPrefix, NextMap, 1);
		TestMap = NextMap;
	}
}

function ReloadIncludeMaps(out ListItem ExcludeMaps, out ListItem IncludeMaps, String GameType)
{
	local class<GameInfo> GameClass;
	local ListItem TempItem;
	local int i;

	GameClass = class<GameInfo>(DynamicLoadObject(GameType, class'Class'));
	if(GameClass.Default.MapListType == None)
		return;
	if (GameClass != None)
	{
		for (i=0; i<ArrayCount(GameClass.Default.MapListType.Default.Maps) && GameClass.Default.MapListType.Default.Maps[i] != ""; i++)
		{
			// Add the map.
			TempItem = ExcludeMaps.DeleteElement(ExcludeMaps, GameClass.Default.MapListType.Default.Maps[i]);
			if (TempItem == None)
			{
				TempItem = new(None) class'ListItem';
				TempItem.Data = GameClass.Default.MapListType.Default.Maps[i];
				
				if(Right(TempItem.Data, 4) ~= ".unr")
					TempItem.Tag = Left(TempItem.Data, Len(TempItem.Data) - 4);
				else
					TempItem.Tag = TempItem.Data;
			}			
			else
			{
				if (IncludeMaps == None)
					IncludeMaps = TempItem;
				else
					IncludeMaps.AddElement(TempItem);
			}
		}
	}
}

function UpdateDefaultMaps(String GameType, ListItem TempItem)
{
	local class<GameInfo> GameClass;
	local int i;
	
	GameClass = class<GameInfo>(DynamicLoadObject(GameType, class'Class'));

	for (i=0; i<ArrayCount(GameClass.Default.MapListType.Default.Maps); i++)
	{
		if (TempItem != None)
		{
			GameClass.Default.MapListType.Default.Maps[i] = TempItem.Data;
			TempItem = TempItem.Next;
		}
		else
			GameClass.Default.MapListType.Default.Maps[i] = "";
	}
	
	GameClass.Static.StaticSaveConfig();
}

function String GenerateGameTypeOptions(String CurrentGameType)
{
	local ListItem TempItem;
	local String SelectedStr, OptionStr;

	for (TempItem = GameTypeList; TempItem != None; TempItem = TempItem.Next)
	{
		if (CurrentGameType ~= TempItem.Data)
			SelectedStr = " selected";
		else
			SelectedStr = "";
				
		OptionStr = OptionStr$"<option value=\""$TempItem.Data$"\""$SelectedStr$">"$TempItem.Tag$"</option>";
	}
	return OptionStr;
}

function String GenerateMapListOptions(String GameType, String MapListType)
{
	local class<GameInfo> GameClass;
	local String DefaultBaseClass, NextDefault, NextDesc, SelectedStr, OptionStr;
	local int NumDefaultClasses;
	
	GameClass = class<GameInfo>(DynamicLoadObject(GameType, class'Class'));
	if(GameClass == None)
		return "";

	DefaultBaseClass = String(GameClass.Default.MapListType);

	if(DefaultBaseClass == "")
		return "";

	NextDefault = "Custom";
	NextDesc = "Custom";
	
	if(DynamicLoadObject(DefaultBaseClass, class'Class') == None)
		return "";
	while( (NextDefault != "") && (NumDefaultClasses < 50) )
	{
		if (MapListType ~= NextDefault)
			SelectedStr = " selected";
		else
			SelectedStr = "";
			
		OptionStr = OptionStr$"<option value=\""$NextDefault$"\""$SelectedStr$">"$NextDesc$"</option>";
			
		Level.GetNextIntDesc(DefaultBaseClass, NumDefaultClasses++, NextDefault, NextDesc);
	}				
	return OptionStr;
}

function String GenerateMapListSelect(ListItem MapList, optional string SelectedItem)
{
	local ListItem TempItem;
	local String ResponseStr, SelectedStr;
	
	if (MapList == None)
		return "<option value=\"\">*** None ***</option>";
		
	for (TempItem = MapList; TempItem != None; TempItem = TempItem.Next) {
		SelectedStr = "";
		if (TempItem.Data ~= SelectedItem || TempItem.bJustMoved)
			SelectedStr = " selected";
		ResponseStr = ResponseStr$"<option value=\""$TempItem.Data$"\""$SelectedStr$">"$TempItem.Tag$"</option>";
	}
	
	return ResponseStr;
}


//*****************************************************************************
event Query(WebRequest Request, WebResponse Response)
{
	// Check authentication:
	if ((AdminUsername != "" && Caps(Request.Username) != Caps(AdminUsername)) || (AdminPassword != "" && Caps(Request.Password) != Caps(AdminPassword)))
	{
		Response.FailAuthentication(AdminRealm);
		return;
	}
	
	Response.Subst("BugAddress", "runebugs"$Level.EngineVersion$"@humanhead.com");

	// Match query function.  checks URI and calls appropriate input/output function
	switch (Mid(Request.URI, 1)) {
	case "":
	case RootPage:
		QueryRoot(Request, Response); break;
	case MenuPage:
		QueryMenu(Request, Response); break;
	case CurrentPage:
		QueryCurrent(Request, Response); break;
	case CurrentMenuPage:
		QueryCurrentMenu(Request, Response); break;
	case CurrentPlayersPage:
		QueryCurrentPlayers(Request, Response); break;
	case CurrentGamePage:
		QueryCurrentGame(Request, Response); break;
	case CurrentConsolePage:
		QueryCurrentConsole(Request, Response); break;
	case CurrentConsoleLogPage:
		QueryCurrentConsoleLog(Request, Response); break;
	case CurrentConsoleSendPage:
		QueryCurrentConsoleSend(Request, Response); break;
	case CurrentMutatorsPage:
		QueryCurrentMutators(Request, Response); break;
	case CurrentRestartPage:
	case DefaultsRestartPage:
		QueryRestartPage(Request, Response); break;
	case DefaultsPage:
		QueryDefaults(Request, Response); break;
	case DefaultsMenuPage:
		QueryDefaultsMenu(Request, Response); break;
	case DefaultsMapsPage:
		QueryDefaultsMaps(Request, Response); break;
	case DefaultsRulesPage:
		QueryDefaultsRules(Request, Response); break;
	case DefaultsSettingsPage:
		QueryDefaultsSettings(Request, Response); break;
	case DefaultsServerPage:
		QueryDefaultsServer(Request, Response); break;
	case DefaultsIPPolicyPage:
		QueryDefaultsIPPolicy(Request, Response); break;
	default:
		Response.SendText("ERROR: Page not found or enabled.");

	}		
}

//*****************************************************************************
function QueryRoot(WebRequest Request, WebResponse Response)
{
	local String GroupPage;
	
	GroupPage = Request.GetVariable("Group", CurrentPage);
	
	Response.Subst("MenuURI", MenuPage$"?Group="$GroupPage);
	Response.Subst("MainURI", GroupPage);
	
	Response.IncludeUHTM("root.uhtm");
}


function QueryMenu(WebRequest Request, WebResponse Response)
{
	Response.Subst("CurrentBG", 	DefaultBG);
	Response.Subst("DefaultsBG",	DefaultBG);
	
	
	switch(Request.GetVariable("Group", DefaultsPage)) {
	case CurrentPage:
		Response.Subst("CurrentBG", 	HighlightedBG); break;
	case DefaultsPage:
		Response.Subst("DefaultsBG",	HighlightedBG); break;
	}

	// Set URIs
	Response.Subst("CurrentURI", 	RootPage$"?Group="$CurrentPage);
	Response.Subst("DefaultsURI", 	RootPage$"?Group="$DefaultsPage);

	Response.IncludeUHTM(MenuPage$".uhtm");
	Response.ClearSubst();	
	
}

//*****************************************************************************
function QueryCurrent(WebRequest Request, WebResponse Response)
{
	local String Page;
	
	// if no page specified, use the default
	Page = Request.GetVariable("Page", CurrentGamePage);

	Response.Subst("IndexURI", 	CurrentMenuPage$"?Page="$Page);
	Response.Subst("MainURI", 	Page);
	
	Response.IncludeUHTM(CurrentPage$".uhtm");
	Response.ClearSubst();
}

function QueryCurrentMenu(WebRequest Request, WebResponse Response)
{
	local String Page;
	
	Page = Request.GetVariable("Page", CurrentGamePage);
		
	// set background colors
	Response.Subst("DefaultBG", DefaultBG);	// for unused tabs

	Response.Subst("PlayersBG", DefaultBG);
	Response.Subst("GameBG", 	DefaultBG);
	Response.Subst("ConsoleBG",	DefaultBG);
	Response.Subst("MutatorsBG",DefaultBG);
	Response.Subst("RestartBG", DefaultBG);
	
	switch(Page) {
	case CurrentPlayersPage:
		Response.Subst("PlayersBG",	HighlightedBG); break;
	case CurrentGamePage:
		Response.Subst("GameBG", 	HighlightedBG); break;
	case CurrentConsolePage:
		Response.Subst("ConsoleBG",	HighlightedBG); break;
	case CurrentMutatorsPage:
		Response.Subst("MutatorsBG",HighlightedBG); break;
	case CurrentRestartPage:
		Response.Subst("RestartBG", HighlightedBG); break;
	}

	// Set URIs
	Response.Subst("PlayersURI", 	CurrentPage$"?Page="$CurrentPlayersPage);
	Response.Subst("GameURI",		CurrentPage$"?Page="$CurrentGamePage);
	Response.Subst("ConsoleURI", 	CurrentPage$"?Page="$CurrentConsolePage);
	Response.Subst("MutatorsURI", 	CurrentPage$"?Page="$CurrentMutatorsPage);
	Response.Subst("RestartURI", 	CurrentPage$"?Page="$CurrentRestartPage);
	
	Response.IncludeUHTM(CurrentMenuPage$".uhtm");
	Response.ClearSubst();
}

function QueryCurrentPlayers(WebRequest Request, WebResponse Response)
{
	local string Sort, PlayerListSubst, TempStr;
	local ListItem PlayerList, TempItem;
	local Pawn P;
	local int i, PawnCount, j;
	local string IP;
	
	Sort = Request.GetVariable("Sort", "Name");
	
	for (P=Level.PawnList; P!=None; P=P.NextPawn)
	{
		if(		PlayerPawn(P) != None 
			&&	P.PlayerReplicationInfo != None
			&&	NetConnection(PlayerPawn(P).Player) != None)
		{
			if(Request.GetVariable("BanPlayer"$string(P.PlayerReplicationInfo.PlayerID)) != "")
			{
				IP = PlayerPawn(P).GetPlayerNetworkAddress();
				if(Level.Game.CheckIPPolicy(IP))
				{
					IP = Left(IP, InStr(IP, ":"));
					Log("Adding IP Ban for: "$IP);
					for(j=0;j<50;j++)
						if(Level.Game.IPPolicies[j] == "")
							break;
					if(j < 50)
						Level.Game.IPPolicies[j] = "DENY,"$IP;
					Level.Game.SaveConfig();
				}
				P.Destroy();
			}
			else
			{
				if(Request.GetVariable("KickPlayer"$string(P.PlayerReplicationInfo.PlayerID)) != "")
					P.Destroy();
			}
		}
	}

	for (P=Level.PawnList; P!=None; P=P.NextPawn)
	{
		if (P.bIsPlayer && !P.bDeleteMe && RuneServerAdminSpectator(P) == None)
		{
			PawnCount++;
			TempItem = new(None) class'ListItem';

			if (P.PlayerReplicationInfo.bIsABot)
			{
				TempItem.Data = "<tr><td width=\"1%\" colspan=2>&nbsp;</td>";
				TempStr = "&nbsp;(Bot)";
			}
			else
			{
				TempItem.Data = "<tr><td width=\"1%\"><div align=\"center\"><input type=\"checkbox\" name=\"KickPlayer"$P.PlayerReplicationInfo.PlayerID$"\" value=\"kick\"></div></td><td width=\"1%\"><div align=\"center\"><input type=\"checkbox\" name=\"BanPlayer"$P.PlayerReplicationInfo.PlayerID$"\" value=\"ban\"></div></td>";
				if (P.PlayerReplicationInfo.bIsSpectator)
					TempStr = "&nbsp;(Spectator)";
				else
					TempStr = "";
			}
			if(PlayerPawn(P) != None)
			{
				IP = PlayerPawn(P).GetPlayerNetworkAddress();
				IP = Left(IP, InStr(IP, ":"));
			}
			else
				IP = "";
			TempItem.Data = TempItem.Data$"<td><div align=\"left\">"$P.PlayerReplicationInfo.PlayerName$TempStr$"</div></td><td width=\"1%\"><div align=\"center\">"$P.PlayerReplicationInfo.TeamName$"&nbsp;</div></td><td width=\"1%\"><div align=\"center\">"$P.PlayerReplicationInfo.Ping$"</div></td><td width=\"1%\"><div align=\"center\">"$int(P.PlayerReplicationInfo.Score)$"</div></td><td width=\"1%\"><div align=\"center\">"$IP$"</div></td></tr>";
			
			switch (Sort)
			{
				case "Name":
					TempItem.Tag = P.PlayerReplicationInfo.PlayerName; break;
				case "Team":
					TempItem.Tag = PadLeft(P.PlayerReplicationInfo.TeamName, 2, "0"); break;
				case "Ping":
					TempItem.Tag = PadLeft(String(P.PlayerReplicationInfo.Ping), 4, "0"); break;
				default:
					TempItem.Tag = PadLeft(String(int(P.PlayerReplicationInfo.Score)), 3, "0"); break;
			}
			if (PlayerList == None)
				PlayerList = TempItem;
			else
				PlayerList.AddSortedElement(PlayerList, TempItem);
		}
	}
	if (PawnCount > 0)
	{
		if (Sort ~= "Score")
			for (TempItem=PlayerList; TempItem!=None; TempItem=TempItem.Next)
				PlayerListSubst = TempItem.Data$PlayerListSubst;
			
		else
			for (TempItem=PlayerList; TempItem!=None; TempItem=TempItem.Next)
				PlayerListSubst = PlayerListSubst$TempItem.Data;
	}
	else
		PlayerListSubst = "<tr align=\"center\"><td colspan=\"5\">** No Players Connected **</td></tr>";

	Response.Subst("PlayerList", PlayerListSubst);
	Response.Subst("CurrentGame", Level.Game.GameReplicationInfo.GameName$" in "$Level.Title);
	Response.Subst("PostAction", CurrentPlayersPage);
	Response.Subst("Sort", Sort);
	Response.IncludeUHTM(CurrentPlayersPage$".uhtm");
}

function QueryCurrentGame(WebRequest Request, WebResponse Response)
{
	local ListItem ExcludeMaps, IncludeMaps;
	local class<RuneMultiPlayer> NewClass;
	local string NewGameType;
	
	if (Request.GetVariable("SwitchGameTypeAndMap", "") != "")
	{
		Level.ServerTravel(Request.GetVariable("MapSelect")$"?game="$Request.GetVariable("GameTypeSelect")$"?mutator="$UsedMutators(), false);
		Response.Subst("Title", "Please Wait");
		Response.Subst("Message", "The server is now switching to map '"$Request.GetVariable("MapSelect")$"' and game type '"$Request.GetVariable("GameTypeSelect")$"'.  Please allow 10-15 seconds while the server changes levels.");
		Response.IncludeUHTM(MessageUHTM);
	}
	else if (Request.GetVariable("SwitchGameType", "") != "")
	{
		NewGameType = Request.GetVariable("GameTypeSelect");
		NewClass = class<RuneMultiPlayer>(DynamicLoadObject(NewGameType, class'Class'));

		ReloadExcludeMaps(ExcludeMaps, NewGameType);
		ReloadIncludeMaps(ExcludeMaps, IncludeMaps, NewGameType);

		Response.Subst("GameTypeButton", "");
		Response.Subst("MapButton", "<input type=\"submit\" name=\"SwitchGameTypeAndMap\" value=\"Switch\">");
		Response.Subst("GameTypeSelect", NewClass.default.GameName$"<input type=\"hidden\" name=\"GameTypeSelect\" value=\""$NewGameType$"\">");
		Response.Subst("MapSelect", GenerateMapListSelect(IncludeMaps));
		Response.Subst("PostAction", CurrentGamePage);
		Response.IncludeUHTM(CurrentGamePage$".uhtm");
	}
	else if (Request.GetVariable("SwitchMap", "") != "")
	{
		Level.ServerTravel(Request.GetVariable("MapSelect")$"?game="$Level.Game.Class$"?mutator="$UsedMutators(), false);
		Response.Subst("Title", "Please Wait");
		Response.Subst("Message", "The server is now switching to map '"$Request.GetVariable("MapSelect")$"'.    Please allow 10-15 seconds while the server changes levels.");
		Response.IncludeUHTM(MessageUHTM);

	}
	else
	{
		ReloadExcludeMaps(ExcludeMaps, String(Level.Game.Class));
		ReloadIncludeMaps(ExcludeMaps, IncludeMaps, String(Level.Game.Class));

		Response.Subst("GameTypeButton", "<input type=\"submit\" name=\"SwitchGameType\" value=\"Switch\">");
		Response.Subst("MapButton", "<input type=\"submit\" name=\"SwitchMap\" value=\"Switch\">");
		Response.Subst("GameTypeSelect", "<select name=\"GameTypeSelect\">"$GenerateGameTypeOptions(String(Level.Game.Class))$"</select>");
		Response.Subst("MapSelect", GenerateMapListSelect(IncludeMaps, Left(string(Level), InStr(string(Level), "."))$".unr") );
		Response.Subst("PostAction", CurrentGamePage);
		Response.IncludeUHTM(CurrentGamePage$".uhtm");
	}
}

function QueryCurrentConsole(WebRequest Request, WebResponse Response)
{
	local String SendStr, OutStr;

	SendStr = Request.GetVariable("SendText", "");
	if (SendStr != "")
	{
		if (Left(SendStr, 4) ~= "say ")
			Spectator.BroadcastMessage("Admin: "$Mid(SendStr, 4));
		else
		{
			OutStr = Level.ConsoleCommand(SendStr);
			if (OutStr != "")
				Spectator.AddMessage(None, OutStr, 'Console');
		}
	}
	
	Response.Subst("LogURI", CurrentConsoleLogPage);
	Response.Subst("SayURI", CurrentConsoleSendPage);
	Response.IncludeUHTM(CurrentConsolePage$".uhtm");
}

function QueryCurrentConsoleLog(WebRequest Request, WebResponse Response)
{
	local ListItem TempItem;
	local String LogSubst, LogStr;
	local int i;

	for (TempItem = Spectator.MessageList; TempItem != None; TempItem = TempItem.Next)
		LogSubst = LogSubst$"&gt; "$TempItem.Data$"<br>";
		
	Response.Subst("LogRefresh", WebServer.ServerURL$Path$"/"$CurrentConsoleLogPage$"#END");
	Response.Subst("LogText", LogSubst);
	Response.IncludeUHTM(CurrentConsoleLogPage$".uhtm");
}

function QueryCurrentConsoleSend(WebRequest Request, WebResponse Response)
{
	Response.Subst("DefaultSendText", DefaultSendText);
	Response.Subst("PostAction", CurrentConsolePage);
	Response.IncludeUHTM(CurrentConsoleSendPage$".uhtm");
}

function QueryRestartPage(WebRequest Request, WebResponse Response)
{
	Level.ServerTravel(Left(string(Level), InStr(string(Level), "."))$".unr"$"?game="$Level.Game.Class$"?mutator="$UsedMutators(), false);
	Response.Subst("Title", "Please Wait");
	Response.Subst("Message", "The server is now restarting the current map.  Please allow 10-15 seconds while the server changes levels.");
	Response.IncludeUHTM(MessageUHTM);
}

function QueryCurrentMutators(WebRequest Request, WebResponse Response)
{
	local ListItem TempItem;
	local int Count, i;
	
	if (Request.GetVariable("AddMutator", "") != "")
	{
		Count = Request.GetVariableCount("ExcludeMutatorsSelect");
		for (i=0; i<Count; i++)
		{
			if (ExcludeMutators != None)
			{
				TempItem = ExcludeMutators.DeleteElement(ExcludeMutators, Request.GetVariableNumber("ExcludeMutatorsSelect", i));
				if (TempItem != None)
				{
					TempItem.bJustMoved = true;
					if (IncludeMutators == None)
						IncludeMutators = TempItem;
					else
						IncludeMutators.AddElement(TempItem);
				}
				else
					Log("Exclude mutator not found: "$Request.GetVariableNumber("ExcludeMutatorsSelect", i));
			}
		}
	}
	else if (Request.GetVariable("DelMutator", "") != "")
	{
		Count = Request.GetVariableCount("IncludeMutatorsSelect");
		for (i=0; i<Count; i++)
		{
			if (IncludeMutators != None)
			{
				TempItem = IncludeMutators.DeleteElement(IncludeMutators, Request.GetVariableNumber("IncludeMutatorsSelect", i));
				if (TempItem != None)
				{
					TempItem.bJustMoved = true;
					if (ExcludeMutators == None)
						ExcludeMutators = TempItem;
					else
						ExcludeMutators.AddSortedElement(ExcludeMutators, TempItem);
				}
				else
					Log("Include mutator not found: "$Request.GetVariableNumber("IncludeMutatorsSelect", i));
			}
		}
	}
	else if (Request.GetVariable("AddAllMutators", "") != "")
	{
		while (ExcludeMutators != None)
		{
			TempItem = ExcludeMutators.DeleteElement(ExcludeMutators);
			if (TempItem != None)
			{
				TempItem.bJustMoved = true;
				if (IncludeMutators == None)
					IncludeMutators = TempItem;
				else
					IncludeMutators.AddElement(TempItem);
			}
		}
	}
	else if (Request.GetVariable("DelAllMutators", "") != "")
	{
		while (IncludeMutators != None)
		{
			TempItem = IncludeMutators.DeleteElement(IncludeMutators);
			if (TempItem != None)
			{
				TempItem.bJustMoved = true;
				if (ExcludeMutators == None)
					ExcludeMutators = TempItem;
				else
					ExcludeMutators.AddSortedElement(ExcludeMutators, TempItem);
			}
		}
	}

	Response.Subst("ExcludeMutatorsOptions", GenerateMutatorListSelect(ExcludeMutators));
	Response.Subst("IncludeMutatorsOptions", GenerateMutatorListSelect(IncludeMutators));
	
	Response.Subst("PostAction", CurrentMutatorsPage);
	Response.IncludeUHTM(CurrentMutatorsPage$".uhtm");
}

//*****************************************************************************
function QueryDefaults(WebRequest Request, WebResponse Response)
{
	local String GameType, PageStr;
	
	// if no gametype specified use the first one in the list
	GameType = Request.GetVariable("GameType", String(Level.Game.Class));
	
	// if no page specified, use the first one
	PageStr = Request.GetVariable("Page", DefaultsMapsPage);

	Response.Subst("IndexURI", 	DefaultsMenuPage$"?GameType="$GameType$"&Page="$PageStr);
	Response.Subst("MainURI", 	PageStr$"?GameType="$GameType);
	
	Response.IncludeUHTM(DefaultsPage$".uhtm");
	Response.ClearSubst();
}

function QueryDefaultsMenu(WebRequest Request, WebResponse Response)
{
	local	String	GameType, Page, TempStr;
	
	GameType = Request.GetVariable("GameType");
	Page = Request.GetVariable("Page");
		
	if (GameType == "")
		GameType = String(Level.Game.Class);
	
	if (Request.GetVariable("GameTypeSet", "") != "")
	{	
		TempStr = Request.GetVariable("GameTypeSelect", GameType);
		if (!(TempStr ~= GameType))
			GameType = TempStr;
	}


	// set post action
	Response.Subst("PostAction", DefaultsPage);


	// set currently used gametype
	Response.Subst("GameType", GameType);

	// set currently active page
	Response.Subst("Page", Page);
	
	// Generate gametype options
	Response.Subst("GameTypeOptions", GenerateGameTypeOptions(GameType));

	// set background colors
	Response.Subst("DefaultBG", DefaultBG);	// for unused tabs

	Response.Subst("MapsBG", 	DefaultBG);
	Response.Subst("RulesBG", 	DefaultBG);
	Response.Subst("SettingsBG",DefaultBG);
	Response.Subst("ServerBG",	DefaultBG);
	Response.Subst("IPPolicyBG",DefaultBG);
	Response.Subst("RestartBG", DefaultBG);
	
	switch(Page) {
	case DefaultsMapsPage:
		Response.Subst("MapsBG", 	HighlightedBG); break;
	case DefaultsRulesPage:
		Response.Subst("RulesBG", 	HighlightedBG); break;
	case DefaultsSettingsPage:
		Response.Subst("SettingsBG",HighlightedBG); break;
	case DefaultsServerPage:
		Response.Subst("ServerBG",	HighlightedBG); break;
	case DefaultsIPPolicyPage:
		Response.Subst("IPPolicyBG",HighlightedBG); break;
	case DefaultsRestartPage:
		Response.Subst("RestartBG", HighlightedBG); break;
	}

	// Set URIs
	Response.Subst("MapsURI", 		DefaultsPage$"?GameType="$GameType$"&Page="$DefaultsMapsPage);
	Response.Subst("RulesURI", 		DefaultsPage$"?GameType="$GameType$"&Page="$DefaultsRulesPage);
	Response.Subst("SettingsURI", 	DefaultsPage$"?GameType="$GameType$"&Page="$DefaultsSettingsPage);
	Response.Subst("ServerURI", 	DefaultsPage$"?GameType="$GameType$"&Page="$DefaultsServerPage);	
	Response.Subst("IPPolicyURI", 	DefaultsPage$"?GameType="$GameType$"&Page="$DefaultsIPPolicyPage);	
	Response.Subst("RestartURI", 	DefaultsPage$"?GameType="$GameType$"&Page="$DefaultsRestartPage);	

	Response.IncludeUHTM(DefaultsMenuPage$".uhtm");
	Response.ClearSubst();
}

function QueryDefaultsMaps(WebRequest Request, WebResponse Response)
{
	local String GameType, MapListType;
	local ListItem ExcludeMaps, IncludeMaps, TempItem;
	local int i, Count, MoveCount;
	
	// load saved entries from the page	
	GameType = Request.GetVariable("GameType");	// provided by index page
	MapListType = Request.GetVariable("MapListType", "Custom");
	
	ReloadExcludeMaps(ExcludeMaps, GameType);
	ReloadIncludeMaps(ExcludeMaps, IncludeMaps, GameType);


	if (Request.GetVariable("MapListSet", "") != "") {
		MapListType = Request.GetVariable("MapListSelect", "Custom");
		if (MapListType != "Custom")
		{
			ApplyMapList(ExcludeMaps, IncludeMaps, GameType, MapListType);
			
			UpdateDefaultMaps(GameType, IncludeMaps);
		}
	}
	else if (Request.GetVariable("AddMap", "") != "") {
		Count = Request.GetVariableCount("ExcludeMapsSelect");
		for (i=0; i<Count; i++)
		{
			if (ExcludeMaps != None)
			{
				TempItem = ExcludeMaps.DeleteElement(ExcludeMaps, Request.GetVariableNumber("ExcludeMapsSelect", i));
				if (TempItem != None)
				{
					TempItem.bJustMoved = true;
					if (IncludeMaps == None)
						IncludeMaps = TempItem;
					else
						IncludeMaps.AddElement(TempItem);
				}
				else
					Log("Exclude map not found: "$Request.GetVariableNumber("ExcludeMapsSelect", i));
			}
		}
		MapListType = "Custom";
		UpdateDefaultMaps(GameType, IncludeMaps);
	}
	else if (Request.GetVariable("DelMap", "") != "" && Request.GetVariableCount("IncludeMapsSelect") > 0) {
		Count = Request.GetVariableCount("IncludeMapsSelect");
		for (i=0; i<Count; i++)
		{
			if (IncludeMaps != None)
			{
				TempItem = IncludeMaps.DeleteElement(IncludeMaps, Request.GetVariableNumber("IncludeMapsSelect", i));
				if (TempItem != None)
				{
					TempItem.bJustMoved = true;
					if (ExcludeMaps == None)
						ExcludeMaps = TempItem;
					else
						ExcludeMaps.AddSortedElement(ExcludeMaps, TempItem);
				}
				else
					Log("Include map not found: "$Request.GetVariableNumber("IncludeMapsSelect", i));
			}
		}
		MapListType = "Custom";
		UpdateDefaultMaps(GameType, IncludeMaps);
	}
	else if (Request.GetVariable("AddAllMap", "") != "") {
		while (ExcludeMaps != None)
		{
			TempItem = ExcludeMaps.DeleteElement(ExcludeMaps);
			if (TempItem != None)
			{
				TempItem.bJustMoved = true;
				if (IncludeMaps == None)
					IncludeMaps = TempItem;
				else
					IncludeMaps.AddElement(TempItem);
			}
		}
		MapListType = "Custom";
		UpdateDefaultMaps(GameType, IncludeMaps);
	}
	else if (Request.GetVariable("DelAllMap", "") != "") {
		while (IncludeMaps != None)
		{
			TempItem = IncludeMaps.DeleteElement(IncludeMaps);
			if (TempItem != None)
			{
				TempItem.bJustMoved = true;
				if (ExcludeMaps == None)
					ExcludeMaps = TempItem;
				else
					ExcludeMaps.AddSortedElement(ExcludeMaps, TempItem);
			}
		}
		MapListType = "Custom";
		UpdateDefaultMaps(GameType, IncludeMaps);	// IncludeMaps should be None now.
	}
	else if (Request.GetVariable("MoveMap", "") != "") {
		MoveCount = int(Abs(float(Request.GetVariable("MoveMapCount"))));
		if (MoveCount != 0) {
			Count = Request.GetVariableCount("IncludeMapsSelect");
			if (Request.GetVariable("MoveMap") ~= "Down") {
				for (TempItem = IncludeMaps; TempItem.Next != None; TempItem = TempItem.Next);
				for (TempItem = TempItem; TempItem != None; TempItem = TempItem.Prev) {
					for (i=0; i<Count; i++) {
						if (TempItem.Data ~= Request.GetVariableNumber("IncludeMapsSelect", i)) {
							TempItem.bJustMoved = true;
							IncludeMaps.MoveElementDown(IncludeMaps, TempItem, MoveCount);
							break;
						}
					}
				}
			}
			else {
				for (TempItem = IncludeMaps; TempItem != None; TempItem = TempItem.Next) {
					for (i=0; i<Count; i++) {
						if (TempItem.Data ~= Request.GetVariableNumber("IncludeMapsSelect", i)) {
							TempItem.bJustMoved = true;
							IncludeMaps.MoveElementUp(IncludeMaps, TempItem, MoveCount);
							break;
						}
					}
				}
			}
			
			UpdateDefaultMaps(GameType, IncludeMaps);
		}
	}
	
	// Start output here
	
	Response.Subst("MapListType", MapListType);
	
	// Generate maplist options
	Response.Subst("MapListOptions", GenerateMapListOptions(GameType, MapListType));

	// Generate map selects
	Response.Subst("ExcludeMapsOptions", GenerateMapListSelect(ExcludeMaps));
	Response.Subst("IncludeMapsOptions", GenerateMapListSelect(IncludeMaps));

	Response.Subst("PostAction", DefaultsMapsPage);
	Response.Subst("GameType", GameType);
	Response.IncludeUHTM(DefaultsMapsPage$".uhtm");
	Response.ClearSubst();
}

function QueryDefaultsRules(WebRequest Request, WebResponse Response)
{
	local String GameType, FragName, FragLimit, TimeLimit, MaxTeams, FriendlyFire;
	local String MaxPlayers, MaxSpectators, WeaponsStay;
	local class<GameInfo> GameClass;
	
	GameType = Request.GetVariable("GameType", GameTypeList.Data);
	GameClass = class<GameInfo>(DynamicLoadObject(GameType, class'Class'));

	MaxPlayers = Request.GetVariable("MaxPlayers", String(class<RuneMultiPlayer>(GameClass).Default.MaxPlayers));
	MaxPlayers = String(max(int(MaxPlayers), 0));
	class<RuneMultiPlayer>(GameClass).Default.MaxPlayers = int(MaxPlayers);
	Response.Subst("MaxPlayers", MaxPlayers);
	
	MaxSpectators = Request.GetVariable("MaxSpectators", String(class<RuneMultiPlayer>(GameClass).Default.MaxSpectators));
	MaxSpectators = String(max(int(MaxSpectators), 0));
	class<RuneMultiPlayer>(GameClass).Default.MaxSpectators = int(MaxSpectators);
	Response.Subst("MaxSpectators", MaxSpectators);
	
	WeaponsStay = String(class<RuneMultiPlayer>(GameClass).Default.bCoopWeaponMode);
			
	if (Request.GetVariable("Apply", "") != "")
	{
		WeaponsStay = Request.GetVariable("WeaponsStay", "false");
		class<RuneMultiPlayer>(GameClass).Default.bCoopWeaponMode = bool(WeaponsStay);
	}

	if (WeaponsStay ~= "true")
	{
		Response.Subst("WeaponsStay", " checked");
	}

	if (class<RuneMultiPlayer>(GameClass) != None)
	{
    	if (class<TeamGame>(GameClass) != None)
		{
    		FragLimit = Request.GetVariable("FragLimit", String(class<TeamGame>(GameClass).Default.GoalTeamScore));
    		FragLimit = String(max(int(FragLimit), 0));
    		class<TeamGame>(GameClass).Default.GoalTeamScore = float(FragLimit);
    		FragName = "Max Team Score";
    	}
    	else
		{
    		FragLimit = Request.GetVariable("FragLimit", String(class<RuneMultiPlayer>(GameClass).Default.FragLimit));
    		FragLimit = String(max(int(FragLimit), 0));
    		class<RuneMultiPlayer>(GameClass).Default.FragLimit = float(FragLimit);
    		FragName = "Frag Limit";
    	}
    	
    	Response.Subst("FragSubst", "<tr><td>"$FragName$"</td><td width=\"1%\"><input type=\"text\" name=\"FragLimit\" maxlength=\"3\" size=\"3\" value=\""$FragLimit$"\"></td></tr>");

    	TimeLimit = Request.GetVariable("TimeLimit", String(class<RuneMultiPlayer>(GameClass).Default.TimeLimit));
    	TimeLimit = String(max(int(TimeLimit), 0));
		Response.Subst("TimeLimitSubst", "<tr><td>Time Limit</td><td width=\"1%\"><input type=\"text\" name=\"TimeLimit\" maxlength=\"3\" size=\"3\" value=\""$TimeLimit$"\"></td></tr>");
		class<RuneMultiPlayer>(GameClass).Default.TimeLimit = float(TimeLimit);
	}
	
	if(	class<TeamGame>(GameClass) != None )
	{
   		MaxTeams = Request.GetVariable("MaxTeams", String(class<TeamGame>(GameClass).Default.MaxTeams));
   		MaxTeams = String(max(int(MaxTeams), 0));
   		class<TeamGame>(GameClass).Default.MaxTeams = Min(Max(int(MaxTeams), 2), 4);
		Response.Subst("TeamSubst", "<tr><td>Max Teams</td><td width=\"1%\"><input type=\"text\" name=\"MaxTeams\" maxlength=\"2\" size=\"2\" value="$MaxTeams$"></td><td></tr>");
	}
	
	if (class<TeamGame>(GameClass) != None) {
   		FriendlyFire = Request.GetVariable("FriendlyFire", String(class<TeamGame>(GameClass).Default.FriendlyFireScale * 100));
		FriendlyFire = String(min(max(int(FriendlyFire), 0), 100));
   		class<TeamGame>(GameClass).Default.FriendlyFireScale = float(FriendlyFire)/100.0;
		Response.Subst("FriendlyFireSubst", "<tr><td>Friendly Fire: [0-100]%</td><td width=\"1%\"><input type=\"text\" name=\"FriendlyFire\" maxlength=\"3\" size=\"3\" value=\""$FriendlyFire$"\"></td></tr>");
    }
    
    Response.Subst("PostAction", DefaultsRulesPage);
   	Response.Subst("GameType", GameType);
    Response.IncludeUHTM(DefaultsRulesPage$".uhtm");
	Response.ClearSubst();
	
	GameClass.Static.StaticSaveConfig();
}

function QueryDefaultsSettings(WebRequest Request, WebResponse Response)
{
	local String GameType;
	local class<GameInfo> GameClass;
	local int GameStyle, GameSpeed;

	GameType = Request.GetVariable("GameType", GameTypeList.Data);
	GameClass = class<GameInfo>(DynamicLoadObject(GameType, class'Class'));

	if (class<RuneMultiPlayer>(GameClass).Default.bMegaSpeed == true)
		GameStyle=1;
	if (class<RuneMultiPlayer>(GameClass).Default.bHardCoreMode == true)
		GameStyle+=1;
	
	switch (Request.GetVariable("GameStyle", String(GameStyle))) {
	case "0":
		class<RuneMultiPlayer>(GameClass).Default.bMegaSpeed = false;
		class<RuneMultiPlayer>(GameClass).Default.bHardCoreMode = false;
		Response.Subst("Normal", " selected"); break;
		break;
	case "1":
		class<RuneMultiPlayer>(GameClass).Default.bMegaSpeed = false;
		class<RuneMultiPlayer>(GameClass).Default.bHardCoreMode = true;
		Response.Subst("HardCore", " selected"); break;
	case "2":
		class<RuneMultiPlayer>(GameClass).Default.bMegaSpeed = true;
		class<RuneMultiPlayer>(GameClass).Default.bHardCoreMode = true;
		Response.Subst("Turbo", " selected"); break;
	}

	GameSpeed = class<RuneMultiPlayer>(GameClass).Default.GameSpeed * 100.0;
	
	if (Request.GetVariable("Apply", "") != "")
	{
		GameSpeed = min(max(int(Request.GetVariable("GameSpeed", String(GameSpeed))), 10), 200);
		class<RuneMultiPlayer>(GameClass).Default.GameSpeed = GameSpeed / 100.0;
	}
	
	Response.Subst("GameSpeed", String(GameSpeed));
	Response.Subst("PostAction", DefaultsSettingsPage);
	Response.Subst("GameType", GameType);
	Response.IncludeUHTM(DefaultsSettingsPage$".uhtm");
	Response.ClearSubst();
	
	GameClass.Static.StaticSaveConfig();
}


function QueryDefaultsServer(WebRequest Request, WebResponse Response)
{
	local String ServerName, AdminName, AdminEmail, MOTDLine1, MOTDLine2, MOTDLine3, MOTDLine4, GamePassword, AdminPassword;
	local bool bDoUplink, bWorldLog;
	
	ServerName = class'Engine.GameReplicationInfo'.default.ServerName;
	AdminName = class'Engine.GameReplicationInfo'.default.AdminName;
	AdminEmail = class'Engine.GameReplicationInfo'.default.AdminEmail;
	MOTDLine1 = class'Engine.GameReplicationInfo'.default.MOTDLine1;
	MOTDLine2 = class'Engine.GameReplicationInfo'.default.MOTDLine2;
	MOTDLine3 = class'Engine.GameReplicationInfo'.default.MOTDLine3;
	MOTDLine4 = class'Engine.GameReplicationInfo'.default.MOTDLine4;
	GamePassword = Level.ConsoleCommand("get engine.gameinfo GamePassword");
	AdminPassword = Level.ConsoleCommand("get engine.gameinfo AdminPassword");

	bDoUplink = class'UdpServerUplink'.default.DoUplink;
	bWorldLog = Level.Game.Default.bWorldLog;
	
	if (Request.GetVariable("Apply", "") != "")
	{
		ServerName = Request.GetVariable("ServerName", "");
		AdminName = Request.GetVariable("AdminName", "");
		AdminEmail = Request.GetVariable("AdminEmail", "");
		MOTDLine1 = Request.GetVariable("MOTDLine1", "");
		MOTDLine2 = Request.GetVariable("MOTDLine2", "");
		MOTDLine3 = Request.GetVariable("MOTDLine3", "");
		MOTDLine4 = Request.GetVariable("MOTDLine4", "");
		bDoUplink = bool(Request.GetVariable("DoUplink", "false"));
		bWorldLog = bool(Request.GetVariable("WorldLog", "false"));
		GamePassword = Request.GetVariable("GamePassword", "");
		AdminPassword = Request.GetVariable("AdminPassword", "");
		
		class'Engine.GameReplicationInfo'.Default.ServerName = ServerName;
		class'Engine.GameReplicationInfo'.Default.AdminName = AdminName;
		class'Engine.GameReplicationInfo'.Default.AdminEmail = AdminEmail;
		class'Engine.GameReplicationInfo'.Default.MOTDline1 = MOTDLine1;
		class'Engine.GameReplicationInfo'.Default.MOTDline2 = MOTDLine2;
		class'Engine.GameReplicationInfo'.Default.MOTDline3 = MOTDLine3;
		class'Engine.GameReplicationInfo'.Default.MOTDline4 = MOTDLine4;
		class'Engine.GameReplicationInfo'.Static.StaticSaveConfig();

		class'UdpServerUplink'.default.DoUplink = bDoUplink;
		class'UdpServerUplink'.Static.StaticSaveConfig();
		
		Level.Game.Default.bWorldLog = bWorldLog;
		Level.Game.Static.StaticSaveConfig();

		Level.ConsoleCommand("set engine.gameinfo GamePassword "$GamePassword);
		Level.ConsoleCommand("set engine.gameinfo AdminPassword "$AdminPassword);
	}
	
	Response.Subst("ServerName", ServerName);
	Response.Subst("AdminName", AdminName);
	Response.Subst("AdminEmail", AdminEmail);
	Response.Subst("MOTDLine1", MOTDLine1);
	Response.Subst("MOTDLine2", MOTDLine2);
	Response.Subst("MOTDLine3", MOTDLine3);
	Response.Subst("MOTDLine4", MOTDLine4);
	Response.Subst("GamePassword", GamePassword);
	Response.Subst("AdminPassword", AdminPassword);
	
	if (bDoUplink)
		Response.Subst("DoUplink", " checked");
	if (bWorldLog)
		Response.Subst("WorldLog", " checked");

	Response.Subst("PostAction", DefaultsServerPage);		
	Response.IncludeUHTM(DefaultsServerPage$".uhtm");
}

function QueryDefaultsIPPolicy(WebRequest Request, WebResponse Response)
{
	local int i, j;

	if(Request.GetVariable("Update") != "")
	{
		i = int(Request.GetVariable("PolicyNo", "-1"));
		if(i == -1)
			for(i = 0; i<50 && Level.Game.IPPolicies[i] != ""; i++);
		if(i < 50)
			Level.Game.IPPolicies[i] = Request.GetVariable("AcceptDeny")$","$Request.GetVariable("IPMask");
		Level.Game.SaveConfig();
	}

	if(Request.GetVariable("Delete") != "")
	{
		i = int(Request.GetVariable("PolicyNo", "-1"));
		
		if(i > 0)
		{
			for(i = i; i<49 && Level.Game.IPPolicies[i] != ""; i++)
				Level.Game.IPPolicies[i] = Level.Game.IPPolicies[i + 1];

			if(i == 49)
				Level.Game.IPPolicies[49] = "";
			Level.Game.SaveConfig();
		}
	}

	Response.IncludeUHTM(DefaultsIPPolicyPage$"-h.uhtm");
	for(i=0; i<50 && Level.Game.IPPolicies[i] != ""; i++)
	{
		j = InStr(Level.Game.IPPolicies[i], ",");
		if(Left(Level.Game.IPPolicies[i], j) ~= "DENY")
		{
			Response.Subst("AcceptCheck", "");
			Response.Subst("DenyCheck", "checked");
		}
		else
		{
			Response.Subst("AcceptCheck", "checked");
			Response.Subst("DenyCheck", "");
		}
		Response.Subst("IPMask", Mid(Level.Game.IPPolicies[i], j+1));
		Response.Subst("PostAction", DefaultsIPPolicyPage$"?PolicyNo="$string(i));
		Response.IncludeUHTM(DefaultsIPPolicyPage$"-d.uhtm");
	}
	Response.Subst("PostAction", DefaultsIPPolicyPage);
	Response.IncludeUHTM(DefaultsIPPolicyPage$"-f.uhtm");
}

defaultproperties
{
     SpectatorType=Class'RuneServerAdmin.RuneServerAdminSpectator'
     MenuPage="menu"
     RootPage="root"
     CurrentPage="current"
     CurrentMenuPage="current_menu"
     CurrentIndexPage="current_index"
     CurrentPlayersPage="current_players"
     CurrentGamePage="current_game"
     CurrentConsolePage="current_console"
     CurrentConsoleLogPage="current_console_log"
     CurrentConsoleSendPage="current_console_send"
     DefaultSendText="say "
     CurrentMutatorsPage="current_mutators"
     CurrentRestartPage="current_restart"
     DefaultsPage="defaults"
     DefaultsMenuPage="defaults_menu"
     DefaultsMapsPage="defaults_maps"
     DefaultsRulesPage="defaults_rules"
     DefaultsSettingsPage="defaults_settings"
     DefaultsServerPage="defaults_server"
     DefaultsIPPolicyPage="defaults_ippolicy"
     DefaultsRestartPage="defaults_restart"
     MessageUHTM="message.uhtm"
     DefaultBG="#aaaaaa"
     HighlightedBG="#ffffff"
     AdminRealm="Rune Remote Admin Server"
     AdminUsername="admin"
     AdminPassword="admin"
}
