class CoopSarkRagnar extends RunePlayer
    config(User);

function PlayerRestart()
{
    local Actor Local_CTTorch_v1;

    super.PlayerRestart();
    Local_CTTorch_v1 = Spawn(Class'RuneI.SarkEyeRagnar', self);
    AttachActorToJoint(Local_CTTorch_v1, JointNamed('Head'));
    return;
}

function PostBeginPlay()
{
    local Actor Local_CTTorch_v1;

    super.PostBeginPlay();
    Local_CTTorch_v1 = Spawn(Class'RuneI.SarkEyeRagnar');
    AttachActorToJoint(Local_CTTorch_v1, JointNamed('Head'));
    return;
}

function Texture PainSkin(int Parm_int_0)
{
    switch(Parm_int_0)
    {
        case 10:
            SkelGroupSkins[1] = Texture'Players.RagnarRagsrk_bodypain';
            break;
        case 5:
            SkelGroupSkins[13] = Texture'Players.RagnarRagsrk_headpain';
            break;
        case 1:
            SkelGroupSkins[10] = Texture'Players.RagnarRagsrk_armspain';
            SkelGroupSkins[11] = Texture'Players.RagnarRagsrk_armspain';
            break;
        case 3:
            SkelGroupSkins[6] = Texture'Players.RagnarRagsrk_armspain';
            SkelGroupSkins[7] = Texture'Players.RagnarRagsrk_armspain';
            break;
        case 6:
            SkelGroupSkins[3] = Texture'Players.RagnarRagsrk_legspain';
            SkelGroupSkins[8] = Texture'Players.RagnarRagsrk_legspain';
            break;
        case 8:
            SkelGroupSkins[2] = Texture'Players.RagnarRagsrk_legspain';
            SkelGroupSkins[4] = Texture'Players.RagnarRagsrk_legspain';
            break;
        default:
            break;
    }
    return none;
    return;
}

function int BodyPartForPolyGroup(int Parm_int_0)
{
    switch(Parm_int_0)
    {
        case 13:
            return 5;
        case 10:
            return 1;
        case 6:
        case 14:
        case 15:
            return 3;
        case 8:
            return 6;
        case 4:
            return 8;
        case 1:
        case 2:
        case 3:
        case 5:
        case 7:
        case 9:
        case 11:
        case 12:
            return 10;
        default:
            return 0;
            break;
    }
    return;
}

function ApplyGoreCap(int Parm_int_0)
{
    switch(Parm_int_0)
    {
        case 1:
            SkelGroupSkins[9] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[9] = SkelGroupFlags[9] & ~1;
            break;
        case 3:
            SkelGroupSkins[5] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[5] = SkelGroupFlags[5] & ~1;
            break;
        case 5:
            SkelGroupSkins[12] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[12] = SkelGroupFlags[12] & ~1;
            break;
        default:
            break;
    }
    return;
}

function Class<Actor> SeveredLimbClass(int Parm_int_0)
{
    switch(Parm_int_0)
    {
        case 1:
        case 3:
            return Class'RuneI.SarkRagnarArm';
        case 5:
            return Class'RuneI.SarkRagnarHead';
        default:
            return none;
            break;
    }
    return;
}

function PainTimer()
{
    local int i, Local_int_v0;
    local float Local_float_v0;
    local Vector Local_Vector_v0;
    local LokiHealthTrail Local_int_v0;

    if((Health < 0) || int(Level.NetMode) == int(NM_Client))
    {
        return;
    }
    if(FootRegion.Zone.bPainZone && FootRegion.Zone.bLokiBloodZone)
    {
        if(Health < MaxHealth)
        {
            Local_int_v0 = LokiBloodZone(FootRegion.Zone).ExtractHealth();
            if(Local_int_v0 > 0)
            {
                Health += Local_int_v0;
                if(Health > MaxHealth)
                {
                    Health = MaxHealth;
                }
                i = 0;
                J0xBC:

                if(i < 4)
                {
                    Local_Vector_v0 = vect(0.0000000, 0.0000000, 20.0000000);
                    Local_Vector_v0.Z += (FRand() * float(10));
                    Local_int_v0 = Spawn(Class'RuneI.LokiHealthTrail', self,, Location - Local_Vector_v0);
                    Local_int_v0.Amplitude = 25.0000000;
                    Local_int_v0.Velocity.X = 4.0000000 + (float(i) * 2.5000000);
                    Local_int_v0.Velocity.Z = 60.0000000 + float(i * 10);
                    Local_int_v0.LifeSpan = (5.0000000 - float(i)) * 0.3500000;
                    if((i == 0) || i == 2)
                    {
                        Local_int_v0.Velocity.X *= float(-1);
                    }
                    i++;
                    // [Loop Continue]
                    goto J0xBC;
                }
            }
        }
        PainTime = 1.0000000;
        return;
    }
    super(Pawn).PainTimer();
    return;
}

function PlayTakeHit(float Parm_float_0, int Damage, Vector Parm_Vector_0, name DamageType, Vector Momentum, int Parm_int_0)
{
    local float Local_float_v0, Local_float_v0;

    Local_float_v0 = FClamp(float(Damage), 10.0000000, 40.0000000);
    if(DamageType == 'burned')
    {
        ClientFlash(-0.0093750 * Local_float_v0, Local_float_v0 * vect(16.4100000, 11.7190000, 4.6875000));        
    }
    else
    {
        if(DamageType == 'corroded')
        {
            ClientFlash(-0.0117188 * Local_float_v0, Local_float_v0 * vect(9.3750000, 14.0625000, 4.6875000));            
        }
        else
        {
            if(DamageType == 'drowned')
            {
                ClientFlash(-0.3900000, vect(312.5000000, 468.7500000, 468.7500000));                
            }
            else
            {
                ClientFlash(-0.0170000 * Local_float_v0, Local_float_v0 * vect(20.0000000, 4.0000000, 20.0000000));
            }
        }
    }
    Local_float_v0 = 0.1500000 + (0.0050000 * float(Damage));
    ShakeView(Local_float_v0, float(Damage * 10), Local_float_v0 * 0.5000000);
    super.PlayTakeHit(Parm_float_0, Damage, Parm_Vector_0, DamageType, Momentum, Parm_int_0);
    return;
}

