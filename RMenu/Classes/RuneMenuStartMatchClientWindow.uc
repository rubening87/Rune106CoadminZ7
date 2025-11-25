class RuneMenuStartMatchClientWindow extends RuneMenuPageWindow;

var RuneMenuServerClientWindow ServerParent;

var bool Initialized;

// Game Type
var UWindowComboControl GameCombo;
var localized string GameText;
var localized string GameHelp;
var string Games[64];
var int MaxGames;

// Map
var UWindowComboControl MapCombo;
var localized string MapText;
var localized string MapHelp;

var RuneMenuScreenshotCW ScreenshotWindow;		// ? Move to Map selection page

function Created()
{
	local int i, j, Selection;
	local class<GameInfo> TempClass;
	local string TempGame;
	local string NextGame;
	local string TempGames[64];
	local bool bFoundSavedGameClass;

	local int ControlWidth, ControlLeft, ControlRight;
	local int CenterWidth, CenterPos;

	Super.Created();

	DesiredWidth = 270;
	DesiredHeight = 100;

	ControlWidth = WinWidth/2.5;
	ControlLeft = (WinWidth/2 - ControlWidth)/2;
	ControlRight = WinWidth/2 + ControlLeft;

	CenterWidth = (WinWidth/4)*3;
	CenterPos = (WinWidth - CenterWidth)/2;

	ServerParent = RuneMenuServerClientWindow(GetParent(class'RuneMenuServerClientWindow'));
	if (ServerParent == None)
		Log("Error: RuneMenuStartMatchClientWindow without RuneMenuServerClientWindow parent.");

	// Game Type
	GameCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, 20, CenterWidth, 1));
	GameCombo.SetButtons(True);
	GameCombo.SetText(GameText);
	GameCombo.SetHelpText(GameHelp);
	GameCombo.SetFont(F_Normal);
	GameCombo.SetEditable(False);

	// Compile a list of all gametypes.
	NextGame = GetPlayerOwner().GetNextInt("GameInfo", 0); 
	while (NextGame != "")
	{
		TempGames[i] = NextGame;
		i++;
		NextGame = GetPlayerOwner().GetNextInt("GameInfo", i);
	}

	// Fill the control.
	for (i=0; i<64; i++)
	{
		if (TempGames[i] != "")
		{
			Games[MaxGames] = TempGames[i];
			if ( !bFoundSavedGameClass && (Games[MaxGames] ~= ServerParent.GameType) )
			{
				bFoundSavedGameClass = true;
				Selection = MaxGames;
			}
			//Log("GameClass:"$Games[MaxGames]);
			TempClass = Class<GameInfo>(DynamicLoadObject(Games[MaxGames], class'Class'));
			GameCombo.AddItem(TempClass.Default.GameName);
			MaxGames++;
		}
	}

	GameCombo.SetSelectedIndex(Selection);	
	ServerParent.GameType = Games[Selection];
	ServerParent.GameClass = Class<GameInfo>(DynamicLoadObject(ServerParent.GameType, class'Class'));

	// Map
	MapCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, 45, CenterWidth, 1));
	MapCombo.SetButtons(True);
	MapCombo.SetText(MapText);
	MapCombo.SetHelpText(MapHelp);
	MapCombo.SetFont(F_Normal);
	MapCombo.SetEditable(False);
	IterateMaps(ServerParent.Map);

	ScreenshotWindow = RuneMenuScreenshotCW(CreateWindow(class'RuneMenuScreenshotCW', (WinWidth-256)/2, 75, 256, 220));

	Initialized = True;
}

function IterateMaps(string DefaultMap)
{
	local string FirstMap, NextMap, TestMap;
	local int Selected;

	FirstMap = GetPlayerOwner().GetMapName(ServerParent.GameClass.Default.MapPrefix, "", 0);

	MapCombo.Clear();
	NextMap = FirstMap;

	while (!(FirstMap ~= TestMap))
	{
		// Add the map.
		if(!(Left(NextMap, Len(NextMap) - 4) ~= (ServerParent.GameClass.Default.MapPrefix$"-tutorial")))
			MapCombo.AddItem(Left(NextMap, Len(NextMap) - 4), NextMap);

		// Get the map.
		NextMap = GetPlayerOwner().GetMapName(ServerParent.GameClass.Default.MapPrefix, NextMap, 1);

		// Text to see if this is the last.
		TestMap = NextMap;
	}
	MapCombo.Sort();

	MapCombo.SetSelectedIndex(Max(MapCombo.FindItemIndex2(DefaultMap, True), 0));	
}

function AfterCreate()
{
	ServerParent.Map = MapCombo.GetValue2();
	ScreenshotWindow.SetMap(ServerParent.Map);
}

function BeforePaint(Canvas C, float X, float Y)
{
	local int ControlWidth, ControlLeft, ControlRight;
	local int CenterWidth, CenterPos;

	ControlWidth = WinWidth/2.5;
	ControlLeft = (WinWidth/2 - ControlWidth)/2;
	ControlRight = WinWidth/2 + ControlLeft;

	CenterWidth = (WinWidth/4)*3;
	CenterPos = (WinWidth - CenterWidth)/2;

	GameCombo.SetSize(CenterWidth, 1);
	GameCombo.WinLeft = CenterPos;
	GameCombo.EditBoxWidth = 150;

	MapCombo.SetSize(CenterWidth, 1);
	MapCombo.WinLeft = CenterPos;
	MapCombo.EditBoxWidth = 150;
}

function Notify(UWindowDialogControl C, byte E)
{
	Super.Notify(C, E);

	switch(E)
	{
	case DE_Change:
		switch(C)
		{
		case GameCombo:
			GameChanged();
			break;
		case MapCombo:
			MapChanged();
			break;
		}
		break;
	}
}

function GameChanged()
{
	local int CurrentGame, i;

	if (!Initialized)
		return;

	if(ServerParent.GameClass != None)
		ServerParent.GameClass.static.StaticSaveConfig();

	CurrentGame = GameCombo.GetSelectedIndex();

	ServerParent.GameType = Games[CurrentGame];
	ServerParent.GameClass = Class<GameInfo>(DynamicLoadObject(ServerParent.GameType, class'Class'));

	if ( ServerParent.GameClass == None )
	{
		MaxGames--;
		if ( MaxGames > CurrentGame )
		{
			for ( i=CurrentGame; i<MaxGames; i++ )
				Games[i] = Games[i+1];
		}
		else if ( CurrentGame > 0 )
			CurrentGame--;
		GameCombo.SetSelectedIndex(CurrentGame);
		return;
	}
	if (MapCombo != None)
		IterateMaps(ServerParent.Map);

	ServerParent.GameChanged();
}

function MapChanged()
{
	if (!Initialized)
		return;

	ServerParent.Map = MapCombo.GetValue2();
	ScreenshotWindow.SetMap(ServerParent.Map);
}

defaultproperties
{
     GameText="Game Type:"
     GameHelp="Select the type of game to play."
     MapText="Map Name:"
     MapHelp="Select the map to play."
}
