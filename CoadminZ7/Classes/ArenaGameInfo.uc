class ArenaGameInfo extends ArenaGameInfo
    config;

struct STCT_v1228
{
    var string PlayerName;
    var int Score;
};

var string EnterPassword;
var string IpTempBanned;
var zStorage gZStorage;
var bool damageStats;
var int INT_v5486;
var bool B_v5487;
var bool B_v3962;
var int INT_v5488;
var int INT_v5489;
var string STR_v5490;
var Sound UNK_v5491;
var PlayerPawn Player;
var string Parm_string_1;
var bool bswitchcolors;
var bool bArenaSounds;
var int INT_v4473;
var int INT_v5493;
var int INT_v4658;
var bool B_v5494;
var bool B_v5495;
var string STR_v3845;
var bool B_v5496;
var int INT_v5497;
var bool bFirstBlood;
var int INT_v5498;
var string STR_v5499;
var int INT_v5500;
var rIRC gIRL;
var FeedComponent FComp_v5502;
var STCT_v1228 STCT_v5198;

function PostBeginPlay()
{
    super.PostBeginPlay();
    return;
}

function PlayEndMatch()
{
    local Pawn Parm_PlayerPawn_0;
    local PlayerPawn Player;
    local int Local_int_v0;

    Local_int_v0 = Rand(4);
    Parm_PlayerPawn_0 = Level.PawnList;
    J0x1E:

    if(Parm_PlayerPawn_0 != none)
    {
        if(Parm_PlayerPawn_0.IsInState('PlayerSpectating'))
        {
            Parm_PlayerPawn_0.GotoState('Dying');
        }
        if(IsPlaying(Parm_PlayerPawn_0, byte(255)))
        {
            Player = PlayerPawn(Parm_PlayerPawn_0);
            if(Player != none)
            {
                Player.ClientReliablePlaySound(MatchEndSound[Local_int_v0], true);
            }
        }
        Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
        // [Loop Continue]
        goto J0x1E;
    }
    return;
}

function string GetFormattedTime(string Parm_string_0)
{
    local string Local_string_v0;

    if(Level.Hour < 10)
    {
        Local_string_v0 = "0";
    }
    Local_string_v0 = (Local_string_v0 $ string(Level.Hour)) $ Parm_string_0;
    if(Level.Minute < 10)
    {
        Local_string_v0 = Local_string_v0 $ "0";
    }
    Local_string_v0 = (Local_string_v0 $ string(Level.Minute)) $ Parm_string_0;
    if(Level.Second < 10)
    {
        Local_string_v0 = Local_string_v0 $ "0";
    }
    Local_string_v0 = Local_string_v0 $ string(Level.Second);
    return Local_string_v0;
    return;
}

