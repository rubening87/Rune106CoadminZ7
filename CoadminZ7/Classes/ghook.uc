class ghook extends RustyMace;

var AssHook UNK_v2841;
var Texture TXR_v6233;
var(Skeleton) SkelModel eqcolon_vxv_1838;
var(Skeleton) SkelModel eqcolon_vxv_1836;

function PowerUp()
{
    return;
}

function Destroyed()
{
    if(UNK_v2841 != none)
    {
        UNK_v2841.Destroy();
        UNK_v2841 = none;
    }
    super(Weapon).Destroyed();
    return;
}

function PreBeginPlay()
{
    local AssEndingPoint Local_AssEndingPoint_v0;

    super(Actor).PreBeginPlay();
    foreach AllActors(Class'coadminz7.AssEndingPoint', Local_AssEndingPoint_v0)
    {
        eqA_vxv_6233[0] = Local_AssEndingPoint_v0.eqA_vxv_6214[0];
        eqA_vxv_6233[1] = Local_AssEndingPoint_v0.eqA_vxv_6214[1];
        eqA_vxv_6233[2] = Local_AssEndingPoint_v0.eqA_vxv_6214[2];
        eqA_vxv_6233[3] = Local_AssEndingPoint_v0.eqA_vxv_6214[3];
        eqA_vxv_6233[4] = Local_AssEndingPoint_v0.eqA_vxv_6214[4];        
    }    
    return;
}

function WeaponFire(int Parm_int_0)
{
    local Vector X, Y, Z;

    if(((Owner == none) || !Owner.IsA('PlayerPawn')) || Region.Zone.bWaterZone == true)
    {
        return;
    }
    if(UNK_v2841 != none)
    {
        UNK_v2841.Destroy();
        UNK_v2841 = none;
        return;
    }
    UNK_v2841 = Spawn(Class'coadminz7.AssHook', Owner,,, PlayerPawn(Owner).ViewRotation);
    GetAxes(PlayerPawn(Owner).ViewRotation, X, Y, Z);
    UNK_v2841.Velocity = X * float(1500);
    UNK_v2841.GotoState('Throw');
    return;
}

function bool DoWeaponSwipe(Actor A, int LowMask, int HighMask, Vector Parm_Vector_0, Vector Parm_Vector_1, Vector Momentum)
{
    return false;
    return;
}

state Drop
{
    function BeginState()
    {
        Destroy();
        return;
    }
    stop;
}

state Throw
{
    function BeginState()
    {
        Destroy();
        return;
    }
    stop;
}

state Stow
{
    function BeginState()
    {
        bSweepable = false;
        if(bPoweredUp)
        {
            PowerupEnd();
        }
        PlaySound(SheathSound, 6,,,, 1.0000000 + ((FRand() * 0.2000000) - 0.1000000));
        SkelMesh = StowMesh;
        DrawScale = default.DrawScale;
        return;
    }

    function EndState()
    {
        bSweepable = default.bSweepable;
        if(!Region.Zone.bWaterZone)
        {
            PlaySound(UnsheathSound, 6,,,, 1.0000000 + ((FRand() * 0.2000000) - 0.1000000));
        }
        SubstituteMesh = eqcolon_vxv_1836;
        JointFlags[1] = byte(int(JointFlags[1]) & ~16);
        DrawScale = default.DrawScale;
        return;
    }
Begin:

    stop;            
}

defaultproperties
{
    eqcolon_vxv_1838=SkelModel'coadminz7.ghook'
    eqcolon_vxv_1836=SkelModel'coadminz7.ghook'
    PoweredUpFireSound=none
    StowMesh=0
    Damage=0
    rating=457
    ExtendedLength=0.0000000
    RunePowerRequired=0
    RunePowerDuration=0.0000000
    PowerupMessage=""
    ThroughAir=Sound'WeaponsSnd.Swings.swing28'
    ThroughAirBerserk=Sound'WeaponsSnd.Swings.swing28'
    ThrownSoundLOOP=Sound'WeaponsSnd.Throws.throw02L'
    PowerUpSound=Sound'DoorsSnd.Windows.window03'
    PoweredUpSoundLOOP=none
    PoweredUpEndingSound=none
    PoweredUpEndSound=none
    PowerupIcon=none
    PowerupIconAnim=none
    A_ForwardAttack="weapon1_attackD"
    A_AttackA="weapon1_attackD"
    A_AttackAReturn="None"
    A_AttackB="None"
    A_AttackBReturn="None"
    A_AttackC="None"
    A_AttackCReturn="None"
    A_AttackStandA="weapon1_attackD"
    A_AttackStandAReturn="None"
    A_AttackStandB="None"
    A_AttackStandBReturn="None"
    A_AttackBackupA="weapon1_attackD"
    A_AttackBackupAReturn="None"
    A_AttackBackupB="None"
    A_AttackBackupBReturn="None"
    A_AttackStrafeRight="weapon1_attackD"
    A_AttackStrafeLeft="weapon1_attackD"
    A_JumpAttack="weapon1_attackD"
    PickupMessage="You bear a Grab-Hook !"
    SoundRadius=8
    SoundVolume=16
    Mass=12.0000000
    Skeletal=SkelModel'coadminz7.ghook'
    SkelGroupSkins(0)=none
    SkelGroupSkins(1)=none
}