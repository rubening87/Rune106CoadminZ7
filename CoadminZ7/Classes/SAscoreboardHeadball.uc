class SAscoreboardHeadball extends saScoreboardTeam
    config;

var localized string NoLimbsScore;
var localized string LimbsScore;
var localized string ScoreText;
var localized string DecapitateText;
var localized string DecapitatedText;

function DrawHeader(Canvas Canvas)
{
    local GameReplicationInfo Local_GameReplicationInfo_v0;
    local float XL, YL, Local_float_v0;
    local PlayerPawn Local_PlayerPawn_v0;
    local PlayerReplicationInfo Local_PlayerReplicationInfo_v0;

    Canvas.DrawColor = GreenColor;
    Local_PlayerPawn_v0 = PlayerPawn(Owner);
    Local_PlayerReplicationInfo_v0 = PlayerPawn(Owner).PlayerReplicationInfo;
    AdminColor = zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).AdminColor;
    EmailColor = zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).EmailColor;
    MOTD1Color = zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).MOTD1Color;
    MOTD2Color = zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).MOTD2Color;
    MOTD3Color = zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).MOTD3Color;
    titlecolor = zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).titlecolor;
    MOTD4Color = zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).MOTD4Color;
    SeperatorColor = zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).SeperatorColor;
    if((Local_PlayerPawn_v0.myHUD != none) && CAZCons2 == none)
    {
        if(zHUD(Local_PlayerPawn_v0.myHUD) != none)
        {
            CAZCons2 = zHeadballHUD(Local_PlayerPawn_v0.myHUD).CAZCons1;
        }
    }
    Canvas.StrLen("TEST", XL, YL);
    if(zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).B_v5369)
    {
        Local_float_v0 = ((8.0000000 * YL) + float(GetChatOffset())) - YL;        
    }
    else
    {
        Local_float_v0 = (8.0000000 * YL) + float(GetChatOffset());
    }
    Canvas.DrawColor = zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).Col_v5373;
    if(Canvas.ClipX > float(500))
    {
        Local_GameReplicationInfo_v0 = Local_PlayerPawn_v0.GameReplicationInfo;
        Canvas.SetPos(0.1000000 * Canvas.ClipX, Local_float_v0);
        Canvas.DrawText(MapTitleMsg $ Level.Title, true);
        Local_float_v0 += YL;
        Canvas.SetPos(0.1000000 * Canvas.ClipX, Local_float_v0);
        Canvas.DrawText("Author: " $ Level.Author, true);
        Local_float_v0 += YL;
        if(Level.IdealPlayerCount != "")
        {
            Canvas.SetPos(0.1000000 * Canvas.ClipX, Local_float_v0);
            Canvas.DrawText(IdealPlayerCountMsg $ Level.IdealPlayerCount, true);
            Local_float_v0 += YL;
        }
        if(zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).B_v5369)
        {
            Canvas.SetPos(0.1000000 * Canvas.ClipX, Local_float_v0);
            Canvas.DrawText("Password protected", true);
            Local_float_v0 += YL;
        }
        Local_float_v0 = (8.0000000 * YL) + float(GetChatOffset());
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
            Canvas.SetPos(Canvas.ClipX * 0.0000000, Local_float_v0);
            if(zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).bshowshadow)
            {
                Canvas.SetPos((Canvas.ClipX * 0.0000000) + float(5), (Local_float_v0 - (float(5 / 900) * Canvas.ClipY)) - float(20));
                Canvas.DrawColor.R = 0;
                Canvas.DrawColor.G = 0;
                Canvas.DrawColor.B = 0;
                Canvas.DrawText(Local_GameReplicationInfo_v0.ServerName, false);
            }
            Canvas.DrawColor = zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).Col_v5372;
            Canvas.SetPos(Canvas.ClipX * 0.0000000, (Local_float_v0 - (float(7 / 900) * Canvas.ClipY)) - float(20));
            Canvas.DrawText(Local_GameReplicationInfo_v0.ServerName, false);
            Canvas.bCenter = false;
            Canvas.SetPos(0.1000000 * Canvas.ClipX, Local_float_v0);
            Canvas.DrawColor = zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).Col_v5373;
            if(MyFonts != none)
            {
                Canvas.Font = MyFonts.GetStaticMedFont();                
            }
            else
            {
                Canvas.Font = RegFont;
            }
        }
        Canvas.DrawTextRightJustify(GameTypeMsg $ Local_GameReplicationInfo_v0.GameName, int(0.9000000 * Canvas.ClipX), int(Local_float_v0));
        Local_float_v0 += YL;
        Canvas.DrawTextRightJustify("Next map: " $ zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).STR_v3845, int(0.9000000 * Canvas.ClipX), int(Local_float_v0));
        Local_float_v0 += YL;
        Canvas.DrawTextRightJustify(((("Current players: " $ string(Local_GameReplicationInfo_v0.NumPlayers)) $ " / ") $ string(zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).MaxPlayers)) $ NumPlayersMsg, int(0.9000000 * Canvas.ClipX), int(Local_float_v0));
        Local_float_v0 += YL;
        Canvas.DrawColor = GreenColor;
        Canvas.SetPos(0.0000000, Local_float_v0);
    }
    return;
}