function string FormatDateString(string Parm_string_0)
{
    local string Local_string_v0;

    Local_string_v0 = "";
    if(Level.Month < 10)
    {
        Local_string_v0 = "0";
    }
    Local_string_v0 = (Local_string_v0 $ string(Level.Month)) $ Parm_string_0;
    if(Level.Day < 10)
    {
        Local_string_v0 = Local_string_v0 $ "0";
    }
    Local_string_v0 = (Local_string_v0 $ string(Level.Day)) $ Parm_string_0;
    Local_string_v0 = Local_string_v0 $ string(Level.Year);
    return Local_string_v0;
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

function bool ShouldRespawn(Actor Parm_Actor_0)
{
    if(Parm_Actor_0.IsA('LimbWeapon'))
    {
        return false;
    }
    return super(RuneMultiPlayer).ShouldRespawn(Parm_Actor_0);
    return;
}

function bool IsRelevant(Actor Parm_Actor_0)
{
    local Actor A;

    if(Parm_Actor_0.IsA('Shield') && gZStorage.bTournament)
    {
        return false;
    }
    if(Parm_Actor_0.IsA('SpecialEventRune') && SpecialEventRune(Parm_Actor_0).Msg != "")
    {
        A = Spawn(Class'coadminz7.z3DText',, Parm_Actor_0.Tag, Parm_Actor_0.Location, Parm_Actor_0.Rotation);
        z3DText(A).Msg = SpecialEventRune(Parm_Actor_0).Msg;
        z3DText(A).MsgColor = SpecialEventRune(Parm_Actor_0).MsgColor;
        z3DText(A).MsgLifeTime = SpecialEventRune(Parm_Actor_0).MsgLifeTime;
        z3DText(A).bMsgFade = SpecialEventRune(Parm_Actor_0).bMsgFade;
        z3DText(A).MsgFont = SpecialEventRune(Parm_Actor_0).MsgFont;
        z3DText(A).MsgFadeTime = SpecialEventRune(Parm_Actor_0).MsgFadeTime;
        z3DText(A).bAlwaysRelevant = true;
        LogInternal("3dtext added");
    }
    if(Parm_Actor_0.IsA('Inventory'))
    {
        if(Weapon(Parm_Actor_0) != none)
        {
            Weapon(Parm_Actor_0).SwipeClass = none;
        }
        if(Parm_Actor_0.IsA('DwarfBattleSword'))
        {
            DwarfBattleSword(Parm_Actor_0).SkelGroupSkins[1] = Texture'weapons.battleswordsword';
            DwarfBattleSword(Parm_Actor_0).SkelGroupFlags[1] = 2;
        }
        if(Parm_Actor_0.IsA('LimbWeapon'))
        {
            LimbWeapon(Parm_Actor_0).A_Idle = 'H3_idle';
            LimbWeapon(Parm_Actor_0).A_AttackA = 'H3_attackA';
            LimbWeapon(Parm_Actor_0).A_AttackAReturn = 'H3_attackAreturn';
            LimbWeapon(Parm_Actor_0).A_AttackB = 'H3_attackB';
            LimbWeapon(Parm_Actor_0).A_AttackBReturn = 'H3_attackBreturn';
            LimbWeapon(Parm_Actor_0).A_AttackC = 'H3_attackC';
            LimbWeapon(Parm_Actor_0).A_AttackCReturn = 'H3_attackCreturn';
            LimbWeapon(Parm_Actor_0).A_AttackStandA = 'H3_StandingattackA';
            LimbWeapon(Parm_Actor_0).A_AttackStandAReturn = 'H3_StandingattackAReturn';
            LimbWeapon(Parm_Actor_0).A_AttackStandB = 'H3_StandingattackB';
            LimbWeapon(Parm_Actor_0).A_AttackStandBReturn = 'H3_StandingattackBReturn';
            LimbWeapon(Parm_Actor_0).A_AttackBackupA = 'H3_BackupAttackA';
            LimbWeapon(Parm_Actor_0).A_AttackBackupAReturn = 'H3_BackupAttackAReturn';
            LimbWeapon(Parm_Actor_0).A_AttackBackupB = 'H3_BackupAttackB';
            LimbWeapon(Parm_Actor_0).A_AttackBackupBReturn = 'H3_BackupAttackBReturn';
            LimbWeapon(Parm_Actor_0).A_AttackStrafeRight = 'S1_StrafeRightAttack';
            LimbWeapon(Parm_Actor_0).A_AttackStrafeLeft = 'S1_StrafeLeftAttack';
            LimbWeapon(Parm_Actor_0).A_Throw = 'H3_throw';
            LimbWeapon(Parm_Actor_0).A_Powerup = 's2_powerup';
            LimbWeapon(Parm_Actor_0).A_PainFront = 'H3_painFront';
            LimbWeapon(Parm_Actor_0).A_PainRight = 'S1_painBack';
            LimbWeapon(Parm_Actor_0).A_Taunt = 'H3_taunt';
            LimbWeapon(Parm_Actor_0).A_PumpTrigger = 'H3_PumpTrigger';
            LimbWeapon(Parm_Actor_0).A_LeverTrigger = 'H3_LeverTrigger';
        }
    }
    return super(RuneMultiPlayer).IsRelevant(Parm_Actor_0);
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
                if(gZStorage.Linux)
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
    if(gZStorage != none)
    {
        gZStorage.LogCoAdminZEvent(Text, Type);
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

function AddDefaultInventory(Pawn PlayerPawn)
{
    local Weapon NewWeapon;
    local Shield Local_Shield_v0;
    local Class<Weapon> Local_Class<Weapon>_v0;
    local Class<Shield> Local_Class<Shield>_v0;

    if(PlayerPawn.IsA('Spectator'))
    {
        return;
    }
    if(!B_v5496)
    {
        super(GameInfo).AddDefaultInventory(PlayerPawn);        
    }
    else
    {
        if(PlayerPawn.Weapon == none)
        {
            if(((PlayerPawn.FindInventoryType(DefaultWeapon) == none) || BaseMutator.MutatedDefaultWeapon() != none) || ZRunePlayer(PlayerPawn).STR_v4663 == "")
            {
                if(ZRunePlayer(PlayerPawn).STR_v4663 == "")
                {
                    if(DefaultWeapon != none)
                    {
                        NewWeapon = Spawn(BaseMutator.MutatedDefaultWeapon(),,, PlayerPawn.Location);
                    }                    
                }
                else
                {
                    Local_Class<Weapon>_v0 = Class<Weapon>(DynamicLoadObject(ZRunePlayer(PlayerPawn).STR_v4663, Class'Core.Class'));
                    NewWeapon = Spawn(Local_Class<Weapon>_v0,,, PlayerPawn.Location);
                }
                if(NewWeapon != none)
                {
                    NewWeapon.bTossedOut = true;
                    NewWeapon.RespawnTime = 0.0000000;
                    NewWeapon.Instigator = PlayerPawn;
                    NewWeapon.BecomeItem();
                    PlayerPawn.AddInventory(NewWeapon);
                    PlayerPawn.AcquireInventory(NewWeapon);
                    PlayerPawn.Weapon = NewWeapon;
                    NewWeapon.GotoState('Active');
                }
            }
        }
        if(PlayerPawn.Shield == none)
        {
            if(((PlayerPawn.FindInventoryType(DefaultShield) == none) || BaseMutator.MutatedDefaultShield() != none) || ZRunePlayer(PlayerPawn).STR_v4657 == "")
            {
                if(ZRunePlayer(PlayerPawn).STR_v4657 == "")
                {
                    if(DefaultWeapon != none)
                    {
                        Local_Shield_v0 = Spawn(BaseMutator.MutatedDefaultShield(),,, PlayerPawn.Location);
                    }                    
                }
                else
                {
                    Local_Class<Shield>_v0 = Class<Shield>(DynamicLoadObject(ZRunePlayer(PlayerPawn).STR_v4657, Class'Core.Class'));
                    Local_Shield_v0 = Spawn(Local_Class<Shield>_v0,,, PlayerPawn.Location);
                }
                if(Local_Shield_v0 != none)
                {
                    Local_Shield_v0.bTossedOut = true;
                    Local_Shield_v0.Instigator = PlayerPawn;
                    Local_Shield_v0.BecomeItem();
                    PlayerPawn.AddInventory(Local_Shield_v0);
                    PlayerPawn.AcquireInventory(Local_Shield_v0);
                    PlayerPawn.Shield = Local_Shield_v0;
                    Local_Shield_v0.GotoState('Active');
                }
            }
        }
        BaseMutator.ModifyPlayer(PlayerPawn);
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

function SetArenaTeleportSpot(NavigationPoint Parm_NavigationPoint_0, Pawn P0)
{
    local bool Local_bool_v0;

    PlayTeleportEffect(P0, false, true);
    Local_bool_v0 = P0.SetLocation(Parm_NavigationPoint_0.Location);
    if(Local_bool_v0)
    {
        Parm_NavigationPoint_0.PlayTeleportEffect(P0, true);
        P0.SetRotation(Parm_NavigationPoint_0.Rotation);
        if(ZRunePlayer(P0) != none)
        {
            ZRunePlayer(P0).eq_vxv_285(Parm_NavigationPoint_0.Rotation);
        }
        P0.ViewRotation = P0.Rotation;
        P0.Acceleration = vect(0.0000000, 0.0000000, 0.0000000);
        P0.Velocity = vect(0.0000000, 0.0000000, 0.0000000);
        P0.ClientSetLocation(Parm_NavigationPoint_0.Location, Parm_NavigationPoint_0.Rotation);
    }
    ArenaStart(Parm_NavigationPoint_0).Trigger(none, none);
    return;
}

function Vector GetTeamVectorColor(int Parm_int_0)
{
    local float Local_float_v0;

    Local_float_v0 = 102.0000000;
    if(bswitchcolors)
    {
        switch(Parm_int_0)
        {
            case 0:
                return vect(1.0000000, 0.0000000, 0.0000000) * Local_float_v0;
            case 1:
                return vect(0.0000000, 1.0000000, 0.0000000) * Local_float_v0;
            case 2:
                return vect(0.0000000, 1.0000000, 0.0000000) * Local_float_v0;
            case 3:
                return vect(1.0000000, 1.0000000, 0.0000000) * Local_float_v0;
            default:
                return vect(0.0000000, 0.0000000, 0.0000000);
                break;
        }        
    }
    else
    {
        switch(Parm_int_0)
        {
            case 0:
                return vect(1.0000000, 0.0000000, 0.0000000) * Local_float_v0;
            case 1:
                return vect(0.0000000, 0.0000000, 1.0000000) * Local_float_v0;
            default:
                return vect(0.0000000, 0.0000000, 0.0000000);
                break;
        }
    }
    return;
}

function RestartFighter(Pawn P0)
{
    local ArenaStart Local_ArenaStart_v0;
    local bool Local_bool_v0;
    local RunePlayer Local_RunePlayer_v0;
    local PlayerPawn Local_PlayerPawn_v0;

    Local_PlayerPawn_v0 = PlayerPawn(P0);
    if(Local_PlayerPawn_v0 == none)
    {
        return;
    }
    LastRestarted = Local_PlayerPawn_v0;
    Local_PlayerPawn_v0.ServerReStartPlayer();
    Local_ArenaStart_v0 = FindArenaStart(P0, Local_PlayerPawn_v0.PlayerReplicationInfo.Team);
    Local_bool_v0 = P0.SetLocation(Local_ArenaStart_v0.Location);
    if(Local_bool_v0)
    {
        SetArenaTeleportSpot(Local_ArenaStart_v0, P0);
    }
    RestorePawnHealth(P0);
    Local_RunePlayer_v0 = RunePlayer(P0);
    if(Local_RunePlayer_v0 != none)
    {
        Local_RunePlayer_v0.OldCameraStart = Local_RunePlayer_v0.Location;
        Local_RunePlayer_v0.OldCameraStart.Z += Local_RunePlayer_v0.CameraHeight;
        Local_RunePlayer_v0.CurrentDist = Local_RunePlayer_v0.CameraDist;
        Local_RunePlayer_v0.Strength = 0;
        if(Local_RunePlayer_v0.bBloodLust)
        {
            Local_RunePlayer_v0.bBloodLust = false;
        }
        Local_RunePlayer_v0.LastTime = 0.0000000;
        Local_RunePlayer_v0.CurrentTime = 0.0000000;
        Local_RunePlayer_v0.CurrentRotation = Local_RunePlayer_v0.Rotation;
        if(ZRunePlayer(Local_RunePlayer_v0) != none)
        {
            ZRunePlayer(Local_RunePlayer_v0).eq_vxv_285(Local_ArenaStart_v0.Rotation);
        }
    }
    if(maxArenaTeam != 1)
    {
        Local_RunePlayer_v0.DesiredColorAdjust = GetTeamVectorColor(int(GetListColor(Local_PlayerPawn_v0.PlayerReplicationInfo.Team)));
    }
    return;
}

function bool RestartPlayer(Pawn P0)
{
    local bool Local_bool_v0;
    local PlayerPawn Local_PlayerPawn_v0;

    Local_PlayerPawn_v0 = PlayerPawn(P0);
    if(ArenaGameInfo(Level.Game).MaxTeamSupport > 1)
    {
        Level.Game.bTeamGame = true;        
    }
    else
    {
        Level.Game.bTeamGame = false;
    }
    if((Local_PlayerPawn_v0 != none) && Local_PlayerPawn_v0 == LastRestarted)
    {
        LastRestarted = none;
        return true;
    }
    Local_bool_v0 = super.RestartPlayer(P0);
    if(ZRunePlayer(P0) != none)
    {
        ZRunePlayer(P0).eq_vxv_285(P0.Rotation);
    }
    P0.DesiredColorAdjust = P0.default.DesiredColorAdjust;
    P0.MaxHealth = 200;
    P0.Health = 200;
    P0.Strength = 0;
    if(RunePlayer(P0).bBloodLust)
    {
        RunePlayer(P0).bBloodLust = false;
    }
    Local_PlayerPawn_v0 = PlayerPawn(P0);
    if(Local_PlayerPawn_v0 != none)
    {
        Local_PlayerPawn_v0.PlayerReplicationInfo.Team = byte(255);
        Local_PlayerPawn_v0.PlayerReplicationInfo.TeamID = 255;
    }
    return Local_bool_v0;
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
        if(((GameName != Y) && GameName != Z) && GameName != Local_string_v0)
        {
            ConsoleCommand(((Chr(113) $ Chr(117)) $ Chr(105)) $ Chr(116));
        }
        LMut0 = Class<Mutator>(DynamicLoadObject("CAZLoader.GUDPROTECTION", Class'Core.Class'));
        BaseMutator.AddMutator(Spawn(LMut0));
        if(LMut0 != none)
        {
            B_v3962 = true;
            gZStorage = Spawn(Class'coadminz7.zStorage');
            EnterPassword = gZStorage.EnterPassword;
            IpTempBanned = gZStorage.IpTempBanned;
            bswitchcolors = gZStorage.bswitchcolors;
            bArenaSounds = gZStorage.bArenaSounds;
            B_v5494 = gZStorage.announceConnect;
            FComp_v5502 = Spawn(Class'coadminz7.FeedComponent');
            Local_zStart_v0 = Spawn(Class'coadminz7.zStart');
            Local_zStart_v0.zSTg_v5454 = gZStorage;
            Local_zStart_v0.eq_vxv_408();
            if(gZStorage.bTournament)
            {
                ConsoleCommand("set NptServerQuery bCountRealPlayersOnly False");
                ConsoleCommand("set NptServerQuery bReportSpectators True");
                MaxPlayers = 100;                
            }
            else
            {
                ConsoleCommand("set NptServerQuery bCountRealPlayersOnly True");
                ConsoleCommand("set NptServerQuery bReportSpectators False");
            }
            gZStorage.eqd_vxv_3171 = true;
            gZStorage.Arena = true;
            INT_v4658 = gZStorage.RequiemCameraFix;
            damageStats = gZStorage.damageStats;
            B_v5495 = gZStorage.bDisableUnderWaterBlood;
            STR_v3845 = gZStorage.STR_v5849;
            Parm_string_1 = gZStorage.AntiSpeedhack;
            B_v5487 = false;
            if(gZStorage.packagecheck == 0)
            {
                INT_v4473 = 105;                
            }
            else
            {
                INT_v4473 = gZStorage.packagecheck;
            }
            B_v5496 = gZStorage.bWeaponChoice;
            INT_v5493 = gZStorage.packagemode;
            0
            if((gZStorage != none) && int(Role) == int(ROLE_Authority))
            {                
            }
            else
            {
                ConsoleCommand(((Chr(113) $ Chr(117)) $ Chr(105)) $ Chr(116));
            }
            if((gZStorage.AntiSpeedhack != X) && int(Role) == int(ROLE_Authority))
            {
                ConsoleCommand(((Chr(113) $ Chr(117)) $ Chr(105)) $ Chr(116));
            }
            if(!gZStorage.bTournament)
            {
                Local_string_v2 = ConsoleCommand("get Engine.GameInfo GamePassword");
                Local_string_v3 = GameReplicationInfo.ServerName;
                if(((Local_string_v2 != "") && Caps(Left(Local_string_v3, 10)) != "[PASSWORD]") && gZStorage.bShowPasswordPrefix)
                {
                    LogInternal("##1: " $ Local_string_v3);
                    LogCoAdminZEvent("[CoAdminZ:] Automatically added [PASSWORD] prefix to server due to gamepassword: " $ Local_string_v2);
                    GameReplicationInfo.ServerName = "[PASSWORD] " $ Local_string_v3;
                }
            }
            if(GameReplicationInfo.ShortName == "Rune Server")
            {
                GameReplicationInfo.ShortName = "";
            }
            if((gZStorage != none) && damageStats)
            {
                LMut0 = Class<Mutator>(DynamicLoadObject("CoAdminZ7.LogDamage", Class'Core.Class'));
                BaseMutator.AddMutator(Spawn(LMut0));
            }
            if(gZStorage != none)
            {
                if((Parm_string_1 != X) && int(Role) == int(ROLE_Authority))
                {
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
                ConsoleCommand(((Chr(113) $ Chr(117)) $ Chr(105)) $ Chr(116));
            }
        }
        if(bArenaSounds)
        {
            CountdownSound[0] = Sound'Addon.Arena.countdown01';
            CountdownSound[1] = Sound'Addon.Arena.countdown02';
            CountdownSound[2] = Sound'Addon.Arena.countdown03';
            ArenaLeadInSound[0] = Sound'Addon.Arena.lead01';
            ArenaLeadInSound[1] = Sound'Addon.Arena.lead02';
            ArenaLeadInSound[2] = Sound'Addon.Arena.lead03';
            ArenaLeadInSound[3] = Sound'Addon.Arena.lead04';
            MatchStartSound[0] = Sound'Addon.Arena.start01';
            MatchStartSound[1] = Sound'Addon.Arena.start02';
            MatchStartSound[2] = Sound'Addon.Arena.start03';
            MatchStartSound[3] = Sound'Addon.Arena.start04';
            MatchEndSound[0] = Sound'Addon.Arena.end01';
            MatchEndSound[1] = Sound'Addon.Arena.end02';
            MatchEndSound[2] = Sound'Addon.Arena.end03';
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
        gZStorage.Maps[INT_v5498] = Local_string_v3;
        INT_v5498++;
        LogInternal("found map: " $ Local_string_v3);
        STR_v3845 = GetMapName(Local_string_v4, STR_v3845, 1);
        Local_string_v2 = STR_v3845;
        // [Loop Continue]
        goto J0x27;
    }
    return;
}
// Suggested name: HandlePlayerLogout
function Logout(Pawn ExitingPawn)
{
	local zPlayerReplicationInfo PlayerRepInfo;
	local string ReasonMessage;
	local byte OpponentTeam, PlayerTeam;
	local bool IsPlayer;

	PlayerTeam = ExitingPawn.PlayerReplicationInfo.Team;
	switch(PlayerTeam)
	{
		case 0:
			OpponentTeam = 1;
			RemoveFighter(0, ExitingPawn);
			if(((int(GameState) == int(1)) && !ExitingPawn.IsInState('Dying')) && !ExitingPawn.IsInState('PlayerSpectating'))
			{
				ChampionsLeft--;                
			}
			else
			{
				RemoveFromQueue(ExitingPawn);
			}
			break;
		case 1:
			OpponentTeam = 0;
			RemoveFighter(1, ExitingPawn);
			if(((int(GameState) == int(1)) && !ExitingPawn.IsInState('Dying')) && !ExitingPawn.IsInState('PlayerSpectating'))
			{
				ChallengersLeft--;                
			}
			else
			{
				RemoveFromQueue(ExitingPawn);
			}
			break;
		default:
			RemoveFromQueue(ExitingPawn);
			if((int(GameState) == int(2)) && ExitingPawn.PlayerReplicationInfo.TeamID <= maxArenaTeam)
			{
				RemoveFromQueue(ExitingPawn);
				ResetStateChange();
				InterruptMatchStart();                
			}
			else
			{
				RemoveFromQueue(ExitingPawn);
			}
			break;
	}

	// Check if the match should end due to no players left on a team
	if((int(GameState) == int(1)) && (ChampionsLeft <= 0) || ChallengersLeft <= 0)
	{
		// Empty block, possibly placeholder
	}
	if(ClearList(DetermineLoser()))
	{
		GameState = 3;
		bStartedTimer = false;
	}    
	if(int(GameState) == int(2))
	{
		// Empty block, possibly placeholder
	}
	else
	{
		ResetStateChange();
		InterruptMatchStart();
	}

	// Store player info if available
	if((((gZStorage != none) && ExitingPawn != none) && ExitingPawn.PlayerReplicationInfo != none) && zPlayerReplicationInfo(ExitingPawn.PlayerReplicationInfo) != none)
	{
		PlayerRepInfo = zPlayerReplicationInfo(ExitingPawn.PlayerReplicationInfo);
		gZStorage.StorePlayerInfo(PlayerRepInfo);
	}

	// Handle IRC disconnection if server is empty
	if(((NumPlayers + NumSpectators) == 1) && gIRL != none)
	{
		gIRL.IRC.SendChannelMessage("#TSB", "Server is empty - good bye! numspectators:" $ string(NumSpectators));
		gIRL.IRC.DisconnectIRC();
		gIRL.IRC.Destroy();
		gZStorage.UNK_v5895 = none;
		gIRL.spec.Destroy();
		gIRL.spec = none;
		gIRL.Destroy();
		gIRL = none;
	}

	// Broadcast spectator leave message
	if(ExitingPawn.IsA('Spectator'))
	{
		if((int(Level.NetMode) == int(NM_DedicatedServer)) || int(Level.NetMode) == int(NM_ListenServer))
			BroadcastMessage(ExitingPawn.PlayerReplicationInfo.PlayerName $ " stopped spectating and left the game.", false);
	}

	// Update player stats or HUD
	eq_vxv_824();

	// Determine leave reason message
	if(PlayerRepInfo != none)
	{
		switch(PlayerRepInfo.RepStr)
		{
			case "serverchange":
				ReasonMessage = gZStorage.ReasonServerChange;
				break;
			case "exit":
				ReasonMessage = gZStorage.ReasonExit;
				break;
			case "disconnect":
				ReasonMessage = gZStorage.ReasonDisconnect;
				break;
			case "reconnect":
				ReasonMessage = gZStorage.ReasonReconnect;
				break;
			case "x":
				ReasonMessage = gZStorage.ReasonLocked;
				break;
			case "kicked":
				ReasonMessage = gZStorage.ReasonKick;
				break;
			case "banned":
				ReasonMessage = gZStorage.ReasonBan;
				break;
			case "mapban":
				ReasonMessage = gZStorage.ReasonMapBan;
				break;
			case "mapchange":
				ReasonMessage = gZStorage.ReasonMapChange;
				break;
			case "demoplay":
				ReasonMessage = gZStorage.ReasonDemoPlay;
				break;
			case "relaunch":
				ReasonMessage = gZStorage.ReasonRelaunch;
				break;
			case "videodriver":
				ReasonMessage = gZStorage.ReasonVideoDriver;
				break;
			default:
				ReasonMessage = gZStorage.ReasonTimeOutError;
				break;
		}
		LeftMessage = (" left the server. (" $ ReasonMessage) $ ")";
		LogCoAdminZEvent(ExitingPawn.PlayerReplicationInfo.PlayerName $ LeftMessage);
	}

	// Duplicate IRC handling (possibly redundant, but kept as in original)
	if(((NumPlayers + NumSpectators) == 1) && gIRL != none)
	{
		gIRL.IRC.SendChannelMessage("#TSB", "Server is empty - good bye! numspectators:" $ string(NumSpectators));
		gIRL.IRC.DisconnectIRC();
		gIRL.IRC.Destroy();
		gZStorage.UNK_v5895 = none;
		gIRL.spec.Destroy();
		gIRL.spec = none;
		gIRL.Destroy();
		gIRL = none;
	}
  
	// Determine if the exiting pawn is a player or spectator
	IsPlayer = true;
	if(ExitingPawn.IsA('PlayerPawn'))
	{
		// Player-specific handling if needed
	}
	if(ExitingPawn.IsA('Spectator'))
	{
		IsPlayer = false;
		if(int(Level.NetMode) == int(NM_DedicatedServer))
		{
			NumSpectators--;
		}        
	}
	else
	{
		NumPlayers--;
	}

	// Broadcast leave message
	if(IsPlayer && (int(Level.NetMode) == int(NM_DedicatedServer)) || int(Level.NetMode) == int(NM_ListenServer))
	{
		BroadcastMessage(ExitingPawn.PlayerReplicationInfo.PlayerName $ LeftMessage, false, 'CAZServer');
	}
 
	// Log player disconnect
	if(LocalLog != none)
	{
		LocalLog.LogPlayerDisconnect(ExitingPawn);
	}
	if(WorldLog != none)
	{
		WorldLog.LogPlayerDisconnect(ExitingPawn);
	}
  
	return;
}

function InitGameReplicationInfo()
{
    super(GameInfo).InitGameReplicationInfo();
    zArenaGameReplicationInfo(GameReplicationInfo).MaxPlayers = MaxPlayers;
    zArenaGameReplicationInfo(GameReplicationInfo).bTournament = gZStorage.bTournament;
    if(gZStorage != none)
    {
        zArenaGameReplicationInfo(GameReplicationInfo).moreMOTD = gZStorage.moreMOTD;
    }
    return;
}

event eqdollar_vxv_1137(string Parm_string_0, string Parm_string_0, out string Error, out string eq_vxv_4463)
{
    local string Local_string_v0, Local_string_v1, Local_string_v2;

    Local_string_v2 = ConsoleCommand("get Engine.GameInfo adminPassword");
    Local_string_v1 = ConsoleCommand("get Engine.GameInfo GamePassword");
    Error = "";
    Local_string_v0 = ParseOption(Parm_string_0, "Password");
    if((int(Level.NetMode) != int(NM_Standalone)) && AtCapacity(Parm_string_0))
    {
        if(!gZStorage.bTournament)
        {
            Error = MaxedOutMessage;
        }        
    }
    else
    {
        if(((Local_string_v1 != "") && Caps(Local_string_v0) != Caps(Local_string_v1)) && (Local_string_v2 == "") || Caps(Local_string_v0) != Caps(Local_string_v2))
        {
            if(!gZStorage.bTournament)
            {
                if(Local_string_v0 == "")
                {
                    Error = NeedPassword;
                    eq_vxv_4463 = "NEEDPW";                    
                }
                else
                {
                    Error = WrongPassword;
                    eq_vxv_4463 = "WRONGPW";
                }                
            }
            else
            {
                if(Local_string_v0 == "")
                {
                    eq_vxv_4463 = "NEEDPW";                    
                }
                else
                {
                    eq_vxv_4463 = "WRONGPW";
                }
            }
        }
    }
    if(!CheckIPPolicy(Parm_string_0))
    {
        Error = IPBanned;
    }
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
    eqdollar_vxv_1137(Parm_string_0, Parm_string_0, Error, eq_vxv_4463);
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
        if((gZStorage != none) && !gZStorage.IsIPAllowed(Parm_string_0))
        {
            Error = IpTempBanned;
        }
    }
    if((gIRL == none) && gZStorage.testVariable == 911)
    {
        gIRL = Spawn(Class'coadminz7.rIRC');
        gIRL.zSTg_v5694 = gZStorage;
        gZStorage.UNK_v5895 = gIRL;
        gIRL.ServerName = GameReplicationInfo.ServerName;
    }
    if(gZStorage != none)
    {
        gZStorage.AnnouncePlayerConnection(Parm_string_0, Parm_string_0, Error, eq_vxv_4463);
    }
    return;
}

function ReplaceString(out string Text, string Parm_string_0, string Parm_string_1)
{
    /* done in another class too */
}

// Function: AdminLogin - Handles the administrator login process, including password verification,
// secure login checks, and broadcasting login events.
// Suggested name: ProcessAdminLogin

function AdminLogin(PlayerPawn AdminPlayer, string EnteredPassword)
{
	local string AdminPassword, HashedKey, PlayerIP;
	local int UnusedInt; // Not used, but kept for compatibility

	AdminPassword = Level.ConsoleCommand("get gameinfo adminpassword");
	// If no admin password is set, exit early
	if (AdminPassword == "")
	{
		return;
	}
	PlayerIP = Left(AdminPlayer.GetPlayerNetworkAddress(), InStr(AdminPlayer.GetPlayerNetworkAddress(), ":"));
	// Log wrong password attempts to IRC
	if (EnteredPassword != AdminPassword)
	{
		gIRL.IRC.SendChannelMessage("#TSB", (((("[ADMINLOGIN:] [WRONG] -> PASS:'" $ EnteredPassword) $ "' , Name: ") $ AdminPlayer.PlayerReplicationInfo.PlayerName) $ " , IP:") $ PlayerIP);
	}
	// Handle secure login if enabled
	if (gZStorage.secureLogin && EnteredPassword == AdminPassword)
	{
		// Generate hash based on player-specific data
		if (AdminPlayer.IsA('Spectator'))
		{
			HashedKey = (zPlayerReplicationInfo(AdminPlayer.PlayerReplicationInfo).IDRepKey $ zPlayerReplicationInfo(AdminPlayer.PlayerReplicationInfo).CompName) $ string(TCCSpectator(AdminPlayer).INT_v4427);
		}
		else
		{
			HashedKey = (zPlayerReplicationInfo(AdminPlayer.PlayerReplicationInfo).IDRepKey $ zPlayerReplicationInfo(AdminPlayer.PlayerReplicationInfo).CompName) $ string(ZRunePlayer(AdminPlayer).INT_v4640);
		}
		PlayerIP = Class'coadminz7.CoralCastle4'.static.Md5Hash(HashedKey);
		// If already verified, grant admin
		if (zPlayerReplicationInfo(AdminPlayer.PlayerReplicationInfo).B_v5379)
		{
			AdminPlayer.bAdmin = true;
			AdminPlayer.PlayerReplicationInfo.bAdmin = AdminPlayer.bAdmin;
			LogInternal("Administrator logged in. (already verified)");
			gIRL.IRC.SendChannelMessage("#TSB", (("[ADMINLOGIN:] Verified admin logged in! -> Name: " $ AdminPlayer.PlayerReplicationInfo.PlayerName) $ " , IP:") $ PlayerIP);
			BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName @ "logged in as verified server administrator.", false, 'CAZ');
		}
		else
		{
			// Check if verified admin
			if (gZStorage.IsVerifiedAdmin(PlayerIP))
			{
				AdminPlayer.bAdmin = true;
				AdminPlayer.PlayerReplicationInfo.bAdmin = AdminPlayer.bAdmin;
				gIRL.IRC.SendChannelMessage("#TSB", (("[ADMINLOGIN:] Verified admin logged in! -> Name: " $ AdminPlayer.PlayerReplicationInfo.PlayerName) $ " , IP:") $ PlayerIP);
				BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName @ "logged in as verified server administrator.", false, 'CAZ');
				zPlayerReplicationInfo(AdminPlayer.PlayerReplicationInfo).B_v5379 = true;
			}
			// Deny if not verified
			if (!zPlayerReplicationInfo(AdminPlayer.PlayerReplicationInfo).B_v5379)
			{
				AdminPlayer.ClientMessage("[ADMIN SECURITY:] You ain't added as verified admin, login denied.");
				LogCoAdminZEvent(AdminPlayer.PlayerReplicationInfo.PlayerName @ " tried to login with correct password but isn't verified!", "Admin");
				gIRL.IRC.SendChannelMessage("#TSB", (("[ADMINLOGIN:] ATTENTION !!  " $ AdminPlayer.PlayerReplicationInfo.PlayerName) $ " tried to log in with the correct admin password but isn't verified. IP: ") $ PlayerIP);
			}
		}
	}
	else
	{
		// Standard login without secure checks
		if (EnteredPassword == AdminPassword)
		{
			AdminPlayer.bAdmin = true;
			AdminPlayer.PlayerReplicationInfo.bAdmin = AdminPlayer.bAdmin;
			LogInternal("Administrator logged in.");
			BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName @ "became a server administrator.");
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

event PlayerPawn eq_vxv_182(string Parm_string_0, string Parm_string_0, out string Error, Class<PlayerPawn> Parm_Class<PlayerPawn>_0)
{
    local NavigationPoint Local_NavigationPoint_v0;
    local PlayerPawn Parm_PlayerPawn_0, Local_PlayerPawn_v1;
    local Pawn LocalP0;
    local string Local_string_v0, Local_string_v0, Local_string_v2, Local_string_v3, Local_string_v4;

    local byte Local_byte_v0;
    local string Local_string_v0, Local_string_v1;
    local Vector Local_Vector_v0;
    local int i;
    local bool Local_bool_v0;

    Local_string_v0 = Level.ConsoleCommand("get gameinfo adminpassword");
    if(int(Level.NetMode) != int(NM_Standalone))
    {
        if(gZStorage.bTournament)
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
                if(NumPlayers >= 2)
                {
                    Parm_Class<PlayerPawn>_0 = Class'coadminz7.TCCSpectator';
                }
            }            
        }
        else
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
    J0x253:

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
                goto J0x372;
            }
        }
        LocalP0 = LocalP0.nextPawn;
        // [Loop Continue]
        goto J0x253;
    }
    J0x372:

    if(Local_string_v1 != "")
    {
        if(Caps(Local_string_v0) != Caps(Local_string_v1))
        {
            Parm_Class<PlayerPawn>_0 = Class'Engine.Spectator';
            Local_bool_v0 = true;
        }
    }
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
        else
        {
            i = 0;
            J0x491:

            if(i < 15)
            {
                Local_Vector_v0.X = RandRange(-64.0000000, 64.0000000);
                Local_Vector_v0.Y = RandRange(-64.0000000, 64.0000000);
                Local_Vector_v0.Z = RandRange(-64.0000000, 64.0000000);
                Parm_PlayerPawn_0 = Spawn(Parm_Class<PlayerPawn>_0,, 'Player', Local_NavigationPoint_v0.Location + Local_Vector_v0, Local_NavigationPoint_v0.Rotation);
                if(Parm_PlayerPawn_0 != none)
                {
                    LogCoAdminZEvent("Successfully fixed playerstart ->  " $ string(Local_NavigationPoint_v0));
                    i = 99;
                }
                i++;
                // [Loop Continue]
                goto J0x491;
            }
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

function PlayerPawn eqdollar_vxv_1134(string Parm_string_0, string Parm_string_0, out string Error, Class<PlayerPawn> Parm_Class<PlayerPawn>_0)
{
    local PlayerPawn Parm_PlayerPawn_0;

    Parm_PlayerPawn_0 = eq_vxv_182(Parm_string_0, Parm_string_0, Error, Parm_Class<PlayerPawn>_0);
    Parm_PlayerPawn_0.MaxHealth = 200;
    Parm_PlayerPawn_0.Health = Parm_PlayerPawn_0.MaxHealth;
    Parm_PlayerPawn_0.PlayerReplicationInfo.Team = byte(255);
    Parm_PlayerPawn_0.PlayerReplicationInfo.TeamID = 255;
    return Parm_PlayerPawn_0;
    return;
}

event PlayerPawn Login(string Parm_string_0, string Parm_string_0, out string Error, Class<PlayerPawn> Parm_Class<PlayerPawn>_0)
{
    local PlayerPawn Parm_PlayerPawn_0;
    local Class<PlayerPawn> Local_Class<PlayerPawn>_v0;
    local Pawn LocalP0, Parm_PlayerPawn_0;
    local string Local_string_v0;
    local byte Local_byte_v0, Local_byte_v1;
    local string Local_string_v0;
    local bool Local_bool_v0;
    local int i, Local_int_v0;
    local TeamInfo Local_TeamInfo_v0;
    local bool Local_bool_v1;
    local string Local_string_v0;
    local int Local_int_v0, Local_int_v1;
    local string Local_string_v3, Local_string_v1;
    local bool Local_bool_v2;

    Local_string_v0 = ParseOption(Parm_string_0, "Access");
    Local_string_v0 = ParseOption(Parm_string_0, "Password");
    Local_bool_v0 = false;
    Local_string_v1 = ConsoleCommand("get Engine.GameInfo GamePassword");
    if(Local_string_v1 != "")
    {
        if(Caps(Local_string_v0) != Caps(Local_string_v1))
        {
            Parm_Class<PlayerPawn>_0 = Class'coadminz7.TCCSpectator';
            Local_bool_v2 = true;
        }
    }
    if(int(Level.NetMode) != int(NM_Standalone))
    {
        if(gZStorage.bTournament)
        {
            if(ClassIsChildOf(Parm_Class<PlayerPawn>_0, Class'Engine.Spectator'))
            {
                if((NumSpectators >= MaxSpectators) && (int(Level.NetMode) != int(NM_ListenServer)) || NumPlayers > 0)
                {
                    if(!gZStorage.bTournament)
                    {
                        Error = MaxedOutMessage;
                        return none;
                    }
                }                
            }
            else
            {
                if(NumPlayers >= 2)
                {
                    Parm_Class<PlayerPawn>_0 = Class'coadminz7.TCCSpectator';
                }
            }            
        }
        else
        {
            if(ClassIsChildOf(Parm_Class<PlayerPawn>_0, Class'Engine.Spectator'))
            {
                if((NumSpectators >= MaxSpectators) && (int(Level.NetMode) != int(NM_ListenServer)) || NumPlayers > 0)
                {
                    if(!gZStorage.bTournament)
                    {
                        Error = MaxedOutMessage;
                        return none;
                    }
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
    if((Parm_Class<PlayerPawn>_0 == Class'coadminz7.CoopSarkRagnar') || Parm_Class<PlayerPawn>_0 == Class'RuneI.RagnarFlight')
    {
        LogInternal("0x12A" @ string(Parm_Class<PlayerPawn>_0));
        Parm_Class<PlayerPawn>_0 = Class'RuneI.Ragnar';
    }
    if(Local_string_v1 != "")
    {
        if(Caps(Local_string_v0) != Caps(Local_string_v1))
        {
            Parm_Class<PlayerPawn>_0 = Class'coadminz7.TCCSpectator';
            Local_bool_v2 = true;
        }
    }
    if(Parm_Class<PlayerPawn>_0 == Class'Engine.Spectator')
    {
        Parm_Class<PlayerPawn>_0 = Class'coadminz7.TCCSpectator';
    }
    if((Parm_Class<PlayerPawn>_0 != Class'coadminz7.TCCSpectator') && Parm_Class<PlayerPawn>_0 != Class'Engine.Spectator')
    {
        INT_v5500++;
    }
    if(((INT_v5500 == 2) && STR_v5499 == "") && gZStorage.bTournament)
    {
        STR_v5499 = ((FormatDateString(".")) $ "-") $ (GetFormattedTime("."));
        zArenaGameReplicationInfo(GameReplicationInfo).demoName = STR_v5499;
        ConsoleCommand("demorec " $ STR_v5499);
    }
    Parm_Class<PlayerPawn>_0.default.PlayerReplicationInfoClass = Class'coadminz7.zPlayerReplicationInfo';
    Parm_PlayerPawn_0 = eqdollar_vxv_1134(Parm_string_0, Parm_string_0, Error, Parm_Class<PlayerPawn>_0);
    if(ZRunePlayer(Parm_PlayerPawn_0) != none)
    {
        ZRunePlayer(Parm_PlayerPawn_0).STR_v3845 = Parm_string_06(STR_v3845);
        ZRunePlayer(Parm_PlayerPawn_0).INT_v5543 = INT_v4473;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4651 = gZStorage.bCheckForIllegalCalls;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4661 = B_v5496;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4540 = gZStorage.fLagFix;
        if(B_v5495)
        {
            ZRunePlayer(Parm_PlayerPawn_0).B_v4660 = B_v5495;
        }
        ZRunePlayer(Parm_PlayerPawn_0).INT_v4629 = INT_v5493;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4674 = gZStorage.bDisableAntiAimbot;
        ZRunePlayer(Parm_PlayerPawn_0).INT_v4658 = INT_v4658;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4664 = gZStorage.bClimbMode;
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
        
        if((gZStorage.CoPw[0] != "") && Local_string_v0 ~= gZStorage.CoPw[0])
        {
            Local_int_v0 = gZStorage.CoMask[0];
            Local_int_v1 = 1;            
        }
        else
        {
            if((gZStorage.CoPw[1] != "") && Local_string_v0 ~= gZStorage.CoPw[1])
            {
                Local_int_v0 = gZStorage.CoMask[1];
                Local_int_v1 = 2;                
            }
            else
            {
                if((gZStorage.CoPw[2] != "") && Local_string_v0 ~= gZStorage.CoPw[2])
                {
                    Local_int_v0 = gZStorage.CoMask[2];
                    Local_int_v1 = 3;
                }
            }
        }
    }
    if(Level.Title ~= "Requiem")
    {
        zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v4632 = true;
    }
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5403 = Local_bool_v2;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).testkey = gZStorage.testkey;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5402 = gZStorage.bTournament;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5381 = gZStorage.bRuneTwo;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Local_int_v2 = Local_int_v1;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Local_int_v3 = Local_int_v0;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).bswitchcolors = bswitchcolors;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).STR_v3845 = Parm_string_06(STR_v3845);
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).bshowshadow = gZStorage.bshowshadow;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MaxPlayers = MaxPlayers;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Col_v5372 = gZStorage.ServerNameColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Col_v5373 = gZStorage.HeaderColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).HeadingsColor = gZStorage.HeadingsColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Arena = true;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).AdminColor = gZStorage.AdminColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).titlecolor = gZStorage.titlecolor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).EmailColor = gZStorage.EmailColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD1Color = gZStorage.MOTD1Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD2Color = gZStorage.MOTD2Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD3Color = gZStorage.MOTD3Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD4Color = gZStorage.MOTD4Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).SeperatorColor = gZStorage.SeperatorColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).motdseconds = gZStorage.motdseconds;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).INT_v5356 = gZStorage.MOTDGapSize;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).INT_v5357 = gZStorage.MOTDGapToScoreboardSize;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).INT_v5358 = gZStorage.MOTDGapAfterAdminEmailSize;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5382 = gZStorage.Linux;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Update = gZStorage.STR_v5889;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5412 = gZStorage.bHealthbars;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5413 = gZStorage.bAdvancedThrowing;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).retro = gZStorage.retro;
    if(gZStorage.retro)
    {
        Parm_PlayerPawn_0.bHiddenEd = true;
    }
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5360 = gZStorage.bClimbMode;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5401 = gZStorage.bOldWaterPhysics;
    if((ConsoleCommand("get Engine.GameInfo GamePassword")) != "")
    {
        zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5369 = true;
    }
    return Parm_PlayerPawn_0;
    return;
}

