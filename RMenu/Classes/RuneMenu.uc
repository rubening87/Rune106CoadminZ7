//=============================================================================
// RuneMenu	-> Main Rune Menu Class
//=============================================================================
class RuneMenu extends RuneWindow;

#exec TEXTURE IMPORT NAME=HHLogo FILE=Textures\HHLogo.bmp GROUP="Icons" MIPS=OFF
#exec TEXTURE IMPORT NAME=HHLogoS FILE=Textures\HHLogoSelected.bmp GROUP="Icons" MIPS=OFF
//#exec TEXTURE IMPORT NAME=GODLogo FILE=Textures\GODLogo.bmp GROUP="Icons" MIPS=OFF
//#exec TEXTURE IMPORT NAME=GODLogoS FILE=Textures\GODLogoSelected.bmp GROUP="Icons" MIPS=OFF

//Controls
var RuneButton NewButton, LoadButton, SaveButton, MultiButton, OptionsButton, ExitButton;
var RuneMenuTopWindow NewMenu, LoadMenu, SaveMenu, OptionsMenu, MultiMenu, AboutMenu;//GodAboutMenu;
var RuneMenuLabelControl VersionLabel;
var bool bWalk;
var rotator CenterRotator, ViewRotator;
var RuneMeshActor LogoMesh;
var vector LogoOffset;
var vector RotFactor;
var float TimeElapsed;

var localized string NewGameText;
var localized string LoadGameText;
var localized string SaveGameText;
var localized string MultiplayerText;
var localized string OptionsText;
var localized string ExitText;
var localized string NewGameHelp,LoadGameHelp,SaveGameHelp,MultiplayerHelp,OptionsHelp,AboutHelp,ExitHelp;

var UWindowButton HHButton, GODButton;

var string HOVStr; // Halls of Valhalla status

//=============================================================================
// Superclass Function Overrides
//=============================================================================

