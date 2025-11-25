//=============================================================================
// RuneButton -> Basic Button Class
//=============================================================================
class RuneButton extends UWindowDialogControl;

var		Texture		ButtonTexture;

var		int			TextX,TextY;

var Color ButtonTextCol;
var Color ButtonTextHighlightCol;
var sound OverSound, DownSound;

//=============================================================================
// Superclass Function Overrides
//=============================================================================

function ResetTextColor()
{
	SetTextColor(ButtonTextCol);
}

function BeforePaint(Canvas C,float X,float Y)
{	
	local float W, H;

	Super.BeforePaint(C,X,Y);

	C.Font = Root.Fonts[Font];
	
	TextSize(C, RemoveAmpersand(Text), W, H);

	TextX = (WinWidth-W)/2;
	TextY = (WinHeight-H)/2;
	TextY+=2;	//Seems to align text correctly??

}

function Paint(Canvas C,float X,float Y)
{
	Super.Paint(C,X,Y);

	C.Font=Root.Fonts[Font];

	//Main Texture
	if (ButtonTexture!=none)
	{
		DrawStretchedTexture(C, 0, 0, WinWidth, WinHeight, ButtonTexture);
	}

	//Caption
	if(Text!= "")
	{
		C.DrawColor.R=0;
		C.DrawColor.G=0;
		C.DrawColor.B=0;
		ClipText(C,TextX+1,TextY+1,Text,True);
		C.DrawColor = TextColor;
		ClipText(C, TextX, TextY, Text, True);
		C.DrawColor.R = 255;
		C.DrawColor.G = 255;
		C.DrawColor.B = 255;
	}

}

//For notifying events
simulated function Click(float X, float Y) 
{
	Notify(DE_Click);
	if (DownSound != None)
	{
		if (GetPlayerOwner()!=None)
		{
			if (GetPlayerOwner().ViewTarget != None)
				GetPlayerOwner().ViewTarget.PlaySound(DownSound, SLOT_Interact);
			else
				GetPlayerOwner().PlaySound(DownSound, SLOT_Interact);
		}
	}
}

function Created()
{
	Super.Created();
	ButtonTexture=Texture'RuneButtonBack';

	SetTextColor(ButtonTextCol);

	SetFont(F_RuneButton);
}

function MouseLeave()
{
	Super.MouseLeave();

	SetTextColor(ButtonTextCol);

	if (RuneRootWindow(Root)!=None)
		if (RuneRootWindow(Root).StatusBar!=None)
			RuneRootWindow(Root).StatusBar.SetHelp("");
}

simulated function MouseEnter()
{
	Super.MouseEnter();
	SetTextColor(ButtonTextHighlightCol);

	if (OverSound != None)
	{
		if (GetPlayerOwner()!=None)
		{
			if (GetPlayerOwner().ViewTarget != None)
				GetPlayerOwner().ViewTarget.PlaySound(OverSound, SLOT_None, , false);
			else
				GetPlayerOwner().PlaySound(OverSound, SLOT_None, , false);
		}
	}

	if (RuneRootWindow(Root)!=None)
		if (RuneRootWindow(Root).StatusBar!=None)
			RuneRootWindow(Root).StatusBar.SetHelp(HelpText);
}

defaultproperties
{
     ButtonTextCol=(R=250,G=250,B=250)
     ButtonTextHighlightCol=(R=250)
     OverSound=Sound'RMenu.TopMouseOver'
     DownSound=Sound'RMenu.TopButton'
}
