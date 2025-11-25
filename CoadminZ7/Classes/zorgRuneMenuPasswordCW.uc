class zorgRuneMenuPasswordCW extends UWindowDialogClientWindow
    config;

var string URL;
var UWindowComboControl UWComboCtrl;
var RuneMenuLabelControl RMLblCtrl;
var localized string PasswordText;
var config string PasswordHistory[10];

function Created()
{
    local float Local_float_v0;
    local int i;
    local Color Local_Color_v0;

    super(UWindowWindow).Created();
    Local_float_v0 = WinWidth - float(140);
    RMLblCtrl = RuneMenuLabelControl(CreateWindow(Class'RMenu.RuneMenuLabelControl', 20.0000000, 20.0000000, Local_float_v0, 1.0000000));
    RMLblCtrl.SetText("Legacy Tournament");
    RMLblCtrl.SetFont(6);
    RMLblCtrl.Align = 2;
    RMLblCtrl.WinTop = 10.0000000;
    RMLblCtrl.bDropShadow = true;
    RMLblCtrl.DropAmountX = 2;
    RMLblCtrl.DropAmountY = 2;
    UWComboCtrl = UWindowComboControl(CreateControl(Class'UWindow.UWindowComboControl', 20.0000000, 20.0000000, Local_float_v0, 1.0000000));
    UWComboCtrl.SetText(PasswordText);
    UWComboCtrl.SetFont(0);
    UWComboCtrl.SetEditable(false);
    i = 0;
    J0x130:

    if(i < 10)
    {
        if(PasswordHistory[i] != "")
        {
            UWComboCtrl.AddItem(PasswordHistory[i]);
        }
        i++;
        // [Loop Continue]
        goto J0x130;
    }
    return;
}

function BeforePaint(Canvas Parm_Canvas_0, float X, float Y)
{
    local float Local_float_v0, XL, YL;

    Parm_Canvas_0.Font = Root.Fonts[UWComboCtrl.Font];
    TextSize(Parm_Canvas_0, UWComboCtrl.Text, XL, YL);
    Local_float_v0 = WinWidth - float(50);
    UWComboCtrl.WinLeft = (WinWidth - Local_float_v0) / float(2);
    UWComboCtrl.WinTop = (WinHeight - UWComboCtrl.WinHeight) / float(2);
    UWComboCtrl.SetSize(Local_float_v0, UWComboCtrl.WinHeight);
    UWComboCtrl.EditBoxWidth = (UWComboCtrl.WinWidth - XL) - float(20);
    super(UWindowWindow).BeforePaint(Parm_Canvas_0, X, Y);
    return;
}

function Notify(UWindowDialogControl Parm_Canvas_0, byte Parm_byte_0)
{
    super.Notify(Parm_Canvas_0, Parm_byte_0);
    if(int(Parm_byte_0) == 2)
    {
        UWComboCtrl.SetEditable(true);
    }
    if(((Parm_Canvas_0 == UWComboCtrl) && int(Parm_byte_0) == 7) || (Parm_Canvas_0 == zorgRuneMenuPasswordWindow(ParentWindow).UNK_v2948) && int(Parm_byte_0) == 2)
    {
        eq_vxv_345();
    }
    return;
}

function eq_vxv_345()
{
    local int i;
    local bool Local_bool_v0;
    local UWindowComboListItem Parm_Inventory_0;
    local string Local_string_v0;

    Local_string_v0 = UWComboCtrl.GetValue();
    if(Local_string_v0 == "")
    {
        UWComboCtrl.BringToFront();
        return;
    }
    i = InStr(Local_string_v0, " ");
    if(i != -1)
    {
        Local_string_v0 = Left(Local_string_v0, i);
    }
    i = 0;
    J0x6A:

    if(i < 10)
    {
        if(PasswordHistory[i] ~= Local_string_v0)
        {
            Local_bool_v0 = true;
        }
        i++;
        // [Loop Continue]
        goto J0x6A;
    }
    if(!Local_bool_v0)
    {
        UWComboCtrl.InsertItem(Local_string_v0);
        J0xBC:

        if(UWComboCtrl.List.Items.Count() > 10)
        {
            UWComboCtrl.List.Items.Last.Remove();
            // [Loop Continue]
            goto J0xBC;
        }
        Parm_Inventory_0 = UWindowComboListItem(UWComboCtrl.List.Items.Next);
        i = 0;
        J0x143:

        if(i < 10)
        {
            if(Parm_Inventory_0 != none)
            {
                PasswordHistory[i] = Parm_Inventory_0.Value;
                Parm_Inventory_0 = UWindowComboListItem(Parm_Inventory_0.Next);
                // [Explicit Continue]
                goto J0x19E;
            }
            PasswordHistory[i] = "";
            J0x19E:

            i++;
            // [Loop Continue]
            goto J0x143;
        }
    }
    SaveConfig();
    UWComboCtrl.ClearValue();
    GetParent(Class'UWindow.UWindowFramedWindow').Close();
    CAZConsole(Root.Console).eq_vxv_779(URL, Local_string_v0);
    return;
}

defaultproperties
{
    PasswordText="Enter password"
}