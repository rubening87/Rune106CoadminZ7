// Original class: ACActor (Anti-Cheat Actor for game validation)
// This class handles player joining, file checksum validation, anti-cheat checks, and logging.
// It appears to be part of an anti-cheat system for a multiplayer game (e.g., Rune), checking for hacks, invalid files, etc.

class ACActor extends Actor
    config
    notplaceable;

// Struct for storing player-specific check data
struct PlayerCheckInfo
{
    var ACReplicationInfo PlayerRep;  // Replication info for the player
    var PlayerReplicationInfo PRI;    // Player replication info
    var PlayerPawn PP;                // The player's pawn
    var float JoinTime;               // Time when player joined
    var float KickTime;               // Time when player was kicked
    var string OS;                    // Operating system
    var string Renderer;              // Renderer device
    var string RendererChecksum;      // Checksum of renderer
    var int RendererSize;             // Size of renderer file
    var string WebResponse;           // Web response string
    var string BypassAttempt;         // Attempted bypass string
    var int UnknownInt1;              // Unknown integer (possibly related to checks)
    var string UnknownStr1;           // Unknown string
    var string UnknownStr2;           // Unknown string
    var int UnknownInt2;              // Unknown integer
    var string UnknownStr3;           // Unknown string
    var string UnknownStr4;           // Unknown string
    var int UnknownInt3;              // Unknown integer
    var string GUID;                  // Game GUID
    var string EngineVersion;         // Engine version
    var int FileIndex;                // Current file index being checked
    var int FileChecksums[20];        // Array of file checksums
    var int FileSizes[20];            // Array of file sizes
    var int FileTypes[20];            // Array of file types
    var string UnknownStr5;           // Unknown string
    var string UnknownStr6;           // Unknown string
    var int UnknownInt4;              // Unknown integer
    var string UnknownStr7;           // Unknown string
    var int FilePriorities[20];       // Array of file priorities
    var bool IsValidated;             // Whether the player is validated
    var bool IsKicked;                // Whether the player is kicked
    var bool IsTimedOut;              // Whether the player timed out
};

// Array of player check infos (up to 64 players)
var PlayerCheckInfo Players[64];

// File includer for processing binary data
var FileIncluder FI;

// HTTP handler for external communication
var ACHTTP HTTP;

// Logger for external logs
var Logger Log;

// Hook for network fixes
var ACHook Hook;

// Validator for file/library checks
var Validator Val;

// Magic key for encryption/decryption
var int MagicKey;

// Number of files to check
var int NumFiles;

// Last processed player ID
var int LastID;

// Arrays for file data
var string FileNames[20];      // Names of files to check
var string Extensions[20];     // Extensions of files
var int Priorities[20];        // Priorities for checks
var int Checksums[20];         // Expected checksums
var int Types[20];             // Types of checks
var int KickFlags[20];         // Flags for kicking on failure

// Paths for different file types
var string UPath;       // Path for .u files
var string UMXPath;     // Path for .umx files
var string UNRPath;     // Path for .unr files
var string UAXPath;     // Path for .uax files
var string UTXPath;     // Path for .utx files

// Strings for new hashes, sizes, etc. (likely for updates)
var string NewHashes;
var string NewSizes;
var string NewNames;
var string NewLibNames;
var string NewLibFiles;
var string NewLibHashes;

// Whether connected to external server
var bool Connected;

// Server mode (0 for client, etc.)
var int ServerMode;

// Server IP and port
var string ServerIP;
var string ServerPort;

// Server actors and packages strings
var string ServerActors;
var string ServerPackages;

// Config variables (already readable, left as-is)
var config bool bEnablePackageChecker;
var config bool bEnableNetFix;
var config float TimeOut;
var config float CheckDelay;
var config bool bKickUnknownRenderer;
var config bool bKickUnknownLibrary;
var config bool bKickUnknownSkin;
var config bool bKickUnknownSound;
var config bool bBroadCastJoin;
var config bool bBroadCastIPs;
var config bool bExternalNotify;
var config bool bSkinCheck;
var config bool bSoundCheck;
var config bool bPureCheck;
var config bool bEUTCheck;
var config bool bSelfCheck;
var config bool bShowConsoleMessages;
var config bool bReportCheats;
var config bool bReceiveUpdates;
var config bool bExternalLogs;
var config string LogPrefix;
var config string LogPath;
var config string Packages[10];
var config int ACLinkMode;
var config float ACDelay;

// Version and build strings
var string Version;
var string Build;

