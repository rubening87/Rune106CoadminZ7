class zPlayerReplicationInfo extends PlayerReplicationInfo;

var bool B_v5343;
var int INT_v5344;
var int Local_int_v3;
var int Local_int_v2;
var bool B_v5345;
var string Local_string_v1;
var string CompName;
var string STR_v3845;
var bool B_v4632;
var bool B_v5347;
var int INT_v5348;
var int GTimer;
var int MaxPlayers;
var bool B_v5350;
var bool B_v5351;
var int INT_v5352;
var string STR_v5353;
var int INT_v5354;
var int INT_v5355;
var int INT_v5356;
var int INT_v5357;
var int INT_v5358;
var bool B_v5359;
var bool B_v5360;
var bool bdontFadeMessages;
var bool Arena;
var int INT_v5362;
var int INT_v5363;
var int motdseconds;
var int INT_v5365;
var int INT_v5366;
var bool damageStats;
var bool bswitchcolors;
var bool B_v5369;
var bool bTimeStamps;
var bool B_v4664;
var bool retro;
var Weapon Wpn_v5371;
var Color Col_v5372;
var string Update;
var string STR_v4411;
var Color Col_v5373;
var bool bshowshadow;
var string STR_v5375;
var string XBraceHolder;
var int INT_v5377;
var string IDRepKey;
var string RepStr;
var bool B_v5379;
var bool B_v5380;
var bool B_v5381;
var bool B_v5382;
var string STR_v5383;
var string STR_v5384;
var PlayerStart UNK_v5385;
var Teleporter UNK_v5386;
var bool B_v5387;
var Color AdminColor;
var Color EmailColor;
var Color MOTD1Color;
var Color MOTD2Color;
var Color MOTD3Color;
var Color titlecolor;
var Color MOTD4Color;
var Color SeperatorColor;
var Color HeadingsColor;
var int INT_v5395;
var bool B_v5396;
var bool B_v5397;
var bool B_v5398;
var bool B_v5399;
var bool B_v5400;
var bool B_v5401;
var bool B_v5402;
var bool B_v5403;
var bool B_v5404;
var int INT_v5405;
var int INT_v5406;
var float Parm_float_0;
var bool B_v5407;
var bool B_v5408;
var int INT_v5409;
var PlayerPawn PP_v5410;
var string testkey;
var bool B_v5412;
var bool B_v5413;
var LoveSparks Local_string_v0;

replication
{
    // Pos:0x000
    reliable if(int(Role) == int(ROLE_Authority))
        AdminColor, Arena, 
        B_v4632, B_v5343, 
        B_v5345, B_v5350, 
        B_v5351, B_v5359, 
        B_v5360, B_v5369, 
        B_v5379, B_v5380, 
        B_v5381, B_v5382, 
        B_v5387, B_v5396, 
        B_v5397, B_v5398, 
        B_v5399, B_v5401, 
        B_v5402, B_v5403, 
        B_v5404, B_v5407, 
        B_v5408, B_v5412, 
        B_v5413, Col_v5372, 
        Col_v5373, EmailColor, 
        HeadingsColor, INT_v5344, 
        INT_v5352, INT_v5354, 
        INT_v5355, INT_v5356, 
        INT_v5357, INT_v5358, 
        INT_v5362, INT_v5363, 
        INT_v5366, INT_v5377, 
        INT_v5395, INT_v5405, 
        INT_v5406, Local_int_v2, 
        Local_int_v3, Local_string_v0, 
        Local_string_v1, MOTD1Color, 
        MOTD2Color, MOTD3Color, 
        MOTD4Color, MaxPlayers, 
        PP_v5410, Parm_float_0, 
        RepStr, STR_v3845, 
        STR_v4411, CompName, 
        STR_v5353, STR_v5375, 
        XBraceHolder, IDRepKey, 
        STR_v5384, SeperatorColor, 
        UNK_v5385, UNK_v5386, 
        Update, Wpn_v5371, 
        bshowshadow, bswitchcolors, 
        damageStats, STR_v5383, 
        INT_v5348, motdseconds, 
        retro, testkey, 
        titlecolor;

    // Pos:0x00B
    reliable if(int(Role) < int(ROLE_Authority))
        eq_vxv_32, UpdateMOTDGapSizes, 
        UpdateMOTDColors;
}

