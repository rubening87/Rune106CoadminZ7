class zRuneMenu extends RuneMenu
    config;

var RuneMenuTopWindow UNK_v7315;
var bool B_v7316;
var UWindowWindow UNK_v7317;
var RuneMeshActor UNK_v7318;

function Created()
{
    local int Local_int_v0;

    super(RuneWindow).Created();
    HOVStr = GetPlayerOwner().ConsoleCommand("ISADDON");
    WinLeft = 0.0000000;
    WinTop = 0.0000000;
    DefaultWidth = 200;
    DefaultHeight = 460;
    WinWidth = float(DefaultWidth);
    WinHeight = float(DefaultHeight);
    Local_int_v0 = 100;
    if(HOVStr == "NONE")
    {
        SpawnLogoMesh();
    }
    if(HOVStr != "STANDALONE")
    {
        NewButton = RuneButton(CreateControl(Class'RMenu.RuneButton', 0.0000000, 0.0000000, 180.0000000, 40.0000000));
        NewButton.Text = NewGameText;
        NewButton.SetHelpText(NewGameHelp);
        NewButton.WinLeft = 10.0000000;
        NewButton.WinTop = float(Local_int_v0);
        NewButton.OverSound = Sound'RMenu.LeftMouseOver';
        NewButton.DownSound = Sound'RMenu.LeftButton';
        Local_int_v0 += 50;
        LoadButton = RuneButton(CreateControl(Class'RMenu.RuneButton', 0.0000000, 0.0000000, 180.0000000, 40.0000000));
        LoadButton.Text = LoadGameText;
        LoadButton.SetHelpText(LoadGameHelp);
        LoadButton.WinLeft = 10.0000000;
        LoadButton.WinTop = float(Local_int_v0);
        LoadButton.OverSound = Sound'RMenu.LeftMouseOver';
        LoadButton.DownSound = Sound'RMenu.LeftButton';
        Local_int_v0 += 50;
        SaveButton = RuneButton(CreateControl(Class'RMenu.RuneButton', 0.0000000, 0.0000000, 180.0000000, 40.0000000));
        SaveButton.Text = SaveGameText;
        SaveButton.SetHelpText(SaveGameHelp);
        SaveButton.WinLeft = 10.0000000;
        SaveButton.WinTop = float(Local_int_v0);
        SaveButton.OverSound = Sound'RMenu.LeftMouseOver';
        SaveButton.DownSound = Sound'RMenu.LeftButton';
        Local_int_v0 += 50;        
    }
    else
    {
        Local_int_v0 += 50;
    }
    MultiButton = RuneButton(CreateControl(Class'RMenu.RuneButton', 0.0000000, 0.0000000, 180.0000000, 40.0000000));
    MultiButton.Text = MultiplayerText;
    MultiButton.SetHelpText(MultiplayerHelp);
    MultiButton.WinLeft = 10.0000000;
    MultiButton.WinTop = float(Local_int_v0);
    MultiButton.OverSound = Sound'RMenu.LeftMouseOver';
    MultiButton.DownSound = Sound'RMenu.LeftButton';
    Local_int_v0 += 50;
    OptionsButton = RuneButton(CreateControl(Class'RMenu.RuneButton', 0.0000000, 0.0000000, 180.0000000, 40.0000000));
    OptionsButton.Text = OptionsText;
    OptionsButton.SetHelpText(OptionsHelp);
    OptionsButton.WinLeft = 10.0000000;
    OptionsButton.WinTop = float(Local_int_v0);
    OptionsButton.OverSound = Sound'RMenu.LeftMouseOver';
    OptionsButton.DownSound = Sound'RMenu.LeftButton';
    Local_int_v0 += 50;
    ExitButton = RuneButton(CreateControl(Class'RMenu.RuneButton', 0.0000000, 0.0000000, 180.0000000, 40.0000000));
    ExitButton.Text = ExitText;
    ExitButton.SetHelpText(ExitHelp);
    ExitButton.WinLeft = 10.0000000;
    ExitButton.OverSound = Sound'RMenu.LeftMouseOver';
    ExitButton.WinTop = float(Local_int_v0);
    ExitButton.DownSound = Sound'RMenu.LeftButton';
    Local_int_v0 += 50;
    if(HOVStr == "STANDALONE")
    {
        Local_int_v0 += 100;
    }
    HHButton = UWindowButton(CreateControl(Class'UWindow.UWindowButton', 120.0000000, float(Local_int_v0), 64.0000000, 60.0000000));
    HHButton.SetHelpText(AboutHelp);
    HHButton.UpTexture = Texture'coadminz7.Icons.DiscordLogo';
    HHButton.DownTexture = Texture'coadminz7.Icons.DiscordLogoS';
    HHButton.OverTexture = Texture'coadminz7.Icons.DiscordLogoS';
    HHButton.bStretched = true;
    HHButton.OverSound = Sound'RMenu.LeftMouseOver';
    HHButton.DownSound = Sound'RMenu.LeftButton';
    if(HOVStr != "STANDALONE")
    {
        NewButton.ButtonTexture = none;
        LoadButton.ButtonTexture = none;
        SaveButton.ButtonTexture = none;
    }
    MultiButton.ButtonTexture = none;
    OptionsButton.ButtonTexture = none;
    ExitButton.ButtonTexture = none;
    return;
}

