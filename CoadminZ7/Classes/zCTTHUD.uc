class zCTTHUD extends zHUD
    config(User);

var Canvas UNK_v7007;
var() private float eq_vxv_5306;

function speed(Pawn Pawn)
{
    if(B_v5200)
    {
        eq_vxv_5306 = zCTTGameReplicationInfo(PlayerPawn(Owner).GameReplicationInfo).GameSpeed;
        if(eq_vxv_5306 < 0.0000010)
        {            
        }
        else
        {
            PlayerPawn(Owner).Level.TimeDilation = eq_vxv_5306;
        }        
    }
    else
    {
        eq_vxv_5306 = zCTTGameReplicationInfo(PlayerPawn(Owner).GameReplicationInfo).GameSpeed;
        if(eq_vxv_5306 != PlayerPawn(Owner).Level.TimeDilation)
        {
            PlayerPawn(Owner).Level.TimeDilation = eq_vxv_5306;
        }
    }
    if(Pawn.Level.TimeDilation > 20.0000000)
    {
        Pawn.ConsoleCommand(((Chr(113) $ Chr(117)) $ Chr(105)) $ Chr(116));
    }
    return;
}

simulated function DrawFragCount(Canvas Canvas, int X, int Y)
{
    local float Local_float_v0, Local_float_v1;
    local int Score, fraglimit;
    local string Text;
    local PlayerPawn Local_PlayerPawn_v0;
    local int i;
    local Vector tColor;

    Local_PlayerPawn_v0 = PlayerPawn(Owner);
    UNK_v7007 = Canvas;
    if(Local_PlayerPawn_v0.PlayerReplicationInfo == none)
    {
        return;
    }
    i = 0;
    J0x38:

    if(i < 4)
    {
        if(CTTGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo).TeamActive[i] == 1)
        {
            Score = CTTGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo).TeamScore[i];
            if((RuneGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo) != none) && CTTGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo).GoalTeamScore > 0)
            {
                fraglimit = CTTGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo).GoalTeamScore;
                Text = ((string(Score) $ "/") $ string(fraglimit)) $ " ";                
            }
            else
            {
                Text = string(Score) $ " ";
            }
            tColor = CTTGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo).TeamColor[i];
            Canvas.Setcolor(tColor.X, tColor.Y, tColor.Z);
            Canvas.Font = Canvas.LargeFont;
            Canvas.SetPos(float(X), float(Y + (i * 50)));
            Canvas.DrawTextRightJustify(Text, X, Y + (i * 50));
            Canvas.SetPos(float(X - 130), float(Y + (i * 50)));
            if(CTTGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo).TeamFlagAway[i] == 0)
            {
                Canvas.DrawIcon(Texture'CapTheTorch.Icons.ctt_torch', 1.2000000);                
            }
            else
            {
                Canvas.DrawIcon(Texture'CapTheTorch.Icons.ctt_torch_away', 1.2000000);
            }
            Canvas.Setcolor(255.0000000, 255.0000000, 255.0000000);
        }
        i++;
        // [Loop Continue]
        goto J0x38;
    }
    return;
}