function	Created()
{
	local int ControlOffset;

	Super.Created();

	// Check if this machine has HOV Add-on installed
	HOVStr = GetPlayerOwner().ConsoleCommand("ISADDON");

	WinLeft = 0;
	WinTop = 0;

	DefaultWidth = 200;
	DefaultHeight = 460;
	WinWidth = DefaultWidth;
	WinHeight = DefaultHeight;

	ControlOffset = 100;

	if(HOVStr == "NONE")
		SpawnLogoMesh();

	if(HOVStr != "STANDALONE")
	{
		NewButton = RuneButton(CreateControl(class'RuneButton', 0, 0, 180, 40));
		NewButton.Text=NewGameText;
		NewButton.SetHelpText(NewGameHelp);
		NewButton.WinLeft = 10;
		NewButton.WinTop = ControlOffset;
		NewButton.OverSound = Sound'LeftMouseOver';
		NewButton.DownSound = Sound'LeftButton';
		ControlOffset += 50;

		LoadButton=RuneButton(CreateControl(class'RuneButton', 0, 0, 180, 40));
		LoadButton.Text=LoadGameText;
		LoadButton.SetHelpText(LoadGameHelp);
		LoadButton.WinLeft = 10;
		LoadButton.WinTop = ControlOffset;
		LoadButton.OverSound = Sound'LeftMouseOver';
		LoadButton.DownSound = Sound'LeftButton';
		ControlOffset += 50;

		SaveButton=RuneButton(CreateControl(class'RuneButton', 0, 0, 180, 40));
		SaveButton.Text=SaveGameText;
		SaveButton.SetHelpText(SaveGameHelp);
		SaveButton.WinLeft = 10;
		SaveButton.WinTop = ControlOffset;
		SaveButton.OverSound = Sound'LeftMouseOver';
		SaveButton.DownSound = Sound'LeftButton';
		ControlOffset += 50;
	}
	else // HOV standalone correction
		ControlOffset += 50;
			
	MultiButton=RuneButton(CreateControl(class'RuneButton', 0, 0, 180, 40));
	MultiButton.Text=MultiplayerText;
	MultiButton.SetHelpText(MultiplayerHelp);
	MultiButton.WinLeft = 10;
	MultiButton.WinTop = ControlOffset;
	MultiButton.OverSound = Sound'LeftMouseOver';
	MultiButton.DownSound = Sound'LeftButton';
	ControlOffset += 50;

	OptionsButton = RuneButton(CreateControl(class'RuneButton', 0, 0, 180, 40));
	OptionsButton.Text = OptionsText;
	OptionsButton.SetHelpText(OptionsHelp);
	OptionsButton.WinLeft = 10;
	OptionsButton.WinTop = ControlOffset;
	OptionsButton.OverSound = Sound'LeftMouseOver';
	OptionsButton.DownSound = Sound'LeftButton';
	ControlOffset += 50;

	ExitButton = RuneButton(CreateControl(class'RuneButton', 0, 0, 180, 40));
	ExitButton.Text = ExitText;
	ExitButton.SetHelpText(ExitHelp);
	ExitButton.WinLeft = 10;
	ExitButton.OverSound = Sound'LeftMouseOver';
	ExitButton.WinTop = ControlOffset;
	ExitButton.DownSound = Sound'LeftButton';
	ControlOffset += 50;	//47

	if(HOVStr == "STANDALONE") // HOV correction
		ControlOffset += 100;

	// Logo Buttons
	HHButton = UWindowButton(CreateControl(class'UWindowButton', 120, ControlOffset, 64, 60));
	HHButton.SetHelpText(AboutHelp);
	HHButton.UpTexture = Texture'HHLogo';
	HHButton.DownTexture = Texture'HHLogoS';
	HHButton.OverTexture = Texture'HHLogoS';
	HHButton.bStretched = true;
	HHButton.OverSound = Sound'LeftMouseOver';
	HHButton.DownSound = Sound'LeftButton';

//	GODButton = UWindowButton(CreateControl(class'UWindowButton', 20, ControlOffset, 64, 32));
//	GODButton.SetHelpText(AboutHelp);
//	GODButton.UpTexture = Texture'GodLogo';
//	GODButton.DownTexture = Texture'GodLogoS';
//	GODButton.OverTexture = Texture'GodLogoS';
//	GODButton.bStretched = true;
//	GODButton.OverSound = Sound'LeftMouseOver';
//	GODButton.DownSound = Sound'LeftButton';

	// Engine Version
/*	VersionLabel = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', 0, 0, 180, 1));
	VersionLabel.SetText("Version:"@GetVersionString());
	VersionLabel.SetFont(F_Normal);
	VersionLabel.WinLeft = 10;
	VersionLabel.WinTop = WinHeight-12;
	VersionLabel.bAlwaysOnTop = true;*/

	// Invisible buttons
	if(HOVStr != "STANDALONE")
	{
		NewButton.ButtonTexture = None;
		LoadButton.ButtonTexture = None;
		SaveButton.ButtonTexture = None;
	}

	MultiButton.ButtonTexture = None;
	OptionsButton.ButtonTexture = None;
	ExitButton.ButtonTexture = None;
}

function string GetVersionString()
{
	local string text, versionstring;

	text = "00"$GetEntryLevel().EngineVersion;
	text = Right(text, 3);

	if (GetPlayerOwner() != None && GetPlayerOwner().bCheatsEnabled)
		versionstring = Left(Text,1) $ "." $ Right(Text,2) @ "Build" @ GetEntryLevel().BuildNumber;
	else
		versionstring = Left(Text,1) $ "." $ Right(Text,2);

	return versionstring;
}

function SpawnLogoMesh()
{
//	LogoMesh = GetEntryLevel().Spawn(class'RuneLookMesh', GetEntryLevel());
//	LogoMesh.Skeletal = SkelModel'Goblin';
//	LogoMesh.SkelMesh = 0;
//	LogoMesh.LoopAnim('idleA', 1.0, 0.1);

	LogoMesh = GetEntryLevel().Spawn(class'RuneMeshActor', GetEntryLevel());
	LogoMesh.Skeletal = SkelModel'RuneLogo';
	LogoMesh.SkelMesh = 1;
	LogoMesh.SubstituteMesh = None;
	LogoMesh.bMeshEnviroMap=True;
	LogoMesh.SetDefaultPolyGroups();

	ViewRotator = rot(0, 32768, 0) + CenterRotator;
}