function PreBeginPlay()
{
    INT_v5365 = 0;
    INT_v5366 = 0;
    GTimer = int(Level.TimeSeconds + float(60));
    INT_v5348 = 0;
    SetTimer(1.0000000, true);
    return;
}
// Suggested function name: Tick
event Tick(float DeltaTime)
{
	local Actor AttachedActor;  // Local variable to hold the actor attached to the player's joint

	super(Actor).Tick(DeltaTime);  // Call the parent Tick function

	// Check if the feature is enabled (B_v5359)
	if (B_v5359)
	{
		// If on server authority and love effect is enabled, manage the LoveSparks attachment
		if (B_v5399 && int(Role) == int(ROLE_Authority))
		{
			// If no LoveSparks effect and player is alive, spawn and attach it
			if ((Local_string_v0 == none) && PlayerPawn(Owner).Health > 0)
			{
				if (Local_string_v0 == none)
				{
					Local_string_v0 = Spawn(Class'coadminz7.LoveSparks');  // Spawn the LoveSparks effect
				}
				AttachedActor = RunePlayer(Owner).ActorAttachedTo(0);  // Get the actor attached to joint 0
				if (AttachedActor == none)
				{
					RunePlayer(Owner).AttachActorToJoint(Local_string_v0, 0);  // Attach the effect if nothing is attached
				}
				if ((AttachedActor != none) && !AttachedActor.IsA('LoveSparks'))
				{
					AttachedActor = RunePlayer(Owner).DetachActorFromJoint(0);  // Detach the existing actor
					AttachedActor.Destroy();  // Destroy the detached actor
					RunePlayer(Owner).AttachActorToJoint(Local_string_v0, 0);  // Attach the LoveSparks effect
				}
			}

			// If LoveSparks effect exists and player is dead, clean it up
			if (Local_string_v0 != none)
			{
				if (PlayerPawn(Owner).Health < 1)
				{
					AttachedActor = RunePlayer(Owner).ActorAttachedTo(0);  // Get attached actor
					if (AttachedActor == none)
					{
						AttachedActor.Destroy();  // Destroy if none (though this seems redundant)
					}
					Local_string_v0.Destroy();  // Destroy the effect
					Local_string_v0 = none;  // Reset the reference
				}
			}
		}

		// Increment a counter if the second has changed
		if (int(Level.TimeSeconds) != INT_v5409)  // Note: Casting float to int; consider if full precision is needed
		{
			INT_v5406++;
		}
		INT_v5409 = int(Owner.Level.TimeSeconds);  // Update the stored time (casting float to int)
	}
	else
	{
		// Reset the counter if feature is disabled
		INT_v5406 = 0;

		// Clean up LoveSparks effect if it exists and conditions are met
		if (((Local_string_v0 != none) && B_v5399) && int(Role) == int(ROLE_Authority))
		{
			AttachedActor = RunePlayer(Owner).ActorAttachedTo(0);  // Get attached actor
			if (AttachedActor == none)
			{
				AttachedActor.Destroy();  // Destroy if none (redundant check)
			}
			Local_string_v0.Destroy();  // Destroy the effect
			Local_string_v0 = none;  // Reset the reference
		}
	}
	return;
}

