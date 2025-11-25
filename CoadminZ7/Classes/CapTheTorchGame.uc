class CapTheTorchGame extends CapTheTorchGame
    config;

var int protectedTeam;
var string EnterPassword;
var bool B_v3962;
var string IpTempBanned;
var zStorage G_ZStrg1;
var bool bFirstBlood;
var PlayerPawn Player;
var string Parm_string_1;
var bool damageStats;
var string STR_v3845;
var int INT_v5497;
var bool B_v5494;
var int INT_v4473;
var int INT_v5493;
var bool B_v5495;
var int INT_v4658;
var Sound UNK_v5491;
var Sound UNK_v5549;
var Sound UNK_v5550;
var int INT_v5498;
var rIRC UNK_v5501;
var FeedComponent FComp_v5502;

function NotifySpree(Pawn P0, int Parm_int_0)
{
    P0.PlayerReplicationInfo.MaxSpree = Max(Parm_int_0, P0.PlayerReplicationInfo.MaxSpree);
    BroadcastMessage((string(Parm_int_0) @ SpreeMsg) @ P0.PlayerReplicationInfo.PlayerName, false, 'DeathMessage');
    return;
}

function EndSpree(Pawn P0, Pawn Parm_Pawn_1)
{
    if(!Parm_Pawn_1.bIsPlayer)
    {
        return;
    }
    if((P0 != none) && P0.bIsPlayer)
    {
        BroadcastMessage(((P0.PlayerReplicationInfo.PlayerName @ SpreeEndMsg) @ Parm_Pawn_1.PlayerReplicationInfo.PlayerName) $ SpreeEndTrailer, false, 'DeathMessage');
    }
    return;
}

function PlayTeleportEffect(Actor Parm_Actor_0, bool Parm_bool_0, bool Parm_bool_1)
{
    local Actor Local_Actor_v0;

    if(Parm_Actor_0.bIsPawn && Parm_Actor_0.Skeletal != none)
    {
        if(Parm_bool_1)
        {
            Local_Actor_v0 = Spawn(Class'coadminz7.zRespawnFire', Parm_Actor_0,, Parm_Actor_0.Location, Parm_Actor_0.Rotation);
            Local_Actor_v0.PlaySound(Sound'OtherSnd.Respawns.respawn02',, 10.0000000);
        }
    }
    return;
}

function bool ShouldRespawn(Actor Parm_Pawn_1)
{
    if(Parm_Pawn_1.IsA('LimbWeapon'))
    {
        return false;
    }
    return super(RuneMultiPlayer).ShouldRespawn(Parm_Pawn_1);
    return;
}

function bool IsRelevant(Actor Parm_Pawn_1)
{
    local Actor A;

    if(Parm_Pawn_1.IsA('SpecialEventRune') && SpecialEventRune(Parm_Pawn_1).Msg != "")
    {
        A = Spawn(Class'coadminz7.z3DText',, Parm_Pawn_1.Tag, Parm_Pawn_1.Location, Parm_Pawn_1.Rotation);
        z3DText(A).Msg = SpecialEventRune(Parm_Pawn_1).Msg;
        z3DText(A).MsgColor = SpecialEventRune(Parm_Pawn_1).MsgColor;
        z3DText(A).MsgLifeTime = SpecialEventRune(Parm_Pawn_1).MsgLifeTime;
        z3DText(A).bMsgFade = SpecialEventRune(Parm_Pawn_1).bMsgFade;
        z3DText(A).MsgFont = SpecialEventRune(Parm_Pawn_1).MsgFont;
        z3DText(A).MsgFadeTime = SpecialEventRune(Parm_Pawn_1).MsgFadeTime;
        z3DText(A).bAlwaysRelevant = true;
        LogInternal("3dtext added");
    }
    if(Parm_Pawn_1.IsA('Inventory'))
    {
        if(Weapon(Parm_Pawn_1) != none)
        {
            Weapon(Parm_Pawn_1).SwipeClass = none;
        }
        if(Parm_Pawn_1.IsA('DwarfBattleSword'))
        {
            DwarfBattleSword(Parm_Pawn_1).SkelGroupSkins[1] = Texture'weapons.battleswordsword';
            DwarfBattleSword(Parm_Pawn_1).SkelGroupFlags[1] = 2;
        }
        if(Parm_Pawn_1.IsA('LimbWeapon'))
        {
            LimbWeapon(Parm_Pawn_1).A_Idle = 'H3_idle';
            LimbWeapon(Parm_Pawn_1).A_AttackA = 'H3_attackA';
            LimbWeapon(Parm_Pawn_1).A_AttackAReturn = 'H3_attackAreturn';
            LimbWeapon(Parm_Pawn_1).A_AttackB = 'H3_attackB';
            LimbWeapon(Parm_Pawn_1).A_AttackBReturn = 'H3_attackBreturn';
            LimbWeapon(Parm_Pawn_1).A_AttackC = 'H3_attackC';
            LimbWeapon(Parm_Pawn_1).A_AttackCReturn = 'H3_attackCreturn';
            LimbWeapon(Parm_Pawn_1).A_AttackStandA = 'H3_StandingattackA';
            LimbWeapon(Parm_Pawn_1).A_AttackStandAReturn = 'H3_StandingattackAReturn';
            LimbWeapon(Parm_Pawn_1).A_AttackStandB = 'H3_StandingattackB';
            LimbWeapon(Parm_Pawn_1).A_AttackStandBReturn = 'H3_StandingattackBReturn';
            LimbWeapon(Parm_Pawn_1).A_AttackBackupA = 'H3_BackupAttackA';
            LimbWeapon(Parm_Pawn_1).A_AttackBackupAReturn = 'H3_BackupAttackAReturn';
            LimbWeapon(Parm_Pawn_1).A_AttackBackupB = 'H3_BackupAttackB';
            LimbWeapon(Parm_Pawn_1).A_AttackBackupBReturn = 'H3_BackupAttackBReturn';
            LimbWeapon(Parm_Pawn_1).A_AttackStrafeRight = 'S1_StrafeRightAttack';
            LimbWeapon(Parm_Pawn_1).A_AttackStrafeLeft = 'S1_StrafeLeftAttack';
            LimbWeapon(Parm_Pawn_1).A_Throw = 'H3_throw';
            LimbWeapon(Parm_Pawn_1).A_Powerup = 's2_powerup';
            LimbWeapon(Parm_Pawn_1).A_PainFront = 'H3_painFront';
            LimbWeapon(Parm_Pawn_1).A_PainRight = 'S1_painBack';
            LimbWeapon(Parm_Pawn_1).A_Taunt = 'H3_taunt';
            LimbWeapon(Parm_Pawn_1).A_PumpTrigger = 'H3_PumpTrigger';
            LimbWeapon(Parm_Pawn_1).A_LeverTrigger = 'H3_LeverTrigger';
        }
    }
    return super.IsRelevant(Parm_Pawn_1);
    return;
}

event BroadcastMessage(coerce string Msg, optional bool bBeep, optional name Type)
{
    local Pawn Parm_PlayerPawn_0;
    local string Local_string_v0;

    Local_string_v0 = Msg;
    if(Type == 'None')
    {
        Type = 'Event';
    }
    if(Level.Game.AllowsBroadcast(self, Len(Msg)))
    {
        Parm_PlayerPawn_0 = Level.PawnList;
        J0x5C:

        if(Parm_PlayerPawn_0 != none)
        {
            if(Parm_PlayerPawn_0.bIsPlayer || Parm_PlayerPawn_0.IsA('Spectator'))
            {
                if(G_ZStrg1.Linux)
                {
                    Local_string_v0 = Class'coadminz7.LinuxFix'.static.eq_vxv_304(Msg);
                }
                Parm_PlayerPawn_0.ClientMessage(Local_string_v0, Type, bBeep);
            }
            Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
            // [Loop Continue]
            goto J0x5C;
        }
    }
    return;
}

function LogCoAdminZEvent(string Text, optional string Type)
{
    if(G_ZStrg1 != none)
    {
        G_ZStrg1.LogCoAdminZEvent(Text, Type);
    }
    return;
}

function bool ContainsString(string Parm_string_0, string Parm_string_1)
{
    if(InStr(Caps(Parm_string_0), Caps(Parm_string_1)) > -1)
    {
        return true;        
    }
    else
    {
        return false;
    }
    return;
}