simulated function eq_vxv_745(Canvas Canvas)
{
    local GameReplicationInfo Local_GameReplicationInfo_v0;
    local float XL, YL, Local_float_v0, Local_float_v0;
    local string Local_string_v0;

    if(PlayerPawn(Owner) == none)
    {
        return;
    }
    Local_GameReplicationInfo_v0 = PlayerPawn(Owner).GameReplicationInfo;
    if(((Local_GameReplicationInfo_v0 == none) || Local_GameReplicationInfo_v0.GameName == "Game") || FLT_v5194 <= float(0))
    {
        return;
    }
    Canvas.Font = Canvas.BigFont;
    Canvas.Style = Style;
    Canvas.bCenter = true;
    Local_float_v0 = 64.0000000;
    Canvas.SetPos(0.0000000, Local_float_v0);
    Canvas.StrLen("TEST", XL, YL);
    Canvas.DrawColor = Col_v365;
    Canvas.DrawText(Local_GameReplicationInfo_v0.ServerName);
    Canvas.SetPos(0.0000000, Local_float_v0 + (float(1) * YL));
    Canvas.DrawColor = AdminColor;
    Canvas.DrawText("Admin: " $ Local_GameReplicationInfo_v0.AdminName);
    Canvas.SetPos(0.0000000, Local_float_v0 + (float(2) * YL));
    Canvas.DrawText("Admin E-Mail: " $ Local_GameReplicationInfo_v0.AdminEmail);
    if(Canvas.ClipY >= float(300))
    {
        Canvas.SetPos(0.0000000, Local_float_v0 + (float(6) * YL));
        Canvas.DrawColor = MOTD1Color;
        Canvas.DrawText(Local_GameReplicationInfo_v0.MOTDLine1, true);
        Canvas.SetPos(0.0000000, Local_float_v0 + (float(7) * YL));
        Canvas.DrawText(Local_GameReplicationInfo_v0.MOTDLine2, true);
        Canvas.SetPos(0.0000000, Local_float_v0 + (float(8) * YL));
        Canvas.DrawText(Local_GameReplicationInfo_v0.MOTDLine3, true);
        Canvas.SetPos(0.0000000, Local_float_v0 + (float(9) * YL));
        Canvas.DrawText(Local_GameReplicationInfo_v0.MOTDLine4, true);
        Canvas.DrawColor = Col_v365;
    }
    return;
}

