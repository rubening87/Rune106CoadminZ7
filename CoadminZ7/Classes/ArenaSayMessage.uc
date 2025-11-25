class ArenaSayMessage extends SayMessage;

static function ClientReceiveMessage(PlayerPawn Parm_PlayerPawn_0, string Msg, optional PlayerReplicationInfo eq_vxv_5291)
{
    local string Local_string_v0;

    if((((Parm_PlayerPawn_0.myHUD != none) && zHUD(Parm_PlayerPawn_0.myHUD) != none) && eq_vxv_5291 != none) && zHUD(Parm_PlayerPawn_0.myHUD).eq_vxv_112(eq_vxv_5291.PlayerID))
    {
        return;
    }
    if((((Parm_PlayerPawn_0.myHUD != none) && zArenaHUD(Parm_PlayerPawn_0.myHUD) != none) && eq_vxv_5291 != none) && zArenaHUD(Parm_PlayerPawn_0.myHUD).eq_vxv_112(eq_vxv_5291.PlayerID))
    {
        return;
    }
    if(Msg == "")
    {
        return;
    }
    if(Parm_PlayerPawn_0.myHUD != none)
    {
        Parm_PlayerPawn_0.myHUD.LocalizedMessage(default.Class, 0, eq_vxv_5291, none, none, Msg);
    }
    return;
}

static function Color GetColor(optional int Switch, optional PlayerReplicationInfo eq_vxv_4284, optional PlayerReplicationInfo eq_vxv_4285)
{
    if(eq_vxv_4284 != none)
    {
        return GetTeamColor(int(eq_vxv_4284.Team));
    }
    return;
}

static function Color GetTeamColor(int Team)
{
    switch(Team)
    {
        case 0:
            return default.RedColor;
        case 1:
            return default.GreenColor;
        case 2:
            return default.GreenColor;
        case 3:
            return default.GoldColor;
        default:
            return default.WhiteColor;
            break;
    }
    return;
}
