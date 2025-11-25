class helix extends ParticleSystem;

var float ElapsedTime;
var float FLT_v2301;
var float FLT_v2056;
var float FLT_v2036;
var float FLT_v2037;

simulated function SystemInit()
{
    local int i;
    local float Local_CTTorch_v1;

    ElapsedTime = RandRange(0.0000000, 5.0000000);
    i = 0;
    J0x1D:

    if(i < int(ParticleCount))
    {
        ParticleArray[i].Valid = true;
        ParticleArray[i].Velocity = vect(0.0000000, 0.0000000, 0.0000000);
        ParticleArray[i].Alpha = vect(1.0000000, 1.0000000, 1.0000000) * float(AlphaStart);
        ParticleArray[i].LifeSpan = 0.0000000;
        ParticleArray[i].TextureIndex = 0;
        ParticleArray[i].Style = Style;
        if(bRelativeToSystem)
        {
            ParticleArray[i].Location = vect(0.0000000, 0.0000000, 0.0000000);            
        }
        else
        {
            ParticleArray[i].Location = Location;
        }
        Local_CTTorch_v1 = ScaleMax;
        ParticleArray[i].ScaleStartX = Local_CTTorch_v1;
        ParticleArray[i].ScaleStartY = Local_CTTorch_v1;
        ParticleArray[i].XScale = Local_CTTorch_v1;
        ParticleArray[i].YScale = Local_CTTorch_v1;
        i++;
        // [Loop Continue]
        goto J0x1D;
    }
    IsLoaded = true;
    return;
}

defaultproperties
{
    FLT_v2301=5.0000000
    FLT_v2056=15.0000000
    FLT_v2036=30.0000000
    FLT_v2037=0.1000000
    ParticleCount=10
    ParticleTexture=Texture'RuneFX.Spark1'
    ShapeVector=(X=8.0000000,Y=8.0000000,Z=2.0000000)
    VelocityMin=(X=0.3000000,Y=0.3000000,Z=50.0000000)
    VelocityMax=(X=2.5000000,Y=2.5000000,Z=120.0000000)
    ScaleMin=0.1500000
    ScaleMax=0.1500000
    ScaleDeltaX=1.0000000
    ScaleDeltaY=1.0000000
    LifeSpanMin=999999.0000000
    LifeSpanMax=999999.0000000
    AlphaStart=10
    AlphaEnd=10
    bEventSystemInit=true
    bEventSystemTick=true
    RemoteRole=2
    bDirectional=true
    Style=3
    ScaleGlow=3.0000000
}