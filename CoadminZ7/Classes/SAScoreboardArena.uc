class SAScoreboardArena extends ArenaScoreboard
    config;

var localized string ChampionString;
var localized string CurrentMatch;
var localized string QueueText;
var localized string VsString;
var localized string InMatchMsg;
var localized string ServerText;
var localized string XOnXText;
var localized string ChampionsText;
var localized string ChallengersText;
var localized string MatchText;
var config string StatusText;
var config string DamageText;
var config string Status;
var Color Col_v1941;
var Color Col_v1943;
var Color Col_v1944;
var Color Col_v1945;
var Texture TXR_v613;
var Color titlecolor;
var Color Col_v365;
var Color AdminColor;
var Color EmailColor;
var Color Col_v610;
var Color MOTD1Color;
var Color MOTD2Color;
var Color MOTD3Color;
var Color MOTD4Color;
var Color SeperatorColor;
var Color HeadingsColor;
var CAZConsole CAZCons2;

function int GetChatOffset()
{
    if(CAZCons2 != none)
    {
        if((CAZCons2.cchatLines < 5) || CAZCons2.bNoCenter)
        {
            return 20;            
        }
        else
        {
            return ((CAZCons2.cchatLines - 4) * 17) + 20;
        }        
    }
    else
    {
        return 0;
    }
    return;
}

function string eq_vxv_307(float Score, float Parm_float_0)
{
    local string Local_string_v0;

    if((Score > 0.0000000) && Parm_float_0 >= 0.0000000)
    {
        if(Parm_float_0 == 0.0000000)
        {
            Local_string_v0 = "God";            
        }
        else
        {
            Local_string_v0 = string(Score / Parm_float_0);
        }
        return Left(Local_string_v0, 4);
    }
    return "n/a";
    return;
}

function DrawTableHeadings(Canvas Canvas)
{
    local float XL, YL, Parm_float_0, Local_float_v0;
    local string Local_string_v0;
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0;

    Parm_PlayerReplicationInfo_0 = PlayerPawn(Owner).PlayerReplicationInfo;
    HeadingsColor = zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).HeadingsColor;
    Canvas.DrawColor = HeadingsColor;
    Canvas.StrLen("00", XL, YL);
    Parm_float_0 = Canvas.CurY + float(10);
    Canvas.SetPos(Canvas.ClipX * 0.1300000, Parm_float_0 + (YL * 1.1000000));
    Canvas.DrawText(" ID", false);
    Canvas.SetPos(Canvas.ClipX * 0.1900000, Parm_float_0 + (YL * 1.1000000));
    Canvas.DrawText(NameText, false);
    Canvas.SetPos(Canvas.ClipX * 0.4200000, Parm_float_0 + (YL * 1.1000000));
    if(CAZCons2.eqAE_vxv_6313)
    {
        Canvas.DrawText("Total damage", false);        
    }
    else
    {
        Canvas.DrawText(FragsText, false);
    }
    Canvas.SetPos(Canvas.ClipX * 0.5200000, Parm_float_0 + (YL * 1.1000000));
    Canvas.DrawText(DeathsText, false);
    if(Canvas.ClipX > float(512))
    {
        Canvas.SetPos(Canvas.ClipX * 0.6000000, Parm_float_0 + (YL * 1.1000000));
        Canvas.DrawText(PingText, false);
    }
    Canvas.SetPos(Canvas.ClipX * 0.6600000, Parm_float_0 + (YL * 1.1000000));
    Canvas.DrawText(QueueText, false);
    Canvas.SetPos(Canvas.ClipX * 0.7500000, Parm_float_0 + (YL * 1.1000000));
    Canvas.DrawText("Trophies", false);
    Parm_float_0 += (YL * 2.2500000);
    Canvas.DrawColor = SeperatorColor;
    Canvas.SetPos(Canvas.ClipX * 0.1000000, Parm_float_0);
    Canvas.Style = 3;
    Canvas.DrawTile(Seperator, Canvas.ClipX * 0.8000000, YL * 0.5000000, 0.0000000, 0.0000000, float(Seperator.USize), float(Seperator.VSize));
    Canvas.Style = 1;
    Parm_float_0 += (YL * 0.7500000);
    Canvas.SetPos(Canvas.ClipX * 0.1000000, Parm_float_0);
    return;
}

function Color GetTeamColor(int Team)
{
    if(zPlayerReplicationInfo(PlayerPawn(Owner).PlayerReplicationInfo).bswitchcolors)
    {
        switch(Team)
        {
            case 0:
                return RedColor;
            case 1:
                return GreenColor;
            case 2:
                return GreenColor;
            case 3:
                return GoldColor;
            default:
                return WhiteColor;
                break;
        }        
    }
    else
    {
        switch(Team)
        {
            case 0:
                return RedColor;
            case 1:
                return BlueColor;
            case 2:
                return GreenColor;
            case 3:
                return GoldColor;
            default:
                return WhiteColor;
                break;
        }
    }
    return;
}

function Color eq_vxv_847(int Team)
{
    switch(Team)
    {
        case 0:
            return Col_v1944;
        case 1:
            return WhiteColor;
        default:
            return WhiteColor;
            break;
    }
    return;
}

function DrawBackground(Canvas Canvas, int X, int Y, int W, int H)
{
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0;

    Parm_PlayerReplicationInfo_0 = PlayerPawn(Owner).PlayerReplicationInfo;
    BackgroundColor = WhiteColor;
    super(RuneScoreboard).DrawBackground(Canvas, X, Y, W, H);
    return;
}

