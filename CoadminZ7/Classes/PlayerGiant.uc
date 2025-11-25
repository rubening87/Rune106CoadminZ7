class PlayerGiant extends RunePlayer
    config(User);

static function SetSkinActor(Actor Parm_Actor_0, int Parm_int_0)
{
    return;
}

function Texture PainSkin(int Parm_int_0)
{
    switch(Parm_int_0)
    {
        case 5:
            SkelGroupSkins[5] = Texture'VWCreatures.Giantfg_headpain';
            break;
        case 10:
            SkelGroupSkins[1] = Texture'VWCreatures.Giantfg_neckgore';
            SkelGroupSkins[2] = Texture'VWCreatures.Giantfg_armlegpain';
            SkelGroupSkins[3] = Texture'VWCreatures.Giantfg_torsopain';
            SkelGroupSkins[4] = Texture'VWCreatures.Giantfg_headpain';
            break;
        case 1:
            SkelGroupSkins[9] = Texture'VWCreatures.Giantfg_armlegpain';
            SkelGroupSkins[11] = Texture'VWCreatures.Giantfg_armlegpain';
            break;
        case 3:
            SkelGroupSkins[6] = Texture'VWCreatures.Giantfg_armlegpain';
            SkelGroupSkins[8] = Texture'VWCreatures.Giantfg_armlegpain';
            break;
        case 6:
            SkelGroupSkins[10] = Texture'VWCreatures.Giantfg_armlegpain';
            break;
        case 8:
            SkelGroupSkins[7] = Texture'VWCreatures.Giantfg_armlegpain';
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
        case 11:
            return 1;
        case 8:
        case 6:
            return 3;
        case 10:
            return 6;
        case 7:
            return 8;
        case 1:
        case 2:
        case 3:
        case 4:
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
        case 3:
            break;
        case 5:
            SkelGroupSkins[1] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[1] = SkelGroupFlags[1] & ~1;
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
            return Class'VWCreatures.FrostGiantArm';
        case 5:
            return Class'VWCreatures.FrostGiantHead';
        default:
            return none;
            break;
    }
    return;
}

defaultproperties
{
    HitSound1=Sound'CreaturesSnd.Vikings.berzerkhit03'
    HitSound2=Sound'CreaturesSnd.Vikings.berzerkhit02'
    HitSound3=Sound'CreaturesSnd.Vikings.berzerkhit03'
    Die=Sound'CreaturesSnd.Vikings.berzerkdeath02'
    Die2=Sound'CreaturesSnd.Vikings.berzerkdeath02'
    Die3=Sound'CreaturesSnd.Vikings.berzerkdeath02'
    LandGrunt=Sound'CreaturesSnd.Vikings.berzerkhit02'
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
    SubstituteMesh=SkelModel'VWCreatures.Giant'
}