class privMessage extends SayMessage;

var Color Col_v1925;

static function string GetString(optional int Switch, optional PlayerReplicationInfo eq_vxv_4284, optional PlayerReplicationInfo eq_vxv_4285, optional Object OptionalObject)
{
    return "";
    return;
}

static function MangleString(out string eq_vxv_4376, optional PlayerReplicationInfo eq_vxv_4375, optional PlayerReplicationInfo eq_vxv_4374, optional Object eq_vxv_4373)
{
    if(eq_vxv_4375 != none)
    {
        eq_vxv_4376 = eq_vxv_4376;
    }
    return;
}

static function Color GetColor(optional int Switch, optional PlayerReplicationInfo eq_vxv_4284, optional PlayerReplicationInfo eq_vxv_4285)
{
    return default.Col_v1925;
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
    if(Parm_PlayerPawn_0.myHUD != none)
    {
        Parm_PlayerPawn_0.myHUD.LocalizedMessage(default.Class, 0, eq_vxv_5291, none, none, Msg);
    }
    return;
}

defaultproperties
{
    Col_v1925=(R=255,G=255,B=255,A=0)
}