class RuneMenuServerClientWindow extends RuneMenuPageWindow;

// Game Information
var config string Map;
var config string GameType;
var config string MutatorList;
var config bool bKeepMutators;
var class<GameInfo> GameClass;

// Window
var UWindowSmallButton DedicatedButton;
var UWindowPageControlPage ServerTab;
var UWindowPageControl Pages;
var UWindowSmallButton StartButton;

var localized string StartMatchTab, RulesTab, SettingsTab, MutatorTab, MaplistTab;//, BotConfigTab;
var localized string StartText;
var localized string StartHelp;
var localized string DedicatedText;
var localized string DedicatedHelp;
var localized string ServerText;
var bool bNetworkGame;

function Created()
{
	if(!bKeepMutators)
		MutatorList = "";

	CreatePages();

	// Start
	StartButton = UWindowSmallButton(CreateControl(class'UWindowSmallButton', 60, WinHeight-24, 48, 16));
	StartButton.SetText(StartText);
	StartButton.SetHelpText(StartHelp);

	// Dedicated
	DedicatedButton = UWindowSmallButton(CreateControl(class'UWindowSmallButton', 10, WinHeight-24, 48, 16));
	DedicatedButton.SetText(DedicatedText);
	DedicatedButton.SetHelpText(DedicatedHelp);

	ServerTab = Pages.AddPage(ServerText, class'RuneMenuAdminScrollClient');

	Super.Created();
}

function CreatePages()
{
	local class<UWindowPageWindow> PageClass;

	Pages = UWindowPageControl(CreateWindow(class'UWindowPageControl', 0, 0, WinWidth, WinHeight-25));
	Pages.SetMultiLine(True);
	Pages.AddPage(StartMatchTab, class'RuneMenuStartMatchScrollClient');

	PageClass = class<UWindowPageWindow>(DynamicLoadObject(GameClass.Default.RulesMenuType, class'Class'));
	if(PageClass != None)
		Pages.AddPage(RulesTab, PageClass);

	PageClass = class<UWindowPageWindow>(DynamicLoadObject(GameClass.Default.SettingsMenuType, class'Class'));
	if(PageClass != None)
		Pages.AddPage(SettingsTab, PageClass);

	PageClass = class<UWindowPageWindow>(DynamicLoadObject(GameClass.Default.MutatorMenuType, class'Class'));
	if(PageClass != None)
		Pages.AddPage(MutatorTab, PageClass);

	PageClass = class<UWindowPageWindow>(DynamicLoadObject(GameClass.Default.MaplistMenuType, class'Class'));
	if(PageClass != None)
		Pages.AddPage(MaplistTab, PageClass);

//	PageClass = class<UWindowPageWindow>(DynamicLoadObject(GameClass.Default.BotMenuType, class'Class'));
//	if(PageClass != None)
//		Pages.AddPage(BotConfigTab, PageClass);
}

function Resized()
{
	StartButton.WinLeft = WinWidth-102;
	StartButton.WinTop = WinHeight-20;

	DedicatedButton.WinLeft = WinWidth-152;
	DedicatedButton.WinTop = WinHeight-20;
}

function Paint(Canvas C, float X, float Y)
{
	local Texture T;

	T = GetLookAndFeelTexture();
	DrawUpBevel( C, 0, LookAndFeel.TabUnselectedM.H, WinWidth, WinHeight-LookAndFeel.TabUnselectedM.H, T);
}

function Notify(UWindowDialogControl C, byte E)
{
	Super.Notify(C, E);

	switch(E)
	{
	case DE_Click:
		switch (C)
		{
		case StartButton:
			StartPressed();
			break;
		case DedicatedButton:
			DedicatedPressed();
			break;
		}
	}
}

