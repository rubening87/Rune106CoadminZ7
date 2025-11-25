class yWeapon extends Weapon;

function PostBeginPlay()
{
    local int i;

    SetWeaponStay();
    NumThroughAirSounds = 0;
    NumThroughAirBerserkSounds = 0;
    NumFleshSounds = 0;
    NumWoodSounds = 0;
    NumStoneSounds = 0;
    NumMetalSounds = 0;
    NumEarthSounds = 0;
    i = 0;
    J0x3E:

    if(i < 3)
    {
        if(ThroughAir[i] != none)
        {
            NumThroughAirSounds++;
        }
        if(ThroughAirBerserk[i] != none)
        {
            NumThroughAirBerserkSounds++;
        }
        if(HitFlesh[i] != none)
        {
            NumFleshSounds++;
        }
        if(HitWood[i] != none)
        {
            NumWoodSounds++;
        }
        if(HitStone[i] != none)
        {
            NumStoneSounds++;
        }
        if(HitMetal[i] != none)
        {
            NumMetalSounds++;
        }
        if(HitDirt[i] != none)
        {
            NumEarthSounds++;
        }
        i++;
        // [Loop Continue]
        goto J0x3E;
    }
    super(Inventory).PostBeginPlay();
    return;
}

function bool SplashJump()
{
    return false;
    return;
}

simulated function PreRender(Canvas Canvas)
{
    return;
}

simulated function PostRender(Canvas Canvas)
{
    return;
}

function ClientWeaponEvent(name Parm_name_0)
{
    return;
}

function int CalculateDamage(Actor Parm_Actor_0)
{
    local int Local_int_v0;

    Local_int_v0 = Damage;
    
    if((Owner != none) && Pawn(Owner) != none)
    {
        Local_int_v0 *= Pawn(Owner).PawnDamageModifier(self);
    }
    if((Owner.Region.Zone.bNeutralZone || Parm_Actor_0.Region.Zone.bNeutralZone) && Parm_Actor_0.IsA('Pawn') || Parm_Actor_0.IsA('Shield'))
    {
        Local_int_v0 = 0;        
    }
    else
    {
        if((Parm_Actor_0.Owner != none) && Parm_Actor_0.Owner.Region.Zone.bNeutralZone)
        {
            Local_int_v0 = 0;
        }
    }
    if((((Level.Game.bTeamGame && Pawn(Parm_Actor_0) != none) && Pawn(Owner) != none) && int(Pawn(Parm_Actor_0).PlayerReplicationInfo.Team) != 255) && int(Pawn(Parm_Actor_0).PlayerReplicationInfo.Team) == int(Pawn(Owner).PlayerReplicationInfo.Team))
    {
        Local_int_v0 = 0;
    }
    return Local_int_v0;
    return;
}

function PowerupInit()
{
    SwipeClass = PoweredUpSwipeClass;
    SpawnPowerupEffect();
    return;
}

function PowerupEndingPulseOn()
{
    DesiredFatness = 170;
    DesiredColorAdjust.X = 191.0000000;
    PlaySound(PoweredUpEndingSound, 0);
    return;
}

function PowerupEndingPulseOff()
{
    DesiredFatness = 128;
    DesiredColorAdjust.X = 0.0000000;
    return;
}

function PowerupEnded()
{
    DesiredColorAdjust.X = 0.0000000;
    DesiredFatness = 128;
    SwipeClass = default.SwipeClass;
    RemovePowerupEffect();
    return;
}

simulated function SpawnPowerupEffect()
{
    return;
}

simulated function RemovePowerupEffect()
{
    return;
}

simulated event PowerupStatusChanged()
{
    if(bPoweredUp && !bClientPoweredUp)
    {
        bClientPoweredUp = true;
        SpawnPowerupEffect();        
    }
    else
    {
        if(!bPoweredUp && bClientPoweredUp)
        {
            bClientPoweredUp = false;
            RemovePowerupEffect();
        }
    }
    return;
}

function PowerUp()
{
    bPoweredUp = true;
    SetTimer(RunePowerDuration, false);
    TimerCount = 7;
    PlaySound(PowerUpSound);
    AmbientSound = PoweredUpSoundLOOP;
    Pawn(Owner).ClientMessage(PowerupMessage, 'None');
    PowerupInit();
    return;
}

function PowerupEnd()
{
    bPoweredUp = false;
    SetTimer(0.0000000, false);
    PlaySound(PoweredUpEndSound);
    AmbientSound = none;
    PowerupEnded();
    return;
}

function Timer()
{
    TimerCount--;
    switch(TimerCount)
    {
        case 5:
        case 3:
        case 1:
            PowerupEndingPulseOn();
            SetTimer(0.5000000, false);
            break;
        case 6:
        case 4:
        case 2:
            PowerupEndingPulseOff();
            SetTimer(0.5000000, false);
            break;
        case 0:
            PowerupEnd();
            break;
        default:
            break;
    }
    return;
}

function WeaponFire(int Parm_int_0)
{
    return;
}

function PowerUpNotify1()
{
    return;
}

function PowerUpNotify2()
{
    return;
}

function PoweredUpCallback1()
{
    return;
}

function PoweredUpCallback2()
{
    return;
}

