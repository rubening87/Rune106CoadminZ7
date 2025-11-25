class SayMessage extends SayMessage;

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

defaultproperties
{
    LifeTime=11
    BlueColor=(R=32,G=160,B=230,A=0)
}