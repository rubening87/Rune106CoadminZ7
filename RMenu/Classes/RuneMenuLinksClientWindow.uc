//=============================================================================
// RuneMenuLinksClientWindow
//=============================================================================
class RuneMenuLinksClientWindow extends RuneMenuPageWindow;


var float ControlOffset;

var UWindowHTMLTextArea HTMLWindow;


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

	ControlOffset = 0;

	// HTML Window
	HTMLWindow = UWindowHTMLTextArea(CreateControl(class'UWindowHTMLTextArea', CenterPos, ControlOffset, CenterWidth, 1));
	HTMLWindow.SetFont(F_Normal);
	ControlOffset += 200;
}

defaultproperties
{
     ControlOffset=25.000000
}