function bool StickInWall(Object.EMatterType Local_Object.EMatterType_v0)
{
    return false;
    return;
}

function SetWeaponStay()
{
    if(Level.Game != none)
    {
        bWeaponStay = bWeaponStay || Level.Game.bCoopWeaponMode;
    }
    return;
}

function bool HandlePickupQuery(Inventory Parm_Inventory_0)
{
    local int Local_int_v0;
    local Pawn LocalP0;

    if(Parm_Inventory_0.Class == Class)
    {
        LocalP0 = Pawn(Owner);
        if(Level.Game.LocalLog != none)
        {
            Level.Game.LocalLog.LogPickup(Parm_Inventory_0, Pawn(Owner));
        }
        if(Level.Game.WorldLog != none)
        {
            Level.Game.WorldLog.LogPickup(Parm_Inventory_0, Pawn(Owner));
        }
        if(Parm_Inventory_0.PickupMessageClass == none)
        {
            LocalP0.ClientMessage(Parm_Inventory_0.PickupMessage, 'Pickup');            
        }
        else
        {
            LocalP0.ReceiveLocalizedMessage(Parm_Inventory_0.PickupMessageClass, 0, none, none, Parm_Inventory_0.Class);
        }
        Parm_Inventory_0.PlaySound(Parm_Inventory_0.PickupSound);
        Parm_Inventory_0.SetRespawn();
        return true;
    }
    if(Inventory == none)
    {
        return false;
    }
    return Inventory.HandlePickupQuery(Parm_Inventory_0);
    return;
}

function Object.EMatterType MatterForJoint(int Parm_int_0)
{
    return 12;
    return;
}

function PlayHitMatterSound(Object.EMatterType Local_Object.EMatterType_v0)
{
    local int i;

    switch(Local_Object.EMatterType_v0)
    {
        case 4:
            i = Rand(NumFleshSounds);
            PlaySound(HitFlesh[i], 1,,,, 1.0000000 + (((FRand() - 0.5000000) * 2.0000000) * PitchDeviation));
            break;
        case 1:
            i = Rand(NumWoodSounds);
            PlaySound(HitWood[i], 1,,,, 1.0000000 + (((FRand() - 0.5000000) * 2.0000000) * PitchDeviation));
            break;
        case 3:
            i = Rand(NumStoneSounds);
            PlaySound(HitStone[i], 1,,,, 1.0000000 + (((FRand() - 0.5000000) * 2.0000000) * PitchDeviation));
            break;
        case 2:
            i = Rand(NumMetalSounds);
            PlaySound(HitMetal[i], 1,,,, 1.0000000 + (((FRand() - 0.5000000) * 2.0000000) * PitchDeviation));
            break;
        case 7:
            i = Rand(NumEarthSounds);
            PlaySound(HitDirt[i], 1,,,, 1.0000000 + (((FRand() - 0.5000000) * 2.0000000) * PitchDeviation));
            break;
        case 9:
            PlaySound(HitBreakableWood, 1,,,, 1.0000000 + (((FRand() - 0.5000000) * 2.0000000) * PitchDeviation));
            break;
        case 10:
            PlaySound(HitBreakableStone, 1,,,, 1.0000000 + (((FRand() - 0.5000000) * 2.0000000) * PitchDeviation));
            break;
        case 12:
            PlaySound(HitWeapon, 1,,,, 1.0000000 + (((FRand() - 0.5000000) * 2.0000000) * PitchDeviation));
            break;
        case 11:
            PlaySound(HitShield, 1,,,, 1.0000000 + (((FRand() - 0.5000000) * 2.0000000) * PitchDeviation));
            break;
        case 5:
        case 6:
            break;
        default:
            break;
    }
    if(Pawn(Owner) != none)
    {
        Pawn(Owner).MakeNoise(1.0000000);
    }
    return;
}

function Destroyed()
{
    super(Inventory).Destroyed();
    if((Pawn(Owner) != none) && Pawn(Owner).Weapon == self)
    {
        Pawn(Owner).Weapon = none;
    }
    return;
}

event TravelPostAccept()
{
    local PlayerPawn LocalP0;
    local int Parm_int_0;

    super(Actor).TravelPostAccept();
    if(Pawn(Owner) == none)
    {
        return;
    }
    if(self == Pawn(Owner).Weapon)
    {
        Parm_int_0 = Owner.JointNamed(Pawn(Owner).WeaponJoint);
        Owner.AttachActorToJoint(self, Parm_int_0);
        GotoState('Active');
        return;
    }
    if(Owner.IsA('PlayerPawn'))
    {
        LocalP0 = PlayerPawn(Owner);
        if(self == LocalP0.StowSpot[0])
        {
            Parm_int_0 = LocalP0.JointNamed('attatch_sword');            
        }
        else
        {
            if(self == LocalP0.StowSpot[1])
            {
                Parm_int_0 = LocalP0.JointNamed('attach_hammer');                
            }
            else
            {
                if(self == LocalP0.StowSpot[2])
                {
                    Parm_int_0 = LocalP0.JointNamed('attach_axe');                    
                }
                else
                {
                    Parm_int_0 = 0;
                }
            }
        }
        if(Parm_int_0 != 0)
        {
            LocalP0.AttachActorToJoint(self, Parm_int_0);            
        }
        else
        {
            bHidden = true;
        }
        GotoState('Stow');
    }
    return;
}

