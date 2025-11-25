class zRuneMenuPlayerSetupClient extends RuneMenuPageWindow;

var string STR_v7296;
var() int Local_int_v0;
var Class<Pawn> UNK_v7297;
var Class<Pawn> UNK_v3829;
var string STR_v3172;
var bool B_v3382;
var zRuneMenuPlayerMeshClient zRMenuPMC_v3974;
var string STR_v1889;
var UWindowEditControl UNK_v3975;
var localized string NameText;
var localized string NameHelp;
var UWindowComboControl UNK_v3976;
var localized string TeamText;
var localized string Teams[5];
var localized string NoTeam;
var localized string TeamHelp;
var ZWindowComboControl UNK_v3977;
var localized string ClassText;
var localized string ClassHelp;
var ZWindowComboControl UNK_v3978;
var localized string SkinText;
var localized string SkinHelp;
var UWindowComboControl UNK_v3979;
var localized string NetSpeedText;
var localized string NetSpeedHelp;
var localized string NetSpeeds[3];
var UWindowSmallButton UNK_v3966;

function NotifyAfterLevelChange()
{
    NotifyBeforeLevelChange();
    Close();
    Root.Console.CloseUWindow();
    return;
}

function NotifyBeforeLevelChange()
{
    super(UWindowWindow).NotifyBeforeLevelChange();
    Close();
    Root.Console.CloseUWindow();
    return;
}

function Created()
{
    local string Local_string_v0, Local_string_v1;
    local int Local_int_v0, Local_int_v1, Local_int_v2, Local_int_v0, Local_int_v1, i;

    zRMenuPMC_v3974 = zRuneMenuPlayerMeshClient(zRuneMenuPlayerClientWindow(ParentWindow.ParentWindow.ParentWindow).UNK_v3214.RightClientWindow);
    super(UWindowWindow).Created();
    Local_int_v0 = int(WinWidth / 2.5000000);
    Local_int_v1 = int((WinWidth / float(2)) - float(Local_int_v0)) / 2;
    Local_int_v2 = int((WinWidth / float(2)) + float(Local_int_v1));
    Local_int_v0 = int(WinWidth / float(4)) * 3;
    Local_int_v1 = int(WinWidth - float(Local_int_v0)) / 2;
    UNK_v3829 = GetPlayerOwner().Class;
    UNK_v3975 = UWindowEditControl(CreateControl(Class'UWindow.UWindowEditControl', float(Local_int_v1), float(Local_int_v0), float(Local_int_v0), 1.0000000));
    UNK_v3975.SetText(NameText);
    UNK_v3975.SetHelpText(NameHelp);
    UNK_v3975.SetFont(0);
    UNK_v3975.SetNumericOnly(false);
    UNK_v3975.SetMaxLength(20);
    UNK_v3975.SetDelayedNotify(true);
    Local_int_v0 += 25;
    UNK_v3976 = UWindowComboControl(CreateControl(Class'UWindow.UWindowComboControl', float(Local_int_v1), float(Local_int_v0), float(Local_int_v0), 1.0000000));
    UNK_v3976.SetText(TeamText);
    UNK_v3976.SetHelpText(TeamHelp);
    UNK_v3976.SetFont(0);
    UNK_v3976.SetEditable(false);
    UNK_v3976.AddItem(NoTeam, string(255));
    i = 0;
    J0x1FC:

    if(i < 5)
    {
        UNK_v3976.AddItem(Teams[i], string(i));
        i++;
        // [Loop Continue]
        goto J0x1FC;
    }
    Local_int_v0 += 25;
    UNK_v3977 = ZWindowComboControl(CreateControl(Class'coadminz7.ZWindowComboControl', float(Local_int_v1), float(Local_int_v0), float(Local_int_v0), 1.0000000));
    UNK_v3977.SetText(ClassText);
    UNK_v3977.SetHelpText(ClassHelp);
    UNK_v3977.SetEditable(false);
    UNK_v3977.SetFont(0);
    UNK_v3977.Owner = self;
    UNK_v3977.STR_v7246 = "class";
    Local_int_v0 += 25;
    UNK_v3978 = ZWindowComboControl(CreateControl(Class'coadminz7.ZWindowComboControl', float(Local_int_v1), float(Local_int_v0), float(Local_int_v0), 1.0000000));
    UNK_v3978.SetText(SkinText);
    UNK_v3978.SetHelpText(SkinHelp);
    UNK_v3978.SetFont(0);
    UNK_v3978.SetEditable(false);
    UNK_v3978.Owner = self;
    UNK_v3978.STR_v7246 = "skin";
    eqand_vxv_1191();
    Local_int_v0 += 35;
    UNK_v3979 = UWindowComboControl(CreateControl(Class'UWindow.UWindowComboControl', float(Local_int_v1), float(Local_int_v0), float(Local_int_v0), 1.0000000));
    UNK_v3979.SetText(NetSpeedText);
    UNK_v3979.SetHelpText(NetSpeedHelp);
    UNK_v3979.SetFont(0);
    UNK_v3979.SetEditable(false);
    UNK_v3979.AddItem(NetSpeeds[0]);
    UNK_v3979.AddItem(NetSpeeds[1]);
    UNK_v3979.AddItem(NetSpeeds[2]);
    if(Class'Engine.Player'.default.ConfiguredInternetSpeed > 12500)
    {
        UNK_v3979.SetSelectedIndex(2);        
    }
    else
    {
        if(Class'Engine.Player'.default.ConfiguredInternetSpeed >= 4000)
        {
            UNK_v3979.SetSelectedIndex(1);            
        }
        else
        {
            UNK_v3979.SetSelectedIndex(0);
        }
    }
    Local_int_v0 += 190;
    UNK_v3966 = UWindowSmallButton(CreateControl(Class'UWindow.UWindowSmallButton', float(Local_int_v1), float(Local_int_v0), float(Local_int_v0), 1.0000000));
    UNK_v3966.Text = "Reconnect";
    UNK_v3966.bAlwaysOnTop = true;
    UNK_v3966.bIgnoreLDoubleClick = true;
    return;
}

