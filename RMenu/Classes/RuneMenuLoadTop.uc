//=============================================================================
// RuneMenuLoadTop
//=============================================================================
class RuneMenuLoadTop extends RuneMenuTopWindow;

var UWindowWindow LoadWindow;

var RuneMenuLabelControl LoadLabel;
var localized string LoadText;

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
	LoadLabel = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, 0, CenterWidth, 1));
	LoadLabel.SetText(LoadText);
	LoadLabel.SetFont(F_RuneLarge);
	LoadLabel.Align = TA_Center;
	LoadLabel.WinTop = 30;
	LoadLabel.bDropShadow = true;
	LoadLabel.DropAmountX = 2;
	LoadLabel.DropAmountY = 2;

	HideAllWindows();
}

function DoneOpening()
{
	Super.DoneOpening();

	// Automatically bring down the Client window
	if (LoadWindow == None)
		LoadWindow = Root.CreateWindow(class'RuneMenuLoadScrollClient', 200, 100, 440, 360);
	if(LoadWindow != None)
		LoadWindow.ShowWindow();
}

function HideAllWindows()
{
	if (LoadWindow!=None)
		LoadWindow.HideWindow();
}

defaultproperties
{
     LoadText="Load Game"
}
