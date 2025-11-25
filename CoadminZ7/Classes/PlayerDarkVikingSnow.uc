class PlayerDarkVikingSnow extends PlayerDarkViking
    config(User);

function Texture PainSkin(int Parm_int_0)
{
    switch(Parm_int_0)
    {
        case 10:
            SkelGroupSkins[2] = Texture'Players.Ragnarsnov_bodypain';
            break;
        case 5:
            SkelGroupSkins[3] = Texture'Players.Ragnarsnov_headpain';
            break;
        case 1:
            SkelGroupSkins[10] = Texture'Players.Ragnarsnov_armlegpain';
            SkelGroupSkins[12] = Texture'Players.Ragnarsnov_armlegpain';
            break;
        case 3:
            SkelGroupSkins[7] = Texture'Players.Ragnarsnov_armlegpain';
            SkelGroupSkins[11] = Texture'Players.Ragnarsnov_armlegpain';
            break;
        case 6:
            SkelGroupSkins[1] = Texture'Players.Ragnarsnov_armlegpain';
            break;
        case 8:
            SkelGroupSkins[4] = Texture'Players.Ragnarsnov_armlegpain';
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
        case 3:
        case 5:
            return 5;
        case 12:
            return 1;
        case 11:
            return 3;
        case 1:
            return 6;
        case 4:
            return 8;
        case 2:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
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
            SkelGroupSkins[8] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[8] = SkelGroupFlags[8] & ~1;
            break;
        case 5:
            SkelGroupSkins[6] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[6] = SkelGroupFlags[6] & ~1;
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
            return Class'RuneI.SnowRagnarArm';
        case 3:
            return Class'RuneI.SnowRagnarArm';
        case 5:
            return Class'RuneI.DarkVikingHead';
            break;
        default:
            break;
    }
    return none;
    return;
}

defaultproperties
{
    SkelGroupSkins(0)=Texture'Players.Ragnarsnov_armleg'
    SkelGroupSkins(1)=Texture'Players.Ragnarsnov_armleg'
    SkelGroupSkins(2)=Texture'Players.Ragnarsnov_body'
    SkelGroupSkins(3)=Texture'Players.Ragnarsnov_head'
    SkelGroupSkins(4)=Texture'Players.Ragnarsnov_armleg'
    SkelGroupSkins(5)=Texture'Players.Ragnarsnov_head'
    SkelGroupSkins(6)=Texture'Players.Ragnarsnov_armleg'
    SkelGroupSkins(7)=Texture'Players.Ragnarsnov_armleg'
    SkelGroupSkins(8)=Texture'Players.Ragnarsnov_armleg'
    SkelGroupSkins(9)=Texture'Players.Ragnarsnov_armleg'
    SkelGroupSkins(10)=Texture'Players.Ragnarsnov_armleg'
    SkelGroupSkins(11)=Texture'Players.Ragnarsnov_armleg'
    SkelGroupSkins(12)=Texture'Players.Ragnarsnov_armleg'
}