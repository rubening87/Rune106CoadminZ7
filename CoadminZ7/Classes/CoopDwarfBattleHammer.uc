class CoopDwarfBattleHammer extends Hammer;

var bool B_v3833;

function PowerupInit()
{
    SpawnPowerupEffect();
    SwipeClass = PoweredUpSwipeClass;
    DamageType = 'Stone';
    ThrownDamageType = 'Stone';
    if(SkelGroupSkins[1] == BloodTexture)
    {
        B_v3833 = true;
    }
    BloodTexture = none;
    SkelGroupSkins[0] = Texture'weapons.battlehammerBhammerstone';
    SkelGroupSkins[1] = Texture'weapons.battlehammerBhammerstone';
    bUnlit = true;
    return;
}

function PowerupEndingPulseOn()
{
    DesiredFatness = 140;
    DesiredColorAdjust.Z = 0.0000000;
    PlaySound(PoweredUpEndingSound, 0);
    return;
}

function PowerupEndingPulseOff()
{
    DesiredFatness = 128;
    DesiredColorAdjust.Z = 150.0000000;
    return;
}

function PowerupEnded()
{
    local int i;
    local Debris Local_Debris_v0;

    super(Weapon).PowerupEnded();
    DesiredColorAdjust.Z = 0.0000000;
    DamageType = default.DamageType;
    ThrownDamageType = default.ThrownDamageType;
    BloodTexture = default.BloodTexture;
    SkelGroupSkins[0] = default.SkelGroupSkins[0];
    if(B_v3833)
    {
        SkelGroupSkins[1] = BloodTexture;        
    }
    else
    {
        SkelGroupSkins[1] = default.SkelGroupSkins[1];
    }
    bUnlit = false;
    i = 0;
    J0x7D:

    if(i < 15)
    {
        Local_Debris_v0 = Spawn(Class'RuneI.DebrisStone',,, GetJointPos(Rand(4)));
        Local_Debris_v0.SetSize(0.2000000);
        Local_Debris_v0.bUnlit = true;
        i++;
        // [Loop Continue]
        goto J0x7D;
    }
    return;
}

simulated function SpawnPowerupEffect()
{
    local EffectSkeleton Local_EffectSkeleton_v0;

    Local_EffectSkeleton_v0 = Spawn(Class'RuneI.EffectSkelStoneHammer', self);
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

function int CalculateDamage(Actor Parm_Actor_0)
{
    if((bPoweredUp && Parm_Actor_0.IsA('Pawn')) && Pawn(Parm_Actor_0).CanBeStatued())
    {
        if(!Parm_Actor_0.IsA('PlayerPawn'))
        {
            Pawn(Parm_Actor_0).PowerupStone(Pawn(Owner));
            return 0;
        }
    }
    return super(Weapon).CalculateDamage(Parm_Actor_0);
    return;
}

defaultproperties
{
    bCrouchTwoHands=true
    StowMesh=1
    Damage=50
    BloodTexture=Texture'weapons.battlehammerBhammerblood'
    rating=4
    RunePowerRequired=75
    RunePowerDuration=15.0000000
    PowerupMessage="Stone!"
    SweepVector=(X=0.0000000,Y=0.8670000,Z=-0.5000000)
    ThroughAir=Sound'WeaponsSnd.Swings.swing03'
    ThroughAirBerserk=Sound'WeaponsSnd.Swings.bswing10'
    HitFlesh=Sound'WeaponsSnd.ImpFlesh.impfleshhammer01'
    HitWood=Sound'WeaponsSnd.ImpWood.impactwood07'
    HitStone=Sound'WeaponsSnd.ImpStone.impactstone13'
    HitMetal=Sound'WeaponsSnd.ImpMetal.impactmetal14'
    HitDirt=Sound'WeaponsSnd.ImpEarth.impactearth04'
    HitShield=Sound'WeaponsSnd.Shields.shield10'
    HitWeapon=Sound'WeaponsSnd.Swords.sword10'
    HitBreakableWood=Sound'WeaponsSnd.ImpWood.impactwood12'
    HitBreakableStone=Sound'WeaponsSnd.ImpStone.impactstone13'
    SheathSound=Sound'WeaponsSnd.Stows.xstow02'
    UnsheathSound=Sound'WeaponsSnd.Stows.xunstow02'
    ThrownSoundLOOP=Sound'WeaponsSnd.Throws.throw03L'
    PowerUpSound=Sound'WeaponsSnd.PowerUps.powerstart18'
    PoweredUpSoundLOOP=Sound'WeaponsSnd.PowerUps.power10L'
    PowerupIcon=Texture'RuneFX2.bhammer'
    PowerupIconAnim=Texture'RuneFX2.bhammer1a'
    PoweredUpSwipeClass=Class'RuneI.WeaponSwipeGray'
    A_Idle="H5_Idle"
    A_Forward="walkforwardTwohands"
    A_Backward="H5_Backup"
    A_Forward45Right="H5_Walk45Right"
    A_Forward45Left="H5_Walk45Left"
    A_Backward45Right="H5_BackupRight"
    A_Backward45Left="H5_BackupLeft"
    A_StrafeRight="H5_StrafeRight"
    A_StrafeLeft="H5_StrafeLeft"
    A_Jump="H5_Jump"
    A_AttackA="H5_attackA"
    A_AttackAReturn="H5_attackAreturn"
    A_AttackB="H5_attackB"
    A_AttackBReturn="H5_attackBreturn"
    A_AttackC="None"
    A_AttackCReturn="None"
    A_AttackStandA="H5_StandingattackA"
    A_AttackStandAReturn="H5_StandingattackAreturn"
    A_AttackStandB="H5_StandingattackB"
    A_AttackStandBReturn="H5_StandingattackBReturn"
    A_AttackBackupA="H5_Backupattack"
    A_AttackBackupAReturn="None"
    A_AttackStrafeRight="H5_StrafeRightAttack"
    A_AttackStrafeLeft="H5_StrafeLeftAttack"
    A_JumpAttack="H5_jumpattack"
    A_Throw="H5_Throw"
    A_Powerup="H5_Powerup"
    A_Defend="None"
    A_DefendIdle="None"
    A_PainFront="H5_painFront"
    A_PainBack="H5_painFront"
    A_PainLeft="H5_painFront"
    A_PainRight="H5_painFront"
    A_PickupGroundLeft="H5_PickupLeft"
    A_PickupHighLeft="H5_PickupLeftHigh"
    A_Taunt="H5_Taunt"
    A_PumpTrigger="H5_PumpTrigger"
    A_LeverTrigger="H5_LeverTrigger"
    PickupMessage="You now wield a Dwarven Battle Hammer"
    PickupSound=Sound'OtherSnd.Pickups.grab05'
    DropSound=Sound'WeaponsSnd.Drops.hammerdrop01'
    Mass=18.0000000
    Skeletal=SkelModel'weapons.battlehammer'
    SkelGroupSkins(0)=Texture'weapons.battlehammerBhammer'
    SkelGroupSkins(1)=Texture'weapons.battlehammerBhammer'
}