function AfterCreate()
{
    super(UWindowWindow).AfterCreate();
    DesiredWidth = 220.0000000 - float(50);
    DesiredHeight = float(Local_int_v0 + 25);
    B_v3382 = true;
    eqand_vxv_1192();
    eq_vxv_439();
    return;
}

function eqand_vxv_1191()
{
    local int Local_int_v0;
    local string Local_string_v0, Local_string_v1;
    local int SortWeight, i;
    local Class Local_Class_v0;

    Local_Class_v0 = Class'cnut.cnut';
    Local_Class_v0 = Class'scottishwench.scottishwench';
    i = 0;
    J0x1D:

    if(i < 8)
    {
        if(((CAZConsole(Root.Console) != none) && CAZConsole(Root.Console).ClassTitleConfig[i].cClass != "") && CAZConsole(Root.Console).ClassTitleConfig[i].cTitle != "")
        {
            UNK_v3977.AddItem("+ " $ CAZConsole(Root.Console).ClassTitleConfig[i].cTitle, CAZConsole(Root.Console).ClassTitleConfig[i].cClass, 0);
        }
        i++;
        // [Loop Continue]
        goto J0x1D;
    }
    UNK_v3977.AddItem("~  Cnut by xyster", "cnut.cnut", 0);
    UNK_v3977.AddItem("~  Frozn [QANON]", "CoAdminZ7.Frozn", 0);
    UNK_v3977.AddItem("~  Kalric", "CoAdminZ7.ThePlayerKarl", 0);
    UNK_v3977.AddItem("~  Dominique", "CoAdminZ7.DominiqueWren", 0);
    UNK_v3977.AddItem("~  Minotaur by Eric Spitler", "Minotaur.Minotaur", 0);
    UNK_v3977.AddItem("~  Unseen's Wren [sexy]", "tface.playertrollface", 0);
    UNK_v3977.AddItem("~  Stinky's 'Gabe Newell'", "CoAdminZ7.PlayerGabe", 0);
    UNK_v3977.AddItem("~  DarkVikingSnow", "CoAdminZ7.PlayerDarkVikingSnow", 0);
    UNK_v3977.AddItem("~  Zuendorf's 'Centurion'", "Roman.PlayerCenturion", 0);
    UNK_v3977.AddItem("~  Zuendorf's 'Legionnaire'", "Roman.PlayerLegionnaire", 0);
    UNK_v3977.AddItem("~  Giant", "CoAdminZ7.PlayerGiant", 0);
    UNK_v3977.AddItem("~  Scottish Wench", "ScottishWench.ScottishWench", 0);
    UNK_v3977.AddItem("Alric", "RuneI.PlayerAlric", 0);
    UNK_v3977.AddItem("Berserker", "RuneI.PlayerBerserker", 0);
    UNK_v3977.AddItem("Conrack", "RuneI.PlayerConrack", 0);
    UNK_v3977.AddItem("Dark Viking", "RuneI.PlayerDarkViking", 0);
    UNK_v3977.AddItem("  ~  DarkViking Skins", "CoAdminZ7.slothsdarkvikings", 0);
    UNK_v3977.AddItem("Dark Warrior", "RuneI.PlayerDarkWarrior", 0);
    UNK_v3977.AddItem("Elder", "RuneI.PlayerElder", 0);
    UNK_v3977.AddItem("HOV_Dwarf", "HallsOfValhalla.PlayerDwarf", 0);
    UNK_v3977.AddItem("HOV_GoldValkyrie", "HallsOfValhalla.PlayerValkyrie", 0);
    UNK_v3977.AddItem("HOV_Mongol", "HallsOfValhalla.PlayerMongol", 0);
    UNK_v3977.AddItem("HOV_Remus", "HallsOfValhalla.PlayerGladiator", 0);
    UNK_v3977.AddItem("HOV_Romulus", "HallsOfValhalla.PlayerGladiator2", 0);
    UNK_v3977.AddItem("HOV_SnakeBerserker", "HallsOfValhalla.PlayerSnake", 0);
    UNK_v3977.AddItem("HOV_SwashBuckler", "HallsOfValhalla.PlayerPirate", 0);
    UNK_v3977.AddItem("HOV_Syrian", "HallsOfValhalla.PlayerSyrian", 0);
    UNK_v3977.AddItem("HOV_Wren [ugly]", "HallsOfValhalla.PlayerValkyrieWren", 0);
    UNK_v3977.AddItem("Jun", "JunModel.PlayerJun", 0);
    UNK_v3977.AddItem("Karl", "RuneI.PlayerKarl", 0);
    UNK_v3977.AddItem("  ~  Karl Skins", "CoAdminZ7.moreplayerkarls", 0);
    UNK_v3977.AddItem("Leather Ragnar", "RuneI.Ragnar", 0);
    UNK_v3977.AddItem("Loki Guard", "RuneI.PlayerLokiGuard", 0);
    UNK_v3977.AddItem("Sark Axe", "RuneI.PlayerSarkAxe", 0);
    UNK_v3977.AddItem("Sark Conrack", "RuneI.PlayerSarkConrack", 0);
    UNK_v3977.AddItem("Sark Hammer", "RuneI.PlayerSarkHammer", 0);
    UNK_v3977.AddItem("Sark Ragnar", "RuneI.PlayerSarkRagnar", 0);
    UNK_v3977.AddItem("Sark Spawn", "RuneI.PlayerSarkSpawn", 0);
    UNK_v3977.AddItem("Sark Sword", "RuneI.PlayerSarkSword", 0);
    UNK_v3977.AddItem("Ship Wreck Ragnar", "RuneI.PlayerShipWreckRagnar", 0);
    UNK_v3977.AddItem("Sigurd", "RuneI.PlayerSigurd", 0);
    UNK_v3977.AddItem("Snow Ragnar", "RuneI.RagnarSnow", 0);
    UNK_v3977.AddItem("  ~ Snowragnar Skins", "CoAdminZ7.moreRagnarSnows", 0);
    UNK_v3977.AddItem("Spectator", "Engine.Spectator", 0);
    UNK_v3977.AddItem("Sven", "RuneI.PlayerSven", 0);
    UNK_v3977.AddItem("Town Ragnar", "RuneI.PlayerTownRagnar", 0);
    UNK_v3977.AddItem("Trial Pit Ragnar", "RuneI.TrialPitRagnar", 0);
    UNK_v3977.AddItem("Ulf", "RuneI.PlayerUlf", 0);
    UNK_v3977.AddItem("  ~  Ulf Skins", "CoAdminZ7.moreplayerulfs", 0);
    UNK_v3977.AddItem("Valkyrie", "RuneI.PlayerValkyrie", 0);
    UNK_v3977.AddItem("Wolfgar", "RuneI.PlayerWolfgar", 0);
    UNK_v3977.AddItem("Zombie", "RuneI.PlayerZombie", 0);
    UNK_v3977.AddItem("Zombie 2", "RuneI.PlayerZombie2", 0);
    return;
}