function AfterPaint(Canvas Parm_Canvas_0, float X, float Y)
{
    local float Local_float_v0;

    if(UNK_v7318 != none)
    {
        LogoOffset.X = 71.0000000;
        LogoOffset.Y = 7.0000000;
        LogoOffset.Z = -41.0000000;
        Local_float_v0 = GetPlayerOwner().FovAngle;
        GetPlayerOwner().SetFOVAngle(30.0000000);
        DrawClippedActor(Parm_Canvas_0, WinWidth / float(2), WinHeight / float(2), UNK_v7318, false, ViewRotator, LogoOffset);
        GetPlayerOwner().SetFOVAngle(Local_float_v0);        
    }
    else
    {
        SpawnLogoMesh();
    }
    Parm_Canvas_0.Font = Root.Fonts[0];
    Parm_Canvas_0.SetPos(10.0000000, (Root.GUIScale * WinHeight) - (Root.GUIScale * float(12)));
    Parm_Canvas_0.DrawText(GetVersionString());
    return;
}

function Texture eqplus_vxv_1356(byte Parm_byte_0)
{
    switch(Parm_byte_0)
    {
        case 1:
            return Texture'CAZTest.Icons.CAZRuneMenu1';
            break;
        case 2:
            return Texture'CAZTest.Icons.CAZRuneMenu2';
            break;
        case 3:
            return Texture'CAZTest.Icons.CAZRuneMenu3';
            break;
        case 4:
            return Texture'CAZTest.Icons.CAZRuneMenu4';
            break;
        case 5:
            return Texture'CAZTest.Icons.CAZRuneMenu5';
            break;
        case 6:
            return Texture'CAZTest.Icons.CAZRuneMenu6';
            break;
        case 7:
            return Texture'CAZTest.Icons.CAZRuneMenu7';
            break;
        case 8:
            return Texture'CAZTest.Icons.CAZRuneMenu8';
            break;
        case 9:
            return Texture'CAZTest.Icons.CAZRuneMenu9';
            break;
        case 10:
            return Texture'CAZTest.Icons.CAZRuneMenu10';
            break;
        case 11:
            return Texture'CAZTest.Icons.CAZRuneMenu11';
            break;
        case 12:
            return Texture'CAZTest.Icons.CAZRuneMenu12';
            break;
        case 13:
            return Texture'CAZTest.Icons.CAZRuneMenu13';
            break;
        case 14:
            return Texture'CAZTest.Icons.CAZRuneMenu14';
            break;
        case 15:
            return Texture'CAZTest.Icons.CAZRuneMenu15';
            break;
        case 16:
            return Texture'CAZTest.Icons.CAZRuneMenu16';
            break;
        case 17:
            return Texture'CAZTest.Icons.CAZRuneMenu17';
            break;
        case 18:
            return Texture'CAZTest.Icons.CAZRuneMenu18';
            break;
        case 19:
            return Texture'CAZTest.Icons.CAZRuneMenu19';
            break;
        case 20:
            return Texture'CAZTest.Icons.CAZRuneMenu20';
            break;
        case 21:
            return Texture'CAZTest.Icons.CAZRuneMenu21';
            break;
        case 22:
            return Texture'CAZTest.Icons.CAZRuneMenu22';
            break;
        case 23:
            return Texture'CAZTest.Icons.CAZRuneMenu23';
            break;
        case 24:
            return Texture'CAZTest.Icons.CAZRuneMenu24';
            break;
        case 25:
            return Texture'CAZTest.Icons.CAZRuneMenu25';
            break;
        case 26:
            return Texture'CAZTest.Icons.CAZRuneMenu26';
            break;
        case 27:
            return Texture'CAZTest.Icons.CAZRuneMenu27';
            break;
        case 28:
            return Texture'CAZTest.Icons.CAZRuneMenu28';
            break;
        case 29:
            return Texture'CAZTest.Icons.CAZRuneMenu29';
            break;
        case 30:
            return Texture'CAZTest.Icons.CAZRuneMenu30';
            break;
        case 31:
            return Texture'CAZTest.Icons.CAZRuneMenu31';
            break;
        case 32:
            return Texture'CAZTest.Icons.CAZRuneMenu32';
            break;
        default:
            break;
    }
    return;
}

