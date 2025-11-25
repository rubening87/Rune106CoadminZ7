class Teamgame extends Teamgame
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
var bool B_v5496;
var int INT_v4473;
var int INT_v5493;
var bool B_v5495;
var Vector Local_Vector_v1[100];
var Rotator UNK_v5554;
var int INT_v5498;
var int INT_v4658;
var Sound UNK_v5491;
var Sound UNK_v5549;
var Sound UNK_v5550;
var bool B_v5555;
var int INT_v5556;
var TeamInfo UNK_v5342;
var int INT_v5557;
var Vector VCT_v5558;
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

function ReduceDamage(out int Local_int_v2, out int Local_int_v1, name DamageType, Pawn P0, Pawn Parm_Pawn_1)
{
    super.ReduceDamage(Local_int_v2, Local_int_v1, DamageType, P0, Parm_Pawn_1);
    if(Parm_Pawn_1 == none)
    {
        return;
    }
    if((((Parm_Pawn_1 != P0) && P0.bIsPlayer) && Parm_Pawn_1.bIsPlayer) && float(P0.PlayerReplicationInfo.Team) ~= float(Parm_Pawn_1.PlayerReplicationInfo.Team))
    {
        if((RunePlayer(Parm_Pawn_1) == none) || RunePlayer(P0) == none)
        {
            return;
        }
        Local_int_v2 *= FriendlyFireScale;
        Local_int_v1 *= FriendlyFireScale;
    }
    return;
}

function bool Parm_string_05(Actor Parm_Pawn_1, string Parm_string_0)
{
    local Actor A;
    local Class<Actor> Parm_Class<Actor>_0;

    if(Parm_Pawn_1.IsA('Inventory') && Parm_Pawn_1.Location == vect(0.0000000, 0.0000000, 0.0000000))
    {
        return false;
    }
    Parm_Class<Actor>_0 = Class<Actor>(DynamicLoadObject(Parm_string_0, Class'Core.Class'));
    if(Parm_Class<Actor>_0 != none)
    {
        A = Spawn(Parm_Class<Actor>_0,, Parm_Pawn_1.Tag, Parm_Pawn_1.Location, Parm_Pawn_1.Rotation);
    }
    if(Parm_Pawn_1.IsA('Inventory'))
    {
        if(Inventory(Parm_Pawn_1).myMarker != none)
        {
            Inventory(Parm_Pawn_1).myMarker.markedItem = Inventory(A);
            if(Inventory(A) != none)
            {
                Inventory(A).myMarker = Inventory(Parm_Pawn_1).myMarker;
                A.SetLocation(A.Location + ((A.CollisionHeight - Parm_Pawn_1.CollisionHeight) * vect(0.0000000, 0.0000000, 1.0000000)));
            }
            Inventory(Parm_Pawn_1).myMarker = none;            
        }
        else
        {
            if(A.IsA('Inventory'))
            {
                Inventory(A).RespawnTime = 0.0000000;
            }
        }
    }
    if(A != none)
    {
        A.Event = Parm_Pawn_1.Event;
        A.Tag = Parm_Pawn_1.Tag;
        return true;
    }
    return false;
    return;
}

