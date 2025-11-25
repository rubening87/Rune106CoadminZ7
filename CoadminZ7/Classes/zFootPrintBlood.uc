class zFootPrintBlood extends Decal;

var float ElapsedTime;

replication
{
    // Pos:0x000
    reliable if(int(Role) == int(ROLE_Authority))
        ElapsedTime;
}

simulated function PostBeginPlay()
{
    ElapsedTime = 0.0000000;
    return;
}

simulated function DirectionalAttach(Vector Local_RunePlayer.MovementDir_e_v0, Vector Parm_Vector_1)
{
    if(Local_RunePlayer.MovementDir_e_v0.Z < float(0))
    {
        Local_RunePlayer.MovementDir_e_v0.Z = -Local_RunePlayer.MovementDir_e_v0.Z;
    }
    SetRotation(Rotator(Parm_Vector_1));
    if(!AttachDecal(100.0000000, Local_RunePlayer.MovementDir_e_v0))
    {
        Destroy();
    }
    return;
}

simulated function Tick(float Parm_float_0)
{
    ElapsedTime += Parm_float_0;
    AlphaScale = 1.0000000 - (ElapsedTime / 10.0000000);
    AlphaScale = FClamp(AlphaScale, 0.0000000, default.AlphaScale);
    if(AlphaScale <= float(0))
    {
        AlphaScale = 0.0000000;
        Destroy();
    }
    return;
}

defaultproperties
{
    Style=4
    Texture=Texture'RuneFX.bloodprint'
}