final function eqR_vxv_2609(Canvas Parm_Canvas_0, float X, float Y, float W, float H, Texture Parm_Texture_0, optional bool eq_a_vxv_7321)
{
    eqR_vxv_2611(Parm_Canvas_0, X, Y, W, H, 0.0000000, 0.0000000, float(Parm_Texture_0.USize), float(Parm_Texture_0.VSize), Parm_Texture_0, eq_a_vxv_7321);
    return;
}

final function eqR_vxv_2611(Canvas Parm_Canvas_0, float X, float Y, float W, float H, float Parm_float_0, float Parm_float_1, float Parm_float_2, float Parm_float_3, Texture Parm_Texture_0, optional bool eq_a_vxv_7321)
{
    local float OrgX, OrgY, ClipX, ClipY;
    local int Local_int_v0, Local_int_v1;
    local string Local_string_v0;

    if(eq_a_vxv_7321)
    {
        if(CAZConsole(Root.Console).Local_string_v0 ~= "class'D3D9Drv.D3D9RenderDevice'")
        {
            Local_int_v1 = 175;            
        }
        else
        {
            Local_int_v1 = 255;
        }        
    }
    else
    {
        Local_int_v1 = 255;
    }
    if(CAZConsole(Root.Console).testint3 == 1)
    {
        Parm_Canvas_0.bNoSmooth = true;
    }
    OrgX = Parm_Canvas_0.OrgX;
    OrgY = Parm_Canvas_0.OrgY;
    ClipX = Parm_Canvas_0.ClipX;
    ClipY = Parm_Canvas_0.ClipY;
    Parm_Canvas_0.DrawColor.R = byte(float(byte(Local_int_v1)) * CAZConsole(Root.Console).eqAE_vxv_6312);
    Parm_Canvas_0.DrawColor.G = byte(float(byte(Local_int_v1)) * CAZConsole(Root.Console).eqAE_vxv_6312);
    Parm_Canvas_0.DrawColor.B = byte(float(byte(Local_int_v1)) * CAZConsole(Root.Console).eqAE_vxv_6312);
    Parm_Canvas_0.SetOrigin(OrgX + (float(ClippingRegion.X) * Root.GUIScale), OrgY + (float(ClippingRegion.Y) * Root.GUIScale));
    Parm_Canvas_0.SetClip(float(ClippingRegion.W) * Root.GUIScale, float(ClippingRegion.H) * Root.GUIScale);
    Parm_Canvas_0.SetPos((X - float(ClippingRegion.X)) * Root.GUIScale, (Y - float(ClippingRegion.Y)) * Root.GUIScale);
    Parm_Canvas_0.DrawTileClipped(Parm_Texture_0, W * Root.GUIScale, H * Root.GUIScale, Parm_float_0, Parm_float_1, Parm_float_2, Parm_float_3);
    if(CAZConsole(Root.Console).testint3 == 1)
    {
        Parm_Canvas_0.bNoSmooth = false;
    }
    Parm_Canvas_0.SetClip(ClipX, ClipY);
    Parm_Canvas_0.SetOrigin(OrgX, OrgY);
    return;
}

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    local int i, Local_int_v0, Local_int_v1;
    local float Local_float_v0;

    if((CAZConsole(Root.Console).testint1 == 420420) || zPlayerReplicationInfo(GetPlayerOwner().PlayerReplicationInfo).testkey ~= "menu")
    {
        super(RuneWindow).Paint(Parm_Canvas_0, X, Y);
        LookAndFeel.Active = Texture'CAZTest.CAZStoneActiveFrame';
        LookAndFeel.Inactive = Texture'CAZTest.CAZStoneInactiveFrame';
        LookAndFeel.ActiveS = Texture'CAZTest.CAZStoneActiveFrameS';
        LookAndFeel.InactiveS = Texture'CAZTest.CAZStoneInactiveFrameS';
        Local_int_v0 = 0;
        Local_float_v0 = 0.0000000;
        Local_int_v1 = 0;
        i = 1;
        J0xD5:

        if(i < 33)
        {
            if(Local_float_v0 == float(1))
            {
                Local_float_v0 = 0.0000000;
                Local_int_v1 = 0;
                Local_int_v0++;
            }
            eqR_vxv_2609(Parm_Canvas_0, WinWidth * (float(Local_int_v1) * 0.2500000), WinHeight * (float(Local_int_v0) * 0.1250000), WinWidth * 0.2500000, WinHeight * 0.1250000, eqplus_vxv_1356(byte(i)), true);
            Local_float_v0 += 0.2500000;
            Local_int_v1++;
            i++;
            // [Loop Continue]
            goto J0xD5;
        }        
    }
    else
    {
        LookAndFeel.Active = LookAndFeel.default.Active;
        LookAndFeel.Inactive = LookAndFeel.default.Inactive;
        LookAndFeel.ActiveS = LookAndFeel.default.ActiveS;
        LookAndFeel.InactiveS = LookAndFeel.default.InactiveS;
        super.Paint(Parm_Canvas_0, X, Y);
    }
    return;
}

