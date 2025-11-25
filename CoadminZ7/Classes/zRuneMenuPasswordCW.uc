class zRuneMenuPasswordCW extends UWindowDialogClientWindow
    config;

var string URL;
var UWindowComboControl UWComboCtrl;
var RuneMenuLabelControl RMLblCtrl;
var UWindowLabelControl UWLblCtrl;
var UWindowLabelControl UWLblCtrl2;
var localized string PasswordText;
var config string PasswordHistory[10];

function Created()
{
    local float LayoutWidth;
    local int i;
    local Color Local_Color_v0;

    super(UWindowWindow).Created();
    LayoutWidth = WinWidth - float(140);
    RMLblCtrl = RuneMenuLabelControl(CreateWindow(Class'RMenu.RuneMenuLabelControl', 20.0000000, 20.0000000, LayoutWidth, 1.0000000));
    RMLblCtrl.SetText("Legacy Tournament");
    RMLblCtrl.SetFont(6);
    RMLblCtrl.Align = 2;
    RMLblCtrl.WinTop = 10.0000000;
    RMLblCtrl.bDropShadow = true;
    RMLblCtrl.DropAmountX = 2;
    RMLblCtrl.DropAmountY = 2;
    UWLblCtrl = UWindowLabelControl(CreateWindow(Class'UWindow.UWindowLabelControl', 20.0000000, 20.0000000, LayoutWidth, 1.0000000));
    UWLblCtrl.SetFont(3);
    UWLblCtrl.SetText("As a player, press M to vote for a map change");
    UWLblCtrl.TextColor.R = 0;
    UWLblCtrl.TextColor.G = 0;
    UWLblCtrl.TextColor.B = 0;
    UWLblCtrl.bDropShadow = false;
    UWLblCtrl.DropAmountX = 2;
    UWLblCtrl.DropAmountY = 2;
    UWLblCtrl.Align = 2;
    UWLblCtrl2 = UWindowLabelControl(CreateWindow(Class'UWindow.UWindowLabelControl', 20.0000000, 20.0000000, LayoutWidth, 1.0000000));
    UWLblCtrl2.SetFont(0);
    UWLblCtrl2.SetText("As a spectator, press your Powerup-Key to  toggle camera mode and your taunt key to toggle floating names.");
    UWLblCtrl2.Align = 2;
    UWComboCtrl = UWindowComboControl(CreateControl(Class'UWindow.UWindowComboControl', 20.0000000, 20.0000000, LayoutWidth, 1.0000000));
    UWComboCtrl.SetText(PasswordText);
    UWComboCtrl.SetFont(1);
    UWComboCtrl.SetEditable(false);
    i = 0;
    for(i = 0; i < 10; i++)
    {
        if(PasswordHistory[i] != "")
        {
            UWComboCtrl.AddItem(PasswordHistory[i]);
        }
    }
    return;
}

function BeforePaint(Canvas Canvas, float X, float Y)
{
	local float LayoutWidth, XL, YL;

    Canvas.Font = Root.Fonts[UWComboCtrl.Font];
    TextSize(Canvas, UWComboCtrl.Text, XL, YL);
	LayoutWidth = WinWidth - 50;
	RMLblCtrl.WinLeft = ((WinWidth - LayoutWidth) - 30) / 2;
	RMLblCtrl.WinTop = (WinHeight - 125) / 2;
	RMLblCtrl.SetSize(WinWidth, RMLblCtrl.WinHeight);
	UWLblCtrl.WinLeft = ((WinWidth - LayoutWidth) - 30) / 2;
	UWLblCtrl.WinTop = (WinHeight - 35) / 2;
	UWLblCtrl.SetSize(WinWidth, UWLblCtrl.WinHeight);
	UWLblCtrl2.WinLeft = ((WinWidth - LayoutWidth) - 30) / 2;
	UWLblCtrl2.WinTop = (WinHeight + 15) / 2;
	UWLblCtrl2.SetSize(WinWidth, UWLblCtrl2.WinHeight);
	UWComboCtrl.WinLeft = (WinWidth - LayoutWidth) / 2;
	UWComboCtrl.WinTop = ((WinHeight - UWComboCtrl.WinHeight) + 80) / 2;
	UWComboCtrl.SetSize(LayoutWidth, UWComboCtrl.WinHeight);
	UWComboCtrl.EditBoxWidth = (UWComboCtrl.WinWidth - XL) - 20;
	super(UWindowWindow).BeforePaint(Canvas, X, Y);
    return;
}

function Notify(UWindowDialogControl UWDialogCtrl, byte ParmByte)
{
    super.Notify(UWDialogCtrl, ParmByte);
    if(int(ParmByte) == 2)
    {
        UWComboCtrl.SetEditable(true);
    }
    if(((UWDialogCtrl == UWComboCtrl) && int(ParmByte) == 7) || (UWDialogCtrl == zRuneMenuPasswordWindow(ParentWindow).UNK_v2948) && int(ParmByte) == 2)
    {
        eq_vxv_345();
    }
    return;
}

function eq_vxv_345()
{
    local int i;
    local bool LocalBool;
    local UWindowComboListItem WComboListItem;
    local string LocalStr;
	LocalStr = UWComboCtrl.GetValue();
	if(LocalStr == "")
	{
		UWComboCtrl.BringToFront();
		return;
	}
	i = InStr(LocalStr, " ");
	if(i != -1)
	{
		LocalStr = Left(LocalStr, i);
	}

	// Check if password already exists in history
	LocalBool = false;
	for(i = 0; i < 10; i++)
	{
		if(PasswordHistory[i] ~= LocalStr)
		{
			LocalBool = true;
			break;
		}
	}

	// If not in history, insert and maintain max 10 entries
	if(!LocalBool)
	{
		UWComboCtrl.InsertItem(LocalStr);
		while(UWComboCtrl.List.Items.Count() > 10)
		{
			UWComboCtrl.List.Items.Last.Remove();
		}

		WComboListItem = UWindowComboListItem(UWComboCtrl.List.Items.Next);
		for(i = 0; i < 10; i++)
		{
			if(WComboListItem != none)
			{
				PasswordHistory[i] = WComboListItem.Value;
				WComboListItem = UWindowComboListItem(WComboListItem.Next);
			}
			else
			{
				PasswordHistory[i] = "";
			}
		}
	}
    SaveConfig();
    UWComboCtrl.ClearValue();
    GetParent(Class'UWindow.UWindowFramedWindow').Close();
    CAZConsole(Root.Console).eq_vxv_779(URL, LocalStr);
    return;
}

defaultproperties
{
    PasswordText="Enter password"
}