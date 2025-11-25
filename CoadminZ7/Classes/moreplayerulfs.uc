class moreplayerulfs extends PlayerUlf
    config(User);

function Texture PainSkin(int Parm_int_0)
{
    switch(Parm_int_0)
    {
        case 10:
            SkelGroupSkins[3] = Texture'Players.Ragnarwolf_chestpain';
            break;
        case 5:
            SkelGroupSkins[13] = Texture'Players.Ragnarulf_headpain';
            break;
        case 1:
            SkelGroupSkins[12] = Texture'Players.Ragnarwolf_armlegpain';
            SkelGroupSkins[11] = Texture'Players.Ragnarwolf_armlegpain';
            break;
        case 3:
            SkelGroupSkins[8] = Texture'Players.Ragnarwolf_armlegpain';
            SkelGroupSkins[7] = Texture'Players.Ragnarwolf_armlegpain';
            break;
        case 6:
            SkelGroupSkins[2] = Texture'Players.Ragnarwolf_armlegpain';
            SkelGroupSkins[9] = Texture'Players.Ragnarwolf_armlegpain';
            break;
        case 8:
            SkelGroupSkins[1] = Texture'Players.Ragnarwolf_armlegpain';
            SkelGroupSkins[5] = Texture'Players.Ragnarwolf_armlegpain';
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
        case 11:
            return 1;
        case 7:
            return 3;
        case 2:
        case 9:
            return 6;
        case 1:
        case 5:
            return 8;
        case 3:
        case 4:
        case 6:
        case 8:
        case 10:
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
            SkelGroupSkins[10] = Texture'RuneFX.gore_bone';
            SkelGroupFlags[10] = SkelGroupFlags[10] & ~1;
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
            return Class'RuneI.WolfLArm';
        case 3:
            return Class'RuneI.WolfRArm';
        case 5:
            return Class'RuneI.UlfHead';
            break;
        default:
            break;
    }
    return none;
    return;
}

static function int GetNumSkins()
{
    return 6;
    return;
}