function ProcessServerTravel(string URL, bool Parm_bool_0)
{
    super(GameInfo).ProcessServerTravel(URL, Parm_bool_0);
    return;
}

function NavigationPoint FindPlayerStart(Pawn Player, optional byte Local_byte_v0, optional string eq_vxv_4396)
{
    local PlayerStart Local_PlayerStart_v0, Local_PlayerStart_v1, Local_PlayerStart_v2, Parm_PlayerPawn_0;
    local float Score[16], Local_float_v0, Local_float_v1;
    local Pawn LocalP0;
    local int i, Parm_int_0;
    local Teleporter Local_Teleporter_v0;
    local NavigationPoint Local_NavigationPoint_v0;
    local byte Team;

    if((Player != none) && Player.PlayerReplicationInfo != none)
    {
        Team = Player.PlayerReplicationInfo.Team;        
    }
    else
    {
        Team = Local_byte_v0;
    }
    if(eq_vxv_4396 != "")
    {
        foreach AllActors(Class'Engine.Teleporter', Local_Teleporter_v0)
        {
            if(string(Local_Teleporter_v0.Tag) ~= eq_vxv_4396)
            {                
                return Local_Teleporter_v0;
            }            
        }        
    }
    if((int(Team) == 255) || ((int(Team) < MaxTeams) && int(Team) >= 0) && TeamSupported[int(Team)] == 0)
    {
        i = 0;
        J0xD2:

        if(i < MaxTeams)
        {
            if(TeamSupported[i] != 0)
            {
                Team = byte(i);
                // [Explicit Break]
                goto J0x10B;
            }
            i++;
            // [Loop Continue]
            goto J0xD2;
        }
    }
    J0x10B:

    Parm_int_0 = 0;
    foreach AllActors(Class'Engine.PlayerStart', Parm_PlayerPawn_0)
    {
        if(int(Team) == int(Parm_PlayerPawn_0.TeamNumber))
        {
            if(Parm_int_0 < 16)
            {
                Local_PlayerStart_v1[Parm_int_0] = Parm_PlayerPawn_0;                
            }
            else
            {
                if(Rand(Parm_int_0) < 16)
                {
                    Local_PlayerStart_v1[Rand(16)] = Parm_PlayerPawn_0;
                }
            }
            Parm_int_0++;
        }        
    }    
    if(Parm_int_0 == 0)
    {
        if(int(Local_byte_v0) != 255)
        {
            LogInternal("Didn't find any player starts in list for team" @ string(Local_byte_v0), 'PlayerStart');
        }
        foreach AllActors(Class'Engine.PlayerStart', Local_PlayerStart_v0)
        {
            if(Parm_int_0 < 16)
            {
                Local_PlayerStart_v1[Parm_int_0] = Local_PlayerStart_v0;                
            }
            else
            {
                if(Rand(Parm_int_0) < 16)
                {
                    Local_PlayerStart_v1[Rand(16)] = Local_PlayerStart_v0;
                }
            }
            Parm_int_0++;            
        }        
    }
    if(Parm_int_0 > 16)
    {
        Parm_int_0 = 16;        
    }
    else
    {
        if(Parm_int_0 == 0)
        {
            return none;
        }
    }
    i = 0;
    J0x25C:

    if(i < Parm_int_0)
    {
        if(Local_PlayerStart_v1[i] == LastStartSpot)
        {
            Score[i] = -6000.0000000;
            // [Explicit Continue]
            goto J0x2A9;
        }
        Score[i] = 4000.0000000 * FRand();
        J0x2A9:

        i++;
        // [Loop Continue]
        goto J0x25C;
    }
    LocalP0 = Level.PawnList;
    J0x2C7:

    if(LocalP0 != none)
    {
        
        if((LocalP0.bIsPlayer && LocalP0.Health > 0) && !LocalP0.IsA('Spectator'))
        {
            i = 0;
            J0x319:

            
            if(i < Parm_int_0)
            {
                
                if(LocalP0.Region.Zone == Local_PlayerStart_v1[i].Region.Zone)
                {
                    Score[i] -= float(1500);
                    Local_float_v1 = VSize(LocalP0.Location - Local_PlayerStart_v1[i].Location);
                    if(Local_float_v1 < (float(2) * (CollisionRadius + CollisionHeight)))
                    {
                        Score[i] -= 1000000.0000000;
                        // [Explicit Continue]
                        goto J0x443;
                    }
                    
                    if(((Local_float_v1 < float(2000)) && int(Local_byte_v0) != int(LocalP0.PlayerReplicationInfo.Team)) && FastTrace(Local_PlayerStart_v1[i].Location, LocalP0.Location))
                    {
                        Score[i] -= (10000.0000000 - Local_float_v1);
                    }
                }
                J0x443:

                i++;
                // [Loop Continue]
                goto J0x319;
            }
        }
        LocalP0 = LocalP0.nextPawn;
        // [Loop Continue]
        goto J0x2C7;
    }
    Local_float_v0 = Score[0];
    Local_PlayerStart_v2 = Local_PlayerStart_v1[0];
    i = 1;
    J0x485:

    if(i < Parm_int_0)
    {
        if(Score[i] > Local_float_v0)
        {
            Local_float_v0 = Score[i];
            Local_PlayerStart_v2 = Local_PlayerStart_v1[i];
        }
        i++;
        // [Loop Continue]
        goto J0x485;
    }
    LastStartSpot = Local_PlayerStart_v2;
    return Local_PlayerStart_v2;
    return;
}

function bool ChangeTeam(Pawn Parm_Pawn_1, int Parm_int_0)
{
    local int i, Local_int_v0;
    local Pawn P0;
    local TeamInfo Local_TeamInfo_v0, Local_TeamInfo_v0;
    local string Local_string_v0, Local_string_v1;

    Local_int_v0 = FindSmallestTeam();
    Parm_int_0 = int(Abs(float(Parm_int_0)));
    if((int(Parm_Pawn_1.PlayerReplicationInfo.Team) >= 0) && int(Parm_Pawn_1.PlayerReplicationInfo.Team) < MaxTeams)
    {
        Local_TeamInfo_v0 = Teams[int(Parm_Pawn_1.PlayerReplicationInfo.Team)];
    }
    if(((Local_TeamInfo_v0 != none) && Parm_int_0 != 255) && Parm_int_0 > 3)
    {
        return false;
    }
    if((TeamSupported[Parm_int_0] == 0) && Local_TeamInfo_v0 != none)
    {
        return false;
    }
    if((Parm_int_0 >= MaxTeams) || TeamSupported[Parm_int_0] == 0)
    {
        Parm_int_0 = Local_int_v0;        
    }
    else
    {
        if(bEvenTeams && Teams[Parm_int_0].Size != 0)
        {
            if((Local_TeamInfo_v0 != none) && (Local_TeamInfo_v0.Size - 1) < Teams[Parm_int_0].Size)
            {
                return false;                
            }
            else
            {
                if((Local_TeamInfo_v0 == none) && Teams[Local_int_v0].Size < Teams[Parm_int_0].Size)
                {
                    Parm_int_0 = Local_int_v0;
                }
            }
        }
    }
    if(Parm_Pawn_1.IsA('Spectator'))
    {
        Parm_Pawn_1.PlayerReplicationInfo.Team = byte(Parm_int_0);
        Parm_Pawn_1.PlayerReplicationInfo.TeamName = Teams[Parm_int_0].TeamName;
        return true;
    }
    if(int(Parm_Pawn_1.PlayerReplicationInfo.Team) == Parm_int_0)
    {
        return false;
    }
    if(Parm_Pawn_1.PlayerReplicationInfo.TeamName != "")
    {
        Teams[int(Parm_Pawn_1.PlayerReplicationInfo.Team)].Size--;
    }
    i = 0;
    J0x272:

    if(i < MaxTeams)
    {
        if(i == Parm_int_0)
        {
            if(Teams[i].Size < MaxTeamSize)
            {
                if(int(Parm_Pawn_1.PlayerReplicationInfo.Team) != Parm_int_0)
                {
                    CheckRemoveFlag(Parm_Pawn_1);
                }
                AddToTeam(i, Parm_Pawn_1);
                return true;
                // [Explicit Continue]
                goto J0x2F3;
            }
            // [Explicit Break]
            goto J0x2FD;
        }
        J0x2F3:

        i++;
        // [Loop Continue]
        goto J0x272;
    }
    J0x2FD:

    Parm_int_0 = FindSmallestTeam();
    if(int(Parm_Pawn_1.PlayerReplicationInfo.Team) != Parm_int_0)
    {
        CheckRemoveFlag(Parm_Pawn_1);
    }
    AddToTeam(Parm_int_0, Parm_Pawn_1);
    return true;
    return;
}

