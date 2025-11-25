class yFragment extends Fragment;

function PostBeginPlay()
{
    if(Region.Zone.bDestructive)
    {
        Destroy();        
    }
    else
    {
        super.PostBeginPlay();
    }
    return;
}

simulated function InventorySpecial2()
{
    local Pawn P0;
    local Actor Local_Actor_v0;

    if(Owner == none)
    {
        return;
    }
    P0 = Pawn(Owner);
    Local_Actor_v0 = P0.DetachActorFromJoint(P0.JointNamed(P0.WeaponJoint));
    if(Local_Actor_v0 != none)
    {
        Local_Actor_v0.Velocity = HasCommandPermission0(P0);
        Local_Actor_v0.SetPhysics(2);
        Local_Actor_v0.bCollideWorld = true;
    }
    return;
}

simulated function Vector HasCommandPermission0(Pawn P0)
{
    local Vector X, Y, Z, Local_Vector_v1;

    GetAxes(P0.Rotation, X, Y, Z);
    Local_Vector_v1 = ((-X * float(150)) + (Y * float(30))) + vect(0.0000000, 0.0000000, 100.0000000);
    return Local_Vector_v1;
    return;
}

simulated function CalcVelocity(Vector Momentum, float Parm_float_0)
{
    Velocity = VRand() * (((Parm_float_0 + (FRand() * 150.0000000)) + 100.0000000) + (VSize(Momentum) / float(80)));
    return;
}

simulated function HitWall(Vector Parm_Vector_0, Actor HitWall)
{
    Velocity = 0.5000000 * ((((Velocity Dot Parm_Vector_0) * Parm_Vector_0) * -2.0000000) + Velocity);
    speed = VSize(Velocity);
    if(bFirstHit && speed < float(400))
    {
        bFirstHit = false;
        bRotateToDesired = true;
        bFixedRotationDir = false;
        DesiredRotation.Pitch = 0;
        DesiredRotation.Yaw = int(FRand() * float(65536));
        DesiredRotation.Roll = 0;
    }
    RotationRate.Yaw = int(float(RotationRate.Yaw) * 0.7500000);
    RotationRate.Roll = int(float(RotationRate.Roll) * 0.7500000);
    RotationRate.Pitch = int(float(RotationRate.Pitch) * 0.7500000);
    if((speed < float(60)) && Parm_Vector_0.Z > 0.7000000)
    {
        SetPhysics(0);
        bBounce = false;
        GotoState('Dying');        
    }
    else
    {
        if(speed > float(50))
        {
            if(FRand() < 0.5000000)
            {
                PlaySound(ImpactSound, 0, 0.5000000 + (FRand() * 0.5000000),, 300.0000000, 0.8500000 + (FRand() * 0.3000000));                
            }
            else
            {
                PlaySound(MiscSound, 0, 0.5000000 + (FRand() * 0.5000000),, 300.0000000, 0.8500000 + (FRand() * 0.3000000));
            }
        }
    }
    return;
}

auto state Flying
{
    simulated function Timer()
    {
        GotoState('Dying');
        return;
    }

    simulated function Touch(Actor Parm_Actor_0)
    {
        if(Pawn(Parm_Actor_0) == none)
        {
            return;
        }
        if(!Pawn(Parm_Actor_0).bIsPlayer)
        {
            Destroy();
        }
        return;
    }

    singular simulated function ZoneChange(ZoneInfo Parm_ZoneInfo_0)
    {
        local float Local_float_v0;
        local Actor splash;

        if(Parm_ZoneInfo_0.bWaterZone)
        {
            Velocity = 0.2000000 * Velocity;
            Local_float_v0 = 0.0005000 * (float(250) - (0.5000000 * Velocity.Z));
            if(int(Level.NetMode) != int(NM_DedicatedServer))
            {
                if(Parm_ZoneInfo_0.EntrySound != none)
                {
                    PlaySound(Parm_ZoneInfo_0.EntrySound, 3, Local_float_v0);
                }
                if(Parm_ZoneInfo_0.EntryActor != none)
                {
                    splash = Spawn(Parm_ZoneInfo_0.EntryActor);
                    if(splash != none)
                    {
                        splash.DrawScale = 4.0000000 * Local_float_v0;
                    }
                }
            }
            if(bFirstHit)
            {
                bFirstHit = false;
                bRotateToDesired = true;
                bFixedRotationDir = false;
                DesiredRotation.Pitch = 0;
                DesiredRotation.Yaw = int(FRand() * float(65536));
                DesiredRotation.Roll = 0;
            }
            RotationRate = 0.2000000 * RotationRate;
            GotoState('Dying');
        }
        if(Parm_ZoneInfo_0.bPainZone && Parm_ZoneInfo_0.DamagePerSec > 0)
        {
            Destroy();
        }
        return;
    }

    simulated function BeginState()
    {
        RandSpin(125000.0000000);
        if((RotationRate.Pitch > -10000) && RotationRate.Pitch < 10000)
        {
            RotationRate.Pitch = 10000;
        }
        if((RotationRate.Roll > -10000) && RotationRate.Roll < 10000)
        {
            RotationRate.Roll = 10000;
        }
        Mesh = Fragments[int(FRand() * float(numFragmentTypes))];
        if(int(Level.NetMode) == int(NM_Standalone))
        {
            LifeSpan = 20.0000000 + (float(40) * FRand());
        }
        SetTimer(5.0000000, true);
        return;
    }
    stop;
}

state Dying
{
    simulated function HitWall(Vector Parm_Vector_0, Actor HitWall)
    {
        Velocity = 0.5000000 * ((((Velocity Dot Parm_Vector_0) * Parm_Vector_0) * -2.0000000) + Velocity);
        speed = VSize(Velocity);
        if(bFirstHit && speed < float(400))
        {
            bFirstHit = false;
            bRotateToDesired = true;
            bFixedRotationDir = false;
            DesiredRotation.Pitch = 0;
            DesiredRotation.Yaw = int(FRand() * float(65536));
            DesiredRotation.Roll = 0;
        }
        RotationRate.Yaw = int(float(RotationRate.Yaw) * 0.7500000);
        RotationRate.Roll = int(float(RotationRate.Roll) * 0.7500000);
        RotationRate.Pitch = int(float(RotationRate.Pitch) * 0.7500000);
        if((Velocity.Z < float(50)) && Parm_Vector_0.Z > 0.7000000)
        {
            SetPhysics(0);
            bBounce = false;            
        }
        else
        {
            if(speed > float(80))
            {
                if(FRand() < 0.5000000)
                {
                    PlaySound(ImpactSound, 0, 0.5000000 + (FRand() * 0.5000000),, 300.0000000, 0.8500000 + (FRand() * 0.3000000));                    
                }
                else
                {
                    PlaySound(MiscSound, 0, 0.5000000 + (FRand() * 0.5000000),, 300.0000000, 0.8500000 + (FRand() * 0.3000000));
                }
            }
        }
        return;
    }

    function TakeDamage(int Parm_int_0, Pawn Parm_Pawn_1, Vector Parm_Vector_0, Vector Momentum, name DamageType)
    {
        Destroy();
        return;
    }

    simulated function Timer()
    {
        if(!PlayerCanSeeMe())
        {
            Destroy();
        }
        return;
    }

    simulated function BeginState()
    {
        SetTimer(1.5000000, true);
        SetCollision(true, false, false);
        return;
    }
    stop;
}

defaultproperties
{
    bSimFall=true
    DrawType=6
}