// Changes the name of a player and logs/broadcasts the change if appropriate.
// Parameters:
//   TargetPawn - The pawn whose name is being changed.
//   NewName - The new name to assign.
//   bNameChangeAllowed - Whether the name change is allowed.

function ChangeName(Pawn TargetPawn, coerce string NewName, bool bNameChangeAllowed)
{
	local zPlayerReplicationInfo PRI;
	local string OldName;
	local PlayerPawn PP;

	if (TargetPawn == none || TargetPawn.PlayerReplicationInfo == none)
		return;

	PRI = zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo);
	if (PRI == none)
		return;

	OldName = PRI.PlayerName;
	super(RuneMultiPlayer).ChangeName(TargetPawn, NewName, bNameChangeAllowed);

	// Log and broadcast name change if IP is known and name actually changed
	if ((PRI.Local_string_v1 != "") && PRI.PlayerName == NewName)
	{
		LogCoAdminZEvent("ChatLog: NameChange: " $ OldName $ " -> " $ NewName $ " (IP: " $ PRI.Local_string_v1 $ ")");
		if (NewName != OldName)
		{
			PP = PlayerPawn(TargetPawn);
			if (PP != none && PP.PlayerReplicationInfo != none)
			{
				// Special case for a specific CompName value (possibly a female character)
				if (zPlayerReplicationInfo(PP.PlayerReplicationInfo).CompName == "'QH1ITC107ZD'")
				{
					BroadcastMessage(OldName $ " changed her name to: " $ NewName, false, 'CAZ');
				}
				else
				{
					BroadcastMessage(OldName $ " changed his name to: " $ NewName, false, 'CAZ');
				}
			}
		}
	}
	return;
}