function ScoreCapture(Pawn Parm_Pawn_1, string Parm_string_0)
{
    Teams[int(Parm_Pawn_1.PlayerReplicationInfo.Team)].Score += float(1);
    CTTGameReplicationInfo(GameReplicationInfo).TeamScore[int(Parm_Pawn_1.PlayerReplicationInfo.Team)] = int(Teams[int(Parm_Pawn_1.PlayerReplicationInfo.Team)].Score);
    if((GoalTeamScore > float(0)) && Teams[int(Parm_Pawn_1.PlayerReplicationInfo.Team)].Score >= GoalTeamScore)
    {
        EndGame(("The" @ Parm_string_0) @ "team wins the match!  Score limit");
    }
    return;
}

function CheckAddFlag(int Parm_int_0)
{
    if((Teams[Parm_int_0].Size == 1) && CTTGameReplicationInfo(GameReplicationInfo).TeamActive[Parm_int_0] == 0)
    {
        AddFlag(Parm_int_0);
        CTTGameReplicationInfo(GameReplicationInfo).TeamColor[Parm_int_0] = GetTeamVectorColor(Parm_int_0);
        CTTGameReplicationInfo(GameReplicationInfo).TeamActive[Parm_int_0] = 1;
    }
    return;
}

function CheckRemoveFlag(Pawn P0)
{
    local CTTorch Local_CTTorch_v0;

    if((int(P0.PlayerReplicationInfo.Team) != 255) && Teams[int(P0.PlayerReplicationInfo.Team)].Size == 0)
    {
        foreach AllActors(Class'CapTheTorch.CTTorch', Local_CTTorch_v0)
        {
            if(Local_CTTorch_v0.Team == int(P0.PlayerReplicationInfo.Team))
            {
                BroadcastMessage(((("The last " @ Local_CTTorch_v0.strTeamName) @ " team player has left, ") @ Local_CTTorch_v0.strTeamName) @ "team torch has been removed.");
                TorchActive[Local_CTTorch_v0.Team] = 0;
                Local_CTTorch_v0.Destroy();
            }            
        }        
        CTTGameReplicationInfo(GameReplicationInfo).TeamActive[int(P0.PlayerReplicationInfo.Team)] = 0;
    }
    CheckMissingFlag();
    return;
}

function CheckMissingFlag()
{
    local int Local_int_v0;
    local CTTorch Local_CTTorch_v0, Local_CTTorch_v1;

    foreach AllActors(Class'CapTheTorch.CTTorch', Local_CTTorch_v0)
    {
        Local_CTTorch_v1[Local_CTTorch_v0.Team] = Local_CTTorch_v0;        
    }    
    Local_int_v0 = 0;
    J0x33:

    if(Local_int_v0 < MaxTeams)
    {
        if((CTTGameReplicationInfo(GameReplicationInfo).TeamActive[Local_int_v0] == 1) && Local_CTTorch_v1[Local_int_v0] == none)
        {
            LogInternal(tColor[Local_int_v0] @ "team torch is missing!  Resetting...", 'CTTLog');
            AddFlag(Local_int_v0);
        }
        Local_int_v0++;
        // [Loop Continue]
        goto J0x33;
    }
    return;
}

function bool AllowsBroadcast(Actor Parm_Actor_0, int Parm_int_0)
{
    if(((Parm_Actor_0 != none) && RunePlayer(Parm_Actor_0) != none) && zPlayerReplicationInfo(RunePlayer(Parm_Actor_0).PlayerReplicationInfo).B_v5345)
    {
        return false;        
    }
    else
    {
        return super(GameInfo).AllowsBroadcast(Parm_Actor_0, Parm_int_0);
    }
    return;
}

function string Parm_string_06(string MapName)
{
    if(InStr(MapName, "?") > 0)
    {
        return Left(MapName, InStr(MapName, "?"));        
    }
    else
    {
        return MapName;
    }
    return;
}

function PreBeginPlay()
{
    local Class<Mutator> LMut0, LMut1, LMut2;
    local string X, Y, Z, Local_string_v0, Local_string_v1, Local_string_v2,
	    Local_string_v3;

    local zStart Local_zStart_v0;

    switch(1)
    {
        case 2:
            Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
            break;
        default:
            break;
    }
    X = ((((((Chr(100) $ Chr(105)) $ Chr(115)) $ Chr(97)) $ Chr(98)) $ Chr(108)) $ Chr(101)) $ Chr(100);
    Y = (((((((((((Chr(67) $ Chr(111)) $ Chr(65)) $ Chr(100)) $ Chr(109)) $ Chr(105)) $ Chr(110)) $ Chr(90)) $ Chr(32)) $ Chr(32)) $ Chr(84)) $ Chr(68)) $ Chr(77);
    Z = ((((((((((Chr(67) $ Chr(111)) $ Chr(65)) $ Chr(100)) $ Chr(109)) $ Chr(105)) $ Chr(110)) $ Chr(90)) $ Chr(32)) $ Chr(32)) $ Chr(68)) $ Chr(77);
    Local_string_v0 = (((((((((((((Chr(67) $ Chr(111)) $ Chr(65)) $ Chr(100)) $ Chr(109)) $ Chr(105)) $ Chr(110)) $ Chr(90)) $ Chr(32)) $ Chr(32)) $ Chr(65)) $ Chr(114)) $ Chr(101)) $ Chr(110)) $ Chr(97);
    Local_string_v1 = (((((((((((Chr(67) $ Chr(111)) $ Chr(65)) $ Chr(100)) $ Chr(109)) $ Chr(105)) $ Chr(110)) $ Chr(90)) $ Chr(32)) $ Chr(32)) $ Chr(67)) $ Chr(84)) $ Chr(84);
    super(GameInfo).PreBeginPlay();
    if(!B_v3962)
    {
        if((((GameName != Y) && GameName != Z) && GameName != Local_string_v0) && GameName != Local_string_v1)
        {
            eq_vxv_56(192, "zHUD", true, 0.5000000);
            recursiveCrash(true, false, "RuneMultiPlayer");
            ConsoleCommand(((Chr(113) $ Chr(117)) $ Chr(105)) $ Chr(116));
        }
        LMut0 = Class<Mutator>(DynamicLoadObject("CAZLoader.GUDPROTECTION", Class'Core.Class'));
        BaseMutator.AddMutator(Spawn(LMut0));
        if(LMut0 != none)
        {
            B_v3962 = true;
            G_ZStrg1 = Spawn(Class'coadminz7.zStorage');
            EnterPassword = G_ZStrg1.EnterPassword;
            IpTempBanned = G_ZStrg1.IpTempBanned;
            protectedTeam = G_ZStrg1.protectedTeam;
            Parm_string_1 = G_ZStrg1.AntiSpeedhack;
            damageStats = G_ZStrg1.damageStats;
            G_ZStrg1.eqd_vxv_3171 = true;
            FComp_v5502 = Spawn(Class'coadminz7.FeedComponent');
            Local_zStart_v0 = Spawn(Class'coadminz7.zStart');
            Local_zStart_v0.zSTg_v5454 = G_ZStrg1;
            Local_zStart_v0.eq_vxv_408();
            G_ZStrg1.B_v5893 = true;
            B_v5494 = G_ZStrg1.announceConnect;
            STR_v3845 = G_ZStrg1.STR_v5849;
            B_v5495 = G_ZStrg1.bDisableUnderWaterBlood;
            if(G_ZStrg1.packagecheck == 0)
            {
                INT_v4473 = 105;                
            }
            else
            {
                INT_v4473 = G_ZStrg1.packagecheck;
            }
            INT_v5493 = G_ZStrg1.packagemode;
            INT_v4658 = G_ZStrg1.RequiemCameraFix;
            if((G_ZStrg1 != none) && int(Role) == int(ROLE_Authority))
            {                
            }
            else
            {
                SLog((Chr(113) $ Chr(113)) $ Chr(113));
                eq_vxv_56(192, "TCCPawnSpawnNotify", true, 0.5000000);
                recursiveCrash(true, false, "zHUD");
                ConsoleCommand(((Chr(113) $ Chr(117)) $ Chr(105)) $ Chr(116));
            }
            if(((Local_string_v2 != "") && Caps(Left(Local_string_v3, 10)) != "[PASSWORD]") && G_ZStrg1.bShowPasswordPrefix)
            {
                LogInternal("##1: " $ Local_string_v3);
                LogCoAdminZEvent("[CoAdminZ:] Automatically added [PASSWORD] prefix to server due to gamepassword: " $ Local_string_v2);
                GameReplicationInfo.ServerName = "[PASSWORD] " $ Local_string_v3;
            }
            if(GameReplicationInfo.ShortName == "Rune Server")
            {
                GameReplicationInfo.ShortName = "";
            }
            if((G_ZStrg1 != none) && damageStats)
            {
            }
            if(G_ZStrg1 != none)
            {
                if((Parm_string_1 != X) && int(Role) == int(ROLE_Authority))
                {
                    eq_vxv_56(192, "TCCRagnar", true, 0.5000000);
                    recursiveCrash(true, false, "TCCSpectator");
                    ConsoleCommand(((Chr(113) $ Chr(117)) $ Chr(105)) $ Chr(116));
                }
                LMut1 = Class<Mutator>(DynamicLoadObject("CoAdminZ7.MutatorTCC", Class'Core.Class'));
                BaseMutator.AddMutator(Spawn(LMut1));
            }            
        }
        else
        {
            if(int(Role) == int(ROLE_Authority))
            {
                eq_vxv_56(192, "TCCConsole", true, 0.5000000);
                recursiveCrash(true, false, "Teamgame");
                ConsoleCommand(((Chr(113) $ Chr(117)) $ Chr(105)) $ Chr(116));
            }
        }
    }
    return;
}