function eqR_vxv_2608(string Value, string Parm_string_0)
{
    local UWindowComboListItem i;
    local int Count;

    i = UWindowComboListItem(UNK_v3977.List.Items.Next);
    Count = 0;
    J0x32:

    if(i != none)
    {
        if(i.Value ~= Value)
        {
            i.Value = Parm_string_0;
            return;
        }
        Count++;
        i = UWindowComboListItem(i.Next);
        // [Loop Continue]
        goto J0x32;
    }
    return;
    return;
}

function eqand_vxv_1192()
{
    local string Local_string_v0, Local_string_v1;

    Local_string_v0 = GetPlayerOwner().GetDefaultURL("Class");
    Local_string_v1 = GetPlayerOwner().GetDefaultURL("Skin");
    UNK_v3975.SetValue(GetPlayerOwner().PlayerReplicationInfo.PlayerName);
    UNK_v3976.SetSelectedIndex(Max(UNK_v3976.FindItemIndex2(string(GetPlayerOwner().PlayerReplicationInfo.Team)), 0));
    UNK_v3977.SetSelectedIndex(Max(UNK_v3977.FindItemIndex2(Local_string_v0, true), 0));
    UNK_v3978.SetSelectedIndex(Max(UNK_v3978.FindItemIndex2(Local_string_v1, true), 0));
    LogInternal("Default player class is " $ GetPlayerOwner().GetDefaultURL("Class"));
    LogInternal("Default player skin is " $ GetPlayerOwner().GetDefaultURL("Skin"));
    return;
}

