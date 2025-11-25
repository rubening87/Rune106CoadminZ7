class zEatenLizard extends zDiscardedHealth;

simulated function HitWall(Vector Parm_Vector_0, Actor Parm_Actor_0)
{
    local int i;
    local Debris Local_Debris_v0;
    local Vector Local_Vector_v0;

    super(Debris).HitWall(Parm_Vector_0, Parm_Actor_0);
    PlaySound(Sound'OtherSnd.Pickups.pickupmeatsmash01', 2);
    i = 0;
    J0x21:

    if(i < 10)
    {
        Local_Vector_v0 = Location + (VRand() * float(8));
        Local_Debris_v0 = Spawn(Class'RuneI.DebrisFlesh',,, Local_Vector_v0);
        if(Local_Debris_v0 != none)
        {
            Local_Debris_v0.SetSize(0.2000000 + (FRand() * 0.2000000));
            Local_Debris_v0.SetTexture(SkelGroupSkins[0]);
            Local_Debris_v0.Velocity = (Parm_Vector_0 * float(175)) + (VRand() * float(85));
        }
        i++;
        // [Loop Continue]
        goto J0x21;
    }
    Destroy();
    return;
}

simulated function Landed(Vector Parm_Vector_0, Actor Parm_Actor_0)
{
    HitWall(Parm_Vector_0, Parm_Actor_0);
    return;
}

defaultproperties
{
    DrawScale=0.8000000
    DesiredFatness=110
    CollisionRadius=5.0000000
    bCollideWorld=false
    Skeletal=SkelModel'creatures.Lizard'
}