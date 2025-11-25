class zRuneMenuMultiplayerTop extends RuneMenuMultiplayerTop
    config;

function NotifyBeforeLevelChange()
{
    super(UWindowWindow).NotifyBeforeLevelChange();
    Close();
    if(JoinWindow != none)
    {
        JoinWindow.Close(true);
    }
    if(ServerWindow != none)
    {
        ServerWindow.Close(true);
    }
    if(PlayerWindow != none)
    {
        PlayerWindow.Close(true);
    }
    Root.Console.CloseUWindow();
    return;
}

function Notify(UWindowDialogControl Parm_UWindowDialogControl_0, byte Parm_byte_0)
{
    if(int(Parm_byte_0) == 2)
    {
        switch(Parm_UWindowDialogControl_0)
        {
            case JoinButton:
                HideAllWindows();
                if(JoinWindow == none)
                {
                    JoinWindow = Root.CreateWindow(Class'RBrowser.RBrowserMainWindow', 200.0000000, 100.0000000, 440.0000000, 360.0000000);
                }
                if(JoinWindow != none)
                {
                    JoinWindow.ShowWindow();
                }
                break;
            case ServerButton:
                HideAllWindows();
                if(ServerWindow == none)
                {
                    ServerWindow = Root.CreateWindow(Class'RMenu.RuneMenuServerScrollClient', 200.0000000, 100.0000000, 440.0000000, 360.0000000);
                }
                if(ServerWindow != none)
                {
                    ServerWindow.ShowWindow();
                }
                break;
            case PlayerButton:
                HideAllWindows();
                if(PlayerWindow == none)
                {
                    PlayerWindow = Root.CreateWindow(Class'coadminz7.zRuneMenuPlayerScrollClient', 200.0000000, 100.0000000, 440.0000000, 360.0000000);
                }
                if(PlayerWindow != none)
                {
                    PlayerWindow.ShowWindow();
                }
                break;
            case ModButton:
                HideAllWindows();
                if(ModWindow == none)
                {
                    ModWindow = RuneMenuTopWindow(Root.CreateWindow(Class'RMenu.RMenuModTop', 200.0000000, 100.0000000, 440.0000000, 40.0000000));
                }
                ModWindow.ShowWindow();
                if((ModWindow != none) && !ModWindow.bOpen)
                {
                    ModWindow.SlideOpen();
                }
                break;
            default:
                break;
        }
    }
    else
    {
        return;
    }
}
