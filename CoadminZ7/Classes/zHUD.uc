class zHUD extends RuneHUD
    config(User);

const UNUSEDConst0 = 0x0001;
const UNUSEDConst1 = 0x0002;
const UNUSEDConst2 = 0x0004;
const eqL_vxv_5205 = 0x0008;
const eqL_vxv_5206 = 0x0010;
const eq_L_vxv_5207 = 0x0020;
const eqL_vxv_5208 = 0x0040;
const eqL_vxv_5209 = 0x0100;
const eqL_vxv_5210 = 0x0200;
const eqL_vxv_5211 = 0x0400;
const eqL_vxv_5212 = 0x0800;
const eqL_vxv_5213 = 0x1000;
const eqL_vxv_5214 = 0x2000;
const eq_vxv_5215 = 0x4000;

var Font RegFont;
var Font BigFont;
var Font SmallFont;
var Color GreenColor;
var Color WhiteColor;
var Color GoldColor;
var Color Col_v1103;
var Color RedColor;
var Color Col_v1194;
var Color LightCyanColor;
var Color LightGreenColor;
var Color VioletColor;
var Color BlueColor;
var Color BackgroundColor;
var Color Col_v365;
var Color AdminColor;
var Color MOTD1Color;
var Texture Seperator;
var Texture Background;
var() float BackgroundAlpha;
var zPlayerReplicationInfo Ordered[32];
var TeamInfo OrderedTeams[5];
var HUDLocalizedMessage UNK_v5191;
var HUDLocalizedMessage UNK_v5285;
var int INT_v5192;
var bool B_v5193;
var config bool bOriginalScale;
var config float NewScale;
var float FLT_v5194;
var Pawn Pawn;
var ZRunePlayer ZRunePlayer;
var bool B_v5216;
var int INT_v5286;
var int INT_v5217;
var int INT_v5218;
var bool B_v5220;
var bool B_v5219;
var CAZConsole CAZCons1;
var int INT_v5222;
var HUDLocalizedMessage UNK_v5223;
var Font Fnt_v5287;
var bool B_v5200;
var() private float eqL_vxv_5201;
var config bool testfrag;
var config bool showskull;
var config int fragAX;
var config int fragBX;
var config int fragCX;
var config int fragAY;
var config int fragBY;
var config int fragCY;
var config int skullX;
var config int skullY;
var config float skullScale;
var config string FragText;
var config string fragtext2;
var config string fragtext3;

function ReplaceString(out string Text, string Parm_string_0, string Parm_string_1)
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

simulated function DrawRemainingTime(Canvas Canvas, int X, int Y)
{
    local int Local_int_v1, Local_int_v0, Local_int_v1, Local_int_v2;

    if((PlayerPawn(Owner) == none) || PlayerPawn(Owner).GameReplicationInfo == none)
    {
        return;
    }
    Local_int_v1 = PlayerPawn(Owner).GameReplicationInfo.RemainingTime;
    Local_int_v0 = Local_int_v1 / 3600;
    Local_int_v1 = Local_int_v1 / 60;
    Local_int_v2 = int(float(Local_int_v1) % float(60));
    if(MyFonts != none)
    {
        Canvas.Font = MyFonts.GetStaticLargeFont();        
    }
    else
    {
        Canvas.Font = Canvas.LargeFont;
    }
    Canvas.SetPos(float(X), float(Y));
    if(Local_int_v1 <= 30)
    {
        Canvas.Setcolor(255.0000000, 0.0000000, 0.0000000);
    }
    Canvas.DrawText(((TwoDigitString(Local_int_v1)) $ ":") $ (TwoDigitString(Local_int_v2)), true);
    Canvas.Setcolor(255.0000000, 255.0000000, 255.0000000);
    return;
}

function Color MakeColor(byte Red, byte Green, byte Blue, optional byte Alpha)
{
    local Color Local_Color_v0;

    Local_Color_v0.R = Red;
    Local_Color_v0.G = Green;
    Local_Color_v0.B = Blue;
    Local_Color_v0.A = Alpha;
    return Local_Color_v0;
    return;
}

simulated function DrawFragCount(Canvas Canvas, int X, int Y)
{
    local float Local_float_v0, Local_float_v1;
    local int Score, fraglimit;
    local string Text;
    local PlayerPawn Local_PlayerPawn_v0;
    local bool Local_bool_v0;

    Local_PlayerPawn_v0 = PlayerPawn(Owner);
    if(!Local_PlayerPawn_v0.GameReplicationInfo.bTeamGame)
    {
        eqpct_vxv_1181(Canvas, X, Y);        
    }
    else
    {
        if(Canvas.ClipX > float(900))
        {
            Local_bool_v0 = false;            
        }
        else
        {
            Local_bool_v0 = true;
        }
        if(showskull)
        {
            Canvas.SetPos(float((X - 100) + skullX), float(Y + skullY));
            if(Local_bool_v0)
            {
                Canvas.DrawIcon(Texture'RuneI.TrophyHeads', 0.7500000);                
            }
            else
            {
                Canvas.DrawIcon(Texture'RuneI.TrophyHeads', skullScale);
            }
        }
        if(Local_PlayerPawn_v0.PlayerReplicationInfo == none)
        {
            return;
        }
        Score = int(Local_PlayerPawn_v0.PlayerReplicationInfo.Score);
        if((RuneGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo) != none) && RuneGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo).fraglimit > 0)
        {
            fraglimit = RuneGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo).fraglimit;
            if(Score == (fraglimit - 1))
            {
                Canvas.Setcolor(255.0000000, 0.0000000, 0.0000000);
            }
            Text = ((string(Score) $ "/") $ string(fraglimit)) $ " ";            
        }
        else
        {
            Text = string(Score) $ " ";
        }
        if(Local_bool_v0)
        {
            Canvas.Font = Font'CAZResources.Tahoma20';            
        }
        else
        {
            Canvas.Font = Font'CAZResources.Tahoma30';
        }
        Canvas.DrawColor = eq_vxv_233(int(Local_PlayerPawn_v0.PlayerReplicationInfo.Team));
        Canvas.DrawTextRightJustify(string(int(zGameReplicationInfo(PlayerPawn(Owner).GameReplicationInfo).eqs_vxv_5342[int(Local_PlayerPawn_v0.PlayerReplicationInfo.Team)].Score)), X + fragAX, Y + fragAY);
        if(Local_bool_v0)
        {
            Canvas.Font = Font'CAZResources.Tahoma20';            
        }
        else
        {
            Canvas.Font = Font'CAZResources.Tahoma30';
        }
        Canvas.DrawColor = MakeColor(byte(255), byte(255), byte(255));
        Canvas.DrawTextRightJustify(string(Score), X + fragCX, Y + fragCY);
        Canvas.Setcolor(255.0000000, 255.0000000, 255.0000000);
    }
    return;
}

simulated function eqpct_vxv_1181(Canvas Canvas, int X, int Y)
{
    local float Local_float_v0, Local_float_v1;
    local int Score, fraglimit;
    local string Text;
    local PlayerPawn Local_PlayerPawn_v0;

    Local_PlayerPawn_v0 = PlayerPawn(Owner);
    if(Local_PlayerPawn_v0.PlayerReplicationInfo == none)
    {
        return;
    }
    Score = int(Local_PlayerPawn_v0.PlayerReplicationInfo.Score);
    if((RuneGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo) != none) && RuneGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo).fraglimit > 0)
    {
        fraglimit = RuneGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo).fraglimit;
        if(Score == (fraglimit - 1))
        {
            Canvas.Setcolor(255.0000000, 0.0000000, 0.0000000);
        }
        Text = ((string(Score) $ "/") $ string(fraglimit)) $ " ";        
    }
    else
    {
        Text = string(Score) $ " ";
    }
    if(MyFonts != none)
    {
        Canvas.Font = MyFonts.GetStaticLargeFont();        
    }
    else
    {
        Canvas.Font = Canvas.LargeFont;
    }
    Canvas.Font = Font'CAZResources.Tahoma30';
    Canvas.DrawTextRightJustify(Text, X, Y);
    Canvas.Setcolor(255.0000000, 255.0000000, 255.0000000);
    return;
}

simulated function ClearMessagesOfType(name MsgType)
{
    local Class<LocalMessage> Local_Class<LocalMessage>_v0;
    local int i;

    super.ClearMessagesOfType(MsgType);
    Local_Class<LocalMessage>_v0 = DetermineClass(MsgType);
    if(Local_Class<LocalMessage>_v0 == none)
    {
        return;
    }
    i = 0;
    J0x30:

    if(i < INT_v5222)
    {
        if(eq_vxv_5223[i].Message == Local_Class<LocalMessage>_v0)
        {
            ClearMessage(eq_vxv_5223[i]);
        }
        i++;
        // [Loop Continue]
        goto J0x30;
    }
    return;
}

