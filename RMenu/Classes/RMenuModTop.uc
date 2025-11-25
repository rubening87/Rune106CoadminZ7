//
// Thanks to Rus 'Nurail' Clark for integrating this code
//

class RMenuModTop extends RuneMenuTopWindow;

var float SlideRate;
var float XAlpha;
var bool bOpening;
var bool bOpen;

var UWindowComboControl ModCombo;
var RMenuModList Modlist;
var UWindowComboList ModComboList;

var UWindowWindow ModWindow;
var class<UWindowWindow> PrevModClass;

var localized string ModText;
var localized string ModBlank;

function Created()
{
     local int CenterWidth, CenterPos;

     Super.Created();

     CenterWidth = (WinWidth/4)*3;
     CenterPos = (WinWidth - CenterWidth)/2;

     ModCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', 0, 0, CenterWidth, 1));
	 ModCombo.SetButtons(True);
     ModCombo.SetText(ModText);
     ModCombo.SetFont(F_Normal);
     ModCombo.SetEditable(False);
	 FillList(ModCombo);

}

function BeforePaint(Canvas C, float X, float Y)
{
     local int CenterWidth, CenterPos;

     CenterWidth = (WinWidth/4)*3;
     CenterPos = (WinWidth - CenterWidth)/2;

     ModCombo.WinLeft = CenterPos;
     ModCombo.WinTop = 11;
     ModCombo.EditBoxWidth = 150;

}

function HideWindow()
{
	bAlwaysOnTop=false;
	Super.HideWindow();
	bOpen = false;
	bOpening = false;
	WinLeft=200;
	WinTop=100;
	if (ModWindow != None)
		ModWindow.HideWindow();
}

function SlideOpen()
{
	bAlwaysOnTop=false;
	bOpening = true;
	bOpen = false;
	WinLeft=200;
	WinTop=100;
	XAlpha=0;

	LookAndFeel.PlayMenuSound(Self, MS_TopSlide);
}

function DoneOpening()
{
	bAlwaysOnTop=true;
	bOpening = false;
	bOpen = true;
	LookAndFeel.PlayMenuSound(Self, MS_TopSlam);
}

function Tick(float DeltaTime)
{
	local float PositionAlpha;

	if (bOpening)
	{
		XAlpha += DeltaTime * SlideRate;
		if (XAlpha >= 1.0)
			DoneOpening();
		XAlpha = FClamp(XAlpha, 0.0, 1.0);
		PositionAlpha = CubicBlend(XAlpha, 0, 1, 1.0, 1.5);
		WinTop = 100.0*PositionAlpha;
	}
}

function Notify(UWindowDialogControl C, byte E)
{
	Super.Notify(C, E);

	switch(E)
	{
	case DE_Change:
		switch(C)
		{
			case ModCombo:
				ModComboSelect();
				break;
		}
	}
}

function ModComboSelect()
{
	local RMenuModList NewRList;
	local string ModSelected;
	
	ModSelected = ModCombo.GetValue();
	
	NewRList = RMenuModList(ModList.Next);

	while ( (NewRList != None) && (NewRList.MenuCaption != ModSelected) )
		NewRList = RMenuModList(NewRList.Next);

	if (NewRList.MenuCaption == "")
	{
		Log("RMenuModTop.ModComboSelect - Mod -"$ModSelected$"- Not Found");
		return;
	}

	if (ModWindow == None)
		PrevModClass = NewRList.ModPageWindowClass;
	else if((PrevModClass != NewRList.ModPageWindowClass) && (ModWindow != None))
	{
		ModWindow.HideWindow();	
		ModWindow = None;
		PrevModClass = NewRList.ModPageWindowClass;
	}
	
	if((NewRList.MenuWidth<2) || (NewRList.MenuWidth>440))
	{
		if(NewRList.MenuWidth<2)
			NewRList.MenuWidth=2;
		else
			NewRList.MenuWidth=440;
	}

	if((NewRList.MenuHeight<2) || (NewRList.MenuHeight>320))
	{
		if(NewRList.MenuHeight<2)
			NewRList.MenuHeight=2;
		else
			NewRList.MenuHeight=320;
	}

	if((NewRList.MenuWidthStartOffset<0) || ( NewRList.MenuWidthStartOffset > 438)) 
		NewRList.MenuWidthStartOffset = 0;

	if( (NewRList.MenuWidthStartOffset+NewRList.MenuWidth) > 440 )
		NewRList.MenuWidth = 440 - NewRList.MenuWidthStartOffset;	

	if(ModWindow == None)
		ModWindow = Root.CreateWindow(NewRList.ModPageWindowClass, (200 + NewRList.MenuWidthStartOffset), 140, NewRList.MenuWidth, NewRList.MenuHeight);
	if(ModWindow != None)
		ModWindow.ShowWindow();

}

function FillList(UWindowComboControl MCControl)
{
	local int NumRModClasses;
    local string NextRModClass, NextRModDesc;
    local int i;
    local RMenuModList NewRList;
    local RMenuModItem TempRItem;
	
	GetPlayerOwner().GetNextIntDesc("RMenu.RMenuModItem", 0, NextRModClass, NextRModDesc);
	       
    Modlist = New class'RMenuModList';
    Modlist.SetupSentinel();
	ModComboList = New class'UWindowComboList';

    while( (NextRModClass != "") && (NumRModClasses < 25) )
    {
        TempRItem = New class<RMenuModItem>(DynamicLoadObject(NextRModClass, class'Class'));
     	if ( TempRItem != None)
		{
			NewRList = RMenuModList(ModList.Append(class'RMenuModList'));
			if(NextRModDesc != "")
			{
			    i = InStr(NextRModDesc, ",");
			    if(i==-1)
			        NewRList.MenuCaption = NextRModDesc;
			    else
			    {
			        NewRList.MenuCaption = Left(NextRModDesc, i);
			    }
			}
			else
			{
			    NewRList.MenuCaption = TempRItem.MenuCaption;
			}
			NewRList.MenuWidth = TempRItem.MenuWidth;
			NewRList.MenuHeight = TempRItem.MenuHeight;
			NewRList.MenuWidthStartOffset = TempRItem.MenuWidthStartOffset;
			NewRList.ModPageWindowClass=TempRItem.ModPageWindowClass;
			MCControl.AddItem(NewRList.MenuCaption);
		}
		NumRModClasses++;
		GetPlayerOwner().GetNextIntDesc("RMenu.RMenuModItem", NumRModClasses, NextRModClass, NextRModDesc);
	}
}

defaultproperties
{
     SlideRate=1.500000
     ModText="Select Mod: "
     ModBlank="   "
}