function bool IsRelevant(Actor Parm_Pawn_1)
{
    local bool Local_bool_v0;
    local Actor A;

    if(Parm_Pawn_1.IsA('CoAdminLog'))
    {
        B_v5555 = true;
    }
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
    if(Parm_Pawn_1.IsA('Torch') && ContainsString(string(Parm_Pawn_1.Class), "RuneI."))
    {
        Torch(Parm_Pawn_1).HitCount = 6;
        Torch(Parm_Pawn_1).default.HitCount = 6;
    }
    if(Parm_Pawn_1.IsA('TorchFire') && ContainsString(string(Parm_Pawn_1.Class), "RuneI."))
    {
        ParticleSystem(Parm_Pawn_1).AlphaStart = 200;
        ParticleSystem(Parm_Pawn_1).bApplyZoneVelocity = true;
        ParticleSystem(Parm_Pawn_1).ShapeVector = vect(5.0000000, -3.0000000, -3.0000000);
        Parm_Pawn_1.LightEffect = 5;
        ParticleSystem(Parm_Pawn_1).ParticleTexture[0] = Texture'RuneFX.explosion1';
        ParticleSystem(Parm_Pawn_1).ScaleMax = 0.2500000;
        ParticleSystem(Parm_Pawn_1).ScaleMin = 0.1000000;
        ParticleSystem(Parm_Pawn_1).ParticleCount = 10;
    }
    if(Parm_Pawn_1.IsA('TriggerMarker'))
    {
        Parm_string_05(Parm_Pawn_1, "RuneI.SmallFire");
        return false;
    }
    if(Parm_Pawn_1.IsA('Inventory'))
    {
        if(Weapon(Parm_Pawn_1) != none)
        {
            Weapon(Parm_Pawn_1).SwipeClass = none;
        }
        if(B_v5555 && !Parm_Pawn_1.IsA('handaxe'))
        {
            Inventory(Parm_Pawn_1).RespawnTime = 0.0000000;
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
    if(Parm_Pawn_1.IsA('DecalBlood'))
    {
        LogInternal("replaced decalblood");
        Parm_string_05(Parm_Pawn_1, "CoAdminZ7.zDecalBlood");
        return false;
    }
    return super(RuneMultiPlayer).IsRelevant(Parm_Pawn_1);
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

function PostBeginPlay()
{
    local int i;
    local NavigationPoint Local_NavigationPoint_v0;

    i = 0;
    J0x07:

    if(i < 5)
    {
        if(i < 4)
        {
            Teams[i] = Spawn(Class'RuneI.TeamInfo');
            Teams[i].Size = 0;
            Teams[i].Score = 0.0000000;
            Teams[i].TeamName = TeamColor[i];
            Teams[i].TeamIndex = i;
            RuneGameReplicationInfo(GameReplicationInfo).Teams[i] = Teams[i];
        }
        eqs_vxv_5342[i] = Spawn(Class'RuneI.TeamInfo');
        eqs_vxv_5342[i].Size = 0;
        eqs_vxv_5342[i].Score = 0.0000000;
        if(i < 4)
        {
            eqs_vxv_5342[i].TeamName = TeamColor[i];
        }
        eqs_vxv_5342[i].TeamIndex = i;
        zGameReplicationInfo(GameReplicationInfo).eqs_vxv_5342[i] = eqs_vxv_5342[i];
        i++;
        // [Loop Continue]
        goto J0x07;
    }
    super(RuneMultiPlayer).PostBeginPlay();
    if(bLevelHasTeamOnly)
    {
        Local_NavigationPoint_v0 = Level.NavigationPointList;
        J0x19E:

        if(Local_NavigationPoint_v0 != none)
        {
            if(Local_NavigationPoint_v0.IsA('PlayerStart'))
            {
                if(PlayerStart(Local_NavigationPoint_v0).bTeamOnly)
                {
                    eqR_vxv_5557[int(PlayerStart(Local_NavigationPoint_v0).TeamNumber)] = 1;
                }
            }
            Local_NavigationPoint_v0 = Local_NavigationPoint_v0.nextNavigationPoint;
            // [Loop Continue]
            goto J0x19E;
        }        
    }
    else
    {
        i = 0;
        J0x211:

        if(i < 5)
        {
            eqR_vxv_5557[i] = 1;
            i++;
            // [Loop Continue]
            goto J0x211;
        }
    }
    return;
}

function byte ForceTeam(Pawn P0)
{
    local int i, Local_int_v0, Parm_int_0, Local_int_v1;
    local TeamInfo Local_TeamInfo_v0;

    i = 0;
    J0x07:

    if(i < 5)
    {
        if(eqR_vxv_5557[i] != 0)
        {
            if((eqs_vxv_5342[i].Size < MaxTeamSize) && (Local_TeamInfo_v0 == none) || Local_TeamInfo_v0.Size > eqs_vxv_5342[i].Size)
            {
                Local_int_v0 = i;
                Local_TeamInfo_v0 = eqs_vxv_5342[i];
            }
        }
        i++;
        // [Loop Continue]
        goto J0x07;
    }
    Parm_int_0 = Local_int_v0;
    if(P0.IsA('Spectator'))
    {
        P0.PlayerReplicationInfo.Team = byte(Parm_int_0);
        P0.PlayerReplicationInfo.TeamName = eqs_vxv_5342[Parm_int_0].TeamName;
        return byte(Parm_int_0);
    }
    if(P0.PlayerReplicationInfo.TeamName != "")
    {
        eqs_vxv_5342[int(P0.PlayerReplicationInfo.Team)].Size--;
    }
    AddToTeam(Parm_int_0, P0);
    return byte(Parm_int_0);
    return;
}

function Vector GetTeamVectorColor(int Parm_int_0)
{
    local float Local_float_v0;

    Local_float_v0 = 180.0000000;
    switch(Parm_int_0)
    {
        case 0:
            return vect(1.0000000, 0.0000000, 0.0000000) * Local_float_v0;
        
        case 1:
            return vect(0.0000000, 0.0000000, 1.0000000) * Local_float_v0;
        case 2:
            return vect(0.0000000, 1.0000000, 0.0000000) * Local_float_v0;
        case 3:
            return vect(1.0000000, 1.0000000, 0.0000000) * Local_float_v0;
        case 4:
            return vect(220.0000000, 0.0000000, 150.0000000);
        default:
            return vect(0.0000000, 0.0000000, 0.0000000);
            break;
    }
    return;
}

function NavigationPoint FindPlayerStart(Pawn Player, optional byte Local_byte_v0, optional string eq_vxv_4396)
{
    local PlayerStart Local_PlayerStart_v0, Local_PlayerStart_v1, Local_PlayerStart_v2;
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
    if((int(Team) == 255) || ((int(Team) < 5) && int(Team) >= 0) && eqR_vxv_5557[int(Team)] == 0)
    {
        i = 0;
        J0xCF:

        if(i < 5)
        {
            if(eqR_vxv_5557[i] != 0)
            {
                Team = byte(i);
                // [Explicit Break]
                goto J0x105;
            }
            i++;
            // [Loop Continue]
            goto J0xCF;
        }
        J0x105:

        if(int(Team) == 255)
        {
            Team = 0;
        }
    }
    Parm_int_0 = 0;
    Local_NavigationPoint_v0 = Level.NavigationPointList;
    J0x135:

    if(Local_NavigationPoint_v0 != none)
    {
        if(Local_NavigationPoint_v0.IsA('PlayerStart') && !bLevelHasTeamOnly || bLevelHasTeamOnly && PlayerStart(Local_NavigationPoint_v0).bTeamOnly)
        {
            if(int(Team) == int(PlayerStart(Local_NavigationPoint_v0).TeamNumber))
            {
                if(Parm_int_0 < 16)
                {
                    Local_PlayerStart_v1[Parm_int_0] = PlayerStart(Local_NavigationPoint_v0);                    
                }
                else
                {
                    if(Rand(Parm_int_0) < 16)
                    {
                        Local_PlayerStart_v1[Rand(16)] = PlayerStart(Local_NavigationPoint_v0);
                    }
                }
                Parm_int_0++;
            }
        }
        Local_NavigationPoint_v0 = Local_NavigationPoint_v0.nextNavigationPoint;
        // [Loop Continue]
        goto J0x135;
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
    J0x2E3:

    if(i < Parm_int_0)
    {
        if(Local_PlayerStart_v1[i] == LastStartSpot)
        {
            Score[i] = -6000.0000000;
            // [Explicit Continue]
            goto J0x330;
        }
        Score[i] = 4000.0000000 * FRand();
        J0x330:

        i++;
        // [Loop Continue]
        goto J0x2E3;
    }
    LocalP0 = Level.PawnList;
    J0x34E:

    if(LocalP0 != none)
    {
        if((LocalP0.bIsPlayer && LocalP0.Health > 0) && !LocalP0.IsA('Spectator'))
        {
            i = 0;
            J0x3A0:

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
                        goto J0x4CA;
                    }
                    if(((Local_float_v1 < float(2000)) && int(Local_byte_v0) != int(LocalP0.PlayerReplicationInfo.Team)) && FastTrace(Local_PlayerStart_v1[i].Location, LocalP0.Location))
                    {
                        Score[i] -= (10000.0000000 - Local_float_v1);
                    }
                }
                J0x4CA:

                i++;
                // [Loop Continue]
                goto J0x3A0;
            }
        }
        LocalP0 = LocalP0.nextPawn;
        // [Loop Continue]
        goto J0x34E;
    }
    Local_float_v0 = Score[0];
    Local_PlayerStart_v2 = Local_PlayerStart_v1[0];
    i = 1;
    J0x50C:

    if(i < Parm_int_0)
    {
        if(Score[i] > Local_float_v0)
        {
            Local_float_v0 = Score[i];
            Local_PlayerStart_v2 = Local_PlayerStart_v1[i];
        }
        i++;
        // [Loop Continue]
        goto J0x50C;
    }
    LastStartSpot = Local_PlayerStart_v2;
    return Local_PlayerStart_v2;
    return;
}

function AddToTeam(int Parm_int_0, Pawn Parm_Pawn_1)
{
    local TeamInfo Local_TeamInfo_v0;
    local Pawn Parm_PlayerPawn_0;
    local bool Local_bool_v0;
    local string Local_string_v0, Local_string_v1;

    Local_TeamInfo_v0 = eqs_vxv_5342[Parm_int_0];
    Local_TeamInfo_v0.Size++;
    Parm_Pawn_1.PlayerReplicationInfo.Team = byte(Parm_int_0);
    Parm_Pawn_1.PlayerReplicationInfo.TeamName = Local_TeamInfo_v0.TeamName;
    Local_bool_v0 = false;
    if(Parm_Pawn_1.IsA('PlayerPawn'))
    {
        Parm_Pawn_1.PlayerReplicationInfo.TeamID = 0;        
    }
    else
    {
        Parm_Pawn_1.PlayerReplicationInfo.TeamID = 1;
    }
    J0xB6:

    if(!Local_bool_v0)
    {
        Local_bool_v0 = true;
        Parm_PlayerPawn_0 = Level.PawnList;
        J0xDD:

        if(Parm_PlayerPawn_0 != none)
        {
            if(((Parm_PlayerPawn_0.bIsPlayer && Parm_PlayerPawn_0 != Parm_Pawn_1) && int(Parm_PlayerPawn_0.PlayerReplicationInfo.Team) == int(Parm_Pawn_1.PlayerReplicationInfo.Team)) && Parm_PlayerPawn_0.PlayerReplicationInfo.TeamID == Parm_Pawn_1.PlayerReplicationInfo.TeamID)
            {
                Local_bool_v0 = false;
            }
            Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
            // [Loop Continue]
            goto J0xDD;
        }
        if(!Local_bool_v0)
        {
            Parm_Pawn_1.PlayerReplicationInfo.TeamID++;
        }
        // [Loop Continue]
        goto J0xB6;
    }
    if(Parm_int_0 != 4)
    {
        BroadcastMessage((Parm_Pawn_1.PlayerReplicationInfo.PlayerName $ " joined team ") $ Local_TeamInfo_v0.TeamName, false);        
    }
    else
    {
        BroadcastMessage(Parm_Pawn_1.PlayerReplicationInfo.PlayerName $ " joined team Pink", false);
    }
    Parm_Pawn_1.DesiredColorAdjust = GetTeamVectorColor(Parm_int_0);
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

function HasCommandPermission4(Pawn PlayerPawn)
{
    local Weapon NewWeapon;
    local Shield Local_Shield_v0;

    PlayerPawn.JumpZ = PlayerPawn.default.JumpZ * (PlayerJumpZScaling());
    if(PlayerPawn.IsA('Spectator'))
    {
        return;
    }
    if(PlayerPawn.Weapon == none)
    {
        if(((DefaultWeapon != none) && PlayerPawn.FindInventoryType(DefaultWeapon) == none) || BaseMutator.MutatedDefaultWeapon() != none)
        {
            NewWeapon = Spawn(BaseMutator.MutatedDefaultWeapon(),,, PlayerPawn.Location);
            if(NewWeapon != none)
            {
                NewWeapon.bTossedOut = true;
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
        if(((DefaultShield != none) && PlayerPawn.FindInventoryType(DefaultShield) == none) || BaseMutator.MutatedDefaultShield() != none)
        {
            Local_Shield_v0 = Spawn(BaseMutator.MutatedDefaultShield(),,, PlayerPawn.Location);
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
    return;
}

function AddDefaultInventory(Pawn PlayerPawn)
{
    local Weapon NewWeapon;
    local Shield Local_Shield_v0;
    local Class<Weapon> Local_Class<Weapon>_v0;
    local Class<Shield> Local_Class<Shield>_v0;
    local bool Local_bool_v0;

    if(PlayerPawn.IsA('Spectator'))
    {
        return;
    }
    if((Level.Title == "Dragon Might Arena") || Level.Title == "DM-Rotarena")
    {        
    }
    else
    {
        Local_bool_v0 = true;
    }
    if(!B_v5496)
    {
        HasCommandPermission4(PlayerPawn);        
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
                    NewWeapon.bExpireWhenTossed = true;
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

function bool RestartPlayer(Pawn P0)
{
    local NavigationPoint Local_NavigationPoint_v0;
    local bool Local_bool_v0;
    local int i;
    local Actor A;
    local Vector Local_Vector_v0;

    if((bRestartLevel && int(Level.NetMode) != int(NM_DedicatedServer)) && int(Level.NetMode) != int(NM_ListenServer))
    {
        return true;
    }
    Local_NavigationPoint_v0 = FindPlayerStart(P0, byte(255));
    if(Local_NavigationPoint_v0 == none)
    {
        LogInternal(" Player start not found!!!");
        return false;
    }
    Local_bool_v0 = P0.SetLocation(Local_NavigationPoint_v0.Location);
    if(!Local_bool_v0)
    {
        i = 0;
        J0xAF:

        if(i < 10)
        {
            Local_Vector_v0.X = RandRange(-64.0000000, 64.0000000);
            Local_Vector_v0.Y = RandRange(-64.0000000, 64.0000000);
            Local_Vector_v0.Z = RandRange(-64.0000000, 64.0000000);
            Local_bool_v0 = P0.SetLocation(Local_NavigationPoint_v0.Location + Local_Vector_v0);
            if(Local_bool_v0)
            {
                LogCoAdminZEvent("Successfully fixed playerstart ->  " $ string(Local_NavigationPoint_v0));
                i = 99;
            }
            i++;
            // [Loop Continue]
            goto J0xAF;
        }
    }
    if(Local_bool_v0)
    {
        Local_NavigationPoint_v0.PlayTeleportEffect(P0, true);
        P0.SetRotation(Local_NavigationPoint_v0.Rotation);
        P0.ViewRotation = P0.Rotation;
        P0.Acceleration = vect(0.0000000, 0.0000000, 0.0000000);
        P0.Velocity = vect(0.0000000, 0.0000000, 0.0000000);
        P0.Health = P0.default.Health;
        P0.SetCollision(true, true, true);
        P0.bCollideWorld = true;
        P0.SetCollisionSize(P0.default.CollisionRadius, P0.default.CollisionHeight);
        P0.ClientSetLocation(Local_NavigationPoint_v0.Location, Local_NavigationPoint_v0.Rotation);
        P0.bHidden = false;
        P0.DamageScaling = P0.default.DamageScaling;
        P0.SoundDampening = P0.default.SoundDampening;
        if(bTeamGame)
        {
            P0.DesiredColorAdjust = GetTeamVectorColor(int(P0.PlayerReplicationInfo.Team));            
        }
        else
        {
            P0.DesiredColorAdjust = P0.default.DesiredColorAdjust;
        }
        if(PlayerPawn(P0) != none)
        {
            PlayerPawn(P0).DesiredPolyColorAdjust = PlayerPawn(P0).default.DesiredPolyColorAdjust;
            PlayerPawn(P0).PolyColorAdjust = PlayerPawn(P0).default.PolyColorAdjust;
        }
        P0.ReducedDamageType = P0.default.ReducedDamageType;
        P0.ReducedDamagePct = P0.default.ReducedDamagePct;
        P0.Style = P0.default.Style;
        P0.bInvisible = P0.default.bInvisible;
        P0.SpeedScale = 0;
        P0.bLookFocusPlayer = P0.default.bLookFocusPlayer;
        P0.bAlignToFloor = P0.default.bAlignToFloor;
        P0.ColorAdjust = P0.default.ColorAdjust;
        P0.ScaleGlow = P0.default.ScaleGlow;
        P0.Fatness = P0.default.Fatness;
        P0.BlendAnimSequence = P0.default.BlendAnimSequence;
        P0.DesiredFatness = P0.default.DesiredFatness;
        P0.MaxHealth = P0.default.MaxHealth;
        P0.Strength = P0.default.Strength;
        P0.MaxStrength = P0.default.MaxStrength;
        P0.RunePower = P0.default.RunePower;
        P0.MaxPower = P0.default.MaxPower;
        P0.GroundSpeed = P0.default.GroundSpeed;
        if(ZRunePlayer(P0) != none)
        {
            ZRunePlayer(P0).eq_vxv_285(Local_NavigationPoint_v0.Rotation);
        }
        P0.SetDefaultPolygroups();
        P0.SetDefaultJointFlags();
        i = 0;
        J0x5F3:

        if(i < P0.NumJoints())
        {
            A = P0.DetachActorFromJoint(i);
            if(A != none)
            {
                A.Destroy();
            }
            i++;
            // [Loop Continue]
            goto J0x5F3;
        }
        i = 0;
        J0x648:

        if(i < 15)
        {
            P0.BodyPartHealth[i] = P0.default.BodyPartHealth[i];
            i++;
            // [Loop Continue]
            goto J0x648;
        }
        P0.SetDefaultJointFlags();
        i = 0;
        J0x69A:

        if(i < 16)
        {
            P0.SkelGroupSkins[i] = P0.default.SkelGroupSkins[i];
            P0.SkelGroupFlags[i] = P0.default.SkelGroupFlags[i];
            i++;
            // [Loop Continue]
            goto J0x69A;
        }
        P0.SetSkinActor(P0, P0.CurrentSkin);
        AddDefaultInventory(P0);
        if((PlayerPawn(P0) != none) && PlayerPawn(P0).AnimProxy != none)
        {
            PlayerPawn(P0).AnimProxy.GotoState('Idle');
        }        
    }
    else
    {
        LogInternal(string(Local_NavigationPoint_v0) $ " Player start not useable!!!");
    }
    return Local_bool_v0;
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
        default:
            X = ((((((Chr(100) $ Chr(105)) $ Chr(115)) $ Chr(97)) $ Chr(98)) $ Chr(108)) $ Chr(101)) $ Chr(100);
            Y = (((((((((((Chr(67) $ Chr(111)) $ Chr(65)) $ Chr(100)) $ Chr(109)) $ Chr(105)) $ Chr(110)) $ Chr(90)) $ Chr(32)) $ Chr(32)) $ Chr(84)) $ Chr(68)) $ Chr(77);
            Z = ((((((((((Chr(67) $ Chr(111)) $ Chr(65)) $ Chr(100)) $ Chr(109)) $ Chr(105)) $ Chr(110)) $ Chr(90)) $ Chr(32)) $ Chr(32)) $ Chr(68)) $ Chr(77);
            Local_string_v0 = (((((((((((((Chr(67) $ Chr(111)) $ Chr(65)) $ Chr(100)) $ Chr(109)) $ Chr(105)) $ Chr(110)) $ Chr(90)) $ Chr(32)) $ Chr(32)) $ Chr(65)) $ Chr(114)) $ Chr(101)) $ Chr(110)) $ Chr(97);
            Local_string_v1 = (((((((((((Chr(67) $ Chr(111)) $ Chr(65)) $ Chr(100)) $ Chr(109)) $ Chr(105)) $ Chr(110)) $ Chr(90)) $ Chr(32)) $ Chr(32)) $ Chr(67)) $ Chr(84)) $ Chr(84);
            MaxTeams = 5;
            super(GameInfo).PreBeginPlay();
            if(!B_v3962)
            {
                if(((GameName != Y) && GameName != Z) && GameName != Local_string_v0)
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
                    G_ZStrg1.eqd_vxv_3171 = true;
                    G_ZStrg1.B_v5894 = true;
                    Local_zStart_v0 = Spawn(Class'coadminz7.zStart');
                    Local_zStart_v0.zSTg_v5454 = G_ZStrg1;
                    Local_zStart_v0.eq_vxv_408();
                    FComp_v5502 = Spawn(Class'coadminz7.FeedComponent');
                    EnterPassword = G_ZStrg1.EnterPassword;
                    IpTempBanned = G_ZStrg1.IpTempBanned;
                    protectedTeam = G_ZStrg1.protectedTeam;
                    Parm_string_1 = G_ZStrg1.AntiSpeedhack;
                    damageStats = G_ZStrg1.damageStats;
                    B_v5494 = G_ZStrg1.announceConnect;
                    STR_v3845 = G_ZStrg1.STR_v5849;
                    B_v5496 = G_ZStrg1.bWeaponChoice;
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
                    Local_string_v2 = ConsoleCommand("get Engine.GameInfo GamePassword");
                    Local_string_v3 = GameReplicationInfo.ServerName;
                    if(((Local_string_v2 != "") && Caps(Left(Local_string_v3, 10)) != "[PASSWORD]") && G_ZStrg1.bShowPasswordPrefix)
                    {
                        LogCoAdminZEvent("[CoAdminZ:] Automatically added [PASSWORD] prefix to server due to gamepassword: " $ Local_string_v2);
                        GameReplicationInfo.ServerName = "[PASSWORD] " $ Local_string_v3;
                    }
                    if(GameReplicationInfo.ShortName == "Rune Server")
                    {
                        GameReplicationInfo.ShortName = "";
                    }
                    if((G_ZStrg1 != none) && Level.Title == "Dragon Might Arena")
                    {
                        LMut0 = Class<Mutator>(DynamicLoadObject("DragonMightArena003.MutatorDMArena", Class'Core.Class'));
                        if(LMut0 != none)
                        {
                            BaseMutator.AddMutator(Spawn(LMut0));
                        }
                        ConsoleCommand("set dragonmightarena003.mutatordmarena bautorespawn false");
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
            return;
            break;
    }
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
    if(P0.IsA('Spectator'))
    {
        if((int(Level.NetMode) == int(NM_DedicatedServer)) || int(Level.NetMode) == int(NM_ListenServer))
        {
            BroadcastMessage(P0.PlayerReplicationInfo.PlayerName $ " stopped spectating and left the game.", false);
        }
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
    if(int(P0.PlayerReplicationInfo.Team) != 255)
    {
        eqs_vxv_5342[int(P0.PlayerReplicationInfo.Team)].Size--;
    }
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
    if(P0.IsA('Spectator'))
    {
        return;
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
    return;
}

function InitGameReplicationInfo()
{
    super.InitGameReplicationInfo();
    zGameReplicationInfo(GameReplicationInfo).MaxPlayers = MaxPlayers;
    if(G_ZStrg1 != none)
    {
        zGameReplicationInfo(GameReplicationInfo).moreMOTD = G_ZStrg1.moreMOTD;
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
    Error = "";
    Local_string_v0 = ParseOption(Parm_string_0, "Password");
    LogCoAdminZEvent(Parm_string_0, "PreLogin");
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
    local string Local_string_v0, Local_string_v3;

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
    J0x2CF:

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
                goto J0x3EE;
            }
        }
        LocalP0 = LocalP0.nextPawn;
        // [Loop Continue]
        goto J0x2CF;
    }
    J0x3EE:

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

event PlayerPawn Login(string Parm_string_0, string Parm_string_0, out string Error, Class<PlayerPawn> Parm_Class<PlayerPawn>_0)
{
    local PlayerPawn Parm_PlayerPawn_0;
    local Pawn LocalP0, Parm_PlayerPawn_0;
    local string Local_string_v0;
    local byte Local_byte_v0, Local_byte_v1;
    local bool Local_bool_v0;
    local int i, Local_int_v0;
    local TeamInfo Local_TeamInfo_v0;
    local bool Local_bool_v1, Local_bool_v2;
    local NavigationPoint Local_NavigationPoint_v0;
    local byte Parm_int_0;
    local string Local_string_v0, Local_string_v2;
    local int Local_int_v0, Local_int_v1;

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
    Parm_PlayerPawn_0 = eq_vxv_182(Parm_string_0, Parm_string_0, Error, Parm_Class<PlayerPawn>_0);
    if(Parm_PlayerPawn_0 == none)
    {
        return none;
    }
    Parm_int_0 = Parm_PlayerPawn_0.PlayerReplicationInfo.Team;
    if((((int(Parm_int_0) < 0) || int(Parm_int_0) >= 5) || eqR_vxv_5557[int(Parm_int_0)] == 0) || Local_bool_v2)
    {
        Parm_int_0 = ForceTeam(Parm_PlayerPawn_0);
    }
    if(bSpawnInTeamArea || bLevelHasTeamOnly)
    {
        Local_NavigationPoint_v0 = FindPlayerStart(Parm_PlayerPawn_0, Parm_int_0, Parm_string_0);
        if(Local_NavigationPoint_v0 != none)
        {
            Parm_PlayerPawn_0.SetLocation(Local_NavigationPoint_v0.Location);
            Parm_PlayerPawn_0.SetRotation(Local_NavigationPoint_v0.Rotation);
            Parm_PlayerPawn_0.ViewRotation = Local_NavigationPoint_v0.Rotation;
            Parm_PlayerPawn_0.ClientSetRotation(Parm_PlayerPawn_0.Rotation);
            Local_NavigationPoint_v0.PlayTeleportEffect(Parm_PlayerPawn_0, true);
        }
    }
    if(ZRunePlayer(Parm_PlayerPawn_0) != none)
    {
        ZRunePlayer(Parm_PlayerPawn_0).STR_v3845 = Parm_string_06(STR_v3845);
        ZRunePlayer(Parm_PlayerPawn_0).INT_v5543 = INT_v4473;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4661 = B_v5496;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4674 = G_ZStrg1.bDisableAntiAimbot;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4664 = G_ZStrg1.bClimbMode;
        if(B_v5495)
        {
            ZRunePlayer(Parm_PlayerPawn_0).B_v4660 = B_v5495;
        }
        ZRunePlayer(Parm_PlayerPawn_0).B_v4540 = G_ZStrg1.fLagFix;
        ZRunePlayer(Parm_PlayerPawn_0).INT_v4629 = INT_v5493;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4651 = G_ZStrg1.bCheckForIllegalCalls;
        ZRunePlayer(Parm_PlayerPawn_0).INT_v4658 = INT_v4658;
    }
    Local_int_v0 = 0;
    Local_int_v1 = 0;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).testkey = G_ZStrg1.testkey;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Local_int_v2 = Local_int_v1;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Local_int_v3 = Local_int_v0;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).damageStats = damageStats;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).STR_v3845 = Parm_string_06(STR_v3845);
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MaxPlayers = MaxPlayers;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Col_v5372 = G_ZStrg1.ServerNameColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).bshowshadow = G_ZStrg1.bshowshadow;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Col_v5373 = G_ZStrg1.HeaderColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).bdontFadeMessages = G_ZStrg1.bdontFadeMessages;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5412 = G_ZStrg1.bHealthbars;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5413 = G_ZStrg1.bAdvancedThrowing;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).retro = G_ZStrg1.retro;
    if(G_ZStrg1.retro)
    {
        Parm_PlayerPawn_0.bHiddenEd = true;
    }
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).AdminColor = G_ZStrg1.AdminColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).titlecolor = G_ZStrg1.titlecolor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).EmailColor = G_ZStrg1.EmailColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD1Color = G_ZStrg1.MOTD1Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD2Color = G_ZStrg1.MOTD2Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD3Color = G_ZStrg1.MOTD3Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD4Color = G_ZStrg1.MOTD4Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).SeperatorColor = G_ZStrg1.SeperatorColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).HeadingsColor = G_ZStrg1.HeadingsColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).motdseconds = G_ZStrg1.motdseconds;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).INT_v5356 = G_ZStrg1.MOTDGapSize;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).INT_v5357 = G_ZStrg1.MOTDGapToScoreboardSize;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).INT_v5358 = G_ZStrg1.MOTDGapAfterAdminEmailSize;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Update = G_ZStrg1.STR_v5889;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).retro = G_ZStrg1.retro;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5382 = G_ZStrg1.Linux;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5360 = G_ZStrg1.bClimbMode;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5401 = G_ZStrg1.bOldWaterPhysics;
    if((ConsoleCommand("get Engine.GameInfo GamePassword")) != "")
    {
        zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5369 = true;
    }
    if(G_ZStrg1 != none)
    {
        Local_bool_v1 = ((zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Local_int_v3 & G_ZStrg1.64) > 0) || Parm_PlayerPawn_0.bAdmin;
    }
    Local_byte_v0 = Parm_PlayerPawn_0.PlayerReplicationInfo.Team;
    if(((((int(Local_byte_v0) < 0) || int(Local_byte_v0) >= 5) || eqs_vxv_5342[int(Local_byte_v0)].Size > MaxTeamSize) || eqR_vxv_5557[int(Local_byte_v0)] == 0) || (int(Local_byte_v0) == protectedTeam) && !Local_bool_v1)
    {
        i = 0;
        J0xAB8:

        if(i < 5)
        {
            if((eqR_vxv_5557[i] != 0) && (i != protectedTeam) || Local_bool_v1)
            {
                if((eqs_vxv_5342[i].Size < MaxTeamSize) && (Local_TeamInfo_v0 == none) || Local_TeamInfo_v0.Size > eqs_vxv_5342[i].Size)
                {
                    Local_int_v0 = i;
                    Local_TeamInfo_v0 = eqs_vxv_5342[i];
                }
            }
            i++;
            // [Loop Continue]
            goto J0xAB8;
        }
        Local_byte_v0 = byte(Local_int_v0);
        if(Parm_PlayerPawn_0.IsA('Spectator'))
        {
            Parm_PlayerPawn_0.PlayerReplicationInfo.Team = Local_byte_v0;
            Parm_PlayerPawn_0.PlayerReplicationInfo.TeamName = eqs_vxv_5342[int(Local_byte_v0)].TeamName;            
        }
        else
        {
            if(Parm_PlayerPawn_0.PlayerReplicationInfo.TeamName != "")
            {
                eqs_vxv_5342[int(Parm_PlayerPawn_0.PlayerReplicationInfo.Team)].Size--;
                AddToTeam(int(Local_byte_v0), Parm_PlayerPawn_0);
            }
        }
    }
    if((int(Local_byte_v1) == protectedTeam) && Local_string_v0 == EnterPassword)
    {
        if(Parm_PlayerPawn_0.IsA('Spectator'))
        {
            Parm_PlayerPawn_0.PlayerReplicationInfo.Team = Local_byte_v1;
            Parm_PlayerPawn_0.PlayerReplicationInfo.TeamName = eqs_vxv_5342[int(Local_byte_v1)].TeamName;            
        }
        else
        {
            if(Parm_PlayerPawn_0.PlayerReplicationInfo.TeamName != "")
            {
                eqs_vxv_5342[int(Parm_PlayerPawn_0.PlayerReplicationInfo.Team)].Size--;
                AddToTeam(int(Local_byte_v1), Parm_PlayerPawn_0);
            }
        }
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
    LogInternal((("[RUNEPLAYER_JOIN] " $ Local_zPlayerReplicationInfo_v0.PlayerName) $ " IP=") $ Local_string_v0);
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

function bool ChangeTeam(Pawn Parm_Pawn_1, int Parm_int_0)
{
    local int i, Local_int_v0;
    local Pawn P0;
    local TeamInfo Local_TeamInfo_v0;
    local string Local_string_v0, Local_string_v1;
    local int Local_int_v1;
    local bool Local_bool_v1;

    if(G_ZStrg1 != none)
    {
        Local_bool_v1 = (((zPlayerReplicationInfo(PlayerPawn(Parm_Pawn_1).PlayerReplicationInfo).Local_int_v3 & G_ZStrg1.64) > 0) || PlayerPawn(Parm_Pawn_1).bAdmin) || zPlayerReplicationInfo(PlayerPawn(Parm_Pawn_1).PlayerReplicationInfo).B_v5347;
    }
    zPlayerReplicationInfo(PlayerPawn(Parm_Pawn_1).PlayerReplicationInfo).B_v5347 = false;
    if(G_ZStrg1.B_v5796)
    {
        if(Parm_int_0 == 4)
        {
            Parm_Pawn_1.ClientMessage("You can't join pink because it has been join-protected for the current map.");
            Parm_int_0 = int(RandRange(0.0000000, 3.0000000));
        }
        Local_int_v1 = 4;        
    }
    else
    {
        Local_int_v1 = 5;
    }
    i = 0;
    J0x152:

    if(i < Local_int_v1)
    {
        if((eqR_vxv_5557[i] != 0) && (i != protectedTeam) || Local_bool_v1)
        {
            if((eqs_vxv_5342[i].Size < MaxTeamSize) && (Local_TeamInfo_v0 == none) || Local_TeamInfo_v0.Size > eqs_vxv_5342[i].Size)
            {
                Local_int_v0 = i;
                Local_TeamInfo_v0 = eqs_vxv_5342[i];
            }
        }
        i++;
        // [Loop Continue]
        goto J0x152;
    }
    if((((Parm_int_0 == 255) || Parm_int_0 >= Local_int_v1) || eqR_vxv_5557[Parm_int_0] == 0) || (Parm_int_0 == protectedTeam) && !Local_bool_v1)
    {
        Parm_int_0 = Local_int_v0;
    }
    if(Parm_Pawn_1.IsA('Spectator'))
    {
        Parm_Pawn_1.PlayerReplicationInfo.Team = byte(Parm_int_0);
        Parm_Pawn_1.PlayerReplicationInfo.TeamName = eqs_vxv_5342[Parm_int_0].TeamName;
        return true;
    }
    if((int(Parm_Pawn_1.PlayerReplicationInfo.Team) == Parm_int_0) && bNoTeamChanges)
    {
        return false;
    }
    if((Parm_Pawn_1.PlayerReplicationInfo.TeamName != "") || int(Parm_Pawn_1.PlayerReplicationInfo.Team) == 4)
    {
        eqs_vxv_5342[int(Parm_Pawn_1.PlayerReplicationInfo.Team)].Size--;
    }
    i = 0;
    J0x35F:

    if(i < Local_int_v1)
    {
        if((i == Parm_int_0) && eqR_vxv_5557[i] != 0)
        {
            if(eqs_vxv_5342[i].Size < MaxTeamSize)
            {
                ZRunePlayer(Parm_Pawn_1).eq_vxv_545(Parm_int_0);
                AddToTeam(i, Parm_Pawn_1);
                return true;
                // [Explicit Continue]
                goto J0x3DF;
            }
            // [Explicit Break]
            goto J0x3E9;
        }
        J0x3DF:

        i++;
        // [Loop Continue]
        goto J0x35F;
    }
    J0x3E9:

    if((Local_TeamInfo_v0 != none) && Local_TeamInfo_v0.Size < MaxTeamSize)
    {
        AddToTeam(Local_int_v0, Parm_Pawn_1);
        return true;
    }
    return false;
    return;
}

event GameEnding()
{
    local int i;
    local Pawn Parm_PlayerPawn_0;
    local PlayerPawn Local_PlayerPawn_v0;
    local zPlayerReplicationInfo Local_zPlayerReplicationInfo_v0;

    Parm_PlayerPawn_0 = Level.PawnList;
    J0x14:

    if(Parm_PlayerPawn_0 != none)
    {
        zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).RepStr = "mapchange";
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

function Pawn GetPawnByPlayerID(int i)
{
    local Pawn Parm_PlayerPawn_0;

    Parm_PlayerPawn_0 = Level.PawnList;
    J0x14:

    if(Parm_PlayerPawn_0 != none)
    {
        if(((Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerID == i) && !Parm_PlayerPawn_0.IsA('Spectator')) && zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Local_string_v1 != "")
        {
            return Parm_PlayerPawn_0;
        }
        Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
        // [Loop Continue]
        goto J0x14;
    }
    return none;
    return;
}

static function string KillMessage(name DamageType, Pawn P0)
{
    if(P0 == none)
    {
        switch(DamageType)
        {
            case 'suicided':
                return default.SuicidedMessage;
            case 'Crushed':
                return default.CrushedMessage;
            case 'fell':
                return default.FellMessage;
            default:
                return default.SuicidedMessage;
                break;
        }
    }
    switch(DamageType)
    {
        case 'drowned':
            return default.DrownedMessage;
        case 'ThrownWeaponBlunt':
        case 'thrownweaponsever':
        case 'thrownweaponbluntsever':
            return default.ThrownMessage;
        case 'Blunt':
        case 'Sever':
        case 'bluntsever':
        case 'gibbed':
            return default.NormalMessage;
        case 'Fire':
        case 'Electricity':
            return default.FireMessage;
        case 'decapitated':
            return default.HeadMessage;
        default:
            return default.NormalMessage;
            break;
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
    if((ZRunePlayer(P0) != none) && ZRunePlayer(Parm_Pawn_1) != none)
    {
        ZRunePlayer(P0).NotifyKillToConsole(P0.PlayerReplicationInfo, Parm_Pawn_1.PlayerReplicationInfo, DamageType);
        ZRunePlayer(Parm_Pawn_1).NotifyKillToConsole(P0.PlayerReplicationInfo, Parm_Pawn_1.PlayerReplicationInfo, DamageType);
    }
    if((P0 == Parm_Pawn_1) || P0 == none)
    {
        if(((((ZRunePlayer(Parm_Pawn_1) != none) && (Level.TimeSeconds - float(ZRunePlayer(Parm_Pawn_1).INT_v4680)) < float(5)) && ZRunePlayer(Parm_Pawn_1).STR_v4682 != "") && Parm_Pawn_1.FootRegion.Zone.bWaterZone) && Parm_Pawn_1.FootRegion.Zone.bPainZone)
        {
            BroadcastMessage(((Parm_Pawn_1.PlayerReplicationInfo.PlayerName $ " tried to escape ") $ ZRunePlayer(Parm_Pawn_1).STR_v4682) $ " by jumping into water.");
        }
    }
    if((P0 != none) && P0 != Parm_Pawn_1)
    {
        if(((DamageType == 'Jump') && ZRunePlayer(Parm_Pawn_1) != none) && ZRunePlayer(P0) != none)
        {
            Parm_Pawn_1.PlayerReplicationInfo.Deaths += 1.0000000;
            P0.PlayerReplicationInfo.Score += 1.0000000;
            eqs_vxv_5342[int(P0.PlayerReplicationInfo.Team)].Score += 1.0000000;
            zPlayerReplicationInfo(P0.PlayerReplicationInfo).INT_v5377 += int(1.0000000);
            BroadcastMessage(((Parm_Pawn_1.PlayerReplicationInfo.PlayerName $ " died and is now a pancake due to ") $ P0.PlayerReplicationInfo.PlayerName) $ " jumping on his head!");
            return;
        }
        if((P0.Weapon == none) && DamageType != 'Jump')
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
    super(RuneMultiPlayer).Killed(P0, Parm_Pawn_1, DamageType);
    if(((P0 != none) && P0.PlayerReplicationInfo != none) && ((DamageType == 'ThrownWeaponBlunt') || DamageType == 'thrownweaponsever') || DamageType == 'thrownweaponbluntsever')
    {
        zPlayerReplicationInfo(P0.PlayerReplicationInfo).INT_v5354++;
    }
    if((P0 == Parm_Pawn_1) || P0 == none)
    {
        if(int(Parm_Pawn_1.PlayerReplicationInfo.Team) != 255)
        {
            eqs_vxv_5342[int(Parm_Pawn_1.PlayerReplicationInfo.Team)].Score -= 1.0000000;
        }        
    }
    else
    {
        if(int(P0.PlayerReplicationInfo.Team) != 255)
        {
            eqs_vxv_5342[int(P0.PlayerReplicationInfo.Team)].Score += 1.0000000;
            if((GoalTeamScore > float(0)) && eqs_vxv_5342[int(P0.PlayerReplicationInfo.Team)].Score >= GoalTeamScore)
            {
                EndGame("teamscorelimit");
            }
        }
    }
    if((P0 == Parm_Pawn_1) || P0 == none)
    {
        if(int(Parm_Pawn_1.PlayerReplicationInfo.Team) < 4)
        {
            RuneGameReplicationInfo(GameReplicationInfo).Teams[int(Parm_Pawn_1.PlayerReplicationInfo.Team)].Score -= 1.0000000;
        }        
    }
    else
    {
        if(int(P0.PlayerReplicationInfo.Team) < 4)
        {
            RuneGameReplicationInfo(GameReplicationInfo).Teams[int(P0.PlayerReplicationInfo.Team)].Score += 1.0000000;
        }
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
                J0x705:

                if(Parm_PlayerPawn_0 != none)
                {
                    PlayerPawn(Parm_PlayerPawn_0).ClientPlaySound(UNK_v5549);
                    Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
                    // [Loop Continue]
                    goto J0x705;
                }
                bFirstBlood = true;
                P0.PlayerReplicationInfo.bFirstBlood = true;
            }
        }
    }
    return;
}

defaultproperties
{
    protectedTeam=-1
    IpTempBanned="Your IP has been banned for the duration of this map."
    MaxTeams=5
    bClassicDeathMessages=true
    ScoreBoardType=Class'coadminz7.saScoreboardTeam'
    HUDType=Class'coadminz7.zHUD'
    GameName="CoAdminZ Teamgame"
    GameReplicationInfoClass=Class'coadminz7.zGameReplicationInfo'
}