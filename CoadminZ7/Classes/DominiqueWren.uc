class DominiqueWren extends RunePlayer
    config(User);

function Texture PainSkin(int Parm_int_0)
{
    switch(Parm_int_0)
    {
        case 10:
            SkelGroupSkins[1] = Texture'coadminz7.eq_vxv_4478.domibbld';
            break;
        case 5:
            SkelGroupSkins[2] = Texture'coadminz7.eq_vxv_4478.domihdblood';
            break;
        case 1:
            SkelGroupSkins[5] = Texture'coadminz7.eq_vxv_4478.domialb';
            break;
        case 3:
            SkelGroupSkins[6] = Texture'coadminz7.eq_vxv_4478.domialb';
            break;
        case 6:
            SkelGroupSkins[10] = Texture'coadminz7.eq_vxv_4478.domialb';
            break;
        case 8:
            SkelGroupSkins[8] = Texture'coadminz7.eq_vxv_4478.domialb';
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
        case 2:
            return 5;
        case 5:
            return 1;
        case 6:
            return 3;
        case 10:
            return 6;
        case 8:
            return 8;
        case 4:
        case 7:
        case 11:
        
        case 1:
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
            SkelGroupSkins[7] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[7] = SkelGroupFlags[8] & ~1;
            break;
        case 3:
            SkelGroupSkins[4] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[4] = SkelGroupFlags[7] & ~1;
            break;
        case 5:
            SkelGroupSkins[11] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[11] = SkelGroupFlags[4] & ~1;
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
            return Class'coadminz7.Dominiquewrenarm';
        case 5:
            return Class'coadminz7.Dominiquewrenhead';
            break;
        default:
            break;
    }
    return none;
    return;
}

defaultproperties
{
    Die4=Sound'CreaturesSnd.Val.valdeath01'
    FallingDeathSound=Sound'CreaturesSnd.Val.valhit03'
    FallingScreamSound=Sound'CreaturesSnd.Val.valattack02'
    UnderWaterDeathSound=Sound'CreaturesSnd.Val.valdeath03'
    KickSound=Sound'CreaturesSnd.Val.valhit01'
    HitSoundLow(0)=Sound'CreaturesSnd.Val.valhit01'
    HitSoundLow(1)=Sound'CreaturesSnd.Val.valhit01'
    HitSoundLow(2)=Sound'CreaturesSnd.Val.valhit01'
    HitSoundMed(0)=Sound'CreaturesSnd.Val.valhit02'
    HitSoundMed(1)=Sound'CreaturesSnd.Val.valhit02'
    HitSoundMed(2)=Sound'CreaturesSnd.Val.valhit02'
    HitSoundHigh(0)=Sound'CreaturesSnd.Val.valhit03'
    HitSoundHigh(1)=Sound'CreaturesSnd.Val.valhit03'
    HitSoundHigh(2)=Sound'CreaturesSnd.Val.valhit03'
    BerserkSoundLoop=none
    Die=Sound'CreaturesSnd.Val.valdeath01'
    Die2=Sound'CreaturesSnd.Val.valdeath02'
    Die3=Sound'CreaturesSnd.Val.valdeath03'
    SubstituteMesh=SkelModel'HallsOfValhalla.Valkyrie'
    SkelGroupSkins(0)=Texture'coadminz7.eq_vxv_4478.domihd'
    SkelGroupSkins(1)=Texture'coadminz7.eq_vxv_4478.domibdy'
    SkelGroupSkins(2)=Texture'coadminz7.eq_vxv_4478.domihd'
    SkelGroupSkins(3)=Texture'coadminz7.eq_vxv_4478.domial'
    SkelGroupSkins(4)=Texture'coadminz7.eq_vxv_4478.domial'
    SkelGroupSkins(5)=Texture'coadminz7.eq_vxv_4478.domial'
    SkelGroupSkins(6)=Texture'coadminz7.eq_vxv_4478.domial'
    SkelGroupSkins(7)=Texture'coadminz7.eq_vxv_4478.domial'
    SkelGroupSkins(8)=Texture'coadminz7.eq_vxv_4478.domial'
    SkelGroupSkins(9)=Texture'coadminz7.eq_vxv_4478.domial'
    SkelGroupSkins(10)=Texture'coadminz7.eq_vxv_4478.domial'
    SkelGroupSkins(11)=Texture'coadminz7.eq_vxv_4478.domihd'
}