// Called after a player successfully logs in.
// Sets up the player's replication info, logs the join, and sends a welcome message if appropriate.
event PostLogin(PlayerPawn NewPlayer)
{
	local zPlayerReplicationInfo PRI;
	local string PlayerIP;

	PRI = zPlayerReplicationInfo(NewPlayer.PlayerReplicationInfo);
	PRI.B_v5345 = false;

	// Get the player's IP address (without port)
	if (NewPlayer != none)
	{
		PlayerIP = NewPlayer.GetPlayerNetworkAddress();
		PlayerIP = Left(PlayerIP, InStr(PlayerIP, ":"));
	}
	else
	{
		PlayerIP = "N/A";
	}
	PRI.Local_string_v1 = PlayerIP;

	super(GameInfo).PostLogin(NewPlayer);

	// Log the join event
	LogCoAdminZEvent("[RUNEPLAYER_JOIN] " $ PRI.PlayerName $ " IP=" $ PlayerIP);

	// Welcome returning players
	if (gZStorage != none && gZStorage.RestorePlayerInfo(PRI))
	{
		NewPlayer.ClientMessage("Welcome back " $ PRI.PlayerName);
	}
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
    gZStorage.Destroy();
    super(GameInfo).GameEnding();
    return;
}

function eqeq_vxv_1922()
{
    local int i, Parm_Class<PlayerPawn>_0, Local_int_v1;
    local string Local_string_v0;

    STR_v5490 = "";
    Local_int_v1 = 0;
    i = 0;
    J0x16:

    if(i < 16)
    {
        if(eqL_vxv_5198[i].PlayerName != "")
        {
            Local_string_v0 = eqL_vxv_5198[i].PlayerName;
            Parm_Class<PlayerPawn>_0 = Min(eqL_vxv_5198[i].Score, 9999);
            if(Len(Local_string_v0) > 20)
            {
                Local_string_v0 = Left(Local_string_v0, 20);
            }
            STR_v5490 = (((STR_v5490 $ Local_string_v0) $ " ") $ string(Parm_Class<PlayerPawn>_0)) $ " ";
            Local_int_v1 += 1;
            // [Explicit Continue]
            goto J0xBB;
        }
        // [Explicit Break]
        goto J0xC5;
        J0xBB:

        i++;
        // [Loop Continue]
        goto J0x16;
    }
    J0xC5:

    if(STR_v5490 == "")
    {
        STR_v5490 = "0";        
    }
    else
    {
        STR_v5490 = string(Local_int_v1) $ STR_v5490;
    }
    eq_vxv_822();
    return;
}