function Close(optional bool bByParent)
{
	Root.Console.CloseUWindow();
}

function PreSize()
{
}

function Tick(float DeltaTime)
{
	local rotator r;

	TimeElapsed += DeltaTime;
	r.Pitch = Cos(TimeElapsed) * RotFactor.X;
	r.Yaw = Sin(TimeElapsed) * RotFactor.Y;
//	r.Roll = Sin(TimeElapsed) * RotFactor.Z;
	r.Roll = 0;
	ViewRotator = rot(0, 32768, 0) + CenterRotator + r;
}

function Paint(Canvas C,float X,float Y)
{
	local float OldFov;

	Super.Paint(C,X,Y);

//	LookAndFeel.DrawClientArea(Self, C);	// Tiled
	if(HOVStr == "STANDALONE")
	{
		DrawStretchedTexture(C, 0, 0, WinWidth, WinHeight / 2, Texture'SideBackHOV1');
		DrawStretchedTexture(C, 0, WinHeight / 2, WinWidth, WinHeight / 2, Texture'SideBackHOV2');
	}
	else if(HOVStr == "ADDON")
	{
		DrawStretchedTexture(C, 0, 0, WinWidth, WinHeight, Texture'SideBack');
		DrawStretchedTexture(C, 0, 0, WinWidth, WinHeight / 4, Texture'SBHOVTop');
	}
	else
	{
		DrawStretchedTexture(C, 0, 0, WinWidth, WinHeight, Texture'SideBack');
		if (LogoMesh!=None)
		{
			OldFov = GetPlayerOwner().FOVAngle;
			GetPlayerOwner().SetFOVAngle(30);
			DrawClippedActor( C, WinWidth/2, WinHeight/2, LogoMesh, False, ViewRotator, LogoOffset );
			GetPlayerOwner().SetFOVAngle(OldFov);
		}
		else
		{
			SpawnLogoMesh();
		}
	}
}

function AfterPaint(Canvas C, float X, float Y)
{
	// Draw version over everything
	C.Font = Root.Fonts[F_Normal];
	C.SetPos(10, Root.GUIScale*WinHeight - Root.GUIScale*12);
	C.DrawText(GetVersionString());
}

function Notify(UWindowDialogControl C, byte E)
{
	if(E == DE_Click)
	{
		switch(C)
		{
			case NewButton:
				HideSubmenusExcept(NewMenu);
				if(NewMenu == None)
					NewMenu = RuneMenuTopWindow(Root.Createwindow(class'RuneMenuNewTop', 0, 0, 440, 100));
				NewMenu.ShowWindow();
				if(NewMenu!=None && !NewMenu.bOpen)
					NewMenu.SlideOpen();
				break;
			case LoadButton:
				HideSubmenusExcept(LoadMenu);
				if(LoadMenu == None)
					LoadMenu = RuneMenuTopWindow(Root.CreateWindow(class'RuneMenuLoadTop', 0, 0, 440, 100));
				LoadMenu.ShowWindow();
				if(LoadMenu!=None && !LoadMenu.bOpen)
					LoadMenu.SlideOpen();
				break;
			case SaveButton:
				HideSubmenusExcept(SaveMenu);
				if(SaveMenu == None)
					SaveMenu = RuneMenuTopWindow(Root.CreateWindow(class'RuneMenuSaveTop', 0, 0, 440, 100));
				SaveMenu.ShowWindow();
				if(SaveMenu!=None && !SaveMenu.bOpen)
					SaveMenu.SlideOpen();
				break;
			case OptionsButton:
				HideSubmenusExcept(OptionsMenu);
				if(OptionsMenu == None)
					OptionsMenu = RuneMenuTopWindow(Root.CreateWindow(class'RuneMenuOptionsTop', 0, 0, 440, 100));
				OptionsMenu.ShowWindow();
				if(OptionsMenu!=None && !OptionsMenu.bOpen)
					OptionsMenu.SlideOpen();
				break;
			case MultiButton:
				HideSubmenusExcept(MultiMenu);
				if(MultiMenu == None)
					MultiMenu = RuneMenuTopWindow(Root.CreateWindow(class'RuneMenuMultiplayerTop', 0, 0, 440, 100));
				MultiMenu.ShowWindow();
				if(MultiMenu!=None && !MultiMenu.bOpen)
					MultiMenu.SlideOpen();
				break;
			case ExitButton:
				HideSubmenusExcept(None);
				Root.Console.ConsoleCommand("Exit");
				break;
			case HHButton:
				HideSubmenusExcept(AboutMenu);
				if (AboutMenu == None)
					AboutMenu = RuneMenuTopWindow(Root.CreateWindow(class'RuneMenuAboutTop', 0, 0, 440, 100));
				AboutMenu.ShowWindow();
				if(AboutMenu!=None && !AboutMenu.bOpen)
					AboutMenu.SlideOpen();
				break;
//			case GodButton:
//				HideSubmenusExcept(GodAboutMenu);
//				if (GodAboutMenu == None)
//					GodAboutMenu = RuneMenuTopWindow(Root.CreateWindow(class'RuneMenuGodAboutTop', 0, 0, 440, 100));
//				GodAboutMenu.ShowWindow();
//				if(GodAboutMenu!=None && !GodAboutMenu.bOpen)
//					GodAboutMenu.SlideOpen();
//				break;
		}
	}
}

