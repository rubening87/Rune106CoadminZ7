class zRuneMenuPasswordWindow extends UWindowFramedWindow;

var UWindowSmallCloseButton UNK_v3202;
var zWindowSmallButton UNK_v2948;

function eqstar_vxv_1338(Canvas Parm_Canvas_0)
{
    local Texture Local_int_v0;
    local Region R, Local_Region_v0;

    Parm_Canvas_0.DrawColor.R = byte(255);
    Parm_Canvas_0.DrawColor.G = byte(255);
    Parm_Canvas_0.DrawColor.B = byte(255);
    ClipTextWidth(Parm_Canvas_0, 6.0000000, 2.0000000, WindowTitle, WinWidth - float(22));
    return;
}

function Created()
{
    ClientClass = Class'coadminz7.zRuneMenuPasswordCW';
    super.Created();
    UNK_v2948 = zWindowSmallButton(CreateWindow(Class'coadminz7.zWindowSmallButton', WinWidth - float(275), WinHeight - float(24), 100.0000000, 16.0000000));
    UNK_v3202 = UWindowSmallCloseButton(CreateWindow(Class'UWindow.UWindowSmallCloseButton', WinWidth - float(120), WinHeight - float(24), 100.0000000, 16.0000000));
    CloseBox = none;
    UNK_v2948.NotifyWindow = zRuneMenuPasswordCW(ClientArea);
    UNK_v2948.Notify(0);
    UNK_v3202.SetText("Stay as spectator");
    UNK_v2948.SetText("Join as player (PW)");
    SetSizePos();
    bLeaveOnscreen = true;
    return;
}

function ResolutionChanged(float W, float H)
{
    super(UWindowWindow).ResolutionChanged(W, H);
    SetSizePos();
    return;
}

function SetSizePos()
{
    SetSize(510.0000000, 180.0000000);
    WinLeft = float(int((Root.WinWidth - WinWidth) / float(2)));
    WinTop = float(int((Root.WinHeight - WinHeight) / float(2)));
    return;
}

function Resized()
{
    super.Resized();
    ClientArea.SetSize(ClientArea.WinWidth, ClientArea.WinHeight - float(24));
    return;
}

function BeforePaint(Canvas Parm_Canvas_0, float X, float Y)
{
    super.BeforePaint(Parm_Canvas_0, X, Y);
    UNK_v2948.WinLeft = (ClientArea.WinLeft + ClientArea.WinWidth) - float(375);
    UNK_v2948.WinTop = (ClientArea.WinTop + ClientArea.WinHeight) + float(4);
    UNK_v3202.WinLeft = (ClientArea.WinLeft + ClientArea.WinWidth) - float(200);
    UNK_v3202.WinTop = (ClientArea.WinTop + ClientArea.WinHeight) + float(4);
    return;
}

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    local Texture Local_int_v0;

    Local_int_v0 = GetLookAndFeelTexture();
    DrawUpBevel(Parm_Canvas_0, ClientArea.WinLeft, ClientArea.WinTop + ClientArea.WinHeight, ClientArea.WinWidth, 24.0000000, Local_int_v0);
    super.Paint(Parm_Canvas_0, X, Y);
    return;
}

function Close(optional bool eq_vxv_3020)
{
    super(UWindowWindow).Close(eq_vxv_3020);
    Root.Console.CloseUWindow();
    return;
}

defaultproperties
{
    WindowTitle="Enter Tournament password to play"
}