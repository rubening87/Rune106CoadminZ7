class CoopDwarfBattleSword extends sword;

var float FLT_v1940;
var int INT_v1939;
var() float eqq_vxv_1992;
var float ElapsedTime;
var bool B_v3835;
var int INT_v3836;

function PowerupInit()
{
    SpawnPowerupEffect();
    SwipeClass = PoweredUpSwipeClass;
    DesiredColorAdjust.X = 44.0000000;
    DesiredColorAdjust.Y = 33.0000000;
    DesiredColorAdjust.Z = 15.0000000;
    return;
}

function PowerupEndingPulseOn()
{
    PlaySound(PoweredUpEndingSound, 0);
    DesiredFatness = 140;
    DesiredColorAdjust.X = 200.0000000;
    DesiredColorAdjust.Y = 0.0000000;
    DesiredColorAdjust.Z = 0.0000000;
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
    super(Weapon).PowerupEnded();
    DesiredColorAdjust.X = 0.0000000;
    DesiredColorAdjust.Y = 0.0000000;
    DesiredColorAdjust.Z = 0.0000000;
    B_v3835 = false;
    return;
}

simulated function SpawnPowerupEffect()
{
    local EffectSkeleton Local_EffectSkeleton_v0;

    Local_EffectSkeleton_v0 = Spawn(Class'RuneI.EffectSkelAvalancheSword', self);
    if(Local_EffectSkeleton_v0 != none)
    {
        AttachActorToJoint(Local_EffectSkeleton_v0, 0);
    }
    return;
}

simulated function RemovePowerupEffect()
{
    local Actor A;

    A = DetachActorFromJoint(0);
    A.Destroy();
    return;
}

function WeaponFire(int Parm_int_0)
{
    if(bPoweredUp)
    {
        B_v3835 = true;
        ElapsedTime = eqq_vxv_1992;
        INT_v1939 = default.INT_v1939;
    }
    return;
}

function Tick(float Parm_float_0)
{
    local CoopRockAvalanche R;
    local Vector Local_Vector_v0, Local_Vector_v0;
    local int Local_int_v0;

    if(bPoweredUp && B_v3835)
    {
        ElapsedTime += Parm_float_0;
        if(ElapsedTime > eqq_vxv_1992)
        {
            ElapsedTime -= eqq_vxv_1992;
            Local_int_v0 = int(RandRange(float(Owner.Rotation.Yaw - 4096), float(Owner.Rotation.Yaw + 4096)));
            Local_Vector_v0 = Vector(rot(0, 1, 0) * float(Local_int_v0));
            Local_Vector_v0 = Owner.Location + (Local_Vector_v0 * RandRange(0.0000000, 50.0000000));
            Local_Vector_v0.Z += ((float(3) * Owner.CollisionRadius) + (FRand() * Owner.CollisionRadius));
            switch(Rand(3))
            {
                case 0:
                    R = Spawn(Class'coadminz7.CoopRockAvalancheSmall', Owner,, Local_Vector_v0);
                    break;
                case 1:
                    R = Spawn(Class'coadminz7.CoopRockAvalancheMed', Owner,, Local_Vector_v0);
                    break;
                case 2:
                    R = Spawn(Class'coadminz7.CoopRockAvalancheLarge', Owner,, Local_Vector_v0);
                    break;
                default:
                    break;
            }
            R.Velocity = Local_Vector_v0 * float(500);
            R.Instigator = Pawn(Owner);
            if(--INT_v1939 <= 0)
            {
                INT_v1939 = default.INT_v1939;
                B_v3835 = false;
            }
        }
    }
    return;
}

