class zBrowserMainWindow extends RBrowserMainWindow;

function BeginPlay()
{
    super(UBrowserMainWindow).BeginPlay();
    ClientClass = Class'coadminz7.zBrowserMainClientWindow';
    return;
}

function Created()
{
    bMovable = false;
    bSizable = false;
    bStatusBar = true;
    super(UWindowWindow).Created();
    MinWinWidth = 50.0000000;
    MinWinHeight = 50.0000000;
    ClientArea = CreateWindow(ClientClass, 4.0000000, 16.0000000, WinWidth - float(8), WinHeight - float(20), OwnerWindow);
    MinWinWidth = 300.0000000;
    SetSizePos();
    return;
}

function bool IsActive()
{
    return true;
    return;
}

function HideWindow()
{
    super.HideWindow();
    bOpen = false;
    bOpening = false;
    WinTop = float(StartTop);
    return;
}

function ShowWindow()
{
    super.ShowWindow();
    SlideOpen();
    return;
}

function SlideOpen()
{
    bOpening = true;
    bOpen = false;
    WinTop = float(StartTop);
    Alpha = 0.0000000;
    LookAndFeel.PlayMenuSound(self, 9);
    return;
}

function DoneOpening()
{
    bOpening = false;
    bOpen = true;
    return;
}

function Tick(float Parm_float_0)
{
    local float Local_float_v0;

    if(bOpening)
    {
        Alpha += (Parm_float_0 * SlideRate);
        if(Alpha >= 1.0000000)
        {
            DoneOpening();
        }
        Alpha = FClamp(Alpha, 0.0000000, 1.0000000);
        Local_float_v0 = CubicBlend(Alpha, 0.0000000, 1.0000000, test1, test2);
        WinTop = float(StartTop) + (360.0000000 * Local_float_v0);
    }
    return;
}

function float CubicBlend(float Local_int_v0, float Parm_float_1, float Parm_float_2, float Parm_float_3, float Parm_float_4)
{
    local float Local_float_v0, Local_float_v1, Local_float_v2, Local_float_v3;

    Local_float_v0 = (((1.0000000 - Local_int_v0) * (float(1) - Local_int_v0)) * (float(1) - Local_int_v0)) * Parm_float_1;
    Local_float_v1 = ((Local_int_v0 * Local_int_v0) * Local_int_v0) * Parm_float_2;
    Local_float_v2 = (((3.0000000 * Local_int_v0) * (float(1) - Local_int_v0)) * (float(1) - Local_int_v0)) * Parm_float_3;
    Local_float_v3 = (((3.0000000 * Local_int_v0) * Local_int_v0) * (float(1) - Local_int_v0)) * Parm_float_4;
    return ((Local_float_v0 + Local_float_v1) + Local_float_v2) + Local_float_v3;
    return;
}

function SetSizePos()
{
    WinLeft = 200.0000000;
    WinTop = 0.0000000;
    SetSize(Root.WinWidth - float(200), Root.WinHeight);
    return;
}

defaultproperties
{
    StartTop=-360
}