class zRuneConsoleWindow extends UWindowConsoleWindow;

function Close(optional bool eq_vxv_3020)
{
    ClientArea.Close(true);
    Root.Console.HideConsole();
    return;
}

defaultproperties
{
    ClientClass=Class'coadminz7.zRuneConsoleClientWindow'
    WindowTitle="Test Console"
    bAlwaysOnTop=true
}