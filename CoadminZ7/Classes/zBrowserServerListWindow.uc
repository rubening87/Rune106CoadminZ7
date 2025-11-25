class zBrowserServerListWindow extends RBrowserServerListWindow
    config
    perobjectconfig;

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    DrawStretchedTexture(Parm_Canvas_0, 0.0000000, 0.0000000, WinWidth, WinHeight, Texture'UWindow.BlackTexture');
    return;
}

defaultproperties
{
    ServerListClassName="CoAdminZ7.ZBrowserServerList"
    GridClass="CoAdminZ7.ZBrowserServerGrid"
}