// Suggested function name: Initialize
// Initializes the actor, sets up hooks, HTTP, file includer, and starts checks
function PostBeginPlay()
{
    local int i;  // Loop index
    local string TempStr;  // Temporary string for checks

    // Log initialization messages
    LogInternal("### ------------------------------------------------------------- ");
    LogInternal((("### AnthChecker " $ Version) $ " (Build ") $ Build) $ ") initializing...");
    LogInternal("### ------------------------------------------------------------- ");
    LogInternal("### * NetDriver fix enabled :" @ string(bEnableNetFix));

    if (bEnableNetFix)
    {
        if (Level.NextURL != "")
        {
            LogInternal("### ---> Map is restarting, aborting ...");
        }
        else
        {
            Hook = Level.Spawn(Class'AnthCheckerS_v138.ACHook');
            Hook.ActorRef = self;
            Hook.Init();
        }
    }

    LogInternal("### ------------------------------------------------------------- ");
    LogInternal("### * PackageChecker enabled :" @ string(bEnablePackageChecker));

    if (bEnablePackageChecker)
    {
        ServerActors = ConsoleCommand("get Engine.GameEngine ServerActors");
        ServerPackages = ConsoleCommand("get Engine.GameEngine ServerPackages");
        NumFiles = 0;
        // Generate a "magic key" using a random range (likely for encryption)
        MagicKey = int(__NFUN_1033__(-2004318000.000000, 2004318000.000000));  // Cast float to int as needed for int variable
        ParsePaths();
        LoadPackageConfig();

        if (!ValidateSelf("AnthCheckerS_", "AnthCheckerC_", "AnthChecker"))
        {
            Disable('Tick');
            return;
        }

        if (bSelfCheck)
        {
            TempStr = GetPackageVersion("AnthCheckerC_", "AnthChecker", "bSelfCheck");
            if (TempStr != "")
            {
                AddFileCheck("u", TempStr, 100, 0, true);
            }
        }

        if (bPureCheck)
        {
            if (ValidateSelf("UTPureRC", "UTPureRC", "UTPure"))
            {
                TempStr = GetPackageVersion("UTPureRC", "UTPure", "bPureCheck");
                if (TempStr != "")
                {
                    AddFileCheck("u", TempStr, 100, 0, true);
                }
            }
        }

        if (bEUTCheck)
        {
            if (ValidateSelf("EUT_", "EUT_", "EUT"))
            {
                TempStr = GetPackageVersion("EUT_", "EUT", "bEUTCheck");
                if (TempStr != "")
                {
                    AddFileCheck("u", TempStr, 100, 0, true);
                }
            }
        }

        if (bReportCheats || bReceiveUpdates)
        {
            HTTP = Spawn(Class'AnthCheckerS_v138.ACHTTP');
            HTTP.ActorRef = self;
            HTTP.InitHTTP();
            if (ACLinkMode > 1)
            {
                Connected = true;
                HTTP.Connect();
            }
        }
        else
        {
            Connected = true;
        }

        FI = new (none) Class'AnthCheckerS_v138.FileIncluder';
        FI.MagicKey = MagicKey;
        FI.ActorRef = self;
        FI.Init();
        SetTimer(1.000000, true);

        if (bSkinCheck)
        {
            local int RandSkin1, RandSkin2;
            RandSkin1 = Rand(7);
            RandSkin2 = Rand(7);
            // Ensure RandSkin2 != RandSkin1
            while (RandSkin2 == RandSkin1)
            {
                RandSkin2 = Rand(7);
            }
            LoadSkinCheck(RandSkin1);
            LoadSkinCheck(RandSkin2);
        }

        if (bSoundCheck)
        {
            AddFileCheck("uax", "Female2Voice", 10, 1, bKickUnknownSound);
        }

        LogInternal("### --> Magic Key:" @ string(MagicKey));

        i = 0;
        while (i < NumFiles)
        {
            if (Types[i] == 1)
            {
                LogInternal((("### --> Multichecksum file :" @ FileNames[i]) $ ".") $ Extensions[i]);
                Checksums[i] = -1;
                goto NextIteration;  // Skip to next
            }
            FI.CheckFile(FileNames[i], Extensions[i], Priorities[i], i);
            NextIteration:
            i++;
        }
    }

    LogInternal("### ------------------------------------------------------------- ");
}

// Suggested function name: ValidatePackage
// Checks if a package is in server actors/packages and adds it if needed
function bool ValidateSelf(string ActorPrefix, string PackagePrefix, string PackageName)
{
    local int Index;
    local string TempStr;

    Index = InStr(Caps(ServerActors), Caps(ActorPrefix));
    if (Index == -1)
    {
        LogInternal(("### --> ERROR: " $ PackageName) $ " wasn't found in the serveractors list");
        return false;
    }
    else
    {
        TempStr = Mid(ServerActors, Index + Len(ActorPrefix));
        TempStr = Left(TempStr, InStr(TempStr, "."));
        Index = InStr(Caps(ServerPackages), Caps(PackagePrefix $ TempStr));
        if (Index == -1)
        {
            LogInternal(("### --> ERROR: " $ PackageName) $ " wasn't found in the serverpackages list. auto-adding package...");
            ConsoleCommand(((("set Engine.GameEngine ServerPackages (\"" $ PackagePrefix) $ TempStr) $ "\",") $ Mid(ServerPackages, 1));
            SaveConfig();
            Level.ServerTravel(Left(Mid(Level.GetLocalURL(), InStr(Level.GetLocalURL(), "/") + 1), InStr(Mid(Level.GetLocalURL(), InStr(Level.GetLocalURL(), "/") + 1), "?")), false);
            return false;
        }
    }
    return true;
}

// Suggested function name: GetPackageVersion
// Extracts package version from server packages string
function string GetPackageVersion(string PackagePrefix, string PackageName, string ConfigName)
{
    local int Index;
    local string TempStr;

    Index = InStr(Caps(ServerPackages), Caps(PackagePrefix));
    if (Index == -1)
    {
        LogInternal(((("### --> ERROR: " $ ConfigName) $ " Enabled but ") $ PackageName) $ " wasn't found in the serverpackages list!");
        return "";
    }
    else
    {
        TempStr = Mid(ServerPackages, Index);
        Index = InStr(TempStr, "\"");
        return Left(TempStr, Index);
    }
}