function DrawPlayerInfo(Canvas Canvas, PlayerReplicationInfo Parm_PlayerReplicationInfo_0, float Parm_float_0, float Parm_float_0)
{
    local bool Local_bool_v0;
    local PlayerPawn Local_PlayerPawn_v0;
    local float XL, YL;
    local ArenaGameReplicationInfo Local_GameReplicationInfo_v0;
    local int i, Local_int_v0;
    local Texture Local_Texture_v0;
    local string Status;
    local ArenaGameReplicationInfo Local_ArenaGameReplicationInfo_v1;
    local float Local_float_v0, Local_float_v1;

    Local_PlayerPawn_v0 = PlayerPawn(Owner);
    Local_bool_v0 = Parm_PlayerReplicationInfo_0.PlayerName == Local_PlayerPawn_v0.PlayerReplicationInfo.PlayerName;
    Local_GameReplicationInfo_v0 = ArenaGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo);
    Local_ArenaGameReplicationInfo_v1 = ArenaGameReplicationInfo(PlayerPawn(Owner).GameReplicationInfo);
    if(MyFonts != none)
    {
        Canvas.Font = MyFonts.GetStaticMedFont();        
    }
    else
    {
        Canvas.Font = RegFont;
    }
    if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).B_v5396)
    {
        Canvas.SetPos((Canvas.ClipX * 0.1900000) * 0.9100000, Parm_float_0 * 0.9700000);
        Canvas.DrawIcon(Texture'coadminz7.Icons.crown', 0.3000000);
        Canvas.DrawColor = WhiteColor;
    }
    if(Parm_PlayerReplicationInfo_0.bReadyToPlay)
    {
        Canvas.StrLen("R ", XL, YL);
        Canvas.SetPos((Canvas.ClipX * 0.1000000) - XL, Parm_float_0);
        Canvas.DrawText(ReadyText, false);
    }
    if((int(Parm_PlayerReplicationInfo_0.Team) != 255) && int(Local_ArenaGameReplicationInfo_v1.matchSize) > 1)
    {
        Canvas.DrawColor = GetTeamColor(int(Local_GameReplicationInfo_v0.TeamColor[int(Parm_PlayerReplicationInfo_0.Team)]));        
    }
    else
    {
        if((int(Parm_PlayerReplicationInfo_0.Team) != 255) && int(Local_ArenaGameReplicationInfo_v1.matchSize) == 1)
        {
            Canvas.DrawColor = eq_vxv_847(int(Local_GameReplicationInfo_v0.TeamColor[int(Parm_PlayerReplicationInfo_0.Team)]));            
        }
        else
        {
            Canvas.DrawColor = WhiteColor;
        }
    }
    Canvas.SetPos(Canvas.ClipX * 0.1300000, Parm_float_0);
    Canvas.DrawText(" " $ string(Parm_PlayerReplicationInfo_0.PlayerID), false);
    Canvas.SetPos(Canvas.ClipX * 0.1900000, Parm_float_0);
    Canvas.TextSize(Parm_PlayerReplicationInfo_0.PlayerName, Local_float_v0, Local_float_v1);
    Canvas.DrawText(Parm_PlayerReplicationInfo_0.PlayerName, false);
    if(MyFonts != none)
    {
        Canvas.Font = MyFonts.GetStaticMedFont();        
    }
    else
    {
        Canvas.Font = RegFont;
    }
    Canvas.SetPos(Canvas.ClipX * 0.4200000, Parm_float_0);
    if(CAZCons2.eqAE_vxv_6313 && zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0) != none)
    {
        Canvas.DrawText(string(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).INT_v5366), false);        
    }
    else
    {
        Canvas.DrawText(string(int(Parm_PlayerReplicationInfo_0.Score)), false);
    }
    Canvas.SetPos(Canvas.ClipX * 0.5200000, Parm_float_0);
    Canvas.DrawText(string(int(Parm_PlayerReplicationInfo_0.Deaths)), false);
    if((int(Parm_PlayerReplicationInfo_0.Team) != 255) && int(Local_ArenaGameReplicationInfo_v1.matchSize) > 1)
    {
        Canvas.DrawColor = GetTeamColor(int(Local_GameReplicationInfo_v0.TeamColor[int(Parm_PlayerReplicationInfo_0.Team)]));        
    }
    else
    {
        if((int(Parm_PlayerReplicationInfo_0.Team) != 255) && int(Local_ArenaGameReplicationInfo_v1.matchSize) == 1)
        {
            Canvas.DrawColor = eq_vxv_847(int(Local_GameReplicationInfo_v0.TeamColor[int(Parm_PlayerReplicationInfo_0.Team)]));            
        }
        else
        {
            Canvas.DrawColor = WhiteColor;
        }
    }
    if((Canvas.ClipX > float(512)) && int(Level.NetMode) != int(NM_Standalone))
    {
        Canvas.SetPos(Canvas.ClipX * 0.6000000, Parm_float_0);
        Canvas.DrawText(string(Parm_PlayerReplicationInfo_0.Ping), false);
    }
    if(Parm_PlayerReplicationInfo_0.TeamID <= 16)
    {
        Canvas.SetPos(Canvas.ClipX * 0.6600000, Parm_float_0);
        Canvas.DrawText(TwoDigitString(Parm_PlayerReplicationInfo_0.TeamID), false);
    }
    Local_int_v0 = int(Canvas.ClipX * 0.7800000);
    Canvas.DrawColor = WhiteColor;
    Canvas.StrLen("00", XL, YL);
    Local_int_v0 -= int(XL * 1.5000000);
    if(Parm_PlayerReplicationInfo_0.HeadKills > 0)
    {
        Canvas.SetPos((float(Local_int_v0) - YL) + (XL * 0.2500000), Parm_float_0 - (YL * 0.5000000));
        Canvas.DrawTile(HeadIcon, YL * float(2), YL * float(2), 0.0000000, 0.0000000, float(HeadIcon.USize), float(HeadIcon.VSize));
        Canvas.SetPos(float(Local_int_v0), Parm_float_0);
        Canvas.DrawColor = WhiteColor;
        Canvas.DrawText(string(Parm_PlayerReplicationInfo_0.HeadKills), false);
        Canvas.DrawColor = WhiteColor;
    }
    Local_int_v0 += int(XL * 1.7000000);
    if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0) != none)
    {
        if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).INT_v5354 > 0)
        {
            Canvas.SetPos((float(Local_int_v0) - YL) + (XL * 0.2500000), Parm_float_0 - (YL * 0.5000000));
            Canvas.DrawTile(TXR_v613, YL * float(2), YL * float(2), 0.0000000, 0.0000000, float(TXR_v613.USize), float(TXR_v613.VSize));
            Canvas.SetPos(float(Local_int_v0), Parm_float_0);
            Canvas.DrawColor = WhiteColor;
            Canvas.DrawText(string(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).INT_v5354), false);
            Canvas.DrawColor = WhiteColor;
        }
        Local_int_v0 += int(XL * 1.7000000);
        if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).INT_v5355 > 0)
        {
            Canvas.SetPos((float(Local_int_v0) - YL) + (XL * 0.2500000), Parm_float_0 - (YL * 0.5000000));
            Canvas.DrawColor.R = byte(255);
            Canvas.DrawColor.G = 105;
            Canvas.DrawColor.B = 180;
            Canvas.DrawTile(Texture'RuneFX2.Wordballoon', YL * float(2), YL * float(2), 0.0000000, 0.0000000, float(TXR_v613.USize - 2), float(TXR_v613.VSize - 2));
            Canvas.SetPos(float(Local_int_v0), Parm_float_0);
            Canvas.DrawColor = WhiteColor;
            Canvas.DrawText(string(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).INT_v5355), false);
            Canvas.DrawColor = WhiteColor;
        }
        Local_int_v0 += int(XL * 1.7000000);
        if((zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0) != none) && zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).INT_v5377 > 0)
        {
            Canvas.SetPos((float(Local_int_v0) - YL) + (XL * 0.2500000), Parm_float_0 - (YL * 0.5000000));
            Canvas.DrawColor.R = byte(255);
            Canvas.DrawColor.G = 105;
            Canvas.DrawColor.B = 180;
            Canvas.DrawTile(Texture'coadminz7.Icons.JumpIcon', YL * float(2), YL * float(2), 0.0000000, 0.0000000, float(TXR_v613.USize - 2), float(TXR_v613.VSize - 2));
            Canvas.SetPos(float(Local_int_v0), Parm_float_0);
            Canvas.DrawColor = WhiteColor;
            Canvas.DrawText(string(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).INT_v5377), false);
            Canvas.DrawColor = WhiteColor;
        }
        Local_int_v0 += int(XL * 1.7000000);
    }
    if(Parm_PlayerReplicationInfo_0.bFirstBlood)
    {
        Canvas.SetPos((float(Local_int_v0) - YL) + (XL * 0.2500000), Parm_float_0 - (YL * 0.5000000));
        Canvas.DrawTile(FirstBloodIcon, YL * float(2), YL * float(2), 0.0000000, 0.0000000, float(FirstBloodIcon.USize), float(FirstBloodIcon.VSize));
        Local_int_v0 += int(XL * 1.7000000);
    }
    if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0) != none)
    {
        if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).eqC_vxv_5383 == "")
        {
            Local_Texture_v0 = Texture(DynamicLoadObject("worldflags.xx", Class'Engine.Texture'));            
        }
        else
        {
            if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).eqC_vxv_5383 ~= "RS")
            {
                Local_Texture_v0 = Texture'coadminz7.Icons.serbianflag';                
            }
            else
            {
                if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).eqC_vxv_5383 ~= "IT")
                {
                    Local_Texture_v0 = Texture'coadminz7.Icons.italianflag';                    
                }
                else
                {
                    Local_Texture_v0 = Texture(DynamicLoadObject("worldflags." $ zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).eqC_vxv_5383, Class'Engine.Texture'));
                }
            }
        }
        if(Local_Texture_v0 != none)
        {
            Canvas.SetPos(((Canvas.ClipX * 0.1600000) - YL) + (XL * float(0)), Parm_float_0 - (YL * 0.2600000));
            Canvas.DrawColor = WhiteColor;
            Canvas.DrawIcon(Local_Texture_v0, 0.7500000);
            Canvas.DrawColor = WhiteColor;
        }
        if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).B_v5359)
        {
            Local_Texture_v0 = Texture'coadminz7.Icons.afkIcon';
            Canvas.SetPos((Canvas.ClipX * 0.1900000) + (Local_float_v0 + float(1)), Parm_float_0 - (YL * float(1)));
            Canvas.DrawColor = WhiteColor;
            Canvas.bNoSmooth = true;
            Canvas.DrawTile(Texture'coadminz7.Icons.afkIcon', YL * (6.5000000 + float(1)), YL * (float(3) - 0.4000000), 0.0000000, 0.0000000, float(Local_Texture_v0.USize), float(Local_Texture_v0.VSize));
            Canvas.DrawColor = WhiteColor;
        }
        if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).B_v5399 && !zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).B_v5359)
        {
            Local_Texture_v0 = Texture'coadminz7.Icons.supportIcon';
            Canvas.SetPos((Canvas.ClipX * 0.1900000) + (Local_float_v0 + float(1)), Parm_float_0 - (YL * float(1)));
            Canvas.DrawColor = WhiteColor;
            Canvas.bNoSmooth = true;
            Canvas.DrawTile(Texture'coadminz7.Icons.supportIcon', YL * (6.5000000 + float(1)), YL * float(3), 0.0000000, 0.0000000, float(Local_Texture_v0.USize), float(Local_Texture_v0.VSize));
            Canvas.DrawColor = WhiteColor;
        }
    }
    return;
}