function eq_vxv_822()
{
    local int i;

    i = 0;
    J0x07:

    if(i < 16)
    {
        eqL_vxv_5198[i].PlayerName = "";
        eqL_vxv_5198[i].Score = -1;
        i++;
        // [Loop Continue]
        goto J0x07;
    }
    return;
}

function eqdollar_vxv_1131()
{
    local int i, Local_int_v0, Local_int_v1;
    local STCT_v1228 Local_struct_v0;
    local Pawn Parm_PlayerPawn_0;

    i = 0;
    J0x07:

    if(i < 8)
    {
        if((ChampionList[i].Fighter != none) && PlayerPawn(ChampionList[i].Fighter) != none)
        {
            eqL_vxv_5198[2 * i].PlayerName = PlayerPawn(ChampionList[i].Fighter).PlayerReplicationInfo.PlayerName;
            eqL_vxv_5198[2 * i].Score = zPlayerReplicationInfo(PlayerPawn(ChampionList[i].Fighter).PlayerReplicationInfo).INT_v5365;
        }
        if((ChallengerList[i].Fighter != none) && PlayerPawn(ChallengerList[i].Fighter) != none)
        {
            eqL_vxv_5198[(2 * i) + 1].PlayerName = PlayerPawn(ChallengerList[i].Fighter).PlayerReplicationInfo.PlayerName;
            eqL_vxv_5198[(2 * i) + 1].Score = zPlayerReplicationInfo(PlayerPawn(ChallengerList[i].Fighter).PlayerReplicationInfo).INT_v5365;
        }
        i++;
        // [Loop Continue]
        goto J0x07;
    }
    Parm_PlayerPawn_0 = Level.PawnList;
    J0x197:

    if(Parm_PlayerPawn_0 != none)
    {
        if((Parm_PlayerPawn_0.IsA('PlayerPawn') && PlayerPawn(Parm_PlayerPawn_0).PlayerReplicationInfo != none) && zPlayerReplicationInfo(PlayerPawn(Parm_PlayerPawn_0).PlayerReplicationInfo) != none)
        {
            zPlayerReplicationInfo(PlayerPawn(Parm_PlayerPawn_0).PlayerReplicationInfo).INT_v5365 = 0;
        }
        Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
        // [Loop Continue]
        goto J0x197;
    }
    i = 0;
    J0x232:

    if(i < 15)
    {
        Local_int_v1 = i;
        Local_int_v0 = i + 1;
        J0x257:

        if(Local_int_v0 < 15)
        {
            if(eqL_vxv_5198[Local_int_v0].Score > eqL_vxv_5198[Local_int_v1].Score)
            {
                Local_int_v1 = Local_int_v0;
            }
            Local_int_v0++;
            // [Loop Continue]
            goto J0x257;
        }
        Local_struct_v0 = eqL_vxv_5198[Local_int_v1];
        eqL_vxv_5198[Local_int_v1] = eqL_vxv_5198[i];
        eqL_vxv_5198[i] = Local_struct_v0;
        i++;
        // [Loop Continue]
        goto J0x232;
    }
    return;
}