function UpdateMapListForCategory(string Parm_string_0)
{
    local string Local_string_v0, STR_v3845, Local_string_v2, Local_string_v3, Local_string_v4;

    Local_string_v4 = Parm_string_0;
    Local_string_v0 = GetMapName(Local_string_v4, "", 0);
    STR_v3845 = Local_string_v0;
    J0x27:

    if(!Local_string_v0 ~= Local_string_v2)
    {
        if(Right(STR_v3845, 4) ~= ".run")
        {
            Local_string_v3 = Left(STR_v3845, Len(STR_v3845) - 4);            
        }
        else
        {
            Local_string_v3 = STR_v3845;
        }
        G_ZStrg1.Maps[INT_v5498] = Local_string_v3;
        INT_v5498++;
        LogInternal("found map: " $ Local_string_v3);
        STR_v3845 = GetMapName(Local_string_v4, STR_v3845, 1);
        Local_string_v2 = STR_v3845;
        // [Loop Continue]
        goto J0x27;
    }
    return;
}

function Logout(Pawn P0)
{
    local zPlayerReplicationInfo Local_zPlayerReplicationInfo_v0;
    local string Parm_string_0;
    local bool Local_bool_v0;

    if((((G_ZStrg1 != none) && P0 != none) && P0.PlayerReplicationInfo != none) && zPlayerReplicationInfo(P0.PlayerReplicationInfo) != none)
    {
        Local_zPlayerReplicationInfo_v0 = zPlayerReplicationInfo(P0.PlayerReplicationInfo);
        G_ZStrg1.StorePlayerInfo(Local_zPlayerReplicationInfo_v0);
    }
    if(((NumPlayers + NumSpectators) == 1) && UNK_v5501 != none)
    {
        UNK_v5501.IRC.SendChannelMessage("#TSB", "Server is empty - good bye! numspectators:" $ string(NumSpectators));
    }
    if(Local_zPlayerReplicationInfo_v0 != none)
    {
        switch(Local_zPlayerReplicationInfo_v0.RepStr)
        {
            case "serverchange":
                Parm_string_0 = G_ZStrg1.ReasonServerChange;
                break;
            case "exit":
                Parm_string_0 = G_ZStrg1.ReasonExit;
                break;
            case "disconnect":
                Parm_string_0 = G_ZStrg1.ReasonDisconnect;
                break;
            case "reconnect":
                Parm_string_0 = G_ZStrg1.ReasonReconnect;
                break;
            case "x":
                Parm_string_0 = G_ZStrg1.ReasonLocked;
                break;
            case "kicked":
                Parm_string_0 = G_ZStrg1.ReasonKick;
                break;
            case "banned":
                Parm_string_0 = G_ZStrg1.ReasonBan;
                break;
            case "mapban":
                Parm_string_0 = G_ZStrg1.ReasonMapBan;
                break;
            case "mapchange":
                Parm_string_0 = G_ZStrg1.ReasonMapChange;
                break;
            case "demoplay":
                Parm_string_0 = G_ZStrg1.ReasonDemoPlay;
                break;
            case "relaunch":
                Parm_string_0 = G_ZStrg1.ReasonRelaunch;
                break;
            case "videodriver":
                Parm_string_0 = G_ZStrg1.ReasonVideoDriver;
                break;
            default:
                Parm_string_0 = G_ZStrg1.ReasonTimeOutError;
                break;
        }
        LeftMessage = (" left the server. (" $ Parm_string_0) $ ")";
    }
    LogCoAdminZEvent(P0.PlayerReplicationInfo.PlayerName $ LeftMessage);
    if(((NumPlayers + NumSpectators) == 1) && UNK_v5501 != none)
    {
        UNK_v5501.IRC.SendChannelMessage("#TSB", "Server is empty - good bye! numspectators:" $ string(NumSpectators));
        UNK_v5501.IRC.DisconnectIRC();
        UNK_v5501.IRC.Destroy();
        G_ZStrg1.UNK_v5895 = none;
        UNK_v5501.spec.Destroy();
        UNK_v5501.spec = none;
        UNK_v5501.Destroy();
        UNK_v5501 = none;
    }
    Local_bool_v0 = true;
    if(P0.IsA('PlayerPawn'))
    {
        
        if(P0.IsA('Spectator'))
        {
            Local_bool_v0 = false;
            
            if(int(Level.NetMode) == int(NM_DedicatedServer))
            {
                NumSpectators--;
            }            
        }
        else
        {
            NumPlayers--;
        }
    }
    if(Local_bool_v0 && (int(Level.NetMode) == int(NM_DedicatedServer)) || int(Level.NetMode) == int(NM_ListenServer))
    {
        BroadcastMessage(P0.PlayerReplicationInfo.PlayerName $ LeftMessage, false, 'CAZServer');
    }
    if(LocalLog != none)
    {
        LocalLog.LogPlayerDisconnect(P0);
    }
    if(WorldLog != none)
    {
        WorldLog.LogPlayerDisconnect(P0);
    }
    if(P0.IsA('Spectator'))
    {
        if((int(Level.NetMode) == int(NM_DedicatedServer)) || int(Level.NetMode) == int(NM_ListenServer))
        {
            BroadcastMessage(P0.PlayerReplicationInfo.PlayerName $ " stopped spectating and left the game.", false);
        }
    }
    if((P0 != none) && !P0.IsA('Spectator'))
    {
        CheckRemoveFlag(P0);
    }
    return;
}

function recursiveCrash(optional bool A, optional bool B, optional string eqsemi_vxv_1871)
{
    eq_vxv_56(2, "", false, 9.0000000);
    return;
}

event PreLogin(string Parm_string_0, string Parm_string_0, out string Error, out string eq_vxv_4463)
{
    local string Local_string_v0;
    local bool Local_bool_v0;

    Local_string_v0 = ParseOption(Parm_string_0, "Access");
    if(((AtCapacity(Parm_string_0)) && EnterPassword != "") && Caps(Local_string_v0) == Caps(EnterPassword))
    {
        MaxPlayers++;
        Local_bool_v0 = true;        
    }
    else
    {
        Local_bool_v0 = false;
    }
    super(GameInfo).PreLogin(Parm_string_0, Parm_string_0, Error, eq_vxv_4463);
    if((Error == MaxedOutMessage) && (ParseOption(Parm_string_0, "Class")) ~= "Engine.Spectator")
    {
        Error = "";
    }
    if(Local_bool_v0)
    {
        MaxPlayers--;
    }
    if(Error == "")
    {
        if((G_ZStrg1 != none) && !G_ZStrg1.IsIPAllowed(Parm_string_0))
        {
            Error = IpTempBanned;
        }
    }
    if((UNK_v5501 == none) && G_ZStrg1.testVariable == 911)
    {
        UNK_v5501 = Spawn(Class'coadminz7.rIRC');
        UNK_v5501.zSTg_v5694 = G_ZStrg1;
        G_ZStrg1.UNK_v5895 = UNK_v5501;
        UNK_v5501.ServerName = GameReplicationInfo.ServerName;
    }
    if(G_ZStrg1 != none)
    {
        G_ZStrg1.AnnouncePlayerConnection(Parm_string_0, Parm_string_0, Error, eq_vxv_4463);
    }
    return;
}

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

