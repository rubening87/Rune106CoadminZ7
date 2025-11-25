class zHeadballHUD extends zHUD
    config(User);

var() private float eq_vxv_5307;
var Texture TXR_v706;

function speed(Pawn Pawn)
{
    if(B_v5200)
    {
        eq_vxv_5307 = zHeadBallGameReplicationInfo(PlayerPawn(Owner).GameReplicationInfo).GameSpeed;
        if(eq_vxv_5307 < 0.0000010)
        {            
        }
        else
        {
            PlayerPawn(Owner).Level.TimeDilation = eq_vxv_5307;
        }        
    }
    else
    {
        eq_vxv_5307 = zHeadBallGameReplicationInfo(PlayerPawn(Owner).GameReplicationInfo).GameSpeed;
        if(eq_vxv_5307 != PlayerPawn(Owner).Level.TimeDilation)
        {
            PlayerPawn(Owner).Level.TimeDilation = eq_vxv_5307;
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
    local int Local_int_v1;
    local HeadBallGameReplicationInfo Local_HeadBallGameReplicationInfo_v0;

    Local_PlayerPawn_v0 = PlayerPawn(Owner);
    if((Local_PlayerPawn_v0 == none) || Local_PlayerPawn_v0.GameReplicationInfo == none)
    {
        return;
    }
    Local_HeadBallGameReplicationInfo_v0 = zHeadBallGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo);
    if(Local_HeadBallGameReplicationInfo_v0 == none)
    {
        return;
    }
    if(!Local_HeadBallGameReplicationInfo_v0.bGameStarted)
    {
        Local_int_v1 = Local_HeadBallGameReplicationInfo_v0.RemainingCountdown;
        Canvas.Font = Canvas.LargeFont;
        if(Local_int_v1 <= 5)
        {
            Canvas.Setcolor(255.0000000, 0.0000000, 0.0000000);
        }
        Canvas.DrawTextRightJustify(":" $ (TwoDigitString(Local_int_v1)), X, Y);
        Canvas.Setcolor(255.0000000, 255.0000000, 255.0000000);
        return;
    }
    if(int(Local_PlayerPawn_v0.PlayerReplicationInfo.Team) < 4)
    {
        Score = int(RuneGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo).Teams[int(Local_PlayerPawn_v0.PlayerReplicationInfo.Team)].Score);
    }
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
    Canvas.Font = Canvas.LargeFont;
    Canvas.DrawTextRightJustify(Text, X, Y);
    Canvas.Setcolor(255.0000000, 255.0000000, 255.0000000);
    return;
}

simulated function PostRender(Canvas Canvas)
{
    local PlayerPawn Local_PlayerPawn_v0;
    local zHeadBallGameReplicationInfo Local_zHeadBallGameReplicationInfo_v0;
    local int X, Y, i;

    super.PostRender(Canvas);
    Local_PlayerPawn_v0 = PlayerPawn(Owner);
    if(((((Local_PlayerPawn_v0 == none) || Local_PlayerPawn_v0.RendMap == 0) || HudMode == 0) || Local_PlayerPawn_v0.bShowMenu) || Local_PlayerPawn_v0.bShowScores)
    {
        return;
    }
    eqlp_vxv_1271(Canvas);
    return;
}

function eqlp_vxv_1271(Canvas Canvas)
{
    local PlayerPawn Local_PlayerPawn_v0;
    local zHeadBallGameReplicationInfo Local_zHeadBallGameReplicationInfo_v0;
    local int X, Y, i, CurY;
    local float Local_float_v0;

    Local_PlayerPawn_v0 = PlayerPawn(Owner);
    Local_zHeadBallGameReplicationInfo_v0 = zHeadBallGameReplicationInfo(Local_PlayerPawn_v0.GameReplicationInfo);
    if(Local_zHeadBallGameReplicationInfo_v0 == none)
    {
        return;
    }
    Local_float_v0 = HudScale * 0.6000000;
    CurY = int(Canvas.ClipY * 0.1000000);
    Canvas.Font = Canvas.SmallFont;
    Canvas.Setcolor(255.0000000, 255.0000000, 255.0000000);
    i = 0;
    J0xA6:

    if(i < 4)
    {
        if(int(Local_zHeadBallGameReplicationInfo_v0.eq_vxv_4120[i]) != 0)
        {
            Canvas.SetPos(Canvas.ClipX * 0.9000000, float(CurY));
            SetHudFade(Canvas, 0.5000000);
            Canvas.DrawIcon(eq_vxv_706[i], Local_float_v0);
            Canvas.Style = 1;
            Canvas.DrawColor.R = byte(255);
            Canvas.DrawColor.G = byte(255);
            Canvas.DrawColor.B = byte(255);
            Canvas.SetPos((Canvas.ClipX * 0.9000000) + ((float(eq_vxv_706[i].VSize) * Local_float_v0) * 0.4000000), float(CurY) + ((float(eq_vxv_706[i].VSize) * Local_float_v0) * 0.5000000));
            if((int(Local_zHeadBallGameReplicationInfo_v0.eq_vxv_4121[i]) == 0) && !Local_zHeadBallGameReplicationInfo_v0.bGameStarted)
            {
                Canvas.DrawText("--");                
            }
            else
            {
                Canvas.DrawText(TwoDigitString(int(Local_zHeadBallGameReplicationInfo_v0.Teams[i].Score)));
            }
            CurY += int((float(eq_vxv_706[i].VSize) * Local_float_v0) * 1.2000000);
        }
        i++;
        // [Loop Continue]
        goto J0xA6;
    }
    return;
}

defaultproperties
{
    eq_vxv_706(0)=Texture'Headball.ScoreRed'
    eq_vxv_706(1)=Texture'Headball.ScoreBlue'
    eq_vxv_706(2)=Texture'Headball.ScoreGreen'
    eq_vxv_706(3)=Texture'Headball.ScoreGold'
}