function ShowScores(Canvas Canvas)
{
    local PlayerReplicationInfo Local_PlayerReplicationInfo_v0;
    local int Local_int_v0, Local_int_v1, i, Local_int_v0;
    local float XL, YL, Local_float_v0, Local_float_v1;
    local int Local_int_v3;
    local bool Local_bool_v0;

    if(MyFonts != none)
    {
        Canvas.Font = MyFonts.GetStaticMedFont();        
    }
    else
    {
        Canvas.Font = RegFont;
    }
    Canvas.DrawColor = WhiteColor;
    Canvas.StrLen("TEST", XL, YL);
    DrawHeader(Canvas);
    DrawTableHeadings(Canvas);
    Local_int_v3 = 0;
    Local_int_v0 = 0;
    J0x94:

    if(Local_int_v0 < 5)
    {
        OrderedTeams[Local_int_v0] = none;
        Local_int_v0++;
        // [Loop Continue]
        goto J0x94;
    }
    i = 0;
    J0xBE:

    if(i < 32)
    {
        Local_PlayerReplicationInfo_v0 = PlayerPawn(Owner).GameReplicationInfo.PRIArray[i];
        if((Local_PlayerReplicationInfo_v0 != none) && !Local_PlayerReplicationInfo_v0.bIsSpectator || Local_PlayerReplicationInfo_v0.bWaitingPlayer)
        {
            Local_int_v0++;
            if(int(Local_PlayerReplicationInfo_v0.Team) >= 4)
            {
                // [Explicit Continue]
                goto J0x20D;
            }
            Local_bool_v0 = false;
            Local_int_v0 = 0;
            J0x156:

            if(Local_int_v0 < 4)
            {
                if((OrderedTeams[Local_int_v0] != none) && OrderedTeams[Local_int_v0].TeamIndex == int(Local_PlayerReplicationInfo_v0.Team))
                {
                    Local_bool_v0 = true;
                }
                Local_int_v0++;
                // [Loop Continue]
                goto J0x156;
            }
            if(!Local_bool_v0)
            {
                OrderedTeams[Local_int_v3] = zHeadBallGameReplicationInfo(PlayerPawn(Owner).GameReplicationInfo).Teams[int(Local_PlayerReplicationInfo_v0.Team)];
                Local_int_v3++;
                if(Local_int_v3 == 4)
                {
                    // [Explicit Break]
                    goto J0x217;
                }
            }
        }
        J0x20D:

        i++;
        // [Loop Continue]
        goto J0xBE;
    }
    J0x217:

    SortTeams(Local_int_v3);
    Local_float_v1 = Canvas.CurY;
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
        Local_int_v0 = int(FMin(float(Local_int_v0), ((Canvas.ClipY - Local_float_v1) / YL) - float(1)));
    }
    DrawBackground(Canvas, int(0.1000000 * Canvas.ClipX), INT_v5639, int(0.8000000 * Canvas.ClipX), INT_v5640 - INT_v5639);
    Local_float_v0 = Local_float_v1;
    Local_int_v0 = 0;
    J0x2FC:

    if(Local_int_v0 < Local_int_v3)
    {
        Local_int_v1 = 0;
        i = 0;
        J0x319:

        if(i < 32)
        {
            Ordered[i] = none;
            i++;
            // [Loop Continue]
            goto J0x319;
        }
        i = 0;
        J0x343:

        if(i < 32)
        {
            Local_PlayerReplicationInfo_v0 = PlayerPawn(Owner).GameReplicationInfo.PRIArray[i];
            if((Local_PlayerReplicationInfo_v0 != none) && !Local_PlayerReplicationInfo_v0.bIsSpectator || Local_PlayerReplicationInfo_v0.bWaitingPlayer)
            {
                if(int(Local_PlayerReplicationInfo_v0.Team) == OrderedTeams[Local_int_v0].TeamIndex)
                {
                    Ordered[Local_int_v1] = Local_PlayerReplicationInfo_v0;
                    Local_int_v1++;
                    if(Local_int_v1 == 32)
                    {
                        // [Explicit Break]
                        goto J0x405;
                    }
                }
            }
            i++;
            // [Loop Continue]
            goto J0x343;
        }
        J0x405:

        SortScores(Local_int_v1);
        if(Local_int_v1 > 0)
        {
            DrawTeamInfo(Canvas, OrderedTeams[Local_int_v0], 0.0000000, Local_float_v1);
            i = 0;
            J0x442:

            if(i < Local_int_v1)
            {
                Local_float_v0 = Local_float_v1 + (float(i) * YL);
                DrawPlayerInfo(Canvas, Ordered[i], 0.0000000, Local_float_v0);
                i++;
                // [Loop Continue]
                goto J0x442;
            }
            Local_float_v1 = Local_float_v0 + YL;
        }
        Local_int_v0++;
        // [Loop Continue]
        goto J0x2FC;
    }
    Local_int_v1 = 0;
    i = 0;
    J0x4BF:

    if(i < 32)
    {
        Ordered[i] = none;
        i++;
        // [Loop Continue]
        goto J0x4BF;
    }
    i = 0;
    J0x4E9:

    if(i < 32)
    {
        if(PlayerPawn(Owner).GameReplicationInfo.PRIArray[i] != none)
        {
            Local_PlayerReplicationInfo_v0 = PlayerPawn(Owner).GameReplicationInfo.PRIArray[i];
            if((int(Local_PlayerReplicationInfo_v0.Team) >= 4) && !Local_PlayerReplicationInfo_v0.bIsSpectator || Local_PlayerReplicationInfo_v0.bWaitingPlayer)
            {
                Ordered[Local_int_v1] = Local_PlayerReplicationInfo_v0;
                Local_int_v1++;
                if(Local_int_v1 == 32)
                {
                    // [Explicit Break]
                    goto J0x5B6;
                }
            }
        }
        i++;
        // [Loop Continue]
        goto J0x4E9;
    }
    J0x5B6:

    SortScores(Local_int_v1);
    if(Local_int_v1 > 0)
    {
        i = 0;
        J0x5D3:

        if(i < Local_int_v1)
        {
            Local_float_v0 = Local_float_v1 + (float(i) * YL);
            DrawPlayerInfo(Canvas, Ordered[i], 0.0000000, Local_float_v0);
            i++;
            // [Loop Continue]
            goto J0x5D3;
        }
        Local_float_v1 = Local_float_v0 + YL;
    }
    Canvas.StrLen("TEST", XL, YL);
    Local_float_v0 += YL;
    Canvas.SetPos(0.0000000, Local_float_v0);
    DrawTrailer(Canvas);
    Canvas.DrawColor = WhiteColor;
    return;
}