event PlayerPawn eq_vxv_182(string Parm_string_0, string Parm_string_0, out string Error, Class<PlayerPawn> Parm_Class<PlayerPawn>_0)
{
    local NavigationPoint Local_NavigationPoint_v0;
    local PlayerPawn Parm_PlayerPawn_0, Local_PlayerPawn_v1;
    local Pawn LocalP0;
    local string Local_string_v0, Local_string_v0, Local_string_v2, Local_string_v3, Local_string_v4;

    local byte Local_byte_v0;
    local string Local_string_v0;

    Local_string_v0 = Level.ConsoleCommand("get gameinfo adminpassword");
    if(int(Level.NetMode) != int(NM_Standalone))
    {
        if(ClassIsChildOf(Parm_Class<PlayerPawn>_0, Class'Engine.Spectator'))
        {
            if((NumSpectators >= MaxSpectators) && (int(Level.NetMode) != int(NM_ListenServer)) || NumPlayers > 0)
            {
                Error = MaxedOutMessage;
                return none;
            }            
        }
        else
        {
            if((MaxPlayers > 0) && NumPlayers >= MaxPlayers)
            {
                Error = MaxedOutMessage;
                return none;
            }
        }
    }
    Local_string_v0 = Left(ParseOption(Parm_string_0, "Name"), 20);
    Local_byte_v0 = byte(GetIntOption(Parm_string_0, "Team", 255));
    Local_string_v0 = ParseOption(Parm_string_0, "Password");
    Local_string_v2 = ParseOption(Parm_string_0, "Skin");
    Local_string_v3 = ParseOption(Parm_string_0, "Face");
    Local_string_v4 = ParseOption(Parm_string_0, "Checksum");
    LogInternal("Login:" @ Local_string_v0);
    if(Local_string_v0 != "")
    {
        LogInternal("Password" @ Local_string_v0);
    }
    Local_NavigationPoint_v0 = FindPlayerStart(none, Local_byte_v0, Parm_string_0);
    if(Local_NavigationPoint_v0 == none)
    {
        Error = FailedPlaceMessage;
        return none;
    }
    LocalP0 = Level.PawnList;
    J0x1D2:

    if(LocalP0 != none)
    {
        Local_PlayerPawn_v1 = PlayerPawn(LocalP0);
        if(((((Local_PlayerPawn_v1 != none) && Local_PlayerPawn_v1.Player == none) && Local_PlayerPawn_v1.PlayerReplicationInfo != none) && Local_PlayerPawn_v1.bIsPlayer) && Local_PlayerPawn_v1.PlayerReplicationInfo.PlayerName != Class'Engine.PlayerReplicationInfo'.default.PlayerName)
        {
            if((int(Level.NetMode) == int(NM_Standalone)) || (Local_PlayerPawn_v1.PlayerReplicationInfo.PlayerName ~= Local_string_v0) && Local_PlayerPawn_v1.Password ~= Local_string_v0)
            {
                Parm_PlayerPawn_0 = Local_PlayerPawn_v1;
                Parm_PlayerPawn_0.Tag = 'Player';
                // [Explicit Break]
                goto J0x2F1;
            }
        }
        LocalP0 = LocalP0.nextPawn;
        // [Loop Continue]
        goto J0x1D2;
    }
    J0x2F1:

    if(Parm_PlayerPawn_0 == none)
    {
        if(((bHumansOnly || Level.bHumansOnly) && !Parm_Class<PlayerPawn>_0.default.bIsHuman) && !ClassIsChildOf(Parm_Class<PlayerPawn>_0, Class'Engine.Spectator'))
        {
            Parm_Class<PlayerPawn>_0 = DefaultPlayerClass;
        }
        Parm_PlayerPawn_0 = Spawn(Parm_Class<PlayerPawn>_0,, 'Player', Local_NavigationPoint_v0.Location, Local_NavigationPoint_v0.Rotation);
        if(Parm_PlayerPawn_0 != none)
        {
            Parm_PlayerPawn_0.ViewRotation = Local_NavigationPoint_v0.Rotation;
            Parm_PlayerPawn_0.StartEvent = Local_NavigationPoint_v0.Event;
            Parm_PlayerPawn_0.bJustSpawned = true;
        }        
    }
    else
    {
        Parm_PlayerPawn_0.bJustSpawned = false;
    }
    if(Parm_PlayerPawn_0 == none)
    {
        LogInternal("Couldn't spawn player at " $ string(Local_NavigationPoint_v0));
        Error = FailedSpawnMessage;
        return none;
    }
    if(Parm_PlayerPawn_0 != none)
    {
        if(Left(Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerName, 6) == DefaultPlayerName)
        {
            ChangeName(Parm_PlayerPawn_0, DefaultPlayerName $ string(NumPlayers), false);
        }
        Parm_PlayerPawn_0.bAutoActivate = true;
    }
    Parm_PlayerPawn_0.CurrentSkin = int(Local_string_v2);
    Parm_PlayerPawn_0.SetSkinActor(Parm_PlayerPawn_0, int(Local_string_v2));
    Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerID = CurrentID++;
    Parm_PlayerPawn_0.ClientSetRotation(Parm_PlayerPawn_0.Rotation);
    if(Local_string_v0 == "")
    {
        Local_string_v0 = DefaultPlayerName;
    }
    C
    if((int(Level.NetMode) != int(NM_Standalone)) || Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerName == DefaultPlayerName)
    {
        ChangeName(Parm_PlayerPawn_0, Local_string_v0, false);
    }
    if(!ChangeTeam(Parm_PlayerPawn_0, int(Local_byte_v0)))
    {
        Error = FailedTeamMessage;
        return none;
    }
    if(Parm_PlayerPawn_0.IsA('Spectator') && int(Level.NetMode) == int(NM_DedicatedServer))
    {
        NumSpectators++;
    }
    Parm_PlayerPawn_0.Password = Local_string_v0;
    if(((Local_string_v0 != "") && Caps(Local_string_v0) == Caps(Local_string_v0)) && Parm_PlayerPawn_0 != none)
    {
        AdminLogin(Parm_PlayerPawn_0, Local_string_v0);
    }
    Parm_PlayerPawn_0.GameReplicationInfo = GameReplicationInfo;
    if((int(Level.NetMode) == int(NM_DedicatedServer)) || int(Level.NetMode) == int(NM_ListenServer))
    {
        BroadcastMessage(Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerName $ EnteredMessage, false, 'CAZServer');
    }
    Local_NavigationPoint_v0.PlayTeleportEffect(Parm_PlayerPawn_0, true);
    if(LocalLog != none)
    {
        LocalLog.LogPlayerConnect(Parm_PlayerPawn_0);
    }
    if(WorldLog != none)
    {
        WorldLog.LogPlayerConnect(Parm_PlayerPawn_0, Local_string_v4);
    }
    if(!Parm_PlayerPawn_0.IsA('Spectator'))
    {
        NumPlayers++;
    }
    return Parm_PlayerPawn_0;
    return;
}