defaultproperties
{
    ExploreSpeed=472.0000000
    CombatSpeed=337.0000000
    Die4=Sound'CreaturesSnd.Ragnar.ragsarkdeath04'
    JumpGruntSound(1)=Sound'CreaturesSnd.Ragnar.ragsarkjump02'
    FallingDeathSound=Sound'CreaturesSnd.Ragnar.ragsarkland02'
    FallingScreamSound=Sound'CreaturesSnd.Ragnar.ragsarkfall01'
    HitSoundLow(0)=Sound'CreaturesSnd.Ragnar.ragsarkhit01'
    HitSoundLow(1)=Sound'CreaturesSnd.Ragnar.ragsarkhit02'
    HitSoundLow(2)=Sound'CreaturesSnd.Ragnar.ragsarkhit03'
    HitSoundMed(0)=Sound'CreaturesSnd.Ragnar.ragsarkhit04'
    HitSoundMed(1)=Sound'CreaturesSnd.Ragnar.ragsarkhit05'
    HitSoundMed(2)=Sound'CreaturesSnd.Ragnar.ragsarkhit06'
    HitSoundHigh(0)=Sound'CreaturesSnd.Ragnar.ragsarkhit07'
    HitSoundHigh(1)=Sound'CreaturesSnd.Ragnar.ragsarkhit08'
    HitSoundHigh(2)=Sound'CreaturesSnd.Ragnar.ragsarkhit09'
    BerserkSoundStart=Sound'CreaturesSnd.Ragnar.ragsarkberstart'
    BerserkSoundEnd=Sound'CreaturesSnd.Ragnar.ragsarkberend'
    BerserkSoundLoop=Sound'CreaturesSnd.Ragnar.ragsarkberzerkL'
    BerserkYellSound(0)=Sound'CreaturesSnd.Ragnar.ragsarkattack01'
    BerserkYellSound(1)=Sound'CreaturesSnd.Ragnar.ragsarkattack02'
    BerserkYellSound(2)=Sound'CreaturesSnd.Ragnar.ragsarkattack03'
    BerserkYellSound(3)=Sound'CreaturesSnd.Ragnar.ragsarkattack04'
    BerserkYellSound(4)=Sound'CreaturesSnd.Ragnar.ragsarkattack05'
    BerserkYellSound(5)=Sound'CreaturesSnd.Ragnar.ragsarkattack06'
    GroundSpeed=384.0000000
    JumpZ=715.0000000
    BaseEyeHeight=45.0000000
    EyeHeight=45.0000000
    Health=160
    MaxHealth=160
    Die=Sound'CreaturesSnd.Ragnar.ragsarkdeath01'
    Die2=Sound'CreaturesSnd.Ragnar.ragsarkdeath02'
    Die3=Sound'CreaturesSnd.Ragnar.ragsarkdeath03'
    LandSoundWood=Sound'CreaturesSnd.Sark.sarkland02'
    LandSoundMetal=Sound'CreaturesSnd.Sark.sarkland02'
    LandSoundStone=Sound'CreaturesSnd.Sark.sarkland02'
    LandSoundFlesh=Sound'CreaturesSnd.Sark.sarkland02'
    LandSoundIce=Sound'CreaturesSnd.Sark.sarkland02'
    LandSoundSnow=Sound'CreaturesSnd.Sark.sarkland02'
    LandSoundEarth=Sound'CreaturesSnd.Sark.sarkland02'
    LandSoundWater=Sound'CreaturesSnd.Sark.sarkland02'
    LandSoundMud=Sound'CreaturesSnd.Sark.sarkland02'
    LandSoundLava=Sound'CreaturesSnd.Sark.sarkland02'
    DrawScale=1.5000000
    CollisionRadius=27.0000000
    CollisionHeight=63.0000000
    SkelMesh=24
    SkelGroupSkins(0)=Texture'Players.RagnarRagsrk_arms'
    SkelGroupSkins(1)=Texture'Players.RagnarRagsrk_body'
    SkelGroupSkins(2)=Texture'Players.RagnarRagsrk_legs'
    SkelGroupSkins(3)=Texture'Players.RagnarRagsrk_legs'
    SkelGroupSkins(4)=Texture'Players.RagnarRagsrk_legs'
    SkelGroupSkins(5)=Texture'Players.RagnarRagsrk_arms'
    SkelGroupSkins(6)=Texture'Players.RagnarRagsrk_arms'
    SkelGroupSkins(7)=Texture'Players.RagnarRagsrk_arms'
    SkelGroupSkins(8)=Texture'Players.RagnarRagsrk_legs'
    SkelGroupSkins(9)=Texture'Players.RagnarRagsrk_arms'
    SkelGroupSkins(10)=Texture'Players.RagnarRagsrk_arms'
    SkelGroupSkins(11)=Texture'Players.RagnarRagsrk_arms'
    SkelGroupSkins(12)=Texture'Players.RagnarRagsrk_arms'
    SkelGroupSkins(13)=Texture'Players.RagnarRagsrk_head'
    SkelGroupSkins(14)=Texture'Players.RagnarRagsrk_arms'
    SkelGroupSkins(15)=Texture'Players.RagnarRagsrk_arms'
}