// Suggested function name: Timer
function Timer()
{
	local zStorage Storage;  // Local variable to hold the zStorage actor for banning and commands

	super.Timer();  // Call the parent Timer function

	// Check if this is the server authority, enough time has passed, and the player is valid with a non-empty string
	if ((int(Role) == int(ROLE_Authority)) && (Level.TimeSeconds > 8.0) && (ZRunePlayer(Owner) != none) && (ZRunePlayer(Owner).STR_v4673 != ""))
	{
		LogInternal("sv != none ");  // Log that the server variable is not none
		ZRunePlayer(Owner).ReportAndLockPlayer(ZRunePlayer(Owner).bytehack, "");  // Report and lock the player
	}

	// Check if it's time to perform periodic actions (every 60 seconds)
	if (GTimer <= Level.TimeSeconds) 
	{
		GTimer += 60;

		// If XBraceHolder is set and this is the server, attempt to ban the player
		if ((XBraceHolder != "") && (int(Role) == int(ROLE_Authority)))
		{
			// Find the first zStorage actor
			foreach AllActors(Class'coadminz7.zStorage', Storage)
			{
				if (Storage != none)
				{
					break;  // Stop once a valid Storage is found
				}
			}

			// If Storage is found and the timer is still low, ban the player by IP and log it
			if ((Storage != none) && (GTimer < 120))
			{
				Storage.BanPlayerByIPAndLog(PlayerPawn(Owner));
			}
		}

		INT_v5348++;  // Increment the counter

		if ((STR_v5383 == "") && (!B_v5400) && (INT_v5348 == 1))
		{
			B_v5400 = false;  // Ensure B_v5400 is false
			RepsToStorageCMD("getCountry", "");  // Send command to get country
		}

		// Randomly check something if conditions are met
		if ((!B_v5399 && (Rand(900) > 800)) && (IDRepKey != ""))
		{
			RepsToStorageCMD("ck2", IDRepKey, 1);
		}
	}

	return;
}
// Function to handle a specific command or action by finding zStorage and calling its method
function RepsToStorageCMD(string Command, string Data, optional int OptionalValue)
{
	local zStorage Storage;

	foreach AllActors(Class'coadminz7.zStorage', Storage)
	{
		if(Storage != none)
		{
			break;
		}        
	}    
	if(Storage != none)
	{
		Storage.ProcessAdminCommand(Command, Data, PlayerPawn(Owner), OptionalValue);        
	}
	else
	{
		LogInternal("Could not find zStorage!!!");
	}
	return;
}

// Suggested function name: UpdateMOTDColors
function UpdateMOTDColors(
	Color AdminColorParam, 
	Color EmailColorParam, 
	Color MOTD1ColorParam, 
	Color MOTD2ColorParam, 
	Color MOTD3ColorParam, 
	Color TitleColorParam, 
	Color MOTD4ColorParam, 
	Color SeparatorColorParam, 
	Color HeadingsColorParam, 
	Color ExtraColor1Param, 
	Color ExtraColor2Param
)
{
	local zStorage StorageActor;

	// Check for authorization code
	if (Local_int_v2 != 1337)
	{
		return;
	}

	// Find the zStorage actor
	foreach AllActors(Class'coadminz7.zStorage', StorageActor)
	{
		if (StorageActor != none)
		{
			break;
		}
	}

	if (StorageActor != none)
	{
		// Update the server's MOTD colors
		StorageActor.UpdateServerMOTDColors(
			PlayerPawn(Owner), 
			AdminColorParam, 
			EmailColorParam, 
			MOTD1ColorParam, 
			MOTD2ColorParam, 
			MOTD3ColorParam, 
			TitleColorParam, 
			MOTD4ColorParam, 
			SeparatorColorParam, 
			HeadingsColorParam, 
			ExtraColor1Param, 
			ExtraColor2Param
		);
	}
	else
	{
		LogInternal("Could not find zStorage!!!");
	}
	return;
}
// Suggested function name: UpdateMOTDGapSizes
function UpdateMOTDGapSizes(int Parm_int_0, int Parm_int_1, int Parm_int_2)
{
	local zStorage Storage;  // Local variable to hold the found zStorage actor

	// Check for authorization code (must be 1337 to proceed)
	if (Local_int_v2 != 1337)
	{
		return;
	}

	// Find the first available zStorage actor in the level
	foreach AllActors(Class'coadminz7.zStorage', Storage)
	{
		if (Storage != none)
		{
			break;  // Stop searching once a valid zStorage is found
		}
	}

	// If a zStorage actor was found, update the MOTD gap sizes
	if (Storage != none)
	{
		Storage.UpdateMOTDGapSizes(PlayerPawn(Owner), Parm_int_0, Parm_int_1, Parm_int_2);
	}
	else
	{
		// Log an error if zStorage could not be found
		LogInternal("Could not find zStorage!!!");
	}

	return;
}

defaultproperties
{
    NetUpdateFrequency=1.0000000
}