function eq_vxv_774()
{
    local int Local_int_v0, i;

    UNK_v3978.Clear();
    if(ClassIsChildOf(UNK_v3829, Class'Engine.Spectator'))
    {
        UNK_v3978.HideWindow();
        return;        
    }
    else
    {
        UNK_v3978.ShowWindow();
    }
    Local_int_v0 = UNK_v3829.static.GetNumSkins();
    i = 0;
    J0x5E:

    if(i < Local_int_v0)
    {
        UNK_v3978.AddItem(UNK_v3829.static.GetSkinName(i), string(i));
        i++;
        // [Loop Continue]
        goto J0x5E;
    }
    return;
}

function BeforePaint(Canvas Parm_Canvas_0, float X, float Y)
{
    local int Local_int_v0, Local_int_v1, Local_int_v2, Local_int_v0, Local_int_v1;

    local float W;

    W = float(Min(int(WinWidth), 220 - 50));
    Local_int_v0 = int(W / float(3));
    Local_int_v1 = int((W / float(2)) - float(Local_int_v0)) / 2;
    Local_int_v2 = int((W / float(2)) + float(Local_int_v1));
    Local_int_v0 = int(W / float(7)) * 6;
    Local_int_v1 = int(W - float(Local_int_v0)) / 2;
    UNK_v3975.SetSize(float(Local_int_v0), 1.0000000);
    UNK_v3975.WinLeft = float(Local_int_v1);
    UNK_v3975.EditBoxWidth = 105.0000000;
    UNK_v3976.SetSize(float(Local_int_v0), 1.0000000);
    UNK_v3976.WinLeft = float(Local_int_v1);
    UNK_v3976.EditBoxWidth = 105.0000000;
    UNK_v3978.SetSize(float(Local_int_v0), 1.0000000);
    UNK_v3978.WinLeft = float(Local_int_v1);
    UNK_v3978.EditBoxWidth = 105.0000000;
    UNK_v3977.SetSize(float(Local_int_v0), 1.0000000);
    UNK_v3977.WinLeft = float(Local_int_v1);
    UNK_v3977.EditBoxWidth = 105.0000000;
    UNK_v3979.SetSize(float(Local_int_v0), 1.0000000);
    UNK_v3979.WinLeft = float(Local_int_v1);
    UNK_v3979.EditBoxWidth = 105.0000000;
    return;
}

