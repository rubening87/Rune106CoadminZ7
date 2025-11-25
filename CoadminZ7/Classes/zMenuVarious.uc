class zMenuVarious extends zPageWindow;

var UWindowMessageBoxArea UNK_v2950;
var RuneMenuLabelControl RMLblCtrl;
var RuneMenuLabelControl UNK_v4004;

function Created()
{
    local int Local_int_v0, Local_int_v1;

    Local_int_v0 = int(WinWidth / float(4)) * 3;
    Local_int_v1 = int(WinWidth - float(Local_int_v0)) / 2;
    super(UWindowWindow).Created();
    WinLeft = (Root.WinWidth / float(2)) - (WinWidth / float(2));
    WinTop = (Root.WinHeight / float(2)) - (WinHeight / float(2));
    RMLblCtrl = RuneMenuLabelControl(CreateWindow(Class'RMenu.RuneMenuLabelControl', float(Local_int_v1), 0.0000000, float(Local_int_v0), 1.0000000));
    RMLblCtrl.SetText("SUCH MENU");
    RMLblCtrl.SetFont(3);
    RMLblCtrl.Align = 2;
    RMLblCtrl.WinTop = 30.0000000;
    RMLblCtrl.bDropShadow = true;
    RMLblCtrl.DropAmountX = 2;
    RMLblCtrl.DropAmountY = 2;
    UNK_v4004 = RuneMenuLabelControl(CreateWindow(Class'RMenu.RuneMenuLabelControl', float(Local_int_v1), 0.0000000, float(Local_int_v0), 1.0000000));
    UNK_v4004.SetText("VERY NEW");
    UNK_v4004.SetFont(2);
    UNK_v4004.Align = 2;
    UNK_v4004.WinTop = 75.0000000;
    SetAcceptsFocus();
    return;
}

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    Parm_Canvas_0.Style = GetPlayerOwner().5;
    Parm_Canvas_0.AlphaScale = 0.2000000;
    DrawStretchedTexture(Parm_Canvas_0, 0.0000000, 0.0000000, WinWidth, WinHeight, Texture'UWindow.BlackTexture');
    return;
}
