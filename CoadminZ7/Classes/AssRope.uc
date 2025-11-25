class AssRope extends Electricity;

event SystemTick(float Parm_float_0)
{
    local Vector Local_Vector_v0;

    if(Target == none)
    {
        return;
    }
    if(TargetJointIndex == 0)
    {
        Local_Vector_v0 = Target.Location - Location;        
    }
    else
    {
        Local_Vector_v0 = Target.GetJointPos(TargetJointIndex) - Location;
    }
    return;
}

defaultproperties
{
    ParticleTexture=Texture'RuneFX.Rope'
    BeamThickness=2.5000000
    Physics=11
    SoundRadius=8
    SoundVolume=32
}