function DrawHeader(Canvas Canvas)
{
    local GameReplicationInfo Local_GameReplicationInfo_v0;
    local ArenaGameReplicationInfo Local_ArenaGameReplicationInfo_v1;
    local float XL, YL, Local_float_v0, Parm_float_0;
    local PlayerPawn Local_PlayerPawn_v0;
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0;
    local string Local_string_v0;

    Local_PlayerPawn_v0 = PlayerPawn(Owner);
    Parm_PlayerReplicationInfo_0 = PlayerPawn(Owner).PlayerReplicationInfo;
    if((Local_PlayerPawn_v0.myHUD != none) && CAZCons2 == none)
    {
        if(zArenaHUD(Local_PlayerPawn_v0.myHUD) != none)
        {
            CAZCons2 = zArenaHUD(Local_PlayerPawn_v0.myHUD).CAZCons1;
        }
    }
    Canvas.StrLen("TEST", XL, YL);
    if(Canvas.ClipX > float(500))
    {
        Local_GameReplicationInfo_v0 = Local_PlayerPawn_v0.GameReplicationInfo;
        Parm_float_0 += YL;
        AdminColor = zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).AdminColor;
        titlecolor = zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).titlecolor;
        EmailColor = zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).EmailColor;
        MOTD1Color = zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).MOTD1Color;
        MOTD2Color = zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).MOTD2Color;
        MOTD3Color = zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).MOTD3Color;
        MOTD4Color = zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).MOTD4Color;
        SeperatorColor = zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).SeperatorColor;
        Local_ArenaGameReplicationInfo_v1 = ArenaGameReplicationInfo(Local_GameReplicationInfo_v0);
        Canvas.DrawColor = WhiteColor;
        Local_string_v0 = ((string(Local_ArenaGameReplicationInfo_v1.matchSize) $ " on ") $ string(Local_ArenaGameReplicationInfo_v1.matchSize)) $ " Server";
        Canvas.StrLen(Local_string_v0, XL, Local_float_v0);
        Canvas.SetPos((Canvas.ClipX * 0.5000000) - (XL * 0.5000000), Parm_float_0 + float(30));
        Canvas.DrawText(Local_string_v0, false);
        if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).B_v5369 || zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).B_v5402)
        {
            Parm_float_0 = ((8.0000000 * YL) + float(GetChatOffset())) - YL;            
        }
        else
        {
            Parm_float_0 = (8.0000000 * YL) + float(GetChatOffset());
        }
        Canvas.DrawColor = zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).Col_v5373;
        Canvas.SetPos(0.1000000 * Canvas.ClipX, Parm_float_0);
        Canvas.DrawText(MapTitleMsg $ Level.Title, true);
        Parm_float_0 += YL;
        Canvas.SetPos(0.1000000 * Canvas.ClipX, Parm_float_0);
        Canvas.DrawText("Author: " $ Level.Author, true);
        Parm_float_0 += YL;
        if(Level.IdealPlayerCount != "")
        {
            Canvas.SetPos(0.1000000 * Canvas.ClipX, Parm_float_0);
            Canvas.DrawText(IdealPlayerCountMsg $ Level.IdealPlayerCount, true);
            Parm_float_0 += YL;
        }
        if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).B_v5402)
        {
            if(zArenaGameReplicationInfo(Local_GameReplicationInfo_v0).demoName != "")
            {
                Canvas.SetPos(0.1000000 * Canvas.ClipX, Parm_float_0);
                Canvas.DrawText("Recording active: " $ zArenaGameReplicationInfo(Local_GameReplicationInfo_v0).demoName, true);
                Parm_float_0 += YL;                
            }
            else
            {
                Canvas.SetPos(0.1000000 * Canvas.ClipX, Parm_float_0);
                Canvas.DrawText("Not recording.", true);
                Parm_float_0 += YL;
            }            
        }
        else
        {
            if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).B_v5369)
            {
                Canvas.SetPos(0.1000000 * Canvas.ClipX, Parm_float_0);
                Canvas.DrawText("Password protected", true);
                Parm_float_0 += YL;
            }
        }
        Parm_float_0 = (8.0000000 * YL) + float(GetChatOffset());
        if(int(Level.NetMode) != int(NM_Standalone))
        {
            if(Canvas.ClipX > float(900))
            {
                Canvas.Font = Font'CAZResources.Tahoma20';                
            }
            else
            {
                Canvas.Font = Font'CAZResources.Tahoma15';
            }
            Canvas.bCenter = true;
            Canvas.SetPos(Canvas.ClipX * 0.0000000, Parm_float_0);
            if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).bshowshadow)
            {
                Canvas.SetPos((Canvas.ClipX * 0.0000000) + float(2), (Parm_float_0 - (float(5 / 900) * Canvas.ClipY)) - float(20));
                Canvas.DrawColor.R = 0;
                Canvas.DrawColor.G = 0;
                Canvas.DrawColor.B = 0;
                Canvas.DrawText(Local_GameReplicationInfo_v0.ServerName, false);
            }
            Canvas.DrawColor = zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).Col_v5372;
            Canvas.SetPos(Canvas.ClipX * 0.0000000, (Parm_float_0 - (float(7 / 900) * Canvas.ClipY)) - float(20));
            Canvas.DrawText(Local_GameReplicationInfo_v0.ServerName, false);
            Parm_float_0 += YL;
            Canvas.bCenter = false;
            Canvas.SetPos(0.1000000 * Canvas.ClipX, Parm_float_0);
            Canvas.DrawColor = zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).Col_v5373;
            if(MyFonts != none)
            {
                Canvas.Font = MyFonts.GetStaticMedFont();                
            }
            else
            {
                Canvas.Font = RegFont;
            }
        }
        Canvas.DrawTextRightJustify(GameTypeMsg $ Local_GameReplicationInfo_v0.GameName, int(0.9000000 * Canvas.ClipX), int(Parm_float_0));
        Parm_float_0 += YL;
        Canvas.DrawTextRightJustify("Next map: " $ zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).STR_v3845, int(0.9000000 * Canvas.ClipX), int(Parm_float_0));
        Parm_float_0 += YL;
        Canvas.DrawTextRightJustify(((("Current players: " $ string(Local_GameReplicationInfo_v0.NumPlayers)) $ " / ") $ string(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).MaxPlayers)) $ NumPlayersMsg, int(0.9000000 * Canvas.ClipX), int(Parm_float_0));
        Parm_float_0 += YL;
        Canvas.DrawColor = GreenColor;
        Canvas.SetPos(0.0000000, Parm_float_0);
    }
    return;
}

