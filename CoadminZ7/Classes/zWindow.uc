class zWindow extends UWindowFramedWindow;

function Created()
{
    super.Created();
    SetSize(300.0000000, 300.0000000);
    WinLeft = (Root.WinWidth - WinWidth) / float(2);
    WinTop = (Root.WinHeight - WinHeight) / float(2);
    return;
}

function Close(optional bool eq_vxv_3020)
{
    super(UWindowWindow).Close(eq_vxv_3020);
    WindowConsole(GetPlayerOwner().Player.Console).CloseUWindow();
    return;
}

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    Parm_Canvas_0.Style = GetPlayerOwner().5;
    Parm_Canvas_0.AlphaScale = 0.5000000;
    DrawStretchedTexture(Parm_Canvas_0, 0.0000000, 0.0000000, WinWidth, WinHeight, Texture'RuneI.sb_seperator');
    return;
}

defaultproperties
{
    ClientClass=Class'coadminz7.zClientWindow'
    WindowTitle="TEST"
    bStatusBar=true
    bLeaveOnscreen=true
}