function PlayThrowFrame()
{
    PlayAnim('Flying', 1.0000000, 0.0000000);
    return;
}

function PlayNormalFrame()
{
    PlayAnim('baseframe', 1.0000000, 0.0000000);
    return;
}

function float SuggestAttackStyle()
{
    return 0.0000000;
    return;
}

function float SuggestDefenseStyle()
{
    return 0.0000000;
    return;
}

function float RateSelf(out int eq_vxv_5088)
{
    return 1.0000000;
    return;
}

function int GetUsePriority()
{
    return 1;
    return;
}

function Inventory SpawnCopy(Pawn P0)
{
    local Inventory Local_Inventory_v0;
    local Weapon NewWeapon;

    if(Level.Game.ShouldRespawn(self))
    {
        Local_Inventory_v0 = Spawn(Class, P0,,, rot(0, 0, 0));
        if(Local_Inventory_v0 == none)
        {
            LogInternal(string(Name) @ "cannot be spawned in spawncopy");
        }
        Local_Inventory_v0.Tag = Tag;
        Local_Inventory_v0.Event = Event;
        if(!bWeaponStay)
        {
            GotoState('Sleeping');
        }        
    }
    else
    {
        Local_Inventory_v0 = self;
    }
    Local_Inventory_v0.bTossedOut = true;
    Local_Inventory_v0.RespawnTime = 0.0000000;
    Local_Inventory_v0.GiveTo(P0);
    Local_Inventory_v0.bHidden = false;
    NewWeapon = Weapon(Local_Inventory_v0);
    return NewWeapon;
    return;
}

function EnableSwipeTrail()
{
    if(SwipeClass != none)
    {
        swipe = Spawn(SwipeClass, self,, Location);
        if(swipe != none)
        {
            swipe.BaseJointIndex = byte(SweepJoint1);
            swipe.OffsetJointIndex = byte(SweepJoint2);
            swipe.SystemLifeSpan = -1.0000000;
            swipe.SetBase(self.Owner);
        }
    }
    return;
}

function DisableSwipeTrail()
{
    if(swipe != none)
    {
        swipe.SystemLifeSpan = 3.0000000;
        swipe.SetBase(none);
        swipe = none;
    }
    return;
}

function ZoneChange(ZoneInfo Parm_ZoneInfo_0)
{
    local int i;

    if(Parm_ZoneInfo_0.bWaterZone)
    {
        i = 0;
        J0x19:

        if(i < 16)
        {
            SkelGroupSkins[i] = none;
            i++;
            // [Loop Continue]
            goto J0x19;
        }
        SetDefaultPolygroups();
        if(bPoweredUp)
        {
            PowerupEnd();
        }
    }
    return;
}

function StabActor(Pawn Parm_Actor_0)
{
    local Rotator Local_Rotator_v0;

    if(Parm_Actor_0.StabJoint == 'None')
    {
        return;
    }
    Parm_Actor_0.AttachActorToJoint(self, Parm_Actor_0.JointNamed(Parm_Actor_0.StabJoint));
    Parm_Actor_0.DetachActorFromJoint(JointNamed(Parm_Actor_0.StabJoint));
    Local_Rotator_v0 = rot(0, 0, 16384);
    Local_Rotator_v0.Yaw = Parm_Actor_0.Rotation.Yaw + 16384;
    Parm_Actor_0.PainSkin(10);
    PlayAnim('skewer', 1.0000000, 0.0000000);
    return;
}

simulated function RemoveStab(Carcass Parm_Actor_0, int Local_int_v0)
{
    local Vector Local_Vector_v0;
    local Rotator Local_Rotator_v0;

    PlayAnim('Base', 1.0000000, 0.0000000);
    Local_Vector_v0 = Parm_Actor_0.GetJointPos(Local_int_v0) + vect(0.0000000, 0.0000000, 38.0000000);
    SetLocation(Local_Vector_v0);
    Local_Rotator_v0 = rot(0, 0, 16384);
    Local_Rotator_v0.Yaw = Parm_Actor_0.Rotation.Yaw + 16384;
    SetRotation(Local_Rotator_v0);
    SetPhysics(0);
    GotoState('Pickup');
    return;
}

function StartAttack()
{
    return;
}

function FinishAttack()
{
    return;
}

function DropFrom(Vector Parm_Vector_0)
{
    bCollideWorld = true;
    if(!SetLocation(Parm_Vector_0))
    {
        return;
    }
    SetPhysics(2);
    BecomePickup();
    SetCollision(true, false, false);
    SetOwner(none);
    AmbientSound = none;
    GotoState('Drop');
    return;
}

simulated function TweenToStill()
{
    return;
}

simulated function bool ClientFire(float Value)
{
    return true;
    return;
}

simulated function bool ClientAltFire(float Value)
{
    return true;
    return;
}

function ForceFire()
{
    return;
}

function ForceAltFire()
{
    return;
}

