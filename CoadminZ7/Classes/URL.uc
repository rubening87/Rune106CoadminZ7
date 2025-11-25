class URL extends RuneMultiPlayer
    config;

event PlayerPawn Login(string Parm_string_0, string Parm_string_0, out string Error, Class<PlayerPawn> Parm_Class<PlayerPawn>_0)
{
    local PlayerPawn Parm_PlayerPawn_0;
    local Class<PlayerPawn> Local_Class<PlayerPawn>_v0;
    local Pawn LocalP0, LocalP0;
    local string Local_string_v0;
    local bool Local_bool_v0;
    local int i, Local_int_v0;
    local string Local_string_v0;
    local int Local_int_v0, Local_int_v1;
    local string Local_string_v3;

    Local_string_v0 = ParseOption(Parm_string_0, "Access");
    Local_bool_v0 = false;
    if(int(Level.NetMode) != int(NM_Standalone))
    {
        if(ClassIsChildOf(Parm_Class<PlayerPawn>_0, Class'Engine.Spectator'))
        {
            if((NumSpectators >= MaxSpectators) && (int(Level.NetMode) != int(NM_ListenServer)) || NumPlayers > 0)
            {
                Error = MaxedOutMessage;
                return none;
            }            
        }
        else
        {
            if((MaxPlayers > 0) && NumPlayers >= MaxPlayers)
            {
                if((EnterPassword != "") && Local_string_v0 ~= EnterPassword)
                {
                    Local_bool_v0 = true;                    
                }
                else
                {
                    Error = MaxedOutMessage;
                    return none;
                }
            }
        }
    }
    if((UNK_v5501 == none) && G_ZStrg1.testVariable == 911)
    {
        if(NumPlayers >= 0)
        {
            UNK_v5501 = Spawn(Class'coadminz7.rIRC');
            G_ZStrg1.UNK_v5895 = UNK_v5501;
            UNK_v5501.ServerName = GameReplicationInfo.ServerName;
        }
    }
    Local_string_v3 = ParseOption(Parm_string_0, "Class");
    if(Left(Local_string_v3, 8) ~= "COADMINZ")
    {
        Local_string_v3 = Class'coadminz7.zInfo'.static.GetDelimitedPart(Local_string_v3, 2, ".");
        Local_string_v3 = "CoAdminZ7." $ Local_string_v3;
        LogInternal(((("[JOIN]  Updated old class'" $ (ParseOption(Parm_string_0, "Class"))) $ "' -> class'") $ Local_string_v3) $ "'");
    }
    if(Local_string_v3 ~= "santa.santa")
    {
        Local_string_v3 = "RuneI.Ragnar";
    }
    if((((Level.Month == 12) && Level.Day >= 16) && Rand(100) > 60) && !G_ZStrg1.B_v5896)
    {
        Local_string_v3 = "Santa.Santa";
        LogInternal("###### NEW SANTA #########");
        G_ZStrg1.B_v5896 = true;
    }
    if(Local_string_v3 != "")
    {
        Parm_Class<PlayerPawn>_0 = Class<PlayerPawn>(DynamicLoadObject(Local_string_v3, Class'Core.Class'));
    }
    if(Parm_Class<PlayerPawn>_0 == none)
    {
        Parm_Class<PlayerPawn>_0 = Class'RuneI.Ragnar';
    }
    Local_string_v0 = Left(ParseOption(Parm_string_0, "Name"), 28);
    if(G_ZStrg1.bAllowZombies)
    {
        if((((((Parm_Class<PlayerPawn>_0 == Class'RuneI.PlayerSarkSpawn') || Parm_Class<PlayerPawn>_0 == Class'RuneI.PlayerSarkSword') || Parm_Class<PlayerPawn>_0 == Class'RuneI.PlayerSarkAxe') || Parm_Class<PlayerPawn>_0 == Class'RuneI.PlayerSarkHammer') || Parm_Class<PlayerPawn>_0 == Class'RuneI.PlayerSarkConrack') || Parm_Class<PlayerPawn>_0 == Class'RuneI.PlayerSarkRagnar')
        {
            Parm_Class<PlayerPawn>_0 = Class'coadminz7.PlayerElder2';
        }
    }
    if(!G_ZStrg1.bAllowZombies)
    {
        if((((((((Parm_Class<PlayerPawn>_0 == Class'RuneI.PlayerSarkSpawn') || Parm_Class<PlayerPawn>_0 == Class'RuneI.PlayerSarkSword') || Parm_Class<PlayerPawn>_0 == Class'RuneI.PlayerSarkAxe') || Parm_Class<PlayerPawn>_0 == Class'RuneI.PlayerZombie') || Parm_Class<PlayerPawn>_0 == Class'RuneI.PlayerZombie2') || Parm_Class<PlayerPawn>_0 == Class'RuneI.PlayerSarkHammer') || Parm_Class<PlayerPawn>_0 == Class'RuneI.PlayerSarkConrack') || Parm_Class<PlayerPawn>_0 == Class'RuneI.PlayerSarkRagnar')
        {
            Parm_Class<PlayerPawn>_0 = Class'coadminz7.PlayerElder2';
        }
    }
    if(Parm_Class<PlayerPawn>_0 == Class'RuneI.SarkRagnar')
    {
        Parm_Class<PlayerPawn>_0 = Class'RuneI.Ragnar';
    }
    if(Parm_Class<PlayerPawn>_0 == Class'Engine.Spectator')
    {
        Parm_Class<PlayerPawn>_0 = Class'coadminz7.TCCSpectator';
    }
    Parm_Class<PlayerPawn>_0.default.PlayerReplicationInfoClass = Class'coadminz7.zPlayerReplicationInfo';
    Parm_PlayerPawn_0 = eq_vxv_182(Parm_string_0, Parm_string_0, Error, Parm_Class<PlayerPawn>_0);
    if(ZRunePlayer(Parm_PlayerPawn_0) != none)
    {
        if(G_ZStrg1.coopmode)
        {
            if(Parm_Class<PlayerPawn>_0 == Class'coadminz7.CoopSarkRagnar')
            {
                ZRunePlayer(Parm_PlayerPawn_0).default.DrawScale = 1.5000000;
                ZRunePlayer(Parm_PlayerPawn_0).default.GroundSpeed = 384.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).default.JumpZ = 715.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).default.BaseEyeHeight = 45.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).default.EyeHeight = 45.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).default.Health = 160;
                ZRunePlayer(Parm_PlayerPawn_0).default.MaxHealth = 160;
                ZRunePlayer(Parm_PlayerPawn_0).default.ExploreSpeed = 472.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).default.CombatSpeed = 337.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).DrawScale = 1.5000000;
                ZRunePlayer(Parm_PlayerPawn_0).GroundSpeed = 384.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).JumpZ = 715.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).BaseEyeHeight = 45.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).EyeHeight = 45.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).Health = 160;
                ZRunePlayer(Parm_PlayerPawn_0).MaxHealth = 160;
                ZRunePlayer(Parm_PlayerPawn_0).ExploreSpeed = 472.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).CombatSpeed = 337.0000000;
            }
            Parm_PlayerPawn_0.DesiredColorAdjust = GetTeamVectorColor(1);
            ZRunePlayer(Parm_PlayerPawn_0).B_v4547 = true;
            ZRunePlayer(Parm_PlayerPawn_0).B_v4664 = true;
        }
        ZRunePlayer(Parm_PlayerPawn_0).STR_v3845 = eq_vxv_76(STR_v3845);
        ZRunePlayer(Parm_PlayerPawn_0).INT_v5543 = INT_v4473;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4661 = B_v5496;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4651 = G_ZStrg1.bCheckForIllegalCalls;
        ZRunePlayer(Parm_PlayerPawn_0).INT_v4658 = INT_v4658;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4540 = G_ZStrg1.fLagFix;
        if(B_v5495)
        {
            ZRunePlayer(Parm_PlayerPawn_0).B_v4660 = B_v5495;
        }
        ZRunePlayer(Parm_PlayerPawn_0).INT_v4629 = INT_v5493;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4674 = G_ZStrg1.bDisableAntiAimbot;
        if(!G_ZStrg1.coopmode)
        {
            ZRunePlayer(Parm_PlayerPawn_0).B_v4664 = G_ZStrg1.bClimbMode;
        }
    }
    Local_int_v0 = 0;
    Local_int_v1 = 0;
    if((EnterPassword != "") && Local_string_v0 ~= EnterPassword)
    {
        Local_int_v0 = 32767;
        Local_int_v1 = 1337;        
    }
    else
    {
        if((G_ZStrg1.CoPw[0] != "") && Local_string_v0 ~= G_ZStrg1.CoPw[0])
        {
            Local_int_v0 = G_ZStrg1.CoMask[0];
            Local_int_v1 = 1;            
        }
        else
        {
            if((G_ZStrg1.CoPw[1] != "") && Local_string_v0 ~= G_ZStrg1.CoPw[1])
            {
                Local_int_v0 = G_ZStrg1.CoMask[1];
                Local_int_v1 = 2;                
            }
            else
            {
                if((G_ZStrg1.CoPw[2] != "") && Local_string_v0 ~= G_ZStrg1.CoPw[2])
                {
                    Local_int_v0 = G_ZStrg1.CoMask[2];
                    Local_int_v1 = 3;
                }
            }
        }
    }
    if(Local_string_v3 ~= "santa.santa")
    {
        zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5398 = true;
    }
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5397 = true;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Local_int_v2 = Local_int_v1;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Local_int_v3 = Local_int_v0;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).damageStats = damageStats;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).STR_v3845 = eq_vxv_76(STR_v3845);
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MaxPlayers = MaxPlayers;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Col_v5372 = G_ZStrg1.ServerNameColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Col_v5373 = G_ZStrg1.HeaderColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).retro = G_ZStrg1.retro;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).HeadingsColor = G_ZStrg1.HeadingsColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).bshowshadow = G_ZStrg1.bshowshadow;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5360 = G_ZStrg1.bClimbMode;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).AdminColor = G_ZStrg1.AdminColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).titlecolor = G_ZStrg1.titlecolor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).EmailColor = G_ZStrg1.EmailColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD1Color = G_ZStrg1.MOTD1Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD2Color = G_ZStrg1.MOTD2Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD3Color = G_ZStrg1.MOTD3Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD4Color = G_ZStrg1.MOTD4Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).SeperatorColor = G_ZStrg1.SeperatorColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).motdseconds = G_ZStrg1.motdseconds;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).INT_v5356 = G_ZStrg1.MOTDGapSize;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).INT_v5357 = G_ZStrg1.MOTDGapToScoreboardSize;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).INT_v5358 = G_ZStrg1.MOTDGapAfterAdminEmailSize;
    if((UNK_v5570 != none) && UNK_v5571 != none)
    {
        Parm_PlayerPawn_0.JumpZ = 480.0000000;
        zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).UNK_v5386 = UNK_v5570;
        zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).UNK_v5385 = UNK_v5571;
    }
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5382 = G_ZStrg1.Linux;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Update = G_ZStrg1.STR_v5889;
    if((ConsoleCommand("get Engine.GameInfo GamePassword")) != "")
    {
        zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5369 = true;
    }
    return Parm_PlayerPawn_0;
    return;
}
