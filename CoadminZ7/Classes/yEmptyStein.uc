class yEmptyStein extends yFragment;

simulated function Vector HasCommandPermission0(Pawn P0)
{
    local Vector X, Y, Z, Local_Vector_v1;

    GetAxes(P0.Rotation, X, Y, Z);
    Local_Vector_v1 = (Y * float(150)) + vect(0.0000000, 0.0000000, -400.0000000);
    return Local_Vector_v1;
    return;
}

simulated function HitWall(Vector Parm_Vector_0, Actor Parm_Actor_0)
{
    local int i;
    local Debris Local_Debris_v0;
    local Vector Local_Vector_v0;

    super.HitWall(Parm_Vector_0, Parm_Actor_0);
    PlaySound(Sound'OtherSnd.Pickups.pickupsteinsmash01', 2);
    i = 0;
    J0x21:

    if(i < 10)
    {
        Local_Vector_v0 = Location + (VRand() * float(8));
        Local_Debris_v0 = Spawn(Class'RuneI.DebrisStone',,, Local_Vector_v0);
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

defaultproperties
{
    bLookFocusPlayer=true
    CollisionRadius=5.0000000
    bCollideWorld=false
    Skeletal=SkelModel'objects.Stein'
}