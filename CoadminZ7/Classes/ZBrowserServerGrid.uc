class ZBrowserServerGrid extends RBrowserServerGrid;

var UWindowGridColumn UNK_v7281;
var UWindowGridColumn UNK_v7282;
var UWindowGridColumn UNK_v7283;
var UWindowGridColumn UNK_v7284;
var UWindowGridColumn UNK_v7285;
var UWindowGridColumn UNK_v7286;
var UWindowGridColumn UNK_v7287;

function SortColumn(UWindowGridColumn Parm_UWindowGridColumn_0)
{
    if(UNK_v7287 == Parm_UWindowGridColumn_0)
    {
        bSortDescending = !bSortDescending;        
    }
    else
    {
        bSortDescending = false;
    }
    UNK_v7287 = Parm_UWindowGridColumn_0;
    UBrowserServerListWindow(GetParent(Class'UBrowser.UBrowserServerListWindow')).PingedList.Sort();
    return;
}

function UWindowGridColumn eq_vxv_322(string ColumnHeading, float DefaultWidth)
{
    local UWindowGridColumn Local_UWindowGridColumn_v0, Local_UWindowGridColumn_v1;

    Local_UWindowGridColumn_v1 = LastColumn;
    if(LastColumn == none)
    {
        Local_UWindowGridColumn_v0 = UWindowGridColumn(ClientArea.CreateWindow(Class'coadminz7.zBrowserGridColumn', 0.0000000, 0.0000000, DefaultWidth, WinHeight));
        FirstColumn = Local_UWindowGridColumn_v0;
        Local_UWindowGridColumn_v0.ColumnNum = 0;        
    }
    else
    {
        Local_UWindowGridColumn_v0 = UWindowGridColumn(ClientArea.CreateWindow(Class'coadminz7.zBrowserGridColumn', LastColumn.WinLeft + LastColumn.WinWidth, 0.0000000, DefaultWidth, WinHeight));
        LastColumn.NextColumn = Local_UWindowGridColumn_v0;
        Local_UWindowGridColumn_v0.ColumnNum = LastColumn.ColumnNum + 1;
    }
    LastColumn = Local_UWindowGridColumn_v0;
    Local_UWindowGridColumn_v0.NextColumn = none;
    Local_UWindowGridColumn_v0.PrevColumn = Local_UWindowGridColumn_v1;
    Local_UWindowGridColumn_v0.ColumnHeading = ColumnHeading;
    return Local_UWindowGridColumn_v0;
    return;
}

function CreateColumns()
{
    UNK_v7281 = eq_vxv_322(ServerName, 351.0000000);
    UNK_v7282 = eq_vxv_322(PingName, 32.0000000);
    UNK_v7283 = eq_vxv_322(MapNameName, 102.0000000);
    UNK_v7284 = eq_vxv_322(PlayersName, 36.0000000);
    UNK_v7285 = eq_vxv_322(GamesName, 75.0000000);
    UNK_v7286 = eq_vxv_322("Version", 35.0000000);
    UNK_v7287 = UNK_v7284;
    return;
}

function DrawCell(Canvas Parm_Canvas_0, float X, float Y, UWindowGridColumn Parm_UWindowGridColumn_0, UBrowserServerList List)
{
    switch(Parm_UWindowGridColumn_0)
    {
        case UNK_v7281:
            Parm_UWindowGridColumn_0.ClipText(Parm_Canvas_0, X, Y, List.HostName);
            break;
        case UNK_v7282:
            Parm_UWindowGridColumn_0.ClipText(Parm_Canvas_0, X, Y, string(int(List.Ping)));
            break;
        case UNK_v7283:
            Parm_UWindowGridColumn_0.ClipText(Parm_Canvas_0, X, Y, List.MapDisplayName);
            break;
        case UNK_v7284:
            Parm_UWindowGridColumn_0.ClipText(Parm_Canvas_0, X, Y, (string(List.NumPlayers) $ "/") $ string(List.MaxPlayers));
            break;
        case UNK_v7285:
            Parm_UWindowGridColumn_0.ClipText(Parm_Canvas_0, X, Y, List.GameType);
            break;
        case UNK_v7286:
            Parm_UWindowGridColumn_0.ClipText(Parm_Canvas_0, X, Y, string(List.GameVer));
            break;
        default:
            break;
    }
    return;
}

function int Compare(UBrowserServerList Local_int_v0, UBrowserServerList B)
{
    switch(UNK_v7287)
    {
        case UNK_v7281:
            return ByName(Local_int_v0, B);
        case UNK_v7282:
            return ByPing(Local_int_v0, B);
        case UNK_v7283:
            return ByMap(Local_int_v0, B);
        case UNK_v7284:
            return ByPlayers(Local_int_v0, B);
        case UNK_v7285:
            return ByGames(Local_int_v0, B);
        case UNK_v7286:
            return eqstar_vxv_1341(Local_int_v0, B);
        default:
            return 0;
            break;
    }
    return;
}

function int eqstar_vxv_1341(UBrowserServerList Local_int_v0, UBrowserServerList B)
{
    local int Local_int_v0;

    if(B == none)
    {
        return -1;
    }
    if(Local_int_v0.GameVer < B.GameVer)
    {
        Local_int_v0 = -1;        
    }
    else
    {
        if(Local_int_v0.GameVer > B.GameVer)
        {
            Local_int_v0 = 1;            
        }
        else
        {
            Local_int_v0 = 0;
        }
    }
    if(bSortDescending)
    {
        Local_int_v0 = -Local_int_v0;
    }
    return Local_int_v0;
    return;
}