function ClearSwipeArray()
{
    local int i;

    i = 0;
    J0x07:

    if(i < 16)
    {
        SwipeHits[i].Actor = none;
        SwipeHits[i].LowMask = 0;
        SwipeHits[i].HighMask = 0;
        i++;
        // [Loop Continue]
        goto J0x07;
    }
    return;
}

function bool SwipeArrayCheck(Actor A, int LowMask, int HighMask)
{
    local int i;
    local Pawn LocalP0;

    if(((A == Owner) || A.Owner == Owner) || A == self)
    {
        return false;
    }
    if(!A.bSweepable)
    {
        return false;
    }
    i = 0;
    J0x55:

    if(i < 16)
    {
        if(SwipeHits[i].Actor == A)
        {
            return false;
        }
        i++;
        // [Loop Continue]
        goto J0x55;
    }
    i = 0;
    J0x8E:

    if(i < 16)
    {
        if(SwipeHits[i].Actor == none)
        {
            SwipeHits[i].Actor = A;
            SwipeHits[i].LowMask = LowMask;
            SwipeHits[i].HighMask = HighMask;
            if((A.Owner != none) && !A.IsA('Weapon'))
            {
                SwipeArrayCheck(A.Owner, 0, 0);
            }
            if(A.IsA('Pawn'))
            {
                LocalP0 = Pawn(A);
                if(LocalP0.Weapon != none)
                {
                    SwipeArrayCheck(LocalP0.Weapon, 0, 0);
                }
                if(LocalP0.Shield != none)
                {
                    SwipeArrayCheck(LocalP0.Shield, 0, 0);
                }
            }
            return true;
        }
        i++;
        // [Loop Continue]
        goto J0x8E;
    }
    return false;
    return;
}

function bool DoWeaponSwipe(Actor A, int LowMask, int HighMask, Vector Parm_Vector_0, Vector Parm_Vector_1, Vector Momentum)
{
    local int Local_int_v0, Local_int_v0;
    local bool Local_bool_v0;

    Local_bool_v0 = true;
    if(((Owner != none) && Pawn(Owner) != none) && !Pawn(Owner).AllowWeaponToHitActor(self, A))
    {
        return true;
    }
    if((((Level.Game.bTeamGame && Pawn(A) != none) && Pawn(Owner) != none) && int(Pawn(A).PlayerReplicationInfo.Team) != 255) && int(Pawn(A).PlayerReplicationInfo.Team) == int(Pawn(Owner).PlayerReplicationInfo.Team))
    {
        return true;
    }
    if(((((A.IsA('Shield') && Level.Game.bTeamGame) && Pawn(A.Owner) != none) && Pawn(Owner) != none) && int(Pawn(A.Owner).PlayerReplicationInfo.Team) != 255) && int(Pawn(A.Owner).PlayerReplicationInfo.Team) == int(Pawn(Owner).PlayerReplicationInfo.Team))
    {
        return true;
    }
    Local_int_v0 = CalculateDamage(A);
    if(Local_int_v0 == 0)
    {
        return Local_bool_v0;
    }
    if(A.Skeletal != none)
    {
        if((LowMask == 0) && HighMask == 0)
        {
            Local_bool_v0 = A.JointDamaged(Local_int_v0, Pawn(Owner), Parm_Vector_0, Momentum, DamageType, 0);            
        }
        else
        {
            Local_int_v0 = 0;
            J0x257:

            if(Local_int_v0 < A.NumJoints())
            {
                if(((Local_int_v0 < 32) && (LowMask & (1 << Local_int_v0)) != 0) || ((Local_int_v0 >= 32) && Local_int_v0 < 64) && (HighMask & (1 << (Local_int_v0 - 32))) != 0)
                {
                    if(!A.JointDamaged(Local_int_v0, Pawn(Owner), Parm_Vector_0, Momentum, DamageType, Local_int_v0))
                    {
                        return false;
                    }
                }
                Local_int_v0++;
                // [Loop Continue]
                goto J0x257;
            }
        }        
    }
    else
    {
        if(((A.IsA('Polyobj') || A.IsA('Mover')) || A.IsA('ParticleSystem')) || A.IsA('Trigger') && int(Trigger(A).TriggerType) == int(5))
        {
            Local_bool_v0 = A.JointDamaged(Local_int_v0, Pawn(Owner), Parm_Vector_0, Momentum, DamageType, 0);            
        }
        else
        {
            Local_bool_v0 = false;
        }
    }
    return Local_bool_v0;
    return;
}

function SpawnHitEffect(Vector Parm_Vector_0, Vector Parm_Vector_1, int LowMask, int HighMask, Actor Parm_Actor_0)
{
    return;
}

function PlaySwipeSound()
{
    if((((Owner != none) && Owner.IsA('PlayerPawn')) && PlayerPawn(Owner).bBloodLust) && NumThroughAirBerserkSounds > 0)
    {
        PlaySound(ThroughAirBerserk[Rand(NumThroughAirBerserkSounds)], 0,,,, 1.0000000 + (((FRand() - 0.5000000) * 2.0000000) * PitchDeviation));        
    }
    else
    {
        PlaySound(ThroughAir[Rand(NumThroughAirSounds)], 0,,,, 1.0000000 + (((FRand() - 0.5000000) * 2.0000000) * PitchDeviation));
    }
    return;
}

