class RuneMenuModClientWindow extends RuneMenuPageWindow;

// Window
var UWindowPageControlPage ModTab;
var localized string ModText;
var UWindowPageControl Pages;

var localized string StartMatchTab;

function Created()
{
	CreatePages();

	LoadMods(); // MUST be after CreatePages()
//	ModTab = Pages.AddPage(ModText, class'RuneMenuAdminScrollClient');

	Super.Created();
}

function bool LoadMods()
{
	local class<UWindowPageWindow> PageClass;
	local int NumModClasses;
	local string NextModClass;

	NextModClass = GetPlayerOwner().GetNextInt("RMenu.RMenuModPage", 0);

	if(NextModClass == "")
		return False;

	while((NextModClass != "") && (NumModClasses < 50))
	{
		PageClass = class<UWindowPageWindow>(DynamicLoadObject(NextModClass, class'Class'));
		if(PageClass != None)
			Pages.AddPage("Test", PageClass);

		NumModClasses++;
		NextModClass = GetPlayerOwner().GetNextInt("RMenu.RMenuModPage", NumModClasses);		
	}
	
	return True;
}


function CreatePages()
{
	local class<UWindowPageWindow> PageClass;
	Pages = UWindowPageControl(CreateWindow(class'UWindowPageControl', 0, 0, WinWidth, WinHeight));
	Pages.SetMultiLine(True);

/*
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
*/
}

function Paint(Canvas C, float X, float Y)
{
	local Texture T;

	T = GetLookAndFeelTexture();
	DrawUpBevel( C, 0, LookAndFeel.TabUnselectedM.H, WinWidth, WinHeight-LookAndFeel.TabUnselectedM.H, T);
}

/*
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
*/

function GameChanged()
{
	local UWindowPageControlPage RulesPage, SettingsPage, MutatorPage, MaplistPage;//, BotConfigPage;
	local class<UWindowPageWindow> PageClass;
/*
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
*/
}

/*
function SaveConfigs()
{
	if (GameClass != None)
		GameClass.Static.StaticSaveConfig();
	Super.SaveConfigs();
}
*/

defaultproperties
{
     ModText="Mods"
     StartMatchTab="Match"
}
