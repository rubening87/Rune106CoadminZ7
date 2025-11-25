class CoopRockAvalanche extends DecorationRune;

var(Sounds) Sound ImpactSound;

function Object.EMatterType MatterForJoint(int Parm_int_0)
{
    return 3;
    return;
}

function SpawnDebris()
{
    local DebrisCloud Local_DebrisCloud_v0;

    Local_DebrisCloud_v0 = Spawn(Class'RuneI.DebrisCloud');
    Local_DebrisCloud_v0.SetRadius(float(Max(int(CollisionRadius), int(CollisionHeight))));
    return;
}

auto state eqA_vxv_2061
{
    function BeginState()
    {
        SetPhysics(2);
        DesiredRotation.Yaw = (Rotation.Yaw + Rand(2000)) - 1000;
        RotationRate.Yaw = int(RandRange(-50000.0000000, 50000.0000000));
        RotationRate.Pitch = int(RandRange(-50000.0000000, 50000.0000000));
        SetTimer(5.0000000, false);
        return;
    }

    function eq_vxv_1022(Vector Parm_Vector_0, float speed)
    {
        local float Local_CTTorch_v1, Local_float_v0, Local_Vector_v0;
        local Sound Local_Sound_v0;

        Local_float_v0 = FClamp(Mass, 0.0000000, 200.0000000);
        if(Parm_Vector_0.Z < float(0))
        {
            Parm_Vector_0.Z = 0.0000000;
        }
        Local_CTTorch_v1 = ((FRand() * 0.1500000) + (Parm_Vector_0.Z * 0.3000000)) + (Local_float_v0 * 0.0027500);
        speed = FClamp(speed, 0.0000000, 400.0000000);
        Local_Vector_v0 = ((Local_CTTorch_v1 * 0.2000000) + (Local_float_v0 * 0.0015000)) + (speed * 0.0012500);
        PlaySound(ImpactSound,, 0.2000000 + (Local_Vector_v0 * 0.8000000),,, 0.9000000 + (FRand() * 0.2000000));
        return;
    }

    function Touch(Actor Parm_Actor_0)
    {
        local int Damage;

        if(Parm_Actor_0.IsA('ScriptPawn') && ScriptPawn(Parm_Actor_0).bIsBoss)
        {
            return;
        }
        Damage = int((float(int(float(1) - (Velocity.Z / float(400)))) * Mass) / Parm_Actor_0.Mass);
        if(((Owner != none) && Owner.IsA('PlayerPawn')) && PlayerPawn(Owner).Weapon != none)
        {
            if(Parm_Actor_0.IsA('PlayerPawn'))
            {
                return;
            }
        }
        if(Parm_Actor_0 != Owner)
        {
            Parm_Actor_0.JointDamaged(Damage, Instigator, Location, 0.5000000 * Velocity, 'Crushed', 0);
        }
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
        Momentum = Parm_Vector_0 * speed;
        eq_vxv_1022(Parm_Vector_0, speed);
        Destroy();
        return;
    }

    function Timer()
    {
        bDestroyable = false;
        Destroy();
        return;
    }
Begin:

    stop;            
}

defaultproperties
{
    ImpactSound=Sound'MurmurSnd.Rocks.rock01'
    bDestroyable=true
    DestroyedSound=Sound'MurmurSnd.Rocks.rock08'
    bStatic=false
    DrawType=6
    CollisionRadius=5.0000000
    CollisionHeight=5.0000000
    bCollideActors=true
    bCollideWorld=true
    bBounce=true
    bFixedRotationDir=true
    Mass=10.0000000
    Skeletal=SkelModel'objects.Rocks'
}