function StartDamageCheck()
{
    return;
}

simulated function debug(Canvas Canvas, int Parm_int_0)
{
    local Vector Local_Vector_v0, Local_Vector_v1;

    super(Actor).debug(Canvas, Parm_int_0);
    Canvas.DrawText("MeleeWeapon:");
    Canvas.CurY -= float(8);
    Canvas.DrawText("  bRenderedLastFrame: " $ string(bRenderedLastFrame));
    Canvas.CurY -= float(8);
    Canvas.DrawText("  ExpireTime: " $ string(ExpireTime));
    Canvas.CurY -= float(8);
    Canvas.DrawText("LastThrower: " $ string(LastThrower));
    Canvas.CurY -= float(8);
    Canvas.DrawLine3D(gB1, gE1, 155.0000000, 155.0000000, 0.0000000);
    Canvas.DrawLine3D(gB2, gE2, 255.0000000, 255.0000000, 0.0000000);
    return;
}

auto state Pickup
{
    function BeginState()
    {
        bSweepable = false;
        BecomePickup();
        bCollideWorld = true;
        if(bTossedOut && bExpireWhenTossed)
        {
            LifeSpan = ExpireTime;
        }
        return;
    }

    function EndState()
    {
        bSweepable = default.bSweepable;
        BecomeItem();
        bCollideWorld = false;
        LifeSpan = 0.0000000;
        if(StabbedActor != none)
        {
            StabbedActor.PlayStabRemove();
            StabbedActor = none;
        }
        return;
    }

    function Touch(Actor P0)
    {
        local Inventory Local_Inventory_v0;

        if(P0.IsA('Pawn'))
        {
            if((Pawn(P0).Health > 0) && Pawn(P0).CanPickup(self))
            {
                if(Level.Game.LocalLog != none)
                {
                    Level.Game.LocalLog.LogPickup(self, Pawn(P0));
                }
                if(Level.Game.WorldLog != none)
                {
                    Level.Game.WorldLog.LogPickup(self, Pawn(P0));
                }
                Local_Inventory_v0 = SpawnCopy(Pawn(P0));
                if(PickupMessageClass == none)
                {
                    Pawn(P0).ClientMessage(PickupMessage, 'Pickup');                    
                }
                else
                {
                    Pawn(P0).ReceiveLocalizedMessage(PickupMessageClass, 0, none, none, self.Class);
                }
                Local_Inventory_v0.PlaySound(PickupSound);
                if(int(Level.Game.Difficulty) > 1)
                {
                    P0.MakeNoise(0.1000000 * float(Level.Game.Difficulty));
                }
                Pawn(P0).AcquireInventory(Local_Inventory_v0);
                if(!Pawn(P0).IsInState('PlayerSwimming'))
                {
                    Local_Inventory_v0.GotoState('Active');
                }
            }
        }
        return;
    }
Begin:

    AmbientGlow = 0;
    SkelMesh = default.SkelMesh;
    if(int(Role) == int(ROLE_Authority))
    {
        bSimFall = false;
    }
    stop;        
}

state Active
{
    function BeginState()
    {
        SetPhysics(0);
        return;
    }

    function EndState()
    {
        return;
    }

    function StartAttack()
    {
        lastpos1 = GetJointPos(SweepJoint1);
        lastpos2 = GetJointPos(SweepJoint2);
        ClearSwipeArray();
        GotoState('Swinging');
        return;
    }
Begin:

    stop;            
}

state Stow
{
    function BeginState()
    {
        bSweepable = false;
        if(bPoweredUp)
        {
            PowerupEnd();
        }
        PlaySound(SheathSound, 6,,,, 1.0000000 + ((FRand() * 0.2000000) - 0.1000000));
        SkelMesh = StowMesh;
        JointFlags[1] = byte(int(JointFlags[1]) & ~16);
        return;
    }

    function EndState()
    {
        bSweepable = default.bSweepable;
        if(!Region.Zone.bWaterZone)
        {
            PlaySound(UnsheathSound, 6,,,, 1.0000000 + ((FRand() * 0.2000000) - 0.1000000));
        }
        SkelMesh = default.SkelMesh;
        JointFlags[1] = byte(int(JointFlags[1]) | 16);
        return;
    }
Begin:

    stop;            
}