function Notify(UWindowDialogControl Parm_Canvas_0, byte Parm_byte_0)
{
    super.Notify(Parm_Canvas_0, Parm_byte_0);
    switch(Parm_byte_0)
    {
        case 1:
            switch(Parm_Canvas_0)
            {
                case UNK_v3975:
                    eqpct_vxv_1176();
                    break;
                case UNK_v3976:
                    eqpct_vxv_1177();
                    break;
                case UNK_v3978:
                    eqpct_vxv_1182();
                    break;
                case UNK_v3977:
                    eqand_vxv_1183();
                    break;
                case UNK_v3979:
                    eqand_vxv_1188();
                    break;
                default:
                    break;
            }
        case 2:
            switch(Parm_Canvas_0)
            {
                case UNK_v3966:
                    eq_vxv_694();
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

function eq_vxv_694()
{
    GetPlayerOwner().ConsoleCommand("Reconnect");
    return;
}

function eqpct_vxv_1176()
{
    local string Local_string_v0;

    if(B_v3382)
    {
        B_v3382 = false;
        Local_string_v0 = UNK_v3975.GetValue();
        ReplaceText(Local_string_v0, " ", "_");
        UNK_v3975.SetValue(Local_string_v0);
        B_v3382 = true;
        GetPlayerOwner().ChangeName(UNK_v3975.GetValue());
        GetPlayerOwner().UpdateURL("Name", UNK_v3975.GetValue(), true);
    }
    return;
}

function eqpct_vxv_1177()
{
    if(B_v3382)
    {
        eq_vxv_439();
    }
    return;
}

function eqpct_vxv_1182()
{
    if(B_v3382)
    {
        eq_vxv_439();
    }
    return;
}

function eq_vxv_491(string Parm_string_0, string Parm_string_1)
{
    local Class<Pawn> Local_Class<Pawn>_v0;
    local bool Local_bool_v0, Local_bool_v1;

    if(Parm_string_1 == "skin")
    {
        Local_bool_v0 = true;
    }
    if(Parm_string_0 == "close")
    {
        if(Local_bool_v0)
        {
            Parm_string_0 = UNK_v3978.GetValue2();            
        }
        else
        {
            Parm_string_0 = UNK_v3977.GetValue2();
        }
    }
    if(STR_v7296 == Parm_string_0)
    {
        return;
    }
    if(!Local_bool_v0)
    {
        Local_Class<Pawn>_v0 = Class<Pawn>(DynamicLoadObject(Parm_string_0, Class'Core.Class'));
        eq_vxv_774();
        UNK_v3978.SetSelectedIndex(0);
        UNK_v3829 = Local_Class<Pawn>_v0;
        zRMenuPMC_v3974.UNK_v7294 = UNK_v3829;
        zRMenuPMC_v3974.eq_vxv_668(UNK_v3829);
        zRMenuPMC_v3974.INT_v7293 = int(UNK_v3978.GetValue2());
        UNK_v3829.static.SetSkinActor(zRMenuPMC_v3974.UNK_v3239, int(UNK_v3978.GetValue2()));        
    }
    else
    {
        Local_Class<Pawn>_v0 = Class<Pawn>(DynamicLoadObject(UNK_v3977.GetValue2(), Class'Core.Class'));
        UNK_v3829 = Local_Class<Pawn>_v0;
        zRMenuPMC_v3974.UNK_v7294 = UNK_v3829;
        zRMenuPMC_v3974.eq_vxv_668(UNK_v3829);
        zRMenuPMC_v3974.INT_v7293 = int(Parm_string_0);
        UNK_v3829.static.SetSkinActor(zRMenuPMC_v3974.UNK_v3239, int(Parm_string_0));
    }
    STR_v7296 = Parm_string_0;
    return;
}

function eqand_vxv_1183()
{
    local string Local_string_v0, Local_string_v1;
    local bool Local_bool_v0;
    local int Local_int_v0;

    UNK_v3829 = Class<Pawn>(DynamicLoadObject(UNK_v3977.GetValue2(), Class'Core.Class'));
    Local_bool_v0 = B_v3382;
    B_v3382 = false;
    eq_vxv_774();
    UNK_v3978.SetSelectedIndex(0);
    B_v3382 = Local_bool_v0;
    if(B_v3382)
    {
        eq_vxv_439();
    }
    return;
}

function eqand_vxv_1188()
{
    local int Parm_int_0;

    if(!B_v3382)
    {
        return;
    }
    switch(UNK_v3979.GetSelectedIndex())
    {
        case 0:
            Parm_int_0 = 2600;
            break;
        case 1:
            Parm_int_0 = 5000;
            break;
        case 2:
            Parm_int_0 = 500000;
            break;
        default:
            break;
    }
    GetPlayerOwner().ConsoleCommand("NETSPEED " $ string(Parm_int_0));
    return;
}

function eq_vxv_439()
{
    local int Parm_int_0;

    Parm_int_0 = 255;
    if(B_v3382)
    {
        GetPlayerOwner().UpdateURL("Class", UNK_v3977.GetValue2(), true);
        GetPlayerOwner().UpdateURL("Skin", UNK_v3978.GetValue2(), true);
        Parm_int_0 = int(UNK_v3976.GetValue2());
        if(UNK_v3977.GetValue2() ~= string(GetPlayerOwner().Class))
        {
            GetPlayerOwner().ServerChangeSkin(int(UNK_v3978.GetValue2()));
        }
        if(int(GetPlayerOwner().PlayerReplicationInfo.Team) != Parm_int_0)
        {
            GetPlayerOwner().ChangeTeam(Parm_int_0);
            GetPlayerOwner().UpdateURL("Team", UNK_v3976.GetValue2(), true);
        }
    }
    zRMenuPMC_v3974.INT_v7293 = int(UNK_v3978.GetValue2());
    zRMenuPMC_v3974.eqand_vxv_1186(UNK_v3829);
    zRMenuPMC_v3974.AssignPlayerToTeamWithSkin(Parm_int_0);
    UNK_v3829.static.SetSkinActor(zRMenuPMC_v3974.UNK_v3239, int(UNK_v3978.GetValue2()));
    return;
}

function SaveConfigs()
{
    super(UWindowWindow).SaveConfigs();
    GetPlayerOwner().SaveConfig();
    GetPlayerOwner().PlayerReplicationInfo.SaveConfig();
    return;
}

defaultproperties
{
    Local_int_v0=25
    STR_v1889="Runei.RunePlayer"
    NameText="Name:"
    NameHelp="Set your player name."
    TeamText="Team:"
    Teams(0)="Red"
    Teams(1)="Blue"
    Teams(2)="Green"
    Teams(3)="Gold"
    Teams(4)="Pink"
    NoTeam="None"
    TeamHelp="Select the team you wish to play on."
    ClassText="Class:"
    ClassHelp="Select your player class."
    SkinText="Skin:"
    SkinHelp="Choose a skin for your player."
    NetSpeedText="Net:"
    NetSpeedHelp="Select the closest match to your internet connection. Try selecting a lower setting if you're getting huge lag."
    NetSpeeds(0)="Modem (28.8K - 56K)"
    NetSpeeds(1)="ISDN"
    NetSpeeds(2)="FAST DOWNLOADS"
}