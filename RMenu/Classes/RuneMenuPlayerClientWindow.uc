class RuneMenuPlayerClientWindow extends RuneMenuPageWindow;

var UWindowHSplitter Splitter;
var class<UWindowWindow> PlayerSetupClass;

function Created()
{
	Super.Created();

	Splitter = UWindowHSplitter(CreateWindow(class'UWindowHSplitter', 0, 0, WinWidth, WinHeight));
	
	Splitter.RightClientWindow = RuneMenuPlayerMeshClient(Splitter.CreateWindow(class'RuneMenuPlayerMeshClient', 0, 0, 220, 360));
	Splitter.LeftClientWindow = Splitter.CreateWindow(PlayerSetupClass, 0, 0, 220, 360, OwnerWindow);

	Splitter.bRightGrow = True;
	Splitter.SplitPos = 220;
//	Splitter.MinWinWidth = 300;
}

function Resized()
{
	Super.Resized();
	Splitter.SetSize(WinWidth, WinHeight);
}

defaultproperties
{
     PlayerSetupClass=Class'RMenu.RuneMenuPlayerSetupScrollClient'
}