state Throw
{
    function BeginState()
    {
        local int i;
        local Rotator Local_Rotator_v0;

        bSimFall = true;
        if(bPoweredUp)
        {
            PowerupEnd();
        }
        ClearSwipeArray();
        SetPhysics(2);
        SetCollision(true, false, false);
        bCollideWorld = true;
        bBounce = true;
        bFixedRotationDir = true;
        bLookFocusPlayer = true;
        bRotateToDesired = false;
        if(Owner != none)
        {
            Local_Rotator_v0.Yaw = (Owner.Rotation.Yaw - 16384) + 32768;
            LastThrower = Owner;
        }
        Local_Rotator_v0.Pitch = 32768;
        Local_Rotator_v0.Roll = 0;
        SetRotation(Local_Rotator_v0);
        RotationRate.Pitch = 0;
        RotationRate.Yaw = 0;
        DesiredRotation.Roll = -32768;
        RotationRate.Roll = int((VSize(Velocity) * float(2000)) / Mass);
        PlayThrowFrame();
        AmbientSound = ThrownSoundLOOP;
        bPlayedDropSound = false;
        HitMatterSoundCount = 0;
        return;
    }

    function ZoneChange(ZoneInfo Parm_ZoneInfo_0)
    {
        global.ZoneChange(Parm_ZoneInfo_0);
        if(Parm_ZoneInfo_0.bWaterZone)
        {
            GotoState('Drop');
        }
        return;
    }

    function EndState()
    {
        bBounce = false;
        SetCollision(false, false, false);
        bCollideWorld = false;
        bBounce = false;
        bFixedRotationDir = false;
        SetOwner(none);
        DisableSwipeTrail();
        AmbientSound = none;
        PlayNormalFrame();
        return;
    }

    function bool CanBeUsed(Actor P0)
    {
        return false;
        return;
    }

    function Landed(Vector Parm_Vector_0, Actor Parm_Actor_0)
    {
        HitWall(Parm_Vector_0, Parm_Actor_0);
        return;
    }

    function HitWall(Vector Parm_Vector_0, Actor HitWall)
    {
        local float speed;
        local int Local_int_v0;
        local Object.EMatterType Local_Object.EMatterType_v0;
        local bool Local_bool_v0;

        AmbientSound = none;
        if((int(Role) == int(ROLE_Authority)) && (Mover(HitWall) != none) || Polyobj(HitWall) != none)
        {
            Local_bool_v0 = true;
            if(SwipeArrayCheck(HitWall, 0, 0))
            {
                Local_int_v0 = CalculateDamage(HitWall);
                if(Local_int_v0 != 0)
                {
                    HitWall.JointDamaged(Local_int_v0, Instigator, Location, Velocity * 0.5000000, ThrownDamageType, 0);
                }
            }
        }
        speed = VSize(Velocity);
        if(Parm_Vector_0.Z > 0.8000000)
        {
            if(!bPlayedDropSound && !Region.Zone.bWaterZone)
            {
                bPlayedDropSound = true;
                PlaySound(DropSound, 3);
                if(Instigator != none)
                {
                    MakeNoise(1.0000000);
                }
            }            
        }
        else
        {
            if(speed > float(300))
            {
                if(HitMatterSoundCount < 3)
                {
                    HitMatterSoundCount++;
                    Local_Object.EMatterType_v0 = MatterTrace(Location - (Parm_Vector_0 * float(30)), Location, 20.0000000);
                    PlayHitMatterSound(Local_Object.EMatterType_v0);
                }
                if(!Local_bool_v0 && StickInWall(Local_Object.EMatterType_v0))
                {
                    bBounce = false;
                    bFixedRotationDir = false;
                    SetPhysics(0);
                    GotoState('Pickup');
                    SetOwner(none);
                    if((int(Role) == int(ROLE_Authority)) && (Mover(HitWall) != none) || Polyobj(HitWall) != none)
                    {
                        SetBase(HitWall);
                    }
                    return;
                }
            }
        }
        if(AnimSequence != 'skewer')
        {
            GotoState('Settling');
        }
        return;
        return;
    }

    function Touch(Actor P0)
    {
        local int Local_int_v0;
        local Vector Parm_Vector_0;
        local int Local_int_v0, LowMask, HighMask;
        local Actor Parm_Actor_0;
        local PlayerPawn LocalP0;
        local Vector Local_Vector_v1;
        local float Local_float_v0;

        if(P0 == Owner)
        {
            return;
        }
        if(Owner == none)
        {
            return;
        }
        if((P0.IsA('Inventory') && P0.GetStateName() == 'Pickup') && !P0.IsA('Lizard'))
        {
            return;
        }
        AmbientSound = none;
        Parm_Actor_0 = P0;
        if(false)
        {
            if(P0.IsA('PlayerPawn') && P0.AnimProxy != none)
            {
                LocalP0 = PlayerPawn(P0);
                Local_Vector_v1 = Normal((self.Location - P0.Location) * vect(1.0000000, 1.0000000, 0.0000000));
                Local_float_v0 = Vector(LocalP0.Rotation) Dot Local_Vector_v1;
                if(Local_float_v0 > float(0))
                {
                    if((LocalP0.Shield != none) && LocalP0.AnimProxy.GetStateName() == 'Defending')
                    {
                        Parm_Actor_0 = LocalP0.Shield;                        
                    }
                    else
                    {
                        if((LocalP0.Weapon != none) && LocalP0.AnimProxy.GetStateName() == 'Attacking')
                        {
                            Parm_Actor_0 = LocalP0.Weapon;
                        }
                    }
                }
            }
        }
        if((Pawn(Parm_Actor_0) != none) && Parm_Actor_0.Skeletal != none)
        {
            Local_int_v0 = Parm_Actor_0.ClosestJointTo(Location);
            Parm_Vector_0 = Parm_Actor_0.GetJointPos(Local_int_v0);            
        }
        else
        {
            Local_int_v0 = 0;
            Parm_Vector_0 = Parm_Actor_0.Location;
        }
        if(SwipeArrayCheck(Parm_Actor_0, 0, 0))
        {
            Local_int_v0 = CalculateDamage(Parm_Actor_0);
            if(Local_int_v0 != 0)
            {
                if(Parm_Actor_0.JointDamaged(Local_int_v0, Pawn(Owner), Parm_Vector_0, Velocity * Mass, ThrownDamageType, Local_int_v0))
                {
                }
                SpawnHitEffect(Parm_Vector_0, Normal(Location - Parm_Actor_0.Location), 0, 0, Parm_Actor_0);
                SetPhysics(2);
                RotationRate.Yaw = int((VSize(Velocity) * float(2000)) / Mass);
                RotationRate.Pitch = int((VSize(Velocity) * float(2000)) / Mass);
                Velocity = -0.1000000 * Velocity;
            }
        }
        return;
    }
Begin:

    stop;            
}

