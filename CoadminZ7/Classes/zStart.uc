class zStart extends Info;

var zStorage zSTg_v5454;
var int INT_v5498;
var int INT_v6972;
var int INT_v5759;
var bool B_v5760;
var bool B_v5761;

event Tick(float Parm_float_0)
{
    if(B_v5760)
    {
        INT_v6972++;
        if(INT_v6972 > 80)
        {
            eqq_vxv_1069();
        }
    }
    return;
}

function eqq_vxv_1069()
{
    local Trigger tr;
    local Weapon Parm_Weapon_0;
    local int Local_int_v0, Local_int_v1;
    local Vector Local_Vector_v0;
    local Rotator Local_Rotator_v0;
    local int Local_int_v2;
    local bool Local_bool_v0;
    local ZoneInfo Local_ZoneInfo_v0;
    local Lizard Local_Lizard_v0;
    local PlayerPawn Local_PlayerPawn_v0;
    local pump Local_pump_v0;
    local Vector Local_Vector_v1;
    local spraylogo Local_spraylogo_v0;
    local Vector Local_Vector_v2;
    local Rotator Local_Rotator_v1;
    local Light Local_Light_v0;
    local string Local_string_v2, Local_string_v3;
    local Shield Local_Shield_v0;

    if(ContainsString(Level.ConsoleCommand("get coadminz7.zstart fixme"), "Unrecognized property"))
    {        
    }
    else
    {
        if(!zSTg_v5454.localtesting)
        {
            LogInternal("PACKAGE NOT READY");
            Level.ConsoleCommand("quit");
        }
    }
    Local_string_v2 = Level.ConsoleCommand("get Engine.GameInfo GamePassword");
    Local_string_v3 = Level.Game.GameReplicationInfo.ServerName;
    if((Local_string_v2 == "") && Caps(Left(Local_string_v3, 11)) == "[PASSWORD] ")
    {
        LogInternal("### REMOVE PASSWORD PREFIX -> " $ Local_string_v3);
        Level.Game.GameReplicationInfo.ServerName = Right(Local_string_v3, Len(Local_string_v3) - 11);
    }
    if(B_v5761)
    {
        zSTg_v5454.LogCoAdminZEvent("=================================================================");
        zSTg_v5454.LogCoAdminZEvent("=================================================================");
        zSTg_v5454.LogCoAdminZEvent("=================================================================");
        zSTg_v5454.LogCoAdminZEvent("Your server was uplinking to the dead gamespy masterserver.");
        zSTg_v5454.LogCoAdminZEvent("Your uplinkserver has been changed to 333networks.com");
        zSTg_v5454.LogCoAdminZEvent(" ");
        zSTg_v5454.LogCoAdminZEvent("It should be visible at serverlist now.");
        zSTg_v5454.LogCoAdminZEvent(" ");
        zSTg_v5454.LogCoAdminZEvent("<might require a restart to work>");
        zSTg_v5454.LogCoAdminZEvent("=================================================================");
        zSTg_v5454.LogCoAdminZEvent("=================================================================");
        zSTg_v5454.LogCoAdminZEvent("=================================================================");
    }
    if(zSTg_v5454.testVariable == 911)
    {
        foreach Level.AllActors(Class'Engine.Shield', Local_Shield_v0)
        {
            Local_Shield_v0.Health = 1;
            Local_Shield_v0.default.Health = 1;            
        }        
    }
    foreach Level.AllActors(Class'Engine.Weapon', Parm_Weapon_0)
    {
        if(zSTg_v5454.bRetro)
        {
            LogInternal("RETRO_WEAPON-DAMAGE ON");
            if(Parm_Weapon_0.IsA('DwarfWorkSword'))
            {
                Parm_Weapon_0.Damage = 30;
                Parm_Weapon_0.default.Damage = 30;
            }
            if(Parm_Weapon_0.IsA('goblinaxe'))
            {
                Parm_Weapon_0.Damage = 20;
                Parm_Weapon_0.default.Damage = 20;
            }            
        }
        else
        {
            if(Parm_Weapon_0.IsA('DwarfWorkSword') && Parm_Weapon_0.default.Damage == 30)
            {
                Parm_Weapon_0.Damage = 25;
                Parm_Weapon_0.default.Damage = 25;
                LogInternal("RETRO_WEAPON-DAMAGE Off");
            }
            if(Parm_Weapon_0.IsA('goblinaxe') && Parm_Weapon_0.default.Damage == 20)
            {
                Parm_Weapon_0.Damage = 15;
                Parm_Weapon_0.default.Damage = 15;
                LogInternal("RETRO_WEAPON-DAMAGE Off");
            }
        }
        if(zSTg_v5454.bsJumps)
        {
            if(Parm_Weapon_0.IsA('romansword'))
            {
                Parm_Weapon_0.DrawScale = 1.4000000;
            }
        }
        if(Parm_Weapon_0.IsA('boneclub'))
        {
            Parm_Weapon_0.A_AttackC = 'X3_attackC';
            Parm_Weapon_0.default.A_AttackC = 'X3_attackC';
            Parm_Weapon_0.A_AttackCReturn = 'X3_attackCreturn';
            Parm_Weapon_0.default.A_AttackCReturn = 'H2_attackCreturn';
            Local_int_v0++;
        }        
    }    
    if(Local_int_v0 > 0)
    {
        zSTg_v5454.LogCoAdminZEvent(("### Fixed boneclub animation (" $ string(Local_int_v0)) $ ")");
    }
    foreach Level.AllActors(Class'Engine.ZoneInfo', Local_ZoneInfo_v0)
    {
        if(Local_ZoneInfo_v0 != none)
        {
            if(zSTg_v5454.bDarkMatch)
            {
                Local_ZoneInfo_v0.AmbientBrightness = 0;
            }
            if(Local_ZoneInfo_v0.bNeutralZone && !Local_bool_v0)
            {
                Level.Game.DebrisPercentage = 0.1000000;
                zSTg_v5454.LogCoAdminZEvent("### Found a neutralzone -> changed debrispercentage to 0.1");
                Local_bool_v0 = true;
            }
        }        
    }    
    foreach Level.AllActors(Class'Engine.Light', Local_Light_v0)
    {
        if((Local_Light_v0 != none) && !Local_Light_v0.IsA('FlashLightSource'))
        {
            if(zSTg_v5454.bDarkMatch)
            {
                Local_Light_v0.LightBrightness = 0;
            }
        }        
    }    
    if(!Local_bool_v0)
    {
        Level.Game.DebrisPercentage = 0.5000000;
        zSTg_v5454.LogCoAdminZEvent("### No neutralzone found -> changed debrispercentage to 0.5");
    }
    if(Level.Author == "Skatan")
    {
        zSTg_v5454.LogCoAdminZEvent("## Found cheat pump at DM-Galdhopiggen, moving it upwards to make it unusable for non-admins.");
        foreach Level.AllActors(Class'RuneI.pump', Local_pump_v0)
        {
            if(string(Local_pump_v0.Event) ~= "CPCheat")
            {
                Local_Vector_v1 = Local_pump_v0.Location;
                Local_Vector_v1.Z = Local_pump_v0.Location.Z + float(500);
                zSTg_v5454.LogCoAdminZEvent("## Galdhoppigen pump has succesfully been moved");
                Local_pump_v0.SetLocation(Local_Vector_v1);
            }            
        }        
    }
    if(Level.Title == "Requiem")
    {
        Local_Rotator_v1 = rot(2306, 256, 65535);
        Local_Vector_v2 = vect(292.0000000, -50.0000000, -70.0000000);
        Local_spraylogo_v0 = Spawn(Class'coadminz7.spraylogo',,, Local_Vector_v2, Local_Rotator_v1);
        if(Local_spraylogo_v0 != none)
        {
            Local_spraylogo_v0.Texture = Texture'coadminz7.eqA_vxv_6264.discord';
            Local_spraylogo_v0.DrawScale = 3.1000000;
            Local_spraylogo_v0.Tag = 'discord_advertisement';
            Local_spraylogo_v0.Style = 2;
        }
    }
    if(Level.Title == "Dragon Might Arena")
    {
        Local_Rotator_v1 = rot(65535, 40960, 0);
        Local_Vector_v2 = vect(-298.0000000, -242.0000000, -88.0000000);
        Local_spraylogo_v0 = Spawn(Class'coadminz7.spraylogo',,, Local_Vector_v2, Local_Rotator_v1);
        if(Local_spraylogo_v0 != none)
        {
            Local_spraylogo_v0.Texture = Texture'coadminz7.eqA_vxv_6264.discord';
            Local_spraylogo_v0.DrawScale = 1.4000000;
            Local_spraylogo_v0.Tag = 'discord_advertisement';
            Local_spraylogo_v0.Style = 2;
        }
        Local_Rotator_v1 = rot(65535, 24576, 0);
        Local_Vector_v2 = vect(-266.0000000, 270.0000000, -53.0000000);
        Local_spraylogo_v0 = none;
        Local_spraylogo_v0 = Spawn(Class'coadminz7.spraylogo',,, Local_Vector_v2, Local_Rotator_v1);
        if(Local_spraylogo_v0 != none)
        {
            Local_spraylogo_v0.Texture = Texture'coadminz7.eqA_vxv_6264.SelectWeapon';
            Local_spraylogo_v0.DrawScale = 1.3000000;
            Local_spraylogo_v0.Tag = 'how_to_select_weapon';
            Local_spraylogo_v0.Style = 2;
        }
        Local_Rotator_v1 = rot(0, 65280, 0);
        Local_Vector_v2 = vect(-419.0000000, -5.0000000, 94.0000000);
        Local_spraylogo_v0 = none;
        Local_spraylogo_v0 = Spawn(Class'coadminz7.spraylogo',,, Local_Vector_v2, Local_Rotator_v1);
        if(Local_spraylogo_v0 != none)
        {
            Local_spraylogo_v0.Texture = Texture'coadminz7.eqA_vxv_6264.tsb';
            Local_spraylogo_v0.DrawScale = 2.0000000;
            Local_spraylogo_v0.Tag = 'tsb_logo';
            Local_spraylogo_v0.Style = 2;
        }
        Local_Rotator_v1 = rot(0, 0, 0);
        Local_Vector_v2 = vect(-2455.0000000, -9.0000000, 63.0000000);
        Local_spraylogo_v0 = none;
        Local_spraylogo_v0 = Spawn(Class'coadminz7.spraylogo',,, Local_Vector_v2, Local_Rotator_v1);
        if(Local_spraylogo_v0 != none)
        {
            Local_spraylogo_v0.Texture = Texture'coadminz7.eqA_vxv_6264.tsb2';
            Local_spraylogo_v0.DrawScale = 1.7500000;
            Local_spraylogo_v0.Tag = 'tsb_logo2';
            Local_spraylogo_v0.Style = 2;
        }
    }
    foreach Level.AllActors(Class'Engine.Trigger', tr)
    {
        if(tr != none)
        {
            if(tr.IsA('pump') || tr.IsA('lever'))
            {
                if(tr.ReTriggerDelay > float(0))
                {
                    tr.TriggerTime -= (tr.ReTriggerDelay - float(1));
                    Local_int_v2++;
                }
            }
        }        
    }    
    if(INT_v5759 > 0)
    {
        zSTg_v5454.LogCoAdminZEvent(("### Fixed lizard pickup-bug (" $ string(INT_v5759)) $ ")");
    }
    if(Local_int_v2 > 0)
    {
        zSTg_v5454.LogCoAdminZEvent(("### Fixed Trigger - ReTriggerDelay bug (" $ string(Local_int_v2)) $ ")");
    }
    Local_int_v0 = 0;
    foreach Level.AllActors(Class'Engine.Weapon', Parm_Weapon_0)
    {
        if(Parm_Weapon_0 != none)
        {
            Local_int_v0++;
        }        
    }    
    if(zSTg_v5454.Maps[0] == "")
    {
        UpdateMapListForCategory("DM");
        UpdateMapListForCategory("AR");
        UpdateMapListForCategory("CTT");
        zSTg_v5454.SaveConfig();
    }
    if(zSTg_v5454.Linux)
    {
        zSTg_v5454.LogCoAdminZEvent("### Operation System:  Linux");
    }
    TCCPawnSpawnNotify(Level.SpawnNotify).G_ZStrg1 = zSTg_v5454;
    if(TCCPawnSpawnNotify(Level.SpawnNotify).G_ZStrg1 != none)
    {
        zSTg_v5454.LogCoAdminZEvent("### SpawnNotify initialized");
    }
    if(zSTg_v5454.testVariable == 911)
    {
        if(zSTg_v5454.retro)
        {
            ConsoleCommand("set serveroptions retroshieldspeed true");
            ConsoleCommand("set serveroptions retrothrownweaponnoblock true");
            ConsoleCommand("set serveroptions retroweapondamage true");
            ConsoleCommand("set serveroptions retroweaponpowerups true");
            zSTg_v5454.LogCoAdminZEvent("### RETROMODE initialized");            
        }
        else
        {
            if(zSTg_v5454.bTournament)
            {                
            }
            else
            {
                ConsoleCommand("set serveroptions retroshieldspeed false");
                ConsoleCommand("set serveroptions retrothrownweaponnoblock false");
                ConsoleCommand("set serveroptions retroweapondamage false");
                ConsoleCommand("set serveroptions retroweaponpowerups false");
                zSTg_v5454.LogCoAdminZEvent("### RETROMODE disabled");
            }
        }
    }
    ConsoleCommand("set IpDrv.NephthysDrv reactRLM ear_off");
    Destroy();
    return;
}