function string eq_vxv_260()
{
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0;
    local int Local_int_v0, i;
    local string Local_string_v0;

    i = 0;
    J0x07:

    if(i < 32)
    {
        if(PlayerPawn(Owner).GameReplicationInfo.PRIArray[i] != none)
        {
            Parm_PlayerReplicationInfo_0 = PlayerPawn(Owner).GameReplicationInfo.PRIArray[i];
            if((Parm_PlayerReplicationInfo_0.bIsSpectator && zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0) != none) && zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).STR_v4411 != "")
            {
                Local_int_v0++;
            }
        }
        i++;
        // [Loop Continue]
        goto J0x07;
    }
    if(Local_int_v0 > 0)
    {
        Local_string_v0 = ("Spectators(" $ string(Local_int_v0)) $ "): ";
        i = 0;
        J0xE8:

        if(i < 32)
        {
            if(((PlayerPawn(Owner).GameReplicationInfo.PRIArray[i] != none) && zPlayerReplicationInfo(PlayerPawn(Owner).GameReplicationInfo.PRIArray[i]) != none) && PlayerPawn(Owner).GameReplicationInfo.PRIArray[i].bIsSpectator)
            {
                Parm_PlayerReplicationInfo_0 = PlayerPawn(Owner).GameReplicationInfo.PRIArray[i];
                if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).PP_v5410 != none)
                {
                    Local_string_v0 = (((Local_string_v0 $ Parm_PlayerReplicationInfo_0.PlayerName) $ "(Views ") $ zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).PP_v5410.PlayerReplicationInfo.PlayerName) $ "),";
                    // [Explicit Continue]
                    goto J0x238;
                }
                Local_string_v0 = (Local_string_v0 $ Parm_PlayerReplicationInfo_0.PlayerName) $ "(Fly),";
            }
            J0x238:

            i++;
            // [Loop Continue]
            goto J0xE8;
        }
        return Local_string_v0;        
    }
    else
    {
        return "";
    }
    return;
}

