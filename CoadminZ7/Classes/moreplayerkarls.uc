class moreplayerkarls extends PlayerKarl
    config(User);

function Texture PainSkin(int Parm_int_0)
{
    switch(Parm_int_0)
    {
        case 10:
            SkelGroupSkins[1] = Texture'Players.Ragnarkarl_chestpain';
            break;
        case 5:
            SkelGroupSkins[5] = Texture'Players.Ragnarkarl_headpain';
            break;
        case 1:
            SkelGroupSkins[11] = Texture'Players.Ragnarkarl_armlegpain';
            SkelGroupSkins[9] = Texture'Players.Ragnarkarl_armlegpain';
            break;
        case 3:
            SkelGroupSkins[6] = Texture'Players.Ragnarkarl_armlegpain';
            SkelGroupSkins[8] = Texture'Players.Ragnarkarl_armlegpain';
            break;
        case 6:
            SkelGroupSkins[3] = Texture'Players.Ragnarkarl_armlegpain';
            SkelGroupSkins[12] = Texture'Players.Ragnarkarl_armlegpain';
            break;
        case 8:
            SkelGroupSkins[2] = Texture'Players.Ragnarkarl_armlegpain';
            SkelGroupSkins[13] = Texture'Players.Ragnarkarl_armlegpain';
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
            return Class'RuneI.KarlLArm';
        case 3:
            return Class'RuneI.KarlRArm';
        case 5:
            return Class'RuneI.KarlHead';
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
            return "Karl";
        case 1:
            return "Jarl";
        case 2:
            return "-SwordsmanJarl";
        case 3:
            return "-SwordsmanKarl";
        case 4:
            return "-FullMetalKarl";
        case 5:
            return "-FullMetalJarl";
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
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.ragnarJarl_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.ragnarJarl_chest", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("Players.ragnarJarl_head", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v2;
            Parm_Actor_0.SkelGroupSkins[6] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[12] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[13] = Local_Texture_v0;
            break;
        case 2:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.ragnarJarl_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarcon_chest", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("Players.ragnarJarl_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("Players.ragnarcon_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("Players.ragnarlg_leg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v2;
            Parm_Actor_0.SkelGroupSkins[6] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[12] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[13] = Local_Texture_v4;
            break;
        case 3:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.ragnarKarl_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarcon_chest", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("Players.ragnarKarl_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("Players.ragnarcon_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("Players.ragnarsig_armleg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v2;
            Parm_Actor_0.SkelGroupSkins[6] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[12] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[13] = Local_Texture_v4;
            break;
        case 4:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.ragnarKarl_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarcon_chest", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("Players.ragnarKarl_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("Players.ragnarcon_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("Players.ragnarsig_armleg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v2;
            Parm_Actor_0.SkelGroupSkins[6] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[12] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[13] = Local_Texture_v3;
            break;
        case 5:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.ragnarKarl_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarcon_chest", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("Players.ragnarJarl_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("Players.ragnarcon_armleg", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("Players.ragnarsig_armleg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v2;
            Parm_Actor_0.SkelGroupSkins[6] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[8] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[9] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[12] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[13] = Local_Texture_v3;
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
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.ragnarJarl_armlegpain", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.ragnarJarl_chestpain", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("Players.ragnarJarl_headpain", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[1] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[5] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[11] = Local_Texture_v0;
                    SkelGroupSkins[9] = Local_Texture_v0;
                    break;
                case 3:
                    SkelGroupSkins[6] = Local_Texture_v0;
                    SkelGroupSkins[8] = Local_Texture_v0;
                    break;
                case 6:
                    SkelGroupSkins[3] = Local_Texture_v0;
                    SkelGroupSkins[12] = Local_Texture_v0;
                    break;
                case 8:
                    SkelGroupSkins[2] = Local_Texture_v0;
                    SkelGroupSkins[13] = Local_Texture_v0;
                    break;
                default:
                    break;
            }
            break;
        case 2:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.ragnarJarl_armlegpain", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarcon_chestpain", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("Players.ragnarJarl_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("Players.ragnarcon_armlegpain", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("Players.ragnarlg_legpain", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[1] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[5] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[11] = Local_Texture_v3;
                    SkelGroupSkins[9] = Local_Texture_v3;
                    break;
                case 3:
                    SkelGroupSkins[6] = Local_Texture_v0;
                    SkelGroupSkins[8] = Local_Texture_v0;
                    break;
                case 6:
                    SkelGroupSkins[3] = Local_Texture_v3;
                    SkelGroupSkins[12] = Local_Texture_v3;
                    break;
                case 8:
                    SkelGroupSkins[2] = Local_Texture_v3;
                    SkelGroupSkins[13] = Local_Texture_v3;
                    break;
                default:
                    break;
            }
            break;
        case 3:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.ragnarKarl_armlegpain", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarcon_chestpain", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("Players.ragnarKarl_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("Players.ragnarcon_armlegpain", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("Players.ragnarsig_armleg", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[1] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[5] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[11] = Local_Texture_v3;
                    SkelGroupSkins[9] = Local_Texture_v3;
                    break;
                case 3:
                    SkelGroupSkins[6] = Local_Texture_v0;
                    SkelGroupSkins[8] = Local_Texture_v0;
                    break;
                case 6:
                    SkelGroupSkins[3] = Local_Texture_v4;
                    SkelGroupSkins[12] = Local_Texture_v4;
                    break;
                case 8:
                    SkelGroupSkins[2] = Local_Texture_v4;
                    SkelGroupSkins[13] = Local_Texture_v4;
                    break;
                default:
                    break;
            }
            break;
        case 4:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.ragnarKarl_armlegpain", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarcon_chestpain", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("Players.ragnarKarl_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("Players.ragnarcon_armlegpain", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("Players.ragnarsig_armleg", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[1] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[5] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[11] = Local_Texture_v3;
                    SkelGroupSkins[9] = Local_Texture_v3;
                    break;
                case 3:
                    SkelGroupSkins[6] = Local_Texture_v3;
                    SkelGroupSkins[8] = Local_Texture_v3;
                    break;
                case 6:
                    SkelGroupSkins[3] = Local_Texture_v3;
                    SkelGroupSkins[12] = Local_Texture_v3;
                    break;
                case 8:
                    SkelGroupSkins[2] = Local_Texture_v3;
                    SkelGroupSkins[13] = Local_Texture_v3;
                    break;
                default:
                    break;
            }
            break;
        case 5:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.ragnarKarl_armlegpain", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarcon_chestpain", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("Players.ragnarJarl_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("Players.ragnarcon_armlegpain", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("Players.ragnarsig_armleg", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[1] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[5] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[11] = Local_Texture_v3;
                    SkelGroupSkins[9] = Local_Texture_v3;
                    break;
                case 3:
                    SkelGroupSkins[6] = Local_Texture_v3;
                    SkelGroupSkins[8] = Local_Texture_v3;
                    break;
                case 6:
                    SkelGroupSkins[3] = Local_Texture_v3;
                    SkelGroupSkins[12] = Local_Texture_v3;
                    break;
                case 8:
                    SkelGroupSkins[2] = Local_Texture_v3;
                    SkelGroupSkins[13] = Local_Texture_v3;
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