function eq_vxv_408()
{
    local Lizard Local_Lizard_v0;

    B_v5760 = true;
    foreach Level.AllActors(Class'RuneI.Lizard', Local_Lizard_v0)
    {
        if(Local_Lizard_v0 != none)
        {
            Local_Lizard_v0.bCollideWorld = false;
            Local_Lizard_v0.default.bCollideWorld = false;
            INT_v5759++;
        }        
    }    
    eqq_vxv_1066();
    return;
}

function eqq_vxv_1066()
{
    local string Local_string_v0;

    Local_string_v0 = ConsoleCommand("get Engine.GameEngine ServerActors");
    if(ContainsString(Local_string_v0, "gamespy"))
    {
        ReplaceString(Local_string_v0, "gamespy", "333networks");
        ConsoleCommand("set Engine.GameEngine ServerActors" @ Local_string_v0);
        ConsoleCommand("set IpServer.UdpServerUplink MasterServerAddress master.333networks.com");
        Class<Object>(static.DynamicLoadObject("IpServer.UdpServerUplink", Class'Core.Class')).StaticSaveConfig();
        B_v5761 = true;
    }
    return;
}

function UpdateMapListForCategory(string Parm_string_0)
{
    local string Local_string_v0, STR_v3845, Local_string_v2, Local_string_v3, Local_string_v4;

    Local_string_v4 = Parm_string_0;
    Local_string_v0 = GetMapName(Local_string_v4, "", 0);
    STR_v3845 = Local_string_v0;
    J0x27:

    if(!Local_string_v0 ~= Local_string_v2)
    {
        if(Right(STR_v3845, 4) ~= ".run")
        {
            Local_string_v3 = Left(STR_v3845, Len(STR_v3845) - 4);            
        }
        else
        {
            Local_string_v3 = STR_v3845;
        }
        zSTg_v5454.Maps[INT_v5498] = Local_string_v3;
        INT_v5498++;
        LogInternal("found map: " $ Local_string_v3);
        STR_v3845 = GetMapName(Local_string_v4, STR_v3845, 1);
        Local_string_v2 = STR_v3845;
        // [Loop Continue]
        goto J0x27;
    }
    return;
}

function ReplaceString(out string Text, string Parm_string_0, string Parm_string_1)
{
    local int i;
    local string Input;

    if((Parm_string_0 != Parm_string_1) && Parm_string_0 != "")
    {
        Input = Text;
        Text = "";
        i = InStr(Input, Parm_string_0);
        J0x42:

        if(i != -1)
        {
            Text = (Text $ Left(Input, i)) $ Parm_string_1;
            Input = Mid(Input, i + Len(Parm_string_0));
            i = InStr(Input, Parm_string_0);
            // [Loop Continue]
            goto J0x42;
        }
        Text = Text $ Input;
    }
    return;
}

function bool ContainsString(string Parm_string_0, string Parm_string_1)
{
    if(InStr(Caps(Parm_string_0), Caps(Parm_string_1)) > -1)
    {
        return true;        
    }
    else
    {
        return false;
    }
    return;
}
