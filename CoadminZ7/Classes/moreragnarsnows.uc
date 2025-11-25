class moreragnarsnows extends RagnarSnow
    config(User);

function Texture PainSkin(int Parm_int_0)
{
    switch(Parm_int_0)
    {
        case 10:
            SkelGroupSkins[2] = Texture'Players.Ragnarragsno_torsopain';
            break;
        case 5:
            SkelGroupSkins[11] = Texture'Players.Ragnartn_headpain';
            break;
        case 1:
            SkelGroupSkins[10] = Texture'Players.Ragnarragsno_armlegpain';
            break;
        case 3:
            SkelGroupSkins[9] = Texture'Players.Ragnarragsno_armlegpain';
            break;
        case 6:
            SkelGroupSkins[1] = Texture'Players.Ragnarragsno_armlegpain';
            break;
        case 8:
            SkelGroupSkins[3] = Texture'Players.Ragnarragsno_armlegpain';
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
        case 11:
            return 5;
        case 10:
            return 1;
        case 9:
            return 3;
        case 1:
            return 6;
        case 3:
            return 8;
        case 2:
        case 4:
        case 5:
        case 6:
        case 7:
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
        case 1:
            SkelGroupSkins[7] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[7] = SkelGroupFlags[7] & ~1;
            break;
        case 3:
            SkelGroupSkins[6] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[6] = SkelGroupFlags[6] & ~1;
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
        case 3:
            return Class'RuneI.SnowRagnarArm';
        case 5:
            return Class'RuneI.TownRagnarHead';
        default:
            return none;
            break;
    }
    return;
}

static function int GetNumSkins()
{
    return 9;
    return;
}

static function string GetSkinName(int Skin)
{
    switch(Skin)
    {
        case 0:
            return "FullSnowRagnar";
        case 1:
            return "-LiteSnowRagnar";
        case 2:
            return "-SnowPitRagnar";
        case 3:
            return "-LiteArmorRagnar";
        case 4:
            return "-LiteArmorRagnar2";
        case 5:
            return "-VillageMeshRagnar";
        case 6:
            return "-MetalGearRagnar";
        case 7:
            return "-MetalGearRagnar2";
        case 8:
            return "-FullMetalGearRagnar";
        default:
            return "";
            break;
    }
    return;
}

static function SetSkinActor(Actor Parm_Actor_0, int Parm_int_0)
{
    local Texture Local_Texture_v0, Local_Texture_v1, Local_Texture_v2, Local_Texture_v3, Local_Texture_v4;

    local int i;

    switch(Parm_int_0)
    {
        case 0:
            i = 0;
            J0x12:

            if(i < 16)
            {
                Parm_Actor_0.SkelGroupSkins[i] = default.SkelGroupSkins[i];
                i++;
                // [Loop Continue]
                goto J0x12;
            }
            break;
        case 1:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.ragnarsnov_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnarragtp_body", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnartn_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnardv_hair", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v2;
            break;
        case 2:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.ragnarsnov_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("players.Ragnarragsno_torso", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarragtp_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnardv_hair", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v2;
            break;
        case 3:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.ragnarsnov_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarz_body1", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarragtp_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnarcon_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.Ragnarsc_armleg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v2;
            break;
        case 4:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.ragnarsnov_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarz_body", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarragtp_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnarcon_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.Ragnarsc_armleg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v2;
            break;
        case 5:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.ragnarsnov_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarz_body", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarragtp_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnardv_hair", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.ragnarz_armleg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v2;
            break;
        case 6:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.ragnarsnov_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarz_body1", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarragtp_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnarcon_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.ragnarb_leg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v2;
            break;
        case 7:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.ragnarsnov_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarz_body", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarragtp_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnarcon_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.ragnarb_leg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v2;
            break;
        case 8:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.ragnarsnov_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarlg_body", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarragtp_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnarcon_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.ragnarb_leg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v2;
            break;
        default:
            break;
    }
    return;
}

function SpecialPainSkin(int Parm_int_0)
{
    local Texture Local_Texture_v0, Local_Texture_v1, Local_Texture_v2, Local_Texture_v3;

    switch(CurrentSkin)
    {
        case 1:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.ragnarsnov_armlegpain", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnarragtp_bodypain", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("Players.Ragnartn_headpain", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[2] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[11] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[10] = Local_Texture_v0;
                    break;
                case 3:
                    SkelGroupSkins[9] = Local_Texture_v0;
                    break;
                case 6:
                    SkelGroupSkins[1] = Local_Texture_v0;
                    break;
                case 8:
                    SkelGroupSkins[3] = Local_Texture_v0;
                    break;
                default:
                    break;
            }
            break;
        case 2:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.ragnarsnov_armlegpain", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnarsnov_bodypain", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("Players.Ragnarragtp_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnardv_armlegpain", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[2] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[11] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[10] = Local_Texture_v0;
                    break;
                case 3:
                    SkelGroupSkins[9] = Local_Texture_v0;
                    break;
                case 6:
                    SkelGroupSkins[1] = Local_Texture_v0;
                    break;
                case 8:
                    SkelGroupSkins[3] = Local_Texture_v0;
                    break;
                default:
                    break;
            }
            break;
        case 3:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.ragnarcon_armlegpain", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarz_body1", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarragtp_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.Ragnarsc_armlegpain", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[2] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[11] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[10] = Local_Texture_v0;
                    break;
                case 3:
                    SkelGroupSkins[9] = Local_Texture_v0;
                    break;
                case 6:
                    SkelGroupSkins[1] = Local_Texture_v3;
                    break;
                case 8:
                    SkelGroupSkins[3] = Local_Texture_v3;
                    break;
                default:
                    break;
            }
            break;
        E
        case 4:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.ragnarcon_armlegpain", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarz_body", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarragtp_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.Ragnarsc_armlegpain", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[2] = Local_Texture_v1;
                    B
                    break;
                case 5:
                    SkelGroupSkins[11] = Local_Texture_v2;
                    B
                    break;
                case 1:
                    SkelGroupSkins[10] = Local_Texture_v0;
                    B
                    break;
                case 3:
                    SkelGroupSkins[9] = Local_Texture_v0;
                    B
                    break;
                case 6:
                    SkelGroupSkins[1] = Local_Texture_v3;
                    B
                    break;
                8
                case 8:
                    SkelGroupSkins[3] = Local_Texture_v3;
                    B
                    break;
                default:
                    break;
            }
            break;
        case 5:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.ragnarsnov_armlegpain", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarz_body", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarragtp_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnarz_armleg", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[2] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[11] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[10] = Local_Texture_v3;
                    break;
                case 3:
                    SkelGroupSkins[9] = Local_Texture_v3;
                    break;
                case 6:
                    SkelGroupSkins[1] = Local_Texture_v3;
                    break;
                case 8:
                    SkelGroupSkins[3] = Local_Texture_v3;
                    break;
                default:
                    break;
            }
            break;
        default:
            break;
    }
    return;
}

defaultproperties
{
    FovAngle=90.0000000
    SkinDefaultText="custom clothes"
}