static function string GetSkinName(int Skin)
{
    switch(Skin)
    {
        case 0:
            return "Ulf";
        case 1:
            return "-ArmoredUlf";
        case 2:
            return "-ArmoredUlf2";
        case 3:
            return "-ArmoredUlf3";
        case 4:
            return "-VillageUlf";
        case 5:
            return "-VillageUlf2";
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
            Local_Texture_v0 = Texture(DynamicLoadObject("players.RagnarRagsrk_legs", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnarsc_torso", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarulf_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnarsh_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.Ragnarcon_armleg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[6] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[12] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[13] = Local_Texture_v2;
            Parm_Actor_0.SkelGroupSkins[14] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[15] = Local_Texture_v0;
            break;
        case 2:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.RagnarRagsrk_legs", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnarcon_chest", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarulf_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnarsh_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.Ragnarcon_armleg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[6] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[12] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[13] = Local_Texture_v2;
            Parm_Actor_0.SkelGroupSkins[14] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[15] = Local_Texture_v0;
            break;
        case 3:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.RagnarRagsrk_legs", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnarsc_torso", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarulf_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnarsh_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.Ragnarcon_armleg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[6] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[12] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[13] = Local_Texture_v2;
            Parm_Actor_0.SkelGroupSkins[14] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[15] = Local_Texture_v0;
            break;
        case 4:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.Ragnartn_leg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnardv_body", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarulf_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnarsh_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.Ragnarsig_armleg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[6] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[12] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[13] = Local_Texture_v2;
            Parm_Actor_0.SkelGroupSkins[14] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[15] = Local_Texture_v0;
            break;
        case 5:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.Ragnarwolf_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnarsig_body", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarulf_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnarsh_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.Ragnarsig_armleg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[6] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[12] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[13] = Local_Texture_v2;
            Parm_Actor_0.SkelGroupSkins[14] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[15] = Local_Texture_v0;
            break;
        default:
            break;
    }
    return;
}

function SpecialPainSkin(int Parm_int_0)
{
    local Texture Local_Texture_v0, Local_Texture_v1, Local_Texture_v2, Local_Texture_v3, Local_Texture_v4;

    switch(CurrentSkin)
    {
        case 1:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.RagnarRagsrk_legs", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnarsc_torsopain", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarulf_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnarsh_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.Ragnarcon_armlegpain", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[3] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[13] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[12] = Local_Texture_v4;
                    break;
                case 3:
                    SkelGroupSkins[7] = Local_Texture_v4;
                    SkelGroupSkins[8] = Local_Texture_v4;
                    break;
                case 6:
                    SkelGroupSkins[1] = Local_Texture_v4;
                    SkelGroupSkins[9] = Local_Texture_v3;
                    break;
                case 8:
                    SkelGroupSkins[2] = Local_Texture_v4;
                    SkelGroupSkins[5] = Local_Texture_v3;
                    break;
                default:
                    break;
            }
            break;
        case 2:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.RagnarRagsrk_legs", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnarcon_chestpain", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarulf_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnarsh_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.Ragnarcon_armlegpain", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[3] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[13] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[12] = Local_Texture_v4;
                    break;
                case 3:
                    SkelGroupSkins[7] = Local_Texture_v4;
                    SkelGroupSkins[8] = Local_Texture_v4;
                    break;
                case 6:
                    SkelGroupSkins[1] = Local_Texture_v4;
                    SkelGroupSkins[9] = Local_Texture_v3;
                    break;
                case 8:
                    SkelGroupSkins[2] = Local_Texture_v4;
                    SkelGroupSkins[5] = Local_Texture_v3;
                    break;
                default:
                    break;
            }
            break;
        case 3:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.RagnarRagsrk_legspain", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnarsc_torsopain", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarulf_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnarsh_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.Ragnarcon_armlegpain", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[3] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[13] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[12] = Local_Texture_v4;
                    break;
                case 3:
                    SkelGroupSkins[7] = Local_Texture_v4;
                    SkelGroupSkins[8] = Local_Texture_v4;
                    break;
                case 6:
                    SkelGroupSkins[1] = Local_Texture_v0;
                    SkelGroupSkins[9] = Local_Texture_v0;
                    break;
                case 8:
                    SkelGroupSkins[2] = Local_Texture_v0;
                    SkelGroupSkins[5] = Local_Texture_v0;
                    break;
                default:
                    break;
            }
            break;
        case 4:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.Ragnartn_leg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnardv_bodypain", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarulf_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnarsh_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.Ragnarsig_armlegpain", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[3] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[13] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[12] = Local_Texture_v4;
                    break;
                case 3:
                    SkelGroupSkins[7] = Local_Texture_v4;
                    SkelGroupSkins[8] = Local_Texture_v4;
                    break;
                case 6:
                    SkelGroupSkins[1] = Local_Texture_v0;
                    SkelGroupSkins[9] = Local_Texture_v0;
                    break;
                case 8:
                    SkelGroupSkins[2] = Local_Texture_v0;
                    SkelGroupSkins[5] = Local_Texture_v0;
                    break;
                default:
                    break;
            }
            break;
        case 5:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.Ragnarwolf_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnarsig_body", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.Ragnarulf_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnarsh_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.Ragnarsig_armleg", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[3] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[13] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[12] = Local_Texture_v4;
                    break;
                case 3:
                    SkelGroupSkins[7] = Local_Texture_v4;
                    SkelGroupSkins[8] = Local_Texture_v4;
                    break;
                case 6:
                    SkelGroupSkins[1] = Local_Texture_v0;
                    SkelGroupSkins[9] = Local_Texture_v0;
                    break;
                case 8:
                    SkelGroupSkins[2] = Local_Texture_v0;
                    SkelGroupSkins[5] = Local_Texture_v0;
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