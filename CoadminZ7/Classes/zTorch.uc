class zTorch extends Torch;

var float FLT_v5317;
var float FLT_v5318;
var int INT_v5319;

function Ignite()
{
    if(Region.Zone.bWaterZone)
    {
        return;
    }
    TorchFire = Spawn(Class'RuneI.TorchFire',,, GetJointPos(JointNamed('offset')));
    PlaySound(IgniteSound, 6);
    if(GetStateName() == 'Active')
    {
        TorchFire.bStasis = false;
    }
    AttachActorToJoint(TorchFire, JointNamed('offset'));
    SkelGroupSkins[1] = Texture'objects.Torchtorchburn';
    DamageType = 'Fire';
    bUnlit = true;
    ScaleGlow = 2.0000000;
    HitCount = 3;
    DouseTime = 0.0000000;
    A_Idle = default.A_Idle;
    A_Forward = default.A_Forward;
    A_Backward = default.A_Backward;
    A_Backward45Right = default.A_Backward45Right;
    A_Backward45Left = default.A_Backward45Left;
    A_StrafeRight = default.A_StrafeRight;
    A_StrafeLeft = default.A_StrafeLeft;
    A_Forward45Right = default.A_Forward45Right;
    A_Forward45Left = default.A_Forward45Left;
    A_AttackA = default.A_AttackA;
    A_AttackStrafeRight = default.A_AttackStrafeRight;
    A_AttackStrafeLeft = default.A_AttackStrafeLeft;
    A_AttackStandA = default.A_AttackStandA;
    A_AttackStandAReturn = default.A_AttackStandAReturn;
    A_AttackStandB = default.A_AttackStandB;
    A_AttackStandBReturn = default.A_AttackStandBReturn;
    A_AttackBackupA = default.A_AttackBackupA;
    A_AttackBackupAReturn = default.A_AttackBackupAReturn;
    A_Defend = default.A_Defend;
    A_DefendIdle = default.A_DefendIdle;
    A_LeverTrigger = default.A_LeverTrigger;
    A_Taunt = default.A_Taunt;
    LightType = 1;
    LightEffect = 0;
    LightBrightness = 240;
    LightHue = 20;
    LightSaturation = 20;
    LightRadius = 16;
    TorchFire.LightType = 1;
    TorchFire.LightEffect = 0;
    TorchFire.LightBrightness = 240;
    TorchFire.LightSaturation = byte(RandRange(0.0000000, 50.0000000));
    TorchFire.LightRadius = 16;
    return;
}

event Spawned()
{
    super(Actor).Spawned();
    LightSaturation = byte(RandRange(0.0000000, 50.0000000));
    FLT_v5317 = RandRange(0.0000000, 255.0000000);
    FLT_v5318 = RandRange(0.0000000, 255.0000000);
    INT_v5319 = int(RandRange(1.0000000, 10.0000000));
    return;
}

event Tick(float Delta)
{
    if(int(Role) == int(ROLE_Authority))
    {
        FLT_v5317 += (0.3000000 * float(INT_v5319));
        FLT_v5318 += 0.2000000;
        LightHue = byte(FLT_v5317);
        TorchFire.LightHue = byte(FLT_v5317);
        if(FLT_v5317 > float(255))
        {
            FLT_v5317 = 5.0000000;
        }
        if(FLT_v5318 > float(700))
        {
            bNegativeLight = true;
        }
        if(FLT_v5318 > float(710))
        {
            bNegativeLight = false;
        }
        if(FLT_v5318 > float(720))
        {
            FLT_v5318 = 0.0000000;
        }
    }
    super.Tick(Delta);
    return;
}
