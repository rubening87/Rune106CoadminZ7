class AssHook extends RustyMace;

var ghook UNK_v6230;
var AssRope UNK_v6231;
var bool B_v6232;

replication
{
    // Pos:0x000
    reliable if(int(Role) == int(ROLE_Authority))
        B_v6232;
}

simulated function Destroyed()
{
    Spawn(Class'RuneI.EmpathyFlash');
    if(UNK_v6231 != none)
    {
        UNK_v6231.Destroy();
    }
    if(UNK_v6230 != none)
    {
        UNK_v6230.AmbientSound = none;
        UNK_v6230.eqY_vxv_2841 = none;
    }
    if((Owner != none) && Owner.GetStateName() != 'GameEnded')
    {
        RunePlayer(Owner).ViewTarget = none;
    }
    super(Weapon).Destroyed();
    return;
}

function ZoneChange(ZoneInfo Parm_ZoneInfo_0)
{
    if(Parm_ZoneInfo_0.bWaterZone)
    {
        Spawn(Class'RuneI.splash');
        Spawn(Class'RuneI.Ripple');
        PlaySound(Sound'MurmurSnd.Water.splash05');
        Destroy();
    }
    return;
}

simulated function Tick(float Parm_float_0)
{
    local Vector X, Y, Z;

    super(Actor).Tick(Parm_float_0);
    if(bBounce)
    {
        return;
    }
    if(((Owner != none) && Owner.IsA('RunePlayer')) && Owner.GetStateName() != 'GameEnded')
    {
        if(int(RunePlayer(Owner).bAltFire) == 1)
        {
            GetAxes(Rotator(Location - Owner.Location), X, Y, Z);
            if(B_v6232 == false)
            {
                B_v6232 = true;
            }
            Owner.Velocity = vect(0.0000000, 0.0000000, 0.0000000);
            Owner.Acceleration = vect(0.0000000, 0.0000000, 0.0000000);
            Owner.AddVelocity(X * float(560));
            if(UNK_v6230.AmbientSound == none)
            {
                UNK_v6230.AmbientSound = PowerUpSound;
            }
        }
        if(int(RunePlayer(Owner).bAltFire) == 0)
        {
            if(UNK_v6230.AmbientSound != none)
            {
                UNK_v6230.AmbientSound = none;
            }
            if(B_v6232 == true)
            {
                B_v6232 = false;
            }
        }
    }
    return;
}

auto state eqA_vxv_2053
{    stop;
}

state Throw
{
    function BeginState()
    {
        bSimFall = true;
        ClearSwipeArray();
        SetPhysics(2);
        SetCollision(true, false, false);
        bCollideWorld = true;
        bBounce = true;
        bFixedRotationDir = true;
        bLookFocusPlayer = true;
        if(Owner == none)
        {
            return;
        }
        LastThrower = Owner;
        UNK_v6230 = ghook(PlayerPawn(Owner).Weapon);
        if(UNK_v6230 == none)
        {
            return;
        }
        AmbientSound = ThrownSoundLOOP;
        UNK_v6230.AmbientSound = ThrownSoundLOOP;
        bPlayedDropSound = false;
        HitMatterSoundCount = 0;
        UNK_v6231 = Spawn(Class'coadminz7.AssRope');
        UNK_v6231.SetOwner(UNK_v6230);
        UNK_v6231.SetBase(UNK_v6230);
        UNK_v6231.Target = self;
        return;
    }

    function HitWall(Vector Parm_Vector_0, Actor HitWall)
    {
        local Texture Texture;
        local Vector X, Y;
        local int i;

        GetAxes(Rotator(Velocity), X, Y, Y);
        MatterTrace(Location + (X * float(20)), Location,, Texture);
        if(Texture != none)
        {
            i = 0;
            J0x4B:

            if(i < 5)
            {
                if(Texture == UNK_v6230.eqA_vxv_6233[i])
                {
                    Destroy();
                    return;
                }
                i++;
                // [Loop Continue]
                goto J0x4B;
            }
        }
        bBounce = false;
        bFixedRotationDir = false;
        SetPhysics(0);
        AmbientSound = none;
        UNK_v6230.AmbientSound = none;
        Spawn(Class'RuneI.GroundDust',,,, Rotation);
        Spawn(Class'RuneI.SteamBlast',,,, Rotation);
        PlaySound(DropSound);
        UNK_v6230.PlaySound(UNK_v6230.PowerUpSound);
        return;
    }

    function Touch(Actor Parm_Actor_0)
    {
        if(Parm_Actor_0.IsA('SpawnTrigger'))
        {
            return;
        }
        if(((Parm_Actor_0.IsA('Pawn') && Owner != none) && Parm_Actor_0 != Owner) && bBounce == true)
        {
            Spawn(Class'RuneI.BloodMist');
            Parm_Actor_0.JointDamaged(2, Pawn(Owner), Location, Velocity * Mass, ThrownDamageType, 0);
            Destroy();
            return;            
        }
        else
        {
            if(Parm_Actor_0.IsA('DecorationRune') || Parm_Actor_0.IsA('Keypoint'))
            {
                if((Parm_Actor_0.IsA('DecorationRune') && DecorationRune(Parm_Actor_0).bDestroyable == true) || Parm_Actor_0.IsA('Keypoint'))
                {
                    Parm_Actor_0.JointDamaged(100, Pawn(Owner), Location, Velocity * Mass, ThrownDamageType, 0);
                    Destroy();
                    return;
                }
                bBounce = false;
                bFixedRotationDir = false;
                SetPhysics(0);
                AmbientSound = none;
                UNK_v6230.AmbientSound = none;
                Spawn(Class'RuneI.GroundDust',,,, Rotation);
                Spawn(Class'RuneI.SteamBlast',,,, Rotation);
                PlaySound(DropSound);
                UNK_v6230.PlaySound(UNK_v6230.PowerUpSound);                
            }
            else
            {
                return;
            }
        }
        return;
    }
    stop;
}

defaultproperties
{
    PoweredUpFireSound=none
    StowMesh=0
    Damage=0
    ThroughAir=none
    ThroughAirBerserk=none
    SheathSound=none
    UnsheathSound=none
    ThrownSoundLOOP=Sound'DoorsSnd.Various.drawbridge01L'
    PowerUpSound=Sound'DoorsSnd.Various.drawbridge03L'
    PoweredUpSoundLOOP=none
    PoweredUpEndingSound=none
    PoweredUpEndSound=none
    PickupSound=none
    RespawnSound=none
    DropSound=Sound'DoorsSnd.Metal.doormetalslam01'
    SoundRadius=8
    SoundVolume=32
    CollisionRadius=15.0000000
    CollisionHeight=8.0000000
    Skeletal=SkelModel'coadminz7.GHoo'
    SkelGroupSkins(0)=none
    SkelGroupSkins(1)=none
}