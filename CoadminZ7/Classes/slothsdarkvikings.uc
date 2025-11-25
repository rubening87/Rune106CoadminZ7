class slothsdarkvikings extends PlayerDarkViking
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
            return Class'coadminz7.DarkViking_white_LArm';
        case 3:
            return Class'coadminz7.DarkViking_white_RArm';
        case 5:
            return Class'coadminz7.DarkViking_white_Head';
            break;
        default:
            break;
    }
    return none;
    return;
}

static function int GetNumSkins()
{
    return 8;
    return;
}

static function string GetSkinName(int Skin)
{
    switch(Skin)
    {
        case 0:
            return "-Full winter clothing";
        
        case 1:
            return "-Partial winter clothing 1";
        case 2:
            return "-Partial winter clothing 2";
        case 3:
            return "-Partially armored 1";
        case 4:
            return "-Partially armored 2";
        case 5:
            return "-Fully armored 1";
        case 6:
            return "-Fully armored 2";
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
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnarsnov_body", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.ragnardv_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnardv_hair", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v2;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[6] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[12] = Local_Texture_v0;
            break;
        case 2:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.ragnarsnov_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnarsnov_body", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.ragnarsnov_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnardv_hair", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.ragnardv_armleg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v2;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[6] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[12] = Local_Texture_v0;
            break;
        case 3:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.Ragnarcon_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarz_body", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.ragnarsnov_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnardv_hair", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.ragnardv_armleg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v2;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[12] = Local_Texture_v0;
            break;
        case 4:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.Ragnarcon_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarz_body1", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.ragnarsnov_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnardv_hair", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.ragnardv_armleg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v2;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[12] = Local_Texture_v0;
            break;
        case 5:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.Ragnarcon_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarz_body", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.ragnarsnov_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnardv_hair", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.ragnarcon_armleg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v2;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[12] = Local_Texture_v0;
            break;
        case 6:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.Ragnarcon_armleg", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarz_body1", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.ragnarsnov_head", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnardv_hair", Class'Engine.Texture'));
            Local_Texture_v4 = Texture(DynamicLoadObject("players.ragnarcon_armleg", Class'Engine.Texture'));
            Parm_Actor_0.SkelGroupSkins[1] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[2] = Local_Texture_v1;
            Parm_Actor_0.SkelGroupSkins[3] = Local_Texture_v2;
            Parm_Actor_0.SkelGroupSkins[4] = Local_Texture_v4;
            Parm_Actor_0.SkelGroupSkins[5] = Local_Texture_v3;
            Parm_Actor_0.SkelGroupSkins[7] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[10] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[11] = Local_Texture_v0;
            Parm_Actor_0.SkelGroupSkins[12] = Local_Texture_v0;
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
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnarsnov_bodypain", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("Players.ragnardv_headpain", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[2] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[3] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[10] = Local_Texture_v0;
                    SkelGroupSkins[12] = Local_Texture_v0;
                    break;
                case 3:
                    SkelGroupSkins[7] = Local_Texture_v0;
                    SkelGroupSkins[11] = Local_Texture_v0;
                    break;
                case 6:
                    SkelGroupSkins[1] = Local_Texture_v0;
                    break;
                case 8:
                    SkelGroupSkins[4] = Local_Texture_v0;
                    break;
                default:
                    break;
            }
            break;
        case 2:
            Local_Texture_v0 = Texture(DynamicLoadObject("players.ragnarsnov_armlegpain", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("players.ragnarsnov_bodypain", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("Players.ragnarsnov_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("players.ragnardv_armlegpain", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[2] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[3] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[10] = Local_Texture_v0;
                    SkelGroupSkins[12] = Local_Texture_v0;
                    break;
                case 3:
                    SkelGroupSkins[7] = Local_Texture_v0;
                    SkelGroupSkins[11] = Local_Texture_v0;
                    break;
                case 6:
                    SkelGroupSkins[1] = Local_Texture_v3;
                    break;
                case 8:
                    SkelGroupSkins[4] = Local_Texture_v3;
                    break;
                default:
                    break;
            }
            break;
        
        case 3:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.Ragnarcon_armlegpain", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarz_body", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.ragnarsnov_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("Players.Ragnardv_armlegpain", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[2] = Local_Texture_v1;
                    
                    break;
                case 5:
                    SkelGroupSkins[3] = Local_Texture_v2;
                    
                    break;
                case 1:
                    SkelGroupSkins[10] = Local_Texture_v0;
                    SkelGroupSkins[12] = Local_Texture_v0;
                    
                    break;
                case 3:
                    SkelGroupSkins[7] = Local_Texture_v0;
                    SkelGroupSkins[11] = Local_Texture_v0;
                    
                    break;
                case 6:
                    SkelGroupSkins[1] = Local_Texture_v3;
                    
                    break;
                case 8:
                    SkelGroupSkins[4] = Local_Texture_v3;
                    
                    break;
                default:
                    break;
            }
            break;
        case 4:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.Ragnarcon_armlegpain", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarz_body1", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.ragnarsnov_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("Players.Ragnardv_armlegpain", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[2] = Local_Texture_v1;
                    break;
                2
                case 5:
                    SkelGroupSkins[3] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[10] = Local_Texture_v0;
                    SkelGroupSkins[12] = Local_Texture_v0;
                    break;
                case 3:
                    SkelGroupSkins[7] = Local_Texture_v0;
                    SkelGroupSkins[11] = Local_Texture_v0;
                    break;
                case 6:
                    SkelGroupSkins[1] = Local_Texture_v3;
                    break;
                case 8:
                    SkelGroupSkins[4] = Local_Texture_v3;
                    break;
                default:
                    break;
            }
            break;
        case 5:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.Ragnarcon_armlegpain", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarz_body", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.ragnarsnov_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("Players.Ragnarcon_armlegpain", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[2] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[3] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[10] = Local_Texture_v0;
                    SkelGroupSkins[12] = Local_Texture_v0;
                    break;
                case 3:
                    SkelGroupSkins[7] = Local_Texture_v0;
                    SkelGroupSkins[11] = Local_Texture_v0;
                    break;
                case 6:
                    SkelGroupSkins[1] = Local_Texture_v3;
                    break;
                case 8:
                    SkelGroupSkins[4] = Local_Texture_v3;
                    break;
                default:
                    break;
            }
            break;
        case 6:
            Local_Texture_v0 = Texture(DynamicLoadObject("Players.Ragnarcon_armlegpain", Class'Engine.Texture'));
            Local_Texture_v1 = Texture(DynamicLoadObject("Players.Ragnarz_body1", Class'Engine.Texture'));
            Local_Texture_v2 = Texture(DynamicLoadObject("players.ragnarsnov_headpain", Class'Engine.Texture'));
            Local_Texture_v3 = Texture(DynamicLoadObject("Players.Ragnarcon_armlegpain", Class'Engine.Texture'));
            switch(Parm_int_0)
            {
                case 10:
                    SkelGroupSkins[2] = Local_Texture_v1;
                    break;
                case 5:
                    SkelGroupSkins[3] = Local_Texture_v2;
                    break;
                case 1:
                    SkelGroupSkins[10] = Local_Texture_v0;
                    SkelGroupSkins[12] = Local_Texture_v0;
                    break;
                case 3:
                    SkelGroupSkins[7] = Local_Texture_v0;
                    SkelGroupSkins[11] = Local_Texture_v0;
                    break;
                case 6:
                    SkelGroupSkins[1] = Local_Texture_v3;
                    break;
                case 8:
                    SkelGroupSkins[4] = Local_Texture_v3;
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
    SkelGroupSkins(1)=Texture'Players.Ragnarsnov_armleg'
    SkelGroupSkins(2)=Texture'Players.Ragnarsnov_body'
    SkelGroupSkins(3)=Texture'Players.Ragnarsnov_head'
    SkelGroupSkins(4)=Texture'Players.Ragnarsnov_armleg'
    SkelGroupSkins(7)=Texture'Players.Ragnarsnov_armleg'
    SkelGroupSkins(10)=Texture'Players.Ragnarsnov_armleg'
    SkelGroupSkins(11)=Texture'Players.Ragnarsnov_armleg'
    SkelGroupSkins(12)=Texture'Players.Ragnarsnov_armleg'
}