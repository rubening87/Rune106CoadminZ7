class zClientWindow extends zPageWindow;

var UWindowMessageBoxArea UNK_v2950;
var RuneMenuLabelControl RMLblCtrl;
var RuneMenuLabelControl UNK_v4004;
var UWindowPageControlPage UNK_v7307;
var UWindowPageControlPage UNK_v7308;
var zPageControl UNK_v3985;

function Created()
{
    local int Local_int_v0, Local_int_v1;

    eqand_vxv_1193();
    UNK_v7307 = UNK_v3985.AddPage("Console", Class'coadminz7.zMenuConsoleScrollClient');
    UNK_v7308 = UNK_v3985.AddPage("Various", Class'coadminz7.zMenuVariousScrollClient');
    Local_int_v0 = int(WinWidth / float(4)) * 3;
    Local_int_v1 = int(WinWidth - float(Local_int_v0)) / 2;
    super(UWindowWindow).Created();
    WinLeft = (Root.WinWidth / float(2)) - (WinWidth / float(2));
    WinTop = (Root.WinHeight / float(2)) - (WinHeight / float(2));
    RMLblCtrl = RuneMenuLabelControl(CreateWindow(Class'RMenu.RuneMenuLabelControl', float(Local_int_v1), 0.0000000, float(Local_int_v0), 1.0000000));
    RMLblCtrl.SetText("CoAdminZ Test Window");
    RMLblCtrl.SetFont(3);
    RMLblCtrl.Align = 2;
    RMLblCtrl.WinTop = 20.0000000;
    RMLblCtrl.bDropShadow = true;
    RMLblCtrl.DropAmountX = 2;
    RMLblCtrl.DropAmountY = 2;
    UNK_v4004 = RuneMenuLabelControl(CreateWindow(Class'RMenu.RuneMenuLabelControl', float(Local_int_v1), 0.0000000, float(Local_int_v0), 1.0000000));
    UNK_v4004.SetText("Very amaze, much to come.");
    UNK_v4004.SetFont(2);
    UNK_v4004.Align = 2;
    UNK_v4004.WinTop = 55.0000000;
    SetAcceptsFocus();
    return;
}

function eqand_vxv_1193()
{
    local Class<zPageWindow> Local_Class<zPageWindow>_v0;

    UNK_v3985 = zPageControl(CreateWindow(Class'coadminz7.zPageControl', 0.0000000, 0.0000000, WinWidth, WinHeight - float(25)));
    UNK_v3985.SetMultiLine(true);
    return;
}

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    Parm_Canvas_0.Style = GetPlayerOwner().5;
    Parm_Canvas_0.AlphaScale = 0.2000000;
    DrawStretchedTexture(Parm_Canvas_0, 0.0000000, 0.0000000, WinWidth, WinHeight, Texture'UWindow.BlackTexture');
    return;
}
