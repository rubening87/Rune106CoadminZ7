//=============================================================================
// RuneConsole	->	Default Rune Console
//=============================================================================
class RuneConsole extends WindowConsole;

//Button Text Font

var		class<UWindowWindow>	GameMenuClass;
var		UWindowWindow			GameMenu;

//=============================================================================
// Superclass Function Overrides
//=============================================================================

//Override to show RuneMenu
function LaunchUWindow()
{	
	Super.LaunchUWindow();

	if(Root!=None)
	{
		Root.LookAndFeel.PlayMenuSound(Root, MS_WindowsStart);
		if(GameMenu==None)
		{
			GameMenu=Root.CreateWindow(GameMenuClass,0,0,200,460);
		}
		if(GameMenu!=None)	
			GameMenu.ShowWindow();
	}
}

function CloseUWindow()
{
	Super.CloseUWindow();
	if (Root != None)
		Root.LookAndFeel.PlayMenuSound(Root, MS_WindowsEnd);
}

function DrawLevelAction( canvas C )
{
	local texture LoadTex;
	local string BigMessage;

	if ( (Viewport.Actor.Level.Pauser != "") && (Viewport.Actor.Level.LevelAction == LEVACT_None) )
	{
		C.Font = C.MedFont;
		BigMessage = PausedMessage; // Add pauser name?
		PrintActionMessage(C, BigMessage);
		return;
	}
	if ( (Viewport.Actor.Level.LevelAction == LEVACT_None)
		 || Viewport.Actor.bShowMenu )
	{
		BigMessage = "";
		return;
	}
	else if ( Viewport.Actor.Level.LevelAction == LEVACT_Loading )
	{
		LoadTex = Texture'RuneFX.LetterBox';
		C.SetPos(0, 0);
		C.DrawTile(LoadTex, C.ClipX, C.ClipY, 0, 0, LoadTex.USize, LoadTex.VSize);

		LoadTex = Texture'RuneFX.Loading1';
		C.SetPos(C.ClipX / 2 - LoadTex.USize / 2, C.ClipY / 2 - LoadTex.VSize / 2);
		C.DrawTile(LoadTex, LoadTex.USize, LoadTex.VSize, 0, 0, LoadTex.USize, LoadTex.VSize);
		BigMessage = "";
//		BigMessage = LoadingMessage;
	}
	else if ( Viewport.Actor.Level.LevelAction == LEVACT_Saving )
	{
		LoadTex = Texture'RuneFX.LetterBox';
		C.SetPos(0, 0);
		C.DrawTile(LoadTex, C.ClipX, C.ClipY, 0, 0, LoadTex.USize, LoadTex.VSize);

		LoadTex = Texture'RuneFX.Saving1';
		C.SetPos(C.ClipX / 2 - LoadTex.USize / 2, C.ClipY / 2 - LoadTex.VSize / 2);
		C.DrawTile(LoadTex, LoadTex.USize, LoadTex.VSize, 0, 0, LoadTex.USize, LoadTex.VSize);
		BigMessage = "";

//		BigMessage = SavingMessage;
	}
	else if ( Viewport.Actor.Level.LevelAction == LEVACT_Connecting )
		BigMessage = ConnectingMessage;
	else if ( Viewport.Actor.Level.LevelAction == LEVACT_Precaching )
	{
		LoadTex = Texture'RuneFX.LetterBox';
		C.SetPos(0, 0);
		C.DrawTile(LoadTex, C.ClipX, C.ClipY, 0, 0, LoadTex.USize, LoadTex.VSize);

		LoadTex = Texture'RuneFX.Precaching1';
		C.SetPos(C.ClipX / 2 - LoadTex.USize / 2, C.ClipY / 2 - LoadTex.VSize / 2);
		C.DrawTile(LoadTex, LoadTex.USize, LoadTex.VSize, 0, 0, LoadTex.USize, LoadTex.VSize);
		BigMessage = "";
//		BigMessage = PrecachingMessage;
	}
	
	if ( BigMessage != "" )
	{
		C.Style = 1;
		C.Font = C.LargeFont;	
		PrintActionMessage(C, BigMessage);
	}		
}

event PostRender( canvas Canvas )
{
	//Create root window, console etc. immediately -> To catch SLOG etc
	//NOTE: Normal WindowConsole is not created until first display request.
	if(Root == None)
	{
		CreateRootWindow( Canvas );
	}
	Super.PostRender(Canvas);
}

defaultproperties
{
     GameMenuClass=Class'RMenu.RuneMenu'
     RootWindow="RMenu.RuneRootWindow"
     ConsoleClass=Class'RMenu.RuneConsoleWindow'
     MouseScale=0.750000
}
