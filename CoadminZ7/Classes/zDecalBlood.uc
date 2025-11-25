class zDecalBlood extends Decal;

var bool B_v2038;
var bool B_v3839;
var bool B_v3840;
var float FLT_v3207;
var float FLT_v1993;
var int INT_v5331;

simulated function PostBeginPlay()
{
    local string Local_string_v0;
    local int i;

    i = Rand(42) + 1;
    Local_string_v0 = "CoAdminZ7.Splat" $ string(i);
    Texture = Texture(DynamicLoadObject(Local_string_v0, Class'Engine.Texture'));
    DrawScale = FRand() * 0.7000000;
    FClamp(DrawScale, 0.0012500, 0.7000000);
    B_v3840 = true;
    if(!AttachDecal(100.0000000))
    {
        Destroy();
    }
    SetTimer(1.0000000, false);
    return;
}

simulated function Timer()
{
    if((Level.TimeSeconds - LastRenderedTime) < float(1))
    {
        INT_v5331++;        
    }
    else
    {
        INT_v5331 += 2;
    }
    if(!B_v2038 || INT_v5331 > 4)
    {
        Destroy();
        return;
    }
    if(!B_v3839)
    {
        RemoteRole = ROLE_None;
        B_v3839 = true;
        if(Level.bDropDetail)
        {
            SetTimer(5.0000000 + (float(2) * FRand()), false);            
        }
        else
        {
            SetTimer(20.0000000 + (float(5) * FRand()), false);
        }
        return;
    }
    if(Level.bDropDetail && MultiDecalLevel < 6)
    {
        if(((Level.TimeSeconds - LastRenderedTime) > 0.3500000) || !B_v3840 && FRand() < 0.2000000)
        {
            Destroy();            
        }
        else
        {
            SetTimer(1.0000000, true);
            return;
        }        
    }
    else
    {
        if((Level.TimeSeconds - LastRenderedTime) < float(1))
        {
            SetTimer(8.0000000, true);
            return;
        }
    }
    Destroy();
    return;
}

defaultproperties
{
    B_v2038=true
    FLT_v1993=4.0000000
    bBloodyDecal=true
    LifeSpan=10.0000000
    Style=4
    Texture=Texture'BloodFX.blood02_b'
}