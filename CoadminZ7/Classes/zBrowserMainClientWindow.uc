class zBrowserMainClientWindow extends RBrowserMainClientWindow
    config;

function Created()
{
    local int i, Local_CTTorch_v1;
    local UWindowPageControlPage Local_UWindowPageControlPage_v0;
    local UBrowserServerListWindow W;
    local Class<UBrowserServerListWindow> Parm_Canvas_0;
    local Class<UBrowserFavoriteServers> Local_Color_v0;
    local Class<UBrowserUpdateServerWindow> Local_Class<UBrowserUpdateServerWindow>_v0;

    super(UWindowWindow).Created();
    InfoWindow = UBrowserInfoWindow(Root.CreateWindow(Class'UBrowser.UBrowserInfoWindow', 10.0000000, 40.0000000, 310.0000000, 170.0000000));
    InfoWindow.HideWindow();
    PageControl = UWindowPageControl(CreateWindow(Class'UWindow.UWindowPageControl', 0.0000000, 0.0000000, WinWidth, WinHeight));
    PageControl.SetMultiLine(true);
    Local_Class<UBrowserUpdateServerWindow>_v0 = Class<UBrowserUpdateServerWindow>(DynamicLoadObject(UpdateServerClass, Class'Core.Class'));
    MOTD = PageControl.AddPage(MOTDName, Local_Class<UBrowserUpdateServerWindow>_v0);
    IRC = PageControl.AddPage(IRCName, Class'UBrowser.UBrowserIRCWindow');
    Local_Color_v0 = Class<UBrowserFavoriteServers>(DynamicLoadObject(FavoriteServersClass, Class'Core.Class'));
    Favorites = PageControl.AddPage(FavoritesName, Local_Color_v0);
    Parm_Canvas_0 = Class<UBrowserServerListWindow>(DynamicLoadObject(ServerListWindowClass, Class'Core.Class'));
    i = 0;
    J0x137:

    if(i < 20)
    {
        if(ServerListNames[i] == 'None')
        {
            // [Explicit Break]
            goto J0x2A2;
        }
        Local_UWindowPageControlPage_v0 = PageControl.AddPage("", Parm_Canvas_0, ServerListNames[i]);
        if(string(ServerListNames[i]) ~= LANTabName)
        {
            LANPage = Local_UWindowPageControlPage_v0;
        }
        W = UBrowserServerListWindow(Local_UWindowPageControlPage_v0.Page);
        if(W.bHidden)
        {
            PageControl.DeletePage(Local_UWindowPageControlPage_v0);
        }
        if(W.ServerListTitle != "")
        {
            Local_UWindowPageControlPage_v0.SetCaption(W.ServerListTitle);            
        }
        else
        {
            Local_UWindowPageControlPage_v0.SetCaption(Localize("ServerListTitles", string(ServerListNames[i]), "UBrowser"));
        }
        if(string(ServerListNames[i]) ~= "UBrowserAll")
        {
            PageControl.GotoTab(Local_UWindowPageControlPage_v0, true);
        }
        FactoryWindows[i] = W;
        i++;
        // [Loop Continue]
        goto J0x137;
    }
    J0x2A2:

    return;
}

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    DrawStretchedTexture(Parm_Canvas_0, 0.0000000, 0.0000000, WinWidth, WinHeight, Texture'UWindow.BlackTexture');
    return;
}

defaultproperties
{
    ServerListWindowClass="CoAdminZ7.ZBrowserServerListWindow"
}