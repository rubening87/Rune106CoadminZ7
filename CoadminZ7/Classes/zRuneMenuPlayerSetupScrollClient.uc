class zRuneMenuPlayerSetupScrollClient extends UWindowScrollingDialogClient;

function NotifyBeforeLevelChange()
{
    super(UWindowWindow).NotifyBeforeLevelChange();
    Close();
    Root.Console.CloseUWindow();
    return;
}

function Created()
{
    ClientClass = Class'coadminz7.zRuneMenuPlayerSetupClient';
    FixedAreaClass = none;
    super.Created();
    return;
}
