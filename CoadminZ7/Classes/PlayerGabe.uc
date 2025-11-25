class PlayerGabe extends PlayerTownRagnar
    config(User);

function Texture PainSkin(int Parm_int_0)
{
    switch(Parm_int_0)
    {
        case 10:
            SkelGroupSkins[8] = Texture'Gabe.gabetorsoblood';
            break;
        case 5:
            SkelGroupSkins[7] = Texture'Gabe.gabeheadblood';
            break;
        case 1:
            SkelGroupSkins[9] = Texture'Gabe.gabearmblood';
            break;
        case 3:
            SkelGroupSkins[4] = Texture'Gabe.gabearmblood';
            break;
        case 6:
            SkelGroupSkins[2] = Texture'Gabe.gabelegsblood';
            break;
        case 8:
            SkelGroupSkins[6] = Texture'Gabe.gabelegsblood';
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
        case 9:
            return 1;
        case 4:
            return 3;
        case 2:
            return 6;
        case 6:
            return 8;
        case 1:
        case 3:
        case 5:
        case 8:
        case 10:
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
            SkelGroupSkins[5] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[5] = SkelGroupFlags[5] & ~1;
            break;
        case 5:
            SkelGroupSkins[11] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[11] = SkelGroupFlags[11] & ~1;
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
            return Class'RuneI.TownRagnarArm';
        case 5:
            return Class'RuneI.TownRagnarHead';
        default:
            return none;
            break;
    }
    return;
}

defaultproperties
{
    SkelGroupSkins(0)=Texture'Gabe.gabearm'
    SkelGroupSkins(1)=Texture'Gabe.gabearm'
    SkelGroupSkins(2)=Texture'Gabe.gabelegs'
    SkelGroupSkins(3)=Texture'Gabe.gabearm'
    SkelGroupSkins(4)=Texture'Gabe.gabearm'
    SkelGroupSkins(5)=Texture'Gabe.gabearm'
    SkelGroupSkins(6)=Texture'Gabe.gabelegs'
    SkelGroupSkins(7)=Texture'Gabe.gabehead'
    SkelGroupSkins(8)=Texture'Gabe.gabetorso'
    SkelGroupSkins(9)=Texture'Gabe.gabearm'
    SkelGroupSkins(10)=Texture'Gabe.gabearm'
    SkelGroupSkins(11)=Texture'Gabe.gabearm'
    SkelGroupSkins(12)=Texture'Gabe.gabearm'
    SkelGroupSkins(13)=Texture'Gabe.gabearm'
    SkelGroupSkins(14)=Texture'Gabe.gabearm'
    SkelGroupSkins(15)=Texture'Gabe.gabearm'
}