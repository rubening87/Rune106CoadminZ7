class zRuneMenuPlayerScrollClient extends RuneMenuScrollingDialogClient;

function NotifyBeforeLevelChange()
{
    super(UWindowWindow).NotifyBeforeLevelChange();
    Close();
    Root.Console.CloseUWindow();
    return;
}

function Created()
{
    ClientClass = Class'coadminz7.zRuneMenuPlayerClientWindow';
    FixedAreaClass = none;
    super(UWindowScrollingDialogClient).Created();
    return;
}
