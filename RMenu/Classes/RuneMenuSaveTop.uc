//=============================================================================
// RuneMenuSaveTop
//=============================================================================
class RuneMenuSaveTop extends RuneMenuTopWindow;

var UWindowWindow SaveWindow;

var RuneMenuLabelControl SaveLabel;
var localized string SaveText;

//=============================================================================
// Class Functions
//=============================================================================

function Created()
{
	local int ControlWidth, ControlLeft, ControlRight;
	local int CenterWidth, CenterPos;

	Super.Created();

	ControlWidth = WinWidth/2.5;
	ControlLeft = (WinWidth/2 - ControlWidth)/2;
	ControlRight = WinWidth/2 + ControlLeft;

	CenterWidth = (WinWidth/4)*3;
	CenterPos = (WinWidth - CenterWidth)/2;

	// Title
	SaveLabel = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, 0, CenterWidth, 1));
	SaveLabel.SetText(SaveText);
	SaveLabel.SetFont(F_RuneLarge);
	SaveLabel.Align = TA_Center;
	SaveLabel.WinTop = 30;
	SaveLabel.bDropShadow = true;
	SaveLabel.DropAmountX = 2;
	SaveLabel.DropAmountY = 2;

	HideAllWindows();
}

function DoneOpening()
{
	Super.DoneOpening();

	// Automatically bring down the Client window
	if (SaveWindow == None)
		SaveWindow = Root.CreateWindow(class'RuneMenuSaveScrollClient', 200, 100, 440, 360);
	if(SaveWindow != None)
		SaveWindow.ShowWindow();
}

function HideAllWindows()
{
	if (SaveWindow!=None)
		SaveWindow.HideWindow();
}

defaultproperties
{
     SaveText="Save Game"
}
