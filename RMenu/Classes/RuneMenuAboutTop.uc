//=============================================================================
// RuneMenuAboutTop
//=============================================================================
class RuneMenuAboutTop extends RuneMenuTopWindow;

var UWindowWindow CreditsWindow;

var RuneMenuLabelControl TitleLabel, TitleLabel2;
var localized string TitleText, TitleText2;

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
	TitleLabel = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, 0, CenterWidth, 1));
	TitleLabel.SetText(TitleText);
	TitleLabel.SetFont(F_RuneLarge);
	TitleLabel.Align = TA_Center;
	TitleLabel.WinTop = 10;
	TitleLabel.bDropShadow = true;
	TitleLabel.DropAmountX = 2;
	TitleLabel.DropAmountY = 2;

	// Title2
	TitleLabel2 = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, 0, CenterWidth, 1));
	TitleLabel2.SetText(TitleText2);
	TitleLabel2.SetFont(F_RuneLarge);
	TitleLabel2.Align = TA_Center;
	TitleLabel2.WinTop = 45;
	TitleLabel2.bDropShadow = true;
	TitleLabel2.DropAmountX = 2;
	TitleLabel2.DropAmountY = 2;
}


function DoneOpening()
{
	Super.DoneOpening();

	// Automatically bring down the Client window
	if (CreditsWindow == None)
		CreditsWindow = Root.CreateWindow(class'RuneMenuCreditsScrollClient', 200, 100, 440, 360);
	if(CreditsWindow != None)
		CreditsWindow.ShowWindow();
}

function HideAllWindows()
{
	if (CreditsWindow!=None)
		CreditsWindow.HideWindow();
}

defaultproperties
{
     TitleText="Human Head"
     TitleText2="Credits"
}
