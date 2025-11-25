class SubtitleMessage extends SubtitleMessage
    config;

static function ClientReceiveMessage(PlayerPawn Parm_PlayerPawn_0, string Msg, optional PlayerReplicationInfo eq_vxv_5291)
{
    local string Local_string_v0, Local_string_v0;

    if(Msg == "")
    {
        return;
    }
    if(default.bBeep && Parm_PlayerPawn_0.bMessageBeep)
    {
        Parm_PlayerPawn_0.PlayBeepSound();
    }
    if(zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).bTimeStamps)
    {
        Local_string_v0 = ZRunePlayer(Parm_PlayerPawn_0).GetFormattedTimeString();
        Local_string_v0 = ("[" $ Local_string_v0) $ "] ";
    }
    if(default.bIsConsoleMessage)
    {
        if((Parm_PlayerPawn_0.Player != none) && Parm_PlayerPawn_0.Player.Console != none)
        {
            Local_string_v0 = string(default.Class);
            if((Parm_PlayerPawn_0.IsA('RunePlayer') && eq_vxv_5291 != none) && Local_string_v0 == "RuneI.SayMessage")
            {
                Parm_PlayerPawn_0.Player.Console.AddString(((Local_string_v0 $ eq_vxv_5291.PlayerName) $ ": ") $ Msg);                
            }
            else
            {
                Parm_PlayerPawn_0.Player.Console.AddString(Local_string_v0 $ Msg);
            }
        }
    }
    if(Parm_PlayerPawn_0.myHUD != none)
    {
        Parm_PlayerPawn_0.myHUD.LocalizedMessage(default.Class, 0, eq_vxv_5291, none, none, Msg);
    }
    return;
}
