class SpegaytorMessage extends LocalMessage;

static function string GetString(optional int Switch, optional PlayerReplicationInfo eq_vxv_4284, optional PlayerReplicationInfo eq_vxv_4285, optional Object OptionalObject)
{
    return "";
    return;
}

static function MangleString(out string eq_vxv_4376, optional PlayerReplicationInfo eq_vxv_4375, optional PlayerReplicationInfo eq_vxv_4374, optional Object eq_vxv_4373)
{
    if(eq_vxv_4375 != none)
    {
        eq_vxv_4376 = (eq_vxv_4375.PlayerName $ "[Spectator]:") @ eq_vxv_4376;
    }
    return;
}

static function eqhash_vxv_1106(out string Text, string Parm_string_0, string Parm_string_1)
{
    local int i;
    local string Input;

    if((Parm_string_0 != Parm_string_1) && Parm_string_0 != "")
    {
        Input = Text;
        Text = "";
        i = InStr(Input, Parm_string_0);
        J0x42:

        if(i != -1)
        {
            Text = (Text $ Left(Input, i)) $ Parm_string_1;
            Input = Mid(Input, i + Len(Parm_string_0));
            i = InStr(Input, Parm_string_0);
            // [Loop Continue]
            goto J0x42;
        }
        Text = Text $ Input;
    }
    return;
}

static function ClientReceiveMessage(PlayerPawn Parm_PlayerPawn_0, string Msg, optional PlayerReplicationInfo eq_vxv_5291)
{
    local string Local_string_v0, Local_string_v1;

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
    if(default.bBeep && Parm_PlayerPawn_0.bMessageBeep)
    {
        Parm_PlayerPawn_0.PlayBeepSound();
    }
    Local_string_v1 = Msg;
    eqhash_vxv_1106(Local_string_v1, "@all", "");
    if(zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).bTimeStamps)
    {
        Local_string_v0 = ZRunePlayer(Parm_PlayerPawn_0).GetFormattedTimeString();
        Local_string_v0 = ("[" $ Local_string_v0) $ "] ";
    }
    if(default.bIsConsoleMessage)
    {
        if((Parm_PlayerPawn_0.Player != none) && Parm_PlayerPawn_0.Player.Console != none)
        {
            if(eq_vxv_5291 != none)
            {
                if(Parm_PlayerPawn_0.IsA('RunePlayer') || Parm_PlayerPawn_0.IsA('TCCSpectator'))
                {
                    if(Class'coadminz7.zInfo'.static.ContainsString(Msg, "@all"))
                    {
                        Parm_PlayerPawn_0.Player.Console.AddString((((Local_string_v0 $ "- ") $ eq_vxv_5291.PlayerName) $ "[Spectator@all]: ") $ Local_string_v1);                        
                    }
                    else
                    {
                        Parm_PlayerPawn_0.Player.Console.AddString((((Local_string_v0 $ "- ") $ eq_vxv_5291.PlayerName) $ "[Spectator]: ") $ Local_string_v1);
                    }
                }                
            }
            else
            {
                Parm_PlayerPawn_0.Player.Console.AddString(Local_string_v0 $ Local_string_v1);
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
    bIsConsoleMessage=true
    bFadeMessage=true
    LifeTime=10
    DrawColor=(R=238,G=130,B=238,A=0)
    bCenter=true
}