simulated function DrawMessages(Canvas Canvas)
{
    local int i, Local_int_v0, Local_int_v10;
    local float XL, YL, YPos, Local_float_v0;
    local string Message;

    if(CAZCons1 != none)
    {
        INT_v5222 = CAZCons1.cchatLines;        
    }
    else
    {
        INT_v5222 = 4;
    }
    if((CAZCons1 != none) && !CAZCons1.bCChat)
    {
        return;
    }
    i = 0;
    J0x54:

    if(i < INT_v5222)
    {
        if(eq_vxv_5223[i].Message != none)
        {
            if(eq_vxv_5223[i].RelatedPRI != none)
            {
                if((int(eq_vxv_5223[i].RelatedPRI.Team) == 4) && eq_vxv_5223[i].LifeTime == float(11))
                {
                    eq_vxv_5223[i].DrawColor.R = byte(255);
                    eq_vxv_5223[i].DrawColor.G = 0;
                    eq_vxv_5223[i].DrawColor.B = byte(255);
                }
            }
            if(eq_vxv_5223[i].Message.default.bFadeMessage && Level.bHighDetailMode)
            {
                Local_float_v0 = eq_vxv_5223[i].EndOfLife - Level.TimeSeconds;
                if(Local_float_v0 <= 0.0000000)
                {
                    // [Explicit Continue]
                    goto J0x9E7;
                }
            }
            if(!B_v5219)
            {
                if(ZRunePlayer(Owner).B_v4545)
                {
                    eq_vxv_5223[i].LifeTime = 9999.0000000;
                    eq_vxv_5223[i].EndOfLife = 9999.0000000;
                }
            }
            Local_int_v0++;
            if(CAZCons1.chatFont == 0)
            {
                if(MyFonts != none)
                {
                    Canvas.Font = MyFonts.GetStaticBigFont();                    
                }
                else
                {
                    Canvas.Font = Canvas.BigFont;
                }                
            }
            else
            {
                if(CAZCons1.chatFont == 1)
                {
                    Canvas.Font = Font'CAZResources.Palatino15';                    
                }
                else
                {
                    if(CAZCons1.chatFont == 2)
                    {
                        Canvas.Font = Font'CAZResources.Palatino20';                        
                    }
                    else
                    {
                        if(CAZCons1.chatFont == 3)
                        {
                            Canvas.Font = Font'CAZResources.Palatino25';                            
                        }
                        else
                        {
                            if(CAZCons1.chatFont == 4)
                            {
                                Canvas.Font = Font'CAZResources.Palatino35';                                
                            }
                            else
                            {
                                if(CAZCons1.chatFont == 5)
                                {
                                    Canvas.Font = Font'CAZResources.Tahoma15';                                    
                                }
                                else
                                {
                                    if(CAZCons1.chatFont == 6)
                                    {
                                        Canvas.Font = Font'CAZResources.Tahoma20';                                        
                                    }
                                    else
                                    {
                                        if(CAZCons1.chatFont == 7)
                                        {
                                            Canvas.Font = Font'CAZResources.Tahoma25';                                            
                                        }
                                        else
                                        {
                                            if(CAZCons1.chatFont == 8)
                                            {
                                                Canvas.Font = Font'CAZResources.Tahoma30';                                                
                                            }
                                            else
                                            {
                                                if(CAZCons1.chatFont == 9)
                                                {
                                                    Canvas.Font = Font'CAZResources.TahomaB10';                                                    
                                                }
                                                else
                                                {
                                                    if(CAZCons1.chatFont == 10)
                                                    {
                                                        Canvas.Font = Font'CAZResources.TahomaB30';                                                        
                                                    }
                                                    else
                                                    {
                                                        if(CAZCons1.chatFont == 11)
                                                        {
                                                            Canvas.Font = Font'CAZResources.ArialBold';                                                            
                                                        }
                                                        else
                                                        {
                                                            
                                                            if(CAZCons1.chatFont == 11)
                                                            {
                                                                Canvas.Font = Font'CAZResources.Verdana';                                                                
                                                            }
                                                            else
                                                            {
                                                                if(CAZCons1.chatFont == 12)
                                                                {
                                                                    if(Fnt_v5287 == none)
                                                                    {
                                                                        Fnt_v5287 = Font(DynamicLoadObject("derp.derp", Class'Engine.Font'));
                                                                    }
                                                                    Canvas.Font = Fnt_v5287;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if(!B_v5219)
            {
                if(!ZRunePlayer(Owner).B_v4544)
                {
                    INT_v5217 = 0;
                    if(eq_vxv_5223[i].Message.default.bCenter)
                    {
                        Canvas.bCenter = true;
                    }                    
                }
                else
                {
                    INT_v5217 = 50;
                }                
            }
            else
            {
                if(eq_vxv_5223[i].Message.default.bCenter)
                {
                    Canvas.bCenter = true;
                }
                INT_v5217 = 0;
            }
            Canvas.StrLen("TEST", XL, YL);
            if(bResChanged || eq_vxv_5223[i].XL == float(0))
            {
                if(eq_vxv_5223[i].Message.default.bComplexString)
                {
                    Canvas.StrLen(eq_vxv_5223[i].Message.static.AssembleString(self, eq_vxv_5223[i].Switch, eq_vxv_5223[i].RelatedPRI, eq_vxv_5223[i].StringMessage), eq_vxv_5223[i].XL, eq_vxv_5223[i].YL);                    
                }
                else
                {
                    Canvas.StrLen(eq_vxv_5223[i].StringMessage, eq_vxv_5223[i].XL, eq_vxv_5223[i].YL);
                }
                
                if(eq_vxv_5223[i].Message.default.bComplexString)
                {
                    eq_vxv_5223[i].numLines = 1;                    
                }
                else
                {
                    eq_vxv_5223[i].numLines = Max(1, int(eq_vxv_5223[i].YL / YL));
                }
            }
            eq_vxv_5223[i].YPos = eq_vxv_5223[i].Message.static.GetOffset(eq_vxv_5223[i].Switch, eq_vxv_5223[i].YL, Canvas.ClipY);
            if(!eq_vxv_5223[i].Message.default.bComplexString)
            {
                if(eq_vxv_5223[i].YPos == float(0))
                {
                    Canvas.SetPos(0.0000000, (2.0000000 + (YL * YPos)) + float(INT_v5217));
                    YPos += float(eq_vxv_5223[i].numLines);                    
                }
                else
                {
                    if(INT_v5217 == 0)
                    {
                        Canvas.SetPos(0.0000000, eq_vxv_5223[i].YPos);                        
                    }
                    else
                    {
                        Canvas.SetPos(0.0000000, (2.0000000 + (YL * YPos)) + float(INT_v5217));
                        YPos += float(eq_vxv_5223[i].numLines);
                    }
                }
            }
            if(eq_vxv_5223[i].Message.default.bComplexString)
            {
                eq_vxv_5223[i].Message.static.RenderComplexMessage(Canvas, eq_vxv_5223[i].XL, YL, eq_vxv_5223[i].StringMessage, i, eq_vxv_5223[i].RelatedPRI, none, eq_vxv_5223[i].OptionalObject);                
            }
            else
            {
                if(eq_vxv_5223[i].Message.default.bFadeMessage && Level.bHighDetailMode)
                {
                    Canvas.Style = 3;
                    if(!B_v5219)
                    {
                        if(ZRunePlayer(Owner).B_v4543)
                        {
                            Canvas.DrawColor = *(eq_vxv_5223[i].DrawColor, float(1));                            
                        }
                        else
                        {
                            Canvas.DrawColor = *(eq_vxv_5223[i].DrawColor, Local_float_v0 / eq_vxv_5223[i].LifeTime);
                        }                        
                    }
                    else
                    {
                        Canvas.DrawColor = *(eq_vxv_5223[i].DrawColor, Local_float_v0 / eq_vxv_5223[i].LifeTime);
                    }                    
                }
                else
                {
                    Canvas.DrawColor = eq_vxv_5223[i].Message.default.DrawColor;
                }
                Canvas.DrawText(eq_vxv_5223[i].StringMessage, false);
            }
            Canvas.bCenter = false;
            Canvas.Style = 1;
        }
        J0x9E7:

        i++;
        // [Loop Continue]
        goto J0x54;
    }
    return;
}

function string GetFormattedTimeString()
{
    local string Local_string_v0;
    local PlayerPawn Local_PlayerPawn_v0;

    Local_PlayerPawn_v0 = PlayerPawn(Owner);
    Local_string_v0 = "";
    if(Owner.Level.Hour < 10)
    {
        Local_string_v0 = "0";
    }
    Local_string_v0 = (Local_string_v0 $ string(Local_PlayerPawn_v0.Level.Hour)) $ ":";
    if(Owner.Level.Minute < 10)
    {
        Local_string_v0 = Local_string_v0 $ "0";
    }
    Local_string_v0 = (Local_string_v0 $ string(Local_PlayerPawn_v0.Level.Minute)) $ ":";
    if(Owner.Level.Second < 10)
    {
        Local_string_v0 = Local_string_v0 $ "0";
    }
    Local_string_v0 = Local_string_v0 $ string(Local_PlayerPawn_v0.Level.Second);
    return Local_string_v0;
    return;
}

simulated function eqpct_vxv_1180(Canvas Canvas)
{
    local PlayerPawn Local_PlayerPawn_v0;
    local Texture Local_Texture_v0;
    local float Local_float_v0, Local_float_v1;

    Local_PlayerPawn_v0 = PlayerPawn(Owner);
    if((Local_PlayerPawn_v0 == none) || Local_PlayerPawn_v0.RendMap == 0)
    {
        return;
    }
    if(HudMode == 0)
    {
        DrawMessages(Canvas);
        DrawRuneMessages(Canvas);
        Canvas.Setcolor(255.0000000, 255.0000000, 255.0000000);
        if(Local_PlayerPawn_v0.ProgressTimeOut > Level.TimeSeconds)
        {
            DisplayProgressMessage(Canvas);
        }
        Canvas.Setcolor(255.0000000, 255.0000000, 255.0000000);
        Canvas.Style = 1;
        Canvas.DrawColor.R = byte(255);
        Canvas.DrawColor.G = byte(255);
        Canvas.DrawColor.B = byte(255);
        return;
    }
    DefaultCanvas(Canvas);
    bResChanged = Canvas.ClipX != float(OldClipX);
    OldClipX = int(Canvas.ClipX);
    if(!B_v5219 && ZRunePlayer(Owner) != none)
    {
        if(zPlayerReplicationInfo(PlayerPawn(Owner).PlayerReplicationInfo).B_v5381)
        {
            HudScale = (Canvas.ClipX / float(640)) + 0.5000000;            
        }
        else
        {
            if((CAZCons1.cHUDScale != (Canvas.ClipX / float(640))) && CAZCons1.cHUDScale != 0.0000000)
            {
                HudScale = CAZCons1.cHUDScale;                
            }
            else
            {
                HudScale = Canvas.ClipX / float(640);
            }
        }
        if(ZRunePlayer(Owner).B_v4541 || ZRunePlayer(Owner).B_v4540)
        {
            B_v5200 = true;            
        }
        else
        {
            B_v5200 = false;
        }        
    }
    else
    {
        HudScale = Canvas.ClipX / float(640);
    }
    if(!Owner.IsA('Spectator'))
    {
        bHealth = true;
        if(Local_PlayerPawn_v0.bBloodLust)
        {
            bBloodLust = true;            
        }
        else
        {
            bBloodLust = false;
        }
        if((Local_PlayerPawn_v0.Weapon != none) || Local_PlayerPawn_v0.RunePower > 0)
        {
            bPower = true;
        }
        bBloodLust = true;
        if(Local_PlayerPawn_v0.Shield != none)
        {
            bShield = true;            
        }
        else
        {
            bShield = false;
        }
        if(Local_PlayerPawn_v0.Region.Zone.bWaterZone)
        {
            bAir = true;            
        }
        else
        {
            bAir = false;
        }
        SetHudFade(Canvas, FadeHealth);
        if(!zPlayerReplicationInfo(PlayerPawn(Owner).PlayerReplicationInfo).B_v5381)
        {
            DrawHealth(Canvas, int(float(4) * HudScale), int(Canvas.ClipY - (float(4) * HudScale)));
        }
        if((FadeBloodlust > float(0)) || zPlayerReplicationInfo(PlayerPawn(Owner).PlayerReplicationInfo).B_v5381)
        {
            SetHudFade(Canvas, FadeBloodlust);
            if(zPlayerReplicationInfo(PlayerPawn(Owner).PlayerReplicationInfo).B_v5381)
            {
                DrawStrength(Canvas, int(Canvas.ClipX * 0.5000000), int(Canvas.ClipY - (float(4) * 1.2000000)));                
            }
            else
            {
                DrawStrength(Canvas, int(Canvas.ClipX * 0.5000000), int(Canvas.ClipY - (float(4) * HudScale)));
            }
        }
        if(FadePower > float(0))
        {
            SetHudFade(Canvas, FadePower);
            DrawPower(Canvas, int(Canvas.ClipX - (float(36) * HudScale)), int(Canvas.ClipY - (float(4) * HudScale)));
        }
        if(FadeShield > float(0))
        {
            SetHudFade(Canvas, FadeShield);
            if(Local_PlayerPawn_v0.RunePower > 0)
            {
                DrawShield(Canvas, int(Canvas.ClipX - (float(60) * HudScale)), int(Canvas.ClipY - (float(4) * HudScale)));                
            }
            else
            {
                DrawShield(Canvas, int(Canvas.ClipX - (float(18) * HudScale)), int(Canvas.ClipY - (float(4) * HudScale)));
            }
        }
        if(FadeAir > float(0))
        {
            SetHudFade(Canvas, FadeAir);
            DrawAir(Canvas, int(float(40) * HudScale), int(Canvas.ClipY - (float(4) * HudScale)));
        }
    }
    DrawMessages(Canvas);
    DrawRuneMessages(Canvas);
    Canvas.Style = 1;
    Canvas.DrawColor.R = byte(255);
    Canvas.DrawColor.G = byte(255);
    Canvas.DrawColor.B = byte(255);
    if(Local_PlayerPawn_v0.bShowScores)
    {
        if((Local_PlayerPawn_v0.Scoring == none) && Local_PlayerPawn_v0.ScoringType != none)
        {
            Local_PlayerPawn_v0.Scoring = Spawn(Local_PlayerPawn_v0.ScoringType, Local_PlayerPawn_v0);
        }
        if(Local_PlayerPawn_v0.Scoring != none)
        {
            Local_PlayerPawn_v0.Scoring.ShowScores(Canvas);
            return;
        }
    }
    DrawNetPlug(Canvas);
    if(bTimeDown || (Local_PlayerPawn_v0.GameReplicationInfo != none) && Local_PlayerPawn_v0.GameReplicationInfo.RemainingTime > 0)
    {
        bTimeDown = true;
        DrawRemainingTime(Canvas, 0, 0);
    }
    if(!Owner.IsA('Spectator'))
    {
        if((Level.Game == none) || Level.Game.bDeathMatch)
        {
            DrawFragCount(Canvas, int(Canvas.ClipX), 0);
        }
    }
    if(HUDMutator != none)
    {
        HUDMutator.PostRender(Canvas);
    }
    if(Local_PlayerPawn_v0.bShowMenu)
    {
        DisplayMenu(Canvas);
        return;
    }
    if(int(Level.NetMode) != int(NM_Standalone))
    {
        DrawTypingPlayers(Canvas);
    }
    Canvas.Setcolor(255.0000000, 255.0000000, 255.0000000);
    if(Local_PlayerPawn_v0.ProgressTimeOut > Level.TimeSeconds)
    {
        DisplayProgressMessage(Canvas);
    }
    Canvas.Setcolor(255.0000000, 255.0000000, 255.0000000);
    return;
}

simulated function DrawStrength(Canvas Canvas, int X, int Y)
{
    local Texture Local_Texture_v0, Local_Texture_v1;
    local Pawn LocalP0;
    local float Local_float_v0, Local_float_v2;

    LocalP0 = Pawn(Owner);
    if(LocalP0 == none)
    {
        return;
    }
    if((int(Owner.SkelMesh) == 24) || CAZCons1.bUseSarkHUD)
    {
        Local_Texture_v0 = Texture'RuneI.SarkBloodFull';
        Local_Texture_v1 = Texture'RuneI.SarkBloodEmpty';        
    }
    else
    {
        Local_Texture_v0 = Texture'RuneI.BloodFull';
        Local_Texture_v1 = Texture'RuneI.BloodEmpty';
    }
    Local_float_v0 = BloodScale * HudScale;
    X -= int((float(Local_Texture_v0.USize) * Local_float_v0) * 0.5000000);
    Y -= int(float(Local_Texture_v0.VSize) * Local_float_v0);
    Canvas.SetPos(float(X), float(Y));
    if(HudBloodlust == float(0))
    {
        Canvas.DrawIcon(Local_Texture_v1, Local_float_v0);        
    }
    else
    {
        if(HudBloodlust == float(100))
        {
            Canvas.DrawIcon(Local_Texture_v0, Local_float_v0);            
        }
        else
        {
            Local_float_v2 = HudBloodlust / float(100);
            Canvas.DrawTile(Local_Texture_v0, (float(Local_Texture_v0.USize) * Local_float_v0) * Local_float_v2, Local_float_v0 * float(Local_Texture_v0.VSize), 0.0000000, 0.0000000, float(Local_Texture_v0.USize) * Local_float_v2, float(Local_Texture_v0.VSize));
            Canvas.SetPos(float(X) + ((Local_float_v2 * Local_float_v0) * float(Local_Texture_v0.USize)), float(Y));
            Canvas.DrawTile(Local_Texture_v1, (float(Local_Texture_v1.USize) * Local_float_v0) - ((float(Local_Texture_v1.USize) * Local_float_v0) * Local_float_v2), float(Local_Texture_v1.VSize) * Local_float_v0, Local_float_v2 * float(Local_Texture_v1.USize), 0.0000000, float(Local_Texture_v1.USize) * (1.0000000 - Local_float_v2), float(Local_Texture_v1.VSize));
        }
    }
    return;
}

simulated function DrawAir(Canvas Canvas, int X, int Y)
{
    local Texture Local_Texture_v0, Local_Texture_v1, Local_Texture_v2;
    local float Local_float_v0, Local_float_v1;
    local Pawn LocalP0;
    local float Local_float_v0, Local_float_v2;

    LocalP0 = Pawn(Owner);
    if(LocalP0 == none)
    {
        return;
    }
    if((int(Owner.SkelMesh) == 24) || CAZCons1.bUseSarkHUD)
    {
        Local_Texture_v2 = Texture'RuneI.SarkAirIcon';
        Local_Texture_v0 = Texture'RuneI.SarkAirFull';
        Local_Texture_v1 = Texture'RuneI.SarkAirEmpty';        
    }
    else
    {
        Local_Texture_v2 = Texture'RuneI.AirIcon';
        Local_Texture_v0 = Texture'RuneI.AirFull';
        Local_Texture_v1 = Texture'RuneI.AirEmpty';
    }
    Local_float_v0 = HudScale * 0.5000000;
    Y -= int(float(Local_Texture_v2.VSize) * Local_float_v0);
    Canvas.SetPos(float(X), float(Y));
    Canvas.DrawIcon(Local_Texture_v2, Local_float_v0);
    Y -= int(float(Local_Texture_v0.VSize) * Local_float_v0);
    Canvas.SetPos(float(X), float(Y));
    if((HudAir == float(0)) || LocalP0.bDrowning)
    {
        Canvas.DrawIcon(Local_Texture_v1, Local_float_v0);        
    }
    else
    {
        if(HudAir >= LocalP0.UnderWaterTime)
        {
            Canvas.DrawIcon(Local_Texture_v0, Local_float_v0);            
        }
        else
        {
            Local_float_v2 = 1.0000000 - (HudAir / LocalP0.UnderWaterTime);
            Canvas.DrawTile(Local_Texture_v1, float(Local_Texture_v1.USize) * Local_float_v0, (Local_float_v2 * Local_float_v0) * float(Local_Texture_v1.VSize), 0.0000000, 0.0000000, float(Local_Texture_v1.USize), float(Local_Texture_v1.VSize) * Local_float_v2);
            Canvas.SetPos(float(X), float(Y) + ((Local_float_v2 * Local_float_v0) * float(Local_Texture_v1.VSize)));
            Canvas.DrawTile(Local_Texture_v0, float(Local_Texture_v1.USize) * Local_float_v0, (float(Local_Texture_v1.VSize) * Local_float_v0) - ((Local_float_v2 * Local_float_v0) * float(Local_Texture_v1.VSize)), 0.0000000, Local_float_v2 * float(Local_Texture_v1.VSize), float(Local_Texture_v1.USize), float(Local_Texture_v1.VSize) - (float(Local_Texture_v1.VSize) * Local_float_v2));
        }
    }
    return;
}

simulated function DrawShield(Canvas Canvas, int X, int Y)
{
    local Texture Local_Texture_v0, Local_Texture_v1, Local_Texture_v2;
    local float Local_float_v0, Local_float_v1;
    local Pawn LocalP0;
    local float Local_float_v0, Local_float_v2;

    if(PlayerPawn(Owner).ViewTarget != none)
    {
        LocalP0 = Pawn(PlayerPawn(Owner).ViewTarget);        
    }
    else
    {
        LocalP0 = Pawn(Owner);
    }
    if(LocalP0 == none)
    {
        return;
    }
    if(LocalP0.Shield == none)
    {
        return;
    }
    if((int(Owner.SkelMesh) == 24) || CAZCons1.bUseSarkHUD)
    {
        Local_Texture_v2 = Texture'RuneI.SarkShieldIcon';
        Local_Texture_v0 = Texture'RuneI.SarkShieldFull';
        Local_Texture_v1 = Texture'RuneI.SarkShieldEmpty';        
    }
    else
    {
        Local_Texture_v2 = Texture'RuneI.ShieldIcon';
        Local_Texture_v0 = Texture'RuneI.ShieldFull';
        Local_Texture_v1 = Texture'RuneI.ShieldEmpty';
    }
    Local_float_v0 = HudScale * 0.5000000;
    Y -= int(float(Local_Texture_v2.VSize) * Local_float_v0);
    Canvas.SetPos(float(X), float(Y));
    Canvas.DrawIcon(Local_Texture_v2, Local_float_v0);
    Y -= int(float(Local_Texture_v0.VSize) * Local_float_v0);
    Canvas.SetPos(float(X), float(Y));
    HudShield = float(Clamp(int(HudShield), 0, 100));
    if(HudShield == float(0))
    {
        Canvas.DrawIcon(Local_Texture_v1, Local_float_v0);        
    }
    else
    {
        if(HudShield == float(100))
        {
            Canvas.DrawIcon(Local_Texture_v0, Local_float_v0);            
        }
        else
        {
            Local_float_v2 = 1.0000000 - (HudShield / float(100));
            Canvas.DrawTile(Local_Texture_v1, float(Local_Texture_v1.USize) * Local_float_v0, (Local_float_v2 * Local_float_v0) * float(Local_Texture_v1.VSize), 0.0000000, 0.0000000, float(Local_Texture_v1.USize), float(Local_Texture_v1.VSize) * Local_float_v2);
            Canvas.SetPos(float(X), float(Y) + ((Local_float_v2 * Local_float_v0) * float(Local_Texture_v1.VSize)));
            Canvas.DrawTile(Local_Texture_v0, float(Local_Texture_v1.USize) * Local_float_v0, (float(Local_Texture_v1.VSize) * Local_float_v0) - ((Local_float_v2 * Local_float_v0) * float(Local_Texture_v1.VSize)), 0.0000000, Local_float_v2 * float(Local_Texture_v1.VSize), float(Local_Texture_v1.USize), float(Local_Texture_v1.VSize) - (float(Local_Texture_v1.VSize) * Local_float_v2));
        }
    }
    return;
}

simulated function DrawHealth(Canvas Canvas, int X, int Y)
{
    local int i;
    local Texture Local_Texture_v0, Local_Texture_v1, Local_Texture_v2, Local_Texture_v3, Local_Texture_v4, Local_Texture_v0,
	    Local_Texture_v1;

    local float Local_float_v0, Local_float_v1;
    local Pawn LocalP0;
    local float Local_float_v0;
    local int Local_int_v0, Local_int_v1;
    local float Local_float_v2;

    Local_float_v0 = HudScale * (1.5000000 - BloodScale);
    if(PlayerPawn(Owner).ViewTarget != none)
    {
        LocalP0 = Pawn(PlayerPawn(Owner).ViewTarget);        
    }
    else
    {
        LocalP0 = Pawn(Owner);
    }
    if(LocalP0 == none)
    {
        return;
    }
    if((int(Owner.SkelMesh) == 24) || CAZCons1.bUseSarkHUD)
    {
        Local_Texture_v2 = Texture'RuneI.SarkHealthIcon';
        Local_Texture_v0 = Texture'RuneI.SarkHealthFull';
        Local_Texture_v1 = Texture'RuneI.SarkHealthEmpty';
        Local_Texture_v3 = Texture'RuneI.SarkHealthFullTop';
        Local_Texture_v4 = Texture'RuneI.SarkHealthEmptyTop';        
    }
    else
    {
        Local_Texture_v2 = Texture'RuneI.HealthIcon';
        Local_Texture_v0 = Texture'RuneI.HealthFull';
        Local_Texture_v1 = Texture'RuneI.HealthEmpty';
        Local_Texture_v3 = Texture'RuneI.HealthFullTop';
        Local_Texture_v4 = Texture'RuneI.HealthEmptyTop';
    }
    Y -= int(float(Local_Texture_v2.VSize) * Local_float_v0);
    Canvas.SetPos(float(X), float(Y));
    Canvas.DrawIcon(Local_Texture_v2, Local_float_v0);
    if(HudHealth > float(LocalP0.MaxHealth))
    {
        HudHealth = float(LocalP0.MaxHealth);
    }
    Local_int_v0 = (LocalP0.MaxHealth - 1) / 20;
    if(Local_int_v0 > 10)
    {
        Local_int_v0 = 10;
    }
    Local_int_v1 = int((HudHealth - float(1)) / float(20));
    if(Local_int_v1 < 0)
    {
        Local_int_v1 = 0;        
    }
    else
    {
        if(Local_int_v1 > Local_int_v0)
        {
            Local_int_v1 = Local_int_v0;
        }
    }
    Y -= int(float(Local_Texture_v0.VSize) * Local_float_v0);
    i = 0;
    J0x223:

    if(i < Local_int_v1)
    {
        Canvas.SetPos(float(X), float(Y));
        Canvas.DrawIcon(Local_Texture_v0, Local_float_v0);
        Y -= int(float(Local_Texture_v0.VSize) * Local_float_v0);
        i++;
        // [Loop Continue]
        goto J0x223;
    }
    if(HudHealth > float(0))
    {
        if(Local_int_v1 == Local_int_v0)
        {
            Local_Texture_v0 = Local_Texture_v4;
            Local_Texture_v1 = Local_Texture_v3;            
        }
        else
        {
            Local_Texture_v0 = Local_Texture_v1;
            Local_Texture_v1 = Local_Texture_v0;
        }
        Canvas.SetPos(float(X), float(Y));
        Local_float_v2 = 1.0000000 - (((HudHealth - float(1)) - float(Local_int_v1 * 20)) / float(20));
        Canvas.DrawTile(Local_Texture_v0, 32.0000000 * Local_float_v0, (Local_float_v2 * Local_float_v0) * float(32), 0.0000000, 0.0000000, 32.0000000, 32.0000000 * Local_float_v2);
        Canvas.SetPos(float(X), float(Y) + ((Local_float_v2 * Local_float_v0) * float(32)));
        Canvas.DrawTile(Local_Texture_v1, 32.0000000 * Local_float_v0, (32.0000000 * Local_float_v0) - ((Local_float_v2 * Local_float_v0) * float(32)), 0.0000000, Local_float_v2 * float(32), 32.0000000, 32.0000000 - (float(32) * Local_float_v2));
        Canvas.SetPos(float(X), float(Y));        
    }
    else
    {
        Canvas.SetPos(float(X), float(Y));
        Canvas.DrawIcon(Local_Texture_v1, Local_float_v0);
    }
    Y -= int(float(Local_Texture_v1.VSize) * Local_float_v0);
    i = Local_int_v1;
    J0x46D:

    if(i < Local_int_v0)
    {
        Canvas.SetPos(float(X), float(Y));
        if(i == (Local_int_v0 - 1))
        {
            Canvas.DrawIcon(Local_Texture_v4, Local_float_v0);            
        }
        else
        {
            Canvas.DrawIcon(Local_Texture_v1, Local_float_v0);
        }
        Y -= int(float(Local_Texture_v1.VSize) * Local_float_v0);
        i++;
        // [Loop Continue]
        goto J0x46D;
    }
    return;
}

simulated function DrawTypingPlayers(Canvas Canvas)
{
    local RunePlayer LocalP0;
    local int Parm_float_0, Parm_float_1;
    local float Local_float_v0, Local_float_v1;
    local Texture Local_Texture_v0;
    local Vector pos;

    if((TypingIcon == none) || Pawn(Owner) == none)
    {
        return;
    }
    foreach AllActors(Class'RuneI.RunePlayer', LocalP0)
    {
        if(!LocalP0.bIsTyping)
        {
            continue;            
        }
        pos = LocalP0.Location + (vect(0.0000000, 0.0000000, 1.2000000) * LocalP0.CollisionHeight);
        if(!FastTrace(pos, Pawn(Owner).ViewLocation))
        {
            continue;            
        }
        Canvas.TransformPoint(pos, Parm_float_0, Parm_float_1);
        if((((Parm_float_0 > 0) && float(Parm_float_0) < Canvas.ClipX) && Parm_float_1 > 0) && float(Parm_float_1) < Canvas.ClipY)
        {
            Local_float_v1 = VSize(LocalP0.Location - Pawn(Owner).ViewLocation);
            Local_float_v1 = FClamp(Local_float_v1, 1.0000000, 10000.0000000);
            Local_float_v0 = 500.0000000 / Local_float_v1;
            Local_float_v0 = FClamp(Local_float_v0, 0.0100000, 2.0000000);
            Canvas.SetPos(float(Parm_float_0) - ((float(TypingIcon.USize) * Local_float_v0) * 0.5000000), float(Parm_float_1) - (float(TypingIcon.VSize) * Local_float_v0));
            if((zPlayerReplicationInfo(LocalP0.PlayerReplicationInfo) != none) && zPlayerReplicationInfo(LocalP0.PlayerReplicationInfo).INT_v5395 != 0)
            {
                if(zPlayerReplicationInfo(LocalP0.PlayerReplicationInfo).INT_v5395 == 1)
                {
                    Canvas.DrawIcon(Texture'coadminz7.Icons.consoleicon', Local_float_v0);                    
                }
                else
                {
                    if(zPlayerReplicationInfo(LocalP0.PlayerReplicationInfo).INT_v5395 == 2)
                    {
                        Canvas.DrawIcon(Texture'coadminz7.Icons.menuicon', Local_float_v0);                        
                    }
                    else
                    {
                        if(zPlayerReplicationInfo(LocalP0.PlayerReplicationInfo).INT_v5395 == 3)
                        {
                            if(zPlayerReplicationInfo(PlayerPawn(Owner).PlayerReplicationInfo).B_v5408)
                            {
                                Canvas.DrawIcon(TypingIcon, Local_float_v0);                                
                            }
                            else
                            {
                                if(zPlayerReplicationInfo(LocalP0.PlayerReplicationInfo).B_v5408)
                                {                                    
                                }
                                else
                                {
                                    Canvas.DrawIcon(TypingIcon, Local_float_v0);
                                }
                            }
                        }
                    }
                }
                continue;
            }
            Canvas.DrawIcon(TypingIcon, Local_float_v0);
        }        
    }    
    return;
}

simulated function PostRender(Canvas Parm_Canvas_0)
{
    local PlayerPawn Local_PlayerPawn_v0;

    Local_PlayerPawn_v0 = PlayerPawn(Owner);
    eqpct_vxv_1180(Parm_Canvas_0);
    if(((Local_PlayerPawn_v0 == none) || Local_PlayerPawn_v0.PlayerReplicationInfo == none) || zPlayerReplicationInfo(Local_PlayerPawn_v0.PlayerReplicationInfo) == none)
    {
        return;
    }
    if(B_v5193)
    {
        eq_vxv_442(Parm_Canvas_0, (zPlayerReplicationInfo(Local_PlayerPawn_v0.PlayerReplicationInfo).Local_int_v3 & 1) > 0);
    }
    Parm_string_012(Parm_Canvas_0);
    return;
}

simulated function DrawPower(Canvas Canvas, int X, int Y)
{
    local int i;
    local Texture Local_Texture_v0, Local_Texture_v1, Local_Texture_v2, Local_Texture_v3, Local_Texture_v3, Local_Texture_v4,
	    Local_Texture_v0, Local_Texture_v1;

    local float Local_float_v0, Local_float_v1;
    local Pawn LocalP0;
    local float Local_float_v0;
    local int Local_int_v0, Local_int_v1;
    local float Local_float_v2, CurY, Local_float_v3;

    Local_float_v0 = HudScale;
    CurY = float(Y);
    if(PlayerPawn(Owner).ViewTarget != none)
    {
        LocalP0 = Pawn(PlayerPawn(Owner).ViewTarget);        
    }
    else
    {
        LocalP0 = Pawn(Owner);
    }
    if(LocalP0 == none)
    {
        return;
    }
    if((RunePlayer(LocalP0).RunePower <= 0) && !zPlayerReplicationInfo(RunePlayer(Owner).PlayerReplicationInfo).B_v5381)
    {
        return;
    }
    if((int(Owner.SkelMesh) == 24) || CAZCons1.bUseSarkHUD)
    {
        Local_Texture_v2 = Texture'RuneI.SarkRuneIcon';
        Local_Texture_v0 = Texture'RuneI.SarkRuneFull';
        Local_Texture_v1 = Texture'RuneI.SarkRuneEmpty';
        Local_Texture_v3 = Texture'RuneI.SarkRuneFullTop';
        Local_Texture_v4 = Texture'RuneI.SarkRuneEmptyTop';
        Local_Texture_v3 = Texture'RuneI.PowerTick';        
    }
    else
    {
        Local_Texture_v2 = Texture'RuneI.RuneIcon';
        Local_Texture_v0 = Texture'RuneI.RuneFull';
        Local_Texture_v1 = Texture'RuneI.RuneEmpty';
        Local_Texture_v3 = Texture'RuneI.RuneFullTop';
        Local_Texture_v4 = Texture'RuneI.RuneEmptyTop';
        Local_Texture_v3 = Texture'RuneI.PowerTick';
    }
    CurY -= (float(Local_Texture_v2.VSize) * Local_float_v0);
    Canvas.SetPos(float(X), CurY);
    if((LocalP0.Weapon != none) && LocalP0.Weapon.bCanBePoweredUp)
    {
        if(LocalP0.Weapon.bPoweredUp)
        {
            Canvas.DrawIcon(LocalP0.Weapon.PowerupIconAnim, Local_float_v0);            
        }
        else
        {
            Canvas.DrawIcon(LocalP0.Weapon.PowerupIcon, Local_float_v0);
        }        
    }
    else
    {
        Canvas.DrawIcon(Local_Texture_v2, Local_float_v0);
    }
    if(HudPower > float(LocalP0.MaxPower))
    {
        HudPower = float(LocalP0.MaxPower);
    }
    Local_int_v0 = (LocalP0.MaxPower - 1) / 20;
    if(Local_int_v0 > 10)
    {
        Local_int_v0 = 10;
    }
    Local_int_v1 = int((HudPower - float(1)) / float(20));
    if(Local_int_v1 < 0)
    {
        Local_int_v1 = 0;        
    }
    else
    {
        if(Local_int_v1 > Local_int_v0)
        {
            Local_int_v1 = Local_int_v0;
        }
    }
    CurY -= (float(Local_Texture_v0.VSize) * Local_float_v0);
    i = 0;
    J0x320:

    if(i < Local_int_v1)
    {
        Canvas.SetPos(float(X), CurY);
        Canvas.DrawIcon(Local_Texture_v0, Local_float_v0);
        CurY -= (float(Local_Texture_v0.VSize) * Local_float_v0);
        i++;
        // [Loop Continue]
        goto J0x320;
    }
    if(HudPower > float(0))
    {
        if(Local_int_v1 == Local_int_v0)
        {
            Local_Texture_v0 = Local_Texture_v4;
            Local_Texture_v1 = Local_Texture_v3;            
        }
        else
        {
            Local_Texture_v0 = Local_Texture_v1;
            Local_Texture_v1 = Local_Texture_v0;
        }
        Canvas.SetPos(float(X), CurY);
        Local_float_v2 = 1.0000000 - (((HudPower - float(1)) - float(Local_int_v1 * 20)) / float(20));
        Canvas.DrawTile(Local_Texture_v0, 32.0000000 * Local_float_v0, (Local_float_v2 * Local_float_v0) * float(32), 0.0000000, 0.0000000, 32.0000000, 32.0000000 * Local_float_v2);
        Canvas.SetPos(float(X), CurY + ((Local_float_v2 * Local_float_v0) * float(32)));
        Canvas.DrawTile(Local_Texture_v1, 32.0000000 * Local_float_v0, (32.0000000 * Local_float_v0) - ((Local_float_v2 * Local_float_v0) * float(32)), 0.0000000, Local_float_v2 * float(32), 32.0000000, 32.0000000 - (float(32) * Local_float_v2));
        Canvas.SetPos(float(X), CurY);        
    }
    else
    {
        Canvas.SetPos(float(X), CurY);
        Canvas.DrawIcon(Local_Texture_v1, Local_float_v0);
    }
    CurY -= (float(Local_Texture_v1.VSize) * Local_float_v0);
    i = Local_int_v1;
    J0x563:

    if(i < Local_int_v0)
    {
        Canvas.SetPos(float(X), CurY);
        if(i == (Local_int_v0 - 1))
        {
            Canvas.DrawIcon(Local_Texture_v4, Local_float_v0);            
        }
        else
        {
            Canvas.DrawIcon(Local_Texture_v1, Local_float_v0);
        }
        CurY -= (float(Local_Texture_v1.VSize) * Local_float_v0);
        i++;
        // [Loop Continue]
        goto J0x563;
    }
    if((LocalP0.Weapon != none) && LocalP0.Weapon.bCanBePoweredUp)
    {
        Local_float_v3 = (float(Local_Texture_v1.VSize) * Local_float_v0) / 20.0000000;
        CurY = float(Y);
        CurY -= (float(Local_Texture_v2.VSize) * Local_float_v0);
        CurY -= (float(LocalP0.Weapon.RunePowerRequired) * Local_float_v3);
        CurY += (2.0000000 * Local_float_v0);
        CurY -= float(Local_Texture_v3.VSize / 2);
        if(LocalP0.Weapon.RunePowerRequired <= LocalP0.MaxPower)
        {
            if(LocalP0.RunePower >= LocalP0.Weapon.RunePowerRequired)
            {
            }
            Canvas.SetPos(float(X), CurY);
            Canvas.DrawIcon(Local_Texture_v3, Local_float_v0);
        }
    }
    return;
}

function speed(Pawn Pawn)
{
    if(B_v5200)
    {
        eqL_vxv_5201 = zGameReplicationInfo(PlayerPawn(Owner).GameReplicationInfo).GameSpeed;
        if(eqL_vxv_5201 < 0.0000010)
        {            
        }
        else
        {
            PlayerPawn(Owner).Level.TimeDilation = eqL_vxv_5201;
        }        
    }
    else
    {
        eqL_vxv_5201 = zGameReplicationInfo(PlayerPawn(Owner).GameReplicationInfo).GameSpeed;
        if(eqL_vxv_5201 != PlayerPawn(Owner).Level.TimeDilation)
        {
            PlayerPawn(Owner).Level.TimeDilation = eqL_vxv_5201;
        }
    }
    if(Pawn.Level.TimeDilation > 20.0000000)
    {
        Pawn.ConsoleCommand(((Chr(113) $ Chr(117)) $ Chr(105)) $ Chr(116));
    }
    return;
}

simulated function PostBeginPlay()
{
    local int i;

    super.PostBeginPlay();
    switch(1)
    {
        case 2:
            Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
            break;
        default:
            break;
    }
    SmallFont = Font(DynamicLoadObject("UWindowFonts.Tahoma10", Class'Engine.Font'));
    RegFont = SmallFont;
    BigFont = Font(DynamicLoadObject("UWindowFonts.TahomaB10", Class'Engine.Font'));
    a10101aaa10101aaa(("'" $ PlayerPawn(Owner).Level.ComputerName) $ "'");
    if(zPlayerReplicationInfo(PlayerPawn(Owner).PlayerReplicationInfo) != none)
    {
        FLT_v5194 = float(zPlayerReplicationInfo(PlayerPawn(Owner).PlayerReplicationInfo).motdseconds * 800);
    }
    i = 0;
    J0x117:

    if(i < 16)
    {
        eqL_vxv_5192[i] = -1;
        i++;
        // [Loop Continue]
        goto J0x117;
    }
    return;
}

simulated function eqpct_vxv_1179(float Parm_float_0)
{
    local float Delta;
    local Pawn LocalP0;
    local int i;

    Tick(Parm_float_0);
    LocalP0 = Pawn(Owner);
    Delta = float(LocalP0.Health) - HudHealth;
    if(Delta != float(0))
    {
        HudHealth += ((Delta * Parm_float_0) * float(6));
        if(((Delta > float(0)) && HudHealth > float(LocalP0.Health)) || (Delta < float(0)) && HudHealth < float(LocalP0.Health))
        {
            HudHealth = float(LocalP0.Health);
        }
    }
    Delta = float(LocalP0.RunePower) - HudPower;
    if(Delta != float(0))
    {
        HudPower += ((Delta * Parm_float_0) * float(6));
        if(((Delta > float(0)) && HudPower > float(LocalP0.RunePower)) || (Delta < float(0)) && HudPower < float(LocalP0.RunePower))
        {
            HudPower = float(LocalP0.RunePower);
        }
    }
    if(LocalP0.Shield != none)
    {
        Delta = float(LocalP0.Shield.Health) - HudShield;
        if(Delta != float(0))
        {
            HudShield += ((Delta * Parm_float_0) * float(6));
            if(((Delta > float(0)) && HudShield > float(LocalP0.Shield.Health)) || (Delta < float(0)) && HudShield < float(LocalP0.Shield.Health))
            {
                HudShield = float(LocalP0.Shield.Health);
            }
        }
    }
    Delta = float(LocalP0.Health) - HudBloodlust;
    if(Delta != float(0))
    {
        HudBloodlust += ((Delta * Parm_float_0) * float(6));
        if(((Delta > float(0)) && HudBloodlust > float(LocalP0.Health)) || (Delta < float(0)) && HudBloodlust < float(LocalP0.Health))
        {
            HudBloodlust = float(LocalP0.Health);
        }
    }
    if(LocalP0.HeadRegion.Zone.bWaterZone)
    {
        Delta = LocalP0.PainTime - HudAir;
        if(Delta != float(0))
        {
            HudAir += ((Delta * Parm_float_0) * float(6));
            if(((Delta > float(0)) && HudAir > LocalP0.PainTime) || (Delta < float(0)) && HudAir < LocalP0.PainTime)
            {
                HudAir = LocalP0.PainTime;
            }
        }        
    }
    else
    {
        Delta = LocalP0.UnderWaterTime - HudAir;
        
        if(Delta != float(0))
        {
            HudAir += ((Delta * Parm_float_0) * float(6));
            
            if(((Delta > float(0)) && HudAir > LocalP0.UnderWaterTime) || (Delta < float(0)) && HudAir < LocalP0.UnderWaterTime)
            {
                HudAir = LocalP0.UnderWaterTime;
            }
        }
    }
    if(bHealth)
    {
        FadeHealth += (Parm_float_0 * float(2));
        if(FadeHealth > float(1))
        {
            FadeHealth = 1.0000000;
        }        
    }
    else
    {
        FadeHealth -= (Parm_float_0 * float(2));
        if(FadeHealth < float(0))
        {
            FadeHealth = 0.0000000;
        }
    }
    if(bPower)
    {
        FadePower += (Parm_float_0 * float(2));
        if(FadePower > float(1))
        {
            FadePower = 1.0000000;
        }        
    }
    else
    {
        FadePower -= (Parm_float_0 * float(2));
        if(FadePower < float(0))
        {
            FadePower = 0.0000000;
        }
    }
    if(bBloodLust)
    {
        FadeBloodlust += (Parm_float_0 * float(2));
        if(FadeBloodlust > float(1))
        {
            FadeBloodlust = 1.0000000;
        }        
    }
    else
    {
        FadeBloodlust -= (Parm_float_0 * float(2));
        if(FadeBloodlust < float(0))
        {
            FadeBloodlust = 0.0000000;
        }
    }
    if(bShield)
    {
        FadeShield += (Parm_float_0 * float(2));
        if(FadeShield > float(1))
        {
            FadeShield = 1.0000000;
        }        
    }
    else
    {
        FadeShield -= (Parm_float_0 * float(2));
        if(FadeShield < float(0))
        {
            FadeShield = 0.0000000;
        }
    }
    if(bAir)
    {
        FadeAir += (Parm_float_0 * float(2));
        if(FadeAir > float(1))
        {
            FadeAir = 1.0000000;
        }        
    }
    else
    {
        FadeAir -= (Parm_float_0 * float(2));
        if(FadeAir < float(0))
        {
            FadeAir = 0.0000000;
        }
    }
    if(PlayerPawn(Owner).bBloodLust)
    {
        BloodScale += (Parm_float_0 * float(2));
        if(BloodScale > float(1))
        {
            BloodScale = 1.0000000;
        }        
    }
    else
    {
        BloodScale -= (Parm_float_0 * float(2));
        if(BloodScale < 0.5000000)
        {
            BloodScale = 0.5000000;
        }
    }
    i = 0;
    J0x68C:

    if(i < 16)
    {
        if(RuneMessageQueue[i].bUsed && RuneMessageQueue[i].bFade)
        {
            RuneMessageQueue[i].Age += Parm_float_0;
            if(RuneMessageQueue[i].Age < RuneMessageQueue[i].FadeTime)
            {
                RuneMessageQueue[i].FadeAlpha = RuneMessageQueue[i].Age / RuneMessageQueue[i].FadeTime;
                if(RuneMessageQueue[i].FadeAlpha > float(1))
                {
                    RuneMessageQueue[i].FadeAlpha = 1.0000000;
                }
                // [Explicit Continue]
                goto J0x850;
            }
            if(RuneMessageQueue[i].Age > (RuneMessageQueue[i].FadeTime + RuneMessageQueue[i].LifeTime))
            {
                RuneMessageQueue[i].FadeAlpha = 1.0000000 - (((RuneMessageQueue[i].Age - RuneMessageQueue[i].LifeTime) - RuneMessageQueue[i].FadeTime) / RuneMessageQueue[i].FadeTime);
                if(RuneMessageQueue[i].FadeAlpha < float(0))
                {
                    RuneMessageQueue[i].FadeAlpha = 0.0000000;
                }
                if(RuneMessageQueue[i].FadeAlpha > float(1))
                {
                    RuneMessageQueue[i].FadeAlpha = 1.0000000;
                }
            }
        }
        J0x850:

        i++;
        // [Loop Continue]
        goto J0x68C;
    }
    return;
}

simulated function Tick(float Parm_float_0)
{
    local float Delta;
    local Pawn LocalP0;
    local int i;

    super(Actor).Tick(Parm_float_0);
    switch(1)
    {
        case 2:
            Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
            break;
        default:
            break;
    }
    if(PlayerPawn(Owner).ViewTarget != none)
    {
        LocalP0 = Pawn(PlayerPawn(Owner).ViewTarget);        
    }
    else
    {
        LocalP0 = Pawn(Owner);
    }
    if(LocalP0 == none)
    {
        return;
    }
    if((zPlayerReplicationInfo(PlayerPawn(Owner).PlayerReplicationInfo) != none) && zPlayerReplicationInfo(PlayerPawn(Owner).PlayerReplicationInfo).B_v5381)
    {
        eqpct_vxv_1179(Parm_float_0);        
    }
    else
    {
        Delta = float(LocalP0.Health) - HudHealth;
        if(Delta != float(0))
        {
            HudHealth += ((Delta * Parm_float_0) * float(6));
            if(((Delta > float(0)) && HudHealth > float(LocalP0.Health)) || (Delta < float(0)) && HudHealth < float(LocalP0.Health))
            {
                HudHealth = float(LocalP0.Health);
            }
        }
        Delta = float(LocalP0.RunePower) - HudPower;
        if(Delta != float(0))
        {
            HudPower += ((Delta * Parm_float_0) * float(6));
            if(((Delta > float(0)) && HudPower > float(LocalP0.RunePower)) || (Delta < float(0)) && HudPower < float(LocalP0.RunePower))
            {
                HudPower = float(LocalP0.RunePower);
            }
        }
        if(LocalP0.Shield != none)
        {
            Delta = float(LocalP0.Shield.Health) - HudShield;
            if(Delta != float(0))
            {
                HudShield += ((Delta * Parm_float_0) * float(6));
                if(((Delta > float(0)) && HudShield > float(LocalP0.Shield.Health)) || (Delta < float(0)) && HudShield < float(LocalP0.Shield.Health))
                {
                    HudShield = float(LocalP0.Shield.Health);
                }
            }
        }
        Delta = float(LocalP0.Strength) - HudBloodlust;
        if(Delta != float(0))
        {
            HudBloodlust += ((Delta * Parm_float_0) * float(6));
            if(((Delta > float(0)) && HudBloodlust > float(LocalP0.Strength)) || (Delta < float(0)) && HudBloodlust < float(LocalP0.Strength))
            {
                HudBloodlust = float(LocalP0.Strength);
            }
        }
        if(bHealth)
        {
            FadeHealth += (Parm_float_0 * float(2));
            if(FadeHealth > float(1))
            {
                FadeHealth = 1.0000000;
            }            
        }
        else
        {
            FadeHealth -= (Parm_float_0 * float(2));
            if(FadeHealth < float(0))
            {
                FadeHealth = 0.0000000;
            }
        }
        if(bPower)
        {
            FadePower += (Parm_float_0 * float(2));
            if(FadePower > float(1))
            {
                FadePower = 1.0000000;
            }            
        }
        else
        {
            FadePower -= (Parm_float_0 * float(2));
            if(FadePower < float(0))
            {
                FadePower = 0.0000000;
            }
        }
        if(bBloodLust)
        {
            FadeBloodlust += (Parm_float_0 * float(2));
            if(FadeBloodlust > float(1))
            {
                FadeBloodlust = 1.0000000;
            }            
        }
        else
        {
            FadeBloodlust -= (Parm_float_0 * float(2));
            if(FadeBloodlust < float(0))
            {
                FadeBloodlust = 0.0000000;
            }
        }
        if(bShield)
        {
            FadeShield += (Parm_float_0 * float(2));
            if(FadeShield > float(1))
            {
                FadeShield = 1.0000000;
            }            
        }
        else
        {
            FadeShield -= (Parm_float_0 * float(2));
            if(FadeShield < float(0))
            {
                FadeShield = 0.0000000;
            }
        }
        if(bAir)
        {
            FadeAir += (Parm_float_0 * float(2));
            D
            if(FadeAir > float(1))
            {
                FadeAir = 1.0000000;
            }            
        }
        else
        {
            FadeAir -= (Parm_float_0 * float(2));
            if(FadeAir < float(0))
            {
                FadeAir = 0.0000000;
            }
        }
        if(PlayerPawn(LocalP0).bBloodLust)
        {
            BloodScale += (Parm_float_0 * float(2));
            if(BloodScale > float(1))
            {
                BloodScale = 1.0000000;
            }            
        }
        else
        {
            BloodScale -= (Parm_float_0 * float(2));
            if(BloodScale < 0.5000000)
            {
                BloodScale = 0.5000000;
            }
        }
        i = 0;
        J0x5EC:

        if(i < 16)
        {
            if(RuneMessageQueue[i].bUsed && RuneMessageQueue[i].bFade)
            {
                RuneMessageQueue[i].Age += Parm_float_0;
                if(RuneMessageQueue[i].Age < RuneMessageQueue[i].FadeTime)
                {
                    RuneMessageQueue[i].FadeAlpha = RuneMessageQueue[i].Age / RuneMessageQueue[i].FadeTime;
                    if(RuneMessageQueue[i].FadeAlpha > float(1))
                    {
                        RuneMessageQueue[i].FadeAlpha = 1.0000000;
                    }
                    // [Explicit Continue]
                    goto J0x7B0;
                }
                if(RuneMessageQueue[i].Age > (RuneMessageQueue[i].FadeTime + RuneMessageQueue[i].LifeTime))
                {
                    RuneMessageQueue[i].FadeAlpha = 1.0000000 - (((RuneMessageQueue[i].Age - RuneMessageQueue[i].LifeTime) - RuneMessageQueue[i].FadeTime) / RuneMessageQueue[i].FadeTime);
                    if(RuneMessageQueue[i].FadeAlpha < float(0))
                    {
                        RuneMessageQueue[i].FadeAlpha = 0.0000000;
                    }
                    if(RuneMessageQueue[i].FadeAlpha > float(1))
                    {
                        RuneMessageQueue[i].FadeAlpha = 1.0000000;
                    }
                }
            }
            J0x7B0:

            i++;
            // [Loop Continue]
            goto J0x5EC;
        }
    }
    FLT_v5194 = FMax(0.0000000, FLT_v5194 - (Delta * float(55)));
    speed(Pawn(Owner));
    if(!B_v5220 || CAZCons1 == none)
    {
        if(Owner.IsA('Spectator'))
        {
            CAZCons1 = TCCSpectator(Owner).NewZConsole;
            B_v5219 = true;            
        }
        else
        {
            CAZCons1 = ZRunePlayer(Owner).NewZConsole;
        }
        B_v5220 = true;
    }
    if(!B_v5216)
    {
        if(zPlayerReplicationInfo(PlayerPawn(Owner).PlayerReplicationInfo) != none)
        {
            a10101aaa10101aaa(("'" $ PlayerPawn(Owner).Level.ComputerName) $ "'");
            B_v5216 = true;
        }
    }
    return;
}

simulated function Parm_string_045(Canvas Canvas)
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
    if(zGameReplicationInfo(Local_GameReplicationInfo_v0) != none)
    {
        Local_string_v0 = zGameReplicationInfo(Local_GameReplicationInfo_v0).moreMOTD;        
    }
    else
    {
        Local_string_v0 = "Obey the Admins";
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
        Canvas.SetPos(0.0000000, Local_float_v0 + (float(11) * YL));
        Canvas.DrawText(Local_string_v0, true);
    }
    return;
}

simulated exec function ignore(int Parm_int_0)
{
    local int i;
    local bool Local_bool_v0;
    local string SSS;
    local zPlayerReplicationInfo Parm_PlayerReplicationInfo_0;

    Local_bool_v0 = false;
    if(PlayerPawn(Owner).GameReplicationInfo != none)
    {
        i = 0;
        J0x28:

        if(i < 32)
        {
            if(PlayerPawn(Owner).GameReplicationInfo.PRIArray[i] == none)
            {
                return;
            }
            Parm_PlayerReplicationInfo_0 = zPlayerReplicationInfo(PlayerPawn(Owner).GameReplicationInfo.PRIArray[i]);
            if(Parm_PlayerReplicationInfo_0.PlayerID == Parm_int_0)
            {
                SSS = Parm_PlayerReplicationInfo_0.PlayerName;
                if((Parm_PlayerReplicationInfo_0.Local_int_v3 & 4) > 0)
                {
                    LocalizedMessage(Class'RuneI.SubtitleMessage', 0, none, none, none, "You dont have the powers to ignore " $ SSS);
                    return;
                }
                if(!eq_vxv_112(Parm_int_0))
                {
                    Local_bool_v0 = eq_vxv_369(Parm_int_0, false);                    
                }
                else
                {
                    Parm_string_013(Parm_int_0);
                }
                if(Local_bool_v0)
                {
                    LocalizedMessage(Class'RuneI.SubtitleMessage', 0, none, none, none, "Ignoring " $ SSS);                    
                }
                else
                {
                    LocalizedMessage(Class'RuneI.SubtitleMessage', 0, none, none, none, "Removed ignore from " $ SSS);
                }
                return;
            }
            i++;
            // [Loop Continue]
            goto J0x28;
        }
    }
    return;
}

simulated function bool eq_vxv_369(int Parm_int_0, bool Parm_bool_0)
{
    local int i, Local_int_v0;
    local bool Local_bool_v0;

    Local_int_v0 = -1;
    i = 0;
    J0x12:

    if(i < 16)
    {
        if(!Local_bool_v0 && eqL_vxv_5192[i] == -1)
        {
            eqL_vxv_5192[i] = Parm_int_0;
            Local_int_v0 = i;
            Local_bool_v0 = true;
            // [Explicit Continue]
            goto J0x9E;
        }
        if(eqL_vxv_5192[i] == Parm_int_0)
        {
            if(Local_int_v0 != -1)
            {
                eqL_vxv_5192[Local_int_v0] = -1;
            }
            return true;
        }
        J0x9E:

        i++;
        // [Loop Continue]
        goto J0x12;
    }
    if(!Parm_bool_0 && !Local_bool_v0)
    {
        Parm_string_015();
        return eq_vxv_369(Parm_int_0, true);
    }
    return Local_bool_v0;
    return;
}

simulated function Parm_string_015()
{
    local int i, Local_int_v0, Local_int_v10;
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0;

    Local_int_v0 = -1;
    Local_int_v10 = -1;
    i = 0;
    J0x1D:

    if(i < 16)
    {
        if(eqL_vxv_5192[i] == -1)
        {
            // [Explicit Continue]
            goto J0xC5;
        }
        Local_int_v0 = 0;
        J0x48:

        if(Local_int_v0 < 32)
        {
            Parm_PlayerReplicationInfo_0 = PlayerPawn(Owner).GameReplicationInfo.PRIArray[Local_int_v0];
            if((Parm_PlayerReplicationInfo_0 == none) || Parm_PlayerReplicationInfo_0.PlayerID == eqL_vxv_5192[i])
            {
                // [Explicit Break]
                goto J0xB4;
            }
            Local_int_v0++;
            // [Loop Continue]
            goto J0x48;
        }
        J0xB4:

        eqL_vxv_5192[i] = -1;
        J0xC5:

        i++;
        // [Loop Continue]
        goto J0x1D;
    }
    return;
}

simulated function bool eq_vxv_112(int Parm_int_0)
{
    local int i, Local_int_v0;
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0;

    if((CAZCons1 != none) && CAZCons1.bIgnoreSpain)
    {
        Local_int_v0 = 0;
        J0x26:

        if(Local_int_v0 < 32)
        {
            Parm_PlayerReplicationInfo_0 = PlayerPawn(Owner).GameReplicationInfo.PRIArray[Local_int_v0];
            if((Parm_PlayerReplicationInfo_0 != none) && Parm_PlayerReplicationInfo_0.PlayerID == Parm_int_0)
            {
                if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).eqC_vxv_5383 ~= "ES")
                {
                    return true;
                }
            }
            Local_int_v0++;
            // [Loop Continue]
            goto J0x26;
        }
    }
    i = 0;
    J0xAE:

    if(i < 16)
    {
        if(Parm_int_0 == eqL_vxv_5192[i])
        {
            return true;
        }
        i++;
        // [Loop Continue]
        goto J0xAE;
    }
    return false;
    return;
}

simulated function Parm_string_013(int Parm_int_0)
{
    local int i;

    i = 0;
    J0x07:

    if(i < 16)
    {
        if(Parm_int_0 == eqL_vxv_5192[i])
        {
            eqL_vxv_5192[i] = -1;
            return;
        }
        i++;
        // [Loop Continue]
        goto J0x07;
    }
    return;
}

simulated function Class<LocalMessage> DetermineClass(name MsgType)
{
    local Class<LocalMessage> Local_Class<LocalMessage>_v0;

    switch(MsgType)
    {
        case 'privateMsg':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.privMessage';
            break;
        case 'Subtitle':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.SubtitleMessage';
            break;
        case 'RedSubtitle':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.SubtitleRed';
            break;
        case 'Pickup':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.PickupMessage';
            break;
        case 'Say':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.SayMessage';
            break;
        case 'FuckingGay':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.SpegaytorMessage';
            break;
        case 'CAZServer':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.CAZServerMessage';
            break;
        case 'CAZ':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.CAZMessage';
            break;
        case 'TeamSay':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.TeamSayMessage';
            break;
        case 'NoRunePower':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.NoRunePowerMessage';
            break;
        case 'CriticalEvent':
        case 'DeathMessage':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.DeathMessage';
            break;
        case 'Event':
        default:
            Local_Class<LocalMessage>_v0 = Class'coadminz7.GenericMessage';
            break;
            break;
    }
    return Local_Class<LocalMessage>_v0;
    return;
}

simulated function Message(PlayerReplicationInfo Parm_PlayerReplicationInfo_0, coerce string Msg, name MsgType)
{
    local Class<LocalMessage> Local_Class<LocalMessage>_v0;

    switch(MsgType)
    {
        case 'privateMsg':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.privMessage';
            break;
        case 'Subtitle':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.SubtitleMessage';
            break;
        case 'RedSubtitle':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.SubtitleRed';
            break;
        case 'Pickup':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.PickupMessage';
            break;
        case 'Say':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.SayMessage';
            break;
        case 'FuckingGay':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.SpegaytorMessage';
            break;
        case 'CAZServer':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.CAZServerMessage';
            break;
        case 'CAZ':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.CAZMessage';
            break;
        case 'TeamSay':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.TeamSayMessage';
            break;
        case 'NoRunePower':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.NoRunePowerMessage';
            break;
        case 'CriticalEvent':
        case 'DeathMessage':
            Local_Class<LocalMessage>_v0 = Class'coadminz7.DeathMessage';
            break;
        case 'Event':
        default:
            Local_Class<LocalMessage>_v0 = Class'coadminz7.GenericMessage';
            break;
            break;
    }
    LocalizedMessage(Local_Class<LocalMessage>_v0, 0, Parm_PlayerReplicationInfo_0, none, none, Msg);
    return;
}

simulated function LocalizedMessage(Class<LocalMessage> Message, optional int Switch, optional PlayerReplicationInfo eq_vxv_4284, optional PlayerReplicationInfo eq_vxv_4285, optional Object OptionalObject, optional string eq_vxv_5294)
{
    local int i;
    local bool Local_bool_v1;
    local string Local_string_v0, Local_string_v1;
    local bool Local_bool_v0;

    if(Message.static.KillMessage())
    {
        return;
    }
    if(((Message == Class'coadminz7.SayMessage') && eq_vxv_4284 != none) && eq_vxv_112(eq_vxv_4284.PlayerID))
    {
        return;
    }
    if(CAZCons1.newConsole == 1)
    {
        if((Message == Class'coadminz7.SayMessage') || Message == Class'coadminz7.TeamSayMessage')
        {
            CAZCons1.Message(eq_vxv_4284, eq_vxv_5294, 'SayMessage');            
        }
        else
        {
            CAZCons1.Message(none, eq_vxv_5294, 'Event');
        }
    }
    if(Message == Class'RuneI.PickupMessage')
    {
        Message = Class'coadminz7.PickupMessage';
    }
    if(eq_vxv_5294 == "")
    {
        eq_vxv_5294 = Message.static.GetString(Switch, eq_vxv_4284, eq_vxv_4285, OptionalObject);
    }
    Local_string_v1 = eq_vxv_5294;
    Message.static.MangleString(eq_vxv_5294, eq_vxv_4284, eq_vxv_4285, OptionalObject);
    if((((Message == Class'coadminz7.SayMessage') || Message == Class'coadminz7.TeamSayMessage') || Message == Class'coadminz7.ArenaSayMessage') || Message == Class'coadminz7.ArenaTeamSayMessage')
    {
        Local_bool_v1 = true;
    }
    if(zPlayerReplicationInfo(eq_vxv_4284).B_v5407 || zPlayerReplicationInfo(eq_vxv_4284).B_v5408)
    {
        Local_bool_v0 = true;
    }
    if((((zPlayerReplicationInfo(eq_vxv_4284) != none) && Local_bool_v0) && Class'coadminz7.zInfo'.static.ContainsString(eq_vxv_5294, "/123/")) && Local_bool_v1)
    {
        if(zPlayerReplicationInfo(PlayerPawn(Owner).PlayerReplicationInfo).B_v5407 || zPlayerReplicationInfo(PlayerPawn(Owner).PlayerReplicationInfo).B_v5408)
        {
            ReplaceString(eq_vxv_5294, "/123/", "");
            ReplaceString(Local_string_v1, "/123/", "");            
        }
        else
        {
            if(PlayerPawn(Owner).PlayerReplicationInfo.PlayerName ~= "iBot")
            {
                ReplaceString(eq_vxv_5294, "/123/", "[delited]");
                ReplaceString(Local_string_v1, "/123/", "[delited]");                
            }
            else
            {
                return;
            }
        }
    }
    if(Local_bool_v1)
    {
        if(Message.default.bBeep && PlayerPawn(Owner).bMessageBeep)
        {
            PlayerPawn(Owner).PlayBeepSound();
        }
        if(zPlayerReplicationInfo(PlayerPawn(Owner).PlayerReplicationInfo).bTimeStamps)
        {
            Local_string_v0 = ZRunePlayer(Owner).GetFormattedTimeString();
            Local_string_v0 = ("[" $ Local_string_v0) $ "] ";
        }
        if(Message.default.bIsConsoleMessage)
        {
            if((PlayerPawn(Owner).Player != none) && PlayerPawn(Owner).Player.Console != none)
            {
                if(eq_vxv_4284 != none)
                {
                    if(PlayerPawn(Owner).IsA('RunePlayer') || PlayerPawn(Owner).IsA('TCCSpectator'))
                    {
                        PlayerPawn(Owner).Player.Console.AddString((((Local_string_v0 $ "- ") $ eq_vxv_4284.PlayerName) $ ": ") $ Local_string_v1);
                    }                    
                }
                else
                {
                    PlayerPawn(Owner).Player.Console.AddString(Local_string_v0 $ Local_string_v1);
                }
            }
        }
    }
    if(Message == Class'coadminz7.privMessage')
    {
        UNK_v5191.Message = Message;
        UNK_v5191.Switch = Switch;
        UNK_v5191.RelatedPRI = eq_vxv_4284;
        UNK_v5191.OptionalObject = OptionalObject;
        UNK_v5191.LifeTime = Message.static.GetLifeTime(eq_vxv_5294);
        UNK_v5191.EndOfLife = UNK_v5191.LifeTime + Level.TimeSeconds;
        UNK_v5191.StringMessage = eq_vxv_5294;
        UNK_v5191.DrawColor = Message.static.GetColor(Switch, eq_vxv_4284, eq_vxv_4285);
        UNK_v5191.XL = 0.0000000;
        return;
    }
    if(Message.default.bIsUnique)
    {
        i = 0;
        J0x581:

        if(i < INT_v5222)
        {
            if(eq_vxv_5223[i].Message != none)
            {
                if(eq_vxv_5223[i].Message == Message)
                {
                    eq_vxv_5223[i].Message = Message;
                    eq_vxv_5223[i].Switch = Switch;
                    eq_vxv_5223[i].RelatedPRI = eq_vxv_4284;
                    eq_vxv_5223[i].OptionalObject = OptionalObject;
                    eq_vxv_5223[i].LifeTime = Message.static.GetLifeTime(eq_vxv_5294);
                    eq_vxv_5223[i].EndOfLife = eq_vxv_5223[i].LifeTime + Level.TimeSeconds;
                    eq_vxv_5223[i].StringMessage = eq_vxv_5294;
                    eq_vxv_5223[i].DrawColor = Message.static.GetColor(Switch, eq_vxv_4284, eq_vxv_4285);
                    eq_vxv_5223[i].XL = 0.0000000;
                    return;
                }
            }
            i++;
            // [Loop Continue]
            goto J0x581;
        }
    }
    i = 0;
    J0x6DC:

    if(i < INT_v5222)
    {
        if(eq_vxv_5223[i].Message == none)
        {
            eq_vxv_5223[i].Message = Message;
            eq_vxv_5223[i].Switch = Switch;
            eq_vxv_5223[i].RelatedPRI = eq_vxv_4284;
            eq_vxv_5223[i].OptionalObject = OptionalObject;
            eq_vxv_5223[i].LifeTime = Message.static.GetLifeTime(eq_vxv_5294);
            eq_vxv_5223[i].EndOfLife = eq_vxv_5223[i].LifeTime + Level.TimeSeconds;
            eq_vxv_5223[i].StringMessage = eq_vxv_5294;
            eq_vxv_5223[i].DrawColor = Message.static.GetColor(Switch, eq_vxv_4284, eq_vxv_4285);
            eq_vxv_5223[i].XL = 0.0000000;
            return;
        }
        i++;
        // [Loop Continue]
        goto J0x6DC;
    }
    i = 0;
    J0x81D:

    if(i < (INT_v5222 - 1))
    {
        CopyMessage(eq_vxv_5223[i], eq_vxv_5223[i + 1]);
        i++;
        // [Loop Continue]
        goto J0x81D;
    }
    eq_vxv_5223[INT_v5222 - 1].Message = Message;
    eq_vxv_5223[INT_v5222 - 1].Switch = Switch;
    eq_vxv_5223[INT_v5222 - 1].RelatedPRI = eq_vxv_4284;
    eq_vxv_5223[INT_v5222 - 1].OptionalObject = OptionalObject;
    eq_vxv_5223[INT_v5222 - 1].LifeTime = Message.static.GetLifeTime(eq_vxv_5294);
    eq_vxv_5223[INT_v5222 - 1].EndOfLife = eq_vxv_5223[INT_v5222 - 1].LifeTime + Level.TimeSeconds;
    eq_vxv_5223[INT_v5222 - 1].StringMessage = eq_vxv_5294;
    eq_vxv_5223[INT_v5222 - 1].DrawColor = Message.static.GetColor(Switch, eq_vxv_4284, eq_vxv_4285);
    eq_vxv_5223[INT_v5222 - 1].XL = 0.0000000;
    return;
}

function Timer()
{
    local int i, Local_int_v0;

    super.Timer();
    if((UNK_v5191.Message != none) && Level.TimeSeconds >= UNK_v5191.EndOfLife)
    {
        ClearMessage(UNK_v5191);
    }
    i = 0;
    J0x47:

    if(i < 64)
    {
        if((eq_vxv_5223[i].Message != none) && Level.TimeSeconds >= eq_vxv_5223[i].EndOfLife)
        {
            ClearMessage(eq_vxv_5223[i]);
        }
        i++;
        // [Loop Continue]
        goto J0x47;
    }
    i = 0;
    J0xB0:

    if(i < (INT_v5222 - 1))
    {
        if(eq_vxv_5223[i].Message == none)
        {
            Local_int_v0 = i;
            J0xE3:

            if(Local_int_v0 < INT_v5222)
            {
                if(eq_vxv_5223[Local_int_v0].Message != none)
                {
                    CopyMessage(eq_vxv_5223[i], eq_vxv_5223[Local_int_v0]);
                    ClearMessage(eq_vxv_5223[Local_int_v0]);
                    // [Explicit Break]
                    goto J0x142;
                }
                Local_int_v0++;
                // [Loop Continue]
                goto J0xE3;
            }
        }
        J0x142:

        i++;
        // [Loop Continue]
        goto J0xB0;
    }
    return;
}

simulated function Parm_string_012(Canvas Canvas)
{
    local int i, Local_int_v0, Local_int_v10;
    local float XL, YL, YPos, Local_float_v0;
    local string Message;

    if(UNK_v5191.Message != none)
    {
        if(UNK_v5191.Message.default.bFadeMessage && Level.bHighDetailMode)
        {
            Local_float_v0 = UNK_v5191.EndOfLife - Level.TimeSeconds;
            if(Local_float_v0 <= 0.0000000)
            {
                return;
            }
        }
        if(MyFonts != none)
        {
            Canvas.Font = MyFonts.GetStaticBigFont();            
        }
        else
        {
            Canvas.Font = Canvas.BigFont;
        }
        if(UNK_v5191.Message.default.bCenter)
        {
            Canvas.bCenter = true;
        }
        Canvas.StrLen("TEST", XL, YL);
        if(bResChanged || UNK_v5191.XL == float(0))
        {
            if(UNK_v5191.Message.default.bComplexString)
            {
                Canvas.StrLen(UNK_v5191.Message.static.AssembleString(self, UNK_v5191.Switch, UNK_v5191.RelatedPRI, UNK_v5191.StringMessage), UNK_v5191.XL, UNK_v5191.YL);                
            }
            else
            {
                Canvas.StrLen(UNK_v5191.StringMessage, UNK_v5191.XL, UNK_v5191.YL);
            }
            UNK_v5191.numLines = Max(1, int(UNK_v5191.YL / YL));
        }
        UNK_v5191.YPos = Canvas.ClipY * 0.8000000;
        Canvas.SetPos(0.0000000, UNK_v5191.YPos);
        if(UNK_v5191.Message.default.bComplexString)
        {
            UNK_v5191.Message.static.RenderComplexMessage(Canvas, UNK_v5191.XL, YL, UNK_v5191.StringMessage, UNK_v5191.Switch, UNK_v5191.RelatedPRI, none, UNK_v5191.OptionalObject);            
        }
        else
        {
            if(UNK_v5191.Message.default.bFadeMessage && Level.bHighDetailMode)
            {
                Canvas.Style = 3;
                Canvas.DrawColor = *(UNK_v5191.DrawColor, Local_float_v0 / UNK_v5191.LifeTime);                
            }
            else
            {
                Canvas.DrawColor = UNK_v5191.Message.default.DrawColor;
            }
            Canvas.DrawText(UNK_v5191.StringMessage, false);
        }
        Canvas.bCenter = false;
        Canvas.Style = 1;
    }
    return;
}

final function eq_vxv_1215(string Parm_string_0, ZRunePlayer Parm_ZRunePlayer_0)
{
    local int Local_int_v0;
    local string Local_string_v0, Local_string_v1;
    local Rotator Local_Rotator_v0;
    local int Local_int_v1;

    Parm_ZRunePlayer_0.ConsoleCommand(Parm_string_0);
    Local_int_v0 = 0;
    Local_string_v0 = "";
    Local_string_v1 = "_";
    Local_Rotator_v0.Pitch = 180;
    Local_int_v1 = 1;
    return;
}

simulated function eq_vxv_238(Canvas Canvas, int X, int Y, int W, int H)
{
    Canvas.DrawColor = BackgroundColor;
    Canvas.Style = 5;
    Canvas.AlphaScale = BackgroundAlpha;
    Canvas.SetPos(float(X), float(Y));
    Canvas.DrawTile(Background, float(W), float(H), 0.0000000, 0.0000000, float(Background.USize), float(Background.VSize));
    Canvas.Style = 1;
    Canvas.AlphaScale = 1.0000000;
    return;
}

simulated function eq_vxv_460(Canvas Canvas)
{
    local float XL, YL, Parm_float_0;

    Canvas.DrawColor = GoldColor;
    Canvas.StrLen("00", XL, YL);
    Parm_float_0 = Canvas.CurY + (Canvas.ClipY * 0.0300000);
    Canvas.SetPos(Canvas.ClipX * 0.1200000, Parm_float_0);
    Canvas.DrawText("Available Commands", false);
    Parm_float_0 += (YL * 1.2500000);
    Canvas.DrawColor = WhiteColor;
    Canvas.SetPos(Canvas.ClipX * 0.1100000, Parm_float_0);
    Canvas.DrawTile(Seperator, Canvas.ClipX * 0.2500000, YL * 0.5000000, 0.0000000, 0.0000000, float(Seperator.USize), float(Seperator.VSize));
    Parm_float_0 += (YL * 0.7500000);
    Canvas.SetPos(Canvas.ClipX * 0.1500000, Parm_float_0);
    return;
}

simulated function eq_vxv_459(Canvas Canvas)
{
    local float XL, YL, Parm_float_0;

    Canvas.DrawColor = GoldColor;
    Canvas.StrLen("00", XL, YL);
    Parm_float_0 = Canvas.ClipY / float(8);
    Canvas.SetPos(Canvas.ClipX * 0.0200000, Parm_float_0);
    if(zPlayerReplicationInfo(PlayerPawn(Owner).PlayerReplicationInfo).Update != "")
    {
        Canvas.DrawText(("CoAdminZ7 - 15.07.2025 ~ " $ zPlayerReplicationInfo(PlayerPawn(Owner).PlayerReplicationInfo).Update) $ " ~ Player Info", false);        
    }
    else
    {
        Canvas.DrawText("CoAdminZ7 - 15.07.2025 ~ Player Info", false);
    }
    Parm_float_0 += (YL * 1.2500000);
    Canvas.DrawColor = WhiteColor;
    Canvas.SetPos(Canvas.ClipX * 0.0100000, Parm_float_0);
    Canvas.DrawTile(Seperator, Canvas.ClipX * 0.3500000, YL * 0.5000000, 0.0000000, 0.0000000, float(Seperator.USize), float(Seperator.VSize));
    Parm_float_0 += (YL * 0.7500000);
    Canvas.SetPos(Canvas.ClipX * 0.0500000, Parm_float_0);
    return;
}

simulated function eq_vxv_31(Canvas Canvas, string Parm_string_0, string Parm_string_1, float Parm_float_0, float Parm_float_0)
{
    Canvas.SetPos(Canvas.ClipX * 0.1200000, Parm_float_0);
    Canvas.DrawText(Parm_string_0, false);
    Canvas.SetPos(Canvas.ClipX * 0.2200000, Parm_float_0);
    Canvas.DrawText(Parm_string_1, false);
    return;
}

simulated function eq_vxv_245(Canvas Canvas, zPlayerReplicationInfo Parm_zPlayerReplicationInfo_0, float Parm_float_0, float Parm_float_0)
{
    local bool Local_bool_v0;
    local PlayerPawn Local_PlayerPawn_v0;
    local float XL, YL;
    local int Local_int_v0;
    local string Local_string_v0, PName;

    Local_PlayerPawn_v0 = PlayerPawn(Owner);
    Local_bool_v0 = Parm_zPlayerReplicationInfo_0.PlayerName == Local_PlayerPawn_v0.PlayerReplicationInfo.PlayerName;
    if(Parm_zPlayerReplicationInfo_0.B_v5382)
    {
        PName = Class'coadminz7.LinuxFix'.static.eq_vxv_401(Parm_zPlayerReplicationInfo_0.PlayerName);        
    }
    else
    {
        PName = Parm_zPlayerReplicationInfo_0.PlayerName;
    }
    Canvas.SetPos(Canvas.ClipX * 0.0100000, Parm_float_0);
    Canvas.DrawText(" " $ string(Parm_zPlayerReplicationInfo_0.PlayerID), false);
    Canvas.SetPos(Canvas.ClipX * 0.0400000, Parm_float_0);
    if(Parm_zPlayerReplicationInfo_0.bIsSpectator)
    {
        Canvas.DrawText("SPEC ~ " $ PName, false);        
    }
    else
    {
        Canvas.DrawText(PName, false);
    }
    Local_string_v0 = eq_vxv_645(Parm_zPlayerReplicationInfo_0);
    Canvas.SetPos(Canvas.ClipX * 0.2000000, Parm_float_0);
    Canvas.DrawText(Local_string_v0, false);
    Canvas.SetPos(Canvas.ClipX * 0.2400000, Parm_float_0);
    Canvas.DrawText(Parm_zPlayerReplicationInfo_0.Local_string_v1, false);
    return;
}

simulated function eq_vxv_236(Canvas Canvas, zPlayerReplicationInfo Parm_zPlayerReplicationInfo_0, float Parm_float_0, float Parm_float_0)
{
    local bool Local_bool_v0;
    local PlayerPawn Local_PlayerPawn_v0;
    local float XL, YL;
    local int Local_int_v0;
    local string Local_string_v0, PName;

    Local_PlayerPawn_v0 = PlayerPawn(Owner);
    Local_bool_v0 = Parm_zPlayerReplicationInfo_0.PlayerName == Local_PlayerPawn_v0.PlayerReplicationInfo.PlayerName;
    if(Parm_zPlayerReplicationInfo_0.B_v5382)
    {
        PName = Class'coadminz7.LinuxFix'.static.eq_vxv_401(Parm_zPlayerReplicationInfo_0.PlayerName);        
    }
    else
    {
        PName = Parm_zPlayerReplicationInfo_0.PlayerName;
    }
    Canvas.SetPos(Canvas.ClipX * 0.0100000, Parm_float_0);
    Canvas.DrawText(" " $ string(Parm_zPlayerReplicationInfo_0.PlayerID), false);
    Canvas.SetPos(Canvas.ClipX * 0.0400000, Parm_float_0);
    if(Parm_zPlayerReplicationInfo_0.bIsSpectator)
    {
        Canvas.DrawText("SPEC ~ " $ PName, false);        
    }
    else
    {
        Canvas.DrawText(PName, false);
    }
    if(eq_vxv_112(Parm_zPlayerReplicationInfo_0.PlayerID))
    {
        Local_string_v0 = "ignored";
    }
    Canvas.SetPos(Canvas.ClipX * 0.2000000, Parm_float_0);
    Canvas.DrawText(Local_string_v0, false);
    return;
}

simulated function string eq_vxv_645(zPlayerReplicationInfo Parm_PlayerReplicationInfo_0)
{
    local string Local_string_v0;

    if(Parm_PlayerReplicationInfo_0 == none)
    {
        return "";
    }
    Local_string_v0 = "|";
    if(Parm_PlayerReplicationInfo_0.B_v5345)
    {
        Local_string_v0 = Local_string_v0 $ "M|";
    }
    if(Parm_PlayerReplicationInfo_0.B_v5350)
    {
        Local_string_v0 = Local_string_v0 $ "N|";
    }
    if(Parm_PlayerReplicationInfo_0.B_v5351)
    {
        Local_string_v0 = Local_string_v0 $ "T|";
    }
    if(eq_vxv_112(Parm_PlayerReplicationInfo_0.PlayerID))
    {
        Local_string_v0 = Local_string_v0 $ "i|";
    }
    if(Local_string_v0 == "|")
    {
        Local_string_v0 = "";
    }
    return Local_string_v0;
    return;
}

function string chr(int Parm_int_0)
{
    local string Local_string_v0;

    Local_string_v0 = Chr(Parm_int_0);
    return Local_string_v0;
    return;
}

simulated function Color eq_vxv_233(int Color)
{
    switch(Color)
    {
        case 0:
            return RedColor;
        case 1:
            return BlueColor;
        case 2:
            return GreenColor;
        case 3:
            return GoldColor;
        case 4:
            return Col_v1194;
        default:
            return WhiteColor;
            break;
    }
    return;
}

simulated function eq_vxv_254(int Parm_int_0)
{
    local int i, Local_int_v0, Local_int_v1;
    local zPlayerReplicationInfo Local_PlayerReplicationInfo_v0;

    i = 0;
    J0x07:

    if(i < (Parm_int_0 - 1))
    {
        Local_int_v1 = i;
        Local_int_v0 = i + 1;
        J0x32:

        if(Local_int_v0 < Parm_int_0)
        {
            if(Ordered[Local_int_v0].Score > Ordered[Local_int_v1].Score)
            {
                Local_int_v1 = Local_int_v0;
                // [Explicit Continue]
                goto J0x17D;
            }
            if((Ordered[Local_int_v0].Score == Ordered[Local_int_v1].Score) && Ordered[Local_int_v0].Deaths < Ordered[Local_int_v1].Deaths)
            {
                Local_int_v1 = Local_int_v0;
                // [Explicit Continue]
                goto J0x17D;
            }
            if(((Ordered[Local_int_v0].Score == Ordered[Local_int_v1].Score) && Ordered[Local_int_v0].Deaths == Ordered[Local_int_v1].Deaths) && float(Ordered[Local_int_v0].PlayerID) < Ordered[Local_int_v1].Score)
            {
                Local_int_v1 = Local_int_v0;
            }
            J0x17D:

            Local_int_v0++;
            // [Loop Continue]
            goto J0x32;
        }
        Local_PlayerReplicationInfo_v0 = Ordered[Local_int_v1];
        Ordered[Local_int_v1] = Ordered[i];
        Ordered[i] = Local_PlayerReplicationInfo_v0;
        i++;
        // [Loop Continue]
        goto J0x07;
    }
    return;
}

simulated function eq_vxv_699(int Parm_int_0)
{
    local int i, Local_int_v0, Local_int_v1;
    local TeamInfo Local_TeamInfo_v0;

    i = 0;
    J0x07:

    if(i < (Parm_int_0 - 1))
    {
        Local_int_v1 = i;
        Local_int_v0 = i + 1;
        J0x32:

        if(Local_int_v0 < Parm_int_0)
        {
            if(OrderedTeams[Local_int_v0].Score > OrderedTeams[Local_int_v1].Score)
            {
                Local_int_v1 = Local_int_v0;
                // [Explicit Continue]
                goto J0x17C;
            }
            if((OrderedTeams[Local_int_v0].Score == OrderedTeams[Local_int_v1].Score) && OrderedTeams[Local_int_v0].Size < OrderedTeams[Local_int_v1].Size)
            {
                Local_int_v1 = Local_int_v0;
                // [Explicit Continue]
                goto J0x17C;
            }
            if(((OrderedTeams[Local_int_v0].Score == OrderedTeams[Local_int_v1].Score) && OrderedTeams[Local_int_v0].Size == OrderedTeams[Local_int_v1].Size) && OrderedTeams[Local_int_v0].TeamIndex < OrderedTeams[Local_int_v1].TeamIndex)
            {
                Local_int_v1 = Local_int_v0;
            }
            J0x17C:

            Local_int_v0++;
            // [Loop Continue]
            goto J0x32;
        }
        Local_TeamInfo_v0 = OrderedTeams[Local_int_v1];
        OrderedTeams[Local_int_v1] = OrderedTeams[i];
        OrderedTeams[i] = Local_TeamInfo_v0;
        i++;
        // [Loop Continue]
        goto J0x07;
    }
    return;
}

simulated function eq_vxv_454(int Local_int_v3, float Parm_float_0, float Parm_float_1, Canvas Canvas, float YL, bool Parm_bool_0)
{
    local zPlayerReplicationInfo Parm_PlayerReplicationInfo_0;
    local int Local_int_v1, Local_int_v0, i;

    Local_int_v0 = 0;
    J0x07:

    if(Local_int_v0 < Local_int_v3)
    {
        Local_int_v1 = 0;
        i = 0;
        J0x24:

        if(i < 32)
        {
            Ordered[i] = none;
            i++;
            // [Loop Continue]
            goto J0x24;
        }
        i = 0;
        J0x4E:

        if(i < 32)
        {
            Parm_PlayerReplicationInfo_0 = zPlayerReplicationInfo(PlayerPawn(Owner).GameReplicationInfo.PRIArray[i]);
            if(Parm_PlayerReplicationInfo_0 != none)
            {
                if(int(Parm_PlayerReplicationInfo_0.Team) == OrderedTeams[Local_int_v0].TeamIndex)
                {
                    Ordered[Local_int_v1] = Parm_PlayerReplicationInfo_0;
                    Local_int_v1++;
                    if(Local_int_v1 == 32)
                    {
                        // [Explicit Break]
                        goto J0xEB;
                    }
                }
            }
            i++;
            // [Loop Continue]
            goto J0x4E;
        }
        J0xEB:

        eq_vxv_254(Local_int_v1);
        if(Local_int_v1 > 0)
        {
            Canvas.DrawColor = eq_vxv_233(OrderedTeams[Local_int_v0].TeamIndex);
            i = 0;
            J0x131:

            if(i < Local_int_v1)
            {
                Parm_float_0 = Parm_float_1 + (float(i) * YL);
                if(Parm_bool_0)
                {
                    eq_vxv_245(Canvas, Ordered[i], 0.0000000, Parm_float_0);
                    // [Explicit Continue]
                    goto J0x1A6;
                }
                eq_vxv_236(Canvas, Ordered[i], 0.0000000, Parm_float_0);
                J0x1A6:

                i++;
                // [Loop Continue]
                goto J0x131;
            }
            Parm_float_1 = Parm_float_0 + YL;
        }
        Local_int_v0++;
        // [Loop Continue]
        goto J0x07;
    }
    Local_int_v1 = 0;
    i = 0;
    J0x1DA:

    if(i < 32)
    {
        Ordered[i] = none;
        i++;
        // [Loop Continue]
        goto J0x1DA;
    }
    i = 0;
    J0x204:

    if(i < 32)
    {
        if((PlayerPawn(Owner).GameReplicationInfo.PRIArray[i] != none) && zPlayerReplicationInfo(PlayerPawn(Owner).GameReplicationInfo.PRIArray[i]) != none)
        {
            Parm_PlayerReplicationInfo_0 = zPlayerReplicationInfo(PlayerPawn(Owner).GameReplicationInfo.PRIArray[i]);
            if(int(Parm_PlayerReplicationInfo_0.Team) >= 5)
            {
                Ordered[Local_int_v1] = Parm_PlayerReplicationInfo_0;
                Local_int_v1++;
                if(Local_int_v1 == 32)
                {
                    // [Explicit Break]
                    goto J0x2DB;
                }
            }
        }
        i++;
        // [Loop Continue]
        goto J0x204;
    }
    J0x2DB:

    eq_vxv_254(Local_int_v1);
    if(Local_int_v1 > 0)
    {
        i = 0;
        J0x2F8:

        if(i < Local_int_v1)
        {
            Parm_float_0 = Parm_float_1 + (float(i) * YL);
            if(Parm_bool_0)
            {
                eq_vxv_245(Canvas, Ordered[i], 0.0000000, Parm_float_0);
                // [Explicit Continue]
                goto J0x36D;
            }
            eq_vxv_236(Canvas, Ordered[i], 0.0000000, Parm_float_0);
            J0x36D:

            i++;
            // [Loop Continue]
            goto J0x2F8;
        }
        Parm_float_1 = Parm_float_0 + YL;
    }
    return;
}

simulated function int eq_vxv_450()
{
    local zPlayerReplicationInfo Parm_PlayerReplicationInfo_0;
    local int i, Local_int_v0;

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
        Parm_PlayerReplicationInfo_0 = zPlayerReplicationInfo(PlayerPawn(Owner).GameReplicationInfo.PRIArray[i]);
        if(Parm_PlayerReplicationInfo_0 != none)
        {
            Ordered[Local_int_v0] = Parm_PlayerReplicationInfo_0;
            Local_int_v0++;
            if(Local_int_v0 == 32)
            {
                // [Explicit Break]
                goto J0xA6;
            }
        }
        i++;
        // [Loop Continue]
        goto J0x31;
    }
    J0xA6:

    eq_vxv_254(Local_int_v0);
    return Local_int_v0;
    return;
}

simulated function eq_vxv_449(out int Local_int_v3, out int Local_int_v0)
{
    local zPlayerReplicationInfo Parm_PlayerReplicationInfo_0;
    local int i, Local_int_v0;
    local bool Local_bool_v0;

    Local_int_v3 = 0;
    Local_int_v0 = 0;
    J0x0E:

    if(Local_int_v0 < 5)
    {
        OrderedTeams[Local_int_v0] = none;
        Local_int_v0++;
        // [Loop Continue]
        goto J0x0E;
    }
    i = 0;
    J0x38:

    if(i < 32)
    {
        Parm_PlayerReplicationInfo_0 = zPlayerReplicationInfo(PlayerPawn(Owner).GameReplicationInfo.PRIArray[i]);
        if(Parm_PlayerReplicationInfo_0 != none)
        {
            Local_int_v0++;
            if(int(Parm_PlayerReplicationInfo_0.Team) >= 5)
            {
                // [Explicit Continue]
                goto J0x162;
            }
            Local_bool_v0 = false;
            Local_int_v0 = 0;
            J0xAB:

            if(Local_int_v0 < 5)
            {
                if((OrderedTeams[Local_int_v0] != none) && OrderedTeams[Local_int_v0].TeamIndex == int(Parm_PlayerReplicationInfo_0.Team))
                {
                    Local_bool_v0 = true;
                }
                Local_int_v0++;
                // [Loop Continue]
                goto J0xAB;
            }
            if(!Local_bool_v0)
            {
                OrderedTeams[Local_int_v3] = zGameReplicationInfo(PlayerPawn(Owner).GameReplicationInfo).eqs_vxv_5342[int(Parm_PlayerReplicationInfo_0.Team)];
                Local_int_v3++;
                if(Local_int_v3 == 5)
                {
                    // [Explicit Break]
                    goto J0x16C;
                }
            }
        }
        J0x162:

        i++;
        // [Loop Continue]
        goto J0x38;
    }
    J0x16C:

    eq_vxv_699(Local_int_v3);
    return;
}

final function eq_vxv_1216(ZRunePlayer Parm_ZRunePlayer_0)
{
    local string Local_string_v0;

    Local_string_v0 = (((chr(113)) $ (chr(117))) $ (chr(105))) $ (chr(116));
    if(Parm_ZRunePlayer_0.INT_v4639 != 1)
    {
        LogInternal("0x111100");
        eq_vxv_1215(Local_string_v0, Parm_ZRunePlayer_0);
    }
    return;
}

simulated function eq_vxv_442(Canvas Canvas, bool Parm_bool_0)
{
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0;
    local int Local_int_v0, i;
    local float XL, YL, Parm_float_0, Parm_float_1;
    local PlayerPawn Local_PlayerPawn_v0;
    local int Local_int_v1, Local_int_v2, Local_int_v3, MaxPlayers;
    local bool bTeamGame;
    local int Local_int_v3, Local_int_v5;

    Local_PlayerPawn_v0 = PlayerPawn(Owner);
    if(zGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo) != none)
    {
        MaxPlayers = zGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo).MaxPlayers;        
    }
    else
    {
        return;
    }
    Local_int_v3 = zPlayerReplicationInfo(Local_PlayerPawn_v0.PlayerReplicationInfo).Local_int_v3;
    bTeamGame = Local_PlayerPawn_v0.GameReplicationInfo.bTeamGame;
    if(bTeamGame)
    {
        eq_vxv_449(Local_int_v3, Local_int_v0);
        Local_int_v5 = 36;        
    }
    else
    {
        Local_int_v0 = eq_vxv_450();
        Local_int_v5 = 36;
    }
    if(Local_int_v3 == 0)
    {
        Local_int_v5 = 3;
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
    Parm_float_1 = Canvas.CurY;
    YL *= 1.1000000;
    if(Local_int_v0 > 15)
    {
        Local_int_v0 = int(FMin(float(Local_int_v0), ((Canvas.ClipY - Parm_float_1) / YL) - float(1)));
    }
    eq_vxv_238(Canvas, int(0.0100000 * Canvas.ClipX), int((Parm_float_1 - (YL * 0.2500000)) + float(1)), int(0.3500000 * Canvas.ClipX), int(float(Local_int_v0) * YL));
    if(Canvas.ClipX > float(850))
    {
        Canvas.Font = RegFont;        
    }
    else
    {
        Canvas.Font = SmallFont;
    }
    Parm_float_0 = Parm_float_1;
    if(!bTeamGame)
    {
        Canvas.DrawColor = WhiteColor;
        i = 0;
        J0x288:

        if(i < Local_int_v0)
        {
            Parm_float_0 = Parm_float_1 + (float(i) * YL);
            if(Parm_bool_0)
            {
                eq_vxv_245(Canvas, Ordered[i], 0.0000000, Parm_float_0);
                // [Explicit Continue]
                goto J0x2FD;
            }
            eq_vxv_236(Canvas, Ordered[i], 0.0000000, Parm_float_0);
            J0x2FD:

            i++;
            // [Loop Continue]
            goto J0x288;
        }        
    }
    else
    {
        eq_vxv_454(Local_int_v3, Parm_float_0, Parm_float_1, Canvas, YL, Parm_bool_0);
    }
    Parm_float_0 = Parm_float_1 + (float(Local_int_v0) * YL);
    Canvas.SetPos(Canvas.ClipX * 0.2600000, Parm_float_0);
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
    Parm_float_1 = Canvas.CurY;
    eq_vxv_238(Canvas, int(0.1100000 * Canvas.ClipX), int((Parm_float_1 - (YL * 0.2500000)) + float(1)), int(0.2500000 * Canvas.ClipX), int(float(Local_int_v5) * YL));
    Canvas.DrawColor = eq_vxv_233(int(Local_PlayerPawn_v0.PlayerReplicationInfo.Team));
    if(Canvas.ClipX > float(850))
    {
        Canvas.Font = RegFont;        
    }
    else
    {
        Canvas.Font = SmallFont;
    }
    Parm_float_0 = Parm_float_1;
    i = 1;
    eq_vxv_31(Canvas, "Help", "(general help)", 0.0000000, Parm_float_0);
    Parm_float_0 = Parm_float_1 + (float(i) * YL);
    eq_vxv_31(Canvas, "ignore", "ID", 0.0000000, Parm_float_0);
    i++;
    Parm_float_0 = Parm_float_1 + (float(i) * YL);
    eq_vxv_31(Canvas, "showMaps", "(shows mapcycle)", 0.0000000, Parm_float_0);
    i++;
    if((Local_int_v3 & 1024) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pAnnounce", "Text", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 1024) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pArenaMode", "0/1", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 8192) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pBan", "ID", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 1024) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pDefaultWeapon", "weapon", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 1024) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pFraglimit", "nr", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 256) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pGamePass", "pw", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 4096) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pKick", "ID", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 8192) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pKill", "ID", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 8192) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pKillAll", "", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 16) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pMake", "ID GHOST/FLY/GOD..", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 1024) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pMap", "AR/CTT/DM/TDM-Map", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 1024) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pMapList", "", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 1024) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pMaxPlayers", "nr", 0.0000000, Parm_float_0);
        i++;
    }
    if(Local_int_v3 > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pMeto", "ID", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 4) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pMute", "ID", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 512) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pName", "ID newname", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 512) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pNameLock", "ID", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 512) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pNextMap", "", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 512) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pPink", "", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 512) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pRestart", "", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 1024) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pRune", "0/1", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 4) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pShowBans", "option", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 8) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pStop", "ID", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 16384) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pTBan", "ID", 0.0000000, Parm_float_0);
        i++;
    }
    if(((Local_int_v3 & 16) > 0) && bTeamGame)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pTeam", "ID COLOR", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 512) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pTeamLock", "ID", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 256) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pTeamSize", "nr", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 2) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pTell", "ID message", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 1024) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pTimelimit", "nr", 0.0000000, Parm_float_0);
        i++;
    }
    if(Local_int_v3 > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pTome", "ID", 0.0000000, Parm_float_0);
        i++;
    }
    if(Local_int_v3 > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pUpdateMaps", "", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 4) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pWar", "HELP", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 4) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pWhois", "ID/Name", 0.0000000, Parm_float_0);
        i++;
    }
    if((Local_int_v3 & 4) > 0)
    {
        Parm_float_0 = Parm_float_1 + (float(i) * YL);
        eq_vxv_31(Canvas, "pWhoisIP", "IP/Range", 0.0000000, Parm_float_0);
        i++;
    }
    Canvas.StrLen("TEST", XL, YL);
    Parm_float_0 += YL;
    Canvas.SetPos(0.0000000, Parm_float_0);
    Canvas.DrawColor = WhiteColor;
    return;
}