function DrawMatchInfo(Canvas Canvas, PlayerReplicationInfo Parm_PlayerReplicationInfo_0, PlayerReplicationInfo Parm_PlayerReplicationInfo_1, float Parm_float_0, float Parm_float_0)
{
    local float XL, YL, CurY;
    local string Local_string_v0;
    local ArenaGameReplicationInfo Local_GameReplicationInfo_v0;

    Local_GameReplicationInfo_v0 = ArenaGameReplicationInfo(PlayerPawn(Owner).GameReplicationInfo);
    CurY = Parm_float_0;
    Canvas.StrLen(CurrentMatch, XL, YL);
    CurY += YL;
    Canvas.DrawColor = LightCyanColor;
    Canvas.SetPos((Canvas.ClipX * 0.5000000) - (XL * 0.5000000), CurY);
    Canvas.DrawText(CurrentMatch);
    CurY += YL;
    if((Parm_PlayerReplicationInfo_0 != none) && Parm_PlayerReplicationInfo_1 != none)
    {
        Canvas.DrawColor = LightGreenColor;
        Local_string_v0 = (Parm_PlayerReplicationInfo_0.PlayerName $ VsString) $ Parm_PlayerReplicationInfo_1.PlayerName;
        Canvas.StrLen(Local_string_v0, XL, YL);
        Canvas.SetPos((Canvas.ClipX * 0.5000000) - (XL * 0.5000000), CurY);
        Canvas.DrawText(Local_string_v0, false);
    }
    Canvas.SetPos(0.0000000, CurY += YL);
    return;
}

function DrawTeamMatchInfo(Canvas Canvas, float Parm_float_0, float Parm_float_0)
{
    local float XL, YL, CurY, CurX, Local_float_v0;

    local ArenaGameReplicationInfo Local_GameReplicationInfo_v0;

    Local_GameReplicationInfo_v0 = ArenaGameReplicationInfo(PlayerPawn(Owner).GameReplicationInfo);
    CurY = Parm_float_0;
    CurY += YL;
    Canvas.StrLen(CurrentMatch, XL, YL);
    Canvas.DrawColor = LightCyanColor;
    Canvas.SetPos((Canvas.ClipX * 0.5000000) - (XL * 0.5000000), CurY);
    Canvas.DrawText(CurrentMatch);
    CurY += YL;
    Canvas.StrLen((ChampionsText $ VsString) $ ChallengersText, XL, YL);
    Local_float_v0 = (Canvas.ClipX * 0.5000000) - (XL * 0.5000000);
    CurX = Local_float_v0;
    Canvas.DrawColor = GetTeamColor(int(Local_GameReplicationInfo_v0.TeamColor[0]));
    Canvas.SetPos(CurX, CurY);
    Canvas.DrawText(ChampionsText, false);
    Canvas.StrLen(ChampionsText, XL, YL);
    CurX += XL;
    Canvas.DrawColor = LightGreenColor;
    Canvas.SetPos(CurX, CurY);
    Canvas.DrawText(VsString, false);
    Canvas.StrLen(VsString, XL, YL);
    CurX += XL;
    Canvas.DrawColor = GetTeamColor(int(Local_GameReplicationInfo_v0.TeamColor[1]));
    Canvas.SetPos(CurX, CurY);
    Canvas.DrawText(ChallengersText, false);
    Canvas.SetPos(0.0000000, CurY += YL);
    return;
}

function DrawArenaChampion(Canvas Canvas, PlayerReplicationInfo Parm_PlayerReplicationInfo_0, float Parm_float_0, float Parm_float_0)
{
    local float XL, YL, CurY;

    CurY = Parm_float_0;
    Canvas.StrLen(ChampionString, XL, YL);
    CurY += YL;
    Canvas.DrawColor = Col_v1944;
    Canvas.SetPos((Canvas.ClipX * 0.5000000) - (XL * 0.5000000), CurY);
    Canvas.DrawText(ChampionString);
    if(Parm_PlayerReplicationInfo_0 != none)
    {
        Canvas.DrawColor = Col_v1945;
        Canvas.StrLen(Parm_PlayerReplicationInfo_0.PlayerName, XL, YL);
        CurY += YL;
        Canvas.SetPos((Canvas.ClipX * 0.5000000) - (XL * 0.5000000), CurY);
        Canvas.DrawText(Parm_PlayerReplicationInfo_0.PlayerName, false);
    }
    Canvas.SetPos(0.0000000, CurY += YL);
    return;
}