function StartPressed()
{
	local string URL, Checksum;
	local GameInfo NewGame;

	ParentWindow.Close();
	Root.Console.CloseUWindow();

	// Reset the game class.
	GameClass.Static.ResetGame();

	URL = Map $ "?Game="$GameType$"?Mutator="$MutatorList;
	URL = URL $ "?Listen";
	class'StatLog'.Static.GetPlayerChecksum(GetPlayerOwner(), Checksum);
	if (Checksum == "")
		URL = URL $ "?Checksum=NoChecksum";
	else
		URL = URL $ "?Checksum="$Checksum;

	GetPlayerOwner().ClientTravel(URL, TRAVEL_Absolute, false);
}

function DedicatedPressed()
{
	local string URL;
	local GameInfo NewGame;
	local string LanPlay;

	ParentWindow.Close();
	Root.Console.CloseUWindow();

	if(RuneMenuAdminClientWindow(RuneMenuAdminScrollClient(ServerTab.Page).ClientArea).bLanPlay)
		LanPlay = " -lanplay";

	URL = Map $ "?Game="$GameType$"?Mutator="$MutatorList;
	URL = URL $ "?Listen";

	GetPlayerOwner().ConsoleCommand("RELAUNCH "$URL$LanPlay$" -server log="$GameClass.Default.ServerLogName);
}

function GameChanged()
{
	local UWindowPageControlPage RulesPage, SettingsPage, MutatorPage, MaplistPage;//, BotConfigPage;
	local class<UWindowPageWindow> PageClass;

	// Change out the rules page...
	PageClass = class<UWindowPageWindow>(DynamicLoadObject(GameClass.Default.RulesMenuType, class'Class'));
	RulesPage = Pages.GetPage(RulesTab);
	if(PageClass != None)
		Pages.InsertPage(RulesPage, RulesTab, PageClass);
	if (RulesPage != None)
		Pages.DeletePage(RulesPage);

	// Change out the settings page...
	PageClass = class<UWindowPageWindow>(DynamicLoadObject(GameClass.Default.SettingsMenuType, class'Class'));
	SettingsPage = Pages.GetPage(SettingsTab);
	if(PageClass != None)
		Pages.InsertPage(SettingsPage, SettingsTab, PageClass);
	if (SettingsPage != None)
		Pages.DeletePage(SettingsPage);

	// Change out the mutator page...
	PageClass = class<UWindowPageWindow>(DynamicLoadObject(GameClass.Default.MutatorMenuType, class'Class'));
	MutatorPage = Pages.GetPage(MutatorTab);
	if(PageClass != None)
		Pages.InsertPage(MutatorPage, MutatorTab, PageClass);
	if (MutatorPage != None)
		Pages.DeletePage(MutatorPage);

	// Change out the maplist page...
	PageClass = class<UWindowPageWindow>(DynamicLoadObject(GameClass.Default.MaplistMenuType, class'Class'));
	MaplistPage = Pages.GetPage(MaplistTab);
	if(PageClass != None)
		Pages.InsertPage(MaplistPage, MaplistTab, PageClass);
	if (MaplistPage != None)
		Pages.DeletePage(MaplistPage);

	// Change out the bots page...
//	PageClass = class<UWindowPageWindow>(DynamicLoadObject(GameClass.Default.BotMenuType, class'Class'));
//	BotConfigPage = Pages.GetPage(BotConfigTab);
//	if(PageClass != None)
//		Pages.InsertPage(BotConfigPage, BotConfigTab, PageClass);
//	if (BotConfigPage != None)
//		Pages.DeletePage(BotConfigPage);
}

function SaveConfigs()
{
	if (GameClass != None)
		GameClass.Static.StaticSaveConfig();
	Super.SaveConfigs();
}

defaultproperties
{
     Map="DM-AcidChamber.run"
     GameType="RuneI.RuneMultiPlayer"
     StartMatchTab="Match"
     RulesTab="Rules"
     SettingsTab="Settings"
     MutatorTab="Mutators"
     MaplistTab="Maplists"
     StartText="Start"
     StartHelp="Start game with current options"
     DedicatedText="Dedicated"
     DedicatedHelp="Press to launch a dedicated server."
     ServerText="Server"
     bNetworkGame=True
}