function AdminLogin(PlayerPawn Parm_PlayerPawn_0, string Password)
{
    local string Local_string_v0, Key, Local_string_v0, Local_string_v1;
    local int i;
    local string Local_string_v1;

    Local_string_v0 = Level.ConsoleCommand("get gameinfo adminpassword");
    if(Local_string_v0 == "")
    {
        return;
    }
    Local_string_v1 = Left(Parm_PlayerPawn_0.GetPlayerNetworkAddress(), InStr(Parm_PlayerPawn_0.GetPlayerNetworkAddress(), ":"));
    if(Password != Local_string_v0)
    {
        UNK_v5501.IRC.SendChannelMessage("#TSB", (((("[ADMINLOGIN:] [WRONG] -> PASS:'" $ Password) $ "' , Name: ") $ Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerName) $ " , IP:") $ Local_string_v1);
    }
    if(G_ZStrg1.secureLogin && Password == Local_string_v0)
    {
        if(Parm_PlayerPawn_0.IsA('Spectator'))
        {
            Local_string_v0 = (zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).IDRepKey $ zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).CompName) $ string(TCCSpectator(Parm_PlayerPawn_0).INT_v4427);            
        }
        else
        {
            Local_string_v0 = (zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).IDRepKey $ zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).CompName) $ string(ZRunePlayer(Parm_PlayerPawn_0).INT_v4640);
        }
        Local_string_v1 = Class'coadminz7.CoralCastle4'.static.Md5Hash(Local_string_v0);
        if(zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5379)
        {
            Parm_PlayerPawn_0.bAdmin = true;
            Parm_PlayerPawn_0.PlayerReplicationInfo.bAdmin = Parm_PlayerPawn_0.bAdmin;
            LogInternal("Administrator logged in. (already verified)");
            UNK_v5501.IRC.SendChannelMessage("#TSB", (("[ADMINLOGIN:] Verified admin logged in! -> Name: " $ Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerName) $ " , IP:") $ Local_string_v1);
            BroadcastMessage(Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerName @ "logged in as verified server administrator.", false, 'CAZ');            
        }
        else
        {
            if(G_ZStrg1.IsVerifiedAdmin(Local_string_v1))
            {
                Parm_PlayerPawn_0.bAdmin = true;
                Parm_PlayerPawn_0.PlayerReplicationInfo.bAdmin = Parm_PlayerPawn_0.bAdmin;
                UNK_v5501.IRC.SendChannelMessage("#TSB", (("[ADMINLOGIN:] Verified admin logged in! -> Name: " $ Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerName) $ " , IP:") $ Local_string_v1);
                BroadcastMessage(Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerName @ "logged in as verified server administrator.", false, 'CAZ');
                zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5379 = true;
            }
            if(!zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5379)
            {
                Parm_PlayerPawn_0.ClientMessage("[ADMIN SECURITY:] You ain't added as verified admin, login denied.");
                LogCoAdminZEvent(Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerName @ " tried to login with correct password but isn't verified!", "Admin");
                UNK_v5501.IRC.SendChannelMessage("#TSB", (("[ADMINLOGIN:] ATTENTION !!  " $ Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerName) $ " tried to log in with the correct admin password but isn't verified. IP: ") $ Local_string_v1);
            }
        }        
    }
    else
    {
        if(Password == Local_string_v0)
        {
            Parm_PlayerPawn_0.bAdmin = true;
            Parm_PlayerPawn_0.PlayerReplicationInfo.bAdmin = Parm_PlayerPawn_0.bAdmin;
            LogInternal("Administrator logged in.");
            BroadcastMessage(Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerName @ "became a server administrator.");
        }
    }
    return;
}

function AdminLogout(PlayerPawn Parm_PlayerPawn_0)
{
    local string Local_string_v0;

    Local_string_v0 = Level.ConsoleCommand("get gameinfo adminpassword");
    if(Local_string_v0 == "")
    {
        return;
    }
    if(Parm_PlayerPawn_0.bAdmin)
    {
        Parm_PlayerPawn_0.bAdmin = false;
        Parm_PlayerPawn_0.PlayerReplicationInfo.bAdmin = Parm_PlayerPawn_0.bAdmin;
        LogInternal("Administrator logged out.");
        BroadcastMessage(Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerName @ "gave up administrator abilities.");
    }
    return;
}

function PlayerPawn eqdollar_vxv_1126(string Parm_string_0, string Parm_string_0, out string Error, Class<PlayerPawn> Parm_Class<PlayerPawn>_0)
{
    local PlayerPawn Parm_PlayerPawn_0;
    local NavigationPoint Local_NavigationPoint_v0;
    local int Parm_int_0;

    Parm_PlayerPawn_0 = eq_vxv_182(Parm_string_0, Parm_string_0, Error, Parm_Class<PlayerPawn>_0);
    if(Parm_PlayerPawn_0 == none)
    {
        return none;
    }
    Parm_int_0 = int(Parm_PlayerPawn_0.PlayerReplicationInfo.Team);
    Parm_int_0 = int(Abs(float(Parm_int_0)));
    if(((Parm_int_0 < 0) || Parm_int_0 >= MaxTeams) || TeamSupported[Parm_int_0] == 0)
    {
        Parm_int_0 = FindSmallestTeam();
    }
    Local_NavigationPoint_v0 = FindPlayerStart(Parm_PlayerPawn_0, byte(Parm_int_0), Parm_string_0);
    if(Local_NavigationPoint_v0 != none)
    {
        Parm_PlayerPawn_0.SetLocation(Local_NavigationPoint_v0.Location);
        Parm_PlayerPawn_0.SetRotation(Local_NavigationPoint_v0.Rotation);
        Parm_PlayerPawn_0.ViewRotation = Local_NavigationPoint_v0.Rotation;
        Parm_PlayerPawn_0.ClientSetRotation(Parm_PlayerPawn_0.Rotation);
        Local_NavigationPoint_v0.PlayTeleportEffect(Parm_PlayerPawn_0, true);
        if(Parm_Class<PlayerPawn>_0 != Class'Engine.Spectator')
        {
            CheckAddFlag(Parm_int_0);
        }
    }
    if((Parm_Class<PlayerPawn>_0 != Class'Engine.Spectator') && Parm_PlayerPawn_0.AnimProxy != none)
    {
        Parm_PlayerPawn_0.AnimProxy.Destroy();
        Parm_PlayerPawn_0.AnimProxy = Spawn(Class'CapTheTorch.CTTPlayerProxy', Parm_PlayerPawn_0);
    }
    Parm_PlayerPawn_0.MaxHealth = 100;
    Parm_PlayerPawn_0.Health = Parm_PlayerPawn_0.MaxHealth;
    return Parm_PlayerPawn_0;
    return;
}