function SortScores(int Parm_int_0)
{
    local int i, Local_int_v0, Local_int_v1;
    local PlayerReplicationInfo Local_PlayerReplicationInfo_v0;

    if(CAZCons2.eqAE_vxv_6313)
    {
        i = 0;
        J0x19:

        if(i < (Parm_int_0 - 1))
        {
            Local_int_v1 = i;
            Local_int_v0 = i + 1;
            J0x44:

            if(Local_int_v0 < Parm_int_0)
            {
                if(Ordered[Local_int_v0].StartTime > Ordered[Local_int_v1].StartTime)
                {
                    Local_int_v1 = Local_int_v0;
                    // [Explicit Continue]
                    goto J0x18E;
                }
                if((Ordered[Local_int_v0].StartTime == Ordered[Local_int_v1].StartTime) && Ordered[Local_int_v0].Deaths < Ordered[Local_int_v1].Deaths)
                {
                    Local_int_v1 = Local_int_v0;
                    // [Explicit Continue]
                    goto J0x18E;
                }
                if(((Ordered[Local_int_v0].StartTime == Ordered[Local_int_v1].StartTime) && Ordered[Local_int_v0].Deaths == Ordered[Local_int_v1].Deaths) && Ordered[Local_int_v0].PlayerID < Ordered[Local_int_v1].StartTime)
                {
                    Local_int_v1 = Local_int_v0;
                }
                J0x18E:

                Local_int_v0++;
                // [Loop Continue]
                goto J0x44;
            }
            Local_PlayerReplicationInfo_v0 = Ordered[Local_int_v1];
            Ordered[Local_int_v1] = Ordered[i];
            Ordered[i] = Local_PlayerReplicationInfo_v0;
            i++;
            // [Loop Continue]
            goto J0x19;
        }        
    }
    else
    {
        i = 0;
        J0x1E5:

        if(i < (Parm_int_0 - 1))
        {
            Local_int_v1 = i;
            Local_int_v0 = i + 1;
            J0x210:

            if(Local_int_v0 < Parm_int_0)
            {
                if(Ordered[Local_int_v0].Score > Ordered[Local_int_v1].Score)
                {
                    Local_int_v1 = Local_int_v0;
                    // [Explicit Continue]
                    goto J0x35B;
                }
                if((Ordered[Local_int_v0].Score == Ordered[Local_int_v1].Score) && Ordered[Local_int_v0].Deaths < Ordered[Local_int_v1].Deaths)
                {
                    Local_int_v1 = Local_int_v0;
                    // [Explicit Continue]
                    goto J0x35B;
                }
                if(((Ordered[Local_int_v0].Score == Ordered[Local_int_v1].Score) && Ordered[Local_int_v0].Deaths == Ordered[Local_int_v1].Deaths) && float(Ordered[Local_int_v0].PlayerID) < Ordered[Local_int_v1].Score)
                {
                    Local_int_v1 = Local_int_v0;
                }
                J0x35B:

                Local_int_v0++;
                // [Loop Continue]
                goto J0x210;
            }
            Local_PlayerReplicationInfo_v0 = Ordered[Local_int_v1];
            Ordered[Local_int_v1] = Ordered[i];
            Ordered[i] = Local_PlayerReplicationInfo_v0;
            i++;
            // [Loop Continue]
            goto J0x1E5;
        }
    }
    return;
}

function ShowScores(Canvas Canvas)
{
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0, Local_PlayerReplicationInfo_v0, Local_PlayerReplicationInfo_v1;
    local ArenaGameReplicationInfo Local_ArenaGameReplicationInfo_v1;
    local int Local_int_v0, i;
    local float XL, YL, Parm_float_0, Parm_float_0;

    i = 0;
    J0x07:

    if(i < 32)
    {
        Ordered[i] = none;
        i++;
        // [Loop Continue]
        goto J0x07;
    }
    i = 0;
    J0x31:

    if(i < 32)
    {
        if(PlayerPawn(Owner).GameReplicationInfo.PRIArray[i] != none)
        {
            Parm_PlayerReplicationInfo_0 = PlayerPawn(Owner).GameReplicationInfo.PRIArray[i];
            if(!Parm_PlayerReplicationInfo_0.bIsSpectator || Parm_PlayerReplicationInfo_0.bWaitingPlayer)
            {
                Ordered[Local_int_v0] = Parm_PlayerReplicationInfo_0;
                if(CAZCons2.eqAE_vxv_6313 && zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0) != none)
                {
                    Ordered[Local_int_v0].StartTime = zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).INT_v5366;
                }
                Local_int_v0++;
                if(Local_int_v0 == 32)
                {
                    // [Explicit Break]
                    goto J0x132;
                }
            }
        }
        i++;
        // [Loop Continue]
        goto J0x31;
    }
    J0x132:

    SortScores(Local_int_v0);
    if(MyFonts != none)
    {
        Canvas.Font = MyFonts.GetStaticMedFont();        
    }
    else
    {
        Canvas.Font = RegFont;
    }
    Canvas.DrawColor = WhiteColor;
    DrawHeader(Canvas);
    Local_ArenaGameReplicationInfo_v1 = ArenaGameReplicationInfo(PlayerPawn(Owner).GameReplicationInfo);
    if((Local_ArenaGameReplicationInfo_v1 != none) && int(Local_ArenaGameReplicationInfo_v1.matchSize) == 1)
    {
        DrawArenaChampion(Canvas, Ordered[0], 0.0000000, Canvas.CurY + YL);
    }
    if((Local_ArenaGameReplicationInfo_v1 != none) && int(Local_ArenaGameReplicationInfo_v1.matchSize) > 1)
    {
        DrawTeamMatchInfo(Canvas, 0.0000000, Canvas.CurY);        
    }
    else
    {
        i = 0;
        J0x252:

        if(i < 32)
        {
            if(PlayerPawn(Owner).GameReplicationInfo.PRIArray[i] != none)
            {
                if(int(PlayerPawn(Owner).GameReplicationInfo.PRIArray[i].Team) == 0)
                {
                    Local_PlayerReplicationInfo_v0 = PlayerPawn(Owner).GameReplicationInfo.PRIArray[i];                    
                }
                else
                {
                    if(int(PlayerPawn(Owner).GameReplicationInfo.PRIArray[i].Team) == 1)
                    {
                        Local_PlayerReplicationInfo_v1 = PlayerPawn(Owner).GameReplicationInfo.PRIArray[i];
                    }
                }
            }
            if((Local_PlayerReplicationInfo_v1 != none) && Local_PlayerReplicationInfo_v0 != none)
            {
                DrawMatchInfo(Canvas, Local_PlayerReplicationInfo_v0, Local_PlayerReplicationInfo_v1, 0.0000000, Canvas.CurY);
                // [Explicit Break]
                goto J0x38A;
            }
            i++;
            // [Loop Continue]
            goto J0x252;
        }
    }
    J0x38A:

    DrawTableHeadings(Canvas);
    Canvas.StrLen("TEST", XL, YL);
    Parm_float_0 = Canvas.CurY;
    if(Local_int_v0 < 15)
    {
        YL *= float(2);        
    }
    else
    {
        if(Local_int_v0 < 20)
        {
            YL *= 1.5000000;
        }
    }
    if(Local_int_v0 > 15)
    {
        Local_int_v0 = int(FMin(float(Local_int_v0), ((Canvas.ClipY - Parm_float_0) / YL) - float(1)));
    }
    DrawBackground(Canvas, int(0.1000000 * Canvas.ClipX), int((Parm_float_0 - (YL * 0.2500000)) + float(1)), int(0.8000000 * Canvas.ClipX), int(float(Local_int_v0) * YL));
    Parm_float_0 = Parm_float_0;
    i = 0;
    J0x4A0:

    if(i < Local_int_v0)
    {
        Parm_float_0 = Parm_float_0 + (float(i) * YL);
        DrawPlayerInfo(Canvas, Ordered[i], 0.0000000, Parm_float_0);
        i++;
        // [Loop Continue]
        goto J0x4A0;
    }
    Canvas.StrLen("TEST", XL, YL);
    Parm_float_0 += YL;
    Canvas.SetPos(0.0000000, Parm_float_0);
    DrawTrailer(Canvas);
    Canvas.DrawColor = WhiteColor;
    return;
}