function SpawnLogoMesh()
{
    UNK_v7318 = GetEntryLevel().Spawn(Class'RMenu.RuneLookMesh', GetEntryLevel());
    UNK_v7318.Skeletal = SkelModel'creatures.Goblin';
    UNK_v7318.SkelMesh = 0;
    UNK_v7318.LoopAnim('flip', 1.0000000, 0.1000000);
    ViewRotator = rot(0, 32768, 0) + CenterRotator;
    return;
}

function NotifyAfterLevelChange()
{
    NotifyBeforeLevelChange();
    Close();
    return;
}

function NotifyBeforeLevelChange()
{
    super(UWindowWindow).NotifyBeforeLevelChange();
    Close();
    return;
}

function Tick(float Parm_float_0)
{
    local Rotator R;
    local UWindowWindow Prev, Local_UWindowWindow_v0;

    TimeElapsed += Parm_float_0;
    R.Pitch = int(Cos(TimeElapsed) * RotFactor.X);
    R.Yaw = int(Sin(TimeElapsed) * RotFactor.Y);
    R.Roll = 0;
    ViewRotator = (rot(0, 32768, 0) + CenterRotator) + R;
    return;
}

function string GetVersionString()
{
    local string Text, Local_string_v0, STR_v2391;

    Text = "" $ GetEntryLevel().EngineVersion;
    Local_string_v0 = Text;
    Text = Left(Text, 3);
    STR_v2391 = (Left(Text, 1) $ ".") $ Right(Text, 2);
    return "Rune " $ STR_v2391;
    return;
}

function HideSubmenusExcept(RuneMenuTopWindow Parm_RuneMenuTopWindow_0)
{
    local Color Local_int_v0;

    if((NewMenu != none) && NewMenu != Parm_RuneMenuTopWindow_0)
    {
        NewMenu.HideWindow();
        NewMenu.HideAllWindows();
    }
    if((LoadMenu != none) && LoadMenu != Parm_RuneMenuTopWindow_0)
    {
        LoadMenu.HideWindow();
        LoadMenu.HideAllWindows();
    }
    if((SaveMenu != none) && SaveMenu != Parm_RuneMenuTopWindow_0)
    {
        SaveMenu.HideWindow();
        SaveMenu.HideAllWindows();
    }
    if((OptionsMenu != none) && OptionsMenu != Parm_RuneMenuTopWindow_0)
    {
        OptionsMenu.HideWindow();
        OptionsMenu.HideAllWindows();
    }
    if((UNK_v7315 != none) && UNK_v7315 != Parm_RuneMenuTopWindow_0)
    {
        UNK_v7315.HideWindow();
        UNK_v7315.HideAllWindows();
    }
    if((AboutMenu != none) && AboutMenu != Parm_RuneMenuTopWindow_0)
    {
        AboutMenu.HideWindow();
        AboutMenu.HideAllWindows();
    }
    if(HOVStr != "STANDALONE")
    {
        NewButton.ResetTextColor();
        LoadButton.ResetTextColor();
        SaveButton.ResetTextColor();
    }
    MultiButton.ResetTextColor();
    OptionsButton.ResetTextColor();
    ExitButton.ResetTextColor();
    return;
}

