class forcegrip extends goblinaxe;

var float FLT_v4288;
var float Local_float_v0;
var Actor A_v3868;
var int INT_v5310;

function PowerupInit()
{
    if(bPoweredUp && INT_v5310 == 0)
    {
        INT_v5310 = 1;
        bPoweredUp = false;
        PowerupMessage = "Force Grip!";
    }
    if(bPoweredUp && INT_v5310 == 1)
    {
        INT_v5310 = 0;
        bPoweredUp = false;
        PowerupMessage = "Force Crush!";
    }
    return;
}

function WeaponFire(int Parm_int_0)
{
    local Pawn LocalP0;

    Local_float_v0 = 325.0000000;
    if(A_v3868 == none)
    {
        foreach VisibleCollidingActors(Class'Engine.Pawn', LocalP0, 1000.0000000)
        {
            FLT_v4288 = VSize(LocalP0.Location - Owner.Location);
            if(((LocalP0 != Instigator) && LocalP0.Health > 0) && FLT_v4288 < Local_float_v0)
            {
                A_v3868 = LocalP0;
                Local_float_v0 = FLT_v4288;
            }            
        }                
    }
    else
    {
        A_v3868.DesiredColorAdjust.X = 0.0000000;
        A_v3868 = none;
    }
    return;
}

function Tick(float Parm_float_0)
{
    local Vector Local_Vector_v0, Local_Vector_v1, Local_Vector_v2, Local_Vector_v3;

    if(A_v3868 != none)
    {
        A_v3868.DesiredColorAdjust.X = 150.0000000;
        if(Pawn(A_v3868).Health <= 0)
        {
            A_v3868.DesiredColorAdjust.X = 0.0000000;
            A_v3868.AddVelocity(A_v3868.Velocity * float(-1));
            A_v3868 = none;
        }
        FLT_v4288 = VSize(A_v3868.Location - Owner.Location);
        FLT_v4288 -= float(125);
        Local_Vector_v0 = (Normal(Owner.Location - A_v3868.Location) * FLT_v4288) * float(12);
        Local_Vector_v1 = Vector(PlayerPawn(Owner).ViewRotation) * float(2400);
        Local_Vector_v1.Z += float(15);
        Local_Vector_v3 = (Local_Vector_v0 + Local_Vector_v1) - A_v3868.Velocity;
        PlayerPawn(A_v3868).AddVelocity(Local_Vector_v3);
        ScriptPawn(A_v3868).AddVelocity(Local_Vector_v3);
        if(INT_v5310 == 1)
        {
            A_v3868.JointDamaged(5, Pawn(Owner), A_v3868.Location, A_v3868.Location, 'gibbed', 0);
        }
        if((Pawn(A_v3868).Health <= 0) || Pawn(Owner).Health <= 0)
        {
            A_v3868.DesiredColorAdjust.X = 0.0000000;
            A_v3868.AddVelocity(A_v3868.Velocity * float(-1));
            A_v3868 = none;
        }
    }
    return;
}

defaultproperties
{
    Damage=0
    DamageType="Blunt"
    ThrownDamageType="ThrownWeaponBlunt"
    WeaponSweepExtent=0.0000000
    RunePowerRequired=0
    RunePowerDuration=0.0100000
    PowerupMessage="Force Crush!"
    ThroughAir=none
    ThroughAirBerserk=none
    HitFlesh=none
    HitWood=none
    HitStone=none
    HitMetal=none
    HitDirt=none
    HitShield=none
    HitWeapon=none
    HitBreakableWood=none
    HitBreakableStone=none
    SheathSound=none
    UnsheathSound=none
    ThrownSoundLOOP=none
    PowerUpSound=none
    PoweredUpSoundLOOP=none
    PoweredUpEndingSound=none
    PoweredUpEndSound=none
    PickupMessage="You may now Force Grip!"
    RespawnTime=0.0000000
    PickupSound=none
    DropSound=none
    DrawScale=0.1000000
    ScaleGlow=0.0000000
}