function string CurrentTime()
{
    local string Local_string_v0;

    Local_string_v0 = "";
    if(PlayerPawn(Owner).Level.Hour < 10)
    {
        Local_string_v0 = "0";
    }
    Local_string_v0 = (Local_string_v0 $ string(PlayerPawn(Owner).Level.Hour)) $ ":";
    if(PlayerPawn(Owner).Level.Minute < 10)
    {
        Local_string_v0 = Local_string_v0 $ "0";
    }
    Local_string_v0 = (Local_string_v0 $ string(PlayerPawn(Owner).Level.Minute)) $ ":";
    if(PlayerPawn(Owner).Level.Second < 10)
    {
        Local_string_v0 = Local_string_v0 $ "0";
    }
    Local_string_v0 = Local_string_v0 $ string(PlayerPawn(Owner).Level.Second);
    return Local_string_v0;
    return;
}

function DrawTrailer(Canvas Canvas)
{
    local int Local_int_v0, Local_int_v1, Local_int_v2;
    local string Local_string_v0, Local_string_v1, Local_string_v2;
    local float XL, YL;
    local int CurMatch, Local_int_v0;
    local PlayerPawn Local_PlayerPawn_v0;
    local int Parm_float_0;
    local ArenaGameReplicationInfo Local_ArenaGameReplicationInfo_v1;
    local GameReplicationInfo Local_GameReplicationInfo_v0;
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0;
    local string Text;
    local int Local_int_v0, Local_int_v1, Local_int_v2;
    local string Local_string_v4, Local_string_v3, STR_v3845;

    Local_string_v3 = CurrentTime();
    Local_GameReplicationInfo_v0 = PlayerPawn(Owner).GameReplicationInfo;
    Parm_PlayerReplicationInfo_0 = PlayerPawn(Owner).PlayerReplicationInfo;
    Local_int_v0 = zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).INT_v5356;
    Local_int_v1 = zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).INT_v5357;
    Local_int_v2 = zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).INT_v5358;
    Local_PlayerPawn_v0 = PlayerPawn(Owner);
    Canvas.bCenter = true;
    Canvas.DrawColor = SeperatorColor;
    Canvas.StrLen("Test", XL, YL);
    Parm_float_0 = int(Canvas.CurY);
    Parm_float_0 += int(YL * 0.2500000);
    Canvas.SetPos(Canvas.ClipX * 0.1000000, float(Parm_float_0));
    Canvas.Style = 3;
    Canvas.DrawTile(Seperator, Canvas.ClipX * 0.8000000, YL * 0.5000000, 0.0000000, 0.0000000, float(Seperator.USize), float(Seperator.VSize));
    Canvas.Style = 1;
    Canvas.DrawColor = WhiteColor;
    Parm_float_0 += int(YL * 0.3500000);
    CAZCons2.eqI_vxv_6534 = float(Parm_float_0);
    Local_string_v4 = eq_vxv_260();
    if(Local_string_v4 != "")
    {
        Canvas.bCenter = false;
        Canvas.SetPos(Canvas.ClipX * 0.1000000, float(Parm_float_0));
        Canvas.DrawText(Left(Local_string_v4, Len(Local_string_v4) - 1), true);
        Canvas.bCenter = true;
    }
    Canvas.Font = Canvas.BigFont;
    Parm_float_0 += int((1.5000000 * YL) + float(Local_int_v1));
    Canvas.SetPos(Canvas.ClipX * 0.0000000, float(Parm_float_0));
    Canvas.DrawColor = titlecolor;
    Canvas.DrawText(Local_GameReplicationInfo_v0.ShortName, false);
    Parm_float_0 += int((1.7000000 * YL) + float(Local_int_v0));
    if(Local_GameReplicationInfo_v0.AdminName != "")
    {
        Canvas.SetPos(Canvas.ClipX * 0.0000000, float(Parm_float_0));
        Canvas.Font = Font'Engine.MedFont';
        Canvas.DrawColor = AdminColor;
        Canvas.DrawText("Admin: " $ Local_GameReplicationInfo_v0.AdminName);
        Parm_float_0 += int((1.5000000 * YL) + float(Local_int_v0));
    }
    if(Local_GameReplicationInfo_v0.AdminEmail != "")
    {
        Canvas.SetPos(Canvas.ClipX * 0.0000000, float(Parm_float_0));
        Canvas.Font = Font'Engine.MedFont';
        Canvas.DrawColor = EmailColor;
        Canvas.DrawText(Local_GameReplicationInfo_v0.AdminEmail);
        Parm_float_0 += int((2.0000000 * YL) + float(Local_int_v0));
    }
    Parm_float_0 += Local_int_v2;
    Canvas.SetPos(Canvas.ClipX * 0.0000000, float(Parm_float_0));
    Canvas.DrawColor = Col_v610;
    Canvas.DrawText("G A M E  R U L E S");
    Parm_float_0 += int((1.5000000 * YL) + float(Local_int_v2));
    Canvas.SetPos(Canvas.ClipX * 0.0000000, float(Parm_float_0));
    Canvas.Font = Font'Engine.MedFont';
    Canvas.DrawColor = MOTD1Color;
    Canvas.DrawText(Local_GameReplicationInfo_v0.MOTDLine1, false);
    Parm_float_0 += int((1.5000000 * YL) + float(Local_int_v2));
    Canvas.SetPos(Canvas.ClipX * 0.0000000, float(Parm_float_0));
    Canvas.Font = Font'Engine.MedFont';
    Canvas.DrawColor = MOTD2Color;
    Canvas.DrawText(Local_GameReplicationInfo_v0.MOTDLine2, false);
    Parm_float_0 += int((1.5000000 * YL) + float(Local_int_v2));
    Canvas.SetPos(Canvas.ClipX * 0.0000000, float(Parm_float_0));
    Canvas.Font = Font'Engine.MedFont';
    Canvas.DrawColor = MOTD3Color;
    Canvas.DrawText(Local_GameReplicationInfo_v0.MOTDLine3, false);
    Parm_float_0 += int((1.5000000 * YL) + float(Local_int_v2));
    Canvas.SetPos(Canvas.ClipX * 0.0000000, float(Parm_float_0));
    Canvas.Font = Font'Engine.MedFont';
    Canvas.DrawColor = MOTD4Color;
    Canvas.DrawText(Local_GameReplicationInfo_v0.MOTDLine4, false);
    if(Canvas.ClipX > float(500))
    {
        Canvas.SetPos(0.0000000, (Canvas.ClipY * 0.9500000) - YL);
        Canvas.Font = Font'Engine.MedFont';
        Canvas.DrawColor = WhiteColor;
        if(bTimeDown || Local_PlayerPawn_v0.GameReplicationInfo.RemainingTime > 0)
        {
            bTimeDown = true;
            if(Local_PlayerPawn_v0.GameReplicationInfo.RemainingTime <= 0)
            {
                Canvas.DrawText(((("Time: " $ Local_string_v3) $ "  ~  ") $ RemainingTimeMsg) @ "00:00", true);                
            }
            else
            {
                Local_int_v1 = Local_PlayerPawn_v0.GameReplicationInfo.RemainingTime / 60;
                Local_int_v2 = int(float(Local_PlayerPawn_v0.GameReplicationInfo.RemainingTime) % float(60));
                Canvas.DrawText(((((("Time: " $ Local_string_v3) $ "  ~  ") $ RemainingTimeMsg) @ (TwoDigitString(Local_int_v1))) $ ":") $ (TwoDigitString(Local_int_v2)), true);
            }            
        }
        else
        {
            Local_int_v2 = int(Level.TimeSeconds);
            Local_int_v1 = Local_int_v2 / 60;
            Local_int_v0 = Local_int_v1 / 60;
            Local_int_v2 = Local_int_v2 - (Local_int_v1 * 60);
            Local_int_v1 = Local_int_v1 - (Local_int_v0 * 60);
            if(Local_int_v2 < 10)
            {
                Local_string_v2 = "0" $ string(Local_int_v2);                
            }
            else
            {
                Local_string_v2 = string(Local_int_v2);
            }
            if(Local_int_v1 < 10)
            {
                Local_string_v1 = "0" $ string(Local_int_v1);                
            }
            else
            {
                Local_string_v1 = string(Local_int_v1);
            }
            if(Local_int_v0 < 10)
            {
                Local_string_v0 = "0" $ string(Local_int_v0);                
            }
            else
            {
                Local_string_v0 = string(Local_int_v0);
            }
            Canvas.DrawText(((((((Local_string_v3 $ "   -   ") $ ElapsedTimeMsg) $ Local_string_v0) $ ":") $ Local_string_v1) $ ":") $ Local_string_v2, true);
        }
    }
    Canvas.bCenter = true;
    Canvas.StrLen("Test", XL, YL);
    Canvas.SetPos(0.0000000, (Canvas.ClipY * 0.7500000) - (YL * float(4)));
    Canvas.Font = Font'Engine.RuneBig';
    Canvas.DrawColor = RedColor;
    if(Local_PlayerPawn_v0.GameReplicationInfo.GameEndedComments != "")
    {
        Canvas.DrawText((ContinueMsg @ Local_PlayerPawn_v0.GameReplicationInfo.GameEndedComments) @ ContinueTrailer, true);        
    }
    else
    {
        if((Local_PlayerPawn_v0 != none) && Local_PlayerPawn_v0.Health <= 0)
        {
            Local_ArenaGameReplicationInfo_v1 = ArenaGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo);
            if((Local_ArenaGameReplicationInfo_v1 != none) && Local_ArenaGameReplicationInfo_v1.bInMatch)
            {
                if((int(Local_PlayerPawn_v0.PlayerReplicationInfo.Team) == 0) || int(Local_PlayerPawn_v0.PlayerReplicationInfo.Team) == 1)
                {
                    Canvas.DrawText(InMatchMsg, true);
                    Canvas.bCenter = false;
                    return;
                }
            }
            Canvas.DrawText(RestartMsg, true);            
        }
        else
        {
            CurMatch = ArenaGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo).CurMatch;
            Local_int_v0 = ArenaGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo).fraglimit;
            if(Local_int_v0 > 0)
            {
                Canvas.SetPos(0.0000000, (Canvas.ClipY * 0.9000000) - YL);
                Canvas.Font = Font'Engine.MedFont';
                Canvas.DrawColor = GoldColor;
                Text = "Fraglimit: 15";
                Canvas.DrawText(Text, true);
            }
        }
    }
    Canvas.bCenter = false;
    return;
}