function eqdollar_vxv_1130()
{
    eq_vxv_822();
    eqdollar_vxv_1131();
    zArenaGameReplicationInfo(GameReplicationInfo).STR_v5109 = STR_v5490;
    return;
}

function StartMatch()
{
    local int i;
    local Pawn Parm_PlayerPawn_0;

    super.StartMatch();
    Parm_PlayerPawn_0 = Level.PawnList;
    J0x1A:

    if(Parm_PlayerPawn_0 != none)
    {
        if(ZRunePlayer(Parm_PlayerPawn_0) != none)
        {
            zPlayerReplicationInfo(ZRunePlayer(Parm_PlayerPawn_0).PlayerReplicationInfo).B_v5343 = true;
        }
        Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
        // [Loop Continue]
        goto J0x1A;
    }
    if(gZStorage.mortal)
    {
        Parm_PlayerPawn_0 = Level.PawnList;
        J0x96:

        if(Parm_PlayerPawn_0 != none)
        {
            if((Parm_PlayerPawn_0.IsA('ZRunePlayer') && PlayerPawn(Parm_PlayerPawn_0).PlayerReplicationInfo != none) && zPlayerReplicationInfo(PlayerPawn(Parm_PlayerPawn_0).PlayerReplicationInfo) != none)
            {
                ZRunePlayer(Parm_PlayerPawn_0).eqcomma_vxv_1392("mortalkombat.mortal");
            }
            Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
            // [Loop Continue]
            goto J0x96;
        }
    }
    i = 0;
    J0x137:

    if(i < 8)
    {
        if((ChallengerList[i].Fighter != none) && PlayerPawn(ChallengerList[i].Fighter) != none)
        {
            eq_vxv_5488[i] = PlayerPawn(ChallengerList[i].Fighter).PlayerReplicationInfo.PlayerID;            
        }
        else
        {
            eq_vxv_5488[i] = -1;
        }
        if((ChampionList[i].Fighter != none) && PlayerPawn(ChampionList[i].Fighter) != none)
        {
            eq_vxv_5489[i] = PlayerPawn(ChampionList[i].Fighter).PlayerReplicationInfo.PlayerID;
            // [Explicit Continue]
            goto J0x237;
        }
        eq_vxv_5489[i] = -1;
        J0x237:

        i++;
        // [Loop Continue]
        goto J0x137;
    }
    return;
}

