class zRuneMenuPlayerClientWindow extends RuneMenuPageWindow;

var UWindowHSplitter UNK_v3214;
var Class<UWindowWindow> UNK_v1887;

function NotifyBeforeLevelChange()
{
    super(UWindowWindow).NotifyBeforeLevelChange();
    Close();
    Root.Console.CloseUWindow();
    return;
}

function Created()
{
    super(UWindowWindow).Created();
    UNK_v3214 = UWindowHSplitter(CreateWindow(Class'UWindow.UWindowHSplitter', 0.0000000, 0.0000000, WinWidth, WinHeight));
    UNK_v3214.RightClientWindow = zRuneMenuPlayerMeshClient(UNK_v3214.CreateWindow(Class'coadminz7.zRuneMenuPlayerMeshClient', 0.0000000, 0.0000000, 220.0000000 + float(50), 360.0000000));
    UNK_v3214.LeftClientWindow = UNK_v3214.CreateWindow(UNK_v1887, 0.0000000, 0.0000000, 220.0000000 - float(50), 360.0000000, OwnerWindow);
    UNK_v3214.bRightGrow = true;
    UNK_v3214.SplitPos = 220.0000000 - float(50);
    return;
}

function Resized()
{
    super(UWindowWindow).Resized();
    UNK_v3214.SetSize(WinWidth, WinHeight);
    return;
}

defaultproperties
{
    UNK_v1887=Class'coadminz7.zRuneMenuPlayerSetupScrollClient'
}