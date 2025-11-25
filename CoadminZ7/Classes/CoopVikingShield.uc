class CoopVikingShield extends CoopShield;

function DestroyEffect()
{
    local int i, Local_int_v0, Local_int_v1;
    local Debris Local_Debris_v0;
    local DebrisCloud Local_DebrisCloud_v0;
    local Vector Local_Vector_v0;
    local float Local_float_v0;

    Local_DebrisCloud_v0 = Spawn(Class'RuneI.DebrisCloud');
    if(Local_DebrisCloud_v0 != none)
    {
        Local_DebrisCloud_v0.SetRadius(float(Max(int(CollisionRadius), int(CollisionHeight))));
    }
    Local_int_v0 = Clamp(int(Mass / float(10)), 2, 15);
    Local_float_v0 = ((CollisionRadius * CollisionRadius) * CollisionHeight) / float(Local_int_v0 * 500);
    Local_float_v0 = Local_float_v0 ** 0.3333333;
    Local_int_v1 = 1;
    J0x8F:

    if(Local_int_v1 < 16)
    {
        if(SkelGroupSkins[Local_int_v1] == none)
        {
            // [Explicit Break]
            goto J0xB9;
        }
        Local_int_v1++;
        // [Loop Continue]
        goto J0x8F;
    }
    J0xB9:

    i = 0;
    J0xC0:

    if(i < Local_int_v0)
    {
        Local_Vector_v0 = Location;
        Local_Vector_v0.X += (((FRand() * float(2)) - float(1)) * CollisionRadius);
        Local_Vector_v0.Y += (((FRand() * float(2)) - float(1)) * CollisionRadius);
        Local_Vector_v0.Z += (((FRand() * float(2)) - float(1)) * CollisionHeight);
        Local_Debris_v0 = Spawn(Class'RuneI.DebrisWood',,, Local_Vector_v0);
        if(Local_Debris_v0 != none)
        {
            Local_Debris_v0.SetSize(Local_float_v0);
            Local_Debris_v0.SetTexture(SkelGroupSkins[int(float(i) % float(Local_int_v1))]);
        }
        i++;
        // [Loop Continue]
        goto J0xC0;
    }
    return;
}

function PlayHitSound(name DamageType)
{
    return;
}

defaultproperties
{
    Health=70
    rating=2
    DestroyedSound=Sound'WeaponsSnd.Shields.xtroy01'
    PickupMessage="You carry a Viking Wooden Shield"
    RespawnSound=Sound'OtherSnd.Respawns.respawn01'
    DropSound=Sound'WeaponsSnd.Shields.xdrop01'
    PickupMessageClass=Class'RuneI.PickupMessage'
    LODCurve=1
    CollisionRadius=13.0000000
    CollisionHeight=3.0000000
    bCollideWorld=true
    Mass=150.0000000
    Skeletal=SkelModel'weapons.VikingShield'
    SkelGroupSkins(0)=Texture'weapons.VikingShieldviking_shield'
    SkelGroupSkins(1)=Texture'weapons.VikingShieldviking_shield'
}