function DrawTableHeadings(Canvas Canvas)
{
    local float XL, YL, Local_float_v0;
    local PlayerReplicationInfo Local_PlayerReplicationInfo_v0;

    Local_PlayerReplicationInfo_v0 = PlayerPawn(Owner).PlayerReplicationInfo;
    HeadingsColor = zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).HeadingsColor;
    Canvas.DrawColor = HeadingsColor;
    Canvas.StrLen("00", XL, YL);
    Local_float_v0 = Canvas.CurY + float(10);
    Canvas.SetPos(Canvas.ClipX * 0.1300000, Local_float_v0);
    Canvas.DrawText(" ID", false);
    Canvas.SetPos(Canvas.ClipX * 0.1800000, Local_float_v0);
    Canvas.DrawText(NameText, false);
    Canvas.SetPos(Canvas.ClipX * 0.5000000, Local_float_v0);
    Canvas.DrawText(FragsText, false);
    Canvas.SetPos(Canvas.ClipX * 0.5700000, Local_float_v0);
    Canvas.DrawText(DecapitatedText, false);
    Canvas.SetPos(Canvas.ClipX * 0.6400000, Local_float_v0);
    Canvas.DrawText("K/D", false);
    Canvas.SetPos(Canvas.ClipX * 0.8000000, Local_float_v0);
    Canvas.DrawText(AwardsText, false);
    if(Canvas.ClipX > float(512))
    {
        Canvas.SetPos(Canvas.ClipX * 0.6900000, Local_float_v0);
        Canvas.DrawText(PingText, false);
        Canvas.SetPos(Canvas.ClipX * 0.7400000, Local_float_v0);
        Canvas.DrawText("Time", false);
    }
    Local_float_v0 += (YL * 1.2500000);
    Canvas.DrawColor = SeperatorColor;
    Canvas.SetPos(Canvas.ClipX * 0.1000000, Local_float_v0);
    INT_v5639 = int(Local_float_v0 + float(4));
    Canvas.Style = 3;
    Canvas.DrawTile(Seperator, Canvas.ClipX * 0.8000000, YL * 0.5000000, 0.0000000, 0.0000000, float(Seperator.USize), float(Seperator.VSize));
    Canvas.Style = 1;
    Local_float_v0 += (YL * 0.7500000);
    Canvas.SetPos(Canvas.ClipX * 0.1000000, Local_float_v0);
    return;
}

defaultproperties
{
    NoLimbsScore=" (Limbs Disabled)"
    LimbsScore=" (Limbs Enabled)"
    ScoreText="Points"
    DecapitateText="Decapitations"
    DecapitatedText="Beheaded"
    FragsText="Points"
}