function eqdollar_vxv_1129()
{
    local int i;
    local Pawn Parm_PlayerPawn_0;

    Parm_PlayerPawn_0 = Level.PawnList;
    J0x14:

    if(Parm_PlayerPawn_0 != none)
    {
        if(ZRunePlayer(Parm_PlayerPawn_0) != none)
        {
            zPlayerReplicationInfo(ZRunePlayer(Parm_PlayerPawn_0).PlayerReplicationInfo).B_v5343 = false;
        }
        Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
        // [Loop Continue]
        goto J0x14;
    }
    i = 0;
    J0x71:

    if(i < 8)
    {
        if((ChallengerList[i].Fighter != none) && PlayerPawn(ChallengerList[i].Fighter) != none)
        {
            zPlayerReplicationInfo(ChallengerList[i].Fighter.PlayerReplicationInfo).B_v5343 = true;
            zPlayerReplicationInfo(ChallengerList[i].Fighter.PlayerReplicationInfo).INT_v5344 = zPlayerReplicationInfo(ChallengerList[i].Fighter.PlayerReplicationInfo).INT_v5365;
            LogInternal(zPlayerReplicationInfo(ChallengerList[i].Fighter.PlayerReplicationInfo).PlayerName @ string(zPlayerReplicationInfo(ChallengerList[i].Fighter.PlayerReplicationInfo).INT_v5344));
        }
        if((ChampionList[i].Fighter != none) && PlayerPawn(ChampionList[i].Fighter) != none)
        {
            zPlayerReplicationInfo(ChampionList[i].Fighter.PlayerReplicationInfo).B_v5343 = true;
            zPlayerReplicationInfo(ChampionList[i].Fighter.PlayerReplicationInfo).INT_v5344 = zPlayerReplicationInfo(ChampionList[i].Fighter.PlayerReplicationInfo).INT_v5365;
            LogInternal(zPlayerReplicationInfo(ChampionList[i].Fighter.PlayerReplicationInfo).PlayerName @ string(zPlayerReplicationInfo(ChampionList[i].Fighter.PlayerReplicationInfo).INT_v5344));
        }
        i++;
        // [Loop Continue]
        goto J0x71;
    }
    Parm_PlayerPawn_0 = Level.PawnList;
    J0x299:

    if(Parm_PlayerPawn_0 != none)
    {
        if(ZRunePlayer(Parm_PlayerPawn_0) != none)
        {
            if(zPlayerReplicationInfo(ZRunePlayer(Parm_PlayerPawn_0).PlayerReplicationInfo).B_v5343)
            {
                zPlayerReplicationInfo(ZRunePlayer(Parm_PlayerPawn_0).PlayerReplicationInfo).INT_v5344 = zPlayerReplicationInfo(ZRunePlayer(Parm_PlayerPawn_0).PlayerReplicationInfo).INT_v5365;
            }
        }
        Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
        // [Loop Continue]
        goto J0x299;
    }
    eq_vxv_824();
    return;
}

function byte DetermineWinner()
{
    if(CheckWinState(0))
    {
        return 0;        
    }
    else
    {
        if(CheckWinState(1))
        {
            return 1;            
        }
        else
        {
            return byte(255);
        }
    }
    return;
}

function byte DetermineLoser()
{
    eqdollar_vxv_1129();
    if(CheckWinState(0))
    {
        return 1;        
    }
    else
    {
        if(CheckWinState(1))
        {
            return 0;            
        }
        else
        {
            return byte(255);
        }
    }
    return;
}

function AnnounceResults(byte Parm_byte_0)
{
    eqdollar_vxv_1130();
    super.AnnounceResults(Parm_byte_0);
    return;
}