function ShowWindow()
{
	Super.ShowWindow();

	HideSubmenusExcept(None);
}

function HideSubmenusExcept(RuneMenuTopWindow Exclude)
{
	local Color Col;

	if (NewMenu!=None && NewMenu!=Exclude)
	{
		NewMenu.HideWindow();
		NewMenu.HideAllWindows();
	}

	if (LoadMenu!=None && LoadMenu!=Exclude)
	{
		LoadMenu.HideWindow();
		LoadMenu.HideAllWindows();
	}

	if (SaveMenu!=None && SaveMenu!=Exclude)
	{
		SaveMenu.HideWindow();
		SaveMenu.HideAllWindows();
	}

	if (OptionsMenu!=None && OptionsMenu!=Exclude)
	{
		OptionsMenu.HideWindow();
		OptionsMenu.HideAllWindows();
	}

	if (MultiMenu!=None && MultiMenu!=Exclude)
	{
		MultiMenu.HideWindow();
		MultiMenu.HideAllWindows();
	}

	if (AboutMenu!=None && AboutMenu!=Exclude)
	{
		AboutMenu.HideWindow();
		AboutMenu.HideAllWindows();
	}

/*	if (GodAboutMenu!=None && GodAboutMenu!=Exclude)
	{
		GodAboutMenu.HideWindow();
		GodAboutMenu.HideAllWindows();
	}
*/
	// Reset all button colors
	if(HOVStr != "STANDALONE")
	{
		NewButton.ResetTextColor();
		LoadButton.ResetTextColor();
		SaveButton.ResetTextColor();
	}

	MultiButton.ResetTextColor();
	OptionsButton.ResetTextColor();
	ExitButton.ResetTextColor();
}

function Resized()
{	
	Notify(NewButton, DE_Click);
}

function SecretAction()
{
	bWalk = !bWalk;
}

function Move(UWindowWindow W)
{
	if (bWalk)
	{
		W.WinLeft += RandRange(-5,5);
		W.WinTop  += RandRange(-5,5);
		W.WinLeft = Clamp(W.WinLeft, 0, 640-W.WinWidth);
		W.WinTop  = Clamp(W.WinTop,  0, 480-W.WinHeight);
		//Root.Console.AddString("Moving"@W.name@W.WinLeft@W.WinTop);
	}
}

defaultproperties
{
     LogoOffset=(X=15.000000,Z=13.400000)
     RotFactor=(X=2000.000000,Y=4000.000000)
     NewGameText="New Game"
     LoadGameText="Load Game"
     SaveGameText="Save Game"
     MultiplayerText="Multiplayer"
     OptionsText="Options"
     ExitText="Exit"
     NewGameHelp="Start a new game"
     LoadGameHelp="Load a saved game"
     SaveGameHelp="Save the current game"
     MultiplayerHelp="Multiplayer game options"
     OptionsHelp="Set Audio, Video, Input, Control options"
     AboutHelp="Credits, Links"
     ExitHelp="Exit"
     DefaultWidth=200
     DefaultHeight=460
     bAlwaysOnTop=True
}