state Drop
{
    function BeginState()
    {
        if(bPoweredUp)
        {
            PowerupEnd();
        }
        SetPhysics(2);
        SetCollision(true, false, false);
        SetOwner(none);
        bCollideWorld = true;
        bBounce = true;
        bFixedRotationDir = true;
        DesiredRotation.Yaw = (Rotation.Yaw + Rand(2000)) - 1000;
        RotationRate.Yaw = int(float(60000) / Mass);
        DesiredRotation.Pitch = (Rotation.Pitch + Rand(2000)) - 1000;
        RotationRate.Pitch = int(float(60000) / Mass);
        bPlayedDropSound = false;
        HitMatterSoundCount = 0;
        DisableSwipeTrail();
        return;
    }

    function EndState()
    {
        bBounce = false;
        SetCollision(false, false, false);
        bCollideWorld = false;
        bBounce = false;
        bFixedRotationDir = false;
        return;
    }

    function Landed(Vector Parm_Vector_0, Actor Parm_Actor_0)
    {
        HitWall(Parm_Vector_0, Parm_Actor_0);
        return;
    }

    function HitWall(Vector Parm_Vector_0, Actor HitWall)
    {
        local float speed;

        speed = VSize(Velocity);
        if(!bPlayedDropSound && !Region.Zone.bWaterZone)
        {
            bPlayedDropSound = true;
            PlaySound(DropSound, 3);
            if(Instigator != none)
            {
                MakeNoise(1.0000000);
            }
        }
        if(AnimSequence != 'skewer')
        {
            GotoState('Settling');
        }
        return;
        return;
    }

    function Touch(Actor P0)
    {
        local Inventory Local_Inventory_v0;

        if(P0.IsA('Pawn'))
        {
            if((Pawn(P0).Health > 0) && Pawn(P0).CanPickup(self))
            {
                if(Level.Game.LocalLog != none)
                {
                    Level.Game.LocalLog.LogPickup(self, Pawn(P0));
                }
                if(Level.Game.WorldLog != none)
                {
                    Level.Game.WorldLog.LogPickup(self, Pawn(P0));
                }
                Local_Inventory_v0 = SpawnCopy(Pawn(P0));
                if(PickupMessageClass == none)
                {
                    Pawn(P0).ClientMessage(PickupMessage, 'Pickup');                    
                }
                else
                {
                    Pawn(P0).ReceiveLocalizedMessage(PickupMessageClass, 0, none, none, self.Class);
                }
                Local_Inventory_v0.PlaySound(PickupSound);
                if(int(Level.Game.Difficulty) > 1)
                {
                    P0.MakeNoise(0.1000000 * float(Level.Game.Difficulty));
                }
                Pawn(P0).AcquireInventory(Local_Inventory_v0);
                if(!Pawn(P0).IsInState('PlayerSwimming'))
                {
                    Local_Inventory_v0.GotoState('Active');
                }
            }
        }
        return;
    }
Begin:

    stop;            
}

