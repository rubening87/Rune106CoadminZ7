class ySword extends yWeapon
    abstract;

var Vector Local_int_v13;
var Vector VCT_v2839;

function SpawnHitEffect(Vector Parm_Vector_0, Vector Parm_Vector_1, int LowMask, int HighMask, Actor Parm_Actor_0)
{
    local int i, Local_int_v0;
    local Object.EMatterType Local_Object.EMatterType_v0;
    local Vector Local_Vector_v0, Local_Vector_v1;
    local float Local_float_v0;
    local Rotator Rot;

    if((Parm_Actor_0.Skeletal != none) && (LowMask != 0) || HighMask != 0)
    {
        Local_int_v0 = 0;
        J0x35:

        if(Local_int_v0 < Parm_Actor_0.NumJoints())
        {
            if(((Local_int_v0 < 32) && (LowMask & (1 << Local_int_v0)) != 0) || ((Local_int_v0 >= 32) && Local_int_v0 < 64) && (HighMask & (1 << (Local_int_v0 - 32))) != 0)
            {
                Local_Object.EMatterType_v0 = Parm_Actor_0.MatterForJoint(Local_int_v0);
                // [Explicit Break]
                goto J0xCC;
            }
            Local_int_v0++;
            // [Loop Continue]
            goto J0x35;
        }
        J0xCC:
        
    }
    else
    {
        if(Parm_Actor_0.IsA('LevelInfo'))
        {
            Local_Object.EMatterType_v0 = Parm_Actor_0.MatterTrace(Parm_Vector_0, Owner.Location, WeaponSweepExtent);
            if((Parm_Vector_1.Z > -0.1000000) && Parm_Vector_1.Z < 0.1000000)
            {
                Spawn(Class'RuneI.DecalSlash',,,, Rotator(Parm_Vector_1));
            }            
        }
        else
        {
            Local_Object.EMatterType_v0 = Parm_Actor_0.MatterForJoint(0);
        }
    }
    PlayHitMatterSound(Local_Object.EMatterType_v0);
    switch(Local_Object.EMatterType_v0)
    {
        case 4:
            if(Parm_Actor_0.IsA('Sark') || Parm_Actor_0.IsA('SarkRagnar'))
            {
                Spawn(Class'RuneI.SarkBloodMist',,, Parm_Vector_0, Rotator(Parm_Vector_1));                
            }
            else
            {
                Spawn(Class'RuneI.BloodMist',,, Parm_Vector_0, Rotator(Parm_Vector_1));
            }
            if(((BloodTexture != none) && !Region.Zone.bWaterZone) && !Class'Engine.GameInfo'.default.bVeryLowGore)
            {
                SkelGroupSkins[1] = BloodTexture;
            }
            break;
        case 1:
            Spawn(Class'RuneI.HitWood',,, Parm_Vector_0, Rotator(Parm_Vector_1));
            break;
        case 3:
            Spawn(Class'RuneI.HitStone',,, Parm_Vector_0, Rotator(Parm_Vector_1));
            break;
        case 2:
            Spawn(Class'RuneI.HitMetal',,, Parm_Vector_0, Rotator(Parm_Vector_1));
            break;
        case 7:
            Spawn(Class'RuneI.GroundDust',,, Parm_Vector_0, Rotator(Parm_Vector_1));
            break;
        case 9:
            break;
        case 10:
            break;
        case 12:
            Spawn(Class'RuneI.HitWeapon',,, Parm_Vector_0, Rotator(Parm_Vector_1));
            break;
        case 11:
            break;
        case 5:
            Spawn(Class'RuneI.HitIce',,, Parm_Vector_0, Rotator(Parm_Vector_1));
            break;
        case 6:
            break;
        case 8:
            break;
        default:
            break;
    }
    return;
}

function bool StickInWall(Object.EMatterType Local_Object.EMatterType_v0)
{
    local Rotator R;
    local Vector X, Y, Z;
    local float Local_float_v0;

    if((((((int(Local_Object.EMatterType_v0) != int(1)) && int(Local_Object.EMatterType_v0) != int(5)) && int(Local_Object.EMatterType_v0) != int(7)) && int(Local_Object.EMatterType_v0) != int(8)) && int(Local_Object.EMatterType_v0) != int(4)) && int(Local_Object.EMatterType_v0) != int(9))
    {
        return false;
    }
    R = Rotation;
    R.Roll = Clamp(R.Roll, 27000, 34000);
    GetAxes(R, X, Y, Z);
    Local_float_v0 = VSize(GetJointPos(SweepJoint2) - GetJointPos(SweepJoint1));
    Local_int_v13 = Location;
    VCT_v2839 = Location + (Y * Local_float_v0);
    if(!FastTrace(Location + (Y * Local_float_v0), Location))
    {
        SetRotation(R);
        return true;
    }
    return false;
    return;
}

