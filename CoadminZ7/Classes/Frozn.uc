class Frozn extends PlayerPirate
    config(User);

function Texture PainSkin(int Parm_int_0)
{
    switch(Parm_int_0)
    {
        case 10:
            SkelGroupSkins[8] = Texture'coadminz7.eq_vxv_4478.frozn_bodypain';
            break;
        case 5:
            SkelGroupSkins[7] = Texture'coadminz7.eq_vxv_4478.frozn_headpain';
            break;
        case 1:
            SkelGroupSkins[9] = Texture'coadminz7.eq_vxv_4478.frozn_armspain';
            break;
        case 3:
            SkelGroupSkins[4] = Texture'coadminz7.eq_vxv_4478.frozn_armspain';
            break;
        case 6:
            SkelGroupSkins[2] = Texture'HallsOfValhalla.pi_LegsPain';
            break;
        case 8:
            SkelGroupSkins[6] = Texture'HallsOfValhalla.pi_LegsPain';
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
            return Class'coadminz7.FroznArm';
        case 5:
            return Class'coadminz7.FroznHead';
        default:
            return none;
            break;
    }
    return;
}

defaultproperties
{
    SkelGroupSkins(0)=Texture'coadminz7.eq_vxv_4478.frozn_arms'
    SkelGroupSkins(1)=Texture'coadminz7.eq_vxv_4478.frozn_arms'
    SkelGroupSkins(3)=Texture'coadminz7.eq_vxv_4478.frozn_arms'
    SkelGroupSkins(4)=Texture'coadminz7.eq_vxv_4478.frozn_arms'
    SkelGroupSkins(5)=Texture'coadminz7.eq_vxv_4478.frozn_arms'
    SkelGroupSkins(7)=Texture'coadminz7.eq_vxv_4478.frozn_head'
    SkelGroupSkins(8)=Texture'coadminz7.eq_vxv_4478.frozn_body'
    SkelGroupSkins(9)=Texture'coadminz7.eq_vxv_4478.frozn_arms'
    SkelGroupSkins(10)=Texture'coadminz7.eq_vxv_4478.frozn_arms'
    SkelGroupSkins(11)=Texture'coadminz7.eq_vxv_4478.frozn_arms'
    SkelGroupSkins(12)=Texture'coadminz7.eq_vxv_4478.frozn_arms'
    SkelGroupSkins(13)=Texture'coadminz7.eq_vxv_4478.frozn_arms'
    SkelGroupSkins(14)=Texture'coadminz7.eq_vxv_4478.frozn_arms'
    SkelGroupSkins(15)=Texture'coadminz7.eq_vxv_4478.frozn_arms'
}