defaultproperties
{
    FLT_v1940=150.0000000
    INT_v1939=15
    eqq_vxv_1992=0.1000000
    StowMesh=1
    Damage=40
    rating=4
    RunePowerRequired=100
    RunePowerDuration=5.0000000
    PowerupMessage="Avalanche!"
    ThroughAir=Sound'WeaponsSnd.Swings.swing02'
    ThroughAirBerserk=Sound'WeaponsSnd.Swings.bswing05'
    HitFlesh=Sound'WeaponsSnd.ImpFlesh.impfleshsword10'
    HitWood=Sound'WeaponsSnd.ImpWood.impactwood09'
    HitStone=Sound'WeaponsSnd.ImpStone.impactstone04'
    HitMetal=Sound'WeaponsSnd.ImpMetal.impactmetal12'
    HitDirt=Sound'WeaponsSnd.ImpEarth.impactearth05'
    HitShield=Sound'WeaponsSnd.Shields.shield05'
    HitWeapon=Sound'WeaponsSnd.Swords.sword05'
    HitBreakableWood=Sound'WeaponsSnd.ImpWood.impactwood12'
    HitBreakableStone=Sound'WeaponsSnd.ImpStone.impactstone13'
    SheathSound=Sound'WeaponsSnd.Stows.xstow04'
    UnsheathSound=Sound'WeaponsSnd.Stows.xunstow04'
    ThrownSoundLOOP=Sound'WeaponsSnd.Throws.throw03L'
    PowerUpSound=Sound'WeaponsSnd.PowerUps.powerstart29'
    PoweredUpSoundLOOP=Sound'WeaponsSnd.PowerUps.power63L'
    PowerupIcon=Texture'RuneFX2.dsword'
    PowerupIconAnim=Texture'RuneFX2.dsword1a'
    PoweredUpSwipeClass=Class'RuneI.WeaponSwipeGray'
    A_Idle="S5_idle"
    A_Forward="S4_walk"
    A_Backward="S4_backup"
    A_Forward45Right="S4_walk45right"
    A_Forward45Left="S4_walk45left"
    A_Backward45Right="S4_backup45Right"
    A_Backward45Left="S4_backup45Left"
    A_StrafeRight="S4_strafeRight"
    A_StrafeLeft="S4_strafeLeft"
    A_AttackA="S5_attackA"
    A_AttackAReturn="S5_attackAreturn"
    A_AttackB="S5_attackB"
    A_AttackBReturn="S5_attackBreturn"
    A_AttackC="None"
    A_AttackCReturn="None"
    A_AttackStandA="S5_StandingAttackA"
    A_AttackStandAReturn="S5_StandingAttackAreturn"
    A_AttackStandB="S5_StandingAttackB"
    A_AttackStandBReturn="S5_StandingAttackBreturn"
    A_AttackBackupA="S5_Backupattack"
    A_AttackBackupAReturn="None"
    A_AttackStrafeRight="S4_StrafeRightAttack"
    A_AttackStrafeLeft="S4_StrafeLeftAttack"
    A_Throw="S5_Throw"
    A_Powerup="S5_Powerup"
    A_Defend="None"
    A_DefendIdle="None"
    A_PainFront="S5_painFront"
    A_PainBack="S5_painBack"
    A_PainLeft="S5_painLeft"
    A_PainRight="S5_painRight"
    A_PickupGroundLeft="S5_PickupLeft"
    A_PickupHighLeft="S5_PickupLeftHigh"
    A_Taunt="s5_taunt"
    A_PumpTrigger="S5_PumpTrigger"
    A_LeverTrigger="S5_LeverTrigger"
    PickupMessage="You have claimed a Dwarven Battle Sword"
    PickupSound=Sound'OtherSnd.Pickups.grab05'
    DropSound=Sound'WeaponsSnd.Drops.sworddrop01'
    Mass=18.0000000
    Skeletal=SkelModel'weapons.battlesword'
    SkelGroupSkins(0)=Texture'weapons.battleswordsword'
    SkelGroupSkins(1)=Texture'weapons.battleswordChrome'
    SkelGroupSkins(2)=Texture'weapons.battleswordsword'
}