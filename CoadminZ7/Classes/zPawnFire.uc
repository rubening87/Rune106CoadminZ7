class zPawnFire extends Fire;

var() float eqat_vxv_2035;
var float ElapsedTime;

function PostBeginPlay()
{
    LifeSpan = 10.0000000;
    ParticleTexture[0] = Texture'RuneFX.explosion1';
    AlphaStart = byte(RandRange(20.0000000, 100.0000000));
    bApplyZoneVelocity = true;
    ShapeVector = vect(5.0000000, 5.0000000, 5.0000000);
    LightEffect = 5;
    ScaleMax = 0.1400000;
    ParticleCount = 12;
    ScaleMin = 0.0600000;
    LifeSpanMin = 0.0400000;
    LifeSpanMax = 0.1250000;
    VelocityMin.Z = 120.0000000;
    VelocityMax.Z = 240.0000000;
    VelocityMax.Y = 30.0000000;
    VelocityMax.Z = 30.0000000;
    eqat_vxv_2035 = 1.0000000;
    return;
}

function Tick(float Parm_float_0)
{
    ElapsedTime += Parm_float_0;
    if(AlphaScale != 1.0000000)
    {
        Expired();
        Destroy();
    }
    if(AttachParent != none)
    {
        if(ElapsedTime > float(1))
        {
            ElapsedTime = 0.0000000;
            if(AttachParent.IsA('Pawn') || AttachParent.IsA('Carcass'))
            {
                if(!AttachParent.IsA('PlayerPawn') && int(AttachParent.DesiredFatness) > 90)
                {
                    AttachParent.DesiredFatness -= byte(1);
                }
                AttachParent.JointDamaged(int(eqat_vxv_2035), Pawn(Owner), AttachParent.Location, vect(0.0000000, 0.0000000, 0.0000000), 'Fire', int(AttachParentJoint));
                if(AttachParent.bDeleteMe)
                {
                    SetTimer(0.0000000, false);
                }
            }
        }
        if((AttachParent.Skeletal != none) && AttachParent.NumJoints() > 4)
        {
            if(AttachParent.ScaleGlow > 0.2500000)
            {
                AttachParent.ScaleGlow -= (0.0500000 * Parm_float_0);
            }            
        }
        else
        {
            if(AttachParent.ScaleGlow > 0.2500000)
            {
                AttachParent.ScaleGlow -= (0.4000000 * Parm_float_0);
            }
        }
    }
    return;
}

defaultproperties
{
    eqat_vxv_2035=1.0000000
    ParticleCount=8
    ShapeVector=(X=8.0000000,Y=8.0000000,Z=2.0000000)
    VelocityMin=(X=0.3000000,Y=0.3000000,Z=0.0000000)
    VelocityMax=(X=2.5000000,Y=2.5000000,Z=5.0000000)
    ScaleMax=1.1000000
    LifeSpanMax=0.6000000
    bStasis=false
}