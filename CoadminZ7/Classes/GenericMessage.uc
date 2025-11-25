class GenericMessage extends GenericMessage;

static function ClientReceive(PlayerPawn Parm_PlayerPawn_0, optional int Switch, optional PlayerReplicationInfo eq_vxv_4284, optional PlayerReplicationInfo eq_vxv_4285, optional Object OptionalObject)
{
    if(Parm_PlayerPawn_0.myHUD != none)
    {
        Parm_PlayerPawn_0.myHUD.LocalizedMessage(default.Class, Switch, eq_vxv_4284, eq_vxv_4285, OptionalObject);
    }
    if(default.bBeep && Parm_PlayerPawn_0.bMessageBeep)
    {
        Parm_PlayerPawn_0.PlayBeepSound();
    }
    if(default.bIsConsoleMessage)
    {
        if((Parm_PlayerPawn_0.Player != none) && Parm_PlayerPawn_0.Player.Console != none)
        {
            Parm_PlayerPawn_0.Player.Console.AddString(GetString(Switch, eq_vxv_4284, eq_vxv_4285, OptionalObject));
        }
    }
    return;
}

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
    if((CAZConsole(Parm_PlayerPawn_0.Player.Console) != none) && CAZConsole(Parm_PlayerPawn_0.Player.Console).bKillfeed)
    {
        if(Right(Msg, 14) != "took a trophy.")
        {
            if(Parm_PlayerPawn_0.myHUD != none)
            {
                Parm_PlayerPawn_0.myHUD.LocalizedMessage(default.Class, 0, eq_vxv_5291, none, none, Msg);
            }
        }        
    }
    else
    {
        if(Parm_PlayerPawn_0.myHUD != none)
        {
            Parm_PlayerPawn_0.myHUD.LocalizedMessage(default.Class, 0, eq_vxv_5291, none, none, Msg);
        }
    }
    return;
}
