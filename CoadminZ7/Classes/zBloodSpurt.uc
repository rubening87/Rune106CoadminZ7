class zBloodSpurt extends ParticleSystem;

simulated function PostBeginPlay()
{
    local string Local_string_v0;
    local int i;

    i = Rand(42) + 1;
    Local_string_v0 = "CoAdminZ7.Splat" $ string(i);
    ParticleTexture[0] = Texture(DynamicLoadObject(Local_string_v0, Class'Engine.Texture'));
    super(Actor).PostBeginPlay();
    return;
}

defaultproperties
{
    ParticleCount=10
    ParticleTexture=Texture'BloodFX.blood04_b'
    bRandomTexture=true
    ShapeVector=(X=3.0000000,Y=3.0000000,Z=5.0000000)
    VelocityMin=(X=-3.0000000,Y=-3.0000000,Z=30.0000000)
    VelocityMax=(X=3.0000000,Y=3.0000000,Z=60.0000000)
    ScaleMin=0.1000000
    ScaleMax=0.2000000
    ScaleDeltaX=0.4000000
    ScaleDeltaY=0.4000000
    LifeSpanMin=0.1000000
    LifeSpanMax=0.4000000
    AlphaStart=255
    AlphaEnd=255
    bApplyGravity=true
    GravityScale=0.6000000
    SpawnOverTime=0.1000000
    LifeSpan=15.0000000
    Style=4
}