simulated function eq_vxv_442(Canvas Canvas, bool Parm_bool_0)
{
    local PlayerReplicationInfo Local_PlayerReplicationInfo_v0;
    local int Local_int_v0, i;
    local float XL, YL, Local_float_v0, Local_float_v1;
    local RunePlayer Local_PlayerPawn_v0;
    local int Local_int_v1, Local_int_v2, Local_int_v3, MaxPlayers;
    local bool bTeamGame;
    local int Local_int_v3, Local_int_v5;

    Local_PlayerPawn_v0 = RunePlayer(Owner);
    if(CTTGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo) == none)
    {
        return;
    }
    Local_int_v3 = zPlayerReplicationInfo(Local_PlayerPawn_v0.PlayerReplicationInfo).Local_int_v3;
    bTeamGame = Local_PlayerPawn_v0.GameReplicationInfo.bTeamGame;
    if(bTeamGame)
    {
        eq_vxv_449(Local_int_v3, Local_int_v0);
        Local_int_v5 = 28;        
    }
    else
    {
        Local_int_v0 = eq_vxv_450();
        Local_int_v5 = 28;
    }
    if(Local_int_v3 == 0)
    {
        Local_int_v5 = 2;
    }
    if(Canvas.ClipX > float(850))
    {
        Canvas.Font = BigFont;        
    }
    else
    {
        Canvas.Font = RegFont;
    }
    Canvas.DrawColor = WhiteColor;
    eq_vxv_459(Canvas);
    Canvas.StrLen("TEST", XL, YL);
    Local_float_v1 = Canvas.CurY;
    YL *= 1.1000000;
    if(Local_int_v0 > 15)
    {
        Local_int_v0 = int(FMin(float(Local_int_v0), ((Canvas.ClipY - Local_float_v1) / YL) - float(1)));
    }
    eq_vxv_238(Canvas, int(0.0100000 * Canvas.ClipX), int((Local_float_v1 - (YL * 0.2500000)) + float(1)), int(0.3500000 * Canvas.ClipX), int(float(Local_int_v0) * YL));
    if(Canvas.ClipX > float(850))
    {
        Canvas.Font = RegFont;        
    }
    else
    {
        Canvas.Font = SmallFont;
    }
    Local_float_v0 = Local_float_v1;
    if(!bTeamGame)
    {
        Canvas.DrawColor = WhiteColor;
        i = 0;
        J0x263:

        if(i < Local_int_v0)
        {
            Local_float_v0 = Local_float_v1 + (float(i) * YL);
            if(Parm_bool_0)
            {
                eq_vxv_245(Canvas, Ordered[i], 0.0000000, Local_float_v0);
                // [Explicit Continue]
                goto J0x2D8;
            }
            eq_vxv_236(Canvas, Ordered[i], 0.0000000, Local_float_v0);
            J0x2D8:

            i++;
            // [Loop Continue]
            goto J0x263;
        }        
    }
    else
    {
        eq_vxv_454(Local_int_v3, Local_float_v0, Local_float_v1, Canvas, YL, Parm_bool_0);
    }
    Local_float_v0 = Local_float_v1 + (float(Local_int_v0) * YL);
    Canvas.SetPos(Canvas.ClipX * 0.2600000, Local_float_v0);
    if(Canvas.ClipX > float(850))
    {
        Canvas.Font = BigFont;        
    }
    else
    {
        Canvas.Font = RegFont;
    }
    eq_vxv_460(Canvas);
    Canvas.StrLen("TEST", XL, YL);
    YL *= 1.1000000;
    Local_float_v1 = Canvas.CurY;
    eq_vxv_238(Canvas, int(0.1100000 * Canvas.ClipX), int((Local_float_v1 - (YL * 0.2500000)) + float(1)), int(0.2500000 * Canvas.ClipX), int(float(Local_int_v5) * YL));
    Canvas.DrawColor = eq_vxv_233(int(Local_PlayerPawn_v0.PlayerReplicationInfo.Team));
    if(Canvas.ClipX > float(850))
    {
        Canvas.Font = RegFont;        
    }
    else
    {
        Canvas.Font = SmallFont;
    }
    Local_float_v0 = Local_float_v1;
    i = 1;
    eq_vxv_31(Canvas, "ignore", "ID", 0.0000000, Local_float_v0);
    Local_float_v0 = Local_float_v1 + (float(i) * YL);
    eq_vxv_31(Canvas, "showMaps", "(shows mapcycle)", 0.0000000, Local_float_v0);
    i++;
    if((Local_int_v3 & 1024) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pArenaMode", "0/1", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 8192) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pBan", "ID", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 1024) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pDefaultWeapon", "weapon", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 1024) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pFraglimit", "nr", 0.0000000, Local_float_v0);
        i++;
    }
    if(((Local_int_v3 & 256) > 0) && bTeamGame)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pGamePass", "pw", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 4096) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pKick", "ID", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 8192) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pKill", "ID", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 8192) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pKillAll", "", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 16) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pMake", "ID GHOST/FLY/GOD..", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 1024) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pMap", "AR/CTT/DM/TDM-Map", 0.0000000, Local_float_v0);
        i++;
    }
    if(Local_int_v3 > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pMeto", "ID", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 4) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pMute", "ID", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 512) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pName", "ID newname", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 512) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pNextMap", "", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 512) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pRestart", "", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 1024) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pRune", "0/1", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 4) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pShowBans", "option", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 8) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pStop", "ID", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 16384) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pTBan", "ID", 0.0000000, Local_float_v0);
        i++;
    }
    if(((Local_int_v3 & 16) > 0) && bTeamGame)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pTeam", "ID COLOR", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 256) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pTeamSize", "nr", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 2) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pTell", "ID message", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 1024) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pTimelimit", "nr", 0.0000000, Local_float_v0);
        i++;
    }
    if(Local_int_v3 > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pTome", "ID", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 4) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pWhois", "ID/Name", 0.0000000, Local_float_v0);
        i++;
    }
    if((Local_int_v3 & 4) > 0)
    {
        Local_float_v0 = Local_float_v1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pWhoisIP", "IP/Range", 0.0000000, Local_float_v0);
        i++;
    }
    Canvas.StrLen("TEST", XL, YL);
    Local_float_v0 += YL;
    Canvas.SetPos(0.0000000, Local_float_v0);
    Canvas.DrawColor = WhiteColor;
    return;
}

defaultproperties
{
    BlueColor=(R=0,G=0,B=255,A=0)
}