class PlayerElder2 extends RunePlayer
    config(User);

function Texture PainSkin(int Parm_int_0)
{
    switch(Parm_int_0)
    {
        case 10:
            SkelGroupSkins[6] = Texture'Players.Ragnareld2_armrobepain';
            break;
        case 5:
            SkelGroupSkins[1] = Texture'Players.Ragnareld2_cowlfootpain';
            SkelGroupSkins[7] = Texture'Players.Ragnareld2_cowlfootpain';
            break;
        case 1:
            SkelGroupSkins[4] = Texture'Players.Ragnareld2_armrobepain';
            break;
        case 3:
            SkelGroupSkins[5] = Texture'Players.Ragnareld2_armrobepain';
            break;
        case 6:
            SkelGroupSkins[2] = Texture'Players.Ragnareld2_cowlfootpain';
            break;
        case 8:
            SkelGroupSkins[3] = Texture'Players.Ragnareld2_cowlfootpain';
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
        case 7:
            return 5;
        case 4:
            return 1;
        case 5:
            return 3;
        case 2:
            return 6;
        case 3:
            return 8;
        case 1:
        case 6:
        case 8:
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
        case 5:
            SkelGroupSkins[8] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[8] = SkelGroupFlags[8] & ~1;
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
            return Class'RuneI.ElderArm';
        case 5:
            return Class'RuneI.ElderHead';
        default:
            return none;
            break;
    }
    return;
}

defaultproperties
{
    HitSoundLow(0)=Sound'CreaturesSnd.Vikings.ulfhit01'
    HitSoundLow(1)=Sound'CreaturesSnd.Vikings.ulfhit01'
    HitSoundLow(2)=Sound'CreaturesSnd.Vikings.ulfhit01'
    HitSoundMed(0)=Sound'CreaturesSnd.Vikings.ulfhit02'
    HitSoundMed(1)=Sound'CreaturesSnd.Vikings.ulfhit02'
    HitSoundMed(2)=Sound'CreaturesSnd.Vikings.ulfhit02'
    HitSoundHigh(0)=Sound'CreaturesSnd.Vikings.ulfhit03'
    HitSoundHigh(1)=Sound'CreaturesSnd.Vikings.ulfhit03'
    HitSoundHigh(2)=Sound'CreaturesSnd.Vikings.ulfhit03'
    CarcassType=Class'RuneI.PlayerElderCarcass'
    Die=Sound'CreaturesSnd.Vikings.ulfdeath01'
    Die2=Sound'CreaturesSnd.Vikings.ulfdeath01'
    Die3=Sound'CreaturesSnd.Vikings.ulfdeath01'
    SkelMesh=15
    SkelGroupSkins(0)=Texture'Players.Ragnarragd_arms'
    SkelGroupSkins(1)=Texture'Players.Ragnareld2_cowlfoot'
    SkelGroupSkins(2)=Texture'Players.Ragnareld2_cowlfoot'
    SkelGroupSkins(3)=Texture'Players.Ragnareld2_cowlfoot'
    SkelGroupSkins(4)=Texture'Players.Ragnareld2_armrobe'
    SkelGroupSkins(5)=Texture'Players.Ragnareld2_armrobe'
    SkelGroupSkins(6)=Texture'Players.Ragnareld2_armrobe'
    SkelGroupSkins(7)=Texture'Players.Ragnareld2_cowlfoot'
    SkelGroupSkins(8)=Texture'Players.Ragnarragd_arms'
}