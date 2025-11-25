class omgsuchantihaxwowlol extends Debris;

var bool B_v3869;

function PreBeginPlay()
{
    super.PreBeginPlay();
    switch(1)
    {
        case 9:
            Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
            break;
        default:
            break;
    }
    if(Class'Engine.GameInfo'.default.bLowGore)
    {
        Destroy();
    }
    return;
}

simulated function ZoneChange(ZoneInfo Parm_ZoneInfo_0)
{
    local Actor A;

    switch(1)
    {
        case 9:
            Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
            break;
        default:
            break;
    }
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
    switch(1)
    {
        case 2:
            Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
            break;
        default:
            break;
    }
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
    switch(Rand(5))
    {
        case 0:
            Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(Parm_Vector_0));
            break;
        case 1:
            Spawn(Class'RuneI.DecalBlood2', self,, Location, Rotator(Parm_Vector_0));
            break;
        case 2:
            Spawn(Class'RuneI.DecalBlood3', self,, Location, Rotator(Parm_Vector_0));
            break;
        case 3:
            Spawn(Class'RuneI.DecalBlood4', self,, Location, Rotator(Parm_Vector_0));
            break;
        case 4:
            Spawn(Class'RuneI.DecalBlood5', self,, Location, Rotator(Parm_Vector_0));
            break;
        default:
            break;
    }
    return;
}

defaultproperties
{
    LandSound=Sound'OtherSnd.Gibs.gib01'
    Skeletal=SkelModel'objects.Chunks'
    SkelGroupSkins(1)=Texture'objects.Chunksflesh'
}