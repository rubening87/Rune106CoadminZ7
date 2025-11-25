class theplayerkarl extends PlayerKarl
    config(User);

function Texture PainSkin(int Parm_int_0)
{
    switch(Parm_int_0)
    {
        case 10:
            SkelGroupSkins[1] = Texture'Players.Ragnaral_chestpain';
            break;
        case 5:
            SkelGroupSkins[5] = Texture'Players.Ragnarkarl_headpain';
            break;
        case 1:
            SkelGroupSkins[11] = Texture'Players.Ragnaral_armlegpain';
            SkelGroupSkins[9] = Texture'Players.Ragnaral_armlegpain';
            break;
        case 3:
            SkelGroupSkins[6] = Texture'Players.Ragnaral_armlegpain';
            SkelGroupSkins[8] = Texture'Players.Ragnaral_armlegpain';
            break;
        case 6:
            SkelGroupSkins[3] = Texture'Players.Ragnaral_armlegpain';
            SkelGroupSkins[12] = Texture'Players.Ragnaral_armlegpain';
            break;
        case 8:
            SkelGroupSkins[2] = Texture'Players.Ragnaral_armlegpain';
            SkelGroupSkins[13] = Texture'Players.Ragnaral_armlegpain';
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
        case 5:
            return 5;
        case 9:
            return 1;
        case 8:
            return 3;
        case 3:
        case 12:
            return 6;
        case 2:
        case 13:
            return 8;
        case 1:
        case 4:
        case 7:
        case 10:
        case 6:
        case 11:
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
            SkelGroupSkins[10] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[10] = SkelGroupFlags[10] & ~1;
            break;
        case 3:
            SkelGroupSkins[7] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[7] = SkelGroupFlags[7] & ~1;
            break;
        case 5:
            SkelGroupSkins[4] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[4] = SkelGroupFlags[4] & ~1;
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
            return Class'coadminz7.theplayerkarllarm';
        case 3:
            return Class'coadminz7.theplayerkarlrarm';
        case 5:
            return Class'RuneI.KarlHead';
            break;
        default:
            break;
    }
    return none;
    return;
}

defaultproperties
{
    SkelGroupSkins(1)=Texture'Players.Ragnaral_chest'
    SkelGroupSkins(2)=Texture'Players.Ragnaral_armleg'
    SkelGroupSkins(3)=Texture'Players.Ragnaral_armleg'
    SkelGroupSkins(6)=Texture'Players.Ragnaral_armleg'
    SkelGroupSkins(8)=Texture'Players.Ragnaral_armleg'
    SkelGroupSkins(9)=Texture'Players.Ragnaral_armleg'
    SkelGroupSkins(11)=Texture'Players.Ragnaral_armleg'
    SkelGroupSkins(12)=Texture'Players.Ragnaral_armleg'
    SkelGroupSkins(13)=Texture'Players.Ragnaral_armleg'
}