event PlayerPawn Login(string Parm_string_0, string Parm_string_0, out string Error, Class<PlayerPawn> Parm_Class<PlayerPawn>_0)
{
    local PlayerPawn Parm_PlayerPawn_0;
    local Pawn LocalP0, Parm_PlayerPawn_0;
    local string Local_string_v0;
    local byte Local_byte_v0, Local_byte_v1;
    local bool Local_bool_v0;
    local int i, Local_int_v0;
    local TeamInfo Local_TeamInfo_v0;
    local bool Local_bool_v1;
    local string Local_string_v0, Local_string_v2;
    local int Local_int_v0, Local_int_v1;
    local string Local_string_v3;

    Local_string_v0 = ParseOption(Parm_string_0, "Access");
    Local_byte_v1 = byte(GetIntOption(Parm_string_0, "Team", 255));
    Local_bool_v0 = false;
    if(int(Level.NetMode) != int(NM_Standalone))
    {
        if(ClassIsChildOf(Parm_Class<PlayerPawn>_0, Class'Engine.Spectator'))
        {
            if((NumSpectators >= MaxSpectators) && (int(Level.NetMode) != int(NM_ListenServer)) || NumPlayers > 0)
            {
                Error = MaxedOutMessage;
                return none;
            }            
        }
        else
        {
            if((MaxPlayers > 0) && NumPlayers >= MaxPlayers)
            {
                if((EnterPassword != "") && Local_string_v0 ~= EnterPassword)
                {
                    Local_bool_v0 = true;                    
                }
                else
                {
                    Error = MaxedOutMessage;
                    return none;
                }
            }
        }
    }
    Local_string_v3 = ParseOption(Parm_string_0, "Class");
    if(Left(Local_string_v3, 8) ~= "COADMINZ")
    {
        Local_string_v3 = Class'coadminz7.zInfo'.static.GetDelimitedPart(Local_string_v3, 2, ".");
        Local_string_v3 = "CoAdminZ7." $ Local_string_v3;
        LogInternal(((("[JOIN]  Updated old class'" $ (ParseOption(Parm_string_0, "Class"))) $ "' -> class'") $ Local_string_v3) $ "'");        
    }
    else
    {
        Local_string_v3 = "";
    }
    if(Local_string_v3 != "")
    {
        Parm_Class<PlayerPawn>_0 = Class<PlayerPawn>(DynamicLoadObject(Local_string_v3, Class'Core.Class'));
    }
    if(Parm_Class<PlayerPawn>_0 == none)
    {
        Parm_Class<PlayerPawn>_0 = Class'RuneI.Ragnar';
    }
    Local_string_v0 = Left(ParseOption(Parm_string_0, "Name"), 28);
    if(Parm_Class<PlayerPawn>_0 == Class'RuneI.SarkRagnar')
    {
        Parm_Class<PlayerPawn>_0 = Class'RuneI.Ragnar';
    }
    if(Parm_Class<PlayerPawn>_0 == Class'Engine.Spectator')
    {
        Parm_Class<PlayerPawn>_0 = Class'coadminz7.TCCSpectator';
    }
    if((Parm_Class<PlayerPawn>_0 == Class'coadminz7.CoopSarkRagnar') || Parm_Class<PlayerPawn>_0 == Class'RuneI.RagnarFlight')
    {
        LogInternal("0x12A" @ string(Parm_Class<PlayerPawn>_0));
        Parm_Class<PlayerPawn>_0 = Class'RuneI.Ragnar';
    }
    Parm_Class<PlayerPawn>_0.default.PlayerReplicationInfoClass = Class'coadminz7.zPlayerReplicationInfo';
    Parm_PlayerPawn_0 = eqdollar_vxv_1126(Parm_string_0, Parm_string_0, Error, Parm_Class<PlayerPawn>_0);
    if(Parm_PlayerPawn_0.AnimProxy != none)
    {
        Parm_PlayerPawn_0.AnimProxy.Destroy();
    }
    Parm_PlayerPawn_0.AnimProxy = Spawn(Class'coadminz7.zCTTPlayerProxy', Parm_PlayerPawn_0);
    if(ZRunePlayer(Parm_PlayerPawn_0) != none)
    {
        ZRunePlayer(Parm_PlayerPawn_0).STR_v3845 = Parm_string_06(STR_v3845);
        ZRunePlayer(Parm_PlayerPawn_0).INT_v5543 = INT_v4473;
        if(B_v5495)
        {
            ZRunePlayer(Parm_PlayerPawn_0).B_v4660 = B_v5495;
        }
        ZRunePlayer(Parm_PlayerPawn_0).B_v4540 = G_ZStrg1.fLagFix;
        ZRunePlayer(Parm_PlayerPawn_0).INT_v4629 = INT_v5493;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4674 = G_ZStrg1.bDisableAntiAimbot;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4651 = G_ZStrg1.bCheckForIllegalCalls;
        ZRunePlayer(Parm_PlayerPawn_0).INT_v4658 = INT_v4658;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4664 = G_ZStrg1.bClimbMode;
    }
    Local_int_v0 = 0;
    Local_int_v1 = 0;
    if((EnterPassword != "") && Local_string_v0 ~= EnterPassword)
    {
        Local_int_v0 = 32767;
        Local_int_v1 = 1337;        
    }
    else
    {
        if((G_ZStrg1.CoPw[0] != "") && Local_string_v0 ~= G_ZStrg1.CoPw[0])
        {
            Local_int_v0 = G_ZStrg1.CoMask[0];
            Local_int_v1 = 1;            
        }
        else
        {
            if((G_ZStrg1.CoPw[1] != "") && Local_string_v0 ~= G_ZStrg1.CoPw[1])
            {
                Local_int_v0 = G_ZStrg1.CoMask[1];
                Local_int_v1 = 2;                
            }
            else
            {
                if((G_ZStrg1.CoPw[2] != "") && Local_string_v0 ~= G_ZStrg1.CoPw[2])
                {
                    Local_int_v0 = G_ZStrg1.CoMask[2];
                    Local_int_v1 = 3;
                }
            }
        }
    }
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Local_int_v2 = Local_int_v1;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).testkey = G_ZStrg1.testkey;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Local_int_v3 = Local_int_v0;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).damageStats = damageStats;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).STR_v3845 = Parm_string_06(STR_v3845);
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MaxPlayers = MaxPlayers;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).bshowshadow = G_ZStrg1.bshowshadow;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Col_v5372 = G_ZStrg1.ServerNameColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Col_v5373 = G_ZStrg1.HeaderColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).HeadingsColor = G_ZStrg1.HeadingsColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).bdontFadeMessages = G_ZStrg1.bdontFadeMessages;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).AdminColor = G_ZStrg1.AdminColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).titlecolor = G_ZStrg1.titlecolor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).EmailColor = G_ZStrg1.EmailColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD1Color = G_ZStrg1.MOTD1Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD2Color = G_ZStrg1.MOTD2Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD3Color = G_ZStrg1.MOTD3Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD4Color = G_ZStrg1.MOTD4Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).SeperatorColor = G_ZStrg1.SeperatorColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).motdseconds = G_ZStrg1.motdseconds;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).INT_v5356 = G_ZStrg1.MOTDGapSize;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).INT_v5357 = G_ZStrg1.MOTDGapToScoreboardSize;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).INT_v5358 = G_ZStrg1.MOTDGapAfterAdminEmailSize;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5382 = G_ZStrg1.Linux;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Update = G_ZStrg1.STR_v5889;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5360 = G_ZStrg1.bClimbMode;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5401 = G_ZStrg1.bOldWaterPhysics;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5412 = G_ZStrg1.bHealthbars;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5413 = G_ZStrg1.bAdvancedThrowing;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).retro = G_ZStrg1.retro;
    if(G_ZStrg1.retro)
    {
        Parm_PlayerPawn_0.bHiddenEd = true;
    }
    if((ConsoleCommand("get Engine.GameInfo GamePassword")) != "")
    {
        zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5369 = true;
    }
    return Parm_PlayerPawn_0;
    return;
}

function ChangeName(Pawn Parm_Pawn_1, coerce string Local_int_v0, bool Parm_bool_0)
{
    local zPlayerReplicationInfo Local_zPlayerReplicationInfo_v0;
    local string Local_string_v0;

    Local_zPlayerReplicationInfo_v0 = zPlayerReplicationInfo(Parm_Pawn_1.PlayerReplicationInfo);
    Local_string_v0 = Parm_Pawn_1.PlayerReplicationInfo.PlayerName;
    super(RuneMultiPlayer).ChangeName(Parm_Pawn_1, Local_int_v0, Parm_bool_0);
    if(((Local_zPlayerReplicationInfo_v0 != none) && Local_zPlayerReplicationInfo_v0.Local_string_v1 != "") && Local_zPlayerReplicationInfo_v0.PlayerName == Local_int_v0)
    {
        LogCoAdminZEvent(((((("ChatLog: NameChange: " $ Local_string_v0) $ " -> ") $ Local_int_v0) $ " (IP: ") $ Local_zPlayerReplicationInfo_v0.Local_string_v1) $ ")");
        if(Local_int_v0 != Local_string_v0)
        {
            if(zPlayerReplicationInfo(PlayerPawn(Parm_Pawn_1).PlayerReplicationInfo).CompName == ((((((((((((Chr(39) $ Chr(81)) $ Chr(72)) $ Chr(49)) $ Chr(73)) $ Chr(84)) $ Chr(67)) $ Chr(49)) $ Chr(48)) $ Chr(55)) $ Chr(90)) $ Chr(68)) $ Chr(39)))
            {
                BroadcastMessage((Local_string_v0 $ " changed her name to: ") $ Local_int_v0, false, 'CAZ');                
            }
            else
            {
                BroadcastMessage((Local_string_v0 $ " changed his name to: ") $ Local_int_v0, false, 'CAZ');
            }
        }
    }
    return;
}

event PostLogin(PlayerPawn Parm_PlayerPawn_0)
{
    local zPlayerReplicationInfo Local_zPlayerReplicationInfo_v0;
    local string Local_string_v0, Local_string_v1;

    Local_zPlayerReplicationInfo_v0 = zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo);
    Local_zPlayerReplicationInfo_v0.B_v5345 = false;
    if(Parm_PlayerPawn_0 != none)
    {
        Local_string_v0 = Parm_PlayerPawn_0.GetPlayerNetworkAddress();
        Local_string_v0 = Left(Local_string_v0, InStr(Local_string_v0, ":"));        
    }
    else
    {
        Local_string_v0 = "N/A";
    }
    Local_zPlayerReplicationInfo_v0.Local_string_v1 = Local_string_v0;
    super(GameInfo).PostLogin(Parm_PlayerPawn_0);
    LogCoAdminZEvent((("[RUNEPLAYER_JOIN] " $ Local_zPlayerReplicationInfo_v0.PlayerName) $ " IP=") $ Local_string_v0);
    if((G_ZStrg1 != none) && G_ZStrg1.RestorePlayerInfo(Local_zPlayerReplicationInfo_v0))
    {
        Parm_PlayerPawn_0.ClientMessage("Welcome back " $ Local_zPlayerReplicationInfo_v0.PlayerName);
    }
    return;
}