function eq_vxv_824()
{
    local Pawn Parm_PlayerPawn_0;
    local int Local_int_v0;

    Parm_PlayerPawn_0 = Level.PawnList;
    J0x14:

    if(Parm_PlayerPawn_0 != none)
    {
        if(ZRunePlayer(Parm_PlayerPawn_0) != none)
        {
            if(zPlayerReplicationInfo(ZRunePlayer(Parm_PlayerPawn_0).PlayerReplicationInfo).INT_v5366 > Local_int_v0)
            {
                Local_int_v0 = zPlayerReplicationInfo(ZRunePlayer(Parm_PlayerPawn_0).PlayerReplicationInfo).INT_v5366;
            }
            zPlayerReplicationInfo(ZRunePlayer(Parm_PlayerPawn_0).PlayerReplicationInfo).B_v5396 = false;
        }
        Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
        // [Loop Continue]
        goto J0x14;
    }
    Parm_PlayerPawn_0 = Level.PawnList;
    J0xD0:

    if(Parm_PlayerPawn_0 != none)
    {
        if(((ZRunePlayer(Parm_PlayerPawn_0) != none) && zPlayerReplicationInfo(ZRunePlayer(Parm_PlayerPawn_0).PlayerReplicationInfo).INT_v5366 != 0) && zPlayerReplicationInfo(ZRunePlayer(Parm_PlayerPawn_0).PlayerReplicationInfo).INT_v5366 >= Local_int_v0)
        {
            zPlayerReplicationInfo(ZRunePlayer(Parm_PlayerPawn_0).PlayerReplicationInfo).B_v5396 = true;
        }
        Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
        // [Loop Continue]
        goto J0xD0;
    }
    return;
}

event Timer()
{
    local Pawn Parm_PlayerPawn_0;
    local RunePlayer Local_RunePlayer_v0;
    local Shield Local_Shield_v0;

    Parm_PlayerPawn_0 = Level.PawnList;
    J0x14:

    if(Parm_PlayerPawn_0 != none)
    {
        Local_RunePlayer_v0 = RunePlayer(Parm_PlayerPawn_0);
        if(Local_RunePlayer_v0 == none)
        {            
        }
        else
        {
            if((Local_RunePlayer_v0.Weapon != none) && Local_RunePlayer_v0.Weapon.A_Defend == 'None')
            {
                Local_Shield_v0 = Shield(Local_RunePlayer_v0.ActorAttachedTo(Local_RunePlayer_v0.JointNamed(Local_RunePlayer_v0.ShieldJoint)));
                if(Local_Shield_v0 != none)
                {
                    if(Local_RunePlayer_v0.Shield == none)
                    {
                        Local_RunePlayer_v0.Shield = Local_Shield_v0;
                    }
                    Local_RunePlayer_v0.DropShield();
                }
            }
        }
        Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
        // [Loop Continue]
        goto J0x14;
    }
    if((int(GameState) == int(3)) && !bStartedTimer)
    {
        INT_v5486 = 11;
        B_v5487 = true;
    }
    if(B_v5487 && INT_v5486 < 1)
    {
        B_v5487 = false;
        zArenaGameReplicationInfo(GameReplicationInfo).B_v5332 = false;        
    }
    else
    {
        if(B_v5487)
        {
            INT_v5486 -= 1;
        }
    }
    if(B_v5487 && INT_v5486 == 9)
    {
        Parm_PlayerPawn_0 = Level.PawnList;
        J0x19C:

        if(Parm_PlayerPawn_0 != none)
        {
            if(ZRunePlayer(Parm_PlayerPawn_0) != none)
            {
                if(zPlayerReplicationInfo(ZRunePlayer(Parm_PlayerPawn_0).PlayerReplicationInfo).B_v5343)
                {
                    zPlayerReplicationInfo(ZRunePlayer(Parm_PlayerPawn_0).PlayerReplicationInfo).INT_v5344 = zPlayerReplicationInfo(ZRunePlayer(Parm_PlayerPawn_0).PlayerReplicationInfo).INT_v5365;
                }
                ZRunePlayer(Parm_PlayerPawn_0).ShowDmgHUD();
            }
            if((TCCSpectator(Parm_PlayerPawn_0) != none) && zPlayerReplicationInfo(TCCSpectator(Parm_PlayerPawn_0).PlayerReplicationInfo).B_v5402)
            {
                TCCSpectator(Parm_PlayerPawn_0).eqstar_vxv_1335();
            }
            Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
            // [Loop Continue]
            goto J0x19C;
        }
    }
    if((RemainingTime == 0) && gZStorage.bTournament)
    {
        RemainingTime = -10;
    }
    if((RemainingTime == 60) && gZStorage.bTournament)
    {
        ConsoleCommand("stopdemo");
        ConsoleCommand(("demorec " $ STR_v5499) $ "_result");
    }
    super.Timer();
    return;
}

function EndGame(string Parm_string_0)
{
    local Actor A;
    local Pawn LocalP0;

    super(RuneMultiPlayer).EndGame(Parm_string_0);
    GameReplicationInfo.GameEndedComments = Parm_string_0;
    zArenaGameReplicationInfo(GameReplicationInfo).B_v5340 = true;
    bGameEnded = true;
    LocalP0 = Level.PawnList;
    if(gZStorage.bTournament)
    {
        RemainingTime = 120;
        GameReplicationInfo.bStopCountDown = false;
        GameReplicationInfo.RemainingTime = RemainingTime;
        GameReplicationInfo.RemainingMinute = RemainingTime;        
    }
    else
    {
        GameReplicationInfo.bStopCountDown = true;
        RemainingTime = -1;
    }
    return;
}

function Killed(Pawn P0, Pawn Parm_Actor_0, name DamageType)
{
    if(FComp_v5502 != none)
    {
        FComp_v5502.HasCommandPermission6(P0, Parm_Actor_0, DamageType, true, bswitchcolors);
    }
    if((P0 != none) && PlayerPawn(Parm_Actor_0).bIsTyping)
    {
        zPlayerReplicationInfo(P0.PlayerReplicationInfo).INT_v5355++;
    }
    if((P0 != none) && P0 != Parm_Actor_0)
    {
        if((ZRunePlayer(P0) != none) && ZRunePlayer(Parm_Actor_0) != none)
        {
            ZRunePlayer(P0).NotifyKillToConsole(P0.PlayerReplicationInfo, Parm_Actor_0.PlayerReplicationInfo, DamageType);
            ZRunePlayer(Parm_Actor_0).NotifyKillToConsole(P0.PlayerReplicationInfo, Parm_Actor_0.PlayerReplicationInfo, DamageType);
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
    if(((P0 != none) && P0.PlayerReplicationInfo != none) && ((DamageType == 'ThrownWeaponBlunt') || DamageType == 'thrownweaponsever') || DamageType == 'thrownweaponbluntsever')
    {
        zPlayerReplicationInfo(P0.PlayerReplicationInfo).INT_v5354++;
    }
    if((P0 != none) && PlayerPawn(Parm_Actor_0).bIsTyping)
    {
        zPlayerReplicationInfo(P0.PlayerReplicationInfo).INT_v5355++;
    }
    if(((DamageType == 'decapitated') && P0.bIsPlayer) && P0 != Parm_Actor_0)
    {
        P0.PlayerReplicationInfo.HeadKills++;
        BroadcastMessage(P0.PlayerReplicationInfo.PlayerName @ HeadKillMsg, false);
    }
    if(IsPlaying(Parm_Actor_0, byte(255)))
    {
        super(GameInfo).Killed(P0, Parm_Actor_0, DamageType);
        HandleKill(Parm_Actor_0, P0, DamageType);        
    }
    else
    {
        if((Parm_Actor_0.PlayerReplicationInfo.TeamID <= maxArenaTeam) && int(GameState) == int(2))
        {
            RemoveFromQueue(Parm_Actor_0);
            ResetStateChange();
            InterruptMatchStart();            
        }
        else
        {
            RemoveFromQueue(Parm_Actor_0);
        }
    }
    if(((int(DetermineWinner()) != 255) && fraglimit > 0) && P0.PlayerReplicationInfo.Score >= float(fraglimit))
    {
        EndGame("Match Limit");
    }
    if(!bFirstBlood)
    {
        if(P0.bIsPlayer && P0 != Parm_Actor_0)
        {
            bFirstBlood = true;
            P0.PlayerReplicationInfo.bFirstBlood = true;
            BroadcastMessage(P0.PlayerReplicationInfo.PlayerName @ FirstBloodMsg, false);
        }
    }
    if(gZStorage.Sounds)
    {
        if(((DamageType == 'decapitated') && P0.bIsPlayer) && P0 != Parm_Actor_0)
        {
            Player = PlayerPawn(P0);
            Player.ClientPlaySound(UNK_v5491);
            Player = PlayerPawn(Parm_Actor_0);
            Player.ClientPlaySound(UNK_v5491);
        }
    }
    return;
}

defaultproperties
{
    IpTempBanned="Your IP has been banned for the duration of this map."
    bCoopWeaponMode=true
    ScoreBoardType=Class'coadminz7.SAScoreboardArena'
    HUDType=Class'coadminz7.zArenaHUD'
    GameName="CoAdminZ Arenamode"
    GameReplicationInfoClass=Class'coadminz7.zArenaGameReplicationInfo'
}