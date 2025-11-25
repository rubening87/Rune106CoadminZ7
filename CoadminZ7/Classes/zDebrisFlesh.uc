class zDebrisFlesh extends DebrisFlesh;

var bool B_v3869;

simulated function Spawned()
{
    Velocity = (VRand() + vect(0.0000000, 0.0000000, 1.0000000)) * RandRange(100.0000000, 250.0000000);
    RotationRate.Yaw = int(RandRange(-64000.0000000, 64000.0000000));
    RotationRate.Pitch = int(RandRange(-64000.0000000, 64000.0000000));
    RotationRate.Roll = int(RandRange(-64000.0000000, 64000.0000000));
    return;
}

simulated function ZoneChange(ZoneInfo Parm_ZoneInfo_0)
{
    local Actor A;

    if(Class'Engine.GameInfo'.default.bLowGore)
    {
        return;
    }
    if(!Parm_ZoneInfo_0.bWaterZone)
    {
        B_v3869 = true;
    }
    return;
}

simulated function PlayLandSound()
{
    switch(Rand(6))
    {
        case 0:
            PlaySound(Sound'OtherSnd.Gibs.gib01');
            break;
        case 1:
            PlaySound(Sound'OtherSnd.Gibs.gib02');
            break;
        case 2:
            PlaySound(Sound'OtherSnd.Gibs.gib03');
            break;
        case 3:
            PlaySound(Sound'OtherSnd.Gibs.gib04');
            break;
        case 4:
            PlaySound(Sound'OtherSnd.Gibs.gib05');
            break;
        case 5:
            PlaySound(Sound'OtherSnd.Gibs.gib06');
            break;
        default:
            break;
    }
    return;
}

simulated function SpawnDebrisDecal(Vector Parm_Vector_0)
{
    Spawn(Class'coadminz7.zDecalBlood', self,, Location, Rotator(Parm_Vector_0));
    return;
}