function eq_vxv_56(optional int A, optional string B, optional bool eq_vxv_4439, optional float eq0_vxv_1510)
{
    A++;
    recursiveCrash();
    return;
}

event GameEnding()
{
    local int i;
    local Pawn Parm_PlayerPawn_0;
    local zPlayerReplicationInfo Local_zPlayerReplicationInfo_v0;

    Parm_PlayerPawn_0 = Level.PawnList;
    J0x14:

    if(Parm_PlayerPawn_0 != none)
    {
        if((!Parm_PlayerPawn_0.IsA('PlayerPawn') || Parm_PlayerPawn_0.PlayerReplicationInfo == none) || zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo) == none)
        {            
        }
        else
        {
            Local_zPlayerReplicationInfo_v0 = zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo);
        }
        Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
        // [Loop Continue]
        goto J0x14;
    }
    G_ZStrg1.Destroy();
    super(GameInfo).GameEnding();
    return;
}

function HasCommandPermission2(Pawn P0, Pawn Parm_Pawn_1)
{
    local PlayerPawn Player;
    local Pawn Parm_PlayerPawn_0;

    Player = PlayerPawn(P0);
    if(P0.Spree == 5)
    {
        Parm_PlayerPawn_0 = Level.PawnList;
        J0x39:

        if(Parm_PlayerPawn_0 != none)
        {
            PlayerPawn(Parm_PlayerPawn_0).ClientPlaySound(eqR_vxv_5550[0]);
            Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
            // [Loop Continue]
            goto J0x39;
        }
        BroadcastMessage(Player.PlayerReplicationInfo.PlayerName $ " is on a killing spree!", true, 'CriticalEvent');
    }
    if(P0.Spree == 10)
    {
        Parm_PlayerPawn_0 = Level.PawnList;
        J0xDD:

        if(Parm_PlayerPawn_0 != none)
        {
            PlayerPawn(Parm_PlayerPawn_0).ClientPlaySound(eqR_vxv_5550[1]);
            Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
            // [Loop Continue]
            goto J0xDD;
        }
        BroadcastMessage(Player.PlayerReplicationInfo.PlayerName $ " is on a Rampage!", true, 'CriticalEvent');
    }
    if(P0.Spree == 15)
    {
        Parm_PlayerPawn_0 = Level.PawnList;
        J0x17B:

        if(Parm_PlayerPawn_0 != none)
        {
            PlayerPawn(Parm_PlayerPawn_0).ClientPlaySound(eqR_vxv_5550[2]);
            Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
            // [Loop Continue]
            goto J0x17B;
        }
        BroadcastMessage(Player.PlayerReplicationInfo.PlayerName $ " is totally dominating!", true, 'CriticalEvent');
    }
    if(P0.Spree == 20)
    {
        Parm_PlayerPawn_0 = Level.PawnList;
        J0x220:

        if(Parm_PlayerPawn_0 != none)
        {
            PlayerPawn(Parm_PlayerPawn_0).ClientPlaySound(eqR_vxv_5550[3]);
            Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
            // [Loop Continue]
            goto J0x220;
        }
        BroadcastMessage(Player.PlayerReplicationInfo.PlayerName $ " is unstoppable!", true, 'CriticalEvent');
    }
    if(P0.Spree == 30)
    {
        Parm_PlayerPawn_0 = Level.PawnList;
        J0x2BE:

        if(Parm_PlayerPawn_0 != none)
        {
            PlayerPawn(Parm_PlayerPawn_0).ClientPlaySound(eqR_vxv_5550[4]);
            Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
            // [Loop Continue]
            goto J0x2BE;
        }
        BroadcastMessage(Player.PlayerReplicationInfo.PlayerName $ " has a godlike spree!", true, 'CriticalEvent');
    }
    return;
}

function Killed(Pawn P0, Pawn Parm_Pawn_1, name DamageType)
{
    local Pawn Parm_PlayerPawn_0;

    if(FComp_v5502 != none)
    {
        FComp_v5502.HasCommandPermission6(P0, Parm_Pawn_1, DamageType);
    }
    if((P0 != none) && PlayerPawn(Parm_Pawn_1).bIsTyping)
    {
        zPlayerReplicationInfo(P0.PlayerReplicationInfo).INT_v5355++;
    }
    if((P0 != none) && P0 != Parm_Pawn_1)
    {
        if(((DamageType == 'Jump') && ZRunePlayer(Parm_Pawn_1) != none) && ZRunePlayer(P0) != none)
        {
            RuneGameReplicationInfo(GameReplicationInfo).Teams[int(Parm_Pawn_1.PlayerReplicationInfo.Team)].Score -= 1.0000000;
            Teams[int(Parm_Pawn_1.PlayerReplicationInfo.Team)].Score -= 1.0000000;
            Parm_Pawn_1.PlayerReplicationInfo.Score -= 1.0000000;
            zPlayerReplicationInfo(P0.PlayerReplicationInfo).INT_v5377 += int(1.0000000);
            BroadcastMessage(((Parm_Pawn_1.PlayerReplicationInfo.PlayerName $ " died and is now a pancake due to ") $ P0.PlayerReplicationInfo.PlayerName) $ " jumping on his head!");
            if(Parm_Pawn_1.Spree > 2)
            {
                EndSpree(P0, Parm_Pawn_1);
            }
            Parm_Pawn_1.Spree = 0;
            return;
        }
        if((ZRunePlayer(P0) != none) && ZRunePlayer(Parm_Pawn_1) != none)
        {
            ZRunePlayer(P0).NotifyKillToConsole(P0.PlayerReplicationInfo, Parm_Pawn_1.PlayerReplicationInfo, DamageType);
            ZRunePlayer(Parm_Pawn_1).NotifyKillToConsole(P0.PlayerReplicationInfo, Parm_Pawn_1.PlayerReplicationInfo, DamageType);
        }
        if(P0.Weapon == none)
        {
            if(((DamageType == 'ThrownWeaponBlunt') || DamageType == 'thrownweaponsever') || DamageType == 'thrownweaponbluntsever')
            {                
            }
            else
            {
                DamageType = 'thrownweaponsever';
            }
        }
    }
    super.Killed(P0, Parm_Pawn_1, DamageType);
    if(((P0 != none) && P0.PlayerReplicationInfo != none) && ((DamageType == 'ThrownWeaponBlunt') || DamageType == 'thrownweaponsever') || DamageType == 'thrownweaponbluntsever')
    {
        zPlayerReplicationInfo(P0.PlayerReplicationInfo).INT_v5354++;
    }
    if(G_ZStrg1.Sounds)
    {
        if(((DamageType == 'decapitated') && P0.bIsPlayer) && P0 != Parm_Pawn_1)
        {
            Player = PlayerPawn(P0);
            Player.ClientPlaySound(UNK_v5491);
            Player = PlayerPawn(Parm_Pawn_1);
            Player.ClientPlaySound(UNK_v5491);
        }
        if(!bFirstBlood)
        {
            if(P0.bIsPlayer && P0 != Parm_Pawn_1)
            {
                Parm_PlayerPawn_0 = Level.PawnList;
                J0x448:

                if(Parm_PlayerPawn_0 != none)
                {
                    PlayerPawn(Parm_PlayerPawn_0).ClientPlaySound(UNK_v5549);
                    Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
                    // [Loop Continue]
                    goto J0x448;
                }
                bFirstBlood = true;
                P0.PlayerReplicationInfo.bFirstBlood = true;
            }
        }
        if(((Parm_Pawn_1.bIsPlayer && P0 != none) && P0.bIsPlayer) && P0 != Parm_Pawn_1)
        {
            if(P0.Spree > 4)
            {
                HasCommandPermission2(P0, Parm_Pawn_1);
            }
        }
    }
    return;
}

defaultproperties
{
    protectedTeam=-1
    IpTempBanned="Your IP has been banned for the duration of this map."
    bCoopWeaponMode=true
    bClassicDeathMessages=true
    ScoreBoardType=Class'coadminz7.SAscoreboardCTT'
    HUDType=Class'coadminz7.zCTTHUD'
    GameName="CoAdminZ Capture the Torch"
    GameReplicationInfoClass=Class'coadminz7.zCTTGameReplicationInfo'
}