simulated function debug(Canvas Canvas, int Parm_int_0)
{
    super.debug(Canvas, Parm_int_0);
    Canvas.DrawLine3D(Local_int_v13, VCT_v2839, 155.0000000, 155.0000000, 0.0000000);
    Canvas.DrawText("AttachParent: " @ string(AttachParent));
    Canvas.CurY -= float(8);
    return;
}

state Throw
{
    function int CalculateDamage(Actor Parm_Actor_0)
    {
        local int Parm_int_0;
        local Pawn LocalP0;
        local Vector X, Y, Z, Local_Vector_v0, Local_Vector_v1;

        local float Local_float_v0;

        Parm_int_0 = super(yWeapon).CalculateDamage(Parm_Actor_0);
        if(Parm_Actor_0.IsA('Pawn'))
        {
            LocalP0 = Pawn(Parm_Actor_0);
            if(LocalP0.CanStabActor() && Parm_int_0 >= LocalP0.Health)
            {
                GetAxes(LocalP0.Rotation, X, Y, Z);
                X.Z = 0.0000000;
                Local_Vector_v0 = Normal(Location - Parm_Actor_0.Location);
                Local_Vector_v1 = Local_Vector_v0;
                Local_Vector_v1.Z = 0.0000000;
                Local_float_v0 = Local_Vector_v1 Dot X;
                if(Local_float_v0 > 0.7000000)
                {
                    StabActor(LocalP0);
                    SetOwner(none);
                }
            }
        }
        return Parm_int_0;
        return;
    }
    stop;
}

defaultproperties
{
    bCanBePoweredUp=true
    DamageType="Sever"
    ThrownDamageType="thrownweaponsever"
    ThrownSoundLOOP=Sound'WeaponsSnd.Throws.throw02L'
    PowerUpSound=Sound'OtherSnd.Pickups.pickup01'
    PoweredUpEndingSound=Sound'WeaponsSnd.PowerUps.powerend21'
    PoweredUpEndSound=Sound'WeaponsSnd.PowerUps.powerend17'
    A_Idle="weapon1_idle"
    A_Forward="S1_Walk"
    A_Backward="weapon1_backup"
    A_Forward45Right="S1_Walk45Right"
    A_Forward45Left="S1_Walk45Left"
    A_Backward45Right="weapon1_backup45Right"
    A_Backward45Left="weapon1_backup45Left"
    A_StrafeRight="StrafeRight"
    A_StrafeLeft="StrafeLeft"
    A_Jump="MOV_ALL_jump1_AA0S"
    A_ForwardAttack="LegsTest"
    A_AttackA="S1_attackA"
    A_AttackAReturn="S1_attackAreturn"
    A_AttackB="S1_attackB"
    A_AttackC="S1_attackC"
    A_AttackCReturn="S1_attackCReturn"
    A_AttackStandA="S1_attackA"
    A_AttackStandAReturn="S1_attackAreturn"
    A_AttackStandB="S1_attackB"
    A_AttackStandBReturn="S1_attackBreturn"
    A_AttackBackupA="S1_BackupAttackA"
    A_AttackBackupAReturn="S1_BackupAttackAReturn"
    A_AttackStrafeRight="S1_StrafeRightAttack"
    A_AttackStrafeLeft="S1_StrafeLeftAttack"
    A_JumpAttack="OneHandJumpAttackB"
    A_Throw="S3_throw"
    A_Defend="H3_DefendTO"
    A_DefendIdle="H3_DefendIdle"
    A_PainFront="Onehand_painRight"
    A_PainBack="Onehand_painRight"
    A_PainLeft="Onehand_painLeft"
    A_PainRight="Onehand_painRight"
    A_PickupGroundLeft="H3_PickupLeft"
    A_PickupHighLeft="H3_PickupLeftHigh"
    A_Taunt="S3_taunt"
    RespawnTime=30.0000000
    RespawnSound=Sound'OtherSnd.Respawns.respawn01'
    PickupMessageClass=Class'RuneI.PickupMessage'
}