// Suggested function name: LoadSkinCheck
// Adds a skin file to the check list based on index
function LoadSkinCheck(int SkinIndex)
{
    switch (SkinIndex)
    {
        case 0:
            AddFileCheck("utx", "commandoskins", 10, 1, bKickUnknownSkin);
            break;
        case 1:
            AddFileCheck("utx", "FCommandoSkins", 10, 1, bKickUnknownSkin);
            break;
        case 2:
            AddFileCheck("utx", "Female1Skins", 10, 1, bKickUnknownSkin);
            break;
        case 3:
            AddFileCheck("utx", "Female2Skins", 10, 1, bKickUnknownSkin);
            break;
        case 4:
            AddFileCheck("utx", "SGirlSkins", 10, 1, bKickUnknownSkin);
            break;
        case 5:
            AddFileCheck("utx", "Soldierskins", 10, 1, bKickUnknownSkin);
            break;
        case 6:
            AddFileCheck("utx", "BossSkins", 10, 1, bKickUnknownSkin);
            break;
        default:
            break;
    }
}

// Suggested function name: AddFileCheck
// Adds a file to the check list
function AddFileCheck(string Ext, string Name, int Priority, int Type, bool KickOnFail)
{
    FileNames[NumFiles] = Name;
    Extensions[NumFiles] = Ext;
    Priorities[NumFiles] = Priority;
    Types[NumFiles] = Type;
    KickFlags[NumFiles++] = int(KickOnFail);
}

// Suggested function name: LoadPackageConfig
// Loads package configurations from config array
function LoadPackageConfig()
{
    local int i, ParsedExt, ParsedPriority;
    local string ParsedName, ParsedSize, TempStr;

    i = 0;
    while (i < 10)
    {
        if (Packages[i] == "")
        {
            goto NextPackage;
        }
        TempStr = Packages[i];
        if (InStr(TempStr, ",") != -1)
        {
            Extensions[i] = Left(TempStr, InStr(TempStr, ","));
            TempStr = Mid(TempStr, InStr(TempStr, ",") + 1);
        }
        if (InStr(TempStr, ",") != -1)
        {
            ParsedName = Left(TempStr, InStr(TempStr, ","));
            TempStr = Mid(TempStr, InStr(TempStr, ",") + 1);
        }
        if ((int(TempStr) > 255) || int(TempStr) < 0)
        {
            ParsedSize = "";
        }
        else
        {
            ParsedSize = TempStr;
        }
        if (((ParsedName != "") && Extensions[i] != "") && ParsedSize != "")
        {
            AddFileCheck(Extensions[i], ParsedName, int(ParsedSize), 0, true);
            goto NextPackage;
        }
        LogInternal(("### --> Unhandled package entry:" @ string(i)) @ Packages[i]);
        NextPackage:
        i++;
    }
}

// Suggested function name: ParsePaths
// Parses system paths using a parser class
function ParsePaths()
{
    local ACParser Parser;
    local string PathsStr;

    PathsStr = ConsoleCommand("get Core.System Paths");
    Parser = new (none) Class'AnthCheckerC_v138.ACParser';
    Parser.ParsePaths(PathsStr, UTXPath, UAXPath, UNRPath, UMXPath, UPath);
    Parser = none;
}

// Suggested function name: AddPlayer
// Adds a new player to the check list
function AddPlayer(PlayerPawn NewPP)
{
    local int i, SlotIndex;
    local bool IsServer;

    IsServer = (ServerMode != 0);
    if (LastID < 64)
    {
        SlotIndex = LastID;
    }
    else
    {
        i = 0;
        while (i < 64)
        {
            if (Players[i].PlayerRep == none)
            {
                SlotIndex = i;
                goto FoundSlot;
            }
            i++;
        }
    }
    FoundSlot:

    Players[SlotIndex].PP = NewPP;
    Players[SlotIndex].PRI = NewPP.PlayerReplicationInfo;
    Players[SlotIndex].PlayerRep = Spawn(Class'AnthCheckerC_v138.ACReplicationInfo', NewPP,, NewPP.Location);
    Players[SlotIndex].PlayerRep.Init(bShowConsoleMessages, MagicKey, int(TimeOut), IsServer, ServerMode, ServerIP, ServerPort, self);
    Players[SlotIndex].JoinTime = Level.TimeSeconds;
    Players[SlotIndex].KickTime = 0.000000;
    Players[SlotIndex].OS = "";
    Players[SlotIndex].Renderer = "";
    Players[SlotIndex].RendererChecksum = "";
    Players[SlotIndex].RendererSize = 0;
    Players[SlotIndex].WebResponse = "";
    Players[SlotIndex].BypassAttempt = "";
    Players[SlotIndex].UnknownInt1 = 0;
    Players[SlotIndex].UnknownStr1 = "";
    Players[SlotIndex].UnknownStr2 = "";
    Players[SlotIndex].UnknownInt2 = 0;
    Players[SlotIndex].UnknownStr3 = "";
    Players[SlotIndex].UnknownStr4 = "";
    Players[SlotIndex].UnknownInt3 = 0;
    Players[SlotIndex].GUID = "";
    Players[SlotIndex].EngineVersion = "";
    Players[SlotIndex].FileIndex = 0;
    i = 0;
    while (i < 20)
    {
        Players[SlotIndex].FilePriorities[i] = 0;
        i++;
    }
    if (NumFiles == 0)
    {
        Players[SlotIndex].FilePriorities[12] = 1;
    }
    if (!IsServer)
    {
        Players[SlotIndex].FilePriorities[14] = 1;
    }
    Players[SlotIndex].IsValidated = false;
    Players[SlotIndex].IsKicked = false;
    Players[SlotIndex].IsTimedOut = false;
    i = 0;
    while (i < NumFiles)
    {
        Players[SlotIndex].PlayerRep.AddFileCheck(FileNames[i], Extensions[i], Priorities[i]);
        Players[SlotIndex].FileChecksums[i] = 0;
        Players[SlotIndex].FileSizes[i] = 0;
        Players[SlotIndex].FileTypes[i] = 0;
        i++;
    }
}

