class zBloodlustStart extends Effects;

var float FLT_v4802;

simulated function PreBeginPlay()
{
    Enable('Tick');
    DesiredColorAdjust.X = 200.0000000;
    ScaleGlow = 0.7500000;
    DrawScale = 0.1250000;
    FLT_v4802 = 0.7500000;
    return;
}

simulated function Tick(float Parm_float_0)
{
    local Vector Local_Vector_v0;

    DrawScale += (Parm_float_0 * 1.7500000);
    ScaleGlow = FLT_v4802;
    SetLocation(Owner.Location);
    SetRotation(Owner.Rotation + rot(16384, 0, 0));
    FLT_v4802 -= Parm_float_0;
    if(FLT_v4802 <= float(0))
    {
        Destroy();
    }
    return;
}

defaultproperties
{
    RemoteRole=2
    DrawType=5
    Style=3
    Texture=Texture'coadminz7.eq_vxv_5308.bloodlustZ'
}