defaultproperties
{
    ChampionString="Arena Champion"
    CurrentMatch="Current Match"
    QueueText="Position"
    VsString=" vs. "
    InMatchMsg="PLEASE WAIT UNTIL MATCH IS FINISHED"
    ServerText=" Server"
    XOnXText=" on "
    ChampionsText="Champions"
    ChallengersText="Challengers"
    MatchText="Match "
    StatusText="Status"
    Col_v1941=(R=255,G=81,B=81,A=0)
    Col_v1943=(R=0,G=128,B=255,A=0)
    Col_v1944=(R=138,G=138,B=0,A=0)
    Col_v1945=(R=204,G=204,B=0,A=0)
    TXR_v613=Texture'coadminz7.Icons.TrophyThrows'
    titlecolor=(R=255,G=255,B=85,A=0)
    Col_v365=(R=45,G=97,B=155,A=0)
    AdminColor=(R=85,G=255,B=85,A=0)
    EmailColor=(R=179,G=0,B=179,A=0)
    Col_v610=(R=255,G=255,B=85,A=0)
    MOTD1Color=(R=45,G=97,B=155,A=0)
    MOTD2Color=(R=210,G=19,B=175,A=0)
    MOTD3Color=(R=110,G=197,B=55,A=0)
    MOTD4Color=(R=21,G=197,B=155,A=0)
    BlueColor=(R=32,G=160,B=230,A=0)
    Seperator=Texture'coadminz7.Icons.z_seperator'
}