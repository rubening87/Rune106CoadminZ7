class TCCCarcass extends PlayerCarcass;

var bool B_v6106;

function Initfor(Actor Parm_Actor_0)
{
    local int i;
    local Actor A;
    local Vector Local_Vector_v0;
    local Rotator Local_Rotator_v0;

    bDecorative = false;
    if(!bDecorative)
    {
        DeathZone = Region.Zone;
        DeathZone.NumCarcasses++;
    }
    Skeletal = Parm_Actor_0.Skeletal;
    SkelMesh = Parm_Actor_0.SkelMesh;
    SubstituteMesh = Parm_Actor_0.SubstituteMesh;
    DrawScale = Parm_Actor_0.DrawScale;
    ScaleGlow = Parm_Actor_0.ScaleGlow;
    Fatness = Parm_Actor_0.Fatness;
    DesiredFatness = Parm_Actor_0.DesiredFatness;
    DesiredColorAdjust = Parm_Actor_0.DesiredColorAdjust;
    AnimSequence = Parm_Actor_0.AnimSequence;
    AnimFrame = Parm_Actor_0.AnimFrame;
    AnimRate = Parm_Actor_0.AnimRate;
    TweenRate = Parm_Actor_0.TweenRate;
    AnimMinRate = Parm_Actor_0.AnimMinRate;
    AnimLast = Parm_Actor_0.AnimLast;
    bAnimLoop = Parm_Actor_0.bAnimLoop;
    SimAnim.X = 10000.0000000 * AnimFrame;
    SimAnim.Y = 5000.0000000 * AnimRate;
    SimAnim.Z = 1000.0000000 * TweenRate;
    SimAnim.W = 10000.0000000 * AnimLast;
    bAnimFinished = Parm_Actor_0.bAnimFinished;
    Velocity = Parm_Actor_0.Velocity;
    bMirrored = Parm_Actor_0.bMirrored;
    PrePivot = Parm_Actor_0.PrePivot;
    SetPhysics(Parm_Actor_0.Physics);
    if(Pawn(Parm_Actor_0) != none)
    {
        GibCount = Pawn(Parm_Actor_0).GibCount;
        StabJoint = Pawn(Parm_Actor_0).StabJoint;
    }
    i = 0;
    J0x26B:

    if(i < 16)
    {
        SkelGroupSkins[i] = Parm_Actor_0.SkelGroupSkins[i];
        SkelGroupFlags[i] = Parm_Actor_0.SkelGroupFlags[i];
        i++;
        // [Loop Continue]
        goto J0x26B;
    }
    i = 0;
    J0x2C8:

    if(i < NumJoints())
    {
        if(Parm_Actor_0.ActorAttachedTo(i) != none)
        {
            A = Parm_Actor_0.DetachActorFromJoint(i);
            AttachActorToJoint(A, i);
        }
        i++;
        // [Loop Continue]
        goto J0x2C8;
    }
    if((Pawn(Parm_Actor_0) != none) && !Pawn(Parm_Actor_0).bIsPlayer)
    {
        SetCollisionSize(Parm_Actor_0.CollisionRadius, Parm_Actor_0.CollisionHeight);        
    }
    else
    {
        SetCollisionSize(Parm_Actor_0.CollisionRadius, Parm_Actor_0.CollisionHeight);
        bWasPlayer = true;
    }
    if((Level.Title == "Pegasus FFA") || Level.Title == "TSB XMAS 2020")
    {
        B_v6106 = true;
        LifeSpan = 3.0000000;
    }
    RemovedStabbedWeapon();
    return;
}

function bool JointDamaged(int Damage, Pawn P0, Vector Parm_Vector_0, Vector Momentum, name DamageType, int Parm_int_0)
{
    if(B_v6106)
    {
        ApplyPainToJoint(Parm_int_0, Momentum);
    }
    if(bDeleteMe)
    {
        return true;
    }
    super(Actor).JointDamaged(Damage, P0, Parm_Vector_0, Momentum, DamageType, Parm_int_0);
    return super(RuneCarcass).JointDamaged(Damage, P0, Parm_Vector_0, Momentum, DamageType, Parm_int_0);
    return;
}

simulated function RemovedStabbedWeapon()
{
    local Actor A;
    local Vector Local_Vector_v0;
    local Rotator Local_Rotator_v0;
    local int Local_int_v0;

    if(StabJoint == 'None')
    {
        return;
    }
    Local_int_v0 = JointNamed(StabJoint);
    A = DetachActorFromJoint(Local_int_v0);
    if((A != none) && A.IsA('Weapon'))
    {
        Weapon(A).RemoveStab(self, Local_int_v0);
        Weapon(A).StabbedActor = self;
        Weapon(A).PlayAnim('Base', 1.0000000, 0.0000000);
        Local_Vector_v0 = GetJointPos(Local_int_v0) + vect(0.0000000, 0.0000000, 38.0000000);
        Weapon(A).SetLocation(Local_Vector_v0);
        Local_Rotator_v0 = rot(0, 0, 16384);
        Weapon(A).SetRotation(Local_Rotator_v0);
        Weapon(A).SetPhysics(0);
        Weapon(A).GotoState('Pickup');
    }
    return;
}

simulated function PlayStabRemove()
{
    PlayAnim('ReactToPullOut', 1.0000000, 0.1000000);
    return;
}

function UpdateRotation()
{
    local Rotator Parm_Rotator_0;
    local Vector X, Y, Z, Local_Vector_v0, Parm_Vector_0, Local_Vector_v1;

    local Actor A;

    A = Trace(Parm_Vector_0, Local_Vector_v1, Location - vect(0.0000000, 0.0000000, 100.0000000), Location, false);
    if(A != none)
    {
        GetAxes(Rotation, X, Y, Z);
        Local_Vector_v0 = Y Cross Local_Vector_v1;
        Parm_Rotator_0.Yaw = Rotation.Yaw;
        Parm_Rotator_0.Pitch = Rotator(Local_Vector_v0).Pitch;
        Parm_Rotator_0.Roll = Rotator(Local_Vector_v0 Cross Local_Vector_v1).Pitch;
        DesiredRotation = Parm_Rotator_0;
    }
    return;
}

function SpawnBodyGibs(Vector Momentum)
{
    local int i, Local_int_v1;
    local zDebrisFlesh Local_bool_v0;
    local Vector Local_Vector_v0;
    local float Local_float_v0;
    local int Local_int_v0;

    if(Class'Engine.GameInfo'.default.bLowGore)
    {
        return;
    }
    i = 0;
    J0x1B:

    if(i < 3)
    {
        Local_Vector_v0 = VRand();
        Local_Vector_v0.X *= CollisionRadius;
        Local_Vector_v0.Y *= CollisionRadius;
        Local_Vector_v0.Z *= CollisionHeight;
        Local_Vector_v0 += Location;
        Local_bool_v0 = Spawn(Class'coadminz7.zDebrisFlesh',,, Local_Vector_v0);
        if(Local_bool_v0 != none)
        {
            Momentum.Z = 0.1000000;
            Local_bool_v0.SetMomentum(Momentum);
            if(FRand() < 0.3000000)
            {
                Local_bool_v0.SetTexture(SkelGroupSkins[int(float(i) % float(Local_int_v1))]);
            }
        }
        i++;
        // [Loop Continue]
        goto J0x1B;
    }
    return;
}
