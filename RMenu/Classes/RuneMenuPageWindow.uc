//
// RuneMenuPageWindow
//
// Standard rune client window (child of scrollclient)
//
class RuneMenuPageWindow extends UWindowPageWindow;


function Paint(Canvas C, float X, float Y)
{
	Super.Paint(C, X, Y);
	LookAndFeel.DrawClientArea(Self, C);
}

function Notify(UWindowDialogControl C, byte E)
{
	Super.Notify(C, E);

	if(E == DE_MouseMove)
	{
		if(RuneRootWindow(Root) != None)
			if(RuneRootWindow(Root).StatusBar != None)
				RuneRootWindow(Root).StatusBar.SetHelp(C.HelpText);
	}

	if(E == DE_MouseLeave)
	{
		if(RuneRootWindow(Root) != None)
			if(RuneRootWindow(Root).StatusBar != None)
				RuneRootWindow(Root).StatusBar.SetHelp("");
	}
}

/*
function KeyDown( int Key, float X, float Y )
{
	local PlayerPawn P;

	// Send back up to scrollbar
	if (UWindowScrollingDialogClient(ParentWindow) != None)
	{
//		UWindowScrollingDialogClient(ParentWindow).VertSB.KeyDown(Key, X, Y);

		P = GetPlayerOwner();
		if (P!=None)
		{
			switch (Key)
			{
				case P.EInputKey.IK_MouseWheelUp:
					UWindowScrollingDialogClient(ParentWindow).VertSB.Scroll(-ScrollAmount);
					break;
				case P.EInputKey.IK_MouseWheelDown:
					UWindowScrollingDialogClient(ParentWindow).VertSB.Scroll(ScrollAmount);
					break;
			}
		}
	}
}
*/

defaultproperties
{
     bAlwaysBehind=True
}