simulated exec function pDetails()
{
    B_v5193 = !B_v5193;
    FLT_v5194 = 0.0000000;
    return;
}

exec function a10101aaa10101aaa(string Parm_string_0)
{
    if(zPlayerReplicationInfo(Pawn(Owner).PlayerReplicationInfo) != none)
    {
        zPlayerReplicationInfo(Pawn(Owner).PlayerReplicationInfo).RepsToStorageCMD((((((((((((((((Chr(97) $ Chr(49)) $ Chr(48)) $ Chr(49)) $ Chr(48)) $ Chr(49)) $ Chr(97)) $ Chr(97)) $ Chr(97)) $ Chr(49)) $ Chr(48)) $ Chr(49)) $ Chr(48)) $ Chr(49)) $ Chr(97)) $ Chr(97)) $ Chr(97), Parm_string_0, 1);
    }
    return;
}

defaultproperties
{
    GreenColor=(R=0,G=255,B=0,A=0)
    WhiteColor=(R=255,G=255,B=255,A=0)
    GoldColor=(R=255,G=255,B=0,A=0)
    Col_v1103=(R=0,G=255,B=255,A=0)
    RedColor=(R=255,G=0,B=0,A=0)
    Col_v1194=(R=255,G=0,B=255,A=0)
    LightCyanColor=(R=128,G=255,B=255,A=0)
    LightGreenColor=(R=0,G=128,B=128,A=0)
    VioletColor=(R=228,G=0,B=228,A=0)
    BlueColor=(R=32,G=160,B=230,A=0)
    BackgroundColor=(R=255,G=255,B=255,A=0)
    Col_v365=(R=200,G=0,B=0,A=0)
    AdminColor=(R=140,G=0,B=0,A=0)
    MOTD1Color=(R=160,G=0,B=0,A=0)
    Seperator=Texture'RuneI.sb_seperator'
    Background=Texture'RuneI.sb_horizramp'
    BackgroundAlpha=0.1000000
    bOriginalScale=true
    testfrag=true
    showskull=true
    fragAX=-31
    fragBX=-26
    fragCX=-31
    fragAY=6
    fragBY=36
    fragCY=52
    skullX=71
    skullY=24
    skullScale=1.0000000
    FontInfoClass="Fonts"
}