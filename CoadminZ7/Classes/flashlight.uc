class flashlight extends Shield;

var FlashLightSource UNK_v5323;
var int INT_v5324;
var bool B_v5325;
var int INT_v6974;

replication
{
    // Pos:0x000
    reliable if(int(Role) == int(ROLE_Authority))
        B_v5325, INT_v6974, 
        UNK_v5323;
}

simulated function Tick(float Parm_float_0)
{
    local Rotator R, Local_Rotator_v0;

    if(int(Role) == int(ROLE_Authority))
    {
        if(UNK_v5323 == none)
        {
            UNK_v5323 = Spawn(Class'coadminz7.FlashLightSource', self);
            UNK_v5323.RemoteRole = ROLE_SimulatedProxy;
            AttachActorToJoint(UNK_v5323, JointNamed('Base'));
        }
        if((Owner != none) && Owner.AnimProxy.GetStateName() == 'Defending')
        {
            R.Pitch = ZRunePlayer(Owner).GiMode;
            R.Yaw = ZRunePlayer(Owner).Rotation.Yaw;
            PlayerPawn(Owner).LookAngle.Pitch = PlayerPawn(Owner).ViewRotation.Pitch;
            PlayerPawn(Owner).MaxHeadAngle.Pitch = 32768;
            INT_v6974 = 1;
            UNK_v5323.SetRotation(R);
            UNK_v5323.LightBrightness = 64;
            UNK_v5323.LightRadius = 100;            
        }
        else
        {
            if(B_v5325 && Owner.AnimProxy.GetStateName() != 'Defending')
            {
                R.Pitch = -16384;
                R.Yaw = ZRunePlayer(Owner).Rotation.Yaw;
                UNK_v5323.SetRotation(R);
                INT_v6974 = 2;
                UNK_v5323.LightBrightness = 45;
                UNK_v5323.LightRadius = 80;                
            }
            else
            {
                INT_v6974 = 0;
                UNK_v5323.LightBrightness = 0;
                UNK_v5323.LightEffect = 12;
            }
        }        
    }
    else
    {
        if(UNK_v5323 != none)
        {
            if(INT_v6974 == 1)
            {
                R.Pitch = ZRunePlayer(Owner).GiMode;
                R.Yaw = ZRunePlayer(Owner).Rotation.Yaw;
                UNK_v5323.SetRotation(R);
                PlayerPawn(Owner).LookAngle.Pitch = PlayerPawn(Owner).ViewRotation.Pitch;
                PlayerPawn(Owner).MaxHeadAngle.Pitch = 32768;                
            }
            else
            {
                if(INT_v6974 == 2)
                {
                    R.Pitch = -16384;
                    R.Yaw = ZRunePlayer(Owner).Rotation.Yaw;
                    UNK_v5323.SetRotation(R);
                }
            }
        }
    }
    return;
}

function bool JointDamaged(int Damage, Pawn P0, Vector Parm_Vector_0, Vector Momentum, name DamageType, int Parm_int_0)
{
    local Vector Local_Vector_v1;
    local Pawn LocalP0;

    PlayHitSound(DamageType);
    if(bBreakable)
    {
        if(((Pawn(Owner) != none) && PlayerPawn(Owner) == none) && (FRand() * float(Level.Game.Difficulty)) < 0.2000000)
        {
            Pawn(Owner).DropShield();
            return false;
        }
        Health -= int(float(Damage) * 0.6000000);
    }
    if(Owner != none)
    {
        Local_Vector_v1 = Momentum / Owner.Mass;
        if((Owner.Mass < VSize(Local_Vector_v1)) && Owner.Velocity.Z <= float(0))
        {
            Local_Vector_v1.Z += ((VSize(Local_Vector_v1) - Owner.Mass) * 0.5000000);
        }
        LocalP0 = Pawn(Owner);
        LocalP0.AddVelocity(Local_Vector_v1);
        if(LocalP0.CanGotoPainState() && Health > 0)
        {
            LocalP0.NextState = LocalP0.GetStateName();
            LocalP0.PlayAnim('H3_Defendpain', 1.0000000, 0.0100000);
            LocalP0.GotoState('Pain');
        }
    }
    if(Health <= 0)
    {
        GotoState('Smashed');
        return true;
    }
    return false;
    return;
}

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
    Health=100000
    rating=3
    DestroyedSound=Sound'WeaponsSnd.Shields.xtroy05'
    PickupMessage="You picked up a flashlight"
    RespawnSound=Sound'OtherSnd.Respawns.respawn01'
    DropSound=Sound'WeaponsSnd.Shields.xdrop05'
    PickupMessageClass=Class'RuneI.PickupMessage'
    RemoteRole=2
    DrawScale=0.5000000
    LODCurve=1
    CollisionRadius=13.0000000
    CollisionHeight=3.0000000
    bCollideWorld=true
    bFixedRotationDir=false
    Mass=200.0000000
    Skeletal=SkelModel'plants.Sponge'
    SkelGroupSkins(0)=Texture'weapons.WoodShielddwarf_wood_shield'
    SkelGroupSkins(1)=Texture'weapons.WoodShielddwarf_wood_shield'
}