// Suggested function name: ProcessPlayerCheck
// Processes checks for a player and decides on kick/validation
function ProcessPlayerCheck(int PlayerIndex, PlayerPawn PP)
{
    local string PlayerName, IP, OS, RendererVersion, EngineVer, GUID, RendererChecksum, TempStr, LibName, LibChecksum, FileSize, FileChecksum, StatusStr, LogStr;
    local bool IsValidGUID, IsRendererValid, IsLibValid;
    local int i, KickReason, LibCount;
    local ACReplicationInfo RepInfo;
    local Actor NotifyActor;

    if ((PP == none) || PP.PlayerReplicationInfo == none)
    {
        return;
    }
    if (Players[PlayerIndex].IsKicked)
    {
        return;
    }

    PlayerName = PP.PlayerReplicationInfo.PlayerName;
    IP = PP.GetPlayerNetworkAddress();
    IP = Left(IP, InStr(IP, ":"));
    RendererVersion = Val.GetRendererVersion(Players[PlayerIndex].RendererChecksum, Players[PlayerIndex].RendererSize);
    RepInfo = Players[PlayerIndex].PlayerRep;
    IsValidGUID = IsValidRenderer(RendererVersion);
    KickReason = 0;

    if (!Players[PlayerIndex].IsValidated)
    {
        KickReason = 99;
    }
    else
    {
        if (ServerMode != 0)
        {
            GUID = DecodeGUID(Players[PlayerIndex].GUID, Players[PlayerIndex].UnknownInt4);
            if ((((HashGUID(Left(Players[PlayerIndex].GUID, Len(Players[PlayerIndex].GUID) - 4))) & 9999) == int(Right(Players[PlayerIndex].GUID, 4))) || Left(GUID, 4) != "UTGL")
            {
                IsRendererValid = true;
            }
        }
        if (((Players[PlayerIndex].OS ~= "MacOS") && Players[PlayerIndex].UnknownInt3 > 0) || ((Players[PlayerIndex].OS ~= "Linux") && Players[PlayerIndex].UnknownInt3 > 0) && InStr(Caps(Players[PlayerIndex].UnknownStr4), ".DLL:::") != -1)
        {
            KickReason = 10;
        }
        else
        {
            if (!Players[PlayerIndex].WebResponse ~= "UWeb.WebResponse")
            {
                KickReason = 1;
            }
            else
            {
                if (Players[PlayerIndex].BypassAttempt != "")
                {
                    KickReason = 2;
                }
                else
                {
                    if (Players[PlayerIndex].RendererSize == 0)
                    {
                        KickReason = 3;
                        TempStr = "Renderdevice";
                    }
                    else
                    {
                        if ((RendererVersion == "Unknown Renderer") && bKickUnknownRenderer)
                        {
                            KickReason = 4;
                            goto CheckFiles;
                        }
                        else
                        {
                            if (!IsValidGUID)
                            {
                                KickReason = 5;
                                goto CheckFiles;
                            }
                        }
                        if (InStr(Caps(Players[PlayerIndex].Renderer), Caps("ruso.dll")) != -1)
                        {
                            KickReason = 4;
                        }
                        else
                        {
                            i = 0;
                            while (i < NumFiles)
                            {
                                TempStr = FileNames[i];
                                if (Players[PlayerIndex].FileChecksums[i] != Checksums[i])
                                {
                                    if (Players[PlayerIndex].FileChecksums[i] == 0)
                                    {
                                        KickReason = 3;
                                        goto CheckFiles;
                                    }
                                    if (Types[i] == 1)
                                    {
                                        IsLibValid = Val.ValidateLibrary(FileNames[i], Players[PlayerIndex].FileSizes[i], Players[PlayerIndex].FileTypes[i], TempStr);
                                        if (IsLibValid)
                                        {
                                            KickReason = 7;
                                            goto CheckFiles;
                                        }
                                        else
                                        {
                                            if ((TempStr ~= "Unknown Package") && KickFlags[i] == 1)
                                            {
                                                KickReason = 6;
                                                goto CheckFiles;
                                            }
                                        }
                                    }
                                    KickReason = 6;
                                    TempStr = "Unknown Package";
                                    goto CheckFiles;
                                }
                                i++;
                            }
                            TempStr = "";
                            if (int(Players[PlayerIndex].UnknownStr5) == 266107444)
                            {
                                KickReason = 9;
                                TempStr = "OpenGL32.dll";
                                LibChecksum = "266107444";
                                TempStr = "HACKED - OpenGL32 Client - Ref 1";
                            }
                            else
                            {
                                i = 0;
                                while (i < Players[PlayerIndex].UnknownInt3)
                                {
                                    TempStr = ExtractLibName(Players[PlayerIndex].UnknownStr4, i);
                                    LibChecksum = ExtractLibChecksum(Players[PlayerIndex].UnknownStr6, i);
                                    if (Val.ValidateLibrary(TempStr, LibChecksum, IP, TempStr))
                                    {
                                        KickReason = 9;
                                        goto CheckFiles;
                                    }
                                    if ((TempStr ~= "Unknown Package") && bKickUnknownLibrary)
                                    {
                                        KickReason = 8;
                                        goto CheckFiles;
                                    }
                                    i++;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    CheckFiles:

    if ((KickReason == 8) || KickReason == 9)
    {
        FileSize = "";
        FileChecksum = "";
    }
    else
    {
        LibChecksum = string(Players[PlayerIndex].FileChecksums[i]);
        FileSize = string(Players[PlayerIndex].FileSizes[i]);
        FileChecksum = string(Players[PlayerIndex].FileTypes[i]);
    }

    if (((KickReason != 0) && KickReason != 99) || ((RendererVersion == "Unknown Renderer") && bReportCheats) && bReceiveUpdates)
    {
        HTTP.SendReport(PlayerName, IP, Players[PlayerIndex].OS, Players[PlayerIndex].GUID, string(Players[PlayerIndex].UnknownInt4), Players[PlayerIndex].EngineVersion, Players[PlayerIndex].Renderer, RendererVersion, Players[PlayerIndex].RendererChecksum, string(Players[PlayerIndex].RendererSize), string(KickReason), TempStr, LibChecksum, FileSize, TempStr, FileChecksum);
    }

    if (KickReason != 0)
    {
        Players[PlayerIndex].IsKicked = true;
    }
    else
    {
        if (bBroadCastJoin)
        {
            LogStr = ("[AnthChecker] :" @ PlayerName) @ "-";
            if (bBroadCastIPs)
            {
                LogStr = (LogStr @ IP) @ "-";
            }
            LogStr = ((LogStr @ Players[PlayerIndex].OS) @ "-") @ RendererVersion;
            Level.Game.BroadcastMessage(LogStr);
        }
    }

    LogMessage("### ------------------------------------------------------------- ", KickReason);
    if (KickReason == 0)
    {
        LogMessage("###                   ANTHCHECKER - PLAYER JOIN             ", KickReason);
    }
    else
    {
        LogMessage("###                   ANTHCHECKER - PLAYER KICK             ", KickReason);
    }
    LogMessage("### ------------------------------------------------------------- ", KickReason);
    LogMessage("### - Player name : " @ PlayerName, KickReason);
    LogMessage("### - Player IP   : " @ IP, KickReason);
    LogMessage("### - Player OS   : " @ Players[PlayerIndex].OS, KickReason);
    LogMessage("### - EngineVer   : " @ Players[PlayerIndex].EngineVersion, KickReason);
    LogMessage("### - RenderDev   : " @ Players[PlayerIndex].Renderer, KickReason);
    LogMessage("### - RenderVer   : " @ RendererVersion, KickReason);
    LogMessage("### - RenderChksm : " @ Players[PlayerIndex].RendererChecksum, KickReason);
    LogMessage(("### - RenderSize  : " @ string(Players[PlayerIndex].RendererSize)) @ "bytes", KickReason);
    LogMessage(("### - TimeStamp   : " @ GetDate()) @ (GetTime()), KickReason);

    if (KickReason != 0)
    {
        LogMessage("### -----------------  Additional information   -----------------", KickReason);
        LogMessage((("### - GUID        : " @ Players[PlayerIndex].GUID) $ "_") $ string(Players[PlayerIndex].UnknownInt4), KickReason);
        LogMessage("### - guid Valid  : " @ string(IsRendererValid), KickReason);
        LogMessage("### - KickType    : " @ string(KickReason), KickReason);
        LogMessage(((("### - AnthChecker : " @ Version) @ "(Build") @ Build) $ ")", KickReason);
    }

    switch (KickReason)
    {
        case 1:
            LogMessage("### - Reason      :  Client tried to bypass checks!", KickReason);
            LogMessage("### - Extra       : " @ Players[PlayerIndex].WebResponse, KickReason);
            RepInfo.KickPlayer(KickReason);
            break;
        case 2:
            LogMessage("### - Reason      :  Client tried to bypass checks!", KickReason);
            LibCount = int(Left(Players[PlayerIndex].BypassAttempt, InStr(Players[PlayerIndex].BypassAttempt, "-")));
            TempStr = Mid(Players[PlayerIndex].BypassAttempt, InStr(Players[PlayerIndex].BypassAttempt, "-") + 1);
            i = 0;
            while (i < LibCount)
            {
                LogMessage("### - Extra       : " @ (ExtractLibName(TempStr, i)), KickReason);
                i++;
            }
            RepInfo.KickPlayer(KickReason, ExtractLibName(TempStr, 0));
            break;
        case 3:
            LogMessage("### - Reason      :  Client failed to generate checksum", KickReason);
            LogMessage("### - File        : " @ TempStr, KickReason);
            LogMessage("### - Status      : " @ (GetStatusString(i)), KickReason);
            RepInfo.KickPlayer(KickReason, TempStr);
            break;
        case 4:
            LogMessage("### - Reason      :  Possible hack in renderdevice", KickReason);
            RepInfo.KickPlayer(KickReason, IP);
            break;
        case 5:
            LogMessage("### - Reason      :  Hacked renderdevice!", KickReason);
            RepInfo.KickPlayer(KickReason, IP);
            break;
        case 6:
            LogMessage("### - Reason      :  Illegal checksum received (possible bytehack)!", KickReason);
            LogMessage("### - File        : " @ TempStr, KickReason);
            LogMessage("### - Checksum    : " @ LibChecksum, KickReason);
            LogMessage("### - StdChecksum : " @ FileSize, KickReason);
            LogMessage("### - FileSize    : " @ FileChecksum, KickReason);
            LogMessage("### - Status      : " @ (GetStatusString(i)), KickReason);
            RepInfo.KickPlayer(KickReason, TempStr);
            break;
        case 7:
            LogMessage("### - Reason      :  Illegal checksum received (bytehack)!", KickReason);
            LogMessage("### - File        : " @ TempStr, KickReason);
            LogMessage("### - Checksum    : " @ LibChecksum, KickReason);
            LogMessage("### - StdChecksum : " @ FileSize, KickReason);
            LogMessage("### - FileSize    : " @ FileChecksum, KickReason);
            LogMessage("### - Ident       : " @ TempStr, KickReason);
            LogMessage("### - Status      : " @ (GetStatusString(i)), KickReason);
            RepInfo.KickPlayer(KickReason, TempStr);
            break;
        case 8:
            LogMessage("### - Reason      :  Client loaded an illegal library! (possibly hacked)", KickReason);
            LogMessage("### - File        : " @ TempStr, KickReason);
            LogMessage("### - Checksum    : " @ LibChecksum, KickReason);
            RepInfo.KickPlayer(KickReason, TempStr);
            break;
        case 9:
            LogMessage("### - Reason      :  Client loaded an illegal library! (hacked)", KickReason);
            LogMessage("### - File        : " @ TempStr, KickReason);
            LogMessage("### - Checksum    : " @ LibChecksum, KickReason);
            LogMessage("### - Ident       : " @ TempStr, KickReason);
            RepInfo.KickPlayer(KickReason, TempStr);
            break;
        case 10:
            LogMessage("### - Reason      :  Client tried to bypass the OS Check", KickReason);
            LogMessage("### - File        : " @ (ExtractLibName(Players[PlayerIndex].UnknownStr4, 0)), KickReason);
            break;
        case 99:
            LogMessage("### - Reason      :  Client Timed out!", KickReason);
            RepInfo.KickPlayer(KickReason);
            break;
        default:
            PP.ClientMessage("[AnthChecker] : You have been validated successfully!");
            break;
    }
    LogMessage("### ------------------------------------------------------------- ", KickReason);

    if (bExternalNotify)
    {
		TempStr = "AC" $ Chr(9) $ Version $ Chr(9) $ Build $ Chr(9) $ string(KickReason) $ Chr(9) 
		$ string(Players[PlayerIndex].PRI.PlayerID) $ Chr(9) $ Players[PlayerIndex].GUID $ "_" 
		$ string(Players[PlayerIndex].UnknownInt4) $ Chr(9);
        foreach Level.AllActors(Class'Engine.Actor', NotifyActor, 'ACCatcher')
        {
            NotifyActor.GetItemName(TempStr);
        }
    }

    if (Players[PlayerIndex].IsKicked)
    {
        Players[PlayerIndex].KickTime = Level.TimeSeconds;
    }
    else
    {
        Players[PlayerIndex].IsValidated = true;
        RepInfo.Destroy();
    }
}

// Suggested function name: ExtractLibName
// Extracts a library name from a delimited string
function string ExtractLibName(string LibStr, int Index)
{
    local int i;

    i = 0;
    while (i < Index)
    {
        LibStr = Mid(LibStr, InStr(LibStr, ":::") + 3);
        i++;
    }
    return Left(LibStr, InStr(LibStr, ":::"));
}

// Suggested function name: IsValidRenderer
// Checks if a renderer version is valid (not hacked)
function bool IsValidRenderer(string RendererVer)
{
    if (InStr(RendererVer, "HACKED") != -1)
    {
        return false;
    }
    else
    {
        return true;
    }
}

// Suggested function name: GetStatusString
// Generates a status string based on file check results
function string GetStatusString(int FileIndex)
{
    local int i;
    local string Status;

    Status = "";
    i = 0;
    while (i < NumFiles)
    {
        if (FileIndex > i)
        {
            Status = Status $ "T";
        }
        else
        {
            Status = Status $ "F";
        }
        if (i != (NumFiles - 1))
        {
            Status = Status $ " / ";
        }
        i++;
    }
    return Status;
}

// Suggested function name: GetDate
// Returns the current date as a string
function string GetDate()
{
    return (((("" $ PadZero(Level.Day))) $ "-") $ (PadZero(Level.Month))) $ "-") $ (PadZero(Level.Year));
}

// Suggested function name: GetTime
// Returns the current time as a string
function string GetTime()
{
    return (((("" $ PadZero(Level.Hour))) $ ":") $ (PadZero(Level.Minute))) $ ":") $ (PadZero(Level.Second));
}

// Suggested function name: PadZero
// Pads a number with a leading zero if < 10
function string PadZero(int Num)
{
    if (Num < 10)
    {
        return "0" $ string(Num);
    }
    else
    {
        return string(Num);
    }
}

// Suggested function name: LogMessage
// Logs a message internally and optionally to external log
function LogMessage(string Msg, int KickReason)
{
    LogInternal(Msg);
    if ((KickReason == 0) || !bExternalLogs)
    {
        return;
    }
    if (Log == none)
    {
        Log = Spawn(Class'AnthCheckerS_v138.Logger');
        if (LogPath != "")
        {
            Log.LogPath = LogPath;
        }
        else
        {
            Log.LogPath = "../Logs/";
        }
        if (LogPrefix != "")
        {
            Log.LogPrefix = LogPrefix;
        }
        else
        {
            Log.LogPrefix = "[AC]";
        }
        Log.StartLog();
    }
    Log.LogEventString(Msg);
    Log.FileFlush();
}

// Suggested function name: ProcessData
// Processes incoming data for a player
function ProcessData(string Data, int PlayerIndex)
{
    local int DataType, i;
    local string Value;
    local bool IsComplete;

    DataType = int(Left(Data, InStr(Data, " ")));
    Value = Mid(Data, InStr(Data, " ") + 1);
    if (Players[PlayerIndex].FilePriorities[DataType] == 0)
    {
        switch (DataType)
        {
            case 1:
                Players[PlayerIndex].OS = Value;
                break;
            case 2:
                Players[PlayerIndex].Renderer = Value;
                break;
            case 3:
                Players[PlayerIndex].RendererChecksum = Left(Value, InStr(Value, " "));
                Players[PlayerIndex].RendererSize = int(Mid(Value, InStr(Value, " ") + 1));
                break;
            case 4:
                Players[PlayerIndex].WebResponse = Value;
                break;
            case 5:
                Players[PlayerIndex].BypassAttempt = Value;
                break;
            case 6:
                Players[PlayerIndex].UnknownInt1 = int(Value);
                break;
            case 7:
                Players[PlayerIndex].UnknownStr1 = Value;
                break;
            case 8:
                Players[PlayerIndex].UnknownStr2 = Value;
                break;
            case 9:
                Players[PlayerIndex].UnknownInt3 = int(Value);
                break;
            case 10:
                Players[PlayerIndex].UnknownStr4 = Value;
                break;
            case 11:
                Players[PlayerIndex].UnknownStr6 = Value;
                break;
            case 12:
                Value = Mid(Value, InStr(Value, " ") + 1);
                Players[PlayerIndex].FileChecksums[Players[PlayerIndex].FileIndex] = int(Left(Value, InStr(Value, " ")));
                Players[PlayerIndex].FileSizes[Players[PlayerIndex].FileIndex] = int(Left(Value, InStr(Value, " ") + 1));
                Players[PlayerIndex].FileTypes[Players[PlayerIndex].FileIndex] = int(Mid(Value, InStr(Value, " ") + 1));
                if (++Players[PlayerIndex].FileIndex < NumFiles)
                {
                    IsComplete = true;
                }
                break;
            case 13:
                Players[PlayerIndex].UnknownStr5 = Value;
                break;
            case 14:
                Players[PlayerIndex].GUID = Left(Value, InStr(Value, ":::"));
                Players[PlayerIndex].UnknownInt4 = int(Mid(Value, InStr(Value, ":::") + 3));
                break;
            case 15:
                Players[PlayerIndex].EngineVersion = Value;
                break;
            default:
                break;
        }
        if (!IsComplete)
        {
            Players[PlayerIndex].FilePriorities[DataType] = 1;
        }
    }
    IsComplete = true;
    i = 1;
    while (i < 16)
    {
        if (Players[PlayerIndex].FilePriorities[i] == 0)
        {
            IsComplete = false;
        }
        i++;
    }
    if (!Players[PlayerIndex].IsValidated && IsComplete)
    {
        Players[PlayerIndex].IsValidated = true;
        ProcessPlayerCheck(PlayerIndex, Players[PlayerIndex].PP);
    }
}

// Suggested function name: FindPlayerIndex
// Finds the index of a player in the array
function int FindPlayerIndex(PlayerPawn PP)
{
    local int i;

    i = 0;
    while (i < 64)
    {
        if (Players[i].PP == PP)
        {
            return i;
        }
        i++;
    }
    return -1;
}

// Suggested function name: Tick
// Handles per-tick logic, including adding new players
function Tick(float DeltaTime)
{
    local Pawn CurrentPawn;
    local int i;

    if ((Level.Game.bGameEnded || Level.NextSwitchCountdown < 0.500000) && Log != none)
    {
        Log.StopLog();
        Log.Destroy();
        Log = none;
    }
    if (!bEnablePackageChecker)
    {
        return;
    }
    if (Level.Game.CurrentID > LastID)
    {
        CurrentPawn = Level.PawnList;
        while (CurrentPawn != none)
        {
            if (CurrentPawn.PlayerReplicationInfo == none)
            {
                // Skip
            }
            else
            {
                if ((((CurrentPawn.PlayerReplicationInfo.PlayerID == LastID) && CurrentPawn.IsA('PlayerPawn')) && !CurrentPawn.IsA('MessagingSpectator')) && !CurrentPawn.IsA('Spectator'))
                {
                    AddPlayer(PlayerPawn(CurrentPawn));
                }
            }
            CurrentPawn = CurrentPawn.nextPawn;
        }
        LastID++;
    }
}

// Suggested function name: Timer
// Handles timer-based logic, like timeouts and connections
function Timer()
{
    local int i;

    if (!Connected && Level.TimeSeconds > ACDelay)
    {
        Connected = true;
        HTTP.Connect();
    }
    i = 0;
    while (i < 64)
    {
        if (Players[i].PlayerRep == none)
        {
            goto NextPlayer;
        }
        if ((Players[i].IsKicked && Players[i].KickTime != 0.000000) && (Level.TimeSeconds - Players[i].KickTime) > CheckDelay)
        {
            if (Players[i].PP != none)
            {
                Players[i].PP.Destroy();
            }
            Players[i].IsValidated = true;
            Players[i].PlayerRep.Destroy();
            Players[i].PlayerRep = none;
        }
        if (Players[i].IsValidated == true)
        {
            goto NextPlayer;
        }
        if ((Level.TimeSeconds - Players[i].JoinTime) > CheckDelay)
        {
            if (!Players[i].IsTimedOut)
            {
                Players[i].IsTimedOut = true;
                Players[i].PlayerRep.RequestInfo();
            }
        }
        if ((Level.TimeSeconds - Players[i].JoinTime) > (CheckDelay + TimeOut))
        {
            ProcessPlayerCheck(i, PlayerPawn(Players[i].PlayerRep.Owner));
        }
        NextPlayer:
        i++;
    }
}

// Suggested function name: GetItemName
// Processes external data and updates player info
function string GetItemName(string Data)
{
    local int PlayerID, i;

    PlayerID = int(Left(Data, InStr(Data, " ")));
    Data = Mid(Data, InStr(Data, " ") + 1);
    if (!DecodeData(Data))
    {
        return "";
    }
    i = 0;
    while (i < 64)
    {
        if ((Players[i].PRI != none) && Players[i].PRI.PlayerID == PlayerID)
        {
            ProcessData(Data, i);
            return "";
        }
        i++;
    }
    return "";
}

// Suggested function name: DecodeData
// Decodes encrypted data string
function bool DecodeData(out string Data)
{
    local int i, CharCode;
    local string Decoded;

    Decoded = "";
    if (!Left(Data, 3) ~= "AC ")
    {
        return false;
    }
    Data = Mid(Data, 3);
    CharCode = int(Left(Data, InStr(Data, " ")));
    Data = Mid(Data, InStr(Data, " ") + 1);
    i = 0;
    while (i < (Len(Data) / 3))
    {
        CharCode = int(Left(Mid(Data, i * 3), 3));
        CharCode -= ((Abs(MagicKey)) & 31);
        Decoded = Decoded $ Chr(CharCode);
        i++;
    }
    Data = (string(CharCode) $ " ") $ Decoded;
    return true;
}

// Suggested function name: DecodeGUID
// Decodes a GUID string
function string DecodeGUID(string GUID, int Seed)
{
    local string Decoded, Char;
    local int i, Shift;

    if (((Abs(Seed)) & 31) != 0)
    {
        Shift = (Abs(Seed)) & 31;
    }
    else
    {
        Shift = 16;
    }
    i = 0;
    while (i < (Len(GUID) - 4))
    {
        Char = Left(Mid(GUID, i), 1);
        Decoded = Decoded $ Chr(Asc(Char) - Shift);
        i++;
    }
    return Decoded;
}

// Suggested function name: HashGUID
// Computes a hash for a GUID
function int HashGUID(string GUID)
{
    local int i, Hash, CharCode;

    i = 0;
    while (i < Len(GUID))
    {
        CharCode = Asc(Left(Mid(GUID, i), 1));
        Hash += ((((CharCode * CharCode) + ((CharCode - -559038737) ^ CharCode)) ^ -306698701) * CharCode);
        i++;
    }
    return Hash;
}

// Suggested function name: Abs
// Returns the absolute value of an integer
function int Abs(int Value)
{
    if (Value > 0)
    {
        return Value;
    }
    else
    {
        return -Value;
    }
}

defaultproperties
{
    bEnablePackageChecker=true
    bEnableNetFix=true
    TimeOut=30.000000
    CheckDelay=3.000000
    bKickUnknownRenderer=true
    bKickUnknownLibrary=true
    bKickUnknownSkin=true
    bKickUnknownSound=true
    bBroadCastJoin=true
    bExternalNotify=true
    bSkinCheck=true
    bSoundCheck=true
    bPureCheck=true
    bSelfCheck=true
    bShowConsoleMessages=true
    bReportCheats=true
    bReceiveUpdates=true
    bExternalLogs=true
    ACLinkMode=1
    ACDelay=5.000000
    Version="v1.38"
    Build="10"
    bHidden=true
    bAlwaysTick=true
}