state Settling
{
    function BeginState()
    {
        SetCollision(true, false, false);
        bCollideWorld = true;
        SetOwner(none);
        bFixedRotationDir = false;
        bRotateToDesired = true;
        if(FRand() < 0.5000000)
        {
            DesiredRotation.Pitch = 49152;            
        }
        else
        {
            DesiredRotation.Pitch = 16384;
        }
        DesiredRotation.Yaw = Rotation.Yaw;
        DesiredRotation.Roll = int(float(16384) + (FRand() * float(32768)));
        RotationRate.Pitch = 40000;
        RotationRate.Yaw = 0;
        RotationRate.Roll = 40000;
        SetPhysics(2);
        bBounce = true;
        return;
    }

    function EndState()
    {
        SetCollision(false, false, false);
        bCollideWorld = false;
        bBounce = false;
        bFixedRotationDir = false;
        return;
    }

    function Landed(Vector Parm_Vector_0, Actor Parm_Actor_0)
    {
        HitWall(Parm_Vector_0, Parm_Actor_0);
        return;
    }

    function bool CanBeUsed(Actor P0)
    {
        if(P0.IsA('PlayerPawn') && P0.AnimProxy != none)
        {
            if(P0.AnimProxy.WantsToPickUp(self))
            {
                return true;
            }
        }
        return false;
        return;
    }

    function HitWall(Vector Parm_Vector_0, Actor HitWall)
    {
        local float speed;
        local Object.EMatterType Local_Object.EMatterType_v0;

        speed = VSize(Velocity);
        if(Parm_Vector_0.Z > 0.8000000)
        {
            if(!bPlayedDropSound && !Region.Zone.bWaterZone)
            {
                bPlayedDropSound = true;
                PlaySound(DropSound, 3);
                if(Instigator != none)
                {
                    MakeNoise(1.0000000);
                }
            }            
        }
        else
        {
            if(speed > float(300))
            {
                if(HitMatterSoundCount < 3)
                {
                    HitMatterSoundCount++;
                    Local_Object.EMatterType_v0 = MatterTrace(Location - (Parm_Vector_0 * float(30)), Location, 20.0000000);
                    PlayHitMatterSound(Local_Object.EMatterType_v0);
                }
            }
        }
        if((Parm_Vector_0.Z > 0.8000000) && speed < float(60))
        {
            if((float(DesiredRotation.Roll) ~= float(Rotation.Roll)) && float(DesiredRotation.Pitch) ~= float(Rotation.Pitch))
            {
                SetPhysics(0);
                bBounce = false;
                bFixedRotationDir = false;
                GotoState('Pickup');                
            }
            else
            {
                SetPhysics(2);
                Velocity.Z = 60.0000000;
            }            
        }
        else
        {
            SetPhysics(2);
            Velocity = 0.5500000 * (Velocity - ((float(2) * Parm_Vector_0) * (Velocity Dot Parm_Vector_0)));
        }
        return;
    }

    function Touch(Actor P0)
    {
        local Inventory Local_Inventory_v0;

        if(P0.IsA('Pawn'))
        {
            if((Pawn(P0).Health > 0) && Pawn(P0).CanPickup(self))
            {
                if(Level.Game.LocalLog != none)
                {
                    Level.Game.LocalLog.LogPickup(self, Pawn(P0));
                }
                if(Level.Game.WorldLog != none)
                {
                    Level.Game.WorldLog.LogPickup(self, Pawn(P0));
                }
                Local_Inventory_v0 = SpawnCopy(Pawn(P0));
                if(PickupMessageClass == none)
                {
                    Pawn(P0).ClientMessage(PickupMessage, 'Pickup');                    
                }
                else
                {
                    Pawn(P0).ReceiveLocalizedMessage(PickupMessageClass, 0, none, none, self.Class);
                }
                Local_Inventory_v0.PlaySound(PickupSound);
                if(int(Level.Game.Difficulty) > 1)
                {
                    P0.MakeNoise(0.1000000 * float(Level.Game.Difficulty));
                }
                Pawn(P0).AcquireInventory(Local_Inventory_v0);
                if(!Pawn(P0).IsInState('PlayerSwimming'))
                {
                    Local_Inventory_v0.GotoState('Active');
                }
            }
        }
        return;
    }
    stop;
}

state Swinging
{
    function BeginState()
    {
        PlaySwipeSound();
        FrameOfAttackAnim = 0;
        return;
    }

    function FrameNotify(int Parm_int_0)
    {
        local Vector Local_Vector_v2, Local_Vector_v3, Local_Vector_v2;

        Local_Vector_v2 = GetJointPos(SweepJoint1);
        Local_Vector_v3 = GetJointPos(SweepJoint2);
        Local_Vector_v2 = SweepVector * (VSize(Local_Vector_v3 - Local_Vector_v2) + ExtendedLength);
        FrameSweep(Parm_int_0, Local_Vector_v2, lastpos1, lastpos2);
        return;
    }

    simulated event FrameSwept(Vector Parm_Vector_0, Vector Parm_Vector_1, Vector Parm_Vector_2, Vector Parm_Vector_3)
    {
        local int LowMask, HighMask;
        local Vector Parm_Vector_0, Parm_Vector_1, Local_Vector_v2, Local_Vector_v3, Momentum;

        local Actor A;

        if(swipe != none)
        {
            swipe.CreateSwipeParticle(0.0000000, Parm_Vector_0, Parm_Vector_1, Parm_Vector_2, Parm_Vector_3);
        }
        Momentum = (Parm_Vector_3 - Parm_Vector_1) * Mass;
        foreach DynamicActors(Class'Engine.Actor', A, Parm_Vector_0, Parm_Vector_1, Parm_Vector_2, Parm_Vector_3, WeaponSweepExtent, Parm_Vector_0, Parm_Vector_1, LowMask, HighMask)
        {
            if(SwipeArrayCheck(A, LowMask, HighMask))
            {
                if(!DoWeaponSwipe(A, LowMask, HighMask, Parm_Vector_0, Parm_Vector_1, Momentum))
                {
                }
                SpawnHitEffect(Parm_Vector_0, Parm_Vector_1, LowMask, HighMask, A);
            }            
        }        
        gB1 = Parm_Vector_0;
        gE1 = Parm_Vector_1;
        gB2 = Parm_Vector_2;
        gE2 = Parm_Vector_3;
        return;
    }

    function StartAttack()
    {
        return;
    }

    function ClearSwipeArray()
    {
        global.ClearSwipeArray();
        return;
    }

    function FinishAttack()
    {
        Disable('Tick');
        GotoState('Active');
        return;
    }
Begin:

    Enable('Tick');
    stop;                
}
