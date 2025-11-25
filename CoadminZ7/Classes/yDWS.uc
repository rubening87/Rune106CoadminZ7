class yDWS extends ySword;

function PreBeginPlay()
{
    super(Actor).PreBeginPlay();
    return;
}

function PowerupInit()
{
    DesiredColorAdjust.Y = 255.0000000;
    DesiredColorAdjust.Z = 255.0000000;
    SpawnPowerupEffect();
    SwipeClass = PoweredUpSwipeClass;
    return;
}

function PowerupEndingPulseOn()
{
    PlaySound(PoweredUpEndingSound, 0);
    return;
}

function PowerupEndingPulseOff()
{
    return;
}

function PowerupEnded()
{
    DesiredColorAdjust.Y = 0.0000000;
    DesiredColorAdjust.Z = 0.0000000;
    super(yWeapon).PowerupEnded();
    return;
}

simulated function SpawnPowerupEffect()
{
    local EffectSkeleton Local_EffectSkeleton_v0;

    Local_EffectSkeleton_v0 = Spawn(Class'RuneI.EffectSkelLightningSword', self);
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
    local LightningPowerupBall B;
    local Vector X, Y, Z;

    if(!bPoweredUp || Parm_int_0 != 0)
    {
        return;
    }
    GetAxes(PlayerPawn(Owner).ViewRotation, X, Y, Z);
    B = Spawn(Class'RuneI.LightningPowerupBall', Owner,, Location + (X * float(15)));
    B.Velocity = (X * float(20)) + (Z * float(35));
    return;
}

defaultproperties
{
    StowMesh=1
    Damage=25
    BloodTexture=Texture'weapons.workswordDwarf_work_swordblood'
    rating=3
    SweepJoint2=6
    RunePowerRequired=75
    RunePowerDuration=10.0000000
    PowerupMessage="Lightning!"
    ThroughAir=Sound'WeaponsSnd.Swings.swing19'
    ThroughAirBerserk=Sound'WeaponsSnd.Swings.bswing04'
    HitFlesh=Sound'WeaponsSnd.ImpFlesh.impfleshsword06'
    HitWood=Sound'WeaponsSnd.ImpWood.impactwood08'
    HitStone=Sound'WeaponsSnd.ImpStone.impactstone15'
    HitMetal=Sound'WeaponsSnd.ImpMetal.impactmetal16'
    HitDirt=Sound'WeaponsSnd.ImpEarth.impactearth05'
    HitShield=Sound'WeaponsSnd.Shields.shield04'
    HitWeapon=Sound'WeaponsSnd.Swords.sword04'
    HitBreakableWood=Sound'WeaponsSnd.ImpWood.impactwood12'
    HitBreakableStone=Sound'WeaponsSnd.ImpStone.impactstone13'
    SheathSound=Sound'WeaponsSnd.Stows.xstow04'
    UnsheathSound=Sound'WeaponsSnd.Stows.xunstow04'
    ThrownSoundLOOP=Sound'WeaponsSnd.Throws.throw03L'
    PowerUpSound=Sound'WeaponsSnd.PowerUps.powerstart42'
    PoweredUpSoundLOOP=Sound'WeaponsSnd.PowerUps.power68L'
    PitchDeviation=0.0850000
    PowerupIcon=Texture'RuneFX2.wsword'
    PowerupIconAnim=Texture'RuneFX2.wsword1a'
    PoweredUpSwipeClass=Class'RuneI.WeaponSwipeBlue'
    A_Idle="S4_idle"
    A_Forward="S4_walk"
    A_Backward="S4_backup"
    A_Forward45Right="S4_walk45right"
    A_Forward45Left="S4_walk45left"
    A_Backward45Right="S4_backup45Right"
    A_Backward45Left="S4_backup45Left"
    A_StrafeRight="S4_strafeRight"
    A_StrafeLeft="S4_strafeLeft"
    A_AttackA="S4_attackA"
    A_AttackAReturn="s4_attackareturn"
    A_AttackB="S4_attackB"
    A_AttackC="S4_attackC"
    A_AttackCReturn="S4_attackCReturn"
    A_AttackStandA="S4_standingAttackA"
    A_AttackStandAReturn="S4_standingAttackAreturn"
    A_AttackStandB="S4_standingAttackB"
    A_AttackStandBReturn="S4_standingAttackBreturn"
    A_AttackBackupAReturn="S4_backupAttackAreturn"
    A_AttackStrafeRight="S4_StrafeRightAttack"
    A_AttackStrafeLeft="S4_StrafeLeftAttack"
    A_Throw="S4_throw"
    A_Powerup="S4_Powerup"
    A_Defend="None"
    A_DefendIdle="None"
    A_PainFront="S4_painFront"
    A_PainBack="S4_painBack"
    A_PainLeft="S4_painLeft"
    A_PainRight="S4_painRight"
    A_PickupGroundLeft="S4_pickupleft"
    A_PickupHighLeft="S4_pickuplefthigh"
    A_Taunt="s4_taunt"
    A_PumpTrigger="S4_pumptrigger"
    A_LeverTrigger="S4_LeverTrigger"
    PickupMessage="You now wield with a Dwarven Work Sword"
    PickupSound=Sound'OtherSnd.Pickups.grab04'
    DropSound=Sound'WeaponsSnd.Drops.sworddrop02'
    Mass=16.0000000
    Skeletal=SkelModel'weapons.worksword'
    SkelGroupSkins(0)=Texture'weapons.workswordDwarf_work_sword'
    SkelGroupSkins(1)=Texture'weapons.workswordDwarf_work_sword'
}