function Notify(UWindowDialogControl Parm_Canvas_0, byte Parm_byte_0)
{
    local bool Local_bool_v0;

    if(bool(zPlayerReplicationInfo(Root.GetPlayerOwner().PlayerReplicationInfo)) && zPlayerReplicationInfo(Root.GetPlayerOwner().PlayerReplicationInfo).testkey ~= "menu")
    {
        UNK_v7315 = none;
        Local_bool_v0 = true;        
    }
    else
    {
        UNK_v7317 = none;
        Local_bool_v0 = false;
    }
    if(int(Parm_byte_0) == 2)
    {
        if(!B_v7316)
        {
            if(CAZConsole(Root.Console) != none)
            {
                CAZConsole(Root.Console).eqpct_vxv_1172();
            }
            B_v7316 = true;
        }
        switch(Parm_Canvas_0)
        {
            case NewButton:
                HideSubmenusExcept(NewMenu);
                if(NewMenu == none)
                {
                    NewMenu = RuneMenuTopWindow(Root.CreateWindow(Class'RMenu.RuneMenuNewTop', 0.0000000, 0.0000000, 440.0000000, 100.0000000));
                }
                NewMenu.ShowWindow();
                if((NewMenu != none) && !NewMenu.bOpen)
                {
                    NewMenu.SlideOpen();
                }
                break;
            case LoadButton:
                HideSubmenusExcept(LoadMenu);
                if(LoadMenu == none)
                {
                    LoadMenu = RuneMenuTopWindow(Root.CreateWindow(Class'RMenu.RuneMenuLoadTop', 0.0000000, 0.0000000, 440.0000000, 100.0000000));
                }
                LoadMenu.ShowWindow();
                if((LoadMenu != none) && !LoadMenu.bOpen)
                {
                    LoadMenu.SlideOpen();
                }
                break;
            case SaveButton:
                HideSubmenusExcept(SaveMenu);
                if(SaveMenu == none)
                {
                    SaveMenu = RuneMenuTopWindow(Root.CreateWindow(Class'RMenu.RuneMenuSaveTop', 0.0000000, 0.0000000, 440.0000000, 100.0000000));
                }
                SaveMenu.ShowWindow();
                if((SaveMenu != none) && !SaveMenu.bOpen)
                {
                    SaveMenu.SlideOpen();
                }
                break;
            case OptionsButton:
                HideSubmenusExcept(OptionsMenu);
                if(OptionsMenu == none)
                {
                    OptionsMenu = RuneMenuTopWindow(Root.CreateWindow(Class'RMenu.RuneMenuOptionsTop', 0.0000000, 0.0000000, 440.0000000, 100.0000000));
                }
                OptionsMenu.ShowWindow();
                if((OptionsMenu != none) && !OptionsMenu.bOpen)
                {
                    OptionsMenu.SlideOpen();
                }
                break;
            case MultiButton:
                if(UNK_v7315 != none)
                {
                    HideSubmenusExcept(UNK_v7315);
                }
                if(MultiMenu != none)
                {
                    MultiMenu.Close();
                    MultiMenu = none;
                }
                if(Local_bool_v0)
                {
                    if(UNK_v7317 == none)
                    {
                        UNK_v7317 = Root.CreateWindow(Class'coadminz7.zBrowserMainWindow', 200.0000000, 100.0000000, 440.0000000, 360.0000000);
                    }
                    if(UNK_v7317 != none)
                    {
                        UNK_v7317.ShowWindow();
                    }                    
                }
                else
                {
                    if(UNK_v7315 == none)
                    {
                        UNK_v7315 = RuneMenuTopWindow(Root.CreateWindow(Class'coadminz7.zRuneMenuMultiplayerTop', 0.0000000, 0.0000000, 440.0000000, 100.0000000));
                    }
                    UNK_v7315.ShowWindow();
                    if((UNK_v7315 != none) && !UNK_v7315.bOpen)
                    {
                        UNK_v7315.SlideOpen();
                    }
                }
                break;
            case ExitButton:
                HideSubmenusExcept(none);
                Root.Console.ConsoleCommand("Exit");
                break;
            case HHButton:
                Root.Console.ConsoleCommand("start http://bit.ly/runediscord");
                break;
            default:
                break;
        }
    }
    else
    {
        return;
    }
}
