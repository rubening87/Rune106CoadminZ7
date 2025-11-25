class UWindowLabelControl extends UWindowDialogControl;

var bool bDropShadow;
var int DropAmountX, DropAmountY;


function Created()
{
	TextX = 0;
	TextY = 0;
}

function BeforePaint(Canvas C, float X, float Y)
{
	local float W, H;
	
	// Implemented in a child class

	Super.BeforePaint(C, X, Y);
	
	TextSize(C, Text, W, H);
	WinHeight = H+1;
	//WinWidth = W+1;
	TextY = (WinHeight - H) / 2;
	switch (Align)
	{
		case TA_Left:
			break;
		case TA_Center:
			TextX = (WinWidth - W)/2;
			break;
		case TA_Right:
			TextX = WinWidth - W;
			break;
	}	
}

function Paint(Canvas C, float X, float Y)
{
	if(Text != "")
	{
		C.Font = Root.Fonts[Font];

		if (bDropShadow)
		{
			C.DrawColor.R = 0;
			C.DrawColor.G = 0;
			C.DrawColor.B = 0;
			ClipText(C, TextX+DropAmountX, TextY+DropAmountY, Text, true);
		}

		C.DrawColor = TextColor;
		ClipText(C, TextX, TextY, Text);
		C.DrawColor.R = 255;
		C.DrawColor.G = 255;
		C.DrawColor.B = 255;
	}
}

defaultproperties
{
     DropAmountX=1
     DropAmountY=1
}
