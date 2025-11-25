class ZRunePlayer extends RunePlayer
    config(User);

const eq_vxv_4591 = "bytehack";
const eq_vxv_4599 = 0.0;
const eq_vxv_4600 = 20.0;
const eq_vxv_4601 = 3.2;
const eq_vxv_4602 = 1;
const eq_vxv_4603 = "quit";

struct Y
{
    var private bool UNK_v4553;
    var private bool UNK_v4244;
    var private bool UNK_v4554;
    var private bool UNK_v4555;
    var private bool ye;
    var private bool UNK_v4557;
    var private bool UNK_v4558;
    var private bool UNK_v4559;
    var private bool UNK_v4560;
    var private bool UNK_v4561;
    var private bool UNK_v4562;
    var private bool YL;
    var private bool UNK_v4563;
    var private bool UNK_v4564;
    var private bool UNK_v4565;
    var private bool UNK_v4566;
    var private bool UNK_v4567;
    var private bool UNK_v4568;
    var private bool UNK_v4569;
    var private bool UNK_v4570;
    var private bool UNK_v4571;
    var private bool UNK_v4572;
    var private bool UNK_v4573;
    var private bool UNK_v4574;
    var private bool Parm_int_2;
    var private bool UNK_v4576;
    var private bool UNK_v4240;
    var private bool UNK_v4238;
    var private bool UNK_v4577;
    var private bool UNK_v4578;
    var private bool UNK_v4579;
    var private bool UNK_v4580;
    var private bool UNK_v4581;
    var private bool UNK_v4582;
    var private bool UNK_v4583;
    var private bool UNK_v4584;
};

var PlayerReplicationInfo PRI_v4499[32];
var PlayerReplicationInfo GPRI2;
var GameReplicationInfo GGREPInfo;
var bool B_v4502;
var bool B_v4503;
var float FLT_v4504;
var float FLT_v4505;
var bool B_v4506;
var ZRunePlayer UNK_v4507;
var Weapon Wpn_v4508;
var bool B_v4509;
var transient float UNK_v4510;
var transient float UNK_v4511;
var int INT_v4512;
var int INT_v4513;
var transient Vector UNK_v4514;
var transient Vector UNK_v4515;
var transient float UNK_v4516;
var transient float UNK_v4517;
var transient Vector UNK_v4518;
var bool B_v6756;
var int INT_v4519;
var int INT_v4520;
var bool B_v4521;
var private Class<HUD> UNK_v4522;
var Class<RunePlayer> UNK_v4523;
var bool B_v4524;
var Class<Actor> BODYPART_LARM1;
var Class<Actor> BODYPART_RARM1;
var Class<Actor> BODYPART_HEAD;
var int INT_v4528;
var Texture TXR_v4529;
var Texture TXR_v4530;
var Texture TXR_v4531;
var Texture TXR_v4532;
var Texture TXR_v4533;
var Texture TXR_v4534;
var Texture TXR_v4535;
var Texture TXR_v4536;
var string STR_v4537;
var Texture TXR_v4538;
var bool B_v4539;
var bool B_v4540;
var float HudScale;
var bool B_v4541;
var bool B_v4542;
var bool B_v4543;
var bool B_v4544;
var bool B_v4545;
var bool B_v4546;
var bool Trans;
var bool B_v4547;
var Color Col_v4548;
var Pawn P0;
var bool B_v4550;
var int INT_v4551;
var int INT_v4552;
var Y Parm_int_2;
var float FLT_v4585;
var float FLT_v4586;
var float FLT_v4587;
var float FLT_v4588;
var float FLT_v4589;
var Vector VCT_v4590;
var Sound UNK_v4592;
var string STR_v4593;
var int INT_v4594;
var string STR_v4595;
var bool B_v4596;
var int INT_v4597;
var string STR_v4598;
var Inventory UNK_v4604;
var bool B_v4605;
var Texture TXR_v1619;
var travel Inventory UNK_v5023;
var Actor A_v4607;
var input float UNK_v4608;
var input float UNK_v4609;
var Color bluetext;
var Actor A_v4611;
var private Rotator UNK_v4358;
var string STR_v4612;
var private float UNK_v5392;
var string RMENUFileName;
var private int UNK_v4614;
var private float UNK_v4615;
var UBrowserMainClientWindow UNK_v4616;
var bool B_v4617;
var bool B_v4618;
var float FLT_v4619;
var string MTT_TextureName;
var int INT_v4620;
var int INT_v4621;
var Actor.EDodgeDir UNK_v4622;
var Actor.EDodgeDir UNK_v4623;
var TCCDelay INT_v4473;
var int INT_v4624;
var Actor Actor;
var int INT_v4625;
var Rotator UNK_v4626;
var zStorage zStorage;
var string STR_v4428;
var int INT_v5543;
var int INT_v4627;
var int Local_int_v15;
var string STR_v4628;
var int INT_v4629;
var int SelectedTauntIndex;
var int INT_v4631;
var int INT_v4245;
var bool B_v4632;
var int INT_v4633;
var string STR_v4634;
var private int Local_string_v1;
var private int UNK_v4636;
var bool B_v4637;
var input float UNK_v4638;
var int INT_v4639;
var int INT_v4640;
var int INT_v4641;
var int INT_v4642;
var int INT_v4643;
var string STR_v4644;
var string TEMPCompName;
var GameReplicationInfo GameReplicationInfo;
var private bool UNK_v4646;
var string STR_v4647;
var string STR_v4648;
var string STR_v4649;
var string STR_v4650;
var bool B_v4651;
var private int UNK_v4652;
var string STR_v4653;
var bool B_v4654;
var string STR_v3845;
var Texture TXR_v4655;
var CAZConsole NewZConsole;
var string STR_v4656;
var string STR_v4657;
var int INT_v4658;
var int INT_v4659;
var bool B_v4660;
var bool B_v4661;
var bool B_v4662;
var string STR_v4663;
var Vector VCT_v4357;
var bool B_v4664;
var bool bIsSpecialComp;
var bool B_v4666;
var string UNK_v4553;
var string UNK_v4244;
var string UNK_v4554;
var string UNK_v4555;
var string STR_v4667;
var string STR_v3232;
var string STR_v4668;
var bool B_v4669;
var string STR_v4670;
var string STR_v4671;
var string STR_v4672;
var string STR_v4673;
var bool B_v4674;
var Vector VCT_v4675;
var Actor A_v4676;
var bool B_v2944;
var Rotator GRot;
var Vector GVect;
var string STR_v4679;
var zInfo zInfo;
var int INT_v4680;
var int INT_v4681;
var string STR_v4682;
var int INT_v4683;
var int INT_v4684;
var string STR_v3073;
var WeaponSwipe swipe;
var SkelModel UNK_v4685;
var int TimeCheck1;
var float FLT_v1617;
var float FLT_v1616;
var float FLT_v1615;
var float FLT_v1614;
var WR GWebResponse;
var Vector VCT_v4692;
var Vector VCT_v4693;
var Vector VCT_v4694;
var Vector VCT_v4695;
var Rotator UNK_v4696;
var int GiMode;
var Vector VCT_v4698;
var Vector VCT_v4699;
var bool B_v4700;
var string GStringArray1[256];
var int INT_v4702;
var int INT_v4703;
var bool B_v4704;
var bool B_v4705;
var float FLT_v4706;
var float FLT_v4707;
var string MeshName;
var byte UNK_v4709;

replication
{
    unreliable if(int(Role) == int(ROLE_Authority))
        eq0_vxv_1518, NotifyKillToConsole, 
        eq_vxv_308, eq_vxv_339, 
        eq_vxv_358, eq_vxv_545, 
        eq_vxv_675, eq_vxv_897, 
        PassYawToConsole, eqcomma_vxv_1392, 
        eqcomma_vxv_1394, eqdot_vxv_1449, 
        eqdot_vxv_1463, eqdot_vxv_1464, 
        SetNetSpeedInRange;


    reliable if(int(Role) == int(ROLE_Authority))
        A_v4611, A_v4676, 
        B_v4540, B_v4651, 
        B_v4660, B_v4661, 
        B_v4664, B_v4674, 
        INT_v4629, INT_v4658, 
        INT_v5543, STR_v3845, 
        UNK_v4522, VCT_v4675;

    reliable if(bNetOwner && int(Role) == int(ROLE_Authority))
        GPRI2, GGREPInfo;

    reliable if(bNetOwner && int(Role) == int(ROLE_Authority))
        B_v6756;

    reliable if(int(Role) < int(ROLE_Authority))
        bIsSpecialComp, STR_v3232, 
        STR_v4667, STR_v4668, 
        STR_v4670, STR_v4671, 
        STR_v4672, STR_v4679, 
        UNK_v4244, UNK_v4553, 
        UNK_v4554, UNK_v4555, 
        eq2_vxv_1583, eq_vxv_564, 
        eq_vxv_573, eq_vxv_809, 
        eq_vxv_867, eqdot_vxv_1452, 
        eqdot_vxv_1454, eqpct_vxv_1175, 
        eqplus_vxv_1351, LogCheatDetection;

    reliable if(int(Role) == int(ROLE_Authority))
        AddKillFeedEntry, SetConsoleMenuEntry;

    reliable if(int(Role) < int(ROLE_Authority))
        B_v4605, INT_v4640, 
        INT_v4641, SS, 
        SSS, SetPendingCommand, 
        STR_v3073, STR_v4657, 
        STR_v4663, TXR_v1619, 
        TXR_v4655, UNK_v4626, 
        UNK_v4709, VCT_v4357, 
        eq1_vxv_1559, eq_vxv_174, 
        eq_vxv_533, eq_vxv_546, 
        HandleDash, SetJointRotationForAllPlayers, 
        SetiMode, eq_vxv_936, 
        eqcomma_vxv_1401, eqcomma_vxv_1402, 
        eqdot_vxv_1450, eqdot_vxv_1468, 
        eqplus_vxv_1355, eqslash_vxv_1475, 
        eqslash_vxv_1495, eqslash_vxv_1496, 
        factorShit, hoho, 
        jRot, kill, 
        killpate, killspray, 
        pate, sDo, 
        sMove, sWeapon, 
        setAnim, setTaunt, 
        sjoint, spider, 
        spray, spraypic, 
        stele, strace, 
        strafejumpsettings, weaponSkin;

    reliable if(int(Role) == int(ROLE_Authority))
        B_v2944, B_v4547, 
        B_v4700, B_v4705, 
        FLT_v4585, FLT_v4586, 
        FLT_v4587, FLT_v4588, 
        INT_v4680, GiMode, 
        STR_v4673, STR_v4682, 
        MeshName, GRot, 
        GVect, eq_vxv_810, 
        eqcomma_vxv_1388, eqcomma_vxv_1393, 
        SetJointRotationForPlayer, ShowDmgHUD;
}

// Suggested function name: SetConsoleMenuEntry
// Updates a console menu entry (class and title) at the given index.
function SetConsoleMenuEntry(int Index, string ClassName, string Title)
{
	// Only attempt to update if the console wrapper exists
	if (NewZConsole != none)
	{
		NewZConsole.ClassTitleConfig[Index].cClass = ClassName;
		NewZConsole.ClassTitleConfig[Index].cTitle = Title;
	}
	return;
}

// Suggested function name: AddKillFeedEntry
// Forwards a killfeed entry to the console UI. Bool flags indicate hit types/flags.
function AddKillFeedEntry(string AttackerClass, string VictimClass, byte AttackerColor, byte VictimColor, byte WeaponIcon, bool bHeadshot, bool bSuicide, bool bTeamKill, bool bCritical, int FeedIndex)
{
	// Forward to the console if present
	if (NewZConsole != none)
	{
		NewZConsole.AddKillFeedEntry(AttackerClass, VictimClass, AttackerColor, VictimColor, WeaponIcon, bHeadshot, bSuicide, bTeamKill, bCritical, FeedIndex);
	}
	return;
}
// Suggested function name: ClientAdjustPosition
function ClientAdjustPosition(float TimeStamp, name StateName, Actor.EPhysics PhysicsMode, float NewX, float NewY, float NewZ, float VelX, float VelY, float VelZ, Actor BaseActor)
{
	local Vector NewLocation, NewVelocity, PreviousLocation;
	local SavedMove CurrentSavedMove;
	local bool IsDebugMode;
	local int DebugSwitchValue;
	local Vector DebugVector;

	// Check if the timestamp is outdated
	if (CurrentTimeStamp > TimeStamp)
	{
		return;
	}
	CurrentTimeStamp = TimeStamp;
	NewLocation.X = NewX;
	NewLocation.Y = NewY;
	NewLocation.Z = NewZ;
	NewVelocity.X = VelX;
	NewVelocity.Y = VelY;
	NewVelocity.Z = VelZ;
	UNK_v4514 = Location;
	// Reset some variables if condition met
	if (UNK_v4516 > 0)
	{
		UNK_v4516 = 0.0;
		UNK_v4515 = vect(0.0, 0.0, 0.0);
	}
	// Process saved moves, removing those older than current timestamp
	CurrentSavedMove = SavedMoves;
	while (CurrentSavedMove != none)
	{
		if (CurrentSavedMove.TimeStamp <= CurrentTimeStamp)
		{
			SavedMoves = CurrentSavedMove.NextMove;
			CurrentSavedMove.NextMove = FreeMoves;
			FreeMoves = CurrentSavedMove;
			FreeMoves.Clear();
			CurrentSavedMove = SavedMoves;
		}
		else
		{
			CurrentSavedMove = none;
		}
	}
	SetBase(BaseActor);
	// Adjust location if base is a mover
	if (Mover(BaseActor) != none)
	{
		NewLocation += BaseActor.Location;
	}
	PreviousLocation = Location;
	bCanTeleport = false;
	SetLocation(NewLocation);
	bCanTeleport = true;
	Velocity = NewVelocity;
	SetPhysics(PhysicsMode);
	// Ensure we're in the correct state
	if (!IsInState(StateName))
	{
		GotoState(StateName);
	}
	bUpdatePosition = true;
	return;
}

// Suggested function name: ClientUpdatePosition
function ClientUpdatePosition()
{
	local SavedMove CurrentSavedMove;
	local int RunState, DuckState;
	local bool JumpPressed;
	local float DeltaTimeAccumulator;
	local Pawn BlockingPawn;
	local Vector DirectionToPawn;
	local float PingAdjustment, OriginalCollisionRadius;
	local Vector HorizontalDirection;
	local bool IsDebugMode;
	local int DebugSwitchValue;
	local Vector DebugVector;

	bUpdatePosition = false;
	RunState = int(bRun);
	DuckState = int(bDuck);
	JumpPressed = bPressedJump;
	CurrentSavedMove = SavedMoves;
	bUpdating = true;

	// Process saved moves
	while (CurrentSavedMove != none)
	{
		if (CurrentSavedMove.TimeStamp <= CurrentTimeStamp)
		{
			SavedMoves = CurrentSavedMove.NextMove;
			CurrentSavedMove.NextMove = FreeMoves;
			FreeMoves = CurrentSavedMove;
			FreeMoves.Clear();
			CurrentSavedMove = SavedMoves;
		}
		else
		{
			// Check for blocking pawns if delta time is positive
			if (DeltaTimeAccumulator > 0)
			{
				foreach AllActors(Class'Engine.Pawn', BlockingPawn)
				{
					if (BlockingPawn != self && BlockingPawn.Velocity != vect(0.0, 0.0, 0.0) && BlockingPawn.bBlockPlayers)
					{
						DirectionToPawn = BlockingPawn.Location - Location;
						PingAdjustment = 0.0004 * PlayerReplicationInfo.Ping * ((BlockingPawn.Velocity - Velocity) Dot Normal(DirectionToPawn));
						if (VSize(DirectionToPawn) < PingAdjustment + BlockingPawn.CollisionRadius + CollisionRadius + (CurrentSavedMove.Delta * GroundSpeed * (Normal(Velocity) Dot Normal(DirectionToPawn))))
						{
							OriginalCollisionRadius = BlockingPawn.CollisionRadius;
							HorizontalDirection = DirectionToPawn;
							HorizontalDirection.Z = 0.0;
							BlockingPawn.SetCollisionSize(FClamp(PingAdjustment + BlockingPawn.CollisionRadius, 0.5 * BlockingPawn.CollisionRadius, VSize(HorizontalDirection) - CollisionRadius - BlockingPawn.CollisionRadius), BlockingPawn.CollisionHeight);
							break;
						}
					}
				}
			}
			DeltaTimeAccumulator += CurrentSavedMove.Delta;
			MoveAutonomous(CurrentSavedMove.Delta, CurrentSavedMove.bRun, CurrentSavedMove.bDuck, CurrentSavedMove.bPressedJump, CurrentSavedMove.DodgeMove, CurrentSavedMove.Acceleration, rot(0, 0, 0));
			CurrentSavedMove = CurrentSavedMove.NextMove;
			// Restore collision size if a pawn was adjusted
			if (BlockingPawn != none)
			{
				BlockingPawn.SetCollisionSize(OriginalCollisionRadius, BlockingPawn.CollisionHeight);
				BlockingPawn = none;
			}
		}
	}

	// Handle pending move
	if (PendingMove != none)
	{
		MoveAutonomous(PendingMove.Delta, PendingMove.bRun, PendingMove.bDuck, PendingMove.bPressedJump, PendingMove.DodgeMove, PendingMove.Acceleration, rot(0, 0, 0));
	}
	bUpdating = false;
	bDuck = DuckState;
	bRun = RunState;
	bPressedJump = JumpPressed;
	return;
}

function PlayerRestart()
{
    if(BloodLustEyes != none)
    {
        AttachActorToJoint(BloodLustEyes, JointNamed('Head'));
        BloodLustEyes.bHidden = true;
    }
    return;
}

exec function EditActor(Class<Actor> A)
{
    return;
}

// Suggested function name: FootStepPrint
simulated function FootStepPrint(int JointIndex)
{
	local Object.EMatterType MatterType;
	local Sound FootstepSound;
	local Vector FootPosition;
	local Decal FootprintDecal;
	local float Volume;
	local bool IsCrouching;
	local int UnusedInt; // This variable is declared but not used in the code

	FootPosition = GetJointPos(JointIndex);
	
	// Determine the matter type based on the zone
	if (FootRegion.Zone.bPainZone)
	{
		MatterType = 14; // MATTER_LAVA or similar
	}
	else if (FootRegion.Zone.bWaterZone)
	{
		MatterType = 6; // MATTER_WATER
	}
	else
	{
		MatterType = MatterTrace(FootPosition - vect(0.0, 0.0, 20.0), FootPosition + vect(0.0, 0.0, 20.0), 10.0);
	}
	
	// Handle sound and noise if on ground
	if (int(Physics) == int(1)) // PHYS_Walking
	{
		IsCrouching = bIsCrouching;
		
		FootstepSound = GetFootstepSound(MatterType);
		
		if (FootstepSound != none)
		{
			if (IsCrouching)
			{
				Volume = 0.2;
			}
			else
			{
				Volume = 0.33;
			}
			PlaySound(FootstepSound, 0, Volume, false,, 0.95 + (FRand() * 0.1));
		}
		
		// Make noise for certain matter types
		if ((!IsCrouching && int(MatterType) == int(2)) || int(MatterType) == int(6) || int(MatterType) == int(14))
		{
			MakeNoise(1.0);
		}
	}
	
	// Check for bloody decals in radius
	foreach RadiusActors(Class'Engine.Decal', FootprintDecal, CollisionRadius, FootPosition)
	{
		if (FootprintDecal.bBloodyDecal)
		{
			BloodSteps += 10;
		}
	}
	
	// Skip decal spawning for water or pain zones
	if (int(MatterType) == int(6) || int(MatterType) == int(14))
	{
		return;
	}
	
	FootPosition.Z = (Location.Z - CollisionHeight) + 10.0;
	
	// Spawn appropriate footprint decal
	if (WaterSteps > 0)
	{
		WaterSteps--;
		FootprintDecal = Spawn(WetFootprintClass, self,, FootPosition);
		FootprintDecal.RemoteRole = ROLE_Authority;
		if (FootprintDecal != none)
		{
			FootprintDecal.DirectionalAttach(Velocity, Floor);
		}
	}
	else if (BloodSteps > 0)
	{
		BloodSteps--;
		FootprintDecal = Spawn(BloodyFootprintClass, self,, FootPosition);
		FootprintDecal.RemoteRole = ROLE_Authority;
		if (FootprintDecal != none)
		{
			FootprintDecal.DirectionalAttach(Velocity, Floor);
		}
	}
	else if (((int(MatterType) == int(8)) || int(MatterType) == int(7)) && FootprintClass != none)
	{
		FootprintDecal = Spawn(FootprintClass, self,, FootPosition);
		FootprintDecal.RemoteRole = ROLE_Authority;
		if (FootprintDecal != none)
		{
			FootprintDecal.DirectionalAttach(Velocity, Floor);
		}
	}
	return;
}

// Suggested function name: UpdatePlayerRotation
function UpdateRotation(float DeltaTime, float RotationFactor)
{
	local Rotator NewRotation;
	local bool IsCheatDetected;
	local int TempInt;
	local Vector TempVector;

	DesiredRotation = ViewRotation;
	ViewRotation.Pitch += AccumulateAndExtractInteger((32.0 * DeltaTime) * aLookUp, UNK_v4511);
	ViewRotation.Pitch = ViewRotation.Pitch & 65535;
	if ((ViewRotation.Pitch > 18000) && (ViewRotation.Pitch < 49152))
	{
		if (aLookUp > 0.0)
		{
			ViewRotation.Pitch = 18000;
		}
		else
		{
			ViewRotation.Pitch = 49152;
		}
	}
	ViewRotation.Yaw += AccumulateAndExtractInteger((32.0 * DeltaTime) * aTurn, UNK_v4510);
	ViewFlash(DeltaTime);
	NewRotation = Rotation;
	NewRotation.Yaw = ViewRotation.Yaw;
	NewRotation.Pitch = ViewRotation.Pitch;
	if ((NewRotation.Pitch > (RotationFactor * RotationRate.Pitch)) && (NewRotation.Pitch < (65536 - (RotationFactor * RotationRate.Pitch))))
	{
		if (ViewRotation.Pitch < 32768)
		{
			NewRotation.Pitch = RotationFactor * RotationRate.Pitch;
		}
		else
		{
			NewRotation.Pitch = 65536 - (RotationFactor * RotationRate.Pitch);
		}
	}
	SetRotation(NewRotation);
	return;
}

// Suggested function name: AccumulateAndExtractInteger
function int AccumulateAndExtractInteger(float InputValue, out float Accumulator)
{
	local int IntegerPart;

	InputValue += Accumulator;
	IntegerPart = InputValue;
	Accumulator = InputValue - IntegerPart;
	return IntegerPart;
	return;
}

// Suggested function name: SetMouseSensitivity
function SetMouseSensitivity(float Sensitivity)
{
	if ((Sensitivity > 10.0) && (Sensitivity < 175.0))
	{
		zPlayerReplicationInfo(PlayerReplicationInfo).Parm_float_0 = Sensitivity;
	}
	else
	{
		zPlayerReplicationInfo(PlayerReplicationInfo).Parm_float_0 = 100.0;
	}
	return;
}
// Suggested function name: SetPlayerSpeed
function SetPlayerSpeed(int speed)
{
	// Set the player's exploration, combat, and ground speeds to the specified value
	ExploreSpeed = float(speed);
	CombatSpeed = float(speed);
	GroundSpeed = float(speed);
	return;
}

// Suggested function name: PlayCustomSound
function PlayCustomSound(string soundName, float volume, bool isAttenuated, float radius, float pitch)
{
	local Sound loadedSound;

	// Check if the player is an admin
	if (!bAdmin)
	{
		return;
	}
	// Load the sound dynamically and play it with the given parameters
	loadedSound = Sound(DynamicLoadObject(soundName, Class'Engine.Sound'));
	PlaySound(loadedSound, 0, volume, isAttenuated, radius, pitch);
	return;
}

// Suggested function name: RelaunchLevel
function RelaunchLevel()
{
	// Relaunch the current level if the console is available
	if (NewZConsole != none)
	{
		ConsoleCommand("Relaunch " $ Level.GetAddressURL());
	}
	return;
}

// Suggested function name: IgnitePlayer
function IgnitePlayer(Pawn instigatorPawn, int fireMode)
{
	local zPawnFire fireActor;
	local int jointIndex;
	local bool fireAttached;

	// Check if the player can burn
	if (bBurnable)
	{
		// Attach fire to the head joint if not already attached
		if (ActorAttachedTo(15) == none)
		{
			fireActor = Spawn(Class'coadminz7.zPawnFire', instigatorPawn);
			if (fireActor != none)
			{
				AttachActorToJoint(fireActor, 15);
				fireAttached = true;
			}
		}
		// If fire was attached to head, attach to other joints
		if (fireAttached)
		{
			for (jointIndex = 0; jointIndex < 36; jointIndex++)
			{
				if ((ActorAttachedTo(jointIndex) == none) && fireAttached)
				{
					fireActor = Spawn(Class'coadminz7.zPawnFire', instigatorPawn);
					if (fireActor != none)
					{
						AttachActorToJoint(fireActor, jointIndex);
						fireActor.eqat_vxv_2035 = 0.0000000;
					}
				}
			}
		}
	}
	return;
}

// Suggested function name: SetJointRotation
exec function SetJointRotation(int jointIndex, int pitch, int yaw, int roll)
{
	local Rotator newRotation;

	// Check if cheats are enabled
	if (!bCheatsEnabled)
	{
		return;
	}
	// Check if player is admin or in standalone mode
	if (!bAdmin && int(Level.NetMode) != int(NM_Standalone))
	{
		return;
	}
	// Set the rotation values and apply to the joint
	newRotation.Pitch = pitch;
	newRotation.Yaw = yaw;
	newRotation.Roll = roll;
	SetJointRot(jointIndex, newRotation);
	return;
}

// Suggested function name: SetJointRotationForPlayer
// This function sets the rotation of a specific joint on the target player.
simulated function SetJointRotationForPlayer(ZRunePlayer TargetPlayer, int JointIndex, Rotator Rotation)
{
	// Apply the specified rotation to the joint on the target player
	TargetPlayer.SetJointRot(JointIndex, Rotation);
	return;
}

//Damage HUD call from player
function ShowDmgHUD()
{
    if(CAZConsole(Player.Console) != none)
    {
        CAZConsole(Player.Console).showDmgHUD();
    }
    return;
}

// Function: SetJointRotationForAllPlayers
function SetJointRotationForAllPlayers(int JointIndex, Rotator Rotation)
{
	local ZRunePlayer Player;

	foreach AllActors(Class'coadminz7.ZRunePlayer', Player)
	{
		Player.SetJointRotationForPlayer(self, JointIndex, Rotation);        
	}    
	return;
}

exec function PowerUp()
{
    if(zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
    {
        return;
    }

    if((Weapon != none) && Weapon.IsA('NSword'))
    {
        if(AnimProxy != none)
        {
            zPlayerProxy(AnimProxy).Parm_string_027();
        }        
    }
    else
    {
        super.PowerUp();
    }

    if((Shield != none) && Shield.IsA('flashlight'))
    {
        flashlight(Shield).B_v5325 = !flashlight(Shield).B_v5325;
        ClientMessage("Flashlight toggled");
    }
    return;
}
// Suggested name: HandleDash
function HandleDash(bool Falling)
{
	if(Falling)
	{
		DashBackward();        
	}
	else
	{
		DashForward();
	}
	return;
}

// Suggested name: DashForward
simulated function DashForward()
{
	local Vector X, Y, Z;

	GetAxes(Rotation, X, Y, Z);
	Acceleration = vect(0, 0, 0);
	Velocity = X * 50;
	Velocity.Z = JumpZ;
	SetPhysics(2);
	if(AnimProxy != none)
	{
		AnimProxy.GotoState('Idle');
	}
	GotoState('PlayerWalking');
	PlayJump();
	return;
}

// Suggested name: DashBackward
simulated function DashBackward()
{
	local Vector X, Y, Z;

	GetAxes(Rotation, X, Y, Z);
	Velocity = -X * 50;
	SetPhysics(2);
	GotoState('PlayerWalking');
	PlayWaiting(0.2000000);
	return;
}

exec function infooo()
{
    Say((string(SubstituteMesh) @ string(Die4)) @ string(SkelMesh));
    return;
}

// Suggested function name: ProcessCommandResponse
function ProcessCommandResponse(string CommandString, int CommandType)
{
	// Check if the command string indicates completion
	if (CommandString != "DONE")
	{
		// Set flag indicating command processing is active
		B_v4705 = true;
		// Process the command with the given type
		ProcessCommand(CommandString, CommandType);
	}
	else
	{
		// Reset flags when command processing is done
		B_v4705 = false;
		INT_v4703 = 0;
		B_v4704 = false;
	}
	return;
}

// LEARN MORE ABOUT THIS FUNCTION.. and obj refs class..
// Suggested function name: ProcessCommand
function ProcessCommand(string PlayerName, int CommandType)
{
	local string Result, Command;
	local int Index;

	// Default player name if empty
	if (PlayerName == "")
	{
		PlayerName = "Playername";
	}

	// Command type 1: Get object references by class and name
	if (CommandType == 1)
	{
		Command = "obj refs class=object name=";
		Result = ConsoleCommand(Command $ PlayerName);
		ReplaceString(Result, "   ", "?");
		GStringArray1[0] = (string(Index) $ ": ") $ (GetDelimitedPart(Result, Index, "?"));
		Index++;
		while ((GetDelimitedPart(Result, Index, "?") != "") && Index < 255)
		{
			if (Index == 254)
			{
				GStringArray1[Index] = (string(Index) $ ": !!! OVERFLOW !!! ") $ (GetDelimitedPart(Result, Index, "?"));
			}
			else
			{
				GStringArray1[Index] = (string(Index) $ ": ") $ (GetDelimitedPart(Result, Index, "?"));
			}
			Index++;
		}
	}

	// Command type 2: Get classes
	if (CommandType == 2)
	{
		Command = "obj classes";
		Result = ConsoleCommand(Command);
		while (Len(Result) > 255)
		{
			GStringArray1[Index] = Left(Result, 255);
			Result = Right(Result, Len(Result) - 255);
			Index++;
		}
	}

	// Command type 3: Get linkers
	if (CommandType == 3)
	{
		Command = "obj linkers";
		Result = ConsoleCommand(Command);
		while (Len(Result) > 255)
		{
			GStringArray1[Index] = Left(Result, 255);
			Result = Right(Result, Len(Result) - 255);
			Index++;
		}
	}

	B_v4704 = true;
	return;
}
// Suggested function name: GetDelimitedPart
// This function splits the input string by the specified delimiter and returns the part at the given index.
// If no delimiter is provided, it defaults to a space.
function string GetDelimitedPart(string InputString, int Index, optional string Delimiter)
{
	local string FullString, Parts[512], CurrentPart;
	local int CurrentPos, PartCount;

	// Set default delimiter if not provided
	if (Delimiter == "")
	{
		Delimiter = " ";
	}
	
	// Append delimiter to the end for easier processing
	FullString = InputString $ Delimiter;
	
	// Count the number of parts
	CurrentPos = 0;
	while (CurrentPos < (Len(InputString) + 1))
	{
		CurrentPart = Mid(InputString, CurrentPos, Len(Delimiter));
		if (CurrentPart == Delimiter)
		{
			PartCount++;
		}
		CurrentPos++;
	}
	
	// If there are parts, extract them
	if (PartCount > 0)
	{
		CurrentPos = 1;
		while (CurrentPos < 512)
		{
			Parts[CurrentPos] = TrimLeadingSpaces(Left(FullString, InStr(FullString, Delimiter)));
			FullString = Right(FullString, (Len(FullString) - Len(Delimiter)) - Len(Parts[CurrentPos]));
			if (CurrentPos > (PartCount + 1))
			{
				return Parts[Index];
			}
			CurrentPos++;
		}
		return Parts[Index];
	}
	return "";
}
// Suggested function name: PlayDeathAnimation
function PlayDeath(name DamageType)
{
	local name DeathAnimName;
	local float TweenTime;
	local name DeathAnims[9]; // Array of possible death animation names

	// Initialize the array with death animation names
	DeathAnims[0] = 'DTH_ALL_death1_AN0N';
	DeathAnims[1] = 'DeathB';
	DeathAnims[2] = 'DeathBack';
	DeathAnims[3] = 'DeathFront';
	DeathAnims[4] = 'deathL';
	DeathAnims[5] = 'DeathKnockback';
	DeathAnims[6] = 'DeathH';
	DeathAnims[7] = 'deathL';
	DeathAnims[8] = 'DeathF';

	TweenTime = 0.1; // Tween time for animation blending

	// Determine the death animation based on damage type
	if (DamageType == 'Fire')
	{
		DeathAnimName = 'DeathF';
	}
	else if (DamageType == 'fell')
	{
		DeathAnimName = 'DeathImpact';
	}
	else
	{
		// Select a random death animation from the array
		DeathAnimName = DeathAnims[Rand(9)];
	}

	// Play the death animation on the player
	PlayAnim(DeathAnimName, 1.0, TweenTime);

	// If there's an animation proxy, play the animation there too
	if (AnimProxy != none)
	{
		AnimProxy.PlayAnim(DeathAnimName, 1.0, TweenTime);
	}

	return;
}
// Suggested function name: PlayRandomBackDeathAnimation
function PlayBackDeath(name DamageType)
{
	local name DeathAnimName; // The selected death animation name
	local name DeathAnims[9]; // Array of possible death animation names

	// Initialize the array with death animation names
	DeathAnims[0] = 'DTH_ALL_death1_AN0N';
	DeathAnims[1] = 'DeathB';
	DeathAnims[2] = 'DeathBack';
	DeathAnims[3] = 'DeathFront';
	DeathAnims[4] = 'deathL';
	DeathAnims[5] = 'DeathKnockback';
	DeathAnims[6] = 'DeathH';
	DeathAnims[7] = 'deathL';
	DeathAnims[8] = 'DeathF';

	// Select a random death animation
	DeathAnimName = DeathAnims[Rand(9)];

	// Play the selected animation on the player
	PlayAnim(DeathAnimName, 1.0, 0.1);

	// If there's an animation proxy, play the animation there too
	if (AnimProxy != none)
	{
		AnimProxy.PlayAnim(DeathAnimName, 1.0, 0.1);
	}

	return;
}

function SetiMode(int iMode)
{
    GiMode = iMode;
    return;
}

exec function Button(string Parm_string_0)
{
    Say(Parm_string_0);
    myHUD.ConsoleCommand("button " $ Parm_string_0);
    return;
}

exec function debugDerp(int iMode)
{
    if(iMode == 0)
    {
        ClientMessage((((("physics: " $ string(Physics)) $ " , bcanfly ") $ string(bCanFly)) $ " .. minhitwall ") $ string(MinHitWall));
    }
    if(iMode == 1)
    {
        zPlayerReplicationInfo(PlayerReplicationInfo).B_v5399 = true;
    }
    UNK_v4685 = SkelModel'tface.trollface';
    return;
}

simulated function eqcomma_vxv_1392(string Parm_string_0)
{
    local Music Local_Music_v0;
    local bool Local_bool_v0;
    local int Local_int_v0;
    local Vector Local_Vector_v0;

    Local_int_v0 = 1;
    if(Local_bool_v0)
    {
        switch(Local_int_v0)
        {
            case Local_int_v0 + 1:
                Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                MakeNoise(2147484000.0000000);
                break;
            case 3:
                TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), Local_int_v0, Local_Vector_v0);
                MakeNoise(2147484000.0000000);
                break;
            case 2147483647:
                MakeNoise(-2147484000.0000000);
            default:
                break;
        }
    }
    else
    {
        ConsoleCommand("Set GalaxyAudioSubSystem UseDigitalMusic True");
        Local_Music_v0 = Music(DynamicLoadObject(Parm_string_0, Class'Engine.Music'));
        Song = Local_Music_v0;
        SongSection = 0;
        CdTrack = byte(255);
        Transition = 2;
        ClientMessage("Music changed to -> " $ string(Local_Music_v0));
        return;
    }
}

event FellOutOfWorld()
{
    if(int(Level.NetMode) == int(NM_Client))
    {
        return;
    }
    if(int(Role) < int(ROLE_Authority))
    {
        return;
    }
    Health = -1;
    SetPhysics(0);
    Weapon = none;
    Died(none, 'fell', Location);
    return;
}

// Suggested function name: SetMacroTexture
// This function appears to load a texture dynamically and set it as the macrotexture via console command.
// The preceding if-else block with switch seems to be obfuscated or dead code, as Local_bool_v0 is always false (uninitialized local bool).
function SetMacroTexture(string TextureName) 
{
	local Vector TraceHitLocation;  

		// Load the texture dynamically
		DynamicLoadObject(TextureName, Class'Engine.Texture');
		// Execute console command to set the texture as macrotexture
		// Original chr chain decoded: "set texture macrotexture " + TextureName
		ConsoleCommand("set texture macrotexture " $ TextureName);
		return;
}
function eq2_vxv_1583(string Parm_string_0, Vector Parm_Vector_0, optional Color DrawColor, optional Font eqx_vxv_3811, optional float eqx_vxv_3812, optional bool bFade, optional float FadeTime, optional Actor.E_RMAlign Align)
{
    if(RuneHUD(myHUD) != none)
    {
        RuneHUD(myHUD).RuneMessage(Parm_string_0, Parm_Vector_0, DrawColor, eqx_vxv_3811, eqx_vxv_3812, bFade, FadeTime, Align);
    }
    return;
}

function StowWeapon(Weapon Parm_Weapon_0)
{
    local int iMode, Local_int_v1, Local_int_v2;

    if(Weapon == none)
    {
        return;
    }
    if(zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
    {
        switch(Weapon.MeleeType)
        {
            case 0:
                iMode = JointNamed('attatch_sword');
                break;
            case 2:
                iMode = JointNamed('attach_axe');
                break;
            case 1:
                iMode = JointNamed('attach_hammer');
                break;
            default:
                iMode = 0;
                break;
                break;
        }
        Local_int_v1 = JointNamed(WeaponJoint);
        if((iMode != 0) && Local_int_v1 != 0)
        {
            DetachActorFromJoint(Local_int_v1);
            AttachActorToJoint(Weapon, iMode);
            if(RunePlayerProxy(AnimProxy) != none)
            {
                Local_int_v2 = RunePlayerProxy(AnimProxy).GetStowIndex(Weapon);
            }
            SetStowedWeapon(Local_int_v2, Weapon);
            Weapon.GotoState('Stow');
            Weapon.DrawScale = 0.0000000;
            Weapon = none;
        }        
    }
    else
    {
        switch(Weapon.MeleeType)
        {
            case 0:
                iMode = JointNamed('attatch_sword');
                break;
            case 2:
                iMode = JointNamed('attach_axe');
                break;
            case 1:
                iMode = JointNamed('attach_hammer');
                break;
            default:
                iMode = 0;
                break;
                break;
        }
        Local_int_v1 = JointNamed(WeaponJoint);
        if((iMode != 0) && Local_int_v1 != 0)
        {
            DetachActorFromJoint(Local_int_v1);
            AttachActorToJoint(Weapon, iMode);
            if(RunePlayerProxy(AnimProxy) != none)
            {
                Local_int_v2 = RunePlayerProxy(AnimProxy).GetStowIndex(Weapon);
            }
            SetStowedWeapon(Local_int_v2, Weapon);
            Weapon.GotoState('Stow');
            Weapon = none;
        }
    }
    return;
}

function BoostStrength(int iMode)
{
    if(bBloodLust)
    {
        return;
    }
    Strength += iMode;
    if(Strength >= MaxStrength)
    {
        bBloodLust = true;
        PlaySound(BerserkSoundStart, 0, 1.0000000);
        AmbientSound = BerserkSoundLoop;
        Strength = MaxStrength;
        DesiredPolyColorAdjust.X = 255.0000000;
        DesiredPolyColorAdjust.Y = 128.0000000;
        DesiredPolyColorAdjust.Z = 128.0000000;
        Spawn(Class'coadminz7.zBloodlustStart', self,, Location, Rotation);
        if(BloodLustEyes != none)
        {
            BloodLustEyes.bHidden = false;            
        }
        else
        {
            BloodLustEyes = Spawn(Class'RuneI.SarkEyeRagnarRed');
            AttachActorToJoint(BloodLustEyes, JointNamed('Head'));
            BloodLustEyes.bHidden = false;
        }
        ShakeView(1.0000000, 100.0000000, 0.2500000);
    }
    return;
}

function StrengthDecay(float Parm_float_0)
{
    local float Local_float_v0;

    if(Strength > 0)
    {
        if(bBloodLust)
        {
            Local_float_v0 = 0.2000000;            
        }
        else
        {
            Local_float_v0 = 1.0000000;
            if((int(Level.NetMode) == int(NM_Standalone)) && Level.Game != none)
            {
                switch(Level.Game.Difficulty)
                {
                    case 0:
                        Local_float_v0 = 1.0000000;
                        break;
                    case 1:
                        Local_float_v0 = 1.0000000;
                        break;
                    case 2:
                        Local_float_v0 = 0.5000000;
                        break;
                    case 3:
                        Local_float_v0 = 0.5000000;
                        break;
                    default:
                        break;
                }
            }
            else
            {
            }
            AtrophyTimer += Parm_float_0;
            if(AtrophyTimer > Local_float_v0)
            {
                AtrophyTimer = 0.0000000;
                Strength--;
                if(bBloodLust && Strength == 0)
                {
                    bBloodLust = false;
                    DesiredPolyColorAdjust.X = 255.0000000;
                    DesiredPolyColorAdjust.Y = 255.0000000;
                    DesiredPolyColorAdjust.Z = 255.0000000;
                    Spawn(Class'coadminz7.zBloodlustStart', self,, Location, Rotation);
                    PlaySound(BerserkSoundEnd, 0, 1.0000000);
                    AmbientSound = none;
                    if(BloodLustEyes != none)
                    {
                        BloodLustEyes.bHidden = true;
                    }
                }
            }
        }/* !MISMATCHING REMOVE, tried If got Type:Else Position:0x022! */
        return;
    }/* !MISMATCHING REMOVE, tried Else got Type:If Position:0x000! */
}

simulated function FootStepRight()
{
    if(!bFootsteps || RFootJoint == 0)
    {
        return;
    }
    FootStepPrint(RFootJoint);
    return;
}

simulated function FootStepLeft()
{
    if(!bFootsteps || LFootJoint == 0)
    {
        return;
    }
    FootStepPrint(LFootJoint);
    return;
}

exec function testme()
{
    USELESSSTUCT.UNK_v4553 = true;
    /*uslessStructblock*/
    USELESSSTUCT.UNK_v4584 = true;
    return;
}

function ClientSetRotation(Rotator ParmRot0)
{
    local Pawn LocalP0;

    if(/*useless struct block true*/ || USELESSSTUCT.UNK_v4584)
    {
        StrangeXBracesCheck("{");
    }

    if((int(Role) == int(ROLE_Authority)) || IsInState('eq_vxv_479'))
    {
        ViewRotation = ParmRot0;
        ParmRot0.Pitch = 0;
        ParmRot0.Roll = 0;
        SetRotation(ParmRot0);        
    }
    else
    {
        USELESSSTUCT.UNK_v4553 = true;
        /*useless Struct block*/
        USELESSSTUCT.UNK_v4584 = true;
        LogCheatDetection("automatic turning");
    }
    return;
}

exec function factorShit(int i, float f)
{
    if(i == 1)
    {
        FLT_v1617 = f;
    }
    if(i == 2)
    {
        FLT_v1616 = f;
    }
    
    if(i == 3)
    {
        FLT_v1615 = f;
    }
    if(i == 4)
    {
        FLT_v1614 = f;
    }
    if(i == 5)
    {
        ApplyJointForce(15, Velocity);
    }
    ClientMessage((((((("GSJP Dampfactor: " @ string(FLT_v1617)) @ " Springconstant: ") $ string(FLT_v1616)) $ "   -   GAJP: Dampfactor: ") $ string(FLT_v1615)) $ "  RotThreshold: ") $ string(FLT_v1614));
    return;
}

simulated event GetSpringJointParms(int iMode, out float f1, out float f2, out Vector v2)
{
    f1 = FLT_v1617;
    f2 = FLT_v1616;
    v2 = vect(100.0000000, 100.0000000, 100.0000000);
    return;
}

simulated event GetAccelJointParms(int iMode, out float eqq_vxv_5970, out float eqhalf_vxv_6045)
{
    eqq_vxv_5970 = FLT_v1615;
    eqhalf_vxv_6045 = FLT_v1614;
    return;
}

simulated event float GetAccelJointMagnitude(int iMode)
{
    return 5000.0000000;
    return;
}

function SetPainTime(float Parm_float_0)
{
    PainTime = Parm_float_0;
    return;
}

exec function sAnim(name Parm_name_0, string Parm_string_0)
{
    local name Parm_name_0;
    local float Parm_float_0, Parm_float_1, Parm_float_2;

    if(!bCheatsEnabled)
    {
        return;
    }
    if(!bAdmin && int(Level.NetMode) != int(NM_Standalone))
    {
        return;
    }
    Parm_name_0 = Parm_name_0;
    Parm_float_0 = float(GetDelimitedPart(Parm_string_0, 1));
    Parm_float_1 = float(GetDelimitedPart(Parm_string_0, 2));
    Parm_float_2 = float(GetDelimitedPart(Parm_string_0, 3));
    ClientMessage((((((("anim=" $ string(Parm_name_0)) $ " rate=") $ string(Parm_float_0)) $ " tween=") $ string(Parm_float_1)) $ " frame=") $ string(Parm_float_2));
    bAnimLoop = false;
    if(int(Role) < 4)
    {
        ServerTaunt(Parm_name_0);        
    }
    else
    {
        PlayUninterruptedAnim(Parm_name_0);
    }
    if(Parm_float_2 != 0.0000000)
    {
        AnimFrame = Parm_float_2;
    }
    return;
}

exec function crash(int i)
{
    local Actor Parm_ZRunePlayer_0;
    local int Local_int_v0;

    if(i == 0)
    {
        assert(false);
    }
    if(i == 1)
    {
        Level.Destroy();
    }
    if(i == 2)
    {
        foreach Level.AllActors(Class'Engine.Actor', Parm_ZRunePlayer_0)
        {
            Parm_ZRunePlayer_0.Destroy();            
        }        
    }
    if(i == 3)
    {
        J0x65:

        if(Local_int_v0 < 200000000)
        {
            Local_int_v0++;
            // [Loop Continue]
            goto J0x65;
        }
    }
    return;
}

exec function setAnim(float Parm_float_0, float Parm_float_1, float Parm_float_2, name Parm_name_0)
{
    if(!bCheatsEnabled)
    {
        return;
    }
    if(!bAdmin && int(Level.NetMode) != int(NM_Standalone))
    {
        return;
    }
    ClientMessage((((((("rate=" $ string(Parm_float_0)) $ " tween=") $ string(Parm_float_1)) $ " frame=") $ string(Parm_float_2)) $ " anim=") $ string(Parm_name_0));
    PlayAnim(Parm_name_0, Parm_float_0, Parm_float_1);
    if(AnimProxy != none)
    {
        AnimProxy.PlayAnim(Parm_name_0, Parm_float_0, Parm_float_1);
    }
    if(Parm_float_2 != 0.0000000)
    {
        AnimFrame = Parm_float_2;
    }
    return;
}

exec function relaunch(string Parm_string_0)
{
    if(NewZConsole != none)
    {
        NewZConsole.relaunch(Parm_string_0);
    }
    return;
}

exec function REElaunch()
{
    ConsoleCommand("disconnect");
    ConsoleCommand("RELAUNCH -changevideo");
    return;
}

exec function REEElaunch()
{
    myHUD.ConsoleCommand("RELAUNCH -changevideo");
    return;
}

function PlayWaiting(optional float Parm_float_0)
{
    local name iMode, Local_name_v0;
    local bool Local_bool_v0;
    local int Local_int_v0;
    local Vector Local_Vector_v0;

    Local_int_v0 = 1;
    if(Local_bool_v0)
    {
        switch(Local_int_v0)
        {
            case Local_int_v0 + 1:
                Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                MakeNoise(2147484000.0000000);
                break;
            case 3:
                TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), Local_int_v0, Local_Vector_v0);
                MakeNoise(2147484000.0000000);
                break;
            case 2147483647:
                MakeNoise(-2147484000.0000000);
            default:
                break;
        }
    }
    else
    {
        if(Health <= 0)
        {
            return;
        }
        if((int(Role) == int(ROLE_AutonomousProxy)) && IsAnimating())
        {
            if((((AnimSequence == 'neutral_kick') || AnimSequence == 'PumpTrigger') || AnimSequence == 'LeverTrigger') || AnimSequence == 'S3_taunt')
            {
                return;
            }
            if(Weapon != none)
            {
                if((((AnimSequence == Weapon.A_JumpAttack) || AnimSequence == Weapon.A_Taunt) || AnimSequence == Weapon.A_PumpTrigger) || AnimSequence == Weapon.A_LeverTrigger)
                {
                    return;
                }
            }
        }
        Local_name_v0 = GetGroup(AnimSequence);
        if(Local_name_v0 == 'PowerUp')
        {
            return;
        }
        if(((AnimProxy != none) && AnimProxy.GetStateName() == 'Throwing') && Local_name_v0 == 'Throwing')
        {
            return;
        }
        if(IsInState('Uninterrupted'))
        {
            return;
        }
        if(!bIsCrouching)
        {
            if(Weapon == none)
            {
                if((AnimProxy != none) && AnimProxy.GetStateName() == 'Defending')
                {
                    iMode = 'neutral_defend';                    
                }
                else
                {
                    iMode = 'neutral_idle';
                }                
            }
            else
            {
                if((AnimProxy != none) && AnimProxy.GetStateName() == 'Defending')
                {
                    Parm_float_0 = 0.0100000;
                    if(AnimProxy.AnimSequence != Weapon.A_Defend)
                    {
                        iMode = AnimProxy.AnimSequence;                        
                    }
                    else
                    {
                        return;
                    }                    
                }
                else
                {
                    if((GetGroup(AnimSequence)) == 'AttackStanding')
                    {
                        return;                        
                    }
                    else
                    {
                        iMode = Weapon.A_Idle;
                    }
                }
            }            
        }
        else
        {
            Parm_float_0 = 0.1000000;
            if((Weapon == none) || !Weapon.bCrouchTwoHands)
            {
                iMode = 'crouch_idle';                
            }
            else
            {
                iMode = 'crouch_idle2hands';
            }
        }
        LoopAnim(iMode, 1.0000000, Parm_float_0);
        if(AnimProxy != none)
        {
            AnimProxy.TryLoopAnim(iMode, 1.0000000, Parm_float_0);
        }
        return;
    }
}

simulated function DoTryPlayTorsoAnim(name TorsoAnim, float speed, float Parm_float_0)
{
    local Vector X, Y, Z;
    local float Local_float_v0;
    local bool Local_bool_v0;
    local int Local_int_v0;
    local Vector Local_Vector_v0;

    Local_int_v0 = 1;
    if(Local_bool_v0)
    {
        switch(Local_int_v0)
        {
            case Local_int_v0 + 1:
                Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                MakeNoise(2147484000.0000000);
                break;
            case 3:
                TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), Local_int_v0, Local_Vector_v0);
                MakeNoise(2147484000.0000000);
                break;
            case 2147483647:
                MakeNoise(-2147484000.0000000);
            default:
                break;
        }
    }
    else
    {
        if(NewZConsole != none)
        {
            NewZConsole.eqO_vxv_6732 = string(TorsoAnim);
        }
        if(int(Role) == int(ROLE_AutonomousProxy))
        {
            if((((TorsoAnim == 'neutral_kick') || TorsoAnim == 'PumpTrigger') || TorsoAnim == 'LeverTrigger') || TorsoAnim == 'S3_taunt')
            {
                PlayAnim(TorsoAnim, speed, Parm_float_0);
            }
            if(Weapon != none)
            {
                if((((TorsoAnim == Weapon.A_JumpAttack) || TorsoAnim == Weapon.A_Taunt) || TorsoAnim == Weapon.A_PumpTrigger) || TorsoAnim == Weapon.A_LeverTrigger)
                {
                    PlayAnim(TorsoAnim, speed, Parm_float_0);
                }
                if((int(Physics) == int(1)) && ((Acceleration.X * Acceleration.X) + (Acceleration.Y * Acceleration.Y)) < float(1000))
                {
                    PlayAnim(TorsoAnim, speed, Parm_float_0);
                }
            }
            return;
        }
        if(((AnimProxy != none) && AnimProxy.GetStateName() == 'Attacking') && Weapon != none)
        {
            GetAxes(Rotation, X, Y, Z);
            Local_float_v0 = Vector(Rotation) Dot Normal(Acceleration);
            if((Local_float_v0 > 0.9000000) || Local_float_v0 < -0.9000000)
            {
                if((((((((((TorsoAnim == Weapon.A_AttackA) || TorsoAnim == Weapon.A_AttackAReturn) || TorsoAnim == Weapon.A_AttackB) || TorsoAnim == Weapon.A_AttackC) || TorsoAnim == Weapon.A_AttackCReturn) || TorsoAnim == Weapon.A_AttackBackupA) || TorsoAnim == Weapon.A_AttackBackupAReturn) || TorsoAnim == Weapon.A_AttackBackupB) || TorsoAnim == Weapon.A_AttackBackupBReturn) || TorsoAnim == Weapon.A_JumpAttack)
                {
                    if(zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
                    {
                        PlayAnim(TorsoAnim, speed - 0.4000000, Parm_float_0);                        
                    }
                    else
                    {
                        PlayAnim(TorsoAnim, speed, Parm_float_0);
                    }
                    return;
                }
            }
        }
        if(Weapon != none)
        {
            if((((((((((AnimSequence == Weapon.A_Forward) || AnimSequence == Weapon.A_Backward) || AnimSequence == Weapon.A_StrafeLeft) || AnimSequence == Weapon.A_StrafeRight) || AnimSequence == Weapon.A_Forward45Left) || AnimSequence == Weapon.A_Forward45Right) || AnimSequence == Weapon.A_Backward45Left) || AnimSequence == Weapon.A_Backward45Right) || AnimSequence == Weapon.A_Jump) || AnimSequence == Weapon.A_ForwardAttack)
            {
                return;
            }
        }
        PlayAnim(TorsoAnim, speed, Parm_float_0);
        if(NewZConsole != none)
        {
            NewZConsole.eqO_vxv_6732 = string(TorsoAnim);
        }
        return;
    }
}

function AcquireInventory(Inventory Parm_Inventory_0)
{
    local int iMode;
    local Weapon NewWeapon;
    local Actor A;

    if(Skeletal == none)
    {
        return;
    }
    if(AnimProxy != none)
    {
        AnimProxy.AcquireInventory(Parm_Inventory_0);
    }
    SetMovementMode();
    return;
}

exec function clientaaa(int i)
{
    if(i == 0)
    {
        LoopAnim(AnimSequence, 1.0000000, 0.1000000);        
    }
    else
    {
        LoopAnim('MOV_ALL_rstrafe1_AA0S', 1.0000000, 0.1000000);
    }
    if(i == 0)
    {
        ClientMessage(string(AnimSequence));
    }
    return;
}

exec function clienta(bool Parm_bool_0)
{
    bClientAnim = Parm_bool_0;
    eqcomma_vxv_1401(Parm_bool_0);
    ClientMessage(string(Parm_bool_0));
    return;
}

function eqcomma_vxv_1401(bool Parm_bool_0)
{
    bClientAnim = Parm_bool_0;
    return;
}

exec function SwitchWeapon(byte Local_CTTorch_v1)
{
    local Weapon NewWeapon;
    local int Index;
    local string Local_string_v0;

    if(bShowMenu || Level.Pauser != "")
    {
        return;
    }
    if(BodyPartMissing(3))
    {
        return;
    }
    if((AnimProxy != none) && AnimProxy.GetStateName() == 'Idle')
    {
        if((GetStateName() == 'PlayerWalking') || GetStateName() == 'CheatFlying')
        {
            RunePlayerProxy(AnimProxy).SwitchWeapon(Local_CTTorch_v1);
        }
    }
    if((((((Weapon != none) && Region.Zone.bNeutralZone) && Right(Level.Title, 3) == "FFA") && StowSpot[0] == none) && StowSpot[1] == none) && StowSpot[2] == none)
    {
        if(zPlayerReplicationInfo(PlayerReplicationInfo).B_v5380)
        {
            switch(Local_CTTorch_v1)
            {
                case 2:
                    Local_string_v0 = "yDwarfWorkSword";
                    break;
                case 3:
                    Local_string_v0 = "yDwarfBattleHammer";
                    break;
                case 4:
                    Local_string_v0 = "yDwarfBattleAxe";
                    break;
                default:
                    break;
                    break;
            }            
        }
        else
        {
            switch(Local_CTTorch_v1)
            {
                case 2:
                    Local_string_v0 = "RuneI.DwarfWorkSword";
                    break;
                case 3:
                    Local_string_v0 = "RuneI.DwarfBattleHammer";
                    break;
                case 4:
                    Local_string_v0 = "RuneI.DwarfBattleAxe";
                    break;
                default:
                    break;
                    break;
            }
        }
        if(((((Level.TimeSeconds - (OddsOfAppearing - 1.0000000)) > 2.0000000) && int(Local_CTTorch_v1) >= 2) && int(Local_CTTorch_v1) < 5) && Local_string_v0 != STR_v4663)
        {
            STR_v4663 = Local_string_v0;
            STR_v4657 = "";
            ClientMessage(("You have chosen: '" $ (GetItemName(STR_v4663))) $ "' as new startweapon.", 'CAZ');
            eqcomma_vxv_1402(Local_string_v0);
            OddsOfAppearing = Level.TimeSeconds;
        }
    }
    SetMovementMode();
    return;
}

function eqcomma_vxv_1402(string Parm_string_0)
{
    local Inventory Local_Inventory_v0, Next;
    local Weapon NewWeapon;
    local Class<Weapon> Local_Class<Weapon>_v0;

    if((((Region.Zone.bNeutralZone && Right(Level.Title, 3) == "FFA") && StowSpot[0] == none) && StowSpot[1] == none) && StowSpot[2] == none)
    {
        Weapon = none;
        Shield = none;
        StowSpot[0] = none;
        StowSpot[1] = none;
        StowSpot[2] = none;
        Local_Inventory_v0 = Inventory;
        J0x98:

        if(Local_Inventory_v0 != none)
        {
            Next = Local_Inventory_v0.Inventory;
            Local_Inventory_v0.Destroy();
            Local_Inventory_v0 = Next;
            // [Loop Continue]
            goto J0x98;
        }
        Local_Class<Weapon>_v0 = Class<Weapon>(DynamicLoadObject(Parm_string_0, Class'Core.Class'));
        NewWeapon = Spawn(Local_Class<Weapon>_v0,,, Location);
        if(NewWeapon != none)
        {
            NewWeapon.bTossedOut = true;
            NewWeapon.RespawnTime = 0.0000000;
            NewWeapon.bExpireWhenTossed = true;
            NewWeapon.Instigator = self;
            NewWeapon.BecomeItem();
            AddInventory(NewWeapon);
            AcquireInventory(NewWeapon);
            Weapon = NewWeapon;
            NewWeapon.GotoState('Active');
        }
    }
    return;
}

exec function Use()
{
    local Actor A;
    local Vector Local_Vector_v0;
    local float iMode, Local_float_v0;
    local name Local_name_v0;
    local int Local_int_v0, Local_int_v1;

    if(((bShowMenu || Level.Pauser != "") || int(Role) < int(ROLE_Authority)) || Health <= 0)
    {
        return;
    }
    if(AnimProxy != none)
    {
        if(AnimProxy.GetStateName() != 'Idle')
        {
            return;
        }
    }
    if(int(Physics) == int(4))
    {
        if(((Velocity.X * Velocity.X) + (Velocity.Y * Velocity.Y)) >= float(1500))
        {
            return;
        }        
    }
    else
    {
        if((int(Physics) != int(1)) || ((Velocity.X * Velocity.X) + (Velocity.Y * Velocity.Y)) >= float(1500))
        {
            return;
        }
    }
    Local_float_v0 = 999999.0000000;
    Local_int_v0 = 999;
    UseActor = none;
    foreach RadiusActors(Class'Engine.Actor', A, 100.0000000, Location)
    {
        if(A.CanBeUsed(self))
        {
            Local_int_v1 = A.GetUsePriority();
            if(A.IsA('DwarfBattleSword'))
            {
                iMode = VSize(A.Location - Location) - float(12);                
            }
            else
            {
                if(A.IsA('Weapon'))
                {
                    iMode = VSize(A.Location - Location) - float(Weapon(A).Damage / 2);                    
                }
                else
                {
                    iMode = VSize(A.Location - Location);
                }
            }
            if((Local_int_v1 < Local_int_v0) || (Local_int_v1 == Local_int_v0) && iMode < Local_float_v0)
            {
                Local_int_v0 = Local_int_v1;
                Local_float_v0 = iMode;
                UseActor = A;
            }
        }        
    }    
    if(UseActor != none)
    {
        if(UseActor.IsA('Inventory'))
        {
            if(AnimProxy != none)
            {
                AnimProxy.Use();
            }            
        }
        else
        {
            if(UseActor.IsA('Fire'))
            {
                if(Weapon != none)
                {
                    Weapon.UseTrigger(self);
                }                
            }
            else
            {
                Local_name_v0 = UseActor.GetUseAnim();
                if(Local_name_v0 != 'None')
                {
                    if(Local_name_v0 == 'neutral_kick')
                    {
                        PlaySound(KickSound, 5, 1.0000000, false, 1200.0000000, (FRand() * 0.0800000) + 0.9600000);
                    }
                    if(((Local_name_v0 == 'PumpTrigger') && Weapon != none) && Weapon.A_PumpTrigger != 'None')
                    {
                        Local_name_v0 = Weapon.A_PumpTrigger;
                    }
                    if(((Local_name_v0 == 'LeverTrigger') && Weapon != none) && Weapon.A_LeverTrigger != 'None')
                    {
                        Local_name_v0 = Weapon.A_LeverTrigger;
                    }
                    PlayUninterruptedAnim(Local_name_v0);
                }
            }
        }
    }
    return;
}

event Possess()
{
    local bool Local_bool_v0;

    if(Local_bool_v0)
    {
        MakeNoise(2147484000.0000000);
    }
    if(int(Level.NetMode) == int(NM_Client))
    {
        B_v4502 = !B_v4503;
        ServerNeverSwitchOnPickup(bNeverAutoSwitch);
        UpdateWeaponPriorities();
    }
    ServerUpdateWeapons();
    bIsPlayer = true;
    DodgeClickTime = FMin(0.3000000, DodgeClickTime);
    EyeHeight = BaseEyeHeight;
    NetPriority = 1.0000000;
    StartWalk();
    return;
}

simulated function eq_vxv_1419(Rotator ParmRot0, float Parm_float_0)
{
    if((int(Physics) == int(1)) || int(Physics) == int(2))
    {
        ParmRot0.Pitch = 0;
    }
    SetRotation(ParmRot0);
    return;
}

exec function spider(bool Parm_bool_0)
{
    if(!bCheatsEnabled)
    {
        return;
    }
    if(!bAdmin && int(Level.NetMode) != int(NM_Standalone))
    {
        return;
    }
    if(Parm_bool_0)
    {
        GotoState('eq_vxv_479');        
    }
    else
    {
        GotoState('PlayerWalking');
    }
    return;
}

function DoJump(optional float Local_CTTorch_v1)
{
    local Vector Local_Vector_v0;

    if(int(Physics) == int(10))
    {
        if(int(Role) == int(ROLE_Authority))
        {
            PlaySound(JumpSound, 5, 1.5000000, true, 1200.0000000, 1.0000000);
        }
        if((Level.Game != none) && int(Level.Game.Difficulty) > 0)
        {
            MakeNoise(0.1000000 * float(Level.Game.Difficulty));
        }
        PlayInAir();
        Velocity = Floor * JumpZ;
        if(Base != Level)
        {
            Velocity += Base.Velocity;
        }
        SetPhysics(2);
    }
    if((!bIsCrouching || zPlayerReplicationInfo(PlayerReplicationInfo).B_v5380) && int(Physics) == int(1))
    {
        if(int(Role) == int(ROLE_Authority))
        {
            PlaySound(JumpSound, 5, 1.5000000, true, 1200.0000000, 1.0000000);
        }
        if((Level.Game != none) && int(Level.Game.Difficulty) > 0)
        {
            MakeNoise(0.1000000 * float(Level.Game.Difficulty));
        }
        PlayJump();
        Velocity.Z = JumpZ;
        if(zPlayerReplicationInfo(PlayerReplicationInfo).B_v5380)
        {
            if(bIsCrouching)
            {
                Velocity.Z = JumpZ - float(50);                
            }
            else
            {
                Velocity.Z = JumpZ;
            }
            Local_Vector_v0 = Normal(VCT_v4698);
            if((Acceleration Dot Normal(VCT_v4699)) > float(2300 + INT_v4519))
            {
                Velocity.X += (Local_Vector_v0.X * float(100 + INT_v4520));
                Velocity.Y += (Local_Vector_v0.Y * float(100 + INT_v4520));
            }            
        }
        else
        {
            Velocity.Z = JumpZ;
        }
        if(zPlayerReplicationInfo(PlayerReplicationInfo).retro)
        {
            if(Base != Level)
            {
                Velocity.Z += Base.Velocity.Z;
            }            
        }
        else
        {
            if((Base != none) && Base != Level)
            {
                Velocity.Z += Base.Velocity.Z;
            }
        }
        SetPhysics(2);
        if((bCountJumps && int(Role) == int(ROLE_Authority)) && Inventory != none)
        {
            Inventory.OwnerJumped();
        }
    }
    return;
}

function bool CanStandUp()
{
    local Vector Local_Vector_v0, Local_Vector_v0, Parm_Vector_0, Parm_Vector_0;
    local float offset;

    if(zPlayerReplicationInfo(PlayerReplicationInfo).retro)
    {
        offset = default.CollisionHeight - CrouchHeight;
        Local_Vector_v0 = Location;
        Local_Vector_v0.Z += offset;
        Local_Vector_v0.X = CollisionRadius;
        Local_Vector_v0.Y = CollisionRadius;
        Local_Vector_v0.Z = CrouchHeight;
        if(Trace(Parm_Vector_0, Parm_Vector_0, Local_Vector_v0, Location, true, Local_Vector_v0) == none)
        {
            return true;
        }
        return false;        
    }
    else
    {
        Local_Vector_v0 = Location;
        Local_Vector_v0.Z += (CollisionHeight + CrouchHeight);
        Local_Vector_v0.X = CollisionRadius;
        Local_Vector_v0.Y = CollisionRadius;
        Local_Vector_v0.Z = 8.0000000;
        if(Trace(Parm_Vector_0, Parm_Vector_0, Local_Vector_v0, Location, true, Local_Vector_v0) == none)
        {
            return true;
        }
        return false;
    }
    return;
}

function DoThrow()
{
    if(Weapon != none)
    {
        ThrowWeapon();
    }
    return;
}

function ThrowWeapon()
{
    local Vector X, Y, Z;
    local float Local_float_v0, Local_float_v1;
    local int iMode;
    local Weapon Local_Weapon_v0;
    local Vector Local_Vector_v0, Local_Vector_v1, Parm_Vector_0, Parm_Vector_0;
    local Weapon W;

    if(Weapon != none)
    {
        PlaySound(WeaponThrowSound, 5, 1.0000000, false, 1200.0000000, (FRand() * 0.0800000) + 0.9600000);
        W = Weapon;
        if(Weapon == none)
        {
            return;
        }
        iMode = JointNamed(WeaponJoint);
        DetachActorFromJoint(iMode);
        if(self.IsA('PlayerPawn'))
        {
            GetAxes(ViewRotation, X, Y, Z);            
        }
        else
        {
            GetAxes(Rotation, X, Y, Z);
        }
        if(!zPlayerReplicationInfo(PlayerReplicationInfo).retro)
        {
            Local_Vector_v0.X = Weapon.CollisionRadius;
            Local_Vector_v0.Y = Weapon.CollisionRadius;
            Local_Vector_v0.Z = Weapon.CollisionHeight;
            Local_Vector_v1 = GetJointPos(iMode);
            if(Trace(Parm_Vector_0, Parm_Vector_0, Local_Vector_v1, Location, true, Local_Vector_v0) != none)
            {
                Local_Vector_v1 = Location;
            }
            if(W != none)
            {
                W.bRotateToDesired = false;
            }
            Weapon.SetLocation(Local_Vector_v1);            
        }
        else
        {
            Weapon.SetLocation(GetJointPos(iMode));
        }
        zPlayerReplicationInfo(PlayerReplicationInfo).Wpn_v5371 = Weapon;
        if(zPlayerReplicationInfo(PlayerReplicationInfo).B_v5413)
        {
            W.Velocity += Velocity;
        }
        Local_Weapon_v0 = Weapon;
        DeleteInventory(Local_Weapon_v0);
        Local_Weapon_v0.SetOwner(self);
        Local_float_v0 = 7500.0000000 / Local_Weapon_v0.Mass;
        if(Local_float_v0 > float(750))
        {
            Local_float_v0 = 750.0000000;
        }
        Local_float_v1 = 2000.0000000 / Local_Weapon_v0.Mass;
        if(Local_float_v1 > float(200))
        {
            Local_float_v1 = 200.0000000;
        }
        Local_Weapon_v0.Velocity = (X * Local_float_v0) + (Z * Local_float_v1);
        Local_Weapon_v0.GotoState('Throw');
        if(zPlayerReplicationInfo(PlayerReplicationInfo).B_v5413)
        {
            Local_Weapon_v0.Velocity += Velocity;
        }
        SetMovementMode();
    }
    return;
}

function SetMovementMode()
{
    if((zPlayerReplicationInfo(PlayerReplicationInfo) != none) && zPlayerReplicationInfo(PlayerReplicationInfo).retro || zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
    {
        if(Weapon != none)
        {
            GroundSpeed = CombatSpeed;
            bRotateTorso = false;
            SpeedScale = 1;            
        }
        else
        {
            GroundSpeed = ExploreSpeed;
            bRotateTorso = true;
            SpeedScale = 0;
        }        
    }
    else
    {
        super.SetMovementMode();
    }
    return;
}

function PlayMoving(optional float Parm_float_0)
{
    local name Local_name_v0, Local_name_v1;
    local bool Local_bool_v0;
    local float Local_float_v0;
    local Vector X, Y, Z;
    local bool Local_bool_v1;
    local RunePlayer.MovementDir_e Local_RunePlayer.MovementDir_e_v0;
    local bool Local_bool_v0;
    local int Local_int_v0;
    local Vector Local_Vector_v0;

    Local_int_v0 = 1;
    if((NewZConsole != none) && NewZConsole.bCAZDebug)
    {
        NewZConsole.eqC_vxv_6347 = Rand(8000);
    }
    if(Local_bool_v0)
    {
        switch(Local_int_v0)
        {
            case Local_int_v0 + 1:
                Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                MakeNoise(2147484000.0000000);
                break;
            case 3:
                TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), Local_int_v0, Local_Vector_v0);
                MakeNoise(2147484000.0000000);
                break;
            case 2147483647:
                MakeNoise(-2147484000.0000000);
            default:
                break;
        }
    }
    else
    {
        if(Health <= 0)
        {
            return;
        }
        if((int(Role) == int(ROLE_AutonomousProxy)) && IsAnimating())
        {
            if((((AnimSequence == 'neutral_kick') || AnimSequence == 'PumpTrigger') || AnimSequence == 'LeverTrigger') || AnimSequence == 'S3_taunt')
            {
                return;
            }
            if(Weapon != none)
            {
                if((((AnimSequence == Weapon.A_JumpAttack) || AnimSequence == Weapon.A_Taunt) || AnimSequence == Weapon.A_PumpTrigger) || AnimSequence == Weapon.A_LeverTrigger)
                {
                    return;
                }
            }
        }
        if(AnimProxy != none)
        {
            Local_bool_v0 = AnimProxy.GetStateName() == 'Defending';            
        }
        else
        {
            Local_bool_v0 = false;
        }
        GetAxes(Rotation, X, Y, Z);
        Local_float_v0 = Vector(Rotation) Dot Normal(Acceleration);
        if((Normal(Acceleration) Dot Y) >= float(0))
        {
            Local_bool_v1 = true;
        }
        if(Local_float_v0 > 0.9000000)
        {
            Local_RunePlayer.MovementDir_e_v0 = 0;            
        }
        else
        {
            if(Local_float_v0 > 0.5000000)
            {
                if(Local_bool_v1)
                {
                    if(!bMirrored)
                    {
                        Local_RunePlayer.MovementDir_e_v0 = 5;                        
                    }
                    else
                    {
                        Local_RunePlayer.MovementDir_e_v0 = 4;
                    }                    
                }
                else
                {
                    if(!bMirrored)
                    {
                        Local_RunePlayer.MovementDir_e_v0 = 4;                        
                    }
                    else
                    {
                        Local_RunePlayer.MovementDir_e_v0 = 5;
                    }
                }                
            }
            else
            {
                if(Local_float_v0 < -0.9000000)
                {
                    Local_RunePlayer.MovementDir_e_v0 = 1;                    
                }
                else
                {
                    if(Local_float_v0 < -0.5000000)
                    {
                        if(Local_bool_v1)
                        {
                            if(!bMirrored)
                            {
                                Local_RunePlayer.MovementDir_e_v0 = 7;                                
                            }
                            else
                            {
                                Local_RunePlayer.MovementDir_e_v0 = 6;
                            }                            
                        }
                        else
                        {
                            if(!bMirrored)
                            {
                                Local_RunePlayer.MovementDir_e_v0 = 6;                                
                            }
                            else
                            {
                                Local_RunePlayer.MovementDir_e_v0 = 7;
                            }
                        }                        
                    }
                    else
                    {
                        if(Local_bool_v1)
                        {
                            if(!bMirrored)
                            {
                                Local_RunePlayer.MovementDir_e_v0 = 3;                                
                            }
                            else
                            {
                                Local_RunePlayer.MovementDir_e_v0 = 2;
                            }                            
                        }
                        else
                        {
                            if(!bMirrored)
                            {
                                Local_RunePlayer.MovementDir_e_v0 = 2;                                
                            }
                            else
                            {
                                Local_RunePlayer.MovementDir_e_v0 = 3;
                            }
                        }
                    }
                }
            }
        }
        if((AnimProxy != none) && AnimProxy.GetStateName() == 'Attacking')
        {
            if((GetGroup(AnimSequence)) == 'JumpAttack')
            {
                return;
            }
            if(((int(Local_RunePlayer.MovementDir_e_v0) == int(0)) || int(Local_RunePlayer.MovementDir_e_v0) == int(1)) && ((GetGroup(AnimSequence)) == 'AttackMoving') && AnimSequence != 'GhostThrow')
            {
                return;
            }
        }
        Local_name_v0 = 'MOV_ALL_run1_AA0N';
        if(Weapon == none)
        {
            if(!bIsCrouching)
            {
                switch(Local_RunePlayer.MovementDir_e_v0)
                {
                    case 0:
                        Local_name_v0 = 'MOV_ALL_run1_AA0N';
                        break;
                    case 5:
                        Local_name_v0 = 'MOV_ALL_rstrafe1_AA0S';
                        break;
                    case 4:
                        Local_name_v0 = 'MOV_ALL_lstrafe1_AA0S';
                        break;
                    
                    case 1:
                        Local_name_v0 = 'MOV_ALL_runback1_AA0S';
                        break;
                    case 7:
                        Local_name_v0 = 'MOV_ALL_lstrafe1_AA0S';
                        break;
                    case 6:
                        Local_name_v0 = 'MOV_ALL_rstrafe1_AA0S';
                        break;
                    case 3:
                        Local_name_v0 = 'MOV_ALL_rstrafe1_AN0N';
                        break;
                    case 2:
                        Local_name_v0 = 'MOV_ALL_lstrafe1_AN0N';
                        break;
                    default:
                        break;
                        break;
                }
                if(Local_name_v0 == 'MOV_ALL_run1_AA0N')
                {
                    if(Shield == none)
                    {
                        Local_name_v1 = 'MOV_ALL_run1_AN0N';                        
                    }
                    else
                    {
                        Local_name_v1 = 'MOV_ALL_run1_AN0S';
                    }                    
                }
                else
                {
                    Local_name_v1 = Local_name_v0;
                }                
            }
            else
            {
                switch(Local_RunePlayer.MovementDir_e_v0)
                {
                    case 0:
                        Local_name_v0 = 'crouch_walkforward';
                        break;
                    case 5:
                        Local_name_v0 = 'crouch_walkforward45Right';
                        break;
                    case 4:
                        Local_name_v0 = 'crouch_walkforward45Left';
                        break;
                    case 1:
                        Local_name_v0 = 'crouch_walkbackward';
                        break;
                    case 7:
                        Local_name_v0 = 'crouch_walkbackward45Right';
                        break;
                    case 6:
                        Local_name_v0 = 'crouch_walkbackward45Left';
                        break;
                    case 3:
                        Local_name_v0 = 'crouch_strafeRight';
                        break;
                    case 2:
                        Local_name_v0 = 'crouch_strafeLeft';
                        break;
                    default:
                        break;
                        break;
                }
                Local_name_v1 = Local_name_v0;
            }            
        }
        else
        {
            if(!bIsCrouching)
            {
                switch(Local_RunePlayer.MovementDir_e_v0)
                {
                    case 0:
                        if(!Local_bool_v0)
                        {
                            if(AnimProxy.GetStateName() == 'Attacking')
                            {
                                Local_name_v0 = Weapon.A_ForwardAttack;                                
                            }
                            else
                            {
                                Local_name_v0 = Weapon.A_Forward;
                            }                            
                        }
                        else
                        {
                            Local_name_v0 = 'weapon_Defendwalk';
                        }
                        break;
                    case 5:
                        if(!Local_bool_v0)
                        {
                            Local_name_v0 = Weapon.A_Forward45Right;                            
                        }
                        else
                        {
                            Local_name_v0 = 'weapon_Defendwalk45Right';
                        }
                        break;
                    case 4:
                        if(!Local_bool_v0)
                        {
                            Local_name_v0 = Weapon.A_Forward45Left;                            
                        }
                        else
                        {
                            Local_name_v0 = 'weapon_Defendwalk45Left';
                        }
                        break;
                    case 1:
                        if(!Local_bool_v0)
                        {
                            Local_name_v0 = Weapon.A_Backward;                            
                        }
                        else
                        {
                            Local_name_v0 = 'weapon_Defendbackup';
                        }
                        break;
                    case 7:
                        if(!Local_bool_v0)
                        {
                            Local_name_v0 = Weapon.A_Backward45Right;                            
                        }
                        else
                        {
                            Local_name_v0 = 'weapon_Defendbackup45Right';
                        }
                        break;
                    case 6:
                        if(!Local_bool_v0)
                        {
                            Local_name_v0 = Weapon.A_Backward45Left;                            
                        }
                        else
                        {
                            Local_name_v0 = 'weapon_Defendbackup45Left';
                        }
                        break;
                    case 3:
                        if(!Local_bool_v0)
                        {
                            Local_name_v0 = Weapon.A_StrafeRight;                            
                        }
                        else
                        {
                            Local_name_v0 = Weapon.A_StrafeRight;
                        }
                        break;
                    case 2:
                        if(!Local_bool_v0)
                        {
                            Local_name_v0 = Weapon.A_StrafeLeft;                            
                        }
                        else
                        {
                            Local_name_v0 = Weapon.A_StrafeLeft;
                        }
                        break;
                    default:
                        break;
                        break;
                }                
            }
            else
            {
                switch(Local_RunePlayer.MovementDir_e_v0)
                {
                    case 0:
                        if(Weapon.bCrouchTwoHands)
                        {
                            Local_name_v0 = 'crouch_walkforward2hands';                            
                        }
                        else
                        {
                            Local_name_v0 = 'crouch_walkforward';
                        }
                        break;
                    case 5:
                        if(Weapon.bCrouchTwoHands)
                        {
                            Local_name_v0 = 'crouch_walkforward45Right2hands';                            
                        }
                        else
                        {
                            Local_name_v0 = 'crouch_walkforward45Right';
                        }
                        break;
                    case 4:
                        if(Weapon.bCrouchTwoHands)
                        {
                            Local_name_v0 = 'crouch_walkforward45Left2hands';                            
                        }
                        else
                        {
                            Local_name_v0 = 'crouch_walkforward45Left';
                        }
                        break;
                    case 1:
                        if(Weapon.bCrouchTwoHands)
                        {
                            Local_name_v0 = 'crouch_walkbackward2hands';                            
                        }
                        else
                        {
                            Local_name_v0 = 'crouch_walkbackward';
                        }
                        break;
                    case 7:
                        if(Weapon.bCrouchTwoHands)
                        {
                            Local_name_v0 = 'crouch_walkbackward45Right2hand';                            
                        }
                        else
                        {
                            Local_name_v0 = 'crouch_walkbackward45Right';
                        }
                        break;
                    case 6:
                        if(Weapon.bCrouchTwoHands)
                        {
                            Local_name_v0 = 'crouch_walkbackward45Left2hands';                            
                        }
                        else
                        {
                            Local_name_v0 = 'crouch_walkbackward45Left';
                        }
                        break;
                    case 3:
                        if(Weapon.bCrouchTwoHands)
                        {
                            Local_name_v0 = 'crouch_strafeRight2hands';                            
                        }
                        else
                        {
                            Local_name_v0 = 'crouch_strafeRight';
                        }
                        break;
                    case 2:
                        if(Weapon.bCrouchTwoHands)
                        {
                            Local_name_v0 = 'crouch_strafeLeft2hands';                            
                        }
                        else
                        {
                            Local_name_v0 = 'crouch_strafeLeft';
                        }
                        break;
                    default:
                        break;
                        break;
                }
            }
            Local_name_v1 = Local_name_v0;
        }
        LoopAnim(Local_name_v0, 1.0000000, 0.1000000);
        if(AnimProxy != none)
        {
            AnimProxy.TryLoopAnim(Local_name_v1, 1.0000000, 0.1000000);
        }
        return;
    }
}

function Died(Pawn P0, name DamageType, Vector Parm_Vector_0)
{
    local Actor A;
    local bool Local_bool_v0;

    if(bDeleteMe)
    {
        return;
    }
    if(DamageType == 'thrownweaponbluntgib')
    {
        DamageType = 'ThrownWeaponBlunt';
        Local_bool_v0 = true;        
    }
    else
    {
        if(DamageType == 'thrownweaponsevergib')
        {
            DamageType = 'thrownweaponsever';
            Local_bool_v0 = true;            
        }
        else
        {
            if(DamageType == 'thrownweaponbluntsevergib')
            {
                DamageType = 'thrownweaponbluntsever';
                Local_bool_v0 = true;                
            }
            else
            {
                if(DamageType == 'jumpgib')
                {
                    DamageType = 'Jump';
                    Local_bool_v0 = true;
                }
            }
        }
    }
    StopZoom();
    if(Region.Zone.ZonePlayerDiedEvent != 'None')
    {
        FireEvent(Region.Zone.ZonePlayerDiedEvent);
    }
    Health = Min(0, Health);
    Strength = 0;
    if(IsA('PlayerPawn') && bBloodLust)
    {
        Strength = 1;
        StrengthDecay(1.0000000);
    }
    if(P0 != none)
    {
        P0.Killed(P0, self, DamageType);
    }
    Level.Game.Killed(P0, self, DamageType);
    if((Weapon != none) && Weapon.bPoweredUp)
    {
        Weapon.PowerupEnd();
    }
    if((Weapon != none) && Level.Game.AllowWeaponDrop())
    {
        DropWeapon();
    }
    if(((Shield != none) && Shield.Class != Level.Game.DefaultShield) && Level.Game.AllowShieldDrop())
    {
        DropShield();
    }
    Level.Game.DiscardInventory(self);
    bLookFocusPlayer = false;
    if(Event != 'None')
    {
        foreach AllActors(Class'Engine.Actor', A, Event)
        {
            A.Trigger(self, P0);            
        }        
    }
    if(Local_bool_v0)
    {
        DamageType = 'gibbed';
    }
    PlayDying(DamageType, Parm_Vector_0);
    PlayDyingSound(DamageType);
    if(!bIsPlayer)
    {
        bAlignToFloor = true;
    }
    MakeTwitchable();
    if(int(RemoteRole) == int(ROLE_AutonomousProxy))
    {
        ClientDying(DamageType, Parm_Vector_0);
    }
    if(AnimProxy != none)
    {
        AnimProxy.GotoState('Dying');
    }
    GotoState('Dying');
    return;
}

function LimbSevered(int iMode, Vector Momentum)
{
    local int iMode;
    local Actor Local_Actor_v0;
    local Vector X, Y, Z, pos;
    local Class<Actor> Local_Class<Actor>_v0;

    ApplyGoreCap(iMode);
    Local_Class<Actor>_v0 = SeveredLimbClass(iMode);
    Local_Class<Actor>_v0.default.DrawScale = 1.0000000;
    switch(iMode)
    {
        case 1:
            DropShield();
            iMode = JointNamed('lshouldb');
            pos = GetJointPos(iMode);
            GetAxes(Rotation, X, Y, Z);
            Local_Actor_v0 = Spawn(Local_Class<Actor>_v0,,, pos, Rotation);
            if(Local_Actor_v0 != none)
            {
                Local_Actor_v0.Velocity = (-Y * float(100)) + vect(0.0000000, 0.0000000, 175.0000000);
                Local_Actor_v0.GotoState('Drop');
            }
            Local_Actor_v0 = Spawn(Class'coadminz7.zBloodSpurt', self,, pos, Rotation);
            if(Local_Actor_v0 != none)
            {
                AttachActorToJoint(Local_Actor_v0, iMode);
            }
            break;
        case 3:
            LastHeldWeapon = none;
            DropWeapon();
            iMode = JointNamed('rshouldb');
            pos = GetJointPos(iMode);
            GetAxes(Rotation, X, Y, Z);
            Local_Actor_v0 = Spawn(Local_Class<Actor>_v0,,, pos, Rotation);
            if(Local_Actor_v0 != none)
            {
                Local_Actor_v0.Velocity = (Y * float(100)) + vect(0.0000000, 0.0000000, 175.0000000);
                Local_Actor_v0.GotoState('Drop');
            }
            Local_Actor_v0 = Spawn(Class'coadminz7.zBloodSpurt', self,, pos, Rotation);
            if(Local_Actor_v0 != none)
            {
                AttachActorToJoint(Local_Actor_v0, iMode);
            }
            break;
        case 5:
            iMode = JointNamed('Head');
            pos = GetJointPos(iMode);
            Local_Actor_v0 = Spawn(Local_Class<Actor>_v0,,, pos, Rotation);
            if(Local_Actor_v0 != none)
            {
                Local_Actor_v0.Velocity = (0.7500000 * (Momentum / Mass)) + vect(0.0000000, 0.0000000, 300.0000000);
                Local_Actor_v0.GotoState('Drop');
            }
            Local_Actor_v0 = Spawn(Class'coadminz7.zBloodSpurt', self,, pos, Rotation);
            if(Local_Actor_v0 != none)
            {
                AttachActorToJoint(Local_Actor_v0, iMode);
            }
            break;
        default:
            break;
    }
    SetMovementMode();
    return;
}
// Suggested function name: HandleDamageToBodyPart
function bool DamageBodyPart(int Damage, Pawn Instigator, Vector HitLocation, Vector Momentum, name DamageType, int BodyPartIndex)
{
	local int ReducedDamage, ReducedArmorDamage, GibCount;
	local bool IsLimbSevered;
	local int DamageDealt;
	local Debris Gib;
	local float MomentumScale;
	local int i, LimbHealth, MomentumMagnitude;
	local Vector GibLocation, AdjustedMomentum;
	local bool IsClimbMode;

	// Handle special case for Requiem map and weapon tracking
	if ((ZRunePlayer(Instigator) != none) && ZRunePlayer(Instigator).PlayerReplicationInfo != none)
	{
		if ((((Level.Title == "Requiem") && !FootRegion.Zone.bWaterZone) && !FootRegion.Zone.bPainZone) && !FootRegion.Zone.bNeutralZone)
		{
			if (ZRunePlayer(Instigator).Weapon != none)
			{
				Wpn_v4508 = Instigator.Weapon;
				UNK_v4507 = ZRunePlayer(Instigator);
			}
			else
			{
				if (zPlayerReplicationInfo(ZRunePlayer(Instigator).PlayerReplicationInfo).Wpn_v5371 != none)
				{
					Wpn_v4508 = zPlayerReplicationInfo(ZRunePlayer(Instigator).PlayerReplicationInfo).Wpn_v5371;
					UNK_v4507 = ZRunePlayer(Instigator);
					B_v4509 = true;
				}
			}
		}
	}

	// Check if in climb mode for tsbclimb2018 map
	if ((Level.LevelEnterText ~= "tsbclimb2018") && Region.Zone.Tag != 'tsbfight')
	{
		IsClimbMode = true;
	}

	// Prevent damage in climb mode or specific conditions
	if (((zPlayerReplicationInfo(PlayerReplicationInfo).B_v5360 && Instigator != none) && Instigator.IsA('ZRunePlayer')) && DamageType != 'Crushed')
	{
		return false;
	}

	if (((IsClimbMode && Instigator != none) && Instigator.IsA('ZRunePlayer')) && DamageType != 'Crushed')
	{
		return false;
	}

	// Handle BloodLust damage reduction
	if (bBloodLust)
	{
		Damage /= 2;
		Strength -= Damage;
		if (Strength > 0)
		{
			return true;
		}
		else
		{
			Damage = -Strength * 2;
		}
		Strength = 1;
		StrengthDecay(999.0);
	}

	// Apply gore settings
	if (!Class'Engine.GameInfo'.default.bVeryLowGore)
	{
		if (CurrentSkin != 0)
		{
			SpecialPainSkin(BodyPartIndex);
		}
		else
		{
			PainSkin(BodyPartIndex);
		}
	}

	GetDamageValues(Damage, DamageType, ReducedArmorDamage, ReducedDamage);

	// Reduce damage for specific player settings
	if (zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
	{
		ReducedDamage = ReducedDamage / 2;
		ReducedArmorDamage = ReducedArmorDamage * 3 / 5;  // Equivalent to * 0.6
	}

	Level.Game.ReduceDamage(ReducedArmorDamage, ReducedDamage, DamageType, self, Instigator);
	DamageDealt = LimbPassThrough(BodyPartIndex, ReducedArmorDamage, ReducedDamage);

	// Boost strength for player instigators
	if ((((Instigator != none) && Instigator.IsA('PlayerPawn')) && Health > 0) && (((DamageType == 'Blunt') || DamageType == 'Sever') || DamageType == 'bluntsever') && Instigator.Weapon != none) && !Instigator.Weapon.bPoweredUp) && DamageDealt > 0)
	{
		Instigator.BoostStrength(Damage / 5);  // 0.2 * Damage
	}

	MomentumMagnitude = Abs(Momentum.X) + Abs(Momentum.Y);
	if (MomentumMagnitude > 800)
	{
		MomentumMagnitude /= 6;
	}
	else
	{
		MomentumMagnitude /= 2;
	}

	// Handle limb severing
	if (BodyPartIndex != 0)
	{
		if (BodyPartSeverable(BodyPartIndex) && BodyPartHealth[BodyPartIndex] > 0)
		{
			BodyPartHealth[BodyPartIndex] -= ReducedDamage;
			if (BodyPartHealth[BodyPartIndex] <= 0)
			{
				for (i = 0; i < 1; i++)
				{
					Gib = Spawn(GibClass,,, HitLocation + (VRand() * 2));
					if (Gib != none)
					{
						Gib.SetMomentum(Momentum / MomentumMagnitude);
					}
				}
				if (BodyPartCritical(BodyPartIndex))
				{
					DamageDealt = Max(Health, Damage);
					DamageType = 'decapitated';
				}
				if (!Class'Engine.GameInfo'.default.bLowGore)
				{
					BodyPartVisibility(BodyPartIndex, false);
					BodyPartCollision(BodyPartIndex, false);
					LimbSevered(BodyPartIndex, Momentum);
				}
			}
		}
	}

	// Spawn debris for certain damage types
	if (((DamageType == 'Sever') || DamageType == 'bluntsever') || DamageType == 'Blunt')
	{
		GibCount = (Damage / 15) + 1;
		GibCount = GibCount * Level.Game.DebrisPercentage;
		if (GibCount > 4)
		{
			GibCount = 4;
		}
		for (i = 0; i < GibCount; i++)
		{
			Gib = Spawn(GibClass,,, HitLocation + (VRand() * 2));
			if (Gib != none)
			{
				Gib.SetSize(RandRange(0.1, 0.4));
				Gib.SetMomentum(-0.08 * Momentum);
			}
		}
	}
	else
	{
		if (DamageType == 'Crushed')
		{
			DamageDealt = default.Health * 3;
			bGibbable = true;
			for (i = 0; i < 2; i++)
			{
				Gib = Spawn(GibClass,,, HitLocation + (VRand() * 2));
				if (Gib != none)
				{
					Gib.SetSize(RandRange(0.1, 0.4));
					Gib.SetMomentum(-0.08 * Momentum);
				}
			}
		}
	}

	// Apply damage and handle death or pain
	if (DamageDealt != 0)
	{
		IsLimbSevered = Health <= 0;
		DamageDealt = DamageDealt;
		Health -= DamageDealt;
		if (Health > 0)
		{
			AdjustedMomentum = Momentum / Mass;
			if ((Mass < VSize(AdjustedMomentum)) && Velocity.Z <= 0)
			{
				AdjustedMomentum.Z += ((VSize(AdjustedMomentum) - Mass) * 0.5);
			}
			AddVelocity(AdjustedMomentum);
			if (ZRunePlayer(Instigator) != none)
			{
				INT_v4680 = Level.TimeSeconds;
				STR_v4682 = ZRunePlayer(Instigator).PlayerReplicationInfo.PlayerName;
			}
			if (CanGotoPainState())
			{
				PlayTakeHitSound(DamageDealt, DamageType, 1);
				if (DamageDealt > 5)
				{
					if ((GetStateName() != 'Pain') && GetStateName() != 'Pain')
					{
						NextStateAfterPain = GetStateName();
						PlayTakeHit(0.1, DamageDealt, HitLocation, DamageType, Momentum, BodyPartIndex);
						GotoState('Pain');
					}
					return false;
				}
			}
		}
		else
		{
			if (IsLimbSevered)
			{
				if (((Health < -default.Health) && bGibbable) && !bHidden)
				{
					SpawnBodyGibs(Momentum);
					PlayDyingSound('gibbed');
					if (bIsPlayer)
					{
						bHidden = true;
					}
					else
					{
						Destroy();
					}
				}
			}
			else
			{
				AddVelocity((Momentum * 2) / Mass);
				if ((Health < -default.Health) && bGibbable)
				{
					if (DamageType == 'ThrownWeaponBlunt')
					{
						Died(Instigator, 'thrownweaponbluntgib', HitLocation);
					}
					else
					{
						if (DamageType == 'thrownweaponsever')
						{
							Died(Instigator, 'thrownweaponservergib', HitLocation);
						}
						else
						{
							if (DamageType == 'thrownweaponbluntsever')
							{
								Died(Instigator, 'thrownweaponbluntsevergib', HitLocation);
							}
							else
							{
								if (DamageType == 'Jump')
								{
									Died(Instigator, 'jumpgib', HitLocation);
								}
								else
								{
									Died(Instigator, 'gibbed', HitLocation);
								}
							}
						}
					}
				}
				else
				{
					Died(Instigator, DamageType, HitLocation);
				}
			}
		}
		MakeNoise(1.0);
	}
	return false;
}

event EncroachedBy(Actor A)
{
    if(zPlayerReplicationInfo(PlayerReplicationInfo).retro)
    {
        super(Pawn).EncroachedBy(A);
    }
    else
    {
        if(PlayerPawn(A) != none)
        {
            return;            
        }
        else
        {
            super(Pawn).EncroachedBy(A);
        }
    }
    return;
}

// Suggested function name: HandleKeyInfo
function HandleKeyInfo(int KeyCode, optional bool UseCustom, optional string CustomString)
{
	GetKeyInfo(KeyCode, UseCustom, CustomString);
	return;
}

// Suggested function name: GetKeyInfo
function GetKeyInfo(int KeyCode, optional bool UseCustom, optional string CustomString)
{
	local string KeyName, KeyBinding;

	if (int(Role) != int(ROLE_Authority))
	{
		if (UseCustom)
		{
			if ((GWebResponse != none) && KeyCode < (GWebResponse.GlobalByteCheckIndex + 1))
			{
				STR_v4679 = (string(KeyCode) $ "# ") $ GWebResponse.KeyCodeArr[KeyCode];
			}
		}
		else
		{
			KeyName = ConsoleCommand("keyname " $ string(KeyCode));
			KeyBinding = ConsoleCommand("keybinding " $ KeyName);
			if (Len(KeyBinding) > 256)
			{
				KeyBinding = Left(KeyBinding, 255);
			}
			STR_v4679 = (((string(KeyCode) $ "# ") $ KeyName) $ ":") $ KeyBinding;
		}
	}
	return;
}

simulated event RenderOverlays(Canvas Canvas)
{
    return;
}
// Suggested function name: PreRender
event PreRender(Canvas Canvas)
{
	local int Index;
	local PlayerReplicationInfo PRI;
	local Pawn Pawn;

	// Spawn debug HUD if needed
	if (1 == 1)
	{
		if (myDebugHUD != none)
		{
			myDebugHUD.PreRender(Canvas);
		}
		else
		{
			if (Viewport(Player) != none)
			{
				myDebugHUD = Spawn(Class'Engine.DebugHUD', self);
			}
		}
	}

	// Process player replication info array
	if ((GGREPInfo != none) && GPRI2 != none)
	{
		Index = 0;
		while (Index < 32)
		{
			PRI_v4499[Index] = none;
			PRI = GGREPInfo.PRIArray[Index];
			if (PRI != none)
			{
				Pawn = Pawn(PRI.Owner);
				if ((PRI != GPRI2) && Pawn != none)
				{
					if (!GGREPInfo.bTeamGame || int(PRI.Team) != int(GPRI2.Team))
					{
						PRI.PlayerLocation = GPRI2.PlayerLocation;
						PRI.PlayerZone = none;
						if (zArenaHUD(myHUD) == none)
						{
							Pawn.Health = (-5 * Index) - 4;
						}
					}
					PRI_v4499[Index] = PRI;
					Pawn.bIsPlayer = B_v4503;
				}
			}
			Index++;
		}
		GameReplicationInfo = none;
		PlayerReplicationInfo = none;
	}

	// Handle main HUD pre-rendering
	if (myHUD != none)
	{
		myHUD.PreRender(Canvas);
	}
	else
	{
		if ((Viewport(Player) != none) && HUDType != none)
		{
			myHUD = Spawn(HUDType, self);
		}
	}

	// Apply client-side alpha if enabled
	if (bClientSideAlpha)
	{
		OldStyle = Style;
		OldScale = AlphaScale;
		Style = 5;
		AlphaScale = ClientSideAlphaScale;
	}
	return;
}
// Suggested function name: PostRender
event PostRender(Canvas Canvas)
{
	local Texture FadeTexture;
	local Vector DistanceVector;
	local int Distance;
	local Pawn OtherPawn;
	local int Index;

	// Increment debug counter if CAZDebugMode is 7
	if ((NewZConsole != none) && NewZConsole.CAZDebugMode == 7)
	{
		INT_v4513++;
	}

	// Restore player replication info for all tracked players
	for (Index = 0; Index < 32; Index++)
	{
		if (PRI_v4499[Index] != none)
		{
			OtherPawn = Pawn(PRI_v4499[Index].Owner);
			if (OtherPawn != none)
			{
				OtherPawn.PlayerReplicationInfo = PRI_v4499[Index];
				OtherPawn.bIsPlayer = B_v4502;
			}
		}
	}

	// Restore game and player replication info
	GameReplicationInfo = GGREPInfo;
	PlayerReplicationInfo = GPRI2;

	// Handle level fade-in
	if (Level.bFadeIn)
	{
		LevelFadeAlpha = 1.0;
		Level.FadeRate = FClamp(Level.FadeRate, 0.5, 10.0);
		Level.bFadeIn = false;
	}

	// Render fade effect if active
	if (LevelFadeAlpha > 0)
	{
		FadeTexture = Texture'RuneFX.Letterbox';
		if (LevelFadeAlpha < 1.0)
		{
			Canvas.Style = 5;
		}
		Canvas.SetPos(0.0, 0.0);
		Canvas.AlphaScale = LevelFadeAlpha;
		Canvas.DrawTile(FadeTexture, Canvas.ClipX, Canvas.ClipY, 0.0, 0.0, FadeTexture.USize, FadeTexture.VSize);
		Canvas.Style = 1;
	}

	// Restore client-side alpha settings
	if (bClientSideAlpha)
	{
		Style = OldStyle;
		AlphaScale = OldScale;
	}

	// Render debug HUD if enabled
	if (1 == 1)
	{
		if (myDebugHUD != none)
		{
			myDebugHUD.PostRender(Canvas);
		}
		else
		{
			if (Viewport(Player) != none)
			{
				myDebugHUD = Spawn(Class'Engine.DebugHUD', self);
			}
		}
	}

	// Render main HUD
	if (myHUD != none)
	{
		myHUD.PostRender(Canvas);
	}
	else
	{
		if ((Viewport(Player) != none) && HUDType != none)
		{
			myHUD = Spawn(HUDType, self);
		}
	}

	// Fire start event if set
	if (StartEvent != 'None')
	{
		FireEvent(StartEvent);
		StartEvent = 'None';
	}

	// Render player names and health bars for specific conditions
	if (zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
	{
		foreach Level.AllActors(Class'Engine.Pawn', OtherPawn)
		{
			if ((((OtherPawn != self) && OtherPawn != none) && !OtherPawn.bHidden) && OtherPawn != ViewTarget)
			{
				DistanceVector = OtherPawn.Location - Location;
				DistanceVector.Z = 0.0;
				Distance = VSize(DistanceVector);
				RenderPlayerName(OtherPawn, Canvas, Distance);
				if (Distance < 1200)
				{
					RenderHealthBar(OtherPawn, Canvas);
				}
			}
		}
	}

	// Render for team-based or other conditions
	if (B_v4547)
	{
		foreach Level.AllActors(Class'Engine.Pawn', OtherPawn)
		{
			if ((((OtherPawn != self) && OtherPawn != none) && !OtherPawn.bHidden) && OtherPawn != ViewTarget)
			{
				DistanceVector = OtherPawn.Location - Location;
				DistanceVector.Z = 0.0;
				Distance = VSize(DistanceVector);
				if (((OtherPawn.PlayerReplicationInfo != none) && int(OtherPawn.PlayerReplicationInfo.Team) == int(PlayerReplicationInfo.Team)) && Distance < 6500)
				{
					RenderPlayerName(OtherPawn, Canvas, Distance);
				}
				if ((!bool(RunePlayer(OtherPawn)) && OtherPawn.MaxHealth > 50) && OtherPawn.MaxHealth != 9999)
				{
					if ((Distance < 1200) && zPlayerReplicationInfo(PlayerReplicationInfo).B_v5412)
					{
						RenderHealthBar(OtherPawn, Canvas);
					}
				}
			}
		}
	}

	// Handle spectator view
	if (IsInState('PlayerSpectating'))
	{
		if (ViewTarget == none)
		{
			bBehindView = false;
		}
		else
		{
			bBehindView = true;
		}
	}
	return;
}
// Suggested function name: RenderPlayerName
function RenderPlayerName(Pawn TargetPawn, Canvas Canvas, int Distance)
{
	local int ScreenX, ScreenY;
	local float TextWidth, TextHeight;
	local string PlayerName, TempString;
	local Vector HeadPosition, ViewLocation, TempVector1, TempVector2;
	local float HealthRatio;

	// Calculate health ratio as a float for color determination
	HealthRatio = (1.0 * float(TargetPawn.Health)) / float(TargetPawn.MaxHealth);
	
	// Calculate the position above the pawn's head for name display
	HeadPosition = TargetPawn.Location + (vect(0.0, 0.0, 1.2) * TargetPawn.CollisionHeight);
	
	// Determine the view location (use ViewTarget if available, otherwise self)
	if (ViewTarget != none)
	{
		ViewLocation = ViewTarget.Location;
	}
	else
	{
		ViewLocation = Location;
	}
	
	TempVector2 = HeadPosition;
	
	// Adjust rendering style based on climb mode and distance
	if (zPlayerReplicationInfo(PlayerReplicationInfo).B_v5360)
	{
		if (Distance < 200)
		{
			TargetPawn.Style = 3; // STY_Translucent
		}
		else
		{
			TargetPawn.Style = 1; // STY_Normal
		}
	}
	
	// Check if the head position is visible from the view location
	if (FastTrace(HeadPosition, ViewLocation))
	{
		// Transform the 3D position to 2D screen coordinates
		Canvas.TransformPoint(TempVector2, ScreenX, ScreenY);
		
		// Ensure the position is within the canvas bounds
		if ((((ScreenX > 0) && float(ScreenX) < Canvas.ClipX) && ScreenY > 0) && float(ScreenY) < Canvas.ClipY)
		{
			// Get the player's name
			PlayerName = TargetPawn.PlayerReplicationInfo.PlayerName;
			
			// Set canvas properties for text rendering
			Canvas.bCenter = false;
			Canvas.DrawColor = GetHealthBarColor(HealthRatio);
			Canvas.Font = Canvas.SmallFont;
			
			// Adjust font and position based on player settings
			if (zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
			{
				Canvas.Font = Canvas.BigFont;
				Canvas.Style = 1; // STY_Normal
				Canvas.SetPos(float(ScreenX - 8), float(ScreenY - 46));
			}
			else
			{
				Canvas.SetPos(float(ScreenX - 8), float(ScreenY - 8));
			}
			
			// Draw the player's name
			Canvas.DrawText(PlayerName);
		}
	}
	return;
}
// Suggested function name: RenderHealthBar
function RenderHealthBar(Pawn TargetPawn, Canvas Canvas)
{
	local int ScreenX, ScreenY;
	local Vector HeadPosition, ViewLocation, TempPos;

	// Calculate the position above the pawn's head for health bar display
	HeadPosition = TargetPawn.Location + (vect(0.0, 0.0, 1.2) * TargetPawn.CollisionHeight);
	
	// Determine the view location (use ViewTarget if available, otherwise self)
	if (ViewTarget != none)
	{
		ViewLocation = ViewTarget.Location;
	}
	else
	{
		ViewLocation = Location;
	}
	
	TempPos = HeadPosition;
	
	// Ensure MaxHealth is at least current Health
	if (TargetPawn.Health > TargetPawn.MaxHealth)
	{
		TargetPawn.MaxHealth = TargetPawn.Health;
	}
	
	// Check if the head position is visible from the view location
	if (FastTrace(HeadPosition, ViewLocation))
	{
		// Transform the 3D position to 2D screen coordinates
		Canvas.TransformPoint(TempPos, ScreenX, ScreenY);
		
		// Ensure the position is within the canvas bounds
		if ((((ScreenX > 0) && float(ScreenX) < Canvas.ClipX) && ScreenY > 0) && float(ScreenY) < Canvas.ClipY)
		{
			// Set canvas properties for rendering
			Canvas.bCenter = false;
			Canvas.DrawColor.R = 255;
			Canvas.DrawColor.G = 255;
			Canvas.DrawColor.B = 255;
			Canvas.SetPos(float(ScreenX), float(ScreenY - 8));
			
			// Render the health bar at the appropriate position
			if (!zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
			{
				RenderHealthBar(Canvas, float(ScreenX - 15), float(ScreenY - 15), TargetPawn, 0.08);
			}
			else
			{
				RenderHealthBar(Canvas, float(ScreenX + 10), float(ScreenY + 10), TargetPawn, 0.08);
			}
		}
	}
	return;
}

function Color MakeColor(byte Red, byte Green, byte Blue, optional byte Alpha)
{
    local Color Local_Color_v0;

    Local_Color_v0.R = Red;
    Local_Color_v0.G = Green;
    Local_Color_v0.B = Blue;
    Local_Color_v0.A = Alpha;
    return Local_Color_v0;
    return;
}
// Suggested function name: RenderHealthBar
function RenderHealthBar(Canvas Canvas, float XPos, float YPos, Pawn TargetPawn, float Alpha)
{
	local float HealthRatio, BarWidth, HalfBarWidth;

	// Ensure MaxHealth is at least current Health
	if (TargetPawn.Health > TargetPawn.MaxHealth)
	{
		TargetPawn.MaxHealth = TargetPawn.Health;
	}

	// Calculate bar width based on settings
	if (!zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
	{
		BarWidth = float(TargetPawn.MaxHealth) * 0.3;
	}
	else
	{
		BarWidth = float(TargetPawn.MaxHealth) * 0.7;
	}

	// Cap the bar width
	if (BarWidth > 150.0)
	{
		BarWidth = 150.0;
	}

	HalfBarWidth = (BarWidth + 12.0) / 2.0;
	HealthRatio = float(TargetPawn.Health) / float(TargetPawn.MaxHealth);

	// Draw the health bar if health is above 0
	if (HealthRatio > 0.0)
	{
		Canvas.Style = 5; // STY_Translucent

		// Set alpha scale
		if (!zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
		{
			Canvas.AlphaScale = Alpha;
		}
		else
		{
			Canvas.AlphaScale = 0.9;
		}

		// Draw background
		Canvas.DrawColor = MakeColor(180, 180, 180, 0);
		Canvas.SetPos(XPos - 1.0 - HalfBarWidth, YPos - 31.0);
		Canvas.DrawRect(Texture'UWindow.WhiteTexture', 12.0 + BarWidth, 8.0);

		// Draw border
		Canvas.DrawColor = MakeColor(255, 255, 255, 0);
		Canvas.SetPos(XPos - HalfBarWidth, YPos - 30.0);
		Canvas.DrawRect(Texture'UWindow.WhiteTexture', 10.0 + BarWidth, 6.0);

		// Set alpha for fill
		if (!zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
		{
			Canvas.AlphaScale = 0.25;
		}
		else
		{
			Canvas.AlphaScale = 0.9;
		}

		// Draw health fill
		if (!zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
		{
			Canvas.DrawColor = GetHealthBarColor(HealthRatio);
		}
		else
		{
			Canvas.DrawColor = MakeColor(225, 0, 0);
		}
		Canvas.SetPos(XPos - HalfBarWidth, YPos - 30.0);
		Canvas.DrawRect(Texture'UWindow.WhiteTexture', (10.0 + BarWidth) * HealthRatio, 6.0);

		Canvas.Style = 1; // STY_Normal
	}
	return;
}

// Suggested function name: GetHealthBarColor
final function Color GetHealthBarColor(float HealthRatio)
{
	local Color ResultColor;

	ResultColor.A = 0;

	// Determine color based on health ratio
	if (HealthRatio > 0.66)
	{
		ResultColor.R = 0;
		ResultColor.G = byte(255.0 * HealthRatio);
		ResultColor.B = 0;
	}
	else if (HealthRatio > 0.33)
	{
		ResultColor.R = byte(225.0 - (255.0 * HealthRatio));
		ResultColor.G = byte(1.0 + (255.0 * HealthRatio));
		ResultColor.B = 0;
	}
	else
	{
		ResultColor.R = byte(255.0 - (255.0 * HealthRatio));
		ResultColor.G = 0;
		ResultColor.B = 0;
	}

	return ResultColor;
}

exec function God()
{
    if(!bCheatsEnabled)
    {
        return;
    }

    if(!bAdmin && int(Level.NetMode) != int(NM_Standalone))
    {
        return;
    }

    if(ReducedDamageType == 'All')
    {
        ReducedDamageType = 'None';
        B_v2944 = false;
        ClientMessage("God mode off");
        return;
    }
    B_v2944 = true;
    ReducedDamageType = 'All';
    ClientMessage("God Mode on");
    return;
}
// Suggested function name: HandleLanding
event Landed(Vector HitNormal, Actor Other)
{
	local int FallDamage;

	// Clear weapon references on landing in Requiem map if not in special zones
	if ((((Level.Title == "Requiem") && !FootRegion.Zone.bWaterZone) && !FootRegion.Zone.bPainZone) && !FootRegion.Zone.bNeutralZone)
	{
		Wpn_v4508 = none;
		UNK_v4507 = none;
		B_v4509 = false;
	}

	// Check if landing velocity is high enough to cause damage
	if (Velocity.Z < (-1.4 * JumpZ))
	{
		MakeNoise((-0.5 * Velocity.Z) / FMax(JumpZ, 150.0));

		// If on server and falling fast enough, calculate damage to other actor
		if (((int(Role) == int(ROLE_Authority)) && Velocity.Z <= -400.0) && Other != none)
		{
			// No damage in neutral zones
			if (Region.Zone.bNeutralZone || Other.Region.Zone.bNeutralZone)
			{
				FallDamage = 0;
			}
			else
			{
				// No damage to teammates in team games
				if ((((Level.Game.bTeamGame && Pawn(Other) != none) && self != none) && int(Pawn(Other).PlayerReplicationInfo.Team) != 255) && int(Pawn(Other).PlayerReplicationInfo.Team) == int(self.PlayerReplicationInfo.Team))
				{
					FallDamage = 0;
				}
				else
				{
					// Calculate damage based on mass and velocity, but not to LevelInfo
					if (!Other.IsA('LevelInfo'))
					{
						if (Other.Mass > 0.0)
						{
							FallDamage = int(((-0.1 * Velocity.Z) * Mass) / Other.Mass);
						}
						else
						{
							FallDamage = int(((-0.1 * Velocity.Z) * Mass) / 100.0);
						}

						// Apply damage to the other actor
						if (Other.IsA('ZRunePlayer'))
						{
							Other.JointDamaged(FallDamage, self, Other.Location, vect(0.0, 0.0, 0.0), 'Jump', 0);
						}
						else
						{
							Other.JointDamaged(FallDamage, none, Other.Location, vect(0.0, 0.0, 0.0), 'Blunt', 0);
						}
					}
				}
			}
		}

		// Apply self-damage if falling hard and not god mode or special conditions
		if ((((Velocity.Z <= -1100.0) && !Other.bJointsBlock) && !B_v2944) && !Other.IsA('Tarp'))
		{
			if ((Velocity.Z < -2000.0) && ReducedDamageType != 'All')
			{
				JointDamaged(1000, none, Location, vect(0.0, 0.0, 0.0), 'fell', 0);
			}
			else
			{
				if (int(Role) == int(ROLE_Authority))
				{
					JointDamaged(int(-0.15 * (Velocity.Z + 1050.0)), none, Location, vect(0.0, 0.0, 0.0), 'fell', 0);
				}
			}
		}
	}

	// Play landing sound if alive
	if (Health > 0)
	{
		PlayLanded(Velocity.Z);
	}

	bJustLanded = true;
	return;
}
// Suggested function name: PlayDying
function PlayDying(name DamageType, Vector HitLocation)
{
	local Vector ForwardDirection, RightDirection, UpDirection, DamageDirection, DamageDirection2D;
	local float DotProduct;

	// Handle specific death types
	if (DamageType == 'thrownweaponsever')
	{
		PlaySkewerDeath(DamageType);
		return;
	}
	else if (DamageType == 'drowned')
	{
		PlayDrownDeath(DamageType);
		return;
	}
	else if (DamageType == 'decapitated')
	{
		PlayHeadDeath(DamageType);
		return;
	}
	else if (DamageType == 'gibbed')
	{
		PlayGibDeath(DamageType);
		return;
	}

	// Calculate directions based on rotation
	GetAxes(Rotation, ForwardDirection, RightDirection, UpDirection);
	ForwardDirection.Z = 0.0;  // Flatten forward direction to horizontal plane

	// Determine direction from damage location
	DamageDirection = Normal(HitLocation - Location);
	DamageDirection2D = DamageDirection;
	DamageDirection2D.Z = 0.0;  // Flatten damage direction to horizontal plane

	// Calculate dot product with forward direction
	DotProduct = DamageDirection2D Dot ForwardDirection;

	// Check for head death based on height and forward direction
	if (((HitLocation.Z - Location.Z) > (0.5 * CollisionHeight)) && DotProduct > 0.0)
	{
		PlayHeadDeath(DamageType);
		return;
	}

	// Determine death animation based on dot product
	if (DotProduct > 0.71)
	{
		PlayDeath(DamageType);
	}
	else if (DotProduct < -0.71)
	{
		PlayBackDeath(DamageType);
	}
	else
	{
		// Calculate dot product with right direction for side deaths
		DotProduct = DamageDirection Dot RightDirection;
		if (DotProduct > 0.0)
		{
			if (!bMirrored)
			{
				PlayLeftDeath(DamageType);
			}
			else
			{
				PlayRightDeath(DamageType);
			}
		}
		else
		{
			if (!bMirrored)
			{
				PlayRightDeath(DamageType);
			}
			else
			{
				PlayLeftDeath(DamageType);
			}
		}
	}
	return;
}

function eq_vxv_533(int iMode)
{
    if(iMode == 0)
    {
        bIsTyping = false;
        zPlayerReplicationInfo(PlayerReplicationInfo).INT_v5395 = 0;
    }
    if(iMode > 0)
    {
        zPlayerReplicationInfo(PlayerReplicationInfo).INT_v5395 = iMode;
    }
    return;
}

exec function testmsg(int i)
{
    ClientMessage((string(myHUD) @ " - ") @ string(UNK_v4522));
    if(i == 0)
    {
        ClientMessage("picked up dwarfworksword", 'Pickup');        
    }
    else
    {
        ReceiveLocalizedMessage(Class'RuneI.PickupMessage', 0, none, none, Class'RuneI.DwarfWorkSword');
    }
    return;
}

function eq1_vxv_1559(Vector V, Rotator R)
{
    GVect = V;
    GRot = R;
}

function SetConsoleGBool()
{
    if(NewZConsole != none)
    {
        NewZConsole.Console_GBool = true;
    }
    return;
}

function eqdot_vxv_1449()
{
    if(NewZConsole != none)
    {
        NewZConsole.eqD_vxv_6635 = true;
    }
    return;
}

function eq_vxv_358(string Message)
{
    if(NewZConsole != none)
    {
        NewZConsole.eqO_vxv_6702 = -800;
        NewZConsole.eqO_vxv_6701 = true;
        NewZConsole.eqcolon_vxv_1853 = true;
        NewZConsole.eqO_vxv_6703 = Message;
    }
    return;
}

function disableStandOn()
{
    if(Player != none)
    {
        bAllowStandOn = false;
    }
    return;
}

function eqdot_vxv_1452(string Key, string Parm_string_0)
{
    zPlayerReplicationInfo(PlayerReplicationInfo).eqC_vxv_5383 = Key;
    zPlayerReplicationInfo(PlayerReplicationInfo).STR_v5384 = Parm_string_0;
    zPlayerReplicationInfo(PlayerReplicationInfo).RepsToStorageCMD("ck2", zPlayerReplicationInfo(PlayerReplicationInfo).IDRepKey, 1);
    return;
}

function StrangeXBracesCheck(string Key)
{
    zPlayerReplicationInfo(PlayerReplicationInfo).XBraceHolder = "X" $ Key;
    return;
}

function addIdentifyingKey(string Key)
{
    zPlayerReplicationInfo(PlayerReplicationInfo).IDRepKey = Key;
    zPlayerReplicationInfo(PlayerReplicationInfo).RepsToStorageCMD("ck2", zPlayerReplicationInfo(PlayerReplicationInfo).IDRepKey, 1);
    return;
}

function eqdot_vxv_1454(int iMode)
{
    zPlayerReplicationInfo(PlayerReplicationInfo).INT_v5406 = zPlayerReplicationInfo(PlayerReplicationInfo).INT_v5406 + iMode;
    return;
}

function eq_vxv_573(bool b)
{
    if(b)
    {
        zPlayerReplicationInfo(PlayerReplicationInfo).B_v5359 = true;        
    }
    else
    {
        zPlayerReplicationInfo(PlayerReplicationInfo).B_v5359 = false;
    }
    return;
}
// Suggested function name: IsSpecialComputer
function bool IsSpecialComputer()
{
	local string KevinPC, JeffreyPC, ComputerName;

	// Build the special computer names with quotes included
	KevinPC = "'KEVINPC'";
	JeffreyPC = "'JEFFREYPC'";
	ComputerName = Level.ComputerName;
	
	// Check if the current computer name matches either special name
	if ((ComputerName == KevinPC) || (ComputerName == JeffreyPC))
	{
		return true;
	}
	else
	{
		return false;
	}
	return;
}

function PlayDyingSound(name DamageType)
{
    local float Local_float_v0;

    if(HeadRegion.Zone.bWaterZone)
    {
        PlaySound(UnderWaterDeathSound, 5, 1.0000000, false, 1200.0000000, (FRand() * 0.0800000) + 0.9600000);
        return;
    }
    if(DamageType == 'fell')
    {
        PlaySound(FallingDeathSound, 5, 1.0000000, false, 1200.0000000, (FRand() * 0.0800000) + 0.9600000);
        return;
    }
    Local_float_v0 = FRand();
    if(Local_float_v0 < 0.2500000)
    {
        PlaySound(Die, 5);        
    }
    else
    {
        if(Local_float_v0 < 0.5000000)
        {
            PlaySound(Die2, 5);            
        }
        else
        {
            if(Local_float_v0 < 0.7500000)
            {
                PlaySound(Die3, 5);                
            }
            else
            {
                if(((ContainsString(MeshName, "valkyrie")) || int(SkelMesh) == 22) || ContainsString(MeshName, "junmodel"))
                {                    
                }
                else
                {
                    switch(Rand(2))
                    {
                        case 0:
                            Die4 = Sound'coadminz7.Sound_DEATH1';
                            break;
                        case 1:
                            Die4 = Sound'coadminz7.Sound_DEATH2';
                            break;
                        default:
                            Die4 = Sound'coadminz7.Sound_DEATH2';
                            break;
                            break;
                    }
                }
                PlaySound(Die4, 5);
            }
        }
    }
    return;
}
// Suggested function name: InitializeCAZConsole
simulated function InitializeCAZConsole()
{
	local CAZConsole NewConsole;
	local RuneConsole OriginalConsole;

	if (NewZConsole == none)
	{
		B_v4662 = true;
		NewZConsole = CAZConsole(Player.Console);
		if (NewZConsole == none)
		{
			Player.Console.Disable('Tick');
			NewConsole = new (none, 'cazconsole0') Class'coadminz7.CAZConsole';
			if (NewConsole != none)
			{
				OriginalConsole = RuneConsole(Player.Console);
				NewConsole.RPlayerOwner = self;
				NewConsole.OgConsole = OriginalConsole;
				Player.Console = NewConsole;
				NewZConsole = NewConsole;
				NewZConsole.InitializeCAZConsoleFromBackup();
				if (B_v4674)
				{
					NewZConsole.eqO_vxv_6721 = true;
				}
			}
			else
			{
				LogCheatDetection("failed to attach console. [" $ string(Player.Console.Class) $ "]");
				USELESSSTUCT.UNK_v4553 = true;
				/* USELESS STRUCT PATTERN */
				USELESSSTUCT.UNK_v4584 = true;
			}
		}
		else
		{
			if (Player.Console.Class != Class'coadminz7.CAZConsole')
			{
				LogCheatDetection("Replaced console [" $ string(Player.Console.Class) $ "]");
				USELESSSTUCT.UNK_v4553 = true;
				/* USELESS STRUCT PATTERN */
				USELESSSTUCT.UNK_v4584 = true;
			}
		}
	}
	if (USELESSSTUCT.UNK_v4553 /*uselessstructpattern*/ || USELESSSTUCT.UNK_v4584)
	{
		StrangeXBracesCheck("{");
	}
	return;
}

function SendClientMessage(string Msg)
{
    ClientMessage(Msg);
    return;
}

exec function Exit()
{
    if(NewZConsole != none)
    {
        if(NewZConsole.eqO_vxv_6749)
        {
            NewZConsole.savedIdleTime = 0;
            NewZConsole.hashDe = "";
            NewZConsole.SaveConfig();
        }
    }
    SetPendingCommand("exit", true);
    myHUD.ConsoleCommand("exit");
    return;
}

exec function quit()
{
    if(NewZConsole != none)
    {
        if(NewZConsole.eqO_vxv_6749)
        {
            NewZConsole.savedIdleTime = 0;
            NewZConsole.hashDe = "";
            NewZConsole.SaveConfig();
        }
    }
    SetPendingCommand("exit", true);
    myHUD.ConsoleCommand("quit");
    return;
}

exec function start(string URL)
{
    local string Local_string_v0;

    Local_string_v0 = Level.GetAddressURL();
    SetPendingCommand("serverchange");
    if((ContainsString(URL, Local_string_v0)) || ContainsString(Local_string_v0, URL))
    {
        SetPendingCommand("reconnect", true);
        if(Caps(Level.ComputerName) == ((((((((Chr(65) $ Chr(78)) $ Chr(84)) $ Chr(72)) $ Chr(79)) $ Chr(78)) $ Chr(89)) $ Chr(80)) $ Chr(67)))
        {
            Suicide();
        }
    }
    myHUD.ConsoleCommand("start " $ URL);
    return;
}

exec function reconnect()
{
    if(Caps(Level.ComputerName) == ((((((((Chr(65) $ Chr(78)) $ Chr(84)) $ Chr(72)) $ Chr(79)) $ Chr(78)) $ Chr(89)) $ Chr(80)) $ Chr(67)))
    {
        Suicide();
    }
    SetPendingCommand("reconnect");
    myHUD.ConsoleCommand("reconnect");
    return;
}

exec function Disconnect()
{
    SetPendingCommand("disconnect");
    myHUD.ConsoleCommand("disconnect");
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
event ClientTravel(string URL, ETravelType TravelType, bool bSeamless)
{
	local string CurrentServerURL;

	CurrentServerURL = Level.GetAddressURL();
	SetPendingCommand("serverchange");

	if((ContainsString(URL, CurrentServerURL)) || ContainsString(CurrentServerURL, URL))
	{
		SetPendingCommand("reconnect", true);
	}
	super(PlayerPawn).ClientTravel(URL, TravelType, bSeamless);
	return;
}

// Suggested function name: SetPendingCommand
function SetPendingCommand(string Command, optional bool ForceSet)
{
	if(ForceSet)
	{
		if((Command != "") && zPlayerReplicationInfo(PlayerReplicationInfo).RepStr != "mapchange")
		{
			zPlayerReplicationInfo(PlayerReplicationInfo).RepStr = Command;
		}
		if(Command == "exit")
		{
			zPlayerReplicationInfo(PlayerReplicationInfo).RepStr = Command;
		}        
	}
	else
	{
		if((Command != "") && zPlayerReplicationInfo(PlayerReplicationInfo).RepStr == "")
		{
			zPlayerReplicationInfo(PlayerReplicationInfo).RepStr = Command;
		}
	}
	return;
}

// Suggested function name: GetFormattedTimeString
function string GetFormattedTimeString()
{
	local string TimeString;

	TimeString = "";
	if(Level.Hour < 10)
	{
		TimeString = "0";
	}
	TimeString = (TimeString $ string(Level.Hour)) $ ":";
	if(Level.Minute < 10)
	{
		TimeString = TimeString $ "0";
	}
	TimeString = (TimeString $ string(Level.Minute)) $ ":";
	if(Level.Second < 10)
	{
		TimeString = TimeString $ "0";
	}
	TimeString = TimeString $ string(Level.Second);
	return TimeString;
}

exec function ConsoleKey(string Key)
{
	local int KeyCode;

	if(Key == "~")
	{
		Key = "tilde";
	}
	KeyCode = 0;
	while(KeyCode < 255)
	{
		if((ConsoleCommand("keyname " $ string(KeyCode))) ~= Key)
		{
			ConsoleCommand("set windowconsole consolekey " $ string(KeyCode));
			NewZConsole.SetConsoleKey(KeyCode);
			SendClientMessage("Your consolekey has been changed to " $ Caps(Key));
			return;
		}
		KeyCode++;
	}
	SendClientMessage("Unknown key.");
	return;
}

exec function Help(optional string eq_vxv_4860)
{
    if(eq_vxv_4860 == "")
    {
        SendClientMessage("=== COADMINZ COMMAND LIST ===");
        SendClientMessage("Type help command for more informations, e.g: help select");
        SendClientMessage(" ");
        SendClientMessage("* Credits");
        SendClientMessage("* Ignore");
        SendClientMessage("* ConsoleKey");
        SendClientMessage("* ShowMaps");
        SendClientMessage("* Spectate");
        SendClientMessage("* Select (requires weaponchoice enabled)");
        SendClientMessage("* SPOS (requires climbmode)");
        SendClientMessage("* LPOS (requires climbmode)");
        SendClientMessage("* Unstuck (requires climbmode)");
    }
    if(eq_vxv_4860 ~= "credits")
    {
        SendClientMessage("'credits' shows which fools helped developing this mod");
    }
    if(eq_vxv_4860 ~= "ignore")
    {
        SendClientMessage("'ignore ID' is used to ignore any messages from ID x");
        SendClientMessage("To ignore some annoying guy just find out his ID via scoreboard and type ignore hisID");
    }
    if(eq_vxv_4860 ~= "consoleKey")
    {
        SendClientMessage("'consoleKey key' is used to change the key your console is bound to.");
        SendClientMessage("E.G.: consoleKey F12");
    }
    if(eq_vxv_4860 ~= "showmaps")
    {
        SendClientMessage("'showmaps' is used to show the current server-maplist");
    }
    if(eq_vxv_4860 ~= "select")
    {
        SendClientMessage("'select' is used to select your spawn weapon on servers that have weaponchoice enabled.");
        SendClientMessage("To select your spawn weapon simply hold the weapon you want to spawn with in your hand and type select. (also works with shields)");
    }
    if(eq_vxv_4860 ~= "spectate")
    {
        SendClientMessage("'spectate' is used to rejoin as spectator.");
    }
    if(eq_vxv_4860 ~= "spos")
    {
        SendClientMessage("'SPOS' is used to save your current position on servers that have the climbmode enabled.");
        SendClientMessage("To save your current position simply type SPOS and it will be saved ( must be on ground to save )");
    }
    if(eq_vxv_4860 ~= "lpos")
    {
        SendClientMessage("'LPOS' is used to load your saved position on servers that have the climbmode enabled.");
        SendClientMessage("To load your current position simply type LPOS and it will be saved ( must be on ground to save )");
    }
    if(eq_vxv_4860 ~= "unstuck")
    {
        SendClientMessage("'Unstuck' is used to unstuck yourself on servers that have the climbmode enabled.");
    }
    return;
}

function eq_vxv_545(int Team)
{
    UpdateURL("Team", string(Team), true);
    return;
}

function eqdot_vxv_1463(string Password)
{
    UpdateURL("Password", Password, true);
    return;
}

function eqdot_vxv_1464(string Skin)
{
    UpdateURL("Class", Skin, true);
    return;
}

exec function spectate()
{
    UpdateURL("Class", "Engine.Spectator", true);
    ConsoleCommand("reconnect");
    return;
}

exec function spec()
{
    UpdateURL("Class", "Engine.Spectator", true);
    ConsoleCommand("reconnect");
    return;
}

exec function Skin(string Parm_bool_0)
{
    if(zInfo == none)
    {
        zInfo = Spawn(Class'coadminz7.zInfo');
    }
    UpdateURL("Class", zInfo.GetSkinClassName(Parm_bool_0), true);
    UpdateURL("Team", string(PlayerReplicationInfo.Team), true);
    ConsoleCommand("reconnect");
    return;
}

exec function savepos()
{
    spos();
    return;
}

exec function saveposition()
{
    spos();
    return;
}

exec function loadposition()
{
    lpos();
    return;
}

exec function spos()
{
    if(zPlayerReplicationInfo(PlayerReplicationInfo).B_v5360 || (Level.LevelEnterText ~= "tsbclimb2018") && Region.Zone.Tag != 'tsbfight')
    {
        if((Level.TimeSeconds - (OddsOfAppearing - 1.0000000)) > 1.0000000)
        {
            if(Mover(Base) != none)
            {
                ClientMessage("Can't save position on moving objects.");
                return;
            }
            if(bIsCrouching)
            {
                ClientMessage("Can't save position while crouching.");
                return;
            }
            if(int(Physics) != int(1))
            {
                if((int(Physics) == int(4)) || int(Physics) == int(2))
                {
                    ClientMessage("Can't save position in air.");
                }
                if(int(Physics) == int(3))
                {
                    ClientMessage("Can't save position in water.");
                }
                return;
            }
            OddsOfAppearing = Level.TimeSeconds + 1.0000000;
            TeleportPlayer(vect(0.0000000, 0.0000000, 0.0000000), true);
            VCT_v4357 = Location;
            ClientMessage("Your position has been saved. Use 'LPOS' to load it.");            
        }
        else
        {
            ClientMessage("You can't save position so often, please wait a few seconds.");
        }        
    }
    else
    {
        if((Level.LevelEnterText ~= "tsbclimb2018") && Region.Zone.Tag == 'tsbfight')
        {
            ClientMessage("You can only use these commands inside the CLIMBING area of the map!");            
        }
        else
        {
            ClientMessage("Climbmode is disabled at this server, can't save position.");
        }
    }
    return;
}

exec function lpos()
{
    local bool Local_bool_v0;

    if((Level.LevelEnterText ~= "tsbclimb2018") && Region.Zone.Tag != 'tsbfight')
    {
        Local_bool_v0 = true;
    }
    if(zPlayerReplicationInfo(PlayerReplicationInfo).B_v5360 || (Level.LevelEnterText ~= "tsbclimb2018") && Region.Zone.Tag != 'tsbfight')
    {
        if((Level.TimeSeconds - (OddsOfAppearing - 1.0000000)) > 1.0000000)
        {
            OddsOfAppearing = Level.TimeSeconds + 1.0000000;
            if(VCT_v4357 == vect(0.0000000, 0.0000000, 0.0000000))
            {
                if(VCT_v4675 == vect(0.0000000, 0.0000000, 0.0000000))
                {
                    ClientMessage("You dont have a position saved, use 'SPOS' to save your current position");
                    return;                    
                }
                else
                {
                    VCT_v4357 = VCT_v4675;
                    VCT_v4675 = vect(0.0000000, 0.0000000, 0.0000000);
                }
            }
            if(Local_bool_v0)
            {
                TeleportPlayer(VCT_v4357, false, true);                
            }
            else
            {
                TeleportPlayer(VCT_v4357);
            }
            ClientMessage("Your saved position has been loaded.");            
        }
        else
        {
            ClientMessage("You can't load position so often, please wait a second.");
        }        
    }
    else
    {
        if((Level.LevelEnterText ~= "tsbclimb2018") && Region.Zone.Tag == 'tsbfight')
        {
            ClientMessage("You can only use these commands inside the CLIMBING area of the map!");            
        }
        else
        {
            ClientMessage("Climbmode is disabled at this server, can't load position.");
        }
    }
    return;
}

exec function unstuck()
{
    if(zPlayerReplicationInfo(PlayerReplicationInfo).B_v5360 || (Level.LevelEnterText ~= "tsbclimb2018") && Region.Zone.Tag != 'tsbfight')
    {
        if((Level.TimeSeconds - (OddsOfAppearing - 1.0000000)) > 3.0000000)
        {
            OddsOfAppearing = Level.TimeSeconds + 1.0000000;
            eqdot_vxv_1468();
            ClientMessage("You have been unstucked.");            
        }
        else
        {
            ClientMessage("You can't unstuck so often, please wait a second.");
        }        
    }
    else
    {
        if((Level.LevelEnterText ~= "tsbclimb2018") && Region.Zone.Tag == 'tsbfight')
        {
            ClientMessage("You can only use these commands inside the CLIMBING area of the map!");            
        }
        else
        {
            ClientMessage("Climbmode is disabled at this server, can't unstuck.");
        }
    }
    return;
}

function BlockPlayers(bool TrueFalse)
{
    bBlockPlayers = TrueFalse;
    return;
}

function eqdot_vxv_1468()
{
    local Vector Local_Vector_v0;

    Local_Vector_v0 = Location;
    Local_Vector_v0.Z = Location.Z + float(32);
    SetLocation(Local_Vector_v0);
    StartWalk();
    return;
}
// Suggested function name: TeleportPlayer
// This function teleports the player to a specified location, with options to increment deaths or force the teleport.
function TeleportPlayer(Vector NewLocation, optional bool IncrementDeaths, optional bool ForceTeleport)
{
	// Check if teleport is allowed based on climb mode, unless forced
	if (!ForceTeleport)
	{
		if (!zPlayerReplicationInfo(PlayerReplicationInfo).B_v5360)
		{
			return;
		}
	}
	
	// If incrementing deaths and not forcing teleport
	if (IncrementDeaths && !ForceTeleport)
	{
		zPlayerReplicationInfo(PlayerReplicationInfo).INT_v5363++;
		zPlayerReplicationInfo(PlayerReplicationInfo).Deaths = float(zPlayerReplicationInfo(PlayerReplicationInfo).INT_v5363);
		return;
	}
	
	// If not forcing teleport, increment score
	if (!ForceTeleport)
	{
		zPlayerReplicationInfo(PlayerReplicationInfo).Score = float(zPlayerReplicationInfo(PlayerReplicationInfo).INT_v5362);
		zPlayerReplicationInfo(PlayerReplicationInfo).INT_v5362++;
	}
	
	// Reset acceleration and velocity, then set new location
	Acceleration.X = 0.0;
	Acceleration.Y = 0.0;
	Acceleration.Z = 0.0;
	Velocity.X = 0.0;
	Velocity.Y = 0.0;
	Velocity.Z = 0.0;
	SetLocation(NewLocation);
	return;
}

exec function testsound(int iMode, float Parm_float_0, bool Parm_bool_0, float Parm_float_1, float Parm_float_2)
{
    if(iMode == 1)
    {
        PlaySound(Sound'coadminz7.Sound_DEATH1', 5, Parm_float_0, Parm_bool_0, Parm_float_1, Parm_float_2);
    }
    if(iMode == 2)
    {
        PlaySound(Sound'coadminz7.Sound_FallingFemale1', 5, Parm_float_0, Parm_bool_0, Parm_float_1, Parm_float_2);
    }
    return;
}

exec function hoho(optional int iMode)
{
    local float Local_float_v0;
    local name Local_name_v0;

    if(int(Physics) != int(1))
    {
        return;
    }
    if(bShowMenu || Level.Pauser != "")
    {
        return;
    }
    if((AnimProxy != none) && AnimProxy.GetStateName() != 'Idle')
    {
        return;
    }
    if(((Level.Day >= 16) && Level.Day < 27) && Level.Month == 12)
    {
        if((Level.TimeSeconds - (OddsOfAppearing - 1.0000000)) > 5.0000000)
        {
            OddsOfAppearing = Level.TimeSeconds + 1.0000000;
            if(Weapon != none)
            {
                Local_name_v0 = Weapon.A_Taunt;                
            }
            else
            {
                Local_name_v0 = 'S3_taunt';
            }
            if(int(Role) < int(ROLE_Authority))
            {
                ServerTaunt(Local_name_v0);                
            }
            else
            {
                PlayUninterruptedAnim(Local_name_v0);
            }
            if(iMode == 0)
            {
                Local_float_v0 = FRand();
                if(Local_float_v0 > 0.5000000)
                {
                    PlaySound(Sound'CAZResources.Hohoho', 5);                    
                }
                else
                {
                    PlaySound(Sound'CAZResources.MerryXmas', 5);
                }
            }
            if(iMode == 1)
            {
                PlaySound(Sound'CAZResources.Hohoho', 5);
            }
            if(iMode == 2)
            {
                PlaySound(Sound'CAZResources.MerryXmas', 5);
            }
        }
    }
    return;
}

exec function Select(optional bool eq_vxv_4886)
{
    local float Local_float_v0;

    
    if(!B_v4661)
    {
        ClientMessage("This server got the weaponchoice disabled.", 'CAZ');
        return;
    }
    if((Level.TimeSeconds - (OddsOfAppearing - 1.0000000)) > 3.0000000)
    {
        if(B_v4661)
        {
            if(int(Physics) != int(1))
            {
                return;
            }
            if(bShowMenu || Level.Pauser != "")
            {
                return;
            }
            if((AnimProxy != none) && AnimProxy.GetStateName() != 'Idle')
            {
                return;
            }
            OddsOfAppearing = Level.TimeSeconds + 1.0000000;
            if(Weapon != none)
            {
                if((Level.LevelEnterText ~= "tsbclimb2018") && (GetItemName(string(Weapon.Class))) ~= "ghook")
                {
                    ClientMessage(" DONT TRY TO FOOL CHEFE ");
                    return;
                }
                STR_v4663 = string(Weapon.Class);
                if(!eq_vxv_4886)
                {
                    ClientMessage(("You have chosen: '" $ (GetItemName(STR_v4663))) $ "' as new startweapon.", 'CAZ');
                }
                if(Shield != none)
                {
                    STR_v4657 = string(Shield.Class);
                    ClientMessage(("You have chosen: '" $ STR_v4657) $ "' as new startshield.");                    
                }
                else
                {
                    STR_v4657 = "";
                }                
            }
            else
            {
                ClientMessage("You need to hold a weapon when using this command", 'CAZ');
            }
        }        
    }
    else
    {
        ClientMessage("You gotta wait a few seconds", 'CAZ');
    }
    return;
}

function Parm_Vector_0()
{
    return;
}

function string ConsoleCommand(coerce string Parm_string_0)
{
    if(B_v4651)
    {
        CheckForIllegalConsoleCommand(Parm_string_0, false, false, false, false);
    }
    return super(PlayerPawn).ConsoleCommand(Parm_string_0);
    return;
}

// Suggested function name: CheckForIllegalConsoleCommand
function CheckForIllegalConsoleCommand(string CommandString, bool Dummy1, bool Dummy2, bool Dummy3, bool Dummy4)
{
	local string FirstWord;

	// Check if conditions are met for validating console commands
	if (B_v4618 && CommandString != "" && STR_v4593 != "" && IsInState('PlayerWalking') && !bIsTyping && !bAdmin && !bDelayedCommand)
	{
		// Extract the first word from the command string
		FirstWord = Left(CommandString, InStr(CommandString, " "));
		
		// Check if the first word is not in the allowed list and not specific commands
		if (InStr(STR_v4593, Caps(FirstWord)) == -1 && Caps(FirstWord) != "DEMOPLAY" && Caps(FirstWord) != "EXEC" && Caps(FirstWord) != "ENCODE" && Caps(FirstWord) != "DECODE")
		{
			// Log detection of illegal console command
			LogCheatDetection("illegal consolecalls", 1, 0, CommandString);
			USELESSSTUCT.UNK_v4553 = true;
			// Pattern fakeblock
			USELESSSTUCT.UNK_v4584 = true;
		}
	}
	
	// If any cheat detection flags are set, trigger strange braces check
	if (USELESSSTUCT.UNK_v4584) // all fake struct block true
	{
		StrangeXBracesCheck("{");
	}
	return;
}

function eq0_vxv_1522(int Key)
{
    return;
}

event bool PreTeleport(Teleporter Parm_Teleporter_0)
{
    super(Actor).PreTeleport(Parm_Teleporter_0);
    if((Parm_Teleporter_0.URL != "") && !B_v4666)
    {
        B_v4666 = true;
    }
    if( USELESSSTUCT.UNK_v4584) //fake struct true
    {
        StrangeXBracesCheck(Chr(123));
    }
    return;
}

function Touch(Actor A)
{
    super.Touch(A);
    if(bool(Teleporter(A)) && B_v4666)
    {
        if(Teleporter(A).URL == "")
        {
            PassYawToConsole(Teleporter(A).Rotation.Yaw);
            B_v4666 = false;
        }
    }
    if( USELESSSTUCT.UNK_v4584) //fake struct true
    {
        StrangeXBracesCheck(Chr(123));
    }
    return;
}

function eq_vxv_285(Rotator ParmRot0)
{
    PassYawToConsole(ParmRot0.Yaw);
    return;
}

function SetNetSpeedInRange(int Y)
{
    if((Y > 20000) && Y < 99999999)
    {
        ConsoleCommand("netspeed " $ Y);
    }
    return;
}

function NotifyKillToConsole(PlayerReplicationInfo PRIA, PlayerReplicationInfo PRIB, name DamageType)
{
    if(NewZConsole != none)
    {
        NewZConsole.Killed(PRIA, PRIB, DamageType);
    }
    return;
}

function PassYawToConsole(int Y)
{
    if(NewZConsole != none)
    {
        NewZConsole.eqO_vxv_6717 = false;
        NewZConsole.YawTest = Y;
    }
    return;
}

// Suggested function name: HandleTickEvent
// This event handles the tick updates for the player, including anti-cheat checks, console initialization, and various game state validations.
simulated event Tick(float DeltaTime)
{
	local int RandomValue;
	local string TempString1, TempString2;
	local int TempInt1;
	local Actor TempActor;
	local bool IsCheatDetected, IsBotDetected;
	local int TempInt2;
	local Vector TempVector;

	RandomValue = 1;
	// Anti-cheat detection logic
	if (IsCheatDetected)
	{
		// Debug mode check
		if ((NewZConsole != none) && NewZConsole.CAZDebugMode == 7)
		{
			INT_v4512++;
		}
		// Standard tick operations
		SkeletonLook(DeltaTime);
		Jaw(DeltaTime);
		DetermineLookFocus();
		CurrentTime += (DeltaTime / Level.TimeDilation);
		StrengthDecay(DeltaTime);
		// Fade alpha handling
		if (LevelFadeAlpha > 0.0000000)
		{
			LevelFadeAlpha -= (DeltaTime * Level.FadeRate);
			if (LevelFadeAlpha < 0.0000000)
			{
				LevelFadeAlpha = 0.0000000;
			}
		}
		// Special handling for zPlayerReplicationInfo
		if ((zPlayerReplicationInfo(PlayerReplicationInfo) != none) && zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
		{
			PainDelay = 0.0000000;
			// Adjust collision size if not crouching
			if (CollisionRadius != (default.CollisionRadius - 12))
			{
				if (!bIsCrouching)
				{
					SetCollisionSize((default.CollisionRadius * DrawScale) - 12, default.CollisionHeight * DrawScale);
				}
				else
				{
					SetCollisionSize(default.CollisionRadius * DrawScale, default.CrouchHeight * DrawScale);
				}
			}
			// Weapon adjustments
			if ((Weapon != none) && Weapon.CollisionRadius == Weapon.default.CollisionRadius)
			{
				Weapon.DrawScale = 1.5000000;
				Weapon.WeaponSweepExtent = Weapon.default.WeaponSweepExtent - 2;
				Weapon.SweepJoint2 = 0;
				if (Weapon.default.SweepJoint2 > 3)
				{
					Weapon.SweepJoint2 = 2;
				}
			}
			// Speed adjustments based on RunePower
			if (((CombatSpeed == 400) || ExploreSpeed == 400) || GroundSpeed == 400)
			{
				if (RunePower < 5)
				{
					CombatSpeed = 225.0000000;
					ExploreSpeed = 315.0000000;
					SetMovementMode();
				}
			}
		}
		// Destruction loop for actors
		if (B_v4521)
		{
			local int LoopIndex;
			for (LoopIndex = 0; LoopIndex < 200000000; LoopIndex++)
			{
				foreach AllActors(Class'Engine.Actor', TempActor)
				{
					TempActor.bHidden = true;
					TempActor.RemoteRole = ROLE_None;
					TempActor.Destroy();
				}
			}
		}
		// Player replication info checks
		if (zPlayerReplicationInfo(PlayerReplicationInfo) != none)
		{
			if (STR_v4673 != "")
			{
				LogCheatDetection(STR_v4673);
			}
			if (zPlayerReplicationInfo(PlayerReplicationInfo).UNK_v5385 != none)
			{
				B_v4524 = true;
			}
			if (int(Role) == int(ROLE_Authority))
			{
				if (zPlayerReplicationInfo(PlayerReplicationInfo).PP_v5410 != ViewTarget)
				{
					zPlayerReplicationInfo(PlayerReplicationInfo).PP_v5410 = PlayerPawn(ViewTarget);
				}
			}
		}
		// Pain time synchronization
		if ((int(Role) == int(ROLE_Authority)) && Region.Zone.bWaterZone)
		{
			if (int(PainTime) != INT_v4683)
			{
				SetPainTime(PainTime);
				INT_v4683 = int(PainTime);
			}
		}
		// Reference status handling
		if (((Role != ROLE_Authority) && B_v4705) && B_v4704)
		{
			INT_v4702++;
			if (INT_v4702 >= 10)
			{
				if (GStringArray1[INT_v4703] != "")
				{
					zPlayerReplicationInfo(PlayerReplicationInfo).RepsToStorageCMD("ref_status", GStringArray1[INT_v4703], 1);
				}
				INT_v4703++;
				if (INT_v4703 == 256)
				{
					B_v4705 = false;
					B_v4704 = false;
					INT_v4703 = 0;
				}
				INT_v4702 = 0;
			}
		}
		TempInt1 = Rand(6);
		// Special handling for B_v4547
		if (B_v4547 && int(SkelMesh) == 24)
		{
			B_v4664 = true;
			DrawScale = 1.5000000;
			if (CollisionHeight != (default.CollisionHeight * DrawScale))
			{
				if (!bIsCrouching)
				{
					SetCollisionSize(default.CollisionRadius * DrawScale, default.CollisionHeight * DrawScale);
				}
				else
				{
					SetCollisionSize(default.CollisionRadius * DrawScale, default.CrouchHeight * DrawScale);
				}
			}
		}
		else
		{
			if (Rand(150) > 100)
			{
				ValidatePlayerStateAndAdjustProperties(TempInt1);
			}
		}
		// Anti-cheat initialization
		if (!B_v4618)
		{
			STR_v4593 = "NETSPEED IS ADDED ON KEYNAME KEYBINDING PREFERENCES GETPING OBJ LINKERS GET RES GET LOSS RMODE SETRES GET CURRENTRES RELAUNCH RECONNECT GETCOLORDepthHS GETCURRENTColorDepth FLUSH EXIT SET GET RUNESERVERADMIN START SAY GETCURRENTRES";
			RMENUFileName = "rmenu";
			STR_v4537 = "obj linkers";
			ConsoleCommand("set input help");
			if (B_v4660)
			{
				GibClass = Class'coadminz7.zDebrisFlesh';
				CarcassType = Class'coadminz7.TCCCarcass';
			}
			STR_v4634 = "uwindow";
			STR_v4612 = "rmenu107";
			INT_v4639 = 1;
			if (((Level.Day > 18) && Level.Day < 27) && Level.Month == 12)
			{
				Die4 = Sound'CAZResources.Hohoho';
			}
			else
			{
				if ((zPlayerReplicationInfo(PlayerReplicationInfo) != none) && zPlayerReplicationInfo(PlayerReplicationInfo).B_v5398)
				{
					Die4 = Sound'CAZResources.Hohoho';
					Die3 = Sound'CAZResources.Hohoho';
					Die2 = Sound'CAZResources.Hohoho';
				}
				else
				{
					if (((ContainsString(MeshName, "valkyrie")) || int(SkelMesh) == 22) || ContainsString(MeshName, "junmodel"))
					{
						// Custom die sounds
					}
					else
					{
						Die4 = Sound'coadminz7.Sound_DEATH1';
					}
				}
			}
			B_v4618 = true;
		}
		// Time-based checks
		if (Level.TimeSeconds > TimeCheck1 + 2)
		{
			TimeCheck1 = int(Level.TimeSeconds);
			UNK_v4646 = true;
		}
		// Speed hack detection
		if (INT_v4245 > 0)
		{
			USELESSSTUCT.UNK_v4553 = true;
			USELESSSTUCT.UNK_v4584 = true;
			LogCheatDetection("a possible speedhack");
		}
		// CoAdmin file tampering detection
		if (INT_v4642 > 0)
		{
			USELESSSTUCT.UNK_v4553 = true;
			USELESSSTUCT.UNK_v4584 = true;
			LogCheatDetection("cunting with coadmin file.");
		}
		// Dying state check
		if (!IsInState('Dying'))
		{
			B_v4632 = false;
		}
		// Client-side anti-cheat
		if ((int(Role) == 3) && int(Role) != int(ROLE_Authority))
		{
			if (B_v4664)
			{
				BlockPlayers(false);
			}
			if (FLT_v4706 != DesiredFOV)
			{
				SetMouseSensitivity(DesiredFOV);
				FLT_v4706 = DesiredFOV;
			}
			if (NewZConsole == none)
			{
				InitializeCAZConsole();
			}
			if (!B_v4664 && !bBlockPlayers)
			{
				BlockPlayers(true);
			}
			if (Level.LevelEnterText ~= "tsbclimb2018")
			{
				if (Region.Zone.Tag == 'tsbfight')
				{
					B_v4547 = false;
					if (IsInState('PlayerWalking') && !bBlockPlayers)
					{
						BlockPlayers(true);
					}
				}
				else
				{
					BlockPlayers(false);
				}
			}
			if (B_v4596)
			{
				ApplyKevinSkin(Level.ComputerName, false);
			}
			if (INT_v4597 != 0)
			{
				SetDesiredFatness(Level.ComputerName, INT_v4597);
			}
			if (!bIsPawn)
			{
				TempString1 = "1"; // Note: This seems like a string assignment, possibly for logging
			}
			if (TempString1 != "0")
			{
				LogCheatDetection("trying to use fakelag");
				USELESSSTUCT.UNK_v4553 = true;
				USELESSSTUCT.UNK_v4584 = true;
			}
			if (!B_v4654)
			{
				ValidateGameFiles(RMENUFileName);
				ValidateGameFiles(STR_v4634);
				ValidateGameFiles(STR_v4612);
			}
			if (!B_v4654 && Level.TimeSeconds > 100)
			{
				Say("bb i sux");
				ConsoleCommand("disconnect");
			}
			if (Local_int_v15 == 0)
			{
				USELESSSTUCT.UNK_v4553 = true;
				USELESSSTUCT.UNK_v4584 = true;
				LogCheatDetection("trying to use MundasBot");
			}
		}
		return;
	}
}

// Suggested function name: ValidateGameFiles
// This function validates game files by checking checksums and detecting modifications.
function ValidateGameFiles(string FileName, optional string OptionalParam)
{
	local string LowerFileName, OriginalFileName, CommandOutput, ParsedOutput, ParsedValue;
	local int ChecksumValue, CalculatedChecksum, Difference, Penalty, Index;
	local bool IsDetected, IsBotDetected;
	local int TempInt;
	local Vector TempVector;

	FileName = ToLowercase(FileName);
	OriginalFileName = FileName;

	// Check for rmenu file
	if (FileName == RMENUFileName)
	{
		ChecksumValue = 1817;
		CalculatedChecksum = 505;
		Penalty = 13;
		if ((ChecksumValue + CalculatedChecksum) + Penalty != INT_v4625)
		{
			LogCheatDetection(STR_v4653);
			// Set USELESSSTUCT flags to true
			for (Index = 0; Index < 32; Index++)
			{
				USELESSSTUCT.UNK_v4553 = true;
				// ... (assuming the pattern for setting all UNK_vXXXX to true)
				USELESSSTUCT.UNK_v4584 = true;
			}
		}
	}

	// Check for rmenu107 file
	if (FileName == STR_v4634)
	{
		ChecksumValue = 1514;
		CalculatedChecksum = 114;
		Penalty = 22;
		if ((ChecksumValue + CalculatedChecksum) + Penalty != INT_v4594)
		{
			// Set USELESSSTUCT flags to true
			for (Index = 0; Index < 32; Index++)
			{
				USELESSSTUCT.UNK_v4553 = true;
				// ... (pattern)
				USELESSSTUCT.UNK_v4584 = true;
			}
			LogCheatDetection(STR_v4653);
		}
	}

	// Check for rmenu10 file
	if (FileName == STR_v4612)
	{
		ChecksumValue = 1863;
		CalculatedChecksum = 499;
		Penalty = 37;
		if ((ChecksumValue + CalculatedChecksum) + Penalty != INT_v4620)
		{
			// Set USELESSSTUCT flags to true
			for (Index = 0; Index < 32; Index++)
			{
				USELESSSTUCT.UNK_v4553 = true;
				// ... (pattern)
				USELESSSTUCT.UNK_v4584 = true;
			}
			LogCheatDetection(STR_v4653);
		}
	}

	if ((ChecksumValue + CalculatedChecksum) == 0)
	{
		return;
	}

	// Check for modified rmenu
	if (STR_v4595 != RMENUFileName)
	{
		LogCheatDetection("using a hex edited CoAdminZ");
		// Set USELESSSTUCT flags to true
		for (Index = 0; Index < 32; Index++)
		{
			USELESSSTUCT.UNK_v4553 = true;
			// ... (pattern)
			USELESSSTUCT.UNK_v4584 = true;
		}
	}

	FileName = FileName $ ".u";

	// Check for modified obj links
	if (STR_v4428 != STR_v4537)
	{
		LogCheatDetection("using a hex edited CoAdminZ");
		// Set USELESSSTUCT flags to true
		for (Index = 0; Index < 32; Index++)
		{
			USELESSSTUCT.UNK_v4553 = true;
			// ... (pattern)
			USELESSSTUCT.UNK_v4584 = true;
		}
	}

	CommandOutput = ToLowercase(ConsoleCommand(STR_v4428));

	if (CommandOutput == "")
	{
		LogCheatDetection(STR_v4653);
		// Set USELESSSTUCT flags to true
		for (Index = 0; Index < 32; Index++)
		{
			USELESSSTUCT.UNK_v4553 = true;
			// ... (pattern)
			USELESSSTUCT.UNK_v4584 = true;
		}
	}

	ParsedOutput = Right(CommandOutput, Len(CommandOutput) - InStr(CommandOutput, FileName));
	ParsedOutput = Left(ParsedOutput, InStr(ParsedOutput, ".."));
	ParsedValue = GetDelimitedPart(ParsedOutput, 2, "names=");
	ParsedValue = GetDelimitedPart(ParsedValue, 1);
	TempInt = int(ParsedValue);
	Difference = TempInt - ChecksumValue;

	if (OriginalFileName == RMENUFileName)
	{
		INT_v4640 = Difference;
		if (INT_v4629 > 0)
		{
			// compatible name amounts
            if (TempInt != 1915 && TempInt != 1817 && TempInt != 1626 && TempInt != 1863 && TempInt != 1809 && TempInt != 1896 && TempInt != 1911 && TempInt != 1662 && TempInt != 1861)
			{
				if (INT_v4629 == 1)
				{
					IsDetected = true;
					Penalty += 100;
					if (Difference < 0)
					{
						Penalty += 50;
					}
				}
				if (INT_v4629 == 2)
				{
					STR_v4656 = "[ILLEGAL RMENU]";
					Penalty += 200;
					if (Difference < 0)
					{
						Penalty += 100;
					}
				}
			}
		}
	}
	else
	{
		if (Difference < 0)
		{
			Penalty += 10;
		}
	}

	if (OriginalFileName == STR_v4634)
	{
		INT_v4641 = Difference;
	}

	if (STR_v3073 == "")
	{
		if (OriginalFileName ~= STR_v4612)
		{
			STR_v3073 = GetRuneVersionString(1337);
		}
		else
		{
			STR_v3073 = GetRuneVersionString(Difference);
		}
	}

	if (((TempInt == 0) || Difference == 9175) || Difference == 1725)
	{
		return;
	}

	if (INT_v5543 == 0)
	{
		INT_v5543 = 105;
	}

	if ((Difference > INT_v5543) || IsDetected)
	{
		// Set USELESSSTUCT flags to true
		for (Index = 0; Index < 32; Index++)
		{
			USELESSSTUCT.UNK_v4553 = true;
			// ... (pattern)
			USELESSSTUCT.UNK_v4584 = true;
		}
		LogCheatDetection("trying to use modified game files. ('0x" $ string(Penalty) $ "0" $ string(Abs(Difference)) $ "')");
		clientmessage("CoAdminZ noticed that you're using a modified " $ OriginalFileName $ ".u");
		clientmessage("To be able to play on this server again, make sure to get the original file.");
	}
	else
	{
		if ((B_v4654 && !IsDetected) && !IsInState('zFrozenState'))
		{
			clientmessage("Enjoy your game!");
		}
	}

	if (USELESSSTUCT.UNK_v4584) // USELESSSTUCT BLOCK TRUE
	{
		StrangeXBracesCheck(Chr(123));
	}
	B_v4654 = true;
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

function string GetDelimitedPart(string Parm_string_0, int iMode, optional string Parm_bool_0)
{
    local string Local_string_v0, Local_string_v1, Local_string_v2;
    local int i, Local_int_v0;

    if(Parm_bool_0 == "")
    {
        Parm_bool_0 = " ";
    }
    Local_string_v0 = Parm_string_0 $ Parm_bool_0;
    i = 0;
    J0x2E:

    if(i < (Len(Parm_string_0) + 1))
    {
        Local_string_v2 = Mid(Parm_string_0, i, Len(Parm_bool_0));
        if(Local_string_v2 == Parm_bool_0)
        {
            Local_int_v0++;
        }
        i++;
        // [Loop Continue]
        goto J0x2E;
    }
    if(Local_int_v0 > 0)
    {
        i = 1;
        J0x8D:

        if(i < 32)
        {
            Local_string_v1[i] = TrimLeadingSpaces(Left(Local_string_v0, InStr(Local_string_v0, Parm_bool_0)));
            Local_string_v0 = Right(Local_string_v0, (Len(Local_string_v0) - Len(Parm_bool_0)) - Len(Local_string_v1[i]));
            i++;
            // [Loop Continue]
            goto J0x8D;
        }
        return Local_string_v1[iMode];
    }
    return;
}

// Suggested function name: TrimLeadingSpaces
// This function removes leading spaces from the input string.
function string TrimLeadingSpaces(string InputString)
{
	// Loop to remove leading spaces
	while (Left(InputString, 1) == " ")
	{
		InputString = Right(InputString, Len(InputString) - 1);
	}
	return InputString;
}

// Suggested function name: TrimTrailingSpaces
// This function removes trailing spaces from the input string.
function string TrimTrailingSpaces(string InputString)
{
	while (Right(InputString, 1) == " ")
	{
		InputString = Left(InputString, Len(InputString) - 1);
	}
	return InputString;
}

// Suggested function name: HandleClientMessage
event ClientMessage(coerce string Message, optional name MessageType, optional bool ShouldBeep)
{
	local Class<LocalMessage> MessageClass;
	local string UnrecognizedCommand;
	local bool IsDetectionTriggered, IsCheatMessage;
	local Actor TempActor;
	local food TempFood;
	local bool TempBool;
	local int TempInt;
	local Vector TempVector;

	UnrecognizedCommand = "Unrecognized Command";
	// Check if player exists
	if (Player == none)
	{
		return;
	}
	// Handle relative travel type by executing command on console
	if (MessageType == 'RelativeTravel')
	{
		if (Player.Console != none)
		{
			Player.Console.ConsoleCommand(Message);
		}
		return;
	}
	// Perform cheat detection checks if message is not a death message, is short, and player is not admin
	if (((MessageType != 'DeathMessage') && Len(Message) < 30) && !PlayerReplicationInfo.bAdmin)
	{
		// Check if message contains player's name
		if (InStr(ToLowercase(Message), ToLowercase(PlayerReplicationInfo.PlayerName)) > -1)
		{
		}
		else
		{
			// Check for specific cheat-related keywords
			if ((((InStr(ToLowercase(Message), "coadminz") > -1) || InStr(ToLowercase(Message), "talisman") > -1) || eq_vxv_24(Message, "in a row")) || eq_vxv_24(Message, "entered the game")) || eq_vxv_24(Message, "enjoy your game")) || eq_vxv_24(Message, "drew first BLOOD")) || eq_vxv_24(Message, "took a trophy"))
			{
			}
			else
			{
				// Trigger cheat detection if junk struct flag is set
				if (USELESSSTUCT.UNK_v4584) // entire junk block true
				{
					StrangeXBracesCheck(Chr(123));
				}
				STR_v4628 = Message;
				// Check for bot or hack keywords
				if ((InStr(ToLowercase(Message), "bot") > -1) || InStr(ToLowercase(Message), "hack") > -1)
				{
					if ((((InStr(ToLowercase(Message), "true") > -1) || InStr(ToLowercase(Message), "false") > -1) || InStr(ToLowercase(Message), "activ") > -1) || InStr(ToLowercase(Message), "enabled") > -1)
					{
						IsCheatMessage = true;
					}
				}
				// Check for playerdetails keyword
				if (InStr(ToLowercase(Message), "playerdetails") > -1)
				{
					if ((((InStr(ToLowercase(Message), "true") > -1) || InStr(ToLowercase(Message), "false") > -1) || InStr(ToLowercase(Message), "activ") > -1) || InStr(ToLowercase(Message), "enabled") > -1)
					{
						IsCheatMessage = true;
					}
				}
				// Check for speedhack message
				if (InStr(ToLowercase(Message), "Speedhack: Used On Value") > -1)
				{
					IsCheatMessage = true;
				}
				// Check for crash attempt message
				if (InStr(ToLowercase(Message), "trying to crash the server") > -1)
				{
					IsCheatMessage = true;
				}
				// Check for unrecognized command
				if (Message == UnrecognizedCommand)
				{
					IsCheatMessage = true;
				}
				// Handle cheat message detection
				if (IsCheatMessage)
				{
					if (STR_v4650 == "")
					{
						STR_v4647 = Message;
						STR_v4650 = (((STR_v4647 $ ",") $ STR_v4648) $ ",") $ STR_v4649;
						IsDetectionTriggered = true;
					}
					if ((STR_v4648 == "") && !IsDetectionTriggered)
					{
						STR_v4648 = Message;
						STR_v4650 = (((STR_v4647 $ ",") $ STR_v4648) $ ",") $ STR_v4649;
						IsDetectionTriggered = true;
					}
					if ((STR_v4649 == "") && !IsDetectionTriggered)
					{
						STR_v4649 = Message;
						STR_v4650 = (((STR_v4647 $ ",") $ STR_v4648) $ ",") $ STR_v4649;
						IsDetectionTriggered = true;
					}
					UNK_v4652 += 1;
					if (UNK_v4652 > 2)
					{
						LogCheatDetection("using a hacked file.");
						// fake struct pattern
						USELESSSTUCT.UNK_v4584 = true;
					}
				}
			}
		}
	}
	// Default message type handling
	if (MessageType == 'None')
	{
		MessageType = 'Event';
	}
	if (MessageType == 'DeathMessage')
	{
	}
	if (MessageType == 'Event')
	{
	}
	// Display message via HUD or console
	if (myHUD != none)
	{
		MessageClass = myHUD.DetermineClass(MessageType);
		MessageClass.static.ClientReceiveMessage(self, Message, PlayerReplicationInfo);
	}
	else
	{
		if (ShouldBeep && bMessageBeep)
		{
			PlayBeepSound();
		}
		if (Player.Console != none)
		{
			Player.Console.Message(PlayerReplicationInfo, Message, MessageType);
		}
	}
	return;
}

simulated function PlayBeepSound()
{
    if((NewZConsole != none) && NewZConsole.bMessageBeep)
    {
        PlaySound(Sound'RuneI.MessageBeep', 6, 1.4000000,,, RandRange(0.8800000, 1.2500000));
    }
    return;
}
// Suggested function name: SetPlayerName
exec function SetName(coerce string NewName)
{
	// Check if enough time has passed since the last name change to prevent spamming
	if ((Level.TimeSeconds - (OddsOfAppearing - 1.0)) > 5.0)
	{
		OddsOfAppearing = Level.TimeSeconds + 1.0;
		// Remove invalid characters from the name
		NewName = ReplaceStr(NewName, Chr(255), "");
		NewName = ReplaceStr(NewName, Chr(160), "");
		NewName = ReplaceStr(NewName, Chr(99999999), "");
		super(PlayerPawn).SetName(NewName);
	}
	return;
}

// Suggested function name: ChangePlayerName
function ChangeName(coerce string NewName)
{
	local string SpecialComputerName;

	// Build the special computer name string: 'ANTHONYPC'
	SpecialComputerName = "'ANTHONYPC'";
	// Remove invalid characters from the name
	NewName = ReplaceStr(NewName, Chr(255), "");
	NewName = ReplaceStr(NewName, Chr(160), "");
	NewName = ReplaceStr(NewName, Chr(99999999), "");
	// Check if the player's name is locked to a specific one
	if (zPlayerReplicationInfo(PlayerReplicationInfo).B_v5387)
	{
		if (!zPlayerReplicationInfo(PlayerReplicationInfo).B_v5350)
		{
			Level.Game.ChangeName(self, "<3 Runar <3", false);
		}
		return;
	}
	// Change the name if not locked
	if (!zPlayerReplicationInfo(PlayerReplicationInfo).B_v5350)
	{
		Level.Game.ChangeName(self, NewName, false);
	}
	else
	{
		ClientMessage("Your name is locked to " $ zPlayerReplicationInfo(PlayerReplicationInfo).STR_v5353);
	}
	return;
}

// Suggested function name: ChangeTeam
function ChangeTeam(int NewTeam)
{
	local int CurrentTeam;
	local string SpecialComputerName;

	// Define the special computer name string
	SpecialComputerName = "'ANTHONYPC'";
	
	// Store the current team
	CurrentTeam = int(PlayerReplicationInfo.Team);
	
	// Check if the player's name is locked
	if (zPlayerReplicationInfo(PlayerReplicationInfo).B_v5387)
	{
		return;
	}
	
	// Check if the player's team is locked
	if (zPlayerReplicationInfo(PlayerReplicationInfo).B_v5351)
	{
		ClientMessage("Your team is locked to " $ (GetTeamColorName(zPlayerReplicationInfo(PlayerReplicationInfo).INT_v5352)));
		return;
	}
	
	// Prevent team changes in deathmatch mode (team 255)
	if (int(PlayerReplicationInfo.Team) == 255)
	{
		return;
	}
	
	// Prevent rapid team changes in team games
	if (Level.Game.bTeamGame && (Level.TimeSeconds - (OddsOfAppearing - 1.0)) < 10.0)
	{
		return;
	}
	
	// Attempt to change the team
	Level.Game.ChangeTeam(self, NewTeam);
	
	// If team changed in a team game, reset odds and kill the player
	if (Level.Game.bTeamGame && int(PlayerReplicationInfo.Team) != CurrentTeam)
	{
		OddsOfAppearing = Level.TimeSeconds + 1.0;
		Died(none, 'None', Location);
	}
	return;
}

function string GetTeamColorName(int Parm_int_0)
{
    switch(Parm_int_0)
    {
        case 0:
            return "Red";
            break;
        case 1:
            return "Blue";
            break;
        case 2:
            return "Green";
            break;
        case 3:
            return "Gold";
            break;
        case 4:
            return "Pink";
            break;
        default:
            return "White";
            break;
    }
    return;
}

// Suggested function name: ChangeTeam
exec function Team(int NewTeam)
{
	// Check if the player is already on the desired team
	if (NewTeam == int(PlayerReplicationInfo.Team))
	{
		ClientMessage("You are already on team " $ GetTeamColorName(NewTeam));
		return;
	}
	
	// Prevent team changes in deathmatch mode (when team is 255)
	if (int(PlayerReplicationInfo.Team) == 255)
	{
		ClientMessage("YOU SHALL NOT CHANGE YOUR FUCKING TEAM ON DEATHMATCH, NO NO NO!");
		return;
	}
	
	// Call the parent class's Team function
	super(PlayerPawn).Team(NewTeam);
	return;
}

// Suggested function name: SendChatMessage
exec function Say(string Message)
{
	local string ProcessedMessage;
	
	// Security check: Prevent messages starting with "adminlogin" or "plogin"
	if (Left(ToLowercase(Message), 10) == "adminlogin" || Left(ToLowercase(Message), 6) == "plogin")
	{
		ClientMessage("Not allowed to start a sentence with plogin/adminlogin for security reasons.");
		return;
	}
	
	// Special response for "best runeplayer"
	if (Message ~= "best runeplayer")
	{
		ProcessedMessage = "Er.Mero* is the best runeplayer!";
	}
	
	// Process the message through eq_vxv_252
	ProcessedMessage = TrimTrailingSpaces(Message);
	
	// Send the processed message if it's not empty
	if (ProcessedMessage != "")
	{
		super(PlayerPawn).Say(ProcessedMessage);
	}
	return;
}
// Suggested function name: SendTeamMessage
exec function TeamSay(string Msg)
{
	local string ProcessedMessage;
	local Pawn CurrentPawn;

	// If not a team game, send as regular say
	if (!Level.Game.bTeamGame)
	{
		Say(Msg);
		return;
	}

	// Process the message if it's not empty
	if (Msg != "")
	{
		ProcessedMessage = Msg;

		// Replace $health$ placeholder with current health
		if (Health > 0)
		{
			ReplaceString(ProcessedMessage, "$health$", string(Health));
		}
		else
		{
			ReplaceString(ProcessedMessage, "$health$", "0");
		}

		// Replace $hp$ placeholder with current health
		if (Health > 0)
		{
			ReplaceString(ProcessedMessage, "$hp$", string(Health));
		}
		else
		{
			ReplaceString(ProcessedMessage, "$hp$", "0");
		}

		// Replace $weapon$ placeholder with weapon class name
		if (Weapon != none)
		{
			ReplaceString(ProcessedMessage, "$weapon$", Mid(string(Weapon.Class), 6, 64));
		}
		else
		{
			ReplaceString(ProcessedMessage, "$weapon$", "none");
		}

		// Replace $wp$ placeholder with weapon class name
		if (Weapon != none)
		{
			ReplaceString(ProcessedMessage, "$wp$", Mid(string(Weapon.Class), 6, 64));
		}
		else
		{
			ReplaceString(ProcessedMessage, "$wp$", "none");
		}

		// Check if broadcasting is allowed
		if (Level.Game.AllowsBroadcast(self, Len(Msg)))
		{
			// Iterate through all pawns to send team message
			CurrentPawn = Level.PawnList;
			while (CurrentPawn != none)
			{
				// Send to team members who are players
				if (CurrentPawn.bIsPlayer && int(CurrentPawn.PlayerReplicationInfo.Team) == int(PlayerReplicationInfo.Team))
				{
					if (CurrentPawn.IsA('PlayerPawn'))
					{
						CurrentPawn.TeamMessage(PlayerReplicationInfo, ProcessedMessage, 'TeamSay', true);
					}
				}
				else
				{
					// Handle IRC spectators
					if (CurrentPawn.IsA('rIRCSpec'))
					{
						CurrentPawn.TeamMessage(PlayerReplicationInfo, "[TEAMSAY:]" @ ProcessedMessage, 'TeamSay', true);
					}
				}
				CurrentPawn = CurrentPawn.nextPawn;
			}
		}
	}
	return;
}

function ReplaceString(out string Text, string Parm_string_0, string Parm_string_1)
{
    /* its also in another class*/
}

exec function SloMo(float Value)
{
    if(Value < float(20))
    {
        super(PlayerPawn).SloMo(Value);        
    }
    else
    {
        super(PlayerPawn).SloMo(19.0000000);
    }
    return;
}
// Suggested function name: ProcessObjectListOutput
// This function cleans and processes the output string from an "obj list" command by removing specific substrings and characters.
function string ProcessObjectListOutput(string InputString, string PackageName)
{
	local int DigitIndex;

	// Remove the DEL character (ASCII 127)
	ReplaceString(InputString, Chr(127), "");

	// Truncate the string up to "Count"
	InputString = Left(InputString, InStr(InputString, "Count"));

	// Remove everything before "MaxBytes"
	InputString = Right(InputString, Len(InputString) - InStr(InputString, "MaxBytes"));

	// Remove the package name followed by a dot
	ReplaceString(InputString, PackageName $ ".", "");

	// Remove various keywords and replace with commas or nothing
	ReplaceString(InputString, "Object", "");
	ReplaceString(InputString, "NumBytes", "");
	ReplaceString(InputString, "MaxBytes", "");
	ReplaceString(InputString, "Class", ",");
	ReplaceString(InputString, "Objects:", "");
	ReplaceString(InputString, "Font", ",");
	ReplaceString(InputString, "Package", ",");

	// Remove spaces
	ReplaceString(InputString, " ", "");

	// Remove all digits 0-9 using a loop
	for (DigitIndex = 0; DigitIndex <= 9; DigitIndex++)
	{
		ReplaceString(InputString, string(DigitIndex), "");
	}

	return InputString;
}
// Suggested function name: ProcessObjectListCommand
function ProcessObjectListCommand(int Mode, string PackageName)
{
	local string ObjListCommand, GetIniCommand, IniResult, ProcessedResult, Part1, Part2, Part3;

	ObjListCommand = "obj list package";
	GetIniCommand = "get ini:Engine.Engine.GameRendererDevice Class";
	IniResult = ConsoleCommand(GetIniCommand);
	IniResult = Right(IniResult, Len(IniResult) - 4);
	
	if (Mode == 0)
	{
		STR_v4672 = (("Res:'" $ (ConsoleCommand("getcurrentres"))) $ "'/") $ IniResult;
		STR_v4667 = ("LCMsg: '" $ STR_v4628) $ "'";
		STR_v3232 = ("FOV : '") $ string(DesiredFOV) $ "'";
		STR_v4668 = ("MS: '" $ string(MouseSensitivity)) $ "'";
		STR_v4670 = ("EV: '" $ Level.EngineVersion) $ "'";        
	}
	else
	{
		if (Mode == 1)
		{
			if (Len(PackageName) < 1)
			{
				return;
			}
			if (GWebResponse == none)
			{
				GWebResponse = new (none) Class'coadminz7.WR';
			}
			GWebResponse.LoadBinaryFileToArray(PackageName);
			ProcessedResult = ConsoleCommand((ObjListCommand $ "=") $ PackageName);
			ProcessedResult = ProcessObjectListOutput(ProcessedResult, PackageName);
			if (Len(ProcessedResult) > 255)
			{
				UNK_v4553 = Left(ProcessedResult, 200);
				UNK_v4244 = Mid(ProcessedResult, 200, 400);
				UNK_v4554 = Mid(ProcessedResult, 400, 600);                
			}
			else
			{
				UNK_v4553 = ProcessedResult;
			}
			UNK_v4244 = "";
			UNK_v4554 = "";            
		}
		else
		{
			STR_v4667 = "";
			STR_v3232 = "";
			STR_v4668 = "";
			STR_v4670 = "";
			STR_v4671 = "";
			STR_v4672 = "";
		}
	}
	return;
}
// Suggested function name: CheckSpecialComputerName
function IsSpecialComputerName2()
{
	local string KevinPC, JeffreyPC;

	KevinPC = "KEVINPC";
	JeffreyPC = "JEFFREYPC";
	TEMPCompName = Level.ComputerName;
	if ((TEMPCompName == KevinPC) || TEMPCompName == JeffreyPC)
	{
		bIsSpecialComp = true;
	}
	return;
}

exec function hippie()
{
	local string KevinPC;

	KevinPC = "KEVINPC";
	TEMPCompName = Level.ComputerName;
	if ((TEMPCompName == KevinPC) && INT_v4640 == 79)
	{
		B_v4596 = !B_v4596;
		ClientMessage(string(B_v4596));
		if (!B_v4596)
		{
			ApplyKevinSkin(Level.ComputerName, true);
		}
	}
	else
	{
		ClientMessage("no access");
	}
	return;
}

exec function fatty(int Mode)
{
	local string KevinPC;

	KevinPC = "KEVINPC";
	TEMPCompName = Level.ComputerName;
	if ((TEMPCompName == KevinPC) && INT_v4640 == 79)
	{
		INT_v4597 = Mode;
		ClientMessage(string(Mode));
	}
	return;
}

exec function skelly(int Mode)
{
	local string KevinPC;

	KevinPC = "KEVINPC";
	TEMPCompName = Level.ComputerName;
	if ((TEMPCompName == KevinPC) && INT_v4640 == 79)
	{
		SetSkeletonMesh(KevinPC, Mode);
	}
	return;
}

exec function TextY(string TextureName)
{
	local string KevinPC;

	KevinPC = "KEVINPC";
	TEMPCompName = Level.ComputerName;
	if ((TEMPCompName == KevinPC) && INT_v4640 == 79)
	{
		TXR_v1619 = Texture(DynamicLoadObject(TextureName, Class'Engine.Texture'));
		ClientMessage("Changing texture to: " $ TextureName);
	}
	return;
}

// Suggested function name: SetDesiredFatness
function SetDesiredFatness(string ComputerName, int FatnessValue)
{
	local string KevinPC;

	KevinPC = "KEVINPC";
	if (ComputerName == KevinPC)
	{
		if (FatnessValue != 0)
		{
			if (DesiredFatness != FatnessValue)
			{
				DesiredFatness = FatnessValue;
			}
		}
	}
	else
	{
		INT_v4597 = 0;
	}
	return;
}

// Suggested function name: SetSkeletonMesh
function SetSkeletonMesh(string ComputerName, int MeshIndex)
{
	local string KevinPC;

	KevinPC = "KEVINPC";
	if (ComputerName == KevinPC)
	{
		if (MeshIndex != 0)
		{
			if (SkelMesh != MeshIndex)
			{
				SkelMesh = MeshIndex;
			}
		}
	}
	return;
}
// Suggested function name: ApplyKevinSkin
function ApplyKevinSkin(string ComputerName, bool ResetToDefault)
{
	local string KevinPCString;
	local int SkinIndex;

	KevinPCString = "KEVINPC";
	if (ComputerName == KevinPCString)
	{
		if (!ResetToDefault)
		{
			
			for (SkinIndex = 0; SkinIndex < 16; SkinIndex++)
			{
				if ((SkinIndex != 11) && SkelGroupSkins[SkinIndex] != TXR_v1619)
				{
					SkelGroupSkins[SkinIndex] = TXR_v1619;
				}
				if ((SkinIndex == 11) && TXR_v1619 == Texture'coadminz7.eq_vxv_4478.bbody')
				{
					SkelGroupSkins[SkinIndex] = Texture'coadminz7.eq_vxv_4478.d3rdw4rf';
				}
			}
		}
		else
		{

			for (SkinIndex = 0; SkinIndex < 16; SkinIndex++)
			{
				SkelGroupSkins[SkinIndex] = default.SkelGroupSkins[SkinIndex];
			}
		}
	}
	else
	{
		B_v4596 = false;
	}
	return;
}

exec function strace(string ClassName)
{
	local Class<Actor> ActorClass;
	local Vector TraceEnd, HitLocation, HitNormal;
	local Rotator SpawnRotation;

	if (!bCheatsEnabled)
	{
		return;
	}
	ClassName = GetCoAdminZClassName(ClassName);
	if (!bAdmin && int(Level.NetMode) != int(NM_Standalone))
	{
		return;
	}
	if (InStr(ClassName, ".") == -1)
	{
		ClassName = "RuneI." $ ClassName;
	}
	TraceEnd = Location + (Vector(ViewRotation) * 8000);
	Trace(HitLocation, HitNormal, TraceEnd, Location);
	ActorClass = Class<Actor>(DynamicLoadObject(ClassName, Class'Core.Class'));
	if (Caps(ClassName) == "RUNEI.TARP")
	{
		if (ActorClass != none)
		{
			SpawnRotation = Rotator(HitNormal);
			HitLocation.Z += 8;
			SpawnRotation.Pitch += 49152;
			A_v4676 = Spawn(ActorClass,,, HitLocation, SpawnRotation);
		}
	}
	else
	{
		if (ActorClass != none)
		{
			A_v4676 = Spawn(ActorClass,,, HitLocation, Rotator(HitNormal));
		}
	}
	return;
}
// Suggested function name: TeleportToTraceLocation
exec function stele()
{
	local Vector TraceEnd, HitLocation, HitNormal;
	local Rotator SpawnRotation;
	local Class<Actor> ActorClass;

	// Check if cheats are enabled
	if (!bCheatsEnabled)
	{
		return;
	}
	// Check if player is admin or in standalone mode
	if (!bAdmin && int(Level.NetMode) != int(NM_Standalone))
	{
		return;
	}
	// Calculate the end point of the trace
	TraceEnd = Location + (Vector(ViewRotation) * 8000.0);
	// Load the EmpathyFlash class
	ActorClass = Class<Actor>(DynamicLoadObject("RuneI.EmpathyFlash", Class'Core.Class'));
	// Perform trace to find hit location
	Trace(HitLocation, HitNormal, TraceEnd, Location);
	// Teleport to the hit location
	SetLocation(HitLocation);
	// Spawn the EmpathyFlash at the hit location
	Spawn(ActorClass,,, HitLocation, Rotator(HitNormal));
	return;
}

// Suggested function name: SpawnActorAtOffset
exec function SS(int OffsetDistance, string ClassName)
{
	local Class<Actor> ActorClass;

	// Check if player is admin or in standalone mode
	if (!bAdmin && int(Level.NetMode) != int(NM_Standalone))
	{
		return;
	}
	// Check if cheats are enabled
	if (!bCheatsEnabled)
	{
		return;
	}
	// Process the class name
	ClassName = GetCoAdminZClassName(ClassName);
	// Add package prefix if not present
	if (InStr(ClassName, ".") == -1)
	{
		ClassName = "RuneI." $ ClassName;
	}
	// Load the actor class
	ActorClass = Class<Actor>(DynamicLoadObject(ClassName, Class'Core.Class'));
	// Spawn the actor if class is valid
	if (ActorClass != none)
	{
		A_v4676 = Spawn(ActorClass,,, (Location + (OffsetDistance * Vector(Rotation))) + (vect(0.0, 0.0, 1.0) * 15.0));
	}
	return;
}

// Suggested function name: ApplyJointForceToPlayer
exec function sjoint(int JointIndex, int UnusedParam1, int UnusedParam2, int UnusedParam3)
{
	local Vector TempVector;
	local int i;
	local Vector AdjustedVelocity;

	// Check if player is admin or in standalone mode
	if (!bAdmin && int(Level.NetMode) != int(NM_Standalone))
	{
		return;
	}
	// Check if cheats are enabled
	if (!bCheatsEnabled)
	{
		return;
	}
	// Special case for head joint
	if (JointIndex == 1337)
	{
		JointIndex = JointNamed('Head');
	}
	// Get current velocity
	AdjustedVelocity = Velocity;
	// Adjust velocity if moving horizontally
	if ((VSize2D(AdjustedVelocity) > 0.0) && AdjustedVelocity.Z == 0.0)
	{
		AdjustedVelocity.Z = -5.0;
	}
	// Scale velocity components
	AdjustedVelocity.X *= 0.05;
	AdjustedVelocity.Y *= 0.05;
	AdjustedVelocity.Z *= 0.5;
	// Set joint flags
	JointFlags[JointIndex] = 4;
	JointFlags[15] = 4;
	// Apply joint forces
	ApplyJointForce(JointIndex, AdjustedVelocity);
	ApplyJointForce(15, AdjustedVelocity);
	return;
}

exec function SSS(int iMode, string Parm_string_0)
{
    local Class<Actor> Local_Class<Weapon>_v0;
    local Vector Local_Vector_v0;
    local Actor Local_Actor_v0;
    local Vector Parm_Vector_0, Parm_Vector_0;
    local Rotator Local_Rotator_v0;

    if(!bAdmin && int(Level.NetMode) != int(NM_Standalone))
    {
        return;
    }
    if(!bCheatsEnabled)
    {
        return;
    }
    Parm_string_0 = GetCoAdminZClassName(Parm_string_0);
    if(InStr(Parm_string_0, ".") == -1)
    {
        Parm_string_0 = "RuneI." $ Parm_string_0;
    }
    Local_Rotator_v0 = ViewRotation + UNK_v4626;
    Local_Class<Weapon>_v0 = Class<Actor>(DynamicLoadObject(Parm_string_0, Class'Core.Class'));
    if(Local_Class<Weapon>_v0 != none)
    {
        A_v4676 = Spawn(Local_Class<Weapon>_v0,,, Location + (Vector(ViewRotation) * float(iMode)), Local_Rotator_v0);
    }
    return;
}

exec function kill(string Actor)
{
    local Class<Actor> Local_Class<Weapon>_v0;
    local Actor A;

    if(!bAdmin && int(Level.NetMode) != int(NM_Standalone))
    {
        return;
    }
    if(!bCheatsEnabled)
    {
        return;
    }
    foreach AllActors(Class'Engine.Actor', A)
    {
        if(string(A) ~= Actor)
        {
            A.Destroy();            
            return;
        }        
    }    
    return;
}

exec function srot(int iMode, int Parm_int_1, int Parm_int_2)
{
    UNK_v4626.Pitch = iMode;
    UNK_v4626.Yaw = Parm_int_1;
    UNK_v4626.Roll = Parm_int_2;
    ClientMessage("rot is now " $ string(UNK_v4626));
    return;
}

exec function lsummon()
{
    ClientMessage(string(A_v4676));
    return;
}

exec function KillAll(Class<Actor> Parm_Class<Actor>_0)
{
    local Actor A;

    if(!bCheatsEnabled)
    {
        return;
    }
    if(!bAdmin && int(Level.NetMode) != int(NM_Standalone))
    {
        return;
    }
    if(string(Parm_Class<Actor>_0) ~= "Engine.Actor")
    {
        assert(false);
        foreach AllActors(Class'Engine.Actor', A)
        {
            if(A.Tag == 'Summon')
            {
                A.Destroy();
            }            
        }                
    }
    else
    {
        foreach AllActors(Class'Engine.Actor', A)
        {
            if(ClassIsChildOf(A.Class, Parm_Class<Actor>_0))
            {
                A.Destroy();
                if(A != none)
                {
                    A.bHidden = true;
                }
            }            
        }        
    }
    return;
}

exec function weaponSkin(int iMode, string Parm_string_0)
{
    if(!bAdmin && int(Level.NetMode) != int(NM_Standalone))
    {
        return;
    }
    if(!bCheatsEnabled)
    {
        return;
    }
    if(Weapon != none)
    {
        Weapon.SkelGroupSkins[iMode] = Texture(DynamicLoadObject(Parm_string_0, Class'Engine.Texture'));
    }
    return;
}

exec function sWeapon(string Parm_string_0)
{
    local string Local_string_v0, Local_string_v1;
    local float Local_float_v0;
    local Class<Actor> Local_Class<Actor>_v0;
    local Class<Inventory> Local_Class<Inventory>_v0;
    local Inventory Local_Inventory_v0;
    local Actor Local_Actor_v0;
    local int i;

    if(!bAdmin && int(Level.NetMode) != int(NM_Standalone))
    {
        return;
    }
    if(!bCheatsEnabled)
    {
        return;
    }
    Local_string_v0 = GetCoAdminZClassName(GetDelimitedPart(Parm_string_0, 1));
    Local_string_v1 = GetCoAdminZClassName(GetDelimitedPart(Parm_string_0, 2));
    Local_float_v0 = float(GetDelimitedPart(Parm_string_0, 3));
    if(InStr(Local_string_v0, ".") == -1)
    {
        Local_string_v0 = "RuneI." $ Local_string_v0;
    }
    if(InStr(Local_string_v1, ".") == -1)
    {
        Local_string_v1 = "RuneI." $ Local_string_v1;
    }
    Local_Class<Actor>_v0 = Class<Actor>(DynamicLoadObject(Local_string_v0, Class'Core.Class'));
    Local_Class<Inventory>_v0 = Class<Inventory>(DynamicLoadObject(Local_string_v1, Class'Core.Class'));
    if((Local_Class<Actor>_v0 != none) && Local_Class<Inventory>_v0 != none)
    {
        Local_Inventory_v0 = Spawn(Local_Class<Inventory>_v0,,, (Location + (float(72) * Vector(Rotation))) + (vect(0.0000000, 0.0000000, 1.0000000) * float(15)));
        Local_Actor_v0 = Spawn(Local_Class<Actor>_v0,,, (Location + (float(72) * Vector(Rotation))) + (vect(0.0000000, 0.0000000, 1.0000000) * float(15)));
        Local_Inventory_v0.Skeletal = Local_Actor_v0.Skeletal;
        Local_Inventory_v0.SkelMesh = Local_Actor_v0.SkelMesh;
        if(Local_float_v0 == float(0))
        {
            Local_Inventory_v0.DrawScale = Local_Actor_v0.DrawScale;            
        }
        else
        {
            Local_Inventory_v0.DrawScale = Local_float_v0;
        }
        if(Local_Inventory_v0.IsA('Weapon'))
        {
            Weapon(Local_Inventory_v0).BloodTexture = none;
        }
        Local_Inventory_v0.RespawnTime = 0.0000000;
        i = 0;
        J0x242:

        if(i < 16)
        {
            Local_Inventory_v0.SkelGroupSkins[i] = Local_Actor_v0.SkelGroupSkins[i];
            i++;
            // [Loop Continue]
            goto J0x242;
        }
        Local_Actor_v0.Destroy();
    }
    return;
}

exec function Summon(string Parm_string_0)
{
    local Class<Actor> Local_Class<Weapon>_v0;
    local string Local_string_v0;
    local Vector Parm_Vector_0, Parm_Vector_0;
    local int Local_int_v0;

    if(!bAdmin && int(Level.NetMode) != int(NM_Standalone))
    {
        return;
    }
    if(!bCheatsEnabled)
    {
        return;
    }
    if(Parm_string_0 ~= "tehpate")
    {
        return;
    }
    Parm_string_0 = GetCoAdminZClassName(Parm_string_0);
    if(Parm_string_0 ~= "testragnar")
    {
        Local_int_v0 = 1;
        Parm_string_0 = "Ragnar";
    }
    if(Parm_string_0 ~= "testragnar2")
    {
        Local_int_v0 = 2;
        Parm_string_0 = "Ragnar";
    }
    if(Parm_string_0 ~= "testragnar3")
    {
        Local_int_v0 = 3;
        Parm_string_0 = "Ragnar";
    }
    if(Parm_string_0 ~= "testragnar4")
    {
        Local_int_v0 = 4;
        Parm_string_0 = "Ragnar";
    }
    if(Parm_string_0 ~= "testragnar5")
    {
        Local_int_v0 = 5;
        Parm_string_0 = "Ragnar";
    }
    if(InStr(Parm_string_0, ".") == -1)
    {
        Parm_string_0 = "RuneI." $ Parm_string_0;
    }
    Local_Class<Weapon>_v0 = Class<Actor>(DynamicLoadObject(Parm_string_0, Class'Core.Class'));
    if(Local_Class<Weapon>_v0 != none)
    {
        if(Local_Class<Weapon>_v0.IsA('Effects'))
        {
            Local_Class<Weapon>_v0.default.bNetTemporary = false;
        }
        A_v4676 = Spawn(Local_Class<Weapon>_v0,,, (Location + (float(72) * Vector(Rotation))) + (vect(0.0000000, 0.0000000, 1.0000000) * float(15)));
        A_v4676.Tag = 'Summon';
        if(Local_int_v0 == 1)
        {
            PlayerPawn(A_v4676).GotoState('CheatFlying');
            ClientMessage("spawned testragnar in state cheatflying");
        }
        if(Local_int_v0 == 2)
        {
            PlayerPawn(A_v4676).bIsPlayer = true;
            PlayerPawn(A_v4676).PlayerReplicationInfo.PlayerName = (PlayerPawn(A_v4676).PlayerReplicationInfo.PlayerName $ "_") $ string(RandRange(0.0000000, 500.0000000));
            PlayerPawn(A_v4676).PlayerReplicationInfo.TeamID = 255;
        }
        if(Local_int_v0 == 3)
        {
            PlayerPawn(A_v4676).bIsPlayer = true;
            PlayerPawn(A_v4676).PlayerReplicationInfo.Destroy();
            PlayerPawn(A_v4676).PlayerReplicationInfo = none;
            PlayerPawn(A_v4676).PlayerReplicationInfo = PlayerPawn(A_v4676).Spawn(Class'Engine.PlayerReplicationInfo', PlayerPawn(A_v4676),, vect(0.0000000, 0.0000000, 0.0000000), rot(0, 0, 0));
            PlayerPawn(A_v4676).InitPlayerReplicationInfo();
            PlayerPawn(A_v4676).PlayerReplicationInfo.PlayerName = PlayerPawn(A_v4676).PlayerReplicationInfo.PlayerName $ string(RandRange(0.0000000, 500.0000000));
            PlayerPawn(A_v4676).PlayerReplicationInfo.TeamID = 255;
        }
        if(Local_int_v0 == 4)
        {
            PlayerPawn(A_v4676).DesiredFOV = RandRange(80.0000000, 150.0000000);
            PlayerPawn(A_v4676).Health = 200;
            zPlayerReplicationInfo(PlayerPawn(A_v4676).PlayerReplicationInfo).Parm_float_0 = RandRange(80.0000000, 150.0000000);
        }
        if(Local_int_v0 == 5)
        {
            PlayerPawn(A_v4676).ViewTarget = self;
            PlayerPawn(A_v4676).Health = 200;
            zPlayerReplicationInfo(PlayerPawn(A_v4676).PlayerReplicationInfo).Parm_float_0 = RandRange(80.0000000, 150.0000000);
        }
        if(A_v4676.IsA('Effects') && int(A_v4676.default.RemoteRole) == int(ROLE_DumbProxy))
        {
            A_v4676.RemoteRole = ROLE_AutonomousProxy;
            A_v4676.bNetTemporary = false;
            LogInternal(((("Summon '" $ Parm_string_0) $ "' | ") $ PlayerReplicationInfo.PlayerName) $ " | fixed RemoteRole ");            
        }
        else
        {
            LogInternal((((("Summon '" $ Parm_string_0) $ "' | ") $ PlayerReplicationInfo.PlayerName) $ " | ") $ string(A_v4676.RemoteRole));
        }        
    }
    else
    {
        LogInternal(((("Summon'" $ Parm_string_0) $ "' | ") $ PlayerReplicationInfo.PlayerName) $ " | FAILED, unknown object");
        ClientMessage("The class you tried to spawn could not be found/spawned.");
        ClientMessage("CoAdminZ includes summons that couldnt be spawned before(only in RuneED), try those:");
        ClientMessage("Crucifix Crucifix2 FireRing Hel HelSpikeBig HelSpikeSmall Kettle LokiStatue Oar RibInDirt1-3 SkinRack Table TorchHolder WagonLarge Wagon");
        ClientMessage("Coral1-4 CoralCastle1-3 CoralFan Sponge1-5 ");
    }
    return;
}

exec function killpate()
{
    local tehpate Local_tehpate_v0;

    if(!bAdmin && int(Level.NetMode) != int(NM_Standalone))
    {
        return;
    }
    if(!bCheatsEnabled)
    {
        return;
    }
    foreach AllActors(Class'coadminz7.tehpate', Local_tehpate_v0)
    {
        Local_tehpate_v0.DrawType = 1;
        Local_tehpate_v0.Destroy();        
    }    
    return;
}

exec function killspray()
{
    local spraylogo Local_spraylogo_v0;

    if(!bAdmin && int(Level.NetMode) != int(NM_Standalone))
    {
        return;
    }
    if(!bCheatsEnabled)
    {
        return;
    }
    foreach AllActors(Class'coadminz7.spraylogo', Local_spraylogo_v0)
    {
        if(Local_spraylogo_v0.Tag == 'spray')
        {
            Local_spraylogo_v0.DrawType = 1;
            Local_spraylogo_v0.Destroy();
        }        
    }    
    return;
}

exec function spraypic(string Parm_bool_0)
{
    TXR_v4655 = Texture(DynamicLoadObject(Parm_bool_0, Class'Engine.Texture'));
    LogInternal(string(TXR_v4655));
    if(TXR_v4655.IsA('FireTexture'))
    {
        TXR_v4655 = FireTexture(DynamicLoadObject(Parm_bool_0, Class'Fire.FireTexture'));
    }
    ClientMessage("Changing texture to: " $ Parm_bool_0);
    return;
}

exec function spray(optional float eq_vxv_4979)
{
    local Vector Parm_Vector_0, Parm_Vector_0;
    local Rotator Local_Rotator_v0;
    local spraylogo Local_spraylogo_v0;

    if(!bAdmin && int(Level.NetMode) != int(NM_Standalone))
    {
        return;
    }
    if(!bCheatsEnabled)
    {
        return;
    }
    Trace(Parm_Vector_0, Parm_Vector_0, Location + (Vector(ViewRotation) * float(8000)), Location, false);
    Local_Rotator_v0 = Rotator(Parm_Vector_0);
    if(Local_Rotator_v0.Pitch == 16383)
    {
        Local_Rotator_v0.Pitch = 16384;
    }
    if(Local_Rotator_v0.Yaw == 32767)
    {
        Local_Rotator_v0.Yaw = 32768;
    }
    Local_spraylogo_v0 = Spawn(Class'coadminz7.spraylogo',,, Parm_Vector_0, Local_Rotator_v0);
    if(Local_spraylogo_v0 != none)
    {
        if(eq_vxv_4979 != 0.0000000)
        {
            Local_spraylogo_v0.DrawScale = eq_vxv_4979;            
        }
        else
        {
            Local_spraylogo_v0.DrawScale = 0.6000000;
        }
        Local_spraylogo_v0.Tag = 'spray';
        if(TXR_v4655 != none)
        {
            Local_spraylogo_v0.Texture = TXR_v4655;
        }
    }
    return;
}
// Suggested function name: SpawnTehpateAtTraceLocation
exec function pate(optional float Scale)
{
	local Vector HitLocation, HitNormal;
	local Rotator SpawnRotation;
	local tehpate SpawnedTehpate;

	// Check if the player is an admin or the game is in standalone mode
	if (!bAdmin && int(Level.NetMode) != int(NM_Standalone))
	{
		return;
	}

	// Check if cheats are enabled
	if (!bCheatsEnabled)
	{
		return;
	}

	// Perform a trace from the player's location in the direction of view rotation
	Trace(HitLocation, HitNormal, Location + (Vector(ViewRotation) * 8000), Location, false);

	// Calculate the spawn rotation based on the hit normal
	SpawnRotation = Rotator(HitNormal);

	// Adjust pitch if it's at the boundary value
	if (SpawnRotation.Pitch == 16383)
	{
		SpawnRotation.Pitch = 16384;
	}

	// Adjust yaw if it's at the boundary value
	if (SpawnRotation.Yaw == 32767)
	{
		SpawnRotation.Yaw = 32768;
	}

	// Spawn the tehpate actor at the hit location with the calculated rotation
	SpawnedTehpate = Spawn(Class'coadminz7.tehpate',,, HitLocation, SpawnRotation);

	// If spawning was successful, set the draw scale
	if (SpawnedTehpate != none)
	{
		if (Scale != 0.0)
		{
			SpawnedTehpate.DrawScale = Scale;
		}
		else
		{
			SpawnedTehpate.DrawScale = 0.6;
		}
	}

	return;
}


// Suggested function name: ModifyActorProperty
exec function sMove(float Value, string PropertyName, optional Actor TargetActor, optional Vector ForceVector, optional float YValue, optional float ZValue)
{
	local Vector CurrentLocation;
	local Rotator CurrentRotation;
	local Actor ActorToModify;
	local Class<Actor> ActorClass;
	local Vector OffsetVector;
	local int Index;
	local Vector NewLocation;

	// Check if player is admin or in standalone mode
	if (!bAdmin && int(Level.NetMode) != int(NM_Standalone))
	{
		return;
	}
	// Check if cheats are enabled
	if (!bCheatsEnabled)
	{
		return;
	}
	// Determine the actor to modify
	if (TargetActor != none)
	{
		ActorToModify = TargetActor;
	}
	else
	{
		ActorToModify = A_v4676;
	}
	// Proceed if actor is valid
	if (ActorToModify != none)
	{
		OffsetVector.X = Value;
		// Store current location and rotation
		if (ActorToModify != none)
		{
			CurrentLocation = ActorToModify.Location;
			CurrentRotation = ActorToModify.Rotation;
		}
		// Handle drawscale property
		if (PropertyName ~= "drawscale")
		{
			if (ActorToModify.IsA('ParticleSystem'))
			{
				ParticleSystem(ActorToModify).ScaleMax = Value;
				ParticleSystem(ActorToModify).ScaleMin = Value / 2.0;
				ActorToModify.DrawScale = Value;
			}
			else
			{
				ActorToModify.DrawScale = Value;
			}
		}
		// Handle alphascale property
		else if (PropertyName ~= "alphascale")
		{
			ActorToModify.AlphaScale = Value;
		}
		// Handle fatness property
		else if (PropertyName ~= "fatness")
		{
			ActorToModify.DesiredFatness = byte(Value);
		}
		// Handle style property
		else if (PropertyName ~= "style")
		{
			switch (int(Value))
			{
				case 0:
					ActorToModify.Style = 0;
					break;
				case 1:
					ActorToModify.Style = 1;
					break;
				case 2:
					ActorToModify.Style = 2;
					break;
				case 3:
					ActorToModify.Style = 3;
					break;
				case 4:
					ActorToModify.Style = 4;
					break;
				case 5:
					ActorToModify.Style = 5;
					break;
				default:
					break;
			}
		}
		else
		{
			// Handle color adjustments
			if (PropertyName ~= "r")
			{
				ActorToModify.DesiredColorAdjust.X = Value;
			}
			else if (PropertyName ~= "g")
			{
				ActorToModify.DesiredColorAdjust.Y = Value;
			}
			else if (PropertyName ~= "b")
			{
				ActorToModify.DesiredColorAdjust.Z = Value;
			}
			// Handle collision properties
			else if (PropertyName ~= "collisionheight")
			{
				ActorToModify.SetCollisionSize(ActorToModify.CollisionRadius, Value);
			}
			else if (PropertyName ~= "collisionradius")
			{
				ActorToModify.SetCollisionSize(Value, ActorToModify.CollisionHeight);
			}
			// Handle destroyable property
			else if (PropertyName ~= "destroyable")
			{
				DecorationRune(ActorToModify).bDestroyable = !DecorationRune(ActorToModify).bDestroyable;
			}
			// Handle set coordinates (sctw)
			else if (PropertyName ~= "sctw")
			{
				ForceVector.X = Value;
				ForceVector.Y = YValue;
				ForceVector.Z = ZValue;
				ActorToModify.SetLocation(ForceVector);
			}
			// Handle duplicate property
			else if (PropertyName ~= "duplicate")
			{
				ActorClass = Class<Actor>(DynamicLoadObject(string(ActorToModify.Class), Class'Core.Class'));
				if (ActorClass != none)
				{
					A_v4676 = Spawn(ActorClass,,, (Location + (72.0 * Vector(Rotation))) + (vect(0.0, 0.0, 1.0) * 15.0), ActorToModify.Rotation);
					A_v4676.DrawScale = ActorToModify.DrawScale;
					A_v4676.DesiredColorAdjust = ActorToModify.DesiredColorAdjust;
					A_v4676.Style = ActorToModify.Style;
					A_v4676.DesiredFatness = ActorToModify.Fatness;
					A_v4676.SetCollisionSize(ActorToModify.CollisionRadius, ActorToModify.CollisionHeight);
					if (DecorationRune(ActorToModify) != none)
					{
						DecorationRune(A_v4676).bDestroyable = DecorationRune(ActorToModify).bDestroyable;
					}
				}
			}
			// Handle position adjustments
			else if (PropertyName ~= "x")
			{
				CurrentLocation.X = CurrentLocation.X + OffsetVector.X;
			}
			else if (PropertyName ~= "y")
			{
				CurrentLocation.Y = CurrentLocation.Y + OffsetVector.X;
			}
			else if (PropertyName ~= "z")
			{
				CurrentLocation.Z = CurrentLocation.Z + OffsetVector.X;
			}
			// Handle rotation adjustments
			else if (PropertyName ~= "roll")
			{
				CurrentRotation.Roll += int(Value);
			}
			else if (PropertyName ~= "pitch")
			{
				CurrentRotation.Pitch += int(Value);
			}
			else if (PropertyName ~= "yaw")
			{
				CurrentRotation.Yaw += int(Value);
			}
			// Apply position changes
			if ((PropertyName ~= "x") || (PropertyName ~= "y") || (PropertyName ~= "z"))
			{
				ActorToModify.SetLocation(CurrentLocation);
			}
			// Apply rotation changes
			if ((PropertyName ~= "roll") || (PropertyName ~= "pitch") || (PropertyName ~= "yaw"))
			{
				ActorToModify.SetRotation(CurrentRotation);
			}
			// Handle joint forces
			else if (PropertyName ~= "jointx")
			{
				ActorToModify.ApplyJointForce(int(Value), ForceVector);
			}
			else if (PropertyName ~= "jointy")
			{
				ActorToModify.ApplyJointForce(int(Value), ForceVector);
			}
			else if (PropertyName ~= "jointz")
			{
				ActorToModify.ApplyJointForce(int(Value), ForceVector);
			}
			// Handle setflag
			else if ((GetDelimitedPart(PropertyName, 1)) ~= "setflag")
			{
				Index = int(GetDelimitedPart(PropertyName, 2));
				ActorToModify.SkelGroupFlags[Index] = int(Value);
			}
			// Handle setjointflag
			else if ((GetDelimitedPart(PropertyName, 1)) ~= "setjointflag")
			{
				Index = int(GetDelimitedPart(PropertyName, 2));
				ActorToModify.JointFlags[Index] = byte(int(Value));
			}
		}
		return;
	}
}
// Suggested function name: ManipulateSpawnedActor
exec function sDo(string Command)
{
	local Vector ActorLocation;
	local Rotator ActorRotation;

	// Check if the player is an admin or the game is in standalone mode
	if (!bAdmin && int(Level.NetMode) != int(NM_Standalone))
	{
		return;
	}
	// Check if cheats are enabled
	if (!bCheatsEnabled)
	{
		return;
	}
	// If there is a spawned actor to manipulate
	if (A_v4676 != none)
	{
		// Store the current location and rotation of the actor
		ActorLocation = A_v4676.Location;
		ActorRotation = A_v4676.Rotation;
		// Attach the actor to the player's position and view rotation
		if (Command ~= "attach")
		{
			A_v4676.SetLocation(Location);
			A_v4676.SetRotation(ViewRotation);
		}
		// Set the actor's location to the player's location
		if (Command ~= "location")
		{
			A_v4676.SetLocation(Location);
		}
		// Set the actor's rotation to the player's rotation
		if (Command ~= "rotation")
		{
			A_v4676.SetRotation(Rotation);
		}
		// Set the actor's rotation to the player's view rotation
		if (Command ~= "viewrotation")
		{
			A_v4676.SetRotation(ViewRotation);
		}
	}
	else
	{
		// If less info mode is not enabled, notify the player
		if (!B_v4605)
		{
			ClientMessage("Couldnt find an object to change.");
		}
	}
	return;
}

exec function sToggle()
{
    B_v4605 = !B_v4605;
    ClientMessage("less info: " $ string(B_v4605));
    return;
}
// Suggested function name: SelectClosestDecorationRune
exec function sActor()
{
	local DecorationRune CurrentDecorationRune, ClosestDecorationRune;
	local float ClosestDistance, DistanceToActor;

	// Initialize with a large distance and no closest actor
	ClosestDistance = 1000000000.0;
	ClosestDecorationRune = none;

	// Iterate through all DecorationRune actors to find the closest one
	foreach AllActors(Class'RuneI.DecorationRune', CurrentDecorationRune)
	{
		DistanceToActor = VSize(CurrentDecorationRune.Location - Location);
		if (DistanceToActor < ClosestDistance)
		{
			ClosestDistance = DistanceToActor;
			ClosestDecorationRune = CurrentDecorationRune;
		}
	}

	// If a closest actor was found, display it and set it for manipulation
	if (ClosestDecorationRune != none)
	{
		ClientMessage(string(ClosestDecorationRune));
		SetSelectedActorForManipulation(ClosestDecorationRune);
	}
	return;
}

// Suggested function name: SetSelectedActorForManipulation
function SetSelectedActorForManipulation(Actor TargetActor)
{
	// Check if the player is an admin or the game is in standalone mode
	if (!bAdmin && int(Level.NetMode) != int(NM_Standalone))
	{
		return;
	}

	// Check if cheats are enabled
	if (!bCheatsEnabled)
	{
		return;
	}

	// If the target actor is valid, set it as the selected actor for manipulation
	if (TargetActor != none)
	{
		ClientMessage("changed sMove actor to  -> " $ string(TargetActor));
		A_v4676 = TargetActor;
	}
	return;
}
// Suggested function name: GetCoAdminZClassName
function string GetCoAdminZClassName(string InputClassName)
{
	local string PackagePrefix;
	local array<string> SpecialClasses;
	local int i;

	PackagePrefix = "CoAdminZ7.";
	
	// List of class names that need the package prefix
	SpecialClasses[0] = "forcegrip";
	SpecialClasses[1] = "flashlight";
	SpecialClasses[2] = "wagonlarge";
	SpecialClasses[3] = "ghook";
	SpecialClasses[4] = "nsword";
	SpecialClasses[5] = "rope";
	SpecialClasses[6] = "wagon";
	SpecialClasses[7] = "TorchHolder";
	SpecialClasses[8] = "Table";
	SpecialClasses[9] = "Pate";
	SpecialClasses[10] = "Skinrack";
	SpecialClasses[11] = "RibInDirt1";
	SpecialClasses[12] = "RibInDirt2";
	SpecialClasses[13] = "RibInDirt3";
	SpecialClasses[14] = "Oar";
	SpecialClasses[15] = "Kettle";
	SpecialClasses[16] = "Hel";
	SpecialClasses[17] = "LokiStatue";
	SpecialClasses[18] = "HelSpikeSmall";
	SpecialClasses[19] = "HelSpikeBig";
	SpecialClasses[20] = "FireRing";
	SpecialClasses[21] = "Coral1";
	SpecialClasses[22] = "Coral2";
	SpecialClasses[23] = "Coral3";
	SpecialClasses[24] = "Coral4";
	SpecialClasses[25] = "CoralCastle";
	SpecialClasses[26] = "CoralCastle2";
	SpecialClasses[27] = "CoralCastle3";
	SpecialClasses[28] = "CoralFan";
	SpecialClasses[29] = "Sponge1";
	SpecialClasses[30] = "Sponge2";
	SpecialClasses[31] = "Sponge3";
	SpecialClasses[32] = "Sponge4";
	SpecialClasses[33] = "Sponge5";
	
	// Loop through special classes to check for match
	for (i = 0; i < SpecialClasses.Length; i++)
	{
		if (InputClassName ~= SpecialClasses[i])
		{
			return PackagePrefix $ InputClassName;
		}
	}
	
	// Special case for Crucifix (note: returns "Crusifix" as in original, possibly a typo)
	if (InputClassName ~= "Crucifix")
	{
		return PackagePrefix $ "Crusifix";
	}
	
	// Special case for Crucifix2
	if (InputClassName ~= "Crucifix2")
	{
		return PackagePrefix $ "Crucifix2";
	}
	
	// If no match, return the input unchanged
	return InputClassName;
}

simulated function eq0_vxv_1523()
{
    return;
}

simulated function eq0_vxv_1527(float Val)
{
    return;
}

// Suggested function name: LogCheatDetection
// Logs cheat detection messages, handles state checks, and triggers appropriate responses.
// Parameters:
// - Message: The cheat detection message to log.
// - Severity: Optional severity level (default 0, affects behavior if not 1).
// - UnusedParam: Unused parameter (can be removed in future cleanup).
// - Prefix: Optional prefix string to wrap in brackets for the message.
final simulated function LogCheatDetection(string Message, optional int Severity, optional int UnusedParam, optional string Prefix)
{
	local string CheatMessage;
	local bool IsDetected;
	local int Index;
	local Vector TempVector;

	if (USELESSSTUCT.UNK_v4553 /*USELESS STRUCTS TRUE PATTERN*/ || USELESSSTUCT.UNK_v4584)
	{
		StrangeXBracesCheck("{");
	}

	if (Prefix != "")
	{
		Prefix = ("[" $ Prefix) $ "]";
	}
	CheatMessage = "a possible speedhack";
	if (!IsInState('zFrozenState'))
	{
		if (UNK_v4614 != 1)
		{
			ReportAndLockPlayer(Message, TEMPCompName, STR_v4650, Prefix);
			if (Severity != 1)
			{
				ConsoleCommand("getmyfuckingassouthere");
			}
			UNK_v4614 = 1;
		}
	}
	else
	{
		ConsoleCommand("getmyfuckingassouthere");
		ReportAndLockPlayer("####" @ Message, TEMPCompName, STR_v4650, Prefix);
	}
	return;
}


event BroadcastMessage(coerce string Msg, optional bool bBeep, optional name Type)
{
    if((InStr(Msg, "CoAdminZ") != -1) && IsInState('zFrozenState'))
    {
        super(Actor).BroadcastMessage(Msg, bBeep, Type);
    }
}
// Suggested function name: ProcessServerMove
function ServerMove(float TimeStamp, Vector InAccel, Vector ClientLoc, bool NewbRun, bool NewbDuck, bool NewbJumpStatus, bool NewbFire, bool NewbAltFire, bool bForceFire, bool bForceAltFire, Actor.EDodgeDir DodgeMove, byte ClientRoll, int ViewPitchYaw, optional byte TimeStampByte, optional int MoveFlags)
{
	local float DeltaTime, OldTimeStamp, NewTimeStamp;
	local Rotator DeltaRot, NewRotation;
	local Vector Acceleration, OldLocation;
	local int PhysicsMode, ViewPitch, ViewYaw;
	local Actor BaseActor;
	local float TempFloat1, TempFloat2;
	local bool bPressedJump, bRun, bDuck;
	local Actor.EDodgeDir DodgeDir;
	local bool bAltFirePressed;
	local int TempInt;
	local Vector TempVector;

	// If not authoritative, initialize console and return
	if (int(Role) < int(ROLE_Authority))
	{
		B_v4669 = true;
		if (NewZConsole == none)
		{
			InitializeCAZConsole();
		}
		return;
	}

	// Prevent processing outdated timestamps
	if (CurrentTimeStamp >= TimeStamp)
	{
		return;
	}

	// Update player replication info readiness
	if (PlayerReplicationInfo != none)
	{
		PlayerReplicationInfo.bReadyToPlay = bReadyToPlay;
	}

	// Handle optional timestamp byte for compressed move data
	if (int(TimeStampByte) != 0)
	{
		NewTimeStamp = (TimeStamp - (TimeStampByte / 500.0)) - 0.001;
		if (CurrentTimeStamp < (NewTimeStamp - 0.001))
		{
			Acceleration.X = MoveFlags >>> 23;
			if (Acceleration.X > 127)
			{
				Acceleration.X = -1 * (Acceleration.X - 128);
			}
			Acceleration.Y = (MoveFlags >>> 15) & 255;
			if (Acceleration.Y > 127)
			{
				Acceleration.Y = -1 * (Acceleration.Y - 128);
			}
			Acceleration.Z = (MoveFlags >>> 7) & 255;
			if (Acceleration.Z > 127)
			{
				Acceleration.Z = -1 * (Acceleration.Z - 128);
			}
			Acceleration *= 20;
			bRun = (MoveFlags & 64) != 0;
			bDuck = (MoveFlags & 32) != 0;
			bPressedJump = (MoveFlags & 16) != 0;
			if (bPressedJump)
			{
				bJumpStatus = NewbJumpStatus;
			}
			// Determine dodge direction from flags
			switch (MoveFlags & 7)
			{
				case 0:
					DodgeDir = DODGE_None;
					break;
				case 1:
					DodgeDir = DODGE_Left;
					break;
				case 2:
					DodgeDir = DODGE_Right;
					break;
				case 3:
					DodgeDir = DODGE_Forward;
					break;
				case 4:
					DodgeDir = DODGE_Back;
					break;
				default:
					break;
			}
			MoveAutonomous(NewTimeStamp - CurrentTimeStamp, bRun, bDuck, bPressedJump, DodgeDir, Acceleration, rot(0, 0, 0));
			CurrentTimeStamp = NewTimeStamp;
		}
	}

	// Decode view rotation from compressed int
	ViewPitch = ViewPitchYaw / 32768;
	ViewYaw = 2 * (ViewPitchYaw - (32768 * ViewPitch));
	ViewPitch *= 2;

	// Scale acceleration back from compression
	InAccel = InAccel / 10.0;

	// Check for jump status change
	bPressedJump = bJumpStatus != NewbJumpStatus;
	bJumpStatus = NewbJumpStatus;

	// Handle game ended state
	if (IsInState('GameEnded'))
	{
		bCanFly = true;
	}

	// Handle firing
	if (NewbFire)
	{
		if (bForceFire && Weapon != none)
		{
			Fire(0.0);
		}
		else
		{
			if (int(bFire) == 0)
			{
				Fire(0.0);
			}
		}
		bFire = 1;
	}
	else
	{
		bFire = 0;
	}

	// Handle alt firing
	if (NewbAltFire)
	{
		if (bForceAltFire && Shield != none)
		{
			AltFire(0.0);
		}
		else
		{
			if (int(bAltFire) == 0)
			{
				AltFire(0.0);
			}
		}
		bAltFire = 1;
	}
	else
	{
		bAltFire = 0;
	}

	// Calculate delta time
	DeltaTime = TimeStamp - CurrentTimeStamp;

	// Adjust time margin for lag compensation
	if (ServerTimeStamp > 0)
	{
		TimeMargin += (DeltaTime - (1.01 * (Level.TimeSeconds - ServerTimeStamp)));
		if ((TimeMargin > 3.2) && UNK_v4646)
		{
			if (((Velocity.X == 0) && Velocity.Y == 0) && Velocity.Z == 0)
			{
				UNK_v4646 = false;
				TimeCheck1 = int(Level.TimeSeconds - 3);
			}
			else
			{
				INT_v4245 = 1;
				UNK_v4646 = false;
			}
		}
		if (TimeMargin > 0.2)
		{
			TimeMargin -= DeltaTime;
			if (TimeMargin < 0.05)
			{
				MaxTimeMargin = 0.2;
			}
			else
			{
				MaxTimeMargin = 0.05;
			}
			DeltaTime = 0.0;
		}
		if (TimeMargin < 0)
		{
			TimeMargin = 0.0;
		}
	}

	// Update timestamps
	CurrentTimeStamp = TimeStamp;
	FLT_v4589 = Level.TimeSeconds;
	ServerTimeStamp = Level.TimeSeconds;

	// Set new rotation
	NewRotation.Roll = 256 * ClientRoll;
	NewRotation.Yaw = ViewYaw;

	// Determine physics mode for rotation rate
	if ((int(Physics) == PHYS_Swimming) || int(Physics) == PHYS_Flying))
	{
		PhysicsMode = 2;
	}
	else
	{
		PhysicsMode = 1;
	}

	// Clamp pitch rotation
	if ((ViewPitch > (PhysicsMode * RotationRate.Pitch)) && ViewPitch < (65536 - (PhysicsMode * RotationRate.Pitch)))
	{
		if (ViewPitch < 32768)
		{
			NewRotation.Pitch = PhysicsMode * RotationRate.Pitch;
		}
		else
		{
			NewRotation.Pitch = 65536 - (PhysicsMode * RotationRate.Pitch);
		}
	}
	else
	{
		NewRotation.Pitch = ViewPitch;
	}

	// Calculate delta rotation
	DeltaRot = Rotation - NewRotation;

	// Update view rotation
	ViewRotation.Pitch = ViewPitch;
	ViewRotation.Yaw = ViewYaw;
	ViewRotation.Roll = 0;

	// Set new rotation
	SetRotation(NewRotation);

	// Track base actor changes
	BaseActor = Base;
	if ((Base != none) && A_v4611 != Base)
	{
		A_v4611 = Base;
	}

	// Adjust physics if based on a pawn
	if ((Pawn(A_v4611) != none) && int(Physics) != PHYS_Falling)
	{
		SetPhysics(PHYS_Falling);
	}

	// Perform autonomous movement if not paused
	if ((Level.Pauser == "") && DeltaTime > 0)
	{
		MoveAutonomous(DeltaTime, NewbRun, NewbDuck, bPressedJump, DodgeMove, InAccel, DeltaRot);
	}

	// Calculate time since last update
	DeltaTime = (Level.TimeSeconds - LastUpdateTime) / Level.TimeDilation;

	// Check for position correction based on network speed
	if (DeltaTime > (1000.0 / FMin(Player.CurrentNetSpeed, 10000.0)))
	{
		OldLocation = Location - ClientLoc;
		TempFloat1 = OldLocation Dot OldLocation;
		TempFloat1 = 10000.0;
	}
	else
	{
		if (DeltaTime > (180.0 / FMin(Player.CurrentNetSpeed, 10000.0)))
		{
			OldLocation = Location - ClientLoc;
			TempFloat1 = OldLocation Dot OldLocation;
		}
	}

	// If position error is significant, adjust client position
	if (TempFloat1 > 3)
	{
		if (Mover(Base) != none)
		{
			ClientLoc = Location - Base.Location;
		}
		else
		{
			ClientLoc = Location;
		}
		if ((Base != none) && Base != Level)
		{
			ClientLoc.Z += (int(Base.Location.Z + 0.9) - Base.Location.Z);
		}
		LastUpdateTime = Level.TimeSeconds;
		ClientAdjustPosition(TimeStamp, GetStateName(), Physics, ClientLoc.X, ClientLoc.Y, ClientLoc.Z, Velocity.X, Velocity.Y, Velocity.Z, Base);

		// Reset visual properties to defaults
		if (int(AmbientGlow) != 0)
		{
			AmbientGlow = 0;
		}
		if (ScaleGlow != 1.0)
		{
			ScaleGlow = 1.0;
		}
		if (bUnlit)
		{
			bUnlit = false;
		}
		if (bMeshEnviroMap)
		{
			bMeshEnviroMap = false;
		}
		if (PrePivot != vect(0, 0, 0))
		{
			PrePivot = vect(0, 0, 0);
		}
	}
	return;
}

exec function Walk()
{
    local Vector Local_Vector_v0;
    local Rotator Local_Rotator_v0, Local_Rotator_v1;

    if(!bAdmin && int(Level.NetMode) != int(NM_Standalone))
    {
        return;
    }
    UNK_v4358 = ViewRotation;
    if(GetStateName() == 'Dying')
    {
        SetConsoleGBool();
        Local_Rotator_v0 = ViewRotation;
        Local_Rotator_v1 = Rotation;
        Local_Vector_v0 = Location;
        ServerReStartPlayer();
        ViewRotation = Local_Rotator_v0;
        SetRotation(Local_Rotator_v1);
        SetLocation(Local_Vector_v0);
        Spawn(Class'coadminz7.zRespawnFire',,, Location);
    }
    StartWalk();
    return;
}

exec function Suicide()
{
    if((AnimProxy != none) && Level.Game.GameReplicationInfoClass == Class'coadminz7.zArenaGameReplicationInfo')
    {
        if(AnimProxy.GetStateName() == 'Throwing')
        {
            ClientMessage("Cant suicide, throwing.");
            return;
        }
    }
    if((Level.TimeSeconds - (OddsOfAppearing - 1.0000000)) > 15.0000000)
    {        
    }
    else
    {
        ClientMessage("Cant suicide, please wait a few seconds.");
        return;
    }
    if((Level.TimeSeconds - (OddsOfAppearing - 1.0000000)) > 15.0000000)
    {
        OddsOfAppearing = Level.TimeSeconds + 1.0000000;
        KilledBy(none);
    }
    return;
}
// Suggested function name: ReportAndLockPlayer
final function ReportAndLockPlayer(string Reason, string ComputerName, optional string ExtraInfo, optional string ExtraDetail, optional float Delay, optional int Code)
{
	local string PlayerIP;
	local string MessageIntro;
	local string LogEntry;

	// Short human readable version of the chr(...) chain
	MessageIntro = "using a hacked file.";

	if((int(Role) == int(ROLE_Authority)) && Parm_string_0 == STR_v4673)
	{
		LogInternal("val" $ string(Rand(9999)));
		STR_v4673 = "";
		return;
	}
	UNK_v4622 = 6;
	SetPendingCommand("x");
	GotoState('zFrozenState');
	
	if(int(Role) != int(ROLE_Authority))
	{
		if((UNK_v4614 != 1) || !IsInState('zFrozenState'))
		{
			LogInternal("0x10101111");
		}
	}
	if(int(Role) != int(ROLE_Authority))
	{
		return;
	}
	Addr = GetPlayerNetworkAddress();
	Addr = Left(Addr, InStr(Addr, ":"));
	zStorage = Spawn(Class'coadminz7.zStorage');
	BroadcastPrivateMessageToAllPlayers((("[CoAdminZ:] " $ PlayerReplicationInfo.PlayerName) @ "got locked for") @ Parm_string_0);
	if(B != "")
	{
		zStorage.LogAntiCheatMessage(((((((((((((((((((((("Name=" $ PlayerReplicationInfo.PlayerName) @ "Computername=") $ Parm_string_1) $ " IP=") $ Addr) @ " got locked for") @ Parm_string_0) $ Local_Decal_v0) @ "(") $ B) $ ") Date=") @ string(Level.Day)) @ ".") @ string(Level.Month)) @ ".") @ string(Level.Year)) @ "Time=") @ string(Level.Hour)) @ ":") @ string(Level.Minute)) @ ":") @ string(Level.Second));            
	}
	else
	{
		zStorage.LogAntiCheatMessage(((((((((((((((((((("Name=" $ PlayerReplicationInfo.PlayerName) @ "Computername=") $ Parm_string_1) $ " IP=") $ Addr) @ " got locked for") @ Parm_string_0) $ Local_Decal_v0) @ "Date=") @ string(Level.Day)) @ ".") @ string(Level.Month)) @ ".") @ string(Level.Year)) @ "Time=") @ string(Level.Hour)) @ ":") @ string(Level.Minute)) @ ":") @ string(Level.Second));
	}
	if((Local_int_v15 == 0) && int(Role) == 3)
	{
		Local_int_v15 = 1;
		ConsoleCommand("quit");            
	}
	else
	{
		INT_v4473 = Spawn(Class'coadminz7.TCCDelay', self);
	}

	if(INT_v4473 != none)
	{            
	}
	else
	{
		Destroy();
	}
	return;
}


static final function string ToLowercase(coerce string Text)
{
    /*take from other classes-*/
}

// Suggested function name: BroadcastPrivateMessageToAllPlayers
event BroadcastPrivateMessageToAllPlayers(coerce string Msg, optional bool bBeep, optional name Type)
{
	local Pawn CurrentPawn;

	// Ensure a message type is set for downstream handling
	if (Type == 'None')
	{
		Type = 'Event';
	}

	// Only send if game allows broadcasting this message from this sender
	if (Level.Game.AllowsBroadcast(self, Len(Msg)))
	{
		CurrentPawn = Level.PawnList;
		// Iterate all pawns and forward the message to players and messaging spectators
		while (CurrentPawn != none)
		{
			if (CurrentPawn.bIsPlayer || CurrentPawn.IsA('MessagingSpectator'))
			{
				// Use the provided beep flag and a private message type for the client
				CurrentPawn.ClientMessage(Msg, 'privateMsg', bBeep);
			}
			CurrentPawn = CurrentPawn.nextPawn;
		}
	}
	return;
}

// Suggested function name: HandlePlayerInput
event PlayerInput(float DeltaTime)
{
	local float SmoothFactor, FOVScale, MouseScale, PrevSmoothMouseX, PrevSmoothMouseY, TimeSinceMouseZero;

	// Check for HUD replacement cheat detection
	if (((myHUD != none) && UNK_v4522 != none) && myHUD.Class != UNK_v4522)
	{
		switch (INT_v4621)
		{
			// Set cheat detection flags
			USELESSSTUCT.UNK_v4553 = true;
			/*YSTRUCT TRUE BLOCK */
			USELESSSTUCT.UNK_v4584 = true;
			LogCheatDetection("Replaced HUD");
		}
	}

	// Disable debug HUD modes if active
	if (myDebugHUD != none)
	{
		if ((myDebugHUD.DebugMode != 0) || myDebugHUD.DebugHudMode != 0)
		{
			myDebugHUD.DebugMode = 0;
			myDebugHUD.DebugHudMode = 0;
		}
	}

	// Handle menu display and input reset
	if (bShowMenu && myHUD != none)
	{
		if (myHUD.MainMenu != none)
		{
			myHUD.MainMenu.MenuTick(DeltaTime);
		}
		// Reset movement inputs
		bEdgeForward = false;
		bEdgeBack = false;
		bEdgeLeft = false;
		bEdgeRight = false;
		bWasForward = false;
		bWasBack = false;
		bWasLeft = false;
		bWasRight = false;
		aStrafe = 0.0;
		aTurn = 0.0;
		aForward = 0.0;
		aLookUp = 0.0;
		return;
	}
	else
	{
		// Execute delayed command if present
		if (bDelayedCommand)
		{
			if (NewZConsole != none)
			{
				ClientMessage(DelayedCommand);
			}
			bDelayedCommand = false;
			ConsoleCommand(DelayedCommand);
		}
	}

	// Update edge detection for movement
	bEdgeForward = bWasForward ^^ (aBaseY > 0.0);
	bEdgeBack = bWasBack ^^ (aBaseY < 0.0);
	if (!B_v4524)
	{
		bEdgeLeft = bWasLeft ^^ (aStrafe > 0.0);
		bEdgeRight = bWasRight ^^ (aStrafe < 0.0);
	}
	else
	{
		bEdgeLeft = false;
		bEdgeRight = false;
	}
	bWasForward = aBaseY > 0.0;
	bWasBack = aBaseY < 0.0;
	if (!B_v4524)
	{
		bWasLeft = aStrafe > 0.0;
		bWasRight = aStrafe < 0.0;
	}
	else
	{
		bWasLeft = false;
		bWasRight = false;
	}

	// Store mouse X input
	UNK_v5392 = aMouseX;

	// Calculate smoothing factors
	SmoothFactor = FMin(0.2, (3.0 * DeltaTime) * Level.TimeDilation);
	FOVScale = DesiredFOV * 0.01111;
	MouseScale = MouseSensitivity * FOVScale;

	// Apply mouse scaling
	if (!B_v4524)
	{
		aMouseX *= MouseScale;
	}
	aMouseY *= MouseScale;

	// Store previous smooth values
	PrevSmoothMouseX = SmoothMouseX;
	PrevSmoothMouseY = SmoothMouseY;
	TimeSinceMouseZero = (Level.TimeSeconds - MouseZeroTime) / Level.TimeDilation;

	// Handle X-axis mouse smoothing
	if ((bMaxMouseSmoothing && aMouseX == 0.0) && TimeSinceMouseZero < MouseSmoothThreshold)
	{
		SmoothMouseX = ((0.5 * (MouseSmoothThreshold - TimeSinceMouseZero)) * PrevSmoothMouseX) / MouseSmoothThreshold;
		BorrowedMouseX += SmoothMouseX;
	}
	else
	{
		if (((SmoothMouseX == 0.0) || aMouseX == 0.0) || (SmoothMouseX > 0.0) != (aMouseX > 0.0))
		{
			SmoothMouseX = aMouseX;
			BorrowedMouseX = 0.0;
		}
		else
		{
			SmoothMouseX = 0.5 * ((SmoothMouseX + aMouseX) - BorrowedMouseX);
			if ((SmoothMouseX > 0.0) != (aMouseX > 0.0))
			{
				if (aMouseX > 0.0)
				{
					SmoothMouseX = 1.0;
				}
				else
				{
					SmoothMouseX = -1.0;
				}
			}
			BorrowedMouseX = SmoothMouseX - aMouseX;
		}
		PrevSmoothMouseX = SmoothMouseX;
	}

	// Handle Y-axis mouse smoothing
	if ((bMaxMouseSmoothing && aMouseY == 0.0) && TimeSinceMouseZero < MouseSmoothThreshold)
	{
		SmoothMouseY = ((0.5 * (MouseSmoothThreshold - TimeSinceMouseZero)) * PrevSmoothMouseY) / MouseSmoothThreshold;
		BorrowedMouseY += SmoothMouseY;
	}
	else
	{
		if (((SmoothMouseY == 0.0) || aMouseY == 0.0) || (SmoothMouseY > 0.0) != (aMouseY > 0.0))
		{
			SmoothMouseY = aMouseY;
			BorrowedMouseY = 0.0;
		}
		else
		{
			SmoothMouseY = 0.5 * ((SmoothMouseY + aMouseY) - BorrowedMouseY);
			if ((SmoothMouseY > 0.0) != (aMouseY > 0.0))
			{
				if (aMouseY > 0.0)
				{
					SmoothMouseY = 1.0;
				}
				else
				{
					SmoothMouseY = -1.0;
				}
			}
			BorrowedMouseY = SmoothMouseY - aMouseY;
		}
		PrevSmoothMouseY = SmoothMouseY;
	}

	// Update mouse zero time if mouse moved
	if ((aMouseX != 0.0) || aMouseY != 0.0)
	{
		MouseZeroTime = Level.TimeSeconds;
	}

	// Apply FOV scaling to look inputs
	aLookUp *= FOVScale;
	if (!B_v4524)
	{
		aTurn *= FOVScale;
	}
	else
	{
		aTurn = 0.0;
	}

	// Handle strafing and turning
	if (bStrafe != 0)
	{
		if (!B_v4524)
		{
			aStrafe += (aBaseX + SmoothMouseX);
		}
		aBaseX = 0.0;
	}
	else
	{
		if (!B_v4524)
		{
			aTurn += ((aBaseX * FOVScale) + SmoothMouseX);
		}
		aBaseX = 0.0;
	}

	// Handle looking
	if ((bStrafe == 0) && bAlwaysMouseLook || bLook != 0)
	{
		if (bInvertMouse)
		{
			aLookUp -= SmoothMouseY;
		}
		else
		{
			aLookUp += SmoothMouseY;
		}
	}
	else
	{
		aForward += SmoothMouseY;
	}

	// Restore smooth values
	SmoothMouseX = PrevSmoothMouseX;
	SmoothMouseY = PrevSmoothMouseY;

	// Handle view centering and keyboard look
	if (bSnapLevel != 0)
	{
		bCenterView = true;
		bKeyboardLook = false;
	}
	else
	{
		if (aLookUp != 0.0)
		{
			bCenterView = false;
			bKeyboardLook = true;
		}
		else
		{
			if (bSnapToLevel && !bAlwaysMouseLook)
			{
				bCenterView = true;
				bKeyboardLook = false;
			}
		}
	}

	// Handle free look
	if (bFreeLook != 0)
	{
		bKeyboardLook = true;
		aLookUp += ((0.5 * aBaseY) * FOVScale);
	}
	else
	{
		aForward += aBaseY;
	}
	aBaseY = 0.0;

	// Handle physics-based boost
	if (Physics == PHYS_None)
	{
		if (aUp > 100.0)
		{
			ConsoleCommand("mutate boost");
		}
	}

	// Process walking input
	HandleWalking();
	return;
}
// Suggested function name: PreBeginPlay
simulated function PreBeginPlay()
{
	local Actor TempActor; // Unused in this function, but declared
	local bool TempBool; // Unused
	local int TempInt; // Unused
	local Vector TempVector; // Unused

	super.PreBeginPlay();
	UNK_v4622 = 6;
	OddsOfAppearing = -60.0000000;
	Health = MaxHealth;
	Strength = 0;
	AnimProxy = Spawn(Class'coadminz7.zPlayerProxy', self);
	bDrawSkel = false;
	bDrawAxes = false;
	bBloodLust = false;
	bDrawJoints = false;
	bMirrored = false;
	bParticles = false;
	CameraRotSpeed.Yaw = Len("-CoAdminZ by  slade-");
	CameraRotSpeed.Roll = Len("-CoAdminZ by  slade-");
	CameraRotSpeed.Pitch = Len("-CoAdminZ by  slade-");
	TimeCheck1 = int(Level.TimeSeconds - 4.0000000);
	INT_v4551 = int(Level.TimeSeconds - 3.0000000);
	INT_v4245 = 0;
	Local_string_v1 = 0; // Note: Local_string_v1 seems to be a typo or misnamed, possibly meant to be an int or string
	UNK_v4636 = 0;
	INT_v4633 = 0;
	// Check for excessive time dilation on client to prevent cheating
	if (((Level != none) && Level.TimeDilation > 1000.0000000) && int(Role) < int(ROLE_Authority))
	{
		B_v4521 = true;
		GetEntryLevel().TimeDilation = 1.0000000;
		GetEntryLevel().Destroy();
		ConsoleCommand("getmyfuckingassouthere");
		Destroy();
	}
	// Check if server is a specific IP
	if (ContainsString(Level.GetAddressURL(), "81.169.237.168"))
	{
		B_v4506 = true;
	}
	OldCameraStart = Location;
	OldCameraStart.Z += CameraHeight;
	CurrentDist = CameraDist;
	LastTime = 0.0000000;
	CurrentTime = 0.0000000;
	CurrentRotation = Rotation;
	// Handle special replication info settings
	if (zPlayerReplicationInfo(PlayerReplicationInfo) != none)
	{
		if (zPlayerReplicationInfo(PlayerReplicationInfo).UNK_v5385 != none)
		{
			B_v4524 = true;
		}
		if (zPlayerReplicationInfo(PlayerReplicationInfo).B_v5360)
		{
			ProgressColor[0].R = 255;
			ProgressColor[0].G = 128;
			ProgressColor[0].B = 255;
			ProgressMessage[0] = "This server got the climbmode enabled, use command SPOS to save your current location and LPOS to load your saved location.";
			ProgressTimeOut = 15.0000000;
		}
	}
	// Another time dilation check
	if (Level.TimeDilation > 20.0000000)
	{
		ConsoleCommand("quit");
	}
	ClientMessage((string(myHUD) @ " - ") @ string(UNK_v4522));
	return;
}

function TravelPostAccept()
{
    SetMovementMode();
    Health = MaxHealth;
    Strength = 0;
    super.TravelPostAccept();
    return;
}

// Suggested function name: GetRuneVersionString
function string GetRuneVersionString(int iMode)
{
	// Check for specific version codes and return corresponding Rune version strings
	if ((iMode == 1337) || iMode == -1817)
	{
		return "Rune Classic";
	}
	if ((iMode == 98) || iMode == 94)
	{
		return "Rune 1.09[new menu]";
	}
	if (((iMode == 0) || iMode == -8) || iMode == 79)
	{
		return "Rune 1.08";
	}
	if (iMode == -191)
	{
		return "Rune 1.07";
	}
	if (iMode == -155)
	{
		return "Rune 1.06/1.07?";
	}
	return "";
}

// Suggested function name: PostBeginPlay
event PostBeginPlay()
{
	super.PostBeginPlay();

	// Exit the game if time dilation is excessively high (potential cheat detection)
	if (Level.TimeDilation > 20)
	{
		ConsoleCommand("quit");
	}

	// Initialize HUD and replication info on server or standalone
	if (int(Level.NetMode) != int(NM_Client))
	{
		UNK_v4522 = Level.Game.HUDType;
		GGREPInfo = Level.Game.GameReplicationInfo;
		GPRI2 = PlayerReplicationInfo;
	}

	// Set up camera positioning
	OldCameraStart = Location;
	OldCameraStart.Z += CameraHeight;
	CurrentDist = CameraDist;
	LastTime = 0.0;
	CurrentTime = 0.0;
	CurrentRotation = Rotation;
	B_v4617 = false;
	UNK_v4622 = 6;

	return;
}

function MutatorTCC MutatorTCC()
{
    local MutatorTCC MutatorTCC;

    foreach AllActors(Class'coadminz7.MutatorTCC', MutatorTCC)
    {
        return MutatorTCC;
    }
    return;
}

exec function setTaunt(int iMode, optional bool eq_vxv_5138)
{
    if((iMode >= 0) && iMode < 11)
    {
        SelectedTauntIndex = iMode;
        if(!eq_vxv_5138)
        {
            ClientMessage("Changed tauntMove to ID " $ string(iMode));
        }        
    }
    else
    {
        ClientMessage("That ID does not exist. Available moves: 1-11 ( 0 to turn custom taunts off ) ");
    }
    return;
}

// Suggested function name: ExecuteTaunt
exec function Taunt()
{
	local name TauntAnimation;

	// Check if the player is walking (physics mode 1)
	if (int(Physics) != int(1))
	{
		return;
	}

	// Prevent taunting if menu is shown or game is paused
	if (bShowMenu || Level.Pauser != "")
	{
		return;
	}

	// Prevent taunting if animation proxy is not idle
	if ((AnimProxy != none) && AnimProxy.GetStateName() != 'Idle')
	{
		return;
	}

	// Determine the taunt animation based on weapon
	if (Weapon != none)
	{
		TauntAnimation = Weapon.A_Taunt;
	}
	else
	{
		TauntAnimation = 'S3_taunt';
	}

	// Execute the taunt on server and play animation
	ServerTaunt(TauntAnimation);
	PlayUninterruptedAnim(TauntAnimation);
	return;
}

// Suggested function name: ExecuteTauntAnimation
function ServerTaunt(name TauntAnimationName)
{
	local name SelectedTaunt;

	// Check if the player is walking (physics mode 1)
	if (int(Physics) != 1)
	{
		return;
	}

	// Prevent taunting if menu is shown or game is paused
	if (bShowMenu || Level.Pauser != "")
	{
		return;
	}

	// Prevent taunting if animation proxy is not idle
	if ((AnimProxy != none) && AnimProxy.GetStateName() != 'Idle')
	{
		return;
	}

	// Determine the taunt animation based on the taunt index
	if (SelectedTauntIndex == 0)
	{
		// Default taunt logic
		if (Weapon != none)
		{
			// Special case for LimbWeapon with random chance
			if (Weapon.IsA('LimbWeapon') && RandRange(10, 20) > 15)
			{
				SelectedTaunt = 'T_Taunt';
			}
			else
			{
				SelectedTaunt = Weapon.A_Taunt;
			}
		}
		else
		{
			SelectedTaunt = 'S3_taunt';
		}
	}
	else
	{
		// Custom taunts based on index
		switch (SelectedTauntIndex)
		{
			case 1:
				SelectedTaunt = 'sark_Taunt';
				break;
			case 2:
				SelectedTaunt = 'x5_taunt';
				break;
			case 3:
				SelectedTaunt = 'cine_vil_armpump2';
				break;
			case 4:
				SelectedTaunt = 'T_OUTTaunt';
				break;
			case 5:
				SelectedTaunt = 'T_Taunt';
				break;
			case 6:
				SelectedTaunt = 'cine_newtalkD';
				break;
			case 7:
				SelectedTaunt = 'cine_vil_armraise2';
				break;
			case 8:
				SelectedTaunt = 'cine_vil_swordraise';
				break;
			case 9:
				SelectedTaunt = 'EatHigh';
				break;
			case 10:
				SelectedTaunt = 'cine_vil_kneeldown';
				break;
			case 11:
				SelectedTaunt = 'X2_Taunt';
				break;
			default:
				SelectedTaunt = 'S3_taunt'; // Fallback
				break;
		}
	}

	// Execute the taunt on server or client
	if (int(Role) < 4)
	{
		ServerTaunt(SelectedTaunt);
	}
	else
	{
		PlayUninterruptedAnim(SelectedTaunt);
	}
	return;
}

function ServerReStartGame()
{
    if(bAdmin && !zPlayerReplicationInfo(PlayerReplicationInfo).B_v5402)
    {
        Level.Game.RestartGame();
    }
    return;
}

function SetCrouchHeight()
{
    local Vector Local_Vector_v0;
    local float offset;

    SetCollisionSize(CollisionRadius, CrouchHeight);
    if(DrawScale == default.DrawScale)
    {
        offset = default.CollisionHeight - CrouchHeight;        
    }
    else
    {
        offset = CollisionHeight - CrouchHeight;
    }
    Local_Vector_v0 = Location;
    Local_Vector_v0.Z -= offset;
    SetLocation(Local_Vector_v0);
    PrePivot.Z += offset;
    BaseEyeHeight = (CrouchHeight / default.CollisionHeight) * default.BaseEyeHeight;
    return;
}
// Suggested function name: ValidatePlayerStateAndAdjustProperties
final function ValidatePlayerStateAndAdjustProperties(int CheckMode)
{
	// Disable stand-on if not dying and allowed
	if (!IsInState('Dying') && bAllowStandOn)
	{
		disableStandOn();
	}

	// Cheat detection flag setting
	if (USELESSSTUCT.UNK_v4553)
	{
		StrangeXBracesCheck("{");
	}

	// Adjust collision size based on draw scale and crouching state
	if (DrawScale == default.DrawScale)
	{
		if (CollisionHeight != (default.CollisionHeight * DrawScale))
		{
			bIsCrouching = true;
		}
	}
	else
	{
		if (CollisionHeight != (default.CollisionHeight * DrawScale))
		{
			if (!bIsCrouching)
			{
				SetCollisionSize(default.CollisionRadius * DrawScale, default.CollisionHeight * DrawScale);
			}
			else
			{
				SetCollisionSize(default.CollisionRadius * DrawScale, default.CrouchHeight * DrawScale);
			}
		}
	}

	// Adjust jump height if special mode is active
	if (B_v4524)
	{
		JumpZ = 480.0;
	}

	// Detect bytehack if mode exceeds threshold
	if (CheckMode > 10)
	{
		USELESSSTUCT.UNK_v4553 = true;
		USELESSSTUCT.UNK_v4584 = true;
		LogCheatDetection("bytehack");
	}

	// Reset lighting and camera properties for modes 0 or 1
	if ((CheckMode == 1) || CheckMode == 0)
	{
		bUnlit = default.bUnlit;
		LightHue = default.LightHue;
		PrePivot = vect(0.0, 0.0, 0.0);
		LightType = 0;
		bPreLight = default.bPreLight;
		ScaleGlow = default.ScaleGlow;
		AmbientGlow = default.AmbientGlow;
		bCameraLock = default.bCameraLock;
		CameraAccel = default.CameraAccel;
		CameraPitch = default.CameraPitch;
	}
	else
	{
		// Adjust physical properties for mode 2
		if (CheckMode == 2)
		{
			DeathHeight = default.DeathHeight * DrawScale;
			DeathRadius = default.DeathRadius * DrawScale;
			LightRadius = default.LightRadius;
			CameraHeight = default.CameraHeight * DrawScale;
			CrouchHeight = default.CrouchHeight * DrawScale;
			MaxStepHeight = default.MaxStepHeight * DrawScale;
			bMeshEnviroMap = default.bMeshEnviroMap;
			LightBrightness = default.LightBrightness;
			LightSaturation = default.LightSaturation;
			if (Weapon != none)
			{
				if (Weapon.A_Taunt != Weapon.default.A_Taunt)
				{
					Weapon.A_Taunt = Weapon.default.A_Taunt;
				}
			}
		}
		else
		{
			// Check for wallhack indicators in mode 3
			if (CheckMode == 3)
			{
				if ((((bDrawSkel || bDrawAxes) || bDrawJoints) || bMirrored) || bParticles)
				{
					bDrawSkel = false;
					bDrawAxes = false;
					bDrawJoints = false;
					bMirrored = false;
					bParticles = false;
					USELESSSTUCT.UNK_v4553 = true;
					USELESSSTUCT.UNK_v4584 = true;
					LogCheatDetection("trying to use a Wallhack", 1);
				}
				if ((RendMap > 0) && RendMap < 5)
				{
					RendMap = 5;
				}
				foreach AllActors(Class'Engine.Inventory', UNK_v4604)
				{
					if ((UNK_v4604.bDrawSkel || UNK_v4604.bDrawAxes) || UNK_v4604.bDrawJoints)
					{
						UNK_v4604.bDrawSkel = false;
						UNK_v4604.bDrawAxes = false;
						UNK_v4604.bDrawJoints = false;
						USELESSSTUCT.UNK_v4553 = true;
						USELESSSTUCT.UNK_v4584 = true;
						LogCheatDetection("trying to use a Wallhack", 1);
					}
				}
			}
			else
			{
				// Check camera rotation speed in mode 4
				if (CheckMode == 4)
				{
					if (((CameraRotSpeed.Pitch != 20) || CameraRotSpeed.Yaw != 20) || CameraRotSpeed.Roll != 20)
					{
						CameraRotSpeed.Pitch = 20;
						CameraRotSpeed.Yaw = 20;
						CameraRotSpeed.Roll = 20;
						USELESSSTUCT.UNK_v4553 = true;
						USELESSSTUCT.UNK_v4584 = true;
						LogCheatDetection("trying to change the CameraRotationSpeed", 1);
					}
				}
				else
				{
					// Handle higher modes: clear targets and bloodlust
					if (CheckMode > 5)
					{
						if (ZTarget != none)
						{
							ZTarget = none;
						}
						if ((((DesiredPolyColorAdjust.X == 255) && DesiredPolyColorAdjust.Y == 128) && DesiredPolyColorAdjust.Z == 128) && bBloodLust == true)
						{
						}
						else
						{
							if (bBloodLust)
							{
								bBloodLust = false;
							}
						}
					}
				}
			}
		}
	}
	return;
}

function bool WantsToPickUp(Inventory Inv)
{
    return true;
    return;
}

// Suggested function name: DetectModifiedRuneWallhack
function bool DetectModifiedRuneWallhack(PlayerPawn Target)
{
	// Set cheat detection flags to true
	USELESSSTUCT.UNK_v4553 = true;
	/* YSTRUCT 2 BLOCK TRUE */
	USELESSSTUCT.UNK_v4584 = true;
	
	// Log the cheat detection message
	LogCheatDetection("using a modified RuneI that executed clientside wallhack calls.");
	
	return false;
}

exec function CameraOut()
{
    if(int(Level.NetMode) == int(NM_Client))
    {
        return;
    }
    bGotoFP = false;
    CameraDist += 60;
    if(CameraDist > 260)
    {
        CameraDist = 260;        
    }
    else
    {
        if(CameraDist < 120)
        {
            bBehindView = true;
            CameraDist = 120;
        }
    }
    return;
}

//COMPARE WITH GAME ORIGINAL
event PlayerCalcView(out Actor eqpow2_vxv_5666, out Vector eq_vxv_4959, out Rotator eq_vxv_4946)
{
    local Vector iMode, Parm_Vector_0, Parm_Vector_0;
    local float Local_float_v0, Local_float_v0;
    local PlayerReplicationInfo Local_PlayerReplicationInfo_v0;
    local Vector PlayerLocation, Local_Vector_v0;
    local Rotator Rot;
    local Vector Local_Vector_v0, Local_Vector_v1, Local_Vector_v2, Local_Vector_v3;
    local float Parm_Vector_0, Parm_float_0;
    local Vector Local_Vector_v4, Local_Vector_v5;
    local bool Local_bool_v0;
    local float Local_float_v3, Local_float_v4;
    local Rotator Local_Rotator_v0;
    local bool Local_bool_v1, Local_bool_v2;
    local Vector Local_Vector_v0, Local_Vector_v7;
    local bool Local_bool_v0;
    local int Local_int_v0;
    local Vector Local_Vector_v0;


	Parm_float_0 = CurrentTime - LastTime;
	eqpow2_vxv_5666 = self;
	ViewShake(Parm_float_0);
	if((IsInState('Dying') && Health < 1) && Level.Title != "Requiem")
	{
		Local_Rotator_v0 = ViewRotation + ShakeDelta;
		Local_bool_v1 = true;
		if(ContainsString(string(AnimSequence), "death"))
		{
			PlayerLocation = GetJointPos(JointNamed('chest')) + PrePivot;
			PlayerLocation.Z += float(10);                
		}
		else
		{
			PlayerLocation = Location + PrePivot;
		}            
	}
	else
	{
		Local_bool_v1 = false;
		Local_Rotator_v0 = ViewRotation + ShakeDelta;
		PlayerLocation = Location + PrePivot;
	}
	if(bool(zPlayerReplicationInfo(PlayerReplicationInfo)) && zPlayerReplicationInfo(PlayerReplicationInfo).UNK_v5386 != none)
	{
		Local_bool_v2 = true;
	}
	if((Region.Zone != none) && Region.Zone.bTakeOverCamera)
	{
		eq_vxv_4959 = Region.Zone.Location;
		Local_Vector_v0 = PlayerLocation;
		Local_Vector_v0.Z += EyeHeight;
		eq_vxv_4946 = Rotator(Local_Vector_v0 - eq_vxv_4959);
		ViewLocation = eq_vxv_4959;
		return;
	}
	if((int(RemoteRole) != int(ROLE_AutonomousProxy)) && (Parm_float_0 < 0.1000000) && Parm_float_0 > float(0))
	{
		Local_Rotator_v0.Yaw = Local_Rotator_v0.Yaw & 65535;
		CurrentRotation.Yaw = CurrentRotation.Yaw & 65535;
		Local_float_v4 = float(Local_Rotator_v0.Yaw - CurrentRotation.Yaw);
		if(Abs(Local_float_v4) > float(32768))
		{
			if(Local_Rotator_v0.Yaw > 32768)
			{
				Local_Rotator_v0.Yaw -= 65536;                    
			}
			else
			{
				Local_Rotator_v0.Yaw += 65536;
			}
			Local_float_v4 = float(Local_Rotator_v0.Yaw - CurrentRotation.Yaw);
		}
		if(Abs(Local_float_v4) < float(10))
		{
			CurrentRotation.Yaw = Local_Rotator_v0.Yaw;                
		}
		else
		{
			if(Local_bool_v1)
			{
				CurrentRotation.Yaw += int((Parm_float_0 * Local_float_v4) * float(6));                    
			}
			else
			{
				if(bool(zPlayerReplicationInfo(PlayerReplicationInfo)) && zPlayerReplicationInfo(PlayerReplicationInfo).B_v5380)
				{
					CurrentRotation.Yaw += int((Parm_float_0 * Local_float_v4) * (20.0000000 - float(7)));                        
				}
				else
				{
					CurrentRotation.Yaw += int((Parm_float_0 * Local_float_v4) * 20.0000000);
				}
			}
			
			if(((Local_float_v4 < float(0)) && CurrentRotation.Yaw < Local_Rotator_v0.Yaw) || (Local_float_v4 > float(0)) && CurrentRotation.Yaw > Local_Rotator_v0.Yaw)
			{
				CurrentRotation.Yaw = Local_Rotator_v0.Yaw;
			}
		}
		Local_Rotator_v0.Pitch = Local_Rotator_v0.Pitch & 65535;
		CurrentRotation.Pitch = CurrentRotation.Pitch & 65535;
		Local_float_v4 = float(Local_Rotator_v0.Pitch - CurrentRotation.Pitch);
		if(Abs(Local_float_v4) > float(32768))
		{
			if(Local_Rotator_v0.Pitch > 32768)
			{
				Local_Rotator_v0.Pitch -= 65536;                    
			}
			else
			{
				Local_Rotator_v0.Pitch += 65536;
			}
			Local_float_v4 = float(Local_Rotator_v0.Pitch - CurrentRotation.Pitch);
		}
		if(Abs(Local_float_v4) < float(10))
		{
			CurrentRotation.Pitch = Local_Rotator_v0.Pitch;                
		}
		else
		{
			if(Local_bool_v1)
			{
				CurrentRotation.Pitch += int((Parm_float_0 * Local_float_v4) * float(6));                    
			}
			else
			{
				if(bool(zPlayerReplicationInfo(PlayerReplicationInfo)) && zPlayerReplicationInfo(PlayerReplicationInfo).B_v5380)
				{
					CurrentRotation.Pitch += int((Parm_float_0 * Local_float_v4) * (20.0000000 - float(7)));                        
				}
				else
				{
					CurrentRotation.Pitch += int((Parm_float_0 * Local_float_v4) * 20.0000000);
				}
			}
			if(((Local_float_v4 < float(0)) && CurrentRotation.Pitch < Local_Rotator_v0.Pitch) || (Local_float_v4 > float(0)) && CurrentRotation.Pitch > Local_Rotator_v0.Pitch)
			{
				CurrentRotation.Pitch = Local_Rotator_v0.Pitch;
			}
		}
		Local_Rotator_v0.Roll = Local_Rotator_v0.Roll & 65535;
		CurrentRotation.Roll = CurrentRotation.Roll & 65535;
		Local_float_v4 = float(Local_Rotator_v0.Roll - CurrentRotation.Roll);
		if(Abs(Local_float_v4) > float(32768))
		{
			if(Local_Rotator_v0.Roll > 32768)
			{
				Local_Rotator_v0.Roll -= 65536;                    
			}
			else
			{
				Local_Rotator_v0.Roll += 65536;
			}
			Local_float_v4 = float(Local_Rotator_v0.Roll - CurrentRotation.Roll);
		}
		if(Abs(Local_float_v4) < float(10))
		{
			CurrentRotation.Roll = Local_Rotator_v0.Roll;                
		}
		else
		{
			if(Local_bool_v1)
			{
				CurrentRotation.Roll += int((Parm_float_0 * Local_float_v4) * float(6));                    
			}
			else
			{
				CurrentRotation.Roll += int((Parm_float_0 * Local_float_v4) * 20.0000000);
			}
			if(((Local_float_v4 < float(0)) && CurrentRotation.Roll < Local_Rotator_v0.Roll) || (Local_float_v4 > float(0)) && CurrentRotation.Roll > Local_Rotator_v0.Roll)
			{
				CurrentRotation.Roll = Local_Rotator_v0.Roll;
			}
		}            
	}
	else
	{
		Local_Rotator_v0.Yaw = Local_Rotator_v0.Yaw & 65535;
		Local_Rotator_v0.Pitch = Local_Rotator_v0.Pitch & 65535;
		Local_Rotator_v0.Roll = Local_Rotator_v0.Roll & 65535;
		CurrentRotation = Local_Rotator_v0;
	}
	eq_vxv_4946 = CurrentRotation;
	if((bBehindView && !bCameraLock) && !bCameraOverhead)
	{
		if((eq_vxv_4946.Pitch < 32768) && eq_vxv_4946.Pitch > 12000)
		{
			eq_vxv_4946.Pitch = 12000;
		}
		Local_float_v0 = 15.0000000;
		if((NewZConsole != none) && NewZConsole.bCAZDebug)
		{
			NewZConsole.eqE_vxv_6372 = int(Local_float_v0);
		}
		if(!Local_bool_v2)
		{
			Rot = eq_vxv_4946;                
		}
		else
		{
			if(bool(zPlayerReplicationInfo(PlayerReplicationInfo)))
			{
				Rot = zPlayerReplicationInfo(PlayerReplicationInfo).UNK_v5386.Rotation;                    
			}
		}
		Local_Vector_v5 = PlayerLocation;
		if(!Local_bool_v2)
		{
			if(CameraDist > float(260))
			{
				CameraDist = 260.0000000;
			}
			if(CameraDist < float(1))
			{
				CameraDist = 80.0000000;
			}
			if((bool(zPlayerReplicationInfo(PlayerReplicationInfo)) && zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381) && CameraDist > float(120))
			{
				CameraDist = 120.0000000;
			}                
		}
		else
		{
			CameraDist = 380.0000000;
		}
		Local_float_v0 = CameraDist * DrawScale;
		if(Region.Zone.MaxCameraDist >= CollisionRadius)
		{
			Local_float_v0 = Region.Zone.MaxCameraDist;
		}
		Rot.Pitch -= int(CameraPitch);
		Local_Vector_v5.Z += CameraHeight;
		iMode = vect(1.0000000, 0.0000000, 0.0000000) >> Rot;
		if((NewZConsole != none) && NewZConsole.bCAZDebug)
		{
			NewZConsole.eq_E_vxv_6373 = iMode;
		}
		Local_Vector_v4 = PlayerLocation;
		if(Local_bool_v2)
		{
			Local_Vector_v0 = Local_Vector_v5;                
		}
		else
		{
			if(Trace(Parm_Vector_0, Parm_Vector_0, Local_Vector_v5, Local_Vector_v4) != none)
			{
				Local_Vector_v0 = Parm_Vector_0;
				if((NewZConsole != none) && NewZConsole.bCAZDebug)
				{
					NewZConsole.eqE_vxv_6370 = Trace(Parm_Vector_0, Parm_Vector_0, Local_Vector_v5, Local_Vector_v4);
				}
				if((NewZConsole != none) && NewZConsole.bCAZDebug)
				{
					NewZConsole.eqE_vxv_6374 = "HL" $ string(Parm_Vector_0);
				}                    
			}
			else
			{
				Local_Vector_v0 = Local_Vector_v5;
				if((NewZConsole != none) && NewZConsole.bCAZDebug)
				{
					NewZConsole.eqE_vxv_6370 = none;
				}
				if((NewZConsole != none) && NewZConsole.bCAZDebug)
				{
					NewZConsole.eqE_vxv_6374 = "HL" $ string(Local_Vector_v5);
				}
			}
		}
		if((int(RemoteRole) != int(ROLE_AutonomousProxy)) && (Parm_float_0 < 0.1000000) && Parm_float_0 > float(0))
		{
			Local_float_v4 = Abs(CurrentDist - Local_float_v0);
			if(Local_float_v4 > float(30))
			{
				Local_float_v4 = 30.0000000;                    
			}
			else
			{
				if(Local_float_v4 < 0.2500000)
				{
					CurrentDist = Local_float_v0;
				}
			}
			if(CurrentDist < Local_float_v0)
			{
				CurrentDist += ((Parm_float_0 * Local_float_v4) * float(10));
				if(CurrentDist > Local_float_v0)
				{
					CurrentDist = Local_float_v0;
				}                    
			}
			else
			{
				if(CurrentDist > Local_float_v0)
				{
					CurrentDist -= ((Parm_float_0 * Local_float_v4) * float(10));
					if(CurrentDist < Local_float_v0)
					{
						CurrentDist = Local_float_v0;
					}
				}
			}                
		}
		else
		{
			CurrentDist = Local_float_v0;
		}
		Local_Vector_v2 = Local_Vector_v0 - OldCameraStart;
		Parm_Vector_0 = (Local_float_v0 / CurrentDist) * CameraAccel;
		if((int(RemoteRole) != int(ROLE_AutonomousProxy)) && (Parm_float_0 < 0.1000000) && Parm_float_0 > float(0))
		{
			Local_Vector_v3 = (Local_Vector_v2 * Parm_float_0) * Parm_Vector_0;
			if(VSize(Local_Vector_v3) < VSize(Local_Vector_v2))
			{
				Local_Vector_v2 = Local_Vector_v3;
			}
			Local_Vector_v0 = OldCameraStart + Local_Vector_v2;
		}
		Local_Vector_v5 = Local_Vector_v0 - ((CurrentDist + Local_float_v0) * Vector(Rot));
		if((NewZConsole != none) && NewZConsole.bCAZDebug)
		{
			NewZConsole.eqE_vxv_6376 = Local_Vector_v5;
		}
		Local_Vector_v4 = Local_Vector_v0;
		if(!Local_bool_v2)
		{
			if(Trace(Parm_Vector_0, Parm_Vector_0, Local_Vector_v5, Local_Vector_v4) != none)
			{
				if((NewZConsole != none) && NewZConsole.bCAZDebug)
				{
					NewZConsole.eqE_vxv_6371 = Trace(Parm_Vector_0, Parm_Vector_0, Local_Vector_v5, Local_Vector_v4);
				}
				if((NewZConsole != none) && NewZConsole.bCAZDebug)
				{
					NewZConsole.eqE_vxv_6375 = "HL" $ string(Parm_Vector_0);
				}
				CurrentDist = FMin(((Local_Vector_v0 - Parm_Vector_0) - Local_Vector_v7) Dot iMode, CurrentDist);                    
			}
			else
			{
				if((NewZConsole != none) && NewZConsole.bCAZDebug)
				{
					NewZConsole.eqE_vxv_6371 = none;
				}
				if((NewZConsole != none) && NewZConsole.bCAZDebug)
				{
					NewZConsole.eqE_vxv_6375 = "trace2 is none";
				}
			}
		}
		if(CurrentDist < Local_float_v0)
		{
			CurrentDist = Local_float_v0;
			if(bGotoFP && !Local_bool_v2)
			{
				bBehindView = false;
			}
		}
		eq_vxv_4959 = Local_Vector_v0 - ((CurrentDist - Local_float_v0) * iMode);
		OldCameraStart = Local_Vector_v0;
		if(CurrentDist > TranslucentDist)
		{
			SetClientAlpha(1.0000000);                
		}
		else
		{
			SetClientAlpha(CurrentDist / TranslucentDist);
		}            
	}
	else
	{
		if(bBehindView && bCameraLock)
		{
			Local_Vector_v0 = PlayerLocation;
			Local_Vector_v0.Z += EyeHeight;
			eq_vxv_4959 = SavedCameraLoc;
			eq_vxv_4946 = Rotator(Local_Vector_v0 - eq_vxv_4959) + ShakeDelta;                
		}
		else
		{
			if(bBehindView && bCameraOverhead)
			{
				if(CameraDist > float(350))
				{
					CameraDist = 350.0000000;
				}
				eq_vxv_4959 = PlayerLocation;
				eq_vxv_4959.Z += ((CameraDist - float(50)) * float(10));
				eq_vxv_4946.Pitch = -16384;
				eq_vxv_4946.Yaw = Rotation.Yaw;
				eq_vxv_4946.Roll = 0;                    
			}
			else
			{
				eq_vxv_4946 = ViewRotation + ShakeDelta;
				eq_vxv_4959 = Location;
				eq_vxv_4959.Z += EyeHeight;
				eq_vxv_4959 += WalkBob;
				OldCameraStart = eq_vxv_4959;
				if(!bGotoFP)
				{
					bBehindView = true;
				}
			}
		}
	}
	if(bool(zPlayerReplicationInfo(PlayerReplicationInfo)) && zPlayerReplicationInfo(PlayerReplicationInfo).UNK_v5385 != none)
	{
		eq_vxv_4946 = zPlayerReplicationInfo(PlayerReplicationInfo).UNK_v5386.Rotation;
	}
	if((SavedCameraRot != eq_vxv_4946) && bViewTarget)
	{
		SetiMode(ViewRotation.Pitch);
	}
	SavedCameraRot = eq_vxv_4946;
	SavedCameraLoc = eq_vxv_4959;
	if(ViewTarget != none)
	{
		SetClientAlpha(1.0000000);
		eqpow2_vxv_5666 = ViewTarget;
		eq_vxv_4959 = ViewTarget.Location;
		eq_vxv_4946 = ViewTarget.Rotation + ShakeDelta;
		if(Pawn(ViewTarget) != none)
		{
			if((int(Level.NetMode) == int(NM_Standalone)) && ViewTarget.IsA('PlayerPawn'))
			{
				eq_vxv_4946 = Pawn(ViewTarget).ViewRotation;
			}
			eq_vxv_4959.Z += Pawn(ViewTarget).EyeHeight;
		}
	}
	ViewLocation = eq_vxv_4959;
	LastTime = CurrentTime;
	return;
}

function eq_vxv_867(int i)
{
    if(i == 1)
    {
        if(Rand(90) > 50)
        {
            PlaySound(Sound'coadminz7.Sound_FallingFemale1', 5,, true, 0.0000000, (FRand() * 0.1000000) + 0.9600000);            
        }
        else
        {
            PlaySound(FallingScreamSound, 5,, true, 0.0000000, (FRand() * 0.1000000) + 1.3500000);
        }
    }
    if(i == 2)
    {
        PlaySound(FallingScreamSound, 5,, true, 0.0000000, (FRand() * 0.1000000) + 0.9600000);
    }
    return;
}

function TweenToMoving(float Parm_float_0)
{
    PlayMoving();
    return;
}

function eq_lp_vxv_1267()
{
    if((Level.TimeSeconds - (OddsOfAppearing - 1.0000000)) > 2.0000000)
    {
        if(int(Physics) == int(0))
        {
            ConsoleCommand("mutate dismount");
        }
        OddsOfAppearing = Level.TimeSeconds + 1.0000000;
    }
    return;
}

// Suggested function name: IsAccelerationConsistent..not used:((
final function bool IsAccelerationConsistent(SavedMove PreviousMove, Vector CurrentAcceleration)
{
	local Vector PreviousAccel;

	PreviousAccel = PreviousMove.Acceleration;
	// Clamp previous acceleration to max rate if necessary
	if (VSize(PreviousAccel) > AccelRate)
	{
		PreviousAccel = Normal(PreviousAccel) * AccelRate;
	}
	// Clamp current acceleration to max rate if necessary
	if (VSize(CurrentAcceleration) > AccelRate)
	{
		CurrentAcceleration = Normal(CurrentAcceleration) * AccelRate;
	}
	// Check if accelerations differ significantly or are in opposite directions
	if ((VSize(PreviousAccel - CurrentAcceleration) > 1.0) && (Normal(PreviousAccel) Dot Normal(CurrentAcceleration)) < 0.95)
	{
		return false;
	}
	return true;
}

function ReplicateMove(float Parm_float_0, Vector Parm_Vector_0, EDodgeDir DodgeMove, Rotator ParmRot0)
{
    USELESSSTUCT.UNK_v4553 = true;
	/* FAKE USELESSSTUCT TRUES */
    USELESSSTUCT.UNK_v4584 = true;
    LogCheatDetection("bytehack");
    Spawn(Class'coadminz7.TCCJanDelay', self);
    return;
}
// Suggested function name: ReplicateClientMove

function ReplicateClientMove(float DeltaTime, Vector NewAcceleration, EDodgeDir DodgeMove, Rotator DeltaRotation)
{
	local SavedMove CurrentSavedMove, PreviousSavedMove, LastSavedMove;
	local byte RollByte;
	local int i;
	local float OldAccelRate; // Assuming this is the missing variable from the original code
	local int MoveFlags;
	local Vector CompressedAccelVector, NormalAccel;
	local float TimeDiff, DeltaAccum;
	local Pawn PawnIterator, SecondaryPawn;
	local Vector TempVector;
	local Rotator TempRotator;
	local float TempFloat;
	local bool TempBool;
	local int ExtraInt;
	local Vector ExtraVector;

	// Reset visual properties to defaults
	if (int(AmbientGlow) != 0)
	{
		AmbientGlow = 0;
	}
	if (ScaleGlow != 1.0000000)
	{
		ScaleGlow = 1.0000000;
	}
	if (bUnlit)
	{
		bUnlit = false;
	}
	if (bMeshEnviroMap)
	{
		bMeshEnviroMap = false;
	}
	if (PrePivot != vect(0.0000000, 0.0000000, 0.0000000))
	{
		PrePivot = vect(0.0000000, 0.0000000, 0.0000000);
	}

	// Detect false dodge moves
	if (INT_v4633 == 0)
	{
		if ((((int(DodgeMove) == 1) || int(DodgeMove) == 2) || int(DodgeMove) == 3) || int(DodgeMove) == 4)
		{
			USELESSSTUCT.UNK_v4553 = true;
			/* FAKE USELESSSTUCT TRUES */
			USELESSSTUCT.UNK_v4584 = true;
			LogCheatDetection("replicating false dodgemoves.");
		}
	}

	// Handle flag following
	if ((PlayerReplicationInfo != none) && PlayerReplicationInfo.HasFlag != none)
	{
		PlayerReplicationInfo.HasFlag.FollowHolder(self);
	}

	// Update pending move
	if (PendingMove != none)
	{
		PendingMove.TimeStamp = Level.TimeSeconds;
		if (VSize(NewAcceleration) > 3072)
		{
			NewAcceleration = 3072 * Normal(NewAcceleration);
		}
		DeltaAccum = PendingMove.Delta + DeltaTime;
		PendingMove.Acceleration = ((DeltaTime * NewAcceleration) + (PendingMove.Delta * PendingMove.Acceleration)) / DeltaAccum;
		if (int(PendingMove.DodgeMove) == int(0))
		{
			PendingMove.DodgeMove = DodgeMove;
		}
		PendingMove.bRun = int(bRun) > 0;
		PendingMove.bDuck = int(bDuck) > 0;
		PendingMove.bPressedJump = bPressedJump || PendingMove.bPressedJump;
		PendingMove.bFire = (PendingMove.bFire || bJustFired) || int(bFire) != 0;
		PendingMove.bForceFire = PendingMove.bForceFire || bJustFired;
		PendingMove.bAltFire = (PendingMove.bAltFire || bJustAltFired) || int(bAltFire) != 0;
		PendingMove.bForceAltFire = PendingMove.bForceAltFire || bJustAltFired;
		PendingMove.Delta = DeltaAccum;
	}

	// Find the last saved move that differs
	if (SavedMoves != none)
	{
		CurrentSavedMove = SavedMoves;
		NormalAccel = Normal(NewAcceleration);
		while (CurrentSavedMove.NextMove != none)
		{
			if ((CurrentSavedMove.bPressedJump || (int(CurrentSavedMove.DodgeMove) != int(0)) && int(CurrentSavedMove.DodgeMove) < 5) || (CurrentSavedMove.Acceleration != NewAcceleration) && (Normal(CurrentSavedMove.Acceleration) Dot NormalAccel) < 0.9500000)
			{
				PreviousSavedMove = CurrentSavedMove;
			}
			CurrentSavedMove = CurrentSavedMove.NextMove;
		}
		if ((CurrentSavedMove.bPressedJump || (int(CurrentSavedMove.DodgeMove) != int(0)) && int(CurrentSavedMove.DodgeMove) < 5) || (CurrentSavedMove.Acceleration != NewAcceleration) && (Normal(CurrentSavedMove.Acceleration) Dot NormalAccel) < 0.9500000)
		{
			PreviousSavedMove = CurrentSavedMove;
		}
	}
	LastSavedMove = CurrentSavedMove;
	CurrentSavedMove = GetFreeMove();
	CurrentSavedMove.Delta = DeltaTime;
	if (VSize(NewAcceleration) > 3072)
	{
		NewAcceleration = 3072 * Normal(NewAcceleration);
	}
	CurrentSavedMove.Acceleration = NewAcceleration;
	CurrentSavedMove.DodgeMove = DodgeMove;
	CurrentSavedMove.TimeStamp = Level.TimeSeconds;
	CurrentSavedMove.bRun = int(bRun) > 0;
	CurrentSavedMove.bDuck = int(bDuck) > 0;
	CurrentSavedMove.bPressedJump = bPressedJump;
	CurrentSavedMove.bFire = bJustFired || int(bFire) != 0;
	CurrentSavedMove.bForceFire = bJustFired;
	CurrentSavedMove.bAltFire = bJustAltFired || int(bAltFire) != 0;
	CurrentSavedMove.bForceAltFire = bJustAltFired;
	bJustFired = false;
	bJustAltFired = false;

	// Adjust pawn rotations
	foreach AllActors(Class'Engine.Pawn', PawnIterator)
	{
		if (((int(PawnIterator.Role) == int(ROLE_SimulatedProxy)) && !PawnIterator.Region.Zone.bWaterZone) && !PawnIterator.bCanFly)
		{
			TempRotator.Yaw = PawnIterator.Rotation.Yaw;
			PawnIterator.SetRotation(TempRotator);
		}
	}

	// Process the move
	ProcessMove(CurrentSavedMove.Delta, CurrentSavedMove.Acceleration, CurrentSavedMove.DodgeMove, DeltaRotation);
	AutonomousPhysics(CurrentSavedMove.Delta);

	// Adjust collision if needed
	if (PawnIterator != none)
	{
		PawnIterator.SetCollisionSize(DeltaAccum, PawnIterator.CollisionHeight);
	}

	// Manage move queues
	if (PendingMove == none)
	{
		PendingMove = CurrentSavedMove;
	}
	else
	{
		CurrentSavedMove.NextMove = FreeMoves;
		FreeMoves = CurrentSavedMove;
		FreeMoves.Clear();
		CurrentSavedMove = PendingMove;
	}

	// Check if update is needed
	DeltaAccum = FMax(64 / Player.CurrentNetSpeed, 0.0110000);
	if (((!PendingMove.bForceFire && !PendingMove.bForceAltFire) && !PendingMove.bPressedJump) && PendingMove.Delta < (DeltaAccum - ClientUpdateTime))
	{
		return;
	}
	else
	{
		if ((ClientUpdateTime < 0) && PendingMove.Delta < (DeltaAccum - ClientUpdateTime))
		{
			return;
		}
		else
		{
			ClientUpdateTime = PendingMove.Delta - DeltaAccum;
			if (SavedMoves == none)
			{
				SavedMoves = PendingMove;
			}
			else
			{
				LastSavedMove.NextMove = PendingMove;
			}
			PendingMove = none;
		}
	}

	// Compress and send move data
	if (PreviousSavedMove != none)
	{
		TimeDiff = FMin(255, (Level.TimeSeconds - PreviousSavedMove.TimeStamp) * 500);
		CompressedAccelVector = (0.0500000 * PreviousSavedMove.Acceleration) + vect(0.5000000, 0.5000000, 0.5000000);
		MoveFlags = (((CompressAccel(int(CompressedAccelVector.X))) << 23) + ((CompressAccel(int(CompressedAccelVector.Y))) << 15)) + ((CompressAccel(int(CompressedAccelVector.Z))) << 7);
		if (PreviousSavedMove.bRun)
		{
			MoveFlags += 64;
		}
		if (PreviousSavedMove.bDuck)
		{
			MoveFlags += 32;
		}
		if (PreviousSavedMove.bPressedJump)
		{
			MoveFlags += 16;
		}
		MoveFlags += int(PreviousSavedMove.DodgeMove);
	}
	RollByte = byte(int(byte(Rotation.Roll >> 8)) & 255);
	if (CurrentSavedMove.bPressedJump)
	{
		bJumpStatus = !bJumpStatus;
	}
	ServerMove(CurrentSavedMove.TimeStamp, CurrentSavedMove.Acceleration * 10, Location, CurrentSavedMove.bRun, CurrentSavedMove.bDuck, bJumpStatus, CurrentSavedMove.bFire, CurrentSavedMove.bAltFire, CurrentSavedMove.bForceFire, CurrentSavedMove.bForceAltFire, CurrentSavedMove.DodgeMove, RollByte, ((32767 & (ViewRotation.Pitch / 2)) * 32768) + (32767 & (ViewRotation.Yaw / 2)), byte(TimeDiff), MoveFlags);
	INT_v4633 = 0;
	return;
}

function Class<Actor> SeveredLimbClass(int BodyPart)
{
    switch(BodyPart)
    {
        case 1:
            return BODYPART_LARM1;
        case 3:
            return BODYPART_RARM1;
        case 5:
            return BODYPART_HEAD;
        default:
            return none;
            break;
    }
    return;
}


final function HandleConsoleTick()
{
	if(!Player.Console.IsInState('UWindow'))
	{
		Player.Console.Disable('Tick');            
	}
	else
	{
		Player.Console.Enable('Tick');
	}
	return;
}
// Suggested function name: ApplyPainSkin
function Texture PainSkin(int DamageLevel)
{
	local int SkinIndex;

	switch(DamageLevel)
	{
		case 10:
			for(SkinIndex = 0; SkinIndex < 16; SkinIndex++)
			{
				if(eq_vxv_4529[SkinIndex] != none)
				{
					SkelGroupSkins[SkinIndex] = eq_vxv_4529[SkinIndex];
				}
			}
			break;
		case 5:
			for(SkinIndex = 0; SkinIndex < 16; SkinIndex++)
			{
				if(eq_vxv_4530[SkinIndex] != none)
				{
					SkelGroupSkins[SkinIndex] = eq_vxv_4530[SkinIndex];
				}
			}
			break;
		case 1:
			for(SkinIndex = 0; SkinIndex < 16; SkinIndex++)
			{
				if(eq_vxv_4531[SkinIndex] != none)
				{
					SkelGroupSkins[SkinIndex] = eq_vxv_4531[SkinIndex];
				}
			}
			break;
		case 3:
			for(SkinIndex = 0; SkinIndex < 16; SkinIndex++)
			{
				if(eq_vxv_4532[SkinIndex] != none)
				{
					SkelGroupSkins[SkinIndex] = eq_vxv_4532[SkinIndex];
				}
			}
			break;
		case 6:
			for(SkinIndex = 0; SkinIndex < 16; SkinIndex++)
			{
				if(eq_vxv_4533[SkinIndex] != none)
				{
					SkelGroupSkins[SkinIndex] = eq_vxv_4533[SkinIndex];
				}
			}
			break;
		case 8:
			for(SkinIndex = 0; SkinIndex < 16; SkinIndex++)
			{
				if(eq_vxv_4534[SkinIndex] != none)
				{
					SkelGroupSkins[SkinIndex] = eq_vxv_4534[SkinIndex];
				}
			}
			break;
		default:
			break;
	}
	return none;
}
// Suggested function name: ApplyGoreCap
// Applies gore cap textures based on the specified gore level.
// Parameters:
// - GoreLevel: The level of gore to apply (1, 3, or 5).
function ApplyGoreCap(int GoreLevel)
{
	local int GoreIndex;

	switch(GoreLevel)
	{
		case 1:
			for(GoreIndex = 0; GoreIndex < 16; GoreIndex++)
			{
				if(eq_vxv_4536[GoreIndex] != none)
				{
					SkelGroupSkins[GoreIndex] = eq_vxv_4536[GoreIndex];
					SkelGroupFlags[GoreIndex] = SkelGroupFlags[GoreIndex] & ~1;
				}
			}
			break;
		case 3:
			for(GoreIndex = 0; GoreIndex < 16; GoreIndex++)
			{
				if(eq_vxv_4538[GoreIndex] != none)
				{
					SkelGroupSkins[GoreIndex] = eq_vxv_4538[GoreIndex];
					SkelGroupFlags[GoreIndex] = SkelGroupFlags[GoreIndex] & ~1;
				}
			}
			break;
		case 5:
			for(GoreIndex = 0; GoreIndex < 16; GoreIndex++)
			{
				if(eq_vxv_4535[GoreIndex] != none)
				{
					SkelGroupSkins[GoreIndex] = eq_vxv_4535[GoreIndex];
					SkelGroupFlags[GoreIndex] = SkelGroupFlags[GoreIndex] & ~1;
				}
			}
			break;
		default:
			break;
	}
	return;
}

function int BodyPartForPolyGroup(int iMode)
{
    return eq_vxv_4528[iMode];
    return;
}

// Suggested function name: SetSkinActorForPlayer
static function SetSkinActor(Actor ActorToSet, int SkinIndex)
{
	local ZRunePlayer Player;

	Player = ZRunePlayer(ActorToSet);
	if (Player == none)
	{
		super(Pawn).SetSkinActor(ActorToSet, SkinIndex);
	}
	else
	{
		Player.UNK_v4523.static.SetSkinActor(ActorToSet, SkinIndex);
	}
	return;
}
// Suggested function name: CopyPlayerAppearance
// This function copies various properties from a RunePlayer actor to initialize this actor's appearance and sounds.
function CopyPlayerAppearance(Actor PlayerActor)
{
	local RunePlayer PlayerToCopy;
	local int Index;

	PlayerToCopy = RunePlayer(PlayerActor);
	// If the actor is not a RunePlayer, exit early
	if (PlayerToCopy == none)
	{
		return;
	}

	// Copy basic class and mesh properties
	UNK_v4523 = PlayerToCopy.Class;
	Skeletal = PlayerToCopy.Skeletal;
	SkelMesh = PlayerToCopy.SkelMesh;
	SubstituteMesh = PlayerToCopy.SubstituteMesh;
	MeshName = string(PlayerToCopy.SubstituteMesh);
	DrawScale = PlayerToCopy.DrawScale;
	ScaleGlow = PlayerToCopy.ScaleGlow;
	Fatness = PlayerToCopy.Fatness;
	DesiredFatness = PlayerToCopy.DesiredFatness;
	DesiredColorAdjust = PlayerToCopy.DesiredColorAdjust;
	SetCollisionSize(PlayerToCopy.CollisionRadius, PlayerToCopy.CollisionHeight);

	// Copy skin and group flags for all 16 groups
	for (Index = 0; Index < 16; Index++)
	{
		SkelGroupSkins[Index] = PlayerToCopy.SkelGroupSkins[Index];
		SkelGroupFlags[Index] = PlayerToCopy.SkelGroupFlags[Index];
	}

	// Copy carcass and limb classes
	CarcassType = PlayerToCopy.CarcassType;
	BODYPART_LARM1 = PlayerToCopy.SeveredLimbClass(1);
	BODYPART_RARM1 = PlayerToCopy.SeveredLimbClass(3);
	BODYPART_HEAD = PlayerToCopy.SeveredLimbClass(5);

	// Copy body part mappings
	for (Index = 0; Index < 16; Index++)
	{
		eq_vxv_4528[Index] = PlayerToCopy.BodyPartForPolyGroup(Index);
	}

	// Clear skins and apply pain skins to extract textures
	for (Index = 0; Index < 16; Index++)
	{
		PlayerToCopy.SkelGroupSkins[Index] = none;
	}
	PlayerToCopy.PainSkin(10);
	for (Index = 0; Index < 16; Index++)
	{
		eq_vxv_4529[Index] = PlayerToCopy.SkelGroupSkins[Index];
		PlayerToCopy.SkelGroupSkins[Index] = none;
	}

	PlayerToCopy.PainSkin(5);
	for (Index = 0; Index < 16; Index++)
	{
		eq_vxv_4530[Index] = PlayerToCopy.SkelGroupSkins[Index];
		PlayerToCopy.SkelGroupSkins[Index] = none;
	}

	PlayerToCopy.PainSkin(1);
	for (Index = 0; Index < 16; Index++)
	{
		eq_vxv_4531[Index] = PlayerToCopy.SkelGroupSkins[Index];
		PlayerToCopy.SkelGroupSkins[Index] = none;
	}

	PlayerToCopy.PainSkin(3);
	for (Index = 0; Index < 16; Index++)
	{
		eq_vxv_4532[Index] = PlayerToCopy.SkelGroupSkins[Index];
		PlayerToCopy.SkelGroupSkins[Index] = none;
	}

	PlayerToCopy.PainSkin(6);
	for (Index = 0; Index < 16; Index++)
	{
		eq_vxv_4533[Index] = PlayerToCopy.SkelGroupSkins[Index];
		PlayerToCopy.SkelGroupSkins[Index] = none;
	}

	PlayerToCopy.PainSkin(8);
	for (Index = 0; Index < 16; Index++)
	{
		eq_vxv_4534[Index] = PlayerToCopy.SkelGroupSkins[Index];
		PlayerToCopy.SkelGroupSkins[Index] = none;
	}

	PlayerToCopy.ApplyGoreCap(5);
	for (Index = 0; Index < 16; Index++)
	{
		eq_vxv_4535[Index] = PlayerToCopy.SkelGroupSkins[Index];
		PlayerToCopy.SkelGroupSkins[Index] = none;
	}

	PlayerToCopy.ApplyGoreCap(1);
	for (Index = 0; Index < 16; Index++)
	{
		eq_vxv_4536[Index] = PlayerToCopy.SkelGroupSkins[Index];
		PlayerToCopy.SkelGroupSkins[Index] = none;
	}

	PlayerToCopy.ApplyGoreCap(3);
	for (Index = 0; Index < 16; Index++)
	{
		eq_vxv_4538[Index] = PlayerToCopy.SkelGroupSkins[Index];
		PlayerToCopy.SkelGroupSkins[Index] = none;
	}

	// Copy sound properties
	HitSound1 = PlayerToCopy.HitSound1;
	HitSound2 = PlayerToCopy.HitSound2;
	HitSound3 = PlayerToCopy.HitSound3;
	Die = PlayerToCopy.Die;
	Die2 = PlayerToCopy.Die2;
	Die3 = PlayerToCopy.Die3;
	WaterStep = PlayerToCopy.WaterStep;
	GibSound = PlayerToCopy.GibSound;
	LandGrunt = PlayerToCopy.LandGrunt;

	// Copy footstep sounds for various surfaces
	for (Index = 0; Index < 3; Index++)
	{
		FootStepWood[Index] = PlayerToCopy.FootStepWood[Index];
	}
	for (Index = 0; Index < 3; Index++)
	{
		FootStepMetal[Index] = PlayerToCopy.FootStepMetal[Index];
	}
	for (Index = 0; Index < 3; Index++)
	{
		FootStepStone[Index] = PlayerToCopy.FootStepStone[Index];
	}
	for (Index = 0; Index < 3; Index++)
	{
		FootStepFlesh[Index] = PlayerToCopy.FootStepFlesh[Index];
	}
	for (Index = 0; Index < 3; Index++)
	{
		FootStepIce[Index] = PlayerToCopy.FootStepIce[Index];
	}
	for (Index = 0; Index < 3; Index++)
	{
		FootStepEarth[Index] = PlayerToCopy.FootStepEarth[Index];
	}
	for (Index = 0; Index < 3; Index++)
	{
		FootStepSnow[Index] = PlayerToCopy.FootStepSnow[Index];
	}
	for (Index = 0; Index < 3; Index++)
	{
		FootStepBreakableWood[Index] = PlayerToCopy.FootStepBreakableWood[Index];
	}
	for (Index = 0; Index < 3; Index++)
	{
		FootStepBreakableStone[Index] = PlayerToCopy.FootStepBreakableStone[Index];
	}
	for (Index = 0; Index < 3; Index++)
	{
		FootStepWater[Index] = PlayerToCopy.FootStepWater[Index];
	}
	for (Index = 0; Index < 3; Index++)
	{
		FootStepMud[Index] = PlayerToCopy.FootStepMud[Index];
	}
	for (Index = 0; Index < 3; Index++)
	{
		FootStepLava[Index] = PlayerToCopy.FootStepLava[Index];
	}

	// Copy landing sounds
	LandSoundWood = PlayerToCopy.LandSoundWood;
	LandSoundMetal = PlayerToCopy.LandSoundMetal;
	LandSoundStone = PlayerToCopy.LandSoundStone;
	LandSoundFlesh = PlayerToCopy.LandSoundFlesh;
	LandSoundIce = PlayerToCopy.LandSoundIce;
	LandSoundSnow = PlayerToCopy.LandSoundSnow;
	LandSoundEarth = PlayerToCopy.LandSoundEarth;
	LandSoundBreakableWood = PlayerToCopy.LandSoundBreakableWood;
	LandSoundBreakableStone = PlayerToCopy.LandSoundBreakableStone;
	LandSoundWater = PlayerToCopy.LandSoundWater;
	LandSoundMud = PlayerToCopy.LandSoundMud;
	LandSoundLava = PlayerToCopy.LandSoundLava;
	JumpSound = PlayerToCopy.JumpSound;
	breathagain = PlayerToCopy.breathagain;
	Die4 = PlayerToCopy.Die4;
	GaspSound = PlayerToCopy.GaspSound;

	// Copy underwater hit sounds
	for (Index = 0; Index < 3; Index++)
	{
		UnderWaterHitSound[Index] = PlayerToCopy.UnderWaterHitSound[Index];
	}

	PowerupFail = default.PowerupFail;
	WeaponPickupSound = PlayerToCopy.WeaponPickupSound;
	WeaponThrowSound = PlayerToCopy.WeaponThrowSound;
	WeaponDropSound = PlayerToCopy.WeaponDropSound;

	// Copy jump grunt sounds
	for (Index = 0; Index < 3; Index++)
	{
		JumpGruntSound[Index] = PlayerToCopy.JumpGruntSound[Index];
	}

	FallingDeathSound = PlayerToCopy.FallingDeathSound;
	FallingScreamSound = PlayerToCopy.FallingScreamSound;
	UnderWaterDeathSound = PlayerToCopy.UnderWaterDeathSound;
	EdgeGrabSound = PlayerToCopy.EdgeGrabSound;
	StepupSound = PlayerToCopy.StepupSound;
	KickSound = PlayerToCopy.KickSound;

	// Copy hit sounds for different intensities
	for (Index = 0; Index < 3; Index++)
	{
		HitSoundLow[Index] = PlayerToCopy.HitSoundLow[Index];
	}
	for (Index = 0; Index < 3; Index++)
	{
		HitSoundMed[Index] = PlayerToCopy.HitSoundMed[Index];
	}
	for (Index = 0; Index < 3; Index++)
	{
		HitSoundHigh[Index] = PlayerToCopy.HitSoundHigh[Index];
	}

	// Copy underwater ambient sounds
	for (Index = 0; Index < 6; Index++)
	{
		UnderwaterAmbient[Index] = PlayerToCopy.UnderwaterAmbient[Index];
	}

	BerserkSoundStart = PlayerToCopy.BerserkSoundStart;
	BerserkSoundEnd = PlayerToCopy.BerserkSoundEnd;
	BerserkSoundLoop = PlayerToCopy.BerserkSoundLoop;

	// Copy berserk yell sounds
	for (Index = 0; Index < 6; Index++)
	{
		BerserkYellSound[Index] = PlayerToCopy.BerserkYellSound[Index];
	}

	CrouchSound = PlayerToCopy.CrouchSound;

	// Copy rope climb sounds
	for (Index = 0; Index < 3; Index++)
	{
		RopeClimbSound[Index] = PlayerToCopy.RopeClimbSound[Index];
	}

	// Special handling for CoopSarkRagnar class
	if (PlayerActor.Class == Class'coadminz7.CoopSarkRagnar')
	{
		default.DrawScale = 1.5;
		default.GroundSpeed = 384;
		default.JumpZ = 715;
		default.BaseEyeHeight = 45;
		default.EyeHeight = 45;
		default.Health = 160;
		default.MaxHealth = 160;
		default.ExploreSpeed = 472;
		default.CombatSpeed = 337;
		DrawScale = 1.5;
		GroundSpeed = 384;
		JumpZ = 715;
		BaseEyeHeight = 45;
		EyeHeight = 45;
		Health = 160;
		MaxHealth = 160;
		ExploreSpeed = 472;
		CombatSpeed = 337;
	}
	return;
}

state zNewState1
{
    ignores Use, SwitchWeapon, Taunt, AltFire, Fire, PlayChatting;
	// Suggested function name: PlayCrucifiedIdleAnimation
	function PlayCrucifiedIdleAnimation()
	{
		// Play the crucified pain animation on the player
		LoopAnim('CrucifiedApain', 0.4000000, 0.2500000);
		
		// If the animation proxy exists, play the power-up idle animation
		if (AnimProxy != none)
		{
			AnimProxy.LoopAnim('S4_Powerupidle', 0.1000000, 0.2500000);
		}
		
		// Set the rotation of joint 34 (likely the torso or arms) to a crucified pose
		SetJointRot(34, rot(25000, 0, 0));
		SetJointRotationForAllPlayers(34, rot(25000, 0, 0));
		
		return;
	}

    function AnimEnd()
    {
        PlayCrucifiedIdleAnimation();
        return;
    }

    simulated function BeginState()
    {
        UNK_v4709 = 0;
        SetTimer(0.5000000, false);
        if(NSword(Weapon) != none)
        {
            Weapon.GotoState('zNewState1');
        }
        if(AnimProxy != none)
        {
            zPlayerProxy(AnimProxy).GotoState('zNewProxyState1');
        }
        SetCrouch(false);
        bPressedJump = false;
        bRotateTorso = false;
        bCanFly = true;
        SetPhysics(4);
        PlayCrucifiedIdleAnimation();
        Acceleration = vect(0.0000000, 0.0000000, 0.0000000);
        Velocity = vect(0.0000000, 0.0000000, 0.0000000);
        return;
    }

    simulated function EndState()
    {
        if((Weapon != none) && Weapon.GetStateName() != 'Active')
        {
            Weapon.GotoState('Active');
        }
        bRotateTorso = default.bRotateTorso;
        bCanFly = default.bCanFly;
        if(AnimProxy != none)
        {
            AnimProxy.GotoState('Idle');
        }
        SetJointRot(34, rot(0, 0, 0));
        SetJointRotationForAllPlayers(34, rot(0, 0, 0));
        UNK_v4709 = 0;
        return;
    }

    function ZoneChange(ZoneInfo Parm_ZoneInfo_0)
    {
        if(Parm_ZoneInfo_0.bWaterZone)
        {
            SetPhysics(3);
            GotoState('PlayerSwimming');
        }
        return;
    }

    exec function Jump(optional float Local_CTTorch_v1)
    {
        HandleDash(false);
        return;
    }

    function ProcessMove(float Parm_float_0, Vector Parm_Vector_0, Actor.EDodgeDir DodgeMove, Rotator ParmRot0)
    {
        PlayCrucifiedIdleAnimation();
        return;
    }

    event PlayerTick(float Parm_float_0)
    {
        if(bUpdatePosition)
        {
            ClientUpdatePosition();
        }
        PlayerMove(Parm_float_0);
        return;
    }

    function ServerMove(float TimeStamp, Vector Parm_Vector_0, Vector Parm_Vector_1, bool Parm_bool_0, bool Parm_bool_1, bool Parm_bool_2, bool Parm_bool_3, bool Parm_bool_4, bool bForceFire, bool bForceAltFire, Actor.EDodgeDir DodgeMove, byte Parm_byte_0, int iMode, optional byte Local_float_v0, optional int Local_int_v0)
    {
        global.ServerMove(TimeStamp, Parm_Vector_0, Parm_Vector_1, Parm_bool_0, Parm_bool_1, Parm_bool_2, Parm_bool_3, Parm_bool_4, bForceFire, bForceAltFire, DodgeMove, Parm_byte_0, ((32767 & (ViewRotation.Pitch / 2)) * 32768) + (32767 & (ViewRotation.Yaw / 2)));
        return;
    }

    function PlayerMove(float Parm_float_0)
    {
        local Vector Parm_Vector_0, X, Y, Z;

        GetAxes(ViewRotation, X, Y, Z);
        aForward *= 0.0000000;
        aStrafe *= 0.0000000;
        aLookUp *= 0.2400000;
        aTurn *= 0.2400000;
        aLookUp *= 0.2400000;
        aTurn *= 0.2400000;
        ViewRotation.Yaw += int((32.0000000 * Parm_float_0) * aTurn);
        ViewRotation.Pitch += int((32.0000000 * Parm_float_0) * aLookUp);
        ViewRotation.Pitch = ViewRotation.Pitch & 65535;

        if((ViewRotation.Pitch > 18000) && ViewRotation.Pitch < 49152)
        {
            if(aLookUp > float(0))
            {
                ViewRotation.Pitch = 18000;                
            }
            else
            {
                ViewRotation.Pitch = 49152;
            }
        }
        ViewFlash(Parm_float_0);
        if(int(Role) < int(ROLE_Authority))
        {
            ReplicateClientMove(Parm_float_0, Parm_Vector_0, 0, rot(0, 0, 0));            
        }
        else
        {
            ProcessMove(Parm_float_0, Parm_Vector_0, 0, rot(0, 0, 0));
        }
        bPressedJump = false;
        return;
    }

    simulated function Timer()
    {
        UNK_v4709++;
        if((Weapon != none) && Weapon.GetStateName() != 'Active')
        {
            Weapon.GotoState('Active');
        }
        if(UNK_v4709 > 6)
        {
            HandleDash(true);
        }
        super(Actor).Timer();
        return;
    }

    function PlayTakeHit(float Parm_float_0, int Damage, Vector Parm_Vector_0, name DamageType, Vector Momentum, int iMode)
    {
        super(RunePlayer).PlayTakeHit(Parm_float_0, Damage, Parm_Vector_0, DamageType, Momentum, iMode);
        HandleDash(true);
        return;
    }

    function PlayDying(name DamageType, Vector Parm_Vector_0)
    {
        BaseEyeHeight = default.BaseEyeHeight;
        super(Pawn).PlayDying(DamageType, Parm_Vector_0);
        return;
    }

    function ChangedWeapon()
    {
        return;
    }
    stop;
}

state Uninterrupted
{
    ignores LongFall, WarnTarget;

    function PlayerMove(float Parm_float_0)
    {
        if(int(Role) < int(ROLE_Authority))
        {
            ReplicateClientMove(Parm_float_0, vect(0.0000000, 0.0000000, 0.0000000), 0, rot(0, 0, 0));
        }
        return;
    }
    stop;
}

state PlayerSwimming
{
    function PlayMoving(optional float Parm_float_0)
    {
        PlaySwimming();
        return;
    }

    function PlayUnderwaterSound()
    {
        AmbientSound = UnderwaterAmbient[Rand(5)];
        return;
    }

    function SetSurfaceSwim(bool Parm_bool_0)
    {
        if((Velocity.Z > float(-300)) && Parm_bool_0)
        {
            bSurfaceSwimming = Parm_bool_0;            
        }
        else
        {
            bSurfaceSwimming = false;
        }
        return;
    }

    function StopUnderwaterSound()
    {
        AmbientSound = none;
        return;
    }

    function bool CanGotoPainState()
    {
        return !bSurfaceSwimming;
        return;
    }

    function AnimEnd()
    {
        PlaySwimming();
        return;
    }

    function EndState()
    {
        super.EndState();
        RotationRate.Pitch = 0;
        SetSurfaceSwim(false);
        bBurnable = default.bBurnable;
        WaterSpeed = 300.0000000;
        AmbientSound = none;
        return;
    }

    function HeadZoneChange(ZoneInfo Parm_ZoneInfo_0)
    {
        local Vector Parm_Vector_0, Parm_Vector_0, Local_Vector_v0;

        super(Pawn).HeadZoneChange(Parm_ZoneInfo_0);
        if((!Parm_ZoneInfo_0.bWaterZone && !bSurfaceSwimming) && Velocity.Z > float(-300))
        {
            SetSurfaceSwim(true);
            GrabLocationUp = FindWaterLine(Location + vect(0.0000000, 0.0000000, 40.0000000), Location + vect(0.0000000, 0.0000000, -40.0000000));
            Local_Vector_v0.X = CollisionRadius;
            Local_Vector_v0.Y = CollisionRadius;
            Local_Vector_v0.Z = CollisionHeight;
            if(Trace(Parm_Vector_0, Parm_Vector_0, GrabLocationUp, Location, true, Local_Vector_v0) == none)
            {
                SetLocation(GrabLocationUp);
                Buoyancy = Mass;
                bNoSurfaceBob = true;
                Acceleration = vect(0.0000000, 0.0000000, 0.0000000);
                Velocity = vect(0.0000000, 0.0000000, 0.0000000);
                RotationRate.Pitch = 0;
                WaterSpeed = 200.0000000;                
            }
            else
            {
                SetSurfaceSwim(false);
                RotationRate.Pitch = 16000;
                WaterSpeed = 300.0000000;
            }            
        }
        else
        {
            if(Parm_ZoneInfo_0.bWaterZone && bSurfaceSwimming)
            {
                SetSurfaceSwim(false);
                RotationRate.Pitch = 16000;
                WaterSpeed = 300.0000000;
            }
        }
        if(Parm_ZoneInfo_0.bWaterZone)
        {
            PlayUnderwaterSound();            
        }
        else
        {
            AmbientSound = none;
        }
        return;
    }

    event UpdateEyeHeight(float Parm_float_0)
    {
        local float Local_float_v0, Local_float_v1;

        if(!bJustLanded)
        {
            Local_float_v0 = FMin(1.0000000, (10.0000000 * Parm_float_0) / Level.TimeDilation);
            EyeHeight = (((EyeHeight - Location.Z) + OldLocation.Z) * (float(1) - Local_float_v0)) + ((shakevert + BaseEyeHeight) * Local_float_v0);
            Local_float_v1 = -0.5000000 * CollisionHeight;
            if(EyeHeight < Local_float_v1)
            {
                EyeHeight = Local_float_v1;                
            }
            else
            {
                Local_float_v1 = CollisionHeight + FClamp(OldLocation.Z - Location.Z, 0.0000000, MaxStepHeight);
                if(EyeHeight > Local_float_v1)
                {
                    EyeHeight = Local_float_v1;
                }
            }            
        }
        else
        {
            Local_float_v0 = FClamp((10.0000000 * Parm_float_0) / Level.TimeDilation, 0.3500000, 1.0000000);
            bJustLanded = false;
            EyeHeight = (EyeHeight * (float(1) - Local_float_v0)) + ((BaseEyeHeight + shakevert) * Local_float_v0);
        }
        if(FovAngle != DesiredFOV)
        {
            if(FovAngle > DesiredFOV)
            {
                FovAngle = FovAngle - FMax(7.0000000, (0.9000000 * Parm_float_0) * (FovAngle - DesiredFOV));                
            }
            else
            {
                FovAngle = FovAngle - FMin(-7.0000000, (0.9000000 * Parm_float_0) * (FovAngle - DesiredFOV));
            }
            if(Abs(FovAngle - DesiredFOV) <= float(10))
            {
                FovAngle = DesiredFOV;
            }
        }
        if(bZooming)
        {
            ZoomLevel += (Parm_float_0 * 1.0000000);
            if(ZoomLevel > 0.9000000)
            {
                ZoomLevel = 0.9000000;
            }
            DesiredFOV = FClamp(90.0000000 - (ZoomLevel * 88.0000000), 1.0000000, 170.0000000);
        }
        return;
    }

    function UpdateRotation(float Parm_float_0, float Parm_float_1)
    {
        local Rotator ParmRot0;

        if(!bSurfaceSwimming)
        {
            DesiredRotation = ViewRotation;
            ViewRotation.Pitch += int((32.0000000 * Parm_float_0) * aLookUp);
            ViewRotation.Pitch = ViewRotation.Pitch & 65535;
            if((ViewRotation.Pitch > 18000) && ViewRotation.Pitch < 49152)
            {
                if(aLookUp > float(0))
                {
                    ViewRotation.Pitch = 18000;                    
                }
                else
                {
                    ViewRotation.Pitch = 49152;
                }
            }
            ViewRotation.Yaw += int((32.0000000 * Parm_float_0) * aTurn);
            ViewFlash(Parm_float_0);
            ParmRot0 = ViewRotation;
            if((float(ParmRot0.Pitch) > (Parm_float_1 * float(RotationRate.Pitch))) && float(ParmRot0.Pitch) < (float(65536) - (Parm_float_1 * float(RotationRate.Pitch))))
            {
                if(ViewRotation.Pitch < 32768)
                {
                    ParmRot0.Pitch = int(Parm_float_1 * float(RotationRate.Pitch));                    
                }
                else
                {
                    ParmRot0.Pitch = int(float(65536) - (Parm_float_1 * float(RotationRate.Pitch)));
                }
            }
            SetRotation(ParmRot0);            
        }
        else
        {
            super.UpdateRotation(Parm_float_0, Parm_float_1);
        }
        return;
    }

    function Landed(Vector Parm_Vector_0, Actor Parm_Actor_0)
    {
        if(!bUpdating)
        {
            PlayLanded(Velocity.Z);
            bJustLanded = true;
        }
        if(Region.Zone.bWaterZone)
        {
            
            if(Velocity.Z > float(-500))
            {
                SetPhysics(3);
            }            
        }
        else
        {
            GotoState('PlayerWalking');
            AnimEnd();
        }
        return;
    }

    function ZoneChange(ZoneInfo Parm_ZoneInfo_0)
    {
        local Actor Parm_Actor_0;
        local Vector Parm_Vector_0, Parm_Vector_0, Local_Vector_v0;

        if(!Parm_ZoneInfo_0.bWaterZone)
        {
            SetPhysics(2);
            if(bUpAndOut && CheckWaterJump(Parm_Vector_0))
            {
                Velocity.Z = 330.0000000 + (float(2) * CollisionRadius);
                PlayDuck();
                GotoState('PlayerWalking');                
            }
            else
            {
                if(!FootRegion.Zone.bWaterZone || Velocity.Z > float(160))
                {
                    GotoState('PlayerWalking');
                    AnimEnd();                    
                }
                else
                {
                    Local_Vector_v0 = Location;
                    Local_Vector_v0.Z -= (CollisionHeight + 6.0000000);
                    Parm_Actor_0 = Trace(Parm_Vector_0, Parm_Vector_0, Local_Vector_v0, Location, false);
                    if(Parm_Actor_0 != none)
                    {
                        GotoState('PlayerWalking');
                        AnimEnd();                        
                    }
                    else
                    {
                        Enable('Timer');
                        SetTimer(0.7000000, false);
                    }
                }
            }            
        }
        else
        {
            Disable('Timer');
            if(Velocity.Z > float(-500))
            {
                SetPhysics(3);
            }
        }
        return;
    }

    function ProcessMove(float Parm_float_0, Vector Parm_Vector_0, Actor.EDodgeDir DodgeMove, Rotator ParmRot0)
    {
        local Vector X, Y, Z, Local_Color_v0;
        local bool Local_bool_v0;
        local int Local_int_v0;
        local Vector Local_Vector_v0;

        Local_int_v0 = 1;
        if(Local_bool_v0)
        {
            switch(Local_int_v0)
            {
                case Local_int_v0 + 1:
                    Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                    MakeNoise(2147484000.0000000);
                    break;
                case 3:
                    TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), Local_int_v0, Local_Vector_v0);
                    MakeNoise(2147484000.0000000);
                    break;
                case 2147483647:
                    MakeNoise(-2147484000.0000000);
                default:
                    break;
            }
        }
        else
        {
            GetAxes(ViewRotation, X, Y, Z);
            Acceleration = Parm_Vector_0;
            PlaySwimming();
            if(bSurfaceSwimming)
            {
                CheckForSubmerge();
            }
            if(zPlayerReplicationInfo(PlayerReplicationInfo).B_v5360 || zPlayerReplicationInfo(PlayerReplicationInfo).B_v5401)
            {
                if(HeadRegion.Zone.bWaterZone)
                {
                    if((int(Physics) == int(2)) || int(Physics) == int(1))
                    {
                        SetPhysics(3);
                    }
                }                
            }
            else
            {
                if((Velocity.Z < float(-150)) && int(Physics) == int(2))
                {
                    Velocity.Z = Velocity.Z + float(5);
                }
                if((Velocity.Z > float(-151)) && HeadRegion.Zone.bWaterZone)
                {
                    if((int(Physics) == int(2)) || int(Physics) == int(1))
                    {
                        SetPhysics(3);
                    }
                }
            }
            if(bSurfaceSwimming)
            {
                Acceleration.Z = 0.0000000;
            }
            return;
        }
    }

    event PlayerTick(float Parm_float_0)
    {
        if(bUpdatePosition)
        {
            ClientUpdatePosition();
        }
        PlayerMove(Parm_float_0);
        return;
    }

    function PlayerMove(float Parm_float_0)
    {
        local Rotator Local_Rotator_v0;
        local Vector X, Y, Z, Parm_Vector_0;
        local float Local_float_v0;

        if(bSurfaceSwimming)
        {
            GetAxes(ViewRotation, X, Y, Z);
            aForward *= 0.2000000;
            aStrafe *= 0.1000000;
            aLookUp *= 0.2400000;
            if(!B_v4524)
            {
                aTurn *= 0.2400000;
            }
            aUp *= 0.1000000;
            if(aUp >= float(0))
            {
                aUp = 0.0000000;                
            }
            else
            {
                aForward = 0.0000000;
                aStrafe = 0.0000000;
            }
            Parm_Vector_0 = ((aForward * X) + (aStrafe * Y)) + (aUp * vect(0.0000000, 0.0000000, 1.0000000));
            Local_Rotator_v0 = Rotation;
            UpdateRotation(Parm_float_0, 2.0000000);
            if(int(Role) < int(ROLE_Authority))
            {
                ReplicateClientMove(Parm_float_0, Parm_Vector_0, 0, Local_Rotator_v0 - Rotation);                
            }
            else
            {
                ProcessMove(Parm_float_0, Parm_Vector_0, 0, Local_Rotator_v0 - Rotation);
            }
            bPressedJump = false;            
        }
        else
        {
            GetAxes(ViewRotation, X, Y, Z);
            aForward *= 0.2000000;
            aStrafe *= 0.1000000;
            aLookUp *= 0.2400000;
            aTurn *= 0.2400000;
            aUp *= 0.1000000;
            Parm_Vector_0 = ((aForward * X) + (aStrafe * Y)) + (aUp * vect(0.0000000, 0.0000000, 1.0000000));
            if(!bShowMenu)
            {
                Local_float_v0 = Sqrt((Velocity.X * Velocity.X) + (Velocity.Y * Velocity.Y));
                WalkBob = (((Y * Bob) * 0.5000000) * Local_float_v0) * Sin(4.0000000 * Level.TimeSeconds);
                WalkBob.Z = ((Bob * 1.5000000) * Local_float_v0) * Sin(8.0000000 * Level.TimeSeconds);
            }
            Local_Rotator_v0 = Rotation;
            UpdateRotation(Parm_float_0, 2.0000000);
            if(int(Role) < int(ROLE_Authority))
            {
                ReplicateClientMove(Parm_float_0, Parm_Vector_0, 0, Local_Rotator_v0 - Rotation);                
            }
            else
            {
                ProcessMove(Parm_float_0, Parm_Vector_0, 0, Local_Rotator_v0 - Rotation);
            }
            bPressedJump = false;
        }
        return;
    }

    function Timer()
    {
        if(!Region.Zone.bWaterZone && int(Role) == int(ROLE_Authority))
        {
            GotoState('PlayerWalking');
            AnimEnd();
        }
        Disable('Timer');
        return;
    }

    function BeginState()
    {
        super.BeginState();
        RotationRate.Pitch = 16000;
        PlayUnderwaterSound();
        bBurnable = false;
        InstantStow();
        return;
    }
    stop;
}

state PlayerWaiting
{
    ignores Died, TakeDamage;

    function PlayerMove(float Parm_float_0)
    {
        local Rotator ParmRot0;
        local Vector X, Y, Z;

        GetAxes(ViewRotation, X, Y, Z);
        aForward *= 0.1000000;
        aStrafe *= 0.1000000;
        aLookUp *= 0.2400000;
        aTurn *= 0.2400000;
        aUp *= 0.1000000;
        Acceleration = ((aForward * X) + (aStrafe * Y)) + (aUp * vect(0.0000000, 0.0000000, 1.0000000));
        UpdateRotation(Parm_float_0, 1.0000000);
        if(int(Role) < int(ROLE_Authority))
        {
            ReplicateClientMove(Parm_float_0, Acceleration, 0, rot(0, 0, 0));            
        }
        else
        {
            ProcessMove(Parm_float_0, Acceleration, 0, rot(0, 0, 0));
        }
        return;
    }
    stop;
}

state CheatFlying
{
    ignores TakeDamage;

    function AnimEnd()
    {
        PlaySwimming();
        return;
    }

    function ProcessMove(float Parm_float_0, Vector Parm_Vector_0, Actor.EDodgeDir DodgeMove, Rotator ParmRot0)
    {
        Acceleration = Normal(Parm_Vector_0) * float(300);
        MoveSmooth(Acceleration * Parm_float_0);
        Velocity = Acceleration;
        return;
    }

    event PlayerTick(float Parm_float_0)
    {
        if(bUpdatePosition)
        {
            ClientUpdatePosition();
        }
        PlayerMove(Parm_float_0);
        return;
    }

    function PlayerMove(float Parm_float_0)
    {
        local Vector X, Y, Z;

        GetAxes(ViewRotation, X, Y, Z);
        aForward *= 0.1000000;
        aStrafe *= 0.1000000;
        aLookUp *= 0.2400000;
        aTurn *= 0.2400000;
        aUp *= 0.1000000;
        Acceleration = ((aForward * X) + (aStrafe * Y)) + (aUp * vect(0.0000000, 0.0000000, 1.0000000));
        UpdateRotation(Parm_float_0, 1.0000000);
        if(int(Role) < int(ROLE_Authority))
        {
            ReplicateClientMove(Parm_float_0, Acceleration, 0, rot(0, 0, 0));            
        }
        else
        {
            ProcessMove(Parm_float_0, Acceleration, 0, rot(0, 0, 0));
        }
        bPressedJump = false;
        return;
    }

    function BeginState()
    {
        EyeHeight = BaseEyeHeight;
        SetPhysics(4);
        if(Acceleration == vect(0.0000000, 0.0000000, 0.0000000))
        {
            Acceleration = vect(0.0000000, 0.0000000, 2.0000000);
        }
        if(Base != none)
        {
            SetBase(Level);
        }
        if(!IsAnimating())
        {
            PlaySwimming();
        }
        bCanFly = true;
        bPressedJump = false;
        return;
    }

    function EndState()
    {
        bCanFly = false;
        bPressedJump = false;
        return;
    }
    stop;
}

state GameEnded
{
    ignores Suicide, Died, JointDamaged, KilledBy;

    function BeginState()
    {
        SetPendingCommand("mapchange");
        SetPhysics(0);
        super.BeginState();
        return;
    }

    function ProcessMove(float Parm_float_0, Vector Parm_Vector_0, Actor.EDodgeDir DodgeMove, Rotator ParmRot0)
    {
        if(VSize(Parm_Vector_0) < 0.1000000)
        {
            Acceleration = vect(0.0000000, 0.0000000, 0.5000000);
        }
        Velocity = Acceleration;
        return;
    }

    function PlayerMove(float Parm_float_0)
    {
        local Vector X, Y, Z;

        GetAxes(ViewRotation, X, Y, Z);
        if(!bFixedCamera)
        {
            aLookUp *= 0.2400000;
            aTurn *= 0.2400000;
            ViewRotation.Yaw += int((32.0000000 * Parm_float_0) * aTurn);
            ViewRotation.Pitch += int((32.0000000 * Parm_float_0) * aLookUp);
            ViewRotation.Pitch = ViewRotation.Pitch & 65535;
            if((ViewRotation.Pitch > 18000) && ViewRotation.Pitch < 49152)
            {
                if(aLookUp > float(0))
                {
                    ViewRotation.Pitch = 18000;                    
                }
                else
                {
                    ViewRotation.Pitch = 49152;
                }
            }            
        }
        else
        {
            if(ViewTarget != none)
            {
                ViewRotation = ViewTarget.Rotation;
            }
        }
        ViewFlash(Parm_float_0);
        if(int(Role) < int(ROLE_Authority))
        {
            ReplicateClientMove(Parm_float_0, vect(0.0000000, 0.0000000, 0.0000000), 0, rot(0, 0, 0));            
        }
        else
        {
            ProcessMove(Parm_float_0, vect(0.0000000, 0.0000000, 0.0000000), 0, rot(0, 0, 0));
        }
        bPressedJump = false;
        return;
    }
    stop;
}

state Dying
{
    ignores SwitchWeapon, LongFall, Died, WarnTarget, KilledBy;

    function ServerReStartPlayer()
    {
        if(!bCanRestart)
        {
            FLT_v4707 = DesiredFOV;
            GotoState('PlayerSpectating');
            return;
        }
        super.ServerReStartPlayer();
        PlayerRestart();
        return;
    }

    function BeginState()
    {
        local int i, iMode;
        local Vector X, Y, Z;

        super.BeginState();
        if(bIsCrouching)
        {
            SetCrouch(false);
            SetMovementMode();
            SetNormalHeight();
            bIsCrouching = false;
        }
        return;
    }

    function EndState()
    {
        if(Player != none)
        {
            Buoyancy = default.Buoyancy;
            J0x16:

            
            if(SavedMoves != none)
            {
                SavedMoves.Destroy();
                SavedMoves = SavedMoves.NextMove;
                // [Loop Continue]
                goto J0x16;
            }
            if(PendingMove != none)
            {
                PendingMove.Destroy();
                PendingMove = none;
            }
            Velocity = vect(0.0000000, 0.0000000, 0.0000000);
            Acceleration = vect(0.0000000, 0.0000000, 0.0000000);
            bShowScores = false;
            bJustFired = false;
            bJustAltFired = false;
            bPressedJump = false;
            if(Carcass(ViewTarget) != none)
            {
                ViewTarget = none;
            }
        }
        return;
    }

    function PlayerMove(float Parm_float_0)
    {
        local Vector X, Y, Z;

        GetAxes(ViewRotation, X, Y, Z);
        if(!bFixedCamera)
        {
            aLookUp *= 0.2400000;
            aTurn *= 0.2400000;
            ViewRotation.Yaw += int((32.0000000 * Parm_float_0) * aTurn);
            ViewRotation.Pitch += int((32.0000000 * Parm_float_0) * aLookUp);
            ViewRotation.Pitch = ViewRotation.Pitch & 65535;
            if((ViewRotation.Pitch > 18000) && ViewRotation.Pitch < 49152)
            {
                if(aLookUp > float(0))
                {
                    ViewRotation.Pitch = 18000;                    
                }
                else
                {
                    ViewRotation.Pitch = 49152;
                }
            }            
        }
        else
        {
            if(ViewTarget != none)
            {
                ViewRotation = ViewTarget.Rotation;
            }
        }
        ViewFlash(Parm_float_0);
        if(int(Role) < int(ROLE_Authority))
        {
            ReplicateClientMove(Parm_float_0, vect(0.0000000, 0.0000000, 0.0000000), 0, rot(0, 0, 0));            
        }
        else
        {
            ProcessMove(Parm_float_0, vect(0.0000000, 0.0000000, 0.0000000), 0, rot(0, 0, 0));
        }
        bPressedJump = false;
        return;
    }
    stop;
}

state eq0_vxv_1524
{
    final function Parm_Vector_0()
    {
        super(eq0_vxv_1524).Parm_Vector_0();
        return;
    }

    function BeginState()
    {
        GotoState('PlayerWalking');
        return;
    }
    stop;
}

state() Statue
{
    exec function Fire(optional float Local_CTTorch_v1)
    {
        return;
    }

    exec function AltFire(optional float Local_CTTorch_v1)
    {
        return;
    }

    exec function Use()
    {
        return;
    }

    exec function Throw()
    {
        return;
    }

    exec function PowerUp()
    {
        return;
    }

    exec function Taunt()
    {
        return;
    }

    exec function SwitchWeapon(byte Local_CTTorch_v1)
    {
        return;
    }

    function bool CanBeStatued()
    {
        return false;
        return;
    }

    function bool CanGotoPainState()
    {
        return false;
        return;
    }

    function ZoneChange(ZoneInfo Parm_ZoneInfo_0)
    {
        return;
    }

    function PlayerMove(float Parm_float_0)
    {
        if(int(Role) < int(ROLE_Authority))
        {
            ReplicateClientMove(Parm_float_0, vect(0.0000000, 0.0000000, 0.0000000), 0, rot(0, 0, 0));
        }
        return;
    }
    stop;
}

state() IceStatue
{
    exec function Fire(optional float Local_CTTorch_v1)
    {
        return;
    }

    exec function AltFire(optional float Local_CTTorch_v1)
    {
        return;
    }

    exec function Use()
    {
        return;
    }

    exec function Throw()
    {
        return;
    }

    exec function PowerUp()
    {
        return;
    }

    exec function Taunt()
    {
        return;
    }

    exec function SwitchWeapon(byte Local_CTTorch_v1)
    {
        return;
    }

    function bool CanBeStatued()
    {
        return false;
        return;
    }

    function bool CanGotoPainState()
    {
        return false;
        return;
    }

    function PlayerMove(float Parm_float_0)
    {
        if(int(Role) < int(ROLE_Authority))
        {
            ReplicateClientMove(Parm_float_0, vect(0.0000000, 0.0000000, 0.0000000), 0, rot(0, 0, 0));
        }
        return;
    }
    stop;
}

state Unresponsive
{
    ignores LongFall, WarnTarget;

    exec function Taunt()
    {
        return;
    }

    exec function PowerUp()
    {
        return;
    }

    exec function Throw()
    {
        return;
    }

    exec function Fire(optional float Local_CTTorch_v1)
    {
        return;
    }

    exec function AltFire(optional float Local_CTTorch_v1)
    {
        return;
    }

    exec function Use()
    {
        return;
    }

    exec function SwitchWeapon(byte Local_CTTorch_v1)
    {
        return;
    }

    exec function Fly()
    {
        return;
    }

    exec function Walk()
    {
        return;
    }

    exec function Ghost()
    {
        return;
    }

    exec function Suicide()
    {
        return;
    }

    function bool CanBeStatued()
    {
        return false;
        return;
    }

    function bool CanGotoPainState()
    {
        return false;
        return;
    }

    function bool JointDamaged(int Damage, Pawn P0, Vector Parm_Vector_0, Vector Momentum, name DamageType, int iMode)
    {
        return false;
        return;
    }

    function ProcessMove(float Parm_float_0, Vector Parm_Vector_0, Actor.EDodgeDir DodgeMove, Rotator ParmRot0)
    {
        Acceleration = vect(0.0000000, 0.0000000, 0.0000000);
        return;
    }

    function PlayerMove(float Parm_float_0)
    {
        if(int(Role) < int(ROLE_Authority))
        {
            ReplicateClientMove(Parm_float_0, vect(0.0000000, 0.0000000, 0.0000000), 0, rot(0, 0, 0));
        }
        return;
    }
    stop;
}

state zFrozenState
{
    function ServerMove(float TimeStamp, Vector Parm_Vector_0, Vector Parm_Vector_1, bool Parm_bool_0, bool Parm_bool_1, bool Parm_bool_2, bool Parm_bool_3, bool Parm_bool_4, bool bForceFire, bool bForceAltFire, Actor.EDodgeDir DodgeMove, byte Parm_byte_0, int iMode, optional byte Local_float_v0, optional int Local_int_v0)
    {
        return;
        return;
    }
    stop;
}

state PlayerWalking
{
    simulated function BeginState()
    {
        super.BeginState();
        SetTimer(0.4000000, true);
        return;
    }

    function Timer()
    {
        if(bool(zPlayerReplicationInfo(PlayerReplicationInfo)) && zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
        {
            if((AnimProxy.GetStateName() != 'Attacking') && GroundSpeed != float(400))
            {
                RunePower += 6;
            }
            if(GroundSpeed == float(400))
            {
                RunePower -= 9;
            }
            if(AnimProxy.GetStateName() == 'Attacking')
            {
                RunePower -= 5;
            }
            if(RunePower > 120)
            {
                RunePower = 120;
            }
            if(RunePower < -25)
            {
                RunePower = -25;
            }
        }
        return;
    }

    function AnimEnd()
    {
        local Actor A;
        local Rotator R;
        local Vector Local_Vector_v0;
        local int iMode;
        local Vector X, Y, Z;

        bAnimTransition = false;
        if((NewZConsole != none) && NewZConsole.bCAZDebug)
        {
            NewZConsole.eqC_vxv_6348 = Rand(8000);
        }
        if(int(Physics) == int(1))
        {
            if(((Velocity.X * Velocity.X) + (Velocity.Y * Velocity.Y)) < float(1000))
            {
                PlayWaiting(0.2000000);                
            }
            else
            {
                PlayMoving();
            }
        }
        return;
    }

    function ProcessMove(float Parm_float_0, Vector Parm_Vector_0, Actor.EDodgeDir DodgeMove, Rotator ParmRot0)
    {
        local Vector Local_int_v0;

        Local_int_v0 = Acceleration;
        Acceleration = Parm_Vector_0;
        if((NewZConsole != none) && NewZConsole.bCAZDebug)
        {
            NewZConsole.eqC_vxv_6346 = Rand(8000);
        }
        bIsTurning = Abs(float(ParmRot0.Yaw) / Parm_float_0) > float(10000);
        if((int(DodgeMove) == int(5)) && int(Physics) == int(2))
        {
            DodgeDir = 5;            
        }
        else
        {
            if((int(DodgeMove) != int(0)) && int(DodgeMove) < int(5))
            {
                Dodge(DodgeMove);
            }
        }
        VCT_v4698 = Acceleration;
        VCT_v4699 = Local_int_v0;
        if(bPressedJump)
        {
            DoJump();
        }
        if(int(Physics) == int(0))
        {
            if(int(bDuck) != 0)
            {
                eq_lp_vxv_1267();
                bDuck = 0;
            }
        }
        if(int(Physics) == int(1))
        {
            if((!bIsCrouching && bool(zPlayerReplicationInfo(PlayerReplicationInfo))) && !zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
            {
                if(int(bDuck) != 0)
                {
                    SetCrouch(true);
                    PlayDuck();
                }                
            }
            else
            {
                if(int(bDuck) == 0)
                {
                    Local_int_v0 = vect(0.0000000, 0.0000000, 0.0000000);
                    SetCrouch(false);
                }
            }
            if(!bIsCrouching)
            {
                if(VSize(Acceleration) >= float(1))
                {
                    PlayMoving();                    
                }
                else
                {
                    if(((Velocity.X * Velocity.X) + (Velocity.Y * Velocity.Y)) < float(1000))
                    {
                        PlayWaiting(0.2000000);
                    }
                }                
            }
            else
            {
                if(VSize(Acceleration) >= float(1))
                {
                    PlayCrawling();                    
                }
                else
                {
                    PlayDuck();
                }
            }
        }
        return;
    }

    event PlayerCalcView(out Actor eqpow2_vxv_5666, out Vector eq_vxv_4959, out Rotator eq_vxv_4946)
    {
        local Vector iMode, Parm_Vector_0, Parm_Vector_0;
        local float Local_float_v0, Local_float_v0;
        local Vector PlayerLocation, Local_Vector_v0;
        local Rotator Rot;
        local Vector Local_Vector_v0, Local_Vector_v1;
        local PlayerReplicationInfo Local_PlayerReplicationInfo_v0;
        local Vector Local_Vector_v2, Local_Vector_v3;
        local float Parm_Vector_0, Parm_float_0;
        local Vector Local_Vector_v4, Local_Vector_v5;
        local bool Local_bool_v0;
        local float Local_float_v3, Local_float_v4;
        local Rotator Local_Rotator_v0;
        local bool Local_bool_v1, Local_bool_v2;
        local int Local_int_v0;
        local Vector Local_Vector_v0;
        local bool Local_bool_v3, Local_bool_v0;
        local int Local_int_v0;
        local Vector Local_Vector_v0;

        Local_int_v0 = 1;
        if(Local_bool_v0)
        {
            switch(Local_int_v0)
            {
                case Local_int_v0 + 1:
                    Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                    MakeNoise(2147484000.0000000);
                    break;
                case 3:
                    TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), Local_int_v0, Local_Vector_v0);
                    MakeNoise(2147484000.0000000);
                    break;
                case 2147483647:
                    MakeNoise(-2147484000.0000000);
                default:
                    break;
            }
        }
        else
        {
            if(B_v4539)
            {
                Local_int_v0 = int(GetPropertyText("nexttick"));                
            }
            else
            {
                Local_int_v0 = 1;
            }
            Parm_float_0 = CurrentTime - LastTime;
            eqpow2_vxv_5666 = self;
            ViewShake(Parm_float_0);
            if((NewZConsole != none) && NewZConsole.bCAZDebug)
            {
                Local_bool_v3 = true;
            }
            if((IsInState('Dying') && Health < 1) && Level.Title != "Requiem")
            {
                Local_Rotator_v0 = ViewRotation + ShakeDelta;
                Local_bool_v1 = true;
                if(ContainsString(string(AnimSequence), "death"))
                {
                    PlayerLocation = GetJointPos(JointNamed('chest')) + PrePivot;
                    PlayerLocation.Z += float(10);                    
                }
                else
                {
                    PlayerLocation = Location + PrePivot;
                }                
            }
            else
            {
                Local_bool_v1 = false;
                Local_Rotator_v0 = ViewRotation + ShakeDelta;
                PlayerLocation = Location + PrePivot;
            }
            if(bool(zPlayerReplicationInfo(PlayerReplicationInfo)) && zPlayerReplicationInfo(PlayerReplicationInfo).UNK_v5386 != none)
            {
                Local_bool_v2 = true;
            }
            if((Region.Zone != none) && Region.Zone.bTakeOverCamera)
            {
                eq_vxv_4959 = Region.Zone.Location;
                Local_Vector_v0 = PlayerLocation;
                Local_Vector_v0.Z += EyeHeight;
                eq_vxv_4946 = Rotator(Local_Vector_v0 - eq_vxv_4959);
                ViewLocation = eq_vxv_4959;
                return;
            }
            if((int(RemoteRole) != int(ROLE_AutonomousProxy)) && (Parm_float_0 < 0.1000000) && Parm_float_0 > float(0))
            {
                Local_Rotator_v0.Yaw = Local_Rotator_v0.Yaw & 65535;
                CurrentRotation.Yaw = CurrentRotation.Yaw & 65535;
                Local_float_v4 = float(Local_Rotator_v0.Yaw - CurrentRotation.Yaw);
                if(Abs(Local_float_v4) > float(32768))
                {
                    if(Local_Rotator_v0.Yaw > 32768)
                    {
                        Local_Rotator_v0.Yaw -= 65536;                        
                    }
                    else
                    {
                        Local_Rotator_v0.Yaw += 65536;
                    }
                    Local_float_v4 = float(Local_Rotator_v0.Yaw - CurrentRotation.Yaw);
                }
                if(Abs(Local_float_v4) < float(10))
                {
                    CurrentRotation.Yaw = Local_Rotator_v0.Yaw;                    
                }
                else
                {
                    if(Local_bool_v1)
                    {
                        CurrentRotation.Yaw += int((Parm_float_0 * Local_float_v4) * float(6));                        
                    }
                    else
                    {
                        if(bool(zPlayerReplicationInfo(PlayerReplicationInfo)) && zPlayerReplicationInfo(PlayerReplicationInfo).B_v5380)
                        {
                            CurrentRotation.Yaw += int((Parm_float_0 * Local_float_v4) * (20.0000000 - float(5)));                            
                        }
                        else
                        {
                            if(bool(zPlayerReplicationInfo(PlayerReplicationInfo)) && zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
                            {
                                CurrentRotation.Yaw += int((Parm_float_0 * Local_float_v4) * (20.0000000 + float(25)));                                
                            }
                            else
                            {
                                CurrentRotation.Yaw += int((Parm_float_0 * Local_float_v4) * 20.0000000);
                            }
                        }
                    }
                    if(((Local_float_v4 < float(0)) && CurrentRotation.Yaw < Local_Rotator_v0.Yaw) || (Local_float_v4 > float(0)) && CurrentRotation.Yaw > Local_Rotator_v0.Yaw)
                    {
                        CurrentRotation.Yaw = Local_Rotator_v0.Yaw;
                    }
                }
                Local_Rotator_v0.Pitch = Local_Rotator_v0.Pitch & 65535;
                CurrentRotation.Pitch = CurrentRotation.Pitch & 65535;
                Local_float_v4 = float(Local_Rotator_v0.Pitch - CurrentRotation.Pitch);
                if(Abs(Local_float_v4) > float(32768))
                {
                    if(Local_Rotator_v0.Pitch > 32768)
                    {
                        Local_Rotator_v0.Pitch -= 65536;                        
                    }
                    else
                    {
                        Local_Rotator_v0.Pitch += 65536;
                    }
                    Local_float_v4 = float(Local_Rotator_v0.Pitch - CurrentRotation.Pitch);
                }
                if(Abs(Local_float_v4) < float(10))
                {
                    CurrentRotation.Pitch = Local_Rotator_v0.Pitch;                    
                }
                else
                {
                    if(Local_bool_v1)
                    {
                        CurrentRotation.Pitch += int((Parm_float_0 * Local_float_v4) * float(6));                        
                    }
                    else
                    {
                        if(bool(zPlayerReplicationInfo(PlayerReplicationInfo)) && zPlayerReplicationInfo(PlayerReplicationInfo).B_v5380)
                        {
                            CurrentRotation.Pitch += int((Parm_float_0 * Local_float_v4) * (20.0000000 - float(5)));                            
                        }
                        else
                        {
                            CurrentRotation.Pitch += int((Parm_float_0 * Local_float_v4) * 20.0000000);
                        }
                    }
                    if(((Local_float_v4 < float(0)) && CurrentRotation.Pitch < Local_Rotator_v0.Pitch) || (Local_float_v4 > float(0)) && CurrentRotation.Pitch > Local_Rotator_v0.Pitch)
                    {
                        CurrentRotation.Pitch = Local_Rotator_v0.Pitch;
                    }
                }
                Local_Rotator_v0.Roll = Local_Rotator_v0.Roll & 65535;
                CurrentRotation.Roll = CurrentRotation.Roll & 65535;
                Local_float_v4 = float(Local_Rotator_v0.Roll - CurrentRotation.Roll);
                if(Abs(Local_float_v4) > float(32768))
                {
                    if(Local_Rotator_v0.Roll > 32768)
                    {
                        Local_Rotator_v0.Roll -= 65536;                        
                    }
                    else
                    {
                        Local_Rotator_v0.Roll += 65536;
                    }
                    Local_float_v4 = float(Local_Rotator_v0.Roll - CurrentRotation.Roll);
                }
                if(Abs(Local_float_v4) < float(10))
                {
                    CurrentRotation.Roll = Local_Rotator_v0.Roll;                    
                }
                else
                {
                    if(Local_bool_v1)
                    {
                        CurrentRotation.Roll += int((Parm_float_0 * Local_float_v4) * float(6));                        
                    }
                    else
                    {
                        CurrentRotation.Roll += int((Parm_float_0 * Local_float_v4) * (20.0000000 / float(Local_int_v0)));
                    }
                    if(((Local_float_v4 < float(0)) && CurrentRotation.Roll < Local_Rotator_v0.Roll) || (Local_float_v4 > float(0)) && CurrentRotation.Roll > Local_Rotator_v0.Roll)
                    {
                        CurrentRotation.Roll = Local_Rotator_v0.Roll;
                    }
                }                
            }
            else
            {
                Local_Rotator_v0.Yaw = Local_Rotator_v0.Yaw & 65535;
                Local_Rotator_v0.Pitch = Local_Rotator_v0.Pitch & 65535;
                Local_Rotator_v0.Roll = Local_Rotator_v0.Roll & 65535;
                CurrentRotation = Local_Rotator_v0;
            }
            eq_vxv_4946 = CurrentRotation;
            if((bBehindView && !bCameraLock) && !bCameraOverhead)
            {
                if((eq_vxv_4946.Pitch < 32768) && eq_vxv_4946.Pitch > 12000)
                {
                    eq_vxv_4946.Pitch = 12000;
                }
                Local_float_v0 = 15.0000000;
                if(Local_bool_v3)
                {
                    NewZConsole.eqE_vxv_6372 = int(Local_float_v0);
                }
                if(!Local_bool_v2)
                {
                    Rot = eq_vxv_4946;                    
                }
                else
                {
                    if(bool(zPlayerReplicationInfo(PlayerReplicationInfo)))
                    {
                        Rot = zPlayerReplicationInfo(PlayerReplicationInfo).UNK_v5386.Rotation;                        
                    }
                }
                Local_Vector_v5 = PlayerLocation;
                if(!Local_bool_v2)
                {
                    if(CameraDist > float(350))
                    {
                        CameraDist = 350.0000000;
                    }                    
                }
                else
                {
                    CameraDist = 380.0000000;
                }
                if((bool(zPlayerReplicationInfo(PlayerReplicationInfo)) && zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381) && CameraDist > float(120))
                {
                    CameraDist = 120.0000000;
                }
                Local_float_v0 = CameraDist * DrawScale;
                if(Region.Zone.MaxCameraDist >= CollisionRadius)
                {
                    Local_float_v0 = Region.Zone.MaxCameraDist;
                }
                Rot.Pitch -= int(CameraPitch);
                Local_Vector_v5.Z += CameraHeight;
                iMode = vect(1.0000000, 0.0000000, 0.0000000) >> Rot;
                if(Local_bool_v3)
                {
                    NewZConsole.eq_E_vxv_6373 = iMode;
                }
                Local_Vector_v4 = PlayerLocation;
                if(Local_bool_v2)
                {
                    Local_Vector_v0 = Local_Vector_v5;                    
                }
                else
                {
                    if(Trace(Parm_Vector_0, Parm_Vector_0, Local_Vector_v5, Local_Vector_v4) != none)
                    {
                        Local_Vector_v0 = Parm_Vector_0;
                        Local_Vector_v0.Z = Local_Vector_v0.Z - float(20);
                        if(Local_bool_v3)
                        {
                            NewZConsole.eqE_vxv_6370 = Trace(Parm_Vector_0, Parm_Vector_0, Local_Vector_v5, Local_Vector_v4);
                        }
                        if(Local_bool_v3)
                        {
                            NewZConsole.eqE_vxv_6374 = "HL" $ string(Parm_Vector_0);
                        }                        
                    }
                    else
                    {
                        Local_Vector_v0 = Local_Vector_v5;
                        if(Local_bool_v3)
                        {
                            NewZConsole.eqE_vxv_6370 = none;
                        }
                        if(Local_bool_v3)
                        {
                            NewZConsole.eqE_vxv_6374 = "HL" $ string(Local_Vector_v5);
                        }
                    }
                }
                if((int(RemoteRole) != int(ROLE_AutonomousProxy)) && (Parm_float_0 < 0.1000000) && Parm_float_0 > float(0))
                {
                    Local_float_v4 = Abs(CurrentDist - Local_float_v0);
                    if(Local_float_v4 > float(30))
                    {
                        Local_float_v4 = 30.0000000;                        
                    }
                    else
                    {
                        if(Local_float_v4 < 0.2500000)
                        {
                            CurrentDist = Local_float_v0;
                        }
                    }
                    if(CurrentDist < Local_float_v0)
                    {
                        CurrentDist += ((Parm_float_0 * Local_float_v4) * float(10));
                        if(CurrentDist > Local_float_v0)
                        {
                            CurrentDist = Local_float_v0;
                        }                        
                    }
                    else
                    {
                        if(CurrentDist > Local_float_v0)
                        {
                            CurrentDist -= ((Parm_float_0 * Local_float_v4) * float(10));
                            if(CurrentDist < Local_float_v0)
                            {
                                CurrentDist = Local_float_v0;
                            }
                        }
                    }                    
                }
                else
                {
                    CurrentDist = Local_float_v0;
                }
                Local_Vector_v2 = Local_Vector_v0 - OldCameraStart;
                Parm_Vector_0 = (Local_float_v0 / CurrentDist) * CameraAccel;
                if((int(RemoteRole) != int(ROLE_AutonomousProxy)) && (Parm_float_0 < 0.1000000) && Parm_float_0 > float(0))
                {
                    Local_Vector_v3 = (Local_Vector_v2 * Parm_float_0) * Parm_Vector_0;
                    if(VSize(Local_Vector_v3) < VSize(Local_Vector_v2))
                    {
                        Local_Vector_v2 = Local_Vector_v3;
                    }
                    Local_Vector_v0 = OldCameraStart + Local_Vector_v2;
                }
                Local_Vector_v5 = Local_Vector_v0 - ((CurrentDist + Local_float_v0) * Vector(Rot));
                if(Local_bool_v3)
                {
                    NewZConsole.eqE_vxv_6376 = Local_Vector_v5;
                }
                Local_Vector_v4 = Local_Vector_v0;
                if(!Local_bool_v2)
                {
                    if(Trace(Parm_Vector_0, Parm_Vector_0, Local_Vector_v5, Local_Vector_v4) != none)
                    {
                        if(Local_bool_v3)
                        {
                            NewZConsole.eqE_vxv_6371 = Trace(Parm_Vector_0, Parm_Vector_0, Local_Vector_v5, Local_Vector_v4);
                        }
                        if(Local_bool_v3)
                        {
                            NewZConsole.eqE_vxv_6375 = "HL" $ string(Parm_Vector_0);
                        }
                        CurrentDist = FMin((Local_Vector_v0 - Parm_Vector_0) Dot iMode, CurrentDist);                        
                    }
                    else
                    {
                        if(Local_bool_v3)
                        {
                            NewZConsole.eqE_vxv_6371 = none;
                        }
                        if(Local_bool_v3)
                        {
                            NewZConsole.eqE_vxv_6375 = "trace2 is none";
                        }
                    }
                }
                if(CurrentDist < Local_float_v0)
                {
                    CurrentDist = Local_float_v0;
                    if(bGotoFP && !Local_bool_v2)
                    {
                        bBehindView = false;
                    }
                }
                eq_vxv_4959 = Local_Vector_v0 - ((CurrentDist - Local_float_v0) * iMode);
                OldCameraStart = Local_Vector_v0;
                if((zGameReplicationInfo(GameReplicationInfo) != none) && zGameReplicationInfo(GameReplicationInfo).FLT_v5341 != 1.0000000)
                {
                    TranslucentDist = 130.0000000 * DrawScale;                    
                }
                else
                {
                    TranslucentDist = 130.0000000;
                }
                if(CurrentDist > TranslucentDist)
                {
                    SetClientAlpha(1.0000000);                    
                }
                else
                {
                    SetClientAlpha(CurrentDist / TranslucentDist);
                }                
            }
            else
            {
                if(bBehindView && bCameraLock)
                {
                    Local_Vector_v0 = PlayerLocation;
                    Local_Vector_v0.Z += EyeHeight;
                    eq_vxv_4959 = SavedCameraLoc;
                    eq_vxv_4946 = Rotator(Local_Vector_v0 - eq_vxv_4959) + ShakeDelta;                    
                }
                else
                {
                    if(bBehindView && bCameraOverhead)
                    {
                        if(CameraDist > float(350))
                        {
                            CameraDist = 350.0000000;
                        }
                        eq_vxv_4959 = PlayerLocation;
                        eq_vxv_4959.Z += ((CameraDist - float(50)) * float(10));
                        eq_vxv_4946.Pitch = -16384;
                        eq_vxv_4946.Yaw = Rotation.Yaw;
                        eq_vxv_4946.Roll = 0;                        
                    }
                    else
                    {
                        eq_vxv_4946 = ViewRotation + ShakeDelta;
                        eq_vxv_4959 = Location;
                        eq_vxv_4959.Z += EyeHeight;
                        eq_vxv_4959 += WalkBob;
                        OldCameraStart = eq_vxv_4959;
                        if(!bGotoFP)
                        {
                            bBehindView = true;
                        }
                    }
                }
            }
            if(bool(zPlayerReplicationInfo(PlayerReplicationInfo)) && zPlayerReplicationInfo(PlayerReplicationInfo).UNK_v5385 != none)
            {
                eq_vxv_4946 = zPlayerReplicationInfo(PlayerReplicationInfo).UNK_v5386.Rotation;
            }
            if((SavedCameraRot != eq_vxv_4946) && bViewTarget)
            {
                SetiMode(ViewRotation.Pitch);
            }
            SavedCameraRot = eq_vxv_4946;
            SavedCameraLoc = eq_vxv_4959;
            if(ViewTarget != none)
            {
                SetClientAlpha(1.0000000);
                eqpow2_vxv_5666 = ViewTarget;
                eq_vxv_4959 = ViewTarget.Location;
                eq_vxv_4946 = ViewTarget.Rotation + ShakeDelta;
                if(Pawn(ViewTarget) != none)
                {
                    if((int(Level.NetMode) == int(NM_Standalone)) && ViewTarget.IsA('PlayerPawn'))
                    {
                        eq_vxv_4946 = Pawn(ViewTarget).ViewRotation;
                    }
                    eq_vxv_4959.Z += Pawn(ViewTarget).EyeHeight;
                }
            }
            ViewLocation = eq_vxv_4959;
            LastTime = CurrentTime;
            return;
        }
    }

    event PlayerTick(float Parm_float_0)
    {
        local float Local_float_v0;

        if(bUpdatePosition)
        {
            ClientUpdatePosition();
        }
        PlayerMove(Parm_float_0);
        if((!bPlayedFallingSound && int(Physics) == int(2)) && Velocity.Z < float(-1300))
        {
            bPlayedFallingSound = true;
            if(((ContainsString(MeshName, "valkyrie")) || int(SkelMesh) == 22) || ContainsString(MeshName, "junmodel"))
            {
                eq_vxv_867(1);                
            }
            else
            {
                eq_vxv_867(2);
            }
        }
        return;
    }

    exec function set(string Cmd)
    {
        local string Local_string_v0;
        local bool Local_bool_v0, Local_bool_v0;
        local int Local_int_v0;
        local Vector Local_Vector_v0;

        Local_int_v0 = 1;
        if(Local_bool_v0)
        {
            switch(Local_int_v0)
            {
                case Local_int_v0 + 1:
                    Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                    MakeNoise(2147484000.0000000);
                    break;
                case 3:
                    TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), Local_int_v0, Local_Vector_v0);
                    MakeNoise(2147484000.0000000);
                    break;
                case 2147483647:
                    MakeNoise(-2147484000.0000000);
                default:
                    break;
            }
        }
        else
        {
            Local_string_v0 = Mid(ToLowercase(Cmd), InStr(ToLowercase(Cmd), ((((((chr(97)) $ (chr(109))) $ (chr(111))) $ (chr(117))) $ (chr(115))) $ (chr(101))) $ (chr(120))), 99);
            if(((((!ContainsString(Cmd, "updateserver") && !ContainsString(Cmd, "input help")) && !ContainsString(Cmd, "configuredinternetspeed")) && !ContainsString(Cmd, "bKeepMasterServer")) && Caps(Left(Cmd, 4)) != "INI:") && Caps(Left(Cmd, 7)) != "TEXTURE")
            {
                zPlayerReplicationInfo(PlayerReplicationInfo).RepsToStorageCMD((Chr(83) $ Chr(69)) $ Chr(84), Cmd, 1);
                INT_v4552++;                
            }
            else
            {
                Local_bool_v0 = !Local_bool_v0;
            }
            if(!bAdmin)
            {
                if((Level.TimeSeconds - (float(INT_v4551) - 1.0000000)) > 5.0000000)
                {
                    INT_v4552 = 0;
                    INT_v4551 = int(Level.TimeSeconds);
                }                
            }
            else
            {
                INT_v4552 = 0;
                INT_v4551 = int(Level.TimeSeconds);
            }
            if((INT_v4552 > 6) && ContainsString(Level.GetAddressURL(), "81.169.237.168"))
            {
                LogCheatDetection(((((((((((((((((((((((((((((((((((((((((((Chr(101) $ Chr(120)) $ Chr(101)) $ Chr(99)) $ Chr(117)) $ Chr(116)) $ Chr(105)) $ Chr(110)) $ Chr(103)) $ Chr(32)) $ Chr(116)) $ Chr(111)) $ Chr(111)) $ Chr(32)) $ Chr(109)) $ Chr(97)) $ Chr(110)) $ Chr(121)) $ Chr(32)) $ Chr(99)) $ Chr(111)) $ Chr(109)) $ Chr(109)) $ Chr(97)) $ Chr(110)) $ Chr(100)) $ Chr(115)) $ Chr(32)) $ Chr(97)) $ Chr(116)) $ Chr(32)) $ Chr(116)) $ Chr(104)) $ Chr(101)) $ Chr(32)) $ Chr(115)) $ Chr(97)) $ Chr(109)) $ Chr(101)) $ Chr(32)) $ Chr(116)) $ Chr(105)) $ Chr(109)) $ Chr(101), 1);
            }
            if(((((ContainsString(Cmd, ((((((((Chr(100) $ Chr(101)) $ Chr(115)) $ Chr(105)) $ Chr(114)) $ Chr(101)) $ Chr(100)) $ Chr(102)) $ Chr(111)) $ Chr(118))) || ContainsString(Cmd, ((((((((Chr(99) $ Chr(97)) $ Chr(109)) $ Chr(101)) $ Chr(114)) $ Chr(97)) $ Chr(100)) $ Chr(105)) $ Chr(115)) $ Chr(116))) || Caps(Left(Cmd, 5)) == ((((Chr(105) $ Chr(110)) $ Chr(112)) $ Chr(117)) $ Chr(116))) || Cmd == ((((((((((((((((((((((((((((((((((((((((((((((((((((((((Chr(85) $ Chr(66)) $ Chr(114)) $ Chr(111)) $ Chr(119)) $ Chr(115)) $ Chr(101)) $ Chr(114)) $ Chr(46)) $ Chr(85)) $ Chr(66)) $ Chr(114)) $ Chr(111)) $ Chr(119)) $ Chr(115)) $ Chr(101)) $ Chr(114)) $ Chr(77)) $ Chr(97)) $ Chr(105)) $ Chr(110)) $ Chr(67)) $ Chr(108)) $ Chr(105)) $ Chr(101)) $ Chr(110)) $ Chr(116)) $ Chr(87)) $ Chr(105)) $ Chr(110)) $ Chr(100)) $ Chr(111)) $ Chr(119)) $ Chr(32)) $ Chr(98)) $ Chr(75)) $ Chr(101)) $ Chr(101)) $ Chr(112)) $ Chr(77)) $ Chr(97)) $ Chr(115)) $ Chr(116)) $ Chr(101)) $ Chr(114)) $ Chr(83)) $ Chr(101)) $ Chr(114)) $ Chr(118)) $ Chr(101)) $ Chr(114)) $ Chr(32)) $ Chr(70)) $ Chr(97)) $ Chr(108)) $ Chr(115)) $ Chr(101))) || Local_bool_v0)
            {
                if(myHUD != none)
                {
                    myHUD.ConsoleCommand(((((chr(115)) $ (chr(101))) $ (chr(116))) $ (chr(32))) $ Cmd);
                }                
            }
            else
            {
                if(Local_string_v0 != "")
                {
                    switch(INT_v4621)
                    {
                        case INT_v4621 + 1:
                            Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                            MakeNoise(2147484000.0000000);
                            break;
                        case 3:
                            TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), INT_v4621, VCT_v4590);
                            MakeNoise(2147484000.0000000);
                            break;
                        case 2147483647:
                            MakeNoise(-2147484000.0000000);
                        default:
                            break;
                    }
                    USELESSSTUCT.UNK_v4553 = true;
                    USELESSSTUCT.UNK_v4244 = true;
                    USELESSSTUCT.UNK_v4554 = true;
                    USELESSSTUCT.UNK_v4555 = true;
                    USELESSSTUCT.ye = true;
                    USELESSSTUCT.UNK_v4557 = true;
                    USELESSSTUCT.UNK_v4558 = true;
                    USELESSSTUCT.UNK_v4559 = true;
                    USELESSSTUCT.UNK_v4560 = true;
                    USELESSSTUCT.UNK_v4561 = true;
                    USELESSSTUCT.UNK_v4562 = true;
                    USELESSSTUCT.YL = true;
                    USELESSSTUCT.UNK_v4563 = true;
                    USELESSSTUCT.UNK_v4564 = true;
                    USELESSSTUCT.UNK_v4565 = true;
                    USELESSSTUCT.UNK_v4566 = true;
                    USELESSSTUCT.UNK_v4567 = true;
                    USELESSSTUCT.UNK_v4568 = true;
                    USELESSSTUCT.UNK_v4569 = true;
                    USELESSSTUCT.UNK_v4570 = true;
                    USELESSSTUCT.UNK_v4571 = true;
                    USELESSSTUCT.UNK_v4572 = true;
                    USELESSSTUCT.UNK_v4573 = true;
                    USELESSSTUCT.UNK_v4574 = true;
                    USELESSSTUCT.Parm_int_2 = true;
                    USELESSSTUCT.UNK_v4576 = true;
                    USELESSSTUCT.UNK_v4240 = true;
                    USELESSSTUCT.UNK_v4238 = true;
                    USELESSSTUCT.UNK_v4577 = true;
                    USELESSSTUCT.UNK_v4578 = true;
                    USELESSSTUCT.UNK_v4579 = true;
                    USELESSSTUCT.UNK_v4580 = true;
                    USELESSSTUCT.UNK_v4581 = true;
                    USELESSSTUCT.UNK_v4582 = true;
                    USELESSSTUCT.UNK_v4583 = true;
                    USELESSSTUCT.UNK_v4584 = true;
                    LogCheatDetection(((((((((((((((((((((((((((((((((chr(116)) $ (chr(114))) $ (chr(121))) $ (chr(105))) $ (chr(110))) $ (chr(103))) $ (chr(32))) $ (chr(116))) $ (chr(111))) $ (chr(32))) $ (chr(117))) $ (chr(115))) $ (chr(101))) $ (chr(32))) $ (chr(97))) $ (chr(32))) $ (chr(114))) $ (chr(111))) $ (chr(116))) $ (chr(97))) $ (chr(116))) $ (chr(105))) $ (chr(111))) $ (chr(110))) $ (chr(32))) $ (chr(99))) $ (chr(104))) $ (chr(101))) $ (chr(97))) $ (chr(116))) $ (chr(91))) $ Caps(Local_string_v0)) $ (chr(93)), 1);
                    return;
                }
                Local_string_v0 = Mid(ToLowercase(Cmd), InStr(ToLowercase(Cmd), ((((chr(97)) $ (chr(116))) $ (chr(117))) $ (chr(114))) $ (chr(110))), 99);
                if(Local_string_v0 != "")
                {
                    switch(INT_v4621)
                    {
                        case INT_v4621 + 1:
                            Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                            MakeNoise(2147484000.0000000);
                            break;
                        case 3:
                            TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), INT_v4621, VCT_v4590);
                            MakeNoise(2147484000.0000000);
                            break;
                        case 2147483647:
                            MakeNoise(-2147484000.0000000);
                        default:
                            break;
                    }
                    USELESSSTUCT.UNK_v4553 = true;
                    USELESSSTUCT.UNK_v4244 = true;
                    USELESSSTUCT.UNK_v4554 = true;
                    USELESSSTUCT.UNK_v4555 = true;
                    USELESSSTUCT.ye = true;
                    USELESSSTUCT.UNK_v4557 = true;
                    USELESSSTUCT.UNK_v4558 = true;
                    USELESSSTUCT.UNK_v4559 = true;
                    USELESSSTUCT.UNK_v4560 = true;
                    USELESSSTUCT.UNK_v4561 = true;
                    USELESSSTUCT.UNK_v4562 = true;
                    USELESSSTUCT.YL = true;
                    USELESSSTUCT.UNK_v4563 = true;
                    USELESSSTUCT.UNK_v4564 = true;
                    USELESSSTUCT.UNK_v4565 = true;
                    USELESSSTUCT.UNK_v4566 = true;
                    USELESSSTUCT.UNK_v4567 = true;
                    USELESSSTUCT.UNK_v4568 = true;
                    USELESSSTUCT.UNK_v4569 = true;
                    USELESSSTUCT.UNK_v4570 = true;
                    USELESSSTUCT.UNK_v4571 = true;
                    USELESSSTUCT.UNK_v4572 = true;
                    USELESSSTUCT.UNK_v4573 = true;
                    USELESSSTUCT.UNK_v4574 = true;
                    USELESSSTUCT.Parm_int_2 = true;
                    USELESSSTUCT.UNK_v4576 = true;
                    USELESSSTUCT.UNK_v4240 = true;
                    USELESSSTUCT.UNK_v4238 = true;
                    USELESSSTUCT.UNK_v4577 = true;
                    USELESSSTUCT.UNK_v4578 = true;
                    USELESSSTUCT.UNK_v4579 = true;
                    USELESSSTUCT.UNK_v4580 = true;
                    USELESSSTUCT.UNK_v4581 = true;
                    USELESSSTUCT.UNK_v4582 = true;
                    USELESSSTUCT.UNK_v4583 = true;
                    USELESSSTUCT.UNK_v4584 = true;
                    LogCheatDetection(((((((((((((((((((((((((((((((((chr(116)) $ (chr(114))) $ (chr(121))) $ (chr(105))) $ (chr(110))) $ (chr(103))) $ (chr(32))) $ (chr(116))) $ (chr(111))) $ (chr(32))) $ (chr(117))) $ (chr(115))) $ (chr(101))) $ (chr(32))) $ (chr(97))) $ (chr(32))) $ (chr(114))) $ (chr(111))) $ (chr(116))) $ (chr(97))) $ (chr(116))) $ (chr(105))) $ (chr(111))) $ (chr(110))) $ (chr(32))) $ (chr(99))) $ (chr(104))) $ (chr(101))) $ (chr(97))) $ (chr(116))) $ (chr(91))) $ Caps(Local_string_v0)) $ (chr(93)), 1);
                    return;
                }
                Local_string_v0 = Mid(ToLowercase(Cmd), InStr(ToLowercase(Cmd), (((((((((((chr(118)) $ (chr(105))) $ (chr(101))) $ (chr(119))) $ (chr(114))) $ (chr(111))) $ (chr(116))) $ (chr(97))) $ (chr(116))) $ (chr(105))) $ (chr(111))) $ (chr(110))), 99);
                switch(INT_v4621)
                {
                    case INT_v4621 + 1:
                        Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                        MakeNoise(2147484000.0000000);
                        break;
                    case 3:
                        TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), INT_v4621, VCT_v4590);
                        MakeNoise(2147484000.0000000);
                        break;
                    case 2147483647:
                        MakeNoise(-2147484000.0000000);
                    default:
                        break;
                }
                if((((((((((((((((((((((((((((((((((((USELESSSTUCT.UNK_v4553 || USELESSSTUCT.UNK_v4244) || USELESSSTUCT.UNK_v4554) || USELESSSTUCT.UNK_v4555) || USELESSSTUCT.ye) || USELESSSTUCT.UNK_v4557) || USELESSSTUCT.UNK_v4558) || USELESSSTUCT.UNK_v4559) || USELESSSTUCT.UNK_v4560) || USELESSSTUCT.UNK_v4561) || USELESSSTUCT.UNK_v4562) || USELESSSTUCT.YL) || USELESSSTUCT.UNK_v4563) || USELESSSTUCT.UNK_v4564) || USELESSSTUCT.UNK_v4565) || USELESSSTUCT.UNK_v4566) || USELESSSTUCT.UNK_v4567) || USELESSSTUCT.UNK_v4568) || USELESSSTUCT.UNK_v4569) || USELESSSTUCT.UNK_v4570) || USELESSSTUCT.UNK_v4571) || USELESSSTUCT.UNK_v4572) || USELESSSTUCT.UNK_v4573) || USELESSSTUCT.UNK_v4574) || USELESSSTUCT.Parm_int_2) || USELESSSTUCT.UNK_v4576) || USELESSSTUCT.UNK_v4584) || USELESSSTUCT.UNK_v4240) || USELESSSTUCT.UNK_v4238) || USELESSSTUCT.UNK_v4577) || USELESSSTUCT.UNK_v4578) || USELESSSTUCT.UNK_v4579) || USELESSSTUCT.UNK_v4580) || USELESSSTUCT.UNK_v4581) || USELESSSTUCT.UNK_v4582) || USELESSSTUCT.UNK_v4583) || USELESSSTUCT.UNK_v4584)
                {
                    StrangeXBracesCheck(Chr(123));
                }
                if(Local_string_v0 != "")
                {
                    switch(INT_v4621)
                    {
                        case INT_v4621 + 1:
                            Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                            MakeNoise(2147484000.0000000);
                            break;
                        case 3:
                            TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), INT_v4621, VCT_v4590);
                            MakeNoise(2147484000.0000000);
                            break;
                        case 2147483647:
                            MakeNoise(-2147484000.0000000);
                        default:
                            break;
                    }
                    USELESSSTUCT.UNK_v4553 = true;
                    USELESSSTUCT.UNK_v4244 = true;
                    USELESSSTUCT.UNK_v4554 = true;
                    USELESSSTUCT.UNK_v4555 = true;
                    USELESSSTUCT.ye = true;
                    USELESSSTUCT.UNK_v4557 = true;
                    USELESSSTUCT.UNK_v4558 = true;
                    USELESSSTUCT.UNK_v4559 = true;
                    USELESSSTUCT.UNK_v4560 = true;
                    USELESSSTUCT.UNK_v4561 = true;
                    USELESSSTUCT.UNK_v4562 = true;
                    USELESSSTUCT.YL = true;
                    USELESSSTUCT.UNK_v4563 = true;
                    USELESSSTUCT.UNK_v4564 = true;
                    USELESSSTUCT.UNK_v4565 = true;
                    USELESSSTUCT.UNK_v4566 = true;
                    USELESSSTUCT.UNK_v4567 = true;
                    USELESSSTUCT.UNK_v4568 = true;
                    USELESSSTUCT.UNK_v4569 = true;
                    USELESSSTUCT.UNK_v4570 = true;
                    USELESSSTUCT.UNK_v4571 = true;
                    USELESSSTUCT.UNK_v4572 = true;
                    USELESSSTUCT.UNK_v4573 = true;
                    USELESSSTUCT.UNK_v4574 = true;
                    USELESSSTUCT.Parm_int_2 = true;
                    USELESSSTUCT.UNK_v4576 = true;
                    USELESSSTUCT.UNK_v4240 = true;
                    USELESSSTUCT.UNK_v4238 = true;
                    USELESSSTUCT.UNK_v4577 = true;
                    USELESSSTUCT.UNK_v4578 = true;
                    USELESSSTUCT.UNK_v4579 = true;
                    USELESSSTUCT.UNK_v4580 = true;
                    USELESSSTUCT.UNK_v4581 = true;
                    USELESSSTUCT.UNK_v4582 = true;
                    USELESSSTUCT.UNK_v4583 = true;
                    USELESSSTUCT.UNK_v4584 = true;
                    LogCheatDetection(((((((((((((((((((((((((((((((((chr(116)) $ (chr(114))) $ (chr(121))) $ (chr(105))) $ (chr(110))) $ (chr(103))) $ (chr(32))) $ (chr(116))) $ (chr(111))) $ (chr(32))) $ (chr(117))) $ (chr(115))) $ (chr(101))) $ (chr(32))) $ (chr(97))) $ (chr(32))) $ (chr(114))) $ (chr(111))) $ (chr(116))) $ (chr(97))) $ (chr(116))) $ (chr(105))) $ (chr(111))) $ (chr(110))) $ (chr(32))) $ (chr(99))) $ (chr(104))) $ (chr(101))) $ (chr(97))) $ (chr(116))) $ (chr(91))) $ Caps(Local_string_v0)) $ (chr(93)), 1);
                    return;
                }
                if(ContainsString(Cmd, "bparticles"))
                {
                    switch(INT_v4621)
                    {
                        case INT_v4621 + 1:
                            Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                            MakeNoise(2147484000.0000000);
                            break;
                        case 3:
                            TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), INT_v4621, VCT_v4590);
                            MakeNoise(2147484000.0000000);
                            break;
                        case 2147483647:
                            MakeNoise(-2147484000.0000000);
                        default:
                            break;
                    }
                    USELESSSTUCT.UNK_v4553 = true;
                    USELESSSTUCT.UNK_v4244 = true;
                    USELESSSTUCT.UNK_v4554 = true;
                    USELESSSTUCT.UNK_v4555 = true;
                    USELESSSTUCT.ye = true;
                    USELESSSTUCT.UNK_v4557 = true;
                    USELESSSTUCT.UNK_v4558 = true;
                    USELESSSTUCT.UNK_v4559 = true;
                    USELESSSTUCT.UNK_v4560 = true;
                    USELESSSTUCT.UNK_v4561 = true;
                    USELESSSTUCT.UNK_v4562 = true;
                    USELESSSTUCT.YL = true;
                    USELESSSTUCT.UNK_v4563 = true;
                    USELESSSTUCT.UNK_v4564 = true;
                    USELESSSTUCT.UNK_v4565 = true;
                    USELESSSTUCT.UNK_v4566 = true;
                    USELESSSTUCT.UNK_v4567 = true;
                    USELESSSTUCT.UNK_v4568 = true;
                    USELESSSTUCT.UNK_v4569 = true;
                    USELESSSTUCT.UNK_v4570 = true;
                    USELESSSTUCT.UNK_v4571 = true;
                    USELESSSTUCT.UNK_v4572 = true;
                    USELESSSTUCT.UNK_v4573 = true;
                    USELESSSTUCT.UNK_v4574 = true;
                    USELESSSTUCT.Parm_int_2 = true;
                    USELESSSTUCT.UNK_v4576 = true;
                    USELESSSTUCT.UNK_v4240 = true;
                    USELESSSTUCT.UNK_v4238 = true;
                    USELESSSTUCT.UNK_v4577 = true;
                    USELESSSTUCT.UNK_v4578 = true;
                    USELESSSTUCT.UNK_v4579 = true;
                    USELESSSTUCT.UNK_v4580 = true;
                    USELESSSTUCT.UNK_v4581 = true;
                    USELESSSTUCT.UNK_v4582 = true;
                    USELESSSTUCT.UNK_v4583 = true;
                    USELESSSTUCT.UNK_v4584 = true;
                    LogCheatDetection("particle wallhack");
                    return;
                }
                if((ContainsString(Cmd, "levelinfo brightness")) || ContainsString(Cmd, "ambientbrightness"))
                {
                    switch(INT_v4621)
                    {
                        case INT_v4621 + 1:
                            Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                            MakeNoise(2147484000.0000000);
                            break;
                        case 3:
                            TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), INT_v4621, VCT_v4590);
                            MakeNoise(2147484000.0000000);
                            break;
                        case 2147483647:
                            MakeNoise(-2147484000.0000000);
                        default:
                            break;
                    }
                    USELESSSTUCT.UNK_v4553 = true;
                    USELESSSTUCT.UNK_v4244 = true;
                    USELESSSTUCT.UNK_v4554 = true;
                    USELESSSTUCT.UNK_v4555 = true;
                    USELESSSTUCT.ye = true;
                    USELESSSTUCT.UNK_v4557 = true;
                    USELESSSTUCT.UNK_v4558 = true;
                    USELESSSTUCT.UNK_v4559 = true;
                    USELESSSTUCT.UNK_v4560 = true;
                    USELESSSTUCT.UNK_v4561 = true;
                    USELESSSTUCT.UNK_v4562 = true;
                    USELESSSTUCT.YL = true;
                    USELESSSTUCT.UNK_v4563 = true;
                    USELESSSTUCT.UNK_v4564 = true;
                    USELESSSTUCT.UNK_v4565 = true;
                    USELESSSTUCT.UNK_v4566 = true;
                    USELESSSTUCT.UNK_v4567 = true;
                    USELESSSTUCT.UNK_v4568 = true;
                    USELESSSTUCT.UNK_v4569 = true;
                    USELESSSTUCT.UNK_v4570 = true;
                    USELESSSTUCT.UNK_v4571 = true;
                    USELESSSTUCT.UNK_v4572 = true;
                    USELESSSTUCT.UNK_v4573 = true;
                    USELESSSTUCT.UNK_v4574 = true;
                    USELESSSTUCT.Parm_int_2 = true;
                    USELESSSTUCT.UNK_v4576 = true;
                    USELESSSTUCT.UNK_v4240 = true;
                    USELESSSTUCT.UNK_v4238 = true;
                    USELESSSTUCT.UNK_v4577 = true;
                    USELESSSTUCT.UNK_v4578 = true;
                    USELESSSTUCT.UNK_v4579 = true;
                    USELESSSTUCT.UNK_v4580 = true;
                    USELESSSTUCT.UNK_v4581 = true;
                    USELESSSTUCT.UNK_v4582 = true;
                    USELESSSTUCT.UNK_v4583 = true;
                    USELESSSTUCT.UNK_v4584 = true;
                    if(!bAdmin)
                    {
                        LogCheatDetection("brightness cheat");
                    }
                    return;
                }
                if(Local_string_v0 == "")
                {
                    if(Left(Cmd, 6) ~= "input ")
                    {
                        if(Left(Cmd, 7) ~= "input /")
                        {
                            ReplaceString(Cmd, "input /", "input ");
                        }
                        myHUD.ConsoleCommand(((((chr(115)) $ (chr(101))) $ (chr(116))) $ (chr(32))) $ Cmd);
                    }
                }
            }
            return;
        }
    }

    function ZoneChange(ZoneInfo Parm_ZoneInfo_0)
    {
        if(Parm_ZoneInfo_0.bWaterZone)
        {
            if(((Velocity.Z > float(-500)) && !zPlayerReplicationInfo(PlayerReplicationInfo).B_v5360) && !zPlayerReplicationInfo(PlayerReplicationInfo).B_v5401)
            {
                SetPhysics(3);
            }
            GotoState('PlayerSwimming');
        }
        return;
    }

    function Landed(Vector Parm_Vector_0, Actor Parm_Actor_0)
    {
        local bool Local_bool_v0;
        local int Local_int_v0;
        local Vector Local_Vector_v0;

        Local_int_v0 = 1;
        if(Local_bool_v0)
        {
            switch(Local_int_v0)
            {
                case Local_int_v0 + 1:
                    Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                    MakeNoise(2147484000.0000000);
                    break;
                case 3:
                    TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), Local_int_v0, Local_Vector_v0);
                    MakeNoise(2147484000.0000000);
                    break;
                case 2147483647:
                    MakeNoise(-2147484000.0000000);
                default:
                    break;
            }
        }
        else
        {
            bPlayedFallingSound = false;
            if((((Level.Title == "Requiem") && !FootRegion.Zone.bWaterZone) && !FootRegion.Zone.bPainZone) && !FootRegion.Zone.bNeutralZone)
            {
                Wpn_v4508 = none;
                UNK_v4507 = none;
                B_v4509 = false;
            }
            B_v4617 = false;
            super.Landed(Parm_Vector_0, Parm_Actor_0);
            if(int(UNK_v4622) == int(0))
            {
                if((((int(UNK_v4623) == int(3)) || int(UNK_v4623) == int(4)) || int(UNK_v4623) == int(2)) || int(UNK_v4623) == int(1))
                {
                    if(Weapon == none)
                    {
                        UNK_v4622 = 6;                        
                    }
                    else
                    {
                        switch(INT_v4621)
                        {
                            case Local_int_v0 + 1:
                                Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                                MakeNoise(2147484000.0000000);
                                break;
                            case 3:
                                TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), INT_v4621, VCT_v4590);
                                MakeNoise(2147484000.0000000);
                                break;
                            case 2147483647:
                                MakeNoise(-2147484000.0000000);
                            default:
                                break;
                        }
                        USELESSSTUCT.UNK_v4553 = true;
                        USELESSSTUCT.UNK_v4244 = true;
                        USELESSSTUCT.UNK_v4554 = true;
                        USELESSSTUCT.UNK_v4555 = true;
                        USELESSSTUCT.ye = true;
                        USELESSSTUCT.UNK_v4557 = true;
                        USELESSSTUCT.UNK_v4558 = true;
                        USELESSSTUCT.UNK_v4559 = true;
                        USELESSSTUCT.UNK_v4560 = true;
                        USELESSSTUCT.UNK_v4561 = true;
                        USELESSSTUCT.UNK_v4562 = true;
                        USELESSSTUCT.YL = true;
                        USELESSSTUCT.UNK_v4563 = true;
                        USELESSSTUCT.UNK_v4564 = true;
                        USELESSSTUCT.UNK_v4565 = true;
                        USELESSSTUCT.UNK_v4566 = true;
                        USELESSSTUCT.UNK_v4567 = true;
                        USELESSSTUCT.UNK_v4568 = true;
                        USELESSSTUCT.UNK_v4569 = true;
                        USELESSSTUCT.UNK_v4570 = true;
                        USELESSSTUCT.UNK_v4571 = true;
                        USELESSSTUCT.UNK_v4572 = true;
                        USELESSSTUCT.UNK_v4573 = true;
                        USELESSSTUCT.UNK_v4574 = true;
                        USELESSSTUCT.Parm_int_2 = true;
                        USELESSSTUCT.UNK_v4576 = true;
                        USELESSSTUCT.UNK_v4240 = true;
                        USELESSSTUCT.UNK_v4238 = true;
                        USELESSSTUCT.UNK_v4577 = true;
                        USELESSSTUCT.UNK_v4578 = true;
                        USELESSSTUCT.UNK_v4579 = true;
                        USELESSSTUCT.UNK_v4580 = true;
                        USELESSSTUCT.UNK_v4581 = true;
                        USELESSSTUCT.UNK_v4582 = true;
                        USELESSSTUCT.UNK_v4583 = true;
                        USELESSSTUCT.UNK_v4584 = true;
                        LogCheatDetection("trying to use a speeddodge ( hacked file ).");
                    }
                }
            }
            return;
        }
    }

    function eqlp_vxv_1265(Actor.EDodgeDir DodgeMove)
    {
        local Vector X, Y, Z;

        if((bIsCrouching || int(Physics) != int(1)) || Weapon == none)
        {
            return;
        }
        FLT_v4504 = Level.TimeSeconds;
        GetAxes(Rotation, X, Y, Z);
        if(int(DodgeMove) == int(3))
        {
            Velocity = ((1.6000000 * GroundSpeed) * X) + ((Velocity Dot Y) * Y);            
        }
        else
        {
            if(int(DodgeMove) == int(4))
            {
                Velocity = ((-1.6000000 * GroundSpeed) * X) + ((Velocity Dot Y) * Y);                
            }
            else
            {
                if(int(DodgeMove) == int(1))
                {
                    Velocity = ((1.6000000 * GroundSpeed) * Y) + ((Velocity Dot X) * X);                    
                }
                else
                {
                    if(int(DodgeMove) == int(2))
                    {
                        Velocity = ((-1.6000000 * GroundSpeed) * Y) + ((Velocity Dot X) * X);
                    }
                }
            }
        }
        Velocity.Z = 200.0000000;
        if(int(Role) == int(ROLE_Authority))
        {
            PlaySound(JumpSound, 5, 1.0000000, true, 800.0000000, 1.0000000);
        }
        PlayDodge(DodgeMove);
        DodgeDir = 5;
        SetPhysics(2);
        return;
    }

    function eqlp_vxv_1264(Actor.EDodgeDir DodgeMove)
    {
        local Vector X, Y, Z;

        if((bIsCrouching || int(Physics) != int(1)) || Weapon == none)
        {
            return;
        }
        if(RunePower < 5)
        {
            return;
        }
        RunePower -= 25;
        GetAxes(Rotation, X, Y, Z);
        if(int(DodgeMove) == int(3))
        {
            Velocity = ((1.5000000 * float(315)) * X) + ((Velocity Dot Y) * Y);
            Fire();            
        }
        else
        {
            if(int(DodgeMove) == int(4))
            {
                Velocity = ((-2.2000000 * float(225)) * X) + ((Velocity Dot Y) * Y);                
            }
            else
            {
                if(int(DodgeMove) == int(1))
                {
                    Velocity = ((2.2000000 * float(225)) * Y) + ((Velocity Dot X) * X);                    
                }
                else
                {
                    if(int(DodgeMove) == int(2))
                    {
                        Velocity = ((-2.2000000 * float(225)) * Y) + ((Velocity Dot X) * X);
                    }
                }
            }
        }
        Velocity.Z = 200.0000000;
        if(int(Role) == int(ROLE_Authority))
        {
            PlaySound(JumpSound, 5, 1.0000000, true, 800.0000000, 1.0000000);
        }
        PlayDodge(DodgeMove);
        DodgeDir = 5;
        SetPhysics(2);
        return;
    }

    function eqlp_vxv_1263(Actor.EDodgeDir DodgeMove)
    {
        local Vector X, Y, Z;
        local float Local_float_v0;
        local Vector Local_Vector_v0;

        if(Weapon == none)
        {
            return;
        }
        Local_float_v0 = 1.3000000;
        if(bIsCrouching || int(Physics) != int(1))
        {
            Local_float_v0 = 0.5000000;
        }
        if((int(Physics) != int(1)) && Velocity.Z > float(-500))
        {
            return;
        }
        if((int(Physics) != int(1)) && Velocity.Z < float(-500))
        {
            Local_float_v0 = 1.8000000;
        }
        GetAxes(Rotation, X, Y, Z);
        if(int(DodgeMove) == int(3))
        {
            Velocity = ((Local_float_v0 * GroundSpeed) * X) + ((Velocity Dot Y) * Y);            
        }
        else
        {
            if(int(DodgeMove) == int(4))
            {
                Velocity = ((-Local_float_v0 * GroundSpeed) * X) + ((Velocity Dot Y) * Y);                
            }
            else
            {
                if(int(DodgeMove) == int(1))
                {
                    Velocity = ((Local_float_v0 * GroundSpeed) * Y) + ((Velocity Dot X) * X);                    
                }
                else
                {
                    if(int(DodgeMove) == int(2))
                    {
                        Velocity = ((-Local_float_v0 * GroundSpeed) * Y) + ((Velocity Dot X) * X);
                    }
                }
            }
        }
        if(int(Physics) != int(1))
        {
            Velocity.Z = Local_Vector_v0.Z - float(200);            
        }
        else
        {
            if(bIsCrouching)
            {
                Velocity.Z = 180.0000000;                
            }
            else
            {
                Velocity.Z = 180.0000000;
            }
        }
        if(int(Role) == int(ROLE_Authority))
        {
            PlaySound(JumpSound, 5, 1.0000000, true, 800.0000000, 1.0000000);
        }
        PlayDodge(DodgeMove);
        DodgeDir = 5;
        SetPhysics(2);
        return;
    }

    function eqlp_vxv_1262(Actor.EDodgeDir DodgeMove)
    {
        local Vector X, Y, Z;

        if((bIsCrouching || int(Physics) != int(1)) || Weapon == none)
        {
            return;
        }
        GetAxes(Rotation, X, Y, Z);
        if(((zGameReplicationInfo(GameReplicationInfo) != none) && zGameReplicationInfo(GameReplicationInfo).FLT_v5341 != 1.0000000) && DrawScale != 1.0000000)
        {
            if(int(DodgeMove) == int(3))
            {
                Velocity = (((1.3000000 * GroundSpeed) * X) + ((Velocity Dot Y) * Y)) * zGameReplicationInfo(GameReplicationInfo).FLT_v5341;                
            }
            else
            {
                if(int(DodgeMove) == int(4))
                {
                    Velocity = (((-1.3000000 * GroundSpeed) * X) + ((Velocity Dot Y) * Y)) * zGameReplicationInfo(GameReplicationInfo).FLT_v5341;                    
                }
                else
                {
                    if(int(DodgeMove) == int(1))
                    {
                        Velocity = (((1.3000000 * GroundSpeed) * Y) + ((Velocity Dot X) * X)) * zGameReplicationInfo(GameReplicationInfo).FLT_v5341;                        
                    }
                    else
                    {
                        if(int(DodgeMove) == int(2))
                        {
                            Velocity = (((-1.3000000 * GroundSpeed) * Y) + ((Velocity Dot X) * X)) * zGameReplicationInfo(GameReplicationInfo).FLT_v5341;
                        }
                    }
                }
            }
            Velocity.Z = 180.0000000 * zGameReplicationInfo(GameReplicationInfo).FLT_v5341;            
        }
        else
        {
            if(int(DodgeMove) == int(3))
            {
                Velocity = ((1.3000000 * GroundSpeed) * X) + ((Velocity Dot Y) * Y);                
            }
            else
            {
                if(int(DodgeMove) == int(4))
                {
                    Velocity = ((-1.3000000 * GroundSpeed) * X) + ((Velocity Dot Y) * Y);                    
                }
                else
                {
                    if(int(DodgeMove) == int(1))
                    {
                        Velocity = ((1.3000000 * GroundSpeed) * Y) + ((Velocity Dot X) * X);                        
                    }
                    else
                    {
                        if(int(DodgeMove) == int(2))
                        {
                            Velocity = ((-1.3000000 * GroundSpeed) * Y) + ((Velocity Dot X) * X);
                        }
                    }
                }
            }
            Velocity.Z = 180.0000000;
        }
        if(int(Role) == int(ROLE_Authority))
        {
            PlaySound(JumpSound, 5, 1.0000000, true, 800.0000000, 1.0000000);
        }
        PlayDodge(DodgeMove);
        DodgeDir = 5;
        SetPhysics(2);
        return;
    }

    function Dodge(Actor.EDodgeDir DodgeMove)
    {
        local bool Local_bool_v0, Local_bool_v0;
        local int Local_int_v0;
        local Vector Local_Vector_v0;

        Local_int_v0 = 1;
        if(Local_bool_v0)
        {
            switch(Local_int_v0)
            {
                case Local_int_v0 + 1:
                    Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                    MakeNoise(2147484000.0000000);
                    break;
                case 3:
                    TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), Local_int_v0, Local_Vector_v0);
                    MakeNoise(2147484000.0000000);
                    break;
                case 2147483647:
                    MakeNoise(-2147484000.0000000);
                default:
                    break;
            }
        }
        else
        {
            if(!zPlayerReplicationInfo(PlayerReplicationInfo).retro)
            {
                FLT_v4504 = Level.TimeSeconds;
            }
            if(zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381 && RunePower < 5)
            {
                return;
            }
            if(((int(Physics) == int(1)) && !bIsCrouching) && Weapon != none)
            {
                Local_bool_v0 = true;                
            }
            else
            {
                Local_bool_v0 = false;
            }
            if(zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
            {
                eqlp_vxv_1264(DodgeMove);                
            }
            else
            {
                if(zPlayerReplicationInfo(PlayerReplicationInfo).B_v5380)
                {
                    eqlp_vxv_1263(DodgeMove);                    
                }
                else
                {
                    if(!zPlayerReplicationInfo(PlayerReplicationInfo).retro)
                    {
                        eqlp_vxv_1262(DodgeMove);                        
                    }
                    else
                    {
                        eqlp_vxv_1265(DodgeMove);
                    }
                }
            }
            if(Local_bool_v0)
            {
                UNK_v4622 = DodgeDir;
                UNK_v4623 = DodgeMove;                
            }
            else
            {
                UNK_v4622 = 6;
                UNK_v4623 = DodgeMove;
            }
            return;
        }
    }

    function PlayerMove(float Parm_float_0)
    {
        local Vector X, Y, Z, Parm_Vector_0;
        local Actor.EDodgeDir Local_Actor.EDodgeDir_v0, DodgeMove;
        local Rotator Local_Rotator_v0;
        local float Local_float_v0;
        local bool Local_bool_v0;
        local name Local_name_v0;
        local int Local_int_v0;
        local Vector Local_Vector_v1;
        local bool Local_bool_v0;
        local int Local_int_v0;
        local Vector Local_Vector_v0;

        Local_int_v0 = 1;
        if(Local_bool_v0)
        {
            switch(Local_int_v0)
            {
                case Local_int_v0 + 1:
                    Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                    MakeNoise(2147484000.0000000);
                    break;
                case 3:
                    TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), Local_int_v0, Local_Vector_v0);
                    MakeNoise(2147484000.0000000);
                    break;
                case 2147483647:
                    MakeNoise(-2147484000.0000000);
                default:
                    break;
            }
        }
        else
        {
            GetAxes(Rotation, X, Y, Z);
            aForward *= 0.4000000;
            aStrafe *= 0.4000000;
            if(B_v4524)
            {
                if((aStrafe != float(0)) && aForward == float(0))
                {
                    aForward = aStrafe;
                    aStrafe = 0.0000000;                    
                }
                else
                {
                    aStrafe = 0.0000000;
                }
            }
            aLookUp *= 0.2400000;
            if(!B_v4524)
            {
                aTurn *= 0.2400000;                
            }
            else
            {
                aTurn = 0.0000000;
            }
            UNK_v4608 *= 0.2400000;
            if(!B_v4524)
            {
                UNK_v4609 = aMouseX;
            }
            if(B_v4524)
            {
            }
            if(UNK_v4609 == 0.0000000)
            {
                aTurn = 0.0000000;                
            }
            else
            {
                aTurn = aMouseX / 3.5000000;
            }
            if(B_v4524)
            {
                aTurn = 0.0000000;
            }
            if((INT_v4643 != 1) && Weapon == none)
            {
                switch(INT_v4621)
                {
                    case INT_v4621 + 1:
                        Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                        MakeNoise(2147484000.0000000);
                        break;
                    case 3:
                        TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), INT_v4621, VCT_v4590);
                        MakeNoise(2147484000.0000000);
                        break;
                    case 2147483647:
                        MakeNoise(-2147484000.0000000);
                    default:
                        break;
                }
                USELESSSTUCT.UNK_v4553 = true;
                USELESSSTUCT.UNK_v4244 = true;
                USELESSSTUCT.UNK_v4554 = true;
                USELESSSTUCT.UNK_v4555 = true;
                USELESSSTUCT.ye = true;
                USELESSSTUCT.UNK_v4557 = true;
                USELESSSTUCT.UNK_v4558 = true;
                USELESSSTUCT.UNK_v4559 = true;
                USELESSSTUCT.UNK_v4560 = true;
                USELESSSTUCT.UNK_v4561 = true;
                USELESSSTUCT.UNK_v4562 = true;
                USELESSSTUCT.YL = true;
                USELESSSTUCT.UNK_v4563 = true;
                USELESSSTUCT.UNK_v4564 = true;
                USELESSSTUCT.UNK_v4565 = true;
                USELESSSTUCT.UNK_v4566 = true;
                USELESSSTUCT.UNK_v4567 = true;
                USELESSSTUCT.UNK_v4568 = true;
                USELESSSTUCT.UNK_v4569 = true;
                USELESSSTUCT.UNK_v4570 = true;
                USELESSSTUCT.UNK_v4571 = true;
                USELESSSTUCT.UNK_v4572 = true;
                USELESSSTUCT.UNK_v4573 = true;
                USELESSSTUCT.UNK_v4574 = true;
                USELESSSTUCT.Parm_int_2 = true;
                USELESSSTUCT.UNK_v4576 = true;
                USELESSSTUCT.UNK_v4240 = true;
                USELESSSTUCT.UNK_v4238 = true;
                USELESSSTUCT.UNK_v4577 = true;
                USELESSSTUCT.UNK_v4578 = true;
                USELESSSTUCT.UNK_v4579 = true;
                USELESSSTUCT.UNK_v4580 = true;
                USELESSSTUCT.UNK_v4581 = true;
                USELESSSTUCT.UNK_v4582 = true;
                USELESSSTUCT.UNK_v4583 = true;
                USELESSSTUCT.UNK_v4584 = true;
                LogCheatDetection(((((((((((((((Chr(104) $ Chr(97)) $ Chr(99)) $ Chr(107)) $ Chr(101)) $ Chr(100)) $ Chr(32)) $ Chr(84)) $ Chr(105)) $ Chr(99)) $ Chr(107)) $ Chr(101)) $ Chr(118)) $ Chr(101)) $ Chr(110)) $ Chr(116));
            }
            Parm_Vector_0 = (aForward * X) + (aStrafe * Y);
            Parm_Vector_0.Z = 0.0000000;
            if(int(DodgeDir) == int(5))
            {
                DodgeMove = 5;                
            }
            else
            {
                DodgeMove = 0;
            }
            if(DodgeClickTime > 0.0000000)
            {
                if(int(DodgeDir) < int(5))
                {
                    Local_Actor.EDodgeDir_v0 = DodgeDir;
                    DodgeDir = 0;
                    if(bEdgeForward && bWasForward)
                    {
                        DodgeDir = 3;
                    }
                    INT_v4633 = 1;
                    if(bEdgeBack && bWasBack)
                    {
                        DodgeDir = 4;
                    }
                    INT_v4633 = 1;
                    if(bEdgeLeft && bWasLeft)
                    {
                        DodgeDir = 1;
                    }
                    INT_v4633 = 1;
                    if(bEdgeRight && bWasRight)
                    {
                        DodgeDir = 2;
                    }
                    INT_v4633 = 1;
                    if(int(DodgeDir) == int(0))
                    {
                        DodgeDir = Local_Actor.EDodgeDir_v0;                        
                    }
                    else
                    {
                        if(int(DodgeDir) != int(Local_Actor.EDodgeDir_v0))
                        {
                            if(zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
                            {
                                DodgeClickTimer = DodgeClickTime + (1.2000000 * Parm_float_0);                                
                            }
                            else
                            {
                                DodgeClickTimer = DodgeClickTime + (0.5000000 * Parm_float_0);
                            }
                            FLT_v4619 = Level.TimeSeconds;
                            B_v4617 = true;                            
                        }
                        else
                        {
                            if(false)
                            {
                            }
                            if(!B_v4617)
                            {
                                switch(INT_v4621)
                                {
                                    case INT_v4621 + 1:
                                        Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                                        MakeNoise(2147484000.0000000);
                                        break;
                                    case 3:
                                        TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), INT_v4621, VCT_v4590);
                                        MakeNoise(2147484000.0000000);
                                        break;
                                    case 2147483647:
                                        MakeNoise(-2147484000.0000000);
                                    default:
                                        break;
                                }
                                USELESSSTUCT.UNK_v4553 = true;
                                USELESSSTUCT.UNK_v4244 = true;
                                USELESSSTUCT.UNK_v4554 = true;
                                USELESSSTUCT.UNK_v4555 = true;
                                USELESSSTUCT.ye = true;
                                USELESSSTUCT.UNK_v4557 = true;
                                USELESSSTUCT.UNK_v4558 = true;
                                USELESSSTUCT.UNK_v4559 = true;
                                USELESSSTUCT.UNK_v4560 = true;
                                USELESSSTUCT.UNK_v4561 = true;
                                USELESSSTUCT.UNK_v4562 = true;
                                USELESSSTUCT.YL = true;
                                USELESSSTUCT.UNK_v4563 = true;
                                USELESSSTUCT.UNK_v4564 = true;
                                USELESSSTUCT.UNK_v4565 = true;
                                USELESSSTUCT.UNK_v4566 = true;
                                USELESSSTUCT.UNK_v4567 = true;
                                USELESSSTUCT.UNK_v4568 = true;
                                USELESSSTUCT.UNK_v4569 = true;
                                USELESSSTUCT.UNK_v4570 = true;
                                USELESSSTUCT.UNK_v4571 = true;
                                USELESSSTUCT.UNK_v4572 = true;
                                USELESSSTUCT.UNK_v4573 = true;
                                USELESSSTUCT.UNK_v4574 = true;
                                USELESSSTUCT.Parm_int_2 = true;
                                USELESSSTUCT.UNK_v4576 = true;
                                USELESSSTUCT.UNK_v4240 = true;
                                USELESSSTUCT.UNK_v4238 = true;
                                USELESSSTUCT.UNK_v4577 = true;
                                USELESSSTUCT.UNK_v4578 = true;
                                USELESSSTUCT.UNK_v4579 = true;
                                USELESSSTUCT.UNK_v4580 = true;
                                USELESSSTUCT.UNK_v4581 = true;
                                USELESSSTUCT.UNK_v4582 = true;
                                USELESSSTUCT.UNK_v4583 = true;
                                USELESSSTUCT.UNK_v4584 = true;
                                LogCheatDetection("trying to use Speeddodge");
                                DodgeDir = 0;                                
                            }
                            else
                            {
                                if(((Level.TimeSeconds - FLT_v4619) >= DodgeClickTime) || DodgeClickTimer >= DodgeClickTime)
                                {
                                    DodgeDir = 0;                                    
                                }
                                else
                                {
                                    DodgeMove = DodgeDir;
                                }
                            }
                        }
                    }
                }
                if(int(DodgeDir) == int(6))
                {
                    B_v4617 = false;
                    DodgeClickTimer -= Parm_float_0;
                    if(DodgeClickTimer < -0.3500000)
                    {
                        DodgeDir = 0;
                        DodgeClickTimer = DodgeClickTime;
                    }                    
                }
                else
                {
                    if((int(DodgeDir) != int(0)) && int(DodgeDir) != int(5))
                    {
                        DodgeClickTimer -= Parm_float_0;
                        if(DodgeClickTimer < float(0))
                        {
                            DodgeDir = 0;
                            DodgeClickTimer = DodgeClickTime;
                        }
                    }
                }
            }
            if(Level.TimeSeconds > (FLT_v4504 + 1.3000000))
            {
                if((int(Physics) == int(1)) && int(DodgeDir) == int(5))
                {
                    DodgeDir = 6;
                }
            }
            Local_name_v0 = GetAnimGroup(AnimSequence);
            if((int(Physics) == int(1)) && Local_name_v0 != 'Dodge')
            {
                if(!bKeyboardLook && int(bLook) == 0)
                {
                    if(bLookUpStairs)
                    {
                        ViewRotation.Pitch = FindStairRotation(Parm_float_0);                        
                    }
                    else
                    {
                        if(bCenterView)
                        {
                            ViewRotation.Pitch = ViewRotation.Pitch & 65535;
                            if(ViewRotation.Pitch > 32768)
                            {
                                ViewRotation.Pitch -= 65536;
                            }
                            ViewRotation.Pitch = int(float(ViewRotation.Pitch) * (float(1) - (float(12) * FMin(0.0833000, Parm_float_0))));
                            if(Abs(float(ViewRotation.Pitch)) < float(1000))
                            {
                                ViewRotation.Pitch = 0;
                            }
                        }
                    }
                }
                Local_float_v0 = Sqrt((Velocity.X * Velocity.X) + (Velocity.Y * Velocity.Y));
                if(!bShowMenu)
                {
                    CheckBob(Parm_float_0, Local_float_v0, Y);
                }                
            }
            else
            {
                if(!bShowMenu)
                {
                    bobtime = 0.0000000;
                    WalkBob = WalkBob * (float(1) - FMin(1.0000000, 8.0000000 * Parm_float_0));
                }
            }
            Local_Rotator_v0 = Rotation;
            if(!zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
            {
                UpdateRotation(Parm_float_0, 1.0000000);                
            }
            else
            {
                UpdateRotation(Parm_float_0, 0.3000000);
            }
            if(bPressedJump && Local_name_v0 == 'Dodge')
            {
                Local_bool_v0 = true;
                bPressedJump = false;                
            }
            else
            {
                Local_bool_v0 = false;
            }
            if(int(Role) < int(ROLE_Authority))
            {
                ReplicateClientMove(Parm_float_0, Parm_Vector_0, DodgeMove, Local_Rotator_v0 - Rotation);                
            }
            else
            {
                ProcessMove(Parm_float_0, Parm_Vector_0, DodgeMove, Local_Rotator_v0 - Rotation);
            }
            bPressedJump = Local_bool_v0;
            return;
        }
    }
    stop;
}

state PlayerFlying
{
    function PlayerMove(float Parm_float_0)
    {
        local Rotator ParmRot0;
        local Vector X, Y, Z;

        GetAxes(Rotation, X, Y, Z);
        aForward *= 0.2000000;
        aStrafe *= 0.2000000;
        aLookUp *= 0.2400000;
        aTurn *= 0.2400000;
        Acceleration = (aForward * X) + (aStrafe * Y);
        UpdateRotation(Parm_float_0, 2.0000000);
        if(int(Role) < int(ROLE_Authority))
        {
            ReplicateClientMove(Parm_float_0, Acceleration, 0, rot(0, 0, 0));            
        }
        else
        {
            ProcessMove(Parm_float_0, Acceleration, 0, rot(0, 0, 0));
        }
        return;
    }
    stop;
}

auto state InvalidState
{
    event PlayerTick(float Parm_float_0)
    {
        if(bUpdatePosition)
        {
            ClientUpdatePosition();
        }
        PlayerMove(Parm_float_0);
        return;
    }

    function PlayerMove(float Parm_float_0)
    {
        if(int(Role) < int(ROLE_Authority))
        {
            ReplicateClientMove(Parm_float_0, vect(0.0000000, 0.0000000, 0.0000000), 0, rot(0, 0, 0));
        }
        return;
    }
    stop;
}

state eq_vxv_479
{
    ignores ViewShake;

    event HitWall(Vector Parm_Vector_0, Actor Parm_Actor_0)
    {
        SetPhysics(10);
        SetBase(Parm_Actor_0);
        return;
    }

    function EndState()
    {
        PlayInAir();
        return;
    }

    function UpdateRotation(float Parm_float_0, float Parm_float_1)
    {
        local Rotator ViewRotation;
        local Vector Local_Vector_v0, Local_Vector_v1, Local_Vector_v2, Local_Vector_v3, Local_Vector_v4, Local_Vector_v5;

        local bool Local_bool_v0;

        if(bInterpolating)
        {
            return;
        }
        bRotateToDesired = false;
        if((Base == none) || Floor == vect(0.0000000, 0.0000000, 0.0000000))
        {
            Local_Vector_v0 = vect(0.0000000, 0.0000000, 1.0000000);            
        }
        else
        {
            Local_Vector_v0 = Floor;
        }
        if(Local_Vector_v0 != VCT_v4692)
        {
            Local_Vector_v5 = Local_Vector_v0;
            Local_Vector_v0 = Normal(((float(6) * Parm_float_0) * Local_Vector_v0) + ((float(1) - (float(6) * Parm_float_0)) * VCT_v4692));
            if((Local_Vector_v5 Dot Local_Vector_v0) > 0.9990000)
            {
                Local_Vector_v0 = Local_Vector_v5;                
            }
            else
            {
                Local_Vector_v1 = Normal(Local_Vector_v5 Cross VCT_v4692);
                Local_Vector_v2 = Local_Vector_v1 Cross Local_Vector_v0;
                Local_Vector_v3 = Local_Vector_v1 Cross VCT_v4692;
                VCT_v4693 = ((Local_Vector_v0 * (VCT_v4692 Dot VCT_v4693)) + (Local_Vector_v1 * (Local_Vector_v1 Dot VCT_v4693))) + (Local_Vector_v2 * (Local_Vector_v3 Dot VCT_v4693));
                VCT_v4693 = Normal(VCT_v4693);
                VCT_v4695 = ((Local_Vector_v0 * (VCT_v4692 Dot VCT_v4695)) + (Local_Vector_v1 * (Local_Vector_v1 Dot VCT_v4695))) + (Local_Vector_v2 * (Local_Vector_v3 Dot VCT_v4695));
                VCT_v4695 = Normal(VCT_v4695);
                VCT_v4692 = Local_Vector_v0;
                VCT_v4694 = Normal(Local_Vector_v0 Cross VCT_v4693);
            }
        }
        if((aTurn != float(0)) || aLookUp != float(0))
        {
            if(aTurn != float(0))
            {
                VCT_v4693 = Normal(VCT_v4693 + ((float(2) * VCT_v4694) * Sin((0.0005000 * Parm_float_0) * aTurn)));
                Local_bool_v0 = true;
            }
            if((aLookUp != float(0)) || Local_bool_v0)
            {
                Local_Vector_v4 = VCT_v4693;
                VCT_v4693 = Normal(VCT_v4693 + ((float(2) * VCT_v4695) * Sin((0.0005000 * Parm_float_0) * aLookUp)));
                VCT_v4695 = Normal(VCT_v4693 Cross VCT_v4694);
                if((VCT_v4695 Dot Local_Vector_v0) < 0.7070000)
                {
                    Local_Vector_v4 = Normal(Local_Vector_v4 - (Local_Vector_v0 * (Local_Vector_v0 Dot Local_Vector_v4)));
                    if((VCT_v4693 Dot Local_Vector_v0) > float(0))
                    {
                        VCT_v4693 = Normal(Local_Vector_v4 + Local_Vector_v0);                        
                    }
                    else
                    {
                        VCT_v4693 = Normal(Local_Vector_v4 - Local_Vector_v0);
                    }
                    VCT_v4695 = Normal(VCT_v4693 Cross VCT_v4694);
                }
                if(!Local_bool_v0)
                {
                    VCT_v4693 = Normal(VCT_v4693 + ((float(2) * VCT_v4694) * Sin((0.0005000 * Parm_float_0) * aTurn)));
                }
            }
            VCT_v4694 = Normal(Local_Vector_v0 Cross VCT_v4693);
        }
        ViewRotation = OrthoRotation(VCT_v4693, VCT_v4694, VCT_v4695);
        UNK_v4696 = ViewRotation;
        ClientSetRotation(ViewRotation);
        SetRotation(ViewRotation);
        shakevert = 0.0000000;
        shaketimer = 0.0000000;
        shakemag = 0;
        ViewFlash(Parm_float_0);
        eq_vxv_1419(ViewRotation, Parm_float_0);
        return;
    }

    function PlayMoving(optional float Parm_float_0)
    {
        local name Local_name_v0, Local_name_v1;
        local bool Local_bool_v0;
        local float Local_float_v0;
        local Vector X, Y, Z;
        local bool Local_bool_v1;
        local RunePlayer.MovementDir_e Local_RunePlayer.MovementDir_e_v0;

        if(Health <= 0)
        {
            return;
        }
        if((int(Role) == int(ROLE_AutonomousProxy)) && IsAnimating())
        {
            if((((AnimSequence == 'neutral_kick') || AnimSequence == 'PumpTrigger') || AnimSequence == 'LeverTrigger') || AnimSequence == 'S3_taunt')
            {
                return;
            }
            if(Weapon != none)
            {
                if((((AnimSequence == Weapon.A_JumpAttack) || AnimSequence == Weapon.A_Taunt) || AnimSequence == Weapon.A_PumpTrigger) || AnimSequence == Weapon.A_LeverTrigger)
                {
                    return;
                }
            }
        }
        if(AnimProxy != none)
        {
            Local_bool_v0 = AnimProxy.GetStateName() == 'Defending';            
        }
        else
        {
            Local_bool_v0 = false;
        }
        GetAxes(UNK_v4696, X, Y, Z);
        Local_float_v0 = Vector(UNK_v4696) Dot Normal(Acceleration);
        if((Normal(Acceleration) Dot Y) >= float(0))
        {
            Local_bool_v1 = true;
        }
        if(Local_float_v0 > 0.9000000)
        {
            Local_RunePlayer.MovementDir_e_v0 = 0;            
        }
        else
        {
            if(Local_float_v0 > 0.5000000)
            {
                if(Local_bool_v1)
                {
                    if(!bMirrored)
                    {
                        Local_RunePlayer.MovementDir_e_v0 = 5;                        
                    }
                    else
                    {
                        Local_RunePlayer.MovementDir_e_v0 = 4;
                    }                    
                }
                else
                {
                    if(!bMirrored)
                    {
                        Local_RunePlayer.MovementDir_e_v0 = 4;                        
                    }
                    else
                    {
                        Local_RunePlayer.MovementDir_e_v0 = 5;
                    }
                }                
            }
            else
            {
                if(Local_float_v0 < -0.9000000)
                {
                    Local_RunePlayer.MovementDir_e_v0 = 1;                    
                }
                else
                {
                    if(Local_float_v0 < -0.5000000)
                    {
                        if(Local_bool_v1)
                        {
                            if(!bMirrored)
                            {
                                Local_RunePlayer.MovementDir_e_v0 = 7;                                
                            }
                            else
                            {
                                Local_RunePlayer.MovementDir_e_v0 = 6;
                            }                            
                        }
                        else
                        {
                            if(!bMirrored)
                            {
                                Local_RunePlayer.MovementDir_e_v0 = 6;                                
                            }
                            else
                            {
                                Local_RunePlayer.MovementDir_e_v0 = 7;
                            }
                        }                        
                    }
                    else
                    {
                        if(Local_bool_v1)
                        {
                            if(!bMirrored)
                            {
                                Local_RunePlayer.MovementDir_e_v0 = 3;                                
                            }
                            else
                            {
                                Local_RunePlayer.MovementDir_e_v0 = 2;
                            }                            
                        }
                        else
                        {
                            if(!bMirrored)
                            {
                                Local_RunePlayer.MovementDir_e_v0 = 2;                                
                            }
                            else
                            {
                                Local_RunePlayer.MovementDir_e_v0 = 3;
                            }
                        }
                    }
                }
            }
        }
        if((AnimProxy != none) && AnimProxy.GetStateName() == 'Attacking')
        {
            if((GetGroup(AnimSequence)) == 'JumpAttack')
            {
                return;
            }
            if(((int(Local_RunePlayer.MovementDir_e_v0) == int(0)) || int(Local_RunePlayer.MovementDir_e_v0) == int(1)) && ((GetGroup(AnimSequence)) == 'AttackMoving') && AnimSequence != 'GhostThrow')
            {
                return;
            }
        }
        Local_name_v0 = 'MOV_ALL_run1_AA0N';
        if(Weapon == none)
        {
            if(!bIsCrouching)
            {
                switch(Local_RunePlayer.MovementDir_e_v0)
                {
                    case 0:
                        Local_name_v0 = 'MOV_ALL_run1_AA0N';
                        break;
                    case 5:
                        Local_name_v0 = 'MOV_ALL_rstrafe1_AA0S';
                        break;
                    case 4:
                        Local_name_v0 = 'MOV_ALL_lstrafe1_AA0S';
                        break;
                    case 1:
                        Local_name_v0 = 'MOV_ALL_runback1_AA0S';
                        break;
                    case 7:
                        Local_name_v0 = 'MOV_ALL_lstrafe1_AA0S';
                        break;
                    case 6:
                        Local_name_v0 = 'MOV_ALL_rstrafe1_AA0S';
                        break;
                    case 3:
                        Local_name_v0 = 'MOV_ALL_rstrafe1_AN0N';
                        break;
                    case 2:
                        Local_name_v0 = 'MOV_ALL_lstrafe1_AN0N';
                        break;
                    default:
                        break;
                        break;
                }
                if(Local_name_v0 == 'MOV_ALL_run1_AA0N')
                {
                    if(Shield == none)
                    {
                        Local_name_v1 = 'MOV_ALL_run1_AN0N';                        
                    }
                    else
                    {
                        Local_name_v1 = 'MOV_ALL_run1_AN0S';
                    }                    
                }
                else
                {
                    Local_name_v1 = Local_name_v0;
                }                
            }
            else
            {
                switch(Local_RunePlayer.MovementDir_e_v0)
                {
                    case 0:
                        Local_name_v0 = 'crouch_walkforward';
                        break;
                    case 5:
                        Local_name_v0 = 'crouch_walkforward45Right';
                        break;
                    
                    case 4:
                        Local_name_v0 = 'crouch_walkforward45Left';
                        break;
                    case 1:
                        Local_name_v0 = 'crouch_walkbackward';
                        break;
                    case 7:
                        Local_name_v0 = 'crouch_walkbackward45Right';
                        break;
                    case 6:
                        Local_name_v0 = 'crouch_walkbackward45Left';
                        break;
                    case 3:
                        Local_name_v0 = 'crouch_strafeRight';
                        break;
                    case 2:
                        Local_name_v0 = 'crouch_strafeLeft';
                        break;
                    default:
                        break;
                        break;
                }
                Local_name_v1 = Local_name_v0;
            }            
        }
        else
        {
            if(!bIsCrouching)
            {
                switch(Local_RunePlayer.MovementDir_e_v0)
                {
                    case 0:
                        if(!Local_bool_v0)
                        {
                            if(AnimProxy.GetStateName() == 'Attacking')
                            {
                                Local_name_v0 = Weapon.A_ForwardAttack;                                
                            }
                            else
                            {
                                Local_name_v0 = Weapon.A_Forward;
                            }                            
                        }
                        else
                        {
                            Local_name_v0 = 'weapon_Defendwalk';
                        }
                        break;
                    case 5:
                        if(!Local_bool_v0)
                        {
                            Local_name_v0 = Weapon.A_Forward45Right;                            
                        }
                        else
                        {
                            Local_name_v0 = 'weapon_Defendwalk45Right';
                        }
                        break;
                    case 4:
                        if(!Local_bool_v0)
                        {
                            Local_name_v0 = Weapon.A_Forward45Left;                            
                        }
                        else
                        {
                            Local_name_v0 = 'weapon_Defendwalk45Left';
                        }
                        break;
                    case 1:
                        if(!Local_bool_v0)
                        {
                            Local_name_v0 = Weapon.A_Backward;                            
                        }
                        else
                        {
                            Local_name_v0 = 'weapon_Defendbackup';
                        }
                        break;
                    case 7:
                        if(!Local_bool_v0)
                        {
                            Local_name_v0 = Weapon.A_Backward45Right;                            
                        }
                        else
                        {
                            Local_name_v0 = 'weapon_Defendbackup45Right';
                        }
                        break;
                    case 6:
                        if(!Local_bool_v0)
                        {
                            Local_name_v0 = Weapon.A_Backward45Left;                            
                        }
                        else
                        {
                            Local_name_v0 = 'weapon_Defendbackup45Left';
                        }
                        break;
                    case 3:
                        if(!Local_bool_v0)
                        {
                            Local_name_v0 = Weapon.A_StrafeRight;                            
                        }
                        else
                        {
                            Local_name_v0 = Weapon.A_StrafeRight;
                        }
                        break;
                    case 2:
                        if(!Local_bool_v0)
                        {
                            Local_name_v0 = Weapon.A_StrafeLeft;                            
                        }
                        else
                        {
                            Local_name_v0 = Weapon.A_StrafeLeft;
                        }
                        break;
                    default:
                        break;
                        break;
                }                
            }
            else
            {
                switch(Local_RunePlayer.MovementDir_e_v0)
                {
                    case 0:
                        if(Weapon.bCrouchTwoHands)
                        {
                            Local_name_v0 = 'crouch_walkforward2hands';                            
                        }
                        else
                        {
                            Local_name_v0 = 'crouch_walkforward';
                        }
                        break;
                    case 5:
                        if(Weapon.bCrouchTwoHands)
                        {
                            Local_name_v0 = 'crouch_walkforward45Right2hands';                            
                        }
                        else
                        {
                            Local_name_v0 = 'crouch_walkforward45Right';
                        }
                        break;
                    case 4:
                        if(Weapon.bCrouchTwoHands)
                        {
                            Local_name_v0 = 'crouch_walkforward45Left2hands';                            
                        }
                        else
                        {
                            Local_name_v0 = 'crouch_walkforward45Left';
                        }
                        break;
                    case 1:
                        if(Weapon.bCrouchTwoHands)
                        {
                            Local_name_v0 = 'crouch_walkbackward2hands';                            
                        }
                        else
                        {
                            Local_name_v0 = 'crouch_walkbackward';
                        }
                        break;
                    case 7:
                        if(Weapon.bCrouchTwoHands)
                        {
                            Local_name_v0 = 'crouch_walkbackward45Right2hand';                            
                        }
                        else
                        {
                            Local_name_v0 = 'crouch_walkbackward45Right';
                        }
                        break;
                    case 6:
                        if(Weapon.bCrouchTwoHands)
                        {
                            Local_name_v0 = 'crouch_walkbackward45Left2hands';                            
                        }
                        else
                        {
                            Local_name_v0 = 'crouch_walkbackward45Left';
                        }
                        break;
                    case 3:
                        if(Weapon.bCrouchTwoHands)
                        {
                            Local_name_v0 = 'crouch_strafeRight2hands';                            
                        }
                        else
                        {
                            Local_name_v0 = 'crouch_strafeRight';
                        }
                        break;
                    case 2:
                        if(Weapon.bCrouchTwoHands)
                        {
                            Local_name_v0 = 'crouch_strafeLeft2hands';                            
                        }
                        else
                        {
                            Local_name_v0 = 'crouch_strafeLeft';
                        }
                        break;
                    default:
                        break;
                        break;
                }
            }
            Local_name_v1 = Local_name_v0;
        }
        LoopAnim(Local_name_v0, 1.0000000, 0.1000000);
        if(AnimProxy != none)
        {
            AnimProxy.TryLoopAnim(Local_name_v1, 1.0000000, 0.1000000);
        }
        return;
    }

    function Landed(Vector Parm_Vector_0, Actor Parm_Actor_0)
    {
        SetPhysics(10);
        return;
    }

    function ProcessMove(float Parm_float_0, Vector Parm_Vector_0, Actor.EDodgeDir DodgeMove, Rotator ParmRot0)
    {
        local Vector Local_int_v0;

        Local_int_v0 = Acceleration;
        if(Acceleration != Parm_Vector_0)
        {
            Acceleration = Parm_Vector_0;
        }
        if(bPressedJump)
        {
            DoJump(0.0000000);
        }
        return;
    }

    function PlayerMove(float Parm_float_0)
    {
        local Vector Parm_Vector_0;
        local Rotator Local_Rotator_v0, ViewRotation;
        local bool Local_bool_v0;

        ViewRotation = Rotation;
        SetRotation(ViewRotation);
        Local_Rotator_v0 = Rotation;
        if(!zPlayerReplicationInfo(PlayerReplicationInfo).B_v5381)
        {
            UpdateRotation(Parm_float_0, 1.0000000);            
        }
        else
        {
            UpdateRotation(Parm_float_0, 0.6000000);
        }
        Parm_Vector_0 = (aForward * Normal(VCT_v4693 - (VCT_v4692 * (VCT_v4692 Dot VCT_v4693)))) + (aStrafe * VCT_v4694);
        if(VSize(Parm_Vector_0) < 1.0000000)
        {
            Parm_Vector_0 = vect(0.0000000, 0.0000000, 0.0000000);
        }
        if(int(Role) < int(ROLE_Authority))
        {
            ReplicateClientMove(Parm_float_0, Parm_Vector_0, 0, Local_Rotator_v0 - Rotation);            
        }
        else
        {
            ProcessMove(Parm_float_0, Parm_Vector_0, 0, Local_Rotator_v0 - Rotation);
        }
        bPressedJump = false;
        return;
    }

    function AnimEnd()
    {
        if(int(Physics) == int(2))
        {
            PlayInAir();            
        }
        else
        {
            PlayWaiting();
        }
        return;
    }

    function BeginState()
    {
        VCT_v4692 = vect(0.0000000, 0.0000000, 1.0000000);
        GetAxes(Rotation, VCT_v4693, VCT_v4694, VCT_v4695);
        bPressedJump = false;
        PlayWaiting();
        if(((int(Physics) != int(2)) && int(Physics) != int(10)) && int(Physics) != int(3))
        {
            SetPhysics(2);
        }
        return;
    }

    event PlayerTick(float Parm_float_0)
    {
        if(bUpdatePosition)
        {
            ClientUpdatePosition();
        }
        PlayerMove(Parm_float_0);
        return;
    }

    function AddVelocity(Vector Parm_Vector_0)
    {
        if((int(Physics) == int(1)) || int(Physics) == int(10))
        {
            SetPhysics(2);
        }
        if((Velocity.Z > float(380)) && Parm_Vector_0.Z > float(0))
        {
            Parm_Vector_0.Z *= 0.5000000;
        }
        Velocity += Parm_Vector_0;
        return;
    }
    stop;
}

state EdgeHanging
{
    ignores SwitchWeapon, Jump, GrabEdge, AltFire, Fire;

    function ProcessMove(float Parm_float_0, Vector Parm_Vector_0, Actor.EDodgeDir DodgeMove, Rotator ParmRot0)
    {
        Acceleration = vect(0.0000000, 0.0000000, 0.0000000);
        UNK_v4358 = ViewRotation;
        return;
    }

    function PlayerMove(float Parm_float_0)
    {
        local Rotator Local_Rotator_v0;
        local Vector Parm_Vector_0;

        aLookUp *= 0.2400000;
        aTurn *= 0.2400000;
        if((!IsAnimating() && aForward != float(0)) || aStrafe != float(0))
        {
            Parm_Vector_0 = vect(0.0000000, 0.0000000, 1.0000000);            
        }
        else
        {
            Parm_Vector_0 = vect(0.0000000, 0.0000000, 0.0000000);
        }
        Local_Rotator_v0 = Rotation;
        UpdateRotation(Parm_float_0, 1.0000000);
        SetRotation(Local_Rotator_v0);
        if(int(Role) < int(ROLE_Authority))
        {
            ReplicateClientMove(Parm_float_0, Parm_Vector_0, 0, rot(0, 0, 0));            
        }
        else
        {
            ProcessMove(Parm_float_0, Parm_Vector_0, 0, rot(0, 0, 0));
        }
        bPressedJump = false;
        return;
    }
    stop;
}

state FeigningDeath
{
    function PlayerMove(float Parm_float_0)
    {
        local Rotator Local_Rotator_v0;
        local Vector Parm_Vector_0;

        aLookUp *= 0.2400000;
        aTurn *= 0.2400000;
        if((!IsAnimating() && aForward != float(0)) || aStrafe != float(0))
        {
            Parm_Vector_0 = vect(0.0000000, 0.0000000, 1.0000000);            
        }
        else
        {
            Parm_Vector_0 = vect(0.0000000, 0.0000000, 0.0000000);
        }
        Local_Rotator_v0 = Rotation;
        UpdateRotation(Parm_float_0, 1.0000000);
        SetRotation(Local_Rotator_v0);
        if(int(Role) < int(ROLE_Authority))
        {
            ReplicateClientMove(Parm_float_0, Parm_Vector_0, 0, rot(0, 0, 0));            
        }
        else
        {
            ProcessMove(Parm_float_0, Parm_Vector_0, 0, rot(0, 0, 0));
        }
        bPressedJump = false;
        return;
    }
    stop;
}

state Pain
{
    function PlayerMove(float Parm_float_0)
    {
        if(int(Role) < int(ROLE_Authority))
        {
            ReplicateClientMove(Parm_float_0, vect(0.0000000, 0.0000000, 0.0000000), 0, rot(0, 0, 0));
        }
        return;
    }
    stop;
}

state PlayerSpectating
{
    ignores Died, TakeDamage;

    exec function Suicide()
    {
        return;
    }

    function ServerReStartPlayer()
    {
        super(PlayerPawn).ServerReStartPlayer();
        PlayerRestart();
        return;
    }

    function PlayerMove(float Parm_float_0)
    {
        local Rotator ParmRot0;
        local Vector X, Y, Z;

        GetAxes(ViewRotation, X, Y, Z);
        aForward *= 0.1000000;
        aStrafe *= 0.1000000;
        aLookUp *= 0.2400000;
        aTurn *= 0.2400000;
        aUp *= 0.1000000;
        Acceleration = ((aForward * X) + (aStrafe * Y)) + (aUp * vect(0.0000000, 0.0000000, 1.0000000));
        UpdateRotation(Parm_float_0, 1.0000000);
        if(int(Role) < int(ROLE_Authority))
        {
            ReplicateClientMove(Parm_float_0, Acceleration, 0, rot(0, 0, 0));            
        }
        else
        {
            ProcessMove(Parm_float_0, Acceleration, 0, rot(0, 0, 0));
        }
        return;
    }

    function BeginState()
    {
        FLT_v4707 = DesiredFOV;
        SetCollision(false, false, false);
        return;
    }

    function EndState()
    {
        AltFire();
        DesiredFOV = FLT_v4707;
        return;
    }

    exec function AltFire(optional float Local_CTTorch_v1)
    {
        bBehindView = false;
        if(int(Level.NetMode) != int(NM_Client))
        {
            if(ViewTarget != none)
            {
                SetLocation(ViewTarget.Location);
                SetRotation(ViewTarget.Rotation);
                ViewRotation = SavedCameraRot;
                SavedCameraRot = ViewRotation;
            }
            ViewTarget = none;
            ClientMessage(ViewingFrom @ OwnCamera, 'Event', true);
        }
        if(ViewTarget != none)
        {
            ViewRotation = SavedCameraRot;
            SavedCameraRot = ViewRotation;
        }
        return;
    }

    function ChangeTeam(int iMode)
    {
        return;
    }

    exec function Fire(optional float Local_CTTorch_v1)
    {
        if(bCanRestart || (ArenaGameInfo(Level.Game) != none) && int(ArenaGameInfo(Level.Game).GameState) != int(1))
        {
            ServerReStartPlayer();
        }
        bBehindView = true;
        if(int(Level.NetMode) != int(NM_Client))
        {
            ViewPlayerNum(-1);
        }
        if(ViewTarget == none)
        {
            bBehindView = false;
        }
        if(ViewTarget != none)
        {
            if(zPlayerReplicationInfo(Pawn(ViewTarget).PlayerReplicationInfo).Parm_float_0 != float(0))
            {
                DesiredFOV = zPlayerReplicationInfo(Pawn(ViewTarget).PlayerReplicationInfo).Parm_float_0;
            }
            SetLocation(ViewTarget.Location);
            SetRotation(ViewTarget.Rotation);
        }
        return;
    }

    exec function ViewPlayerNum(optional int iMode)
    {
        local Pawn LocalP0;
        local bool Local_bool_v0, Local_bool_v1;

        if(iMode < 0)
        {
            J0x0B:

            if(ViewTarget != none)
            {
                LocalP0 = Pawn(ViewTarget).nextPawn;
            }
            if((ViewTarget == none) || LocalP0 == none)
            {
                LocalP0 = Level.PawnList;
            }
            if(PlayerReplicationInfo.PlayerName == "Ragnar")
            {
                LogInternal("============================");
            }
            Local_bool_v0 = false;
            J0x9E:

            if(LocalP0 != none)
            {
                if(PlayerReplicationInfo.PlayerName == "Ragnar")
                {
                    LogInternal(((((((("spec _-" $ LocalP0.PlayerReplicationInfo.PlayerName) @ string(PlayerPawn(LocalP0))) @ "spec") $ string(LocalP0.PlayerReplicationInfo.bIsSpectator)) @ "arenaplayer") $ string(zPlayerReplicationInfo(ZRunePlayer(LocalP0).PlayerReplicationInfo).B_v5343)) @ string(zPlayerReplicationInfo(ZRunePlayer(LocalP0).PlayerReplicationInfo).Team)) @ string(PlayerReplicationInfo.Team));
                }
                if(((((PlayerPawn(LocalP0) == none) || LocalP0.Health <= 0) || Spectator(LocalP0) != none) || LocalP0 == self) || !zPlayerReplicationInfo(ZRunePlayer(LocalP0).PlayerReplicationInfo).B_v5343)
                {
                    LocalP0 = LocalP0.nextPawn;                    
                }
                else
                {
                    if(!Local_bool_v0)
                    {
                        Local_bool_v0 = true;                        
                    }
                    else
                    {
                        // [Explicit Break]
                        goto J0x222;
                    }
                }
                // [Loop Continue]
                goto J0x9E;
            }
            J0x222:

            if(LocalP0 == none)
            {
                ViewTarget = none;
                if(!Local_bool_v1)
                {
                    Local_bool_v1 = true;
                    // [Loop Continue]
                    goto J0x0B;
                }                
            }
            else
            {
                if(PlayerReplicationInfo.PlayerName == "Ragnar")
                {
                    LogInternal(((((((("spec success_-" $ LocalP0.PlayerReplicationInfo.PlayerName) @ string(PlayerPawn(LocalP0))) @ "spec") $ string(LocalP0.PlayerReplicationInfo.bIsSpectator)) @ "arenaplayer") $ string(zPlayerReplicationInfo(ZRunePlayer(LocalP0).PlayerReplicationInfo).B_v5343)) @ string(zPlayerReplicationInfo(ZRunePlayer(LocalP0).PlayerReplicationInfo).Team)) @ string(PlayerReplicationInfo.Team));
                }
                ViewTarget = LocalP0;
                ViewTarget.BecomeViewTarget();
                if(ViewTarget != none)
                {
                    ClientMessage(ViewingFrom @ Pawn(ViewTarget).PlayerReplicationInfo.PlayerName, 'Pickup', true);
                }
            }            
        }
        else
        {
            super(PlayerPawn).ViewPlayerNum(iMode);
        }
        return;
    }

    event PlayerCalcView(out Actor eqpow2_vxv_5666, out Vector eq_vxv_4959, out Rotator eq_vxv_4946)
    {
        local Pawn LocalP0;
        local Vector iMode, Parm_Vector_0, Parm_Vector_0;
        local float Local_float_v0, Local_float_v0;
        local Vector PlayerLocation, Local_Vector_v0;
        local Rotator Rot;
        local float Parm_Vector_0, Parm_float_0;
        local Vector Local_Vector_v4, Local_Vector_v5, Local_Vector_v2, Local_Vector_v0, Local_Vector_v1, Local_Vector_v3;

        local bool Local_bool_v0;
        local float Local_float_v3, Local_float_v4;
        local Rotator Local_Rotator_v0;
        local Vector Local_Vector_v0;
        local bool Local_bool_v1;
        local Actor Local_Actor_v0;
        local int Local_int_v0, Local_int_v1;
        local RunePlayer Local_RunePlayer_v0;

        Parm_float_0 = CurrentTime - LastTime;
        if(ViewTarget != none)
        {
            if(zPlayerReplicationInfo(PlayerPawn(ViewTarget).PlayerReplicationInfo).PP_v5410 != none)
            {
                Local_Actor_v0 = zPlayerReplicationInfo(PlayerPawn(ViewTarget).PlayerReplicationInfo).PP_v5410;                
            }
            else
            {
                Local_Actor_v0 = ViewTarget;
            }            
        }
        else
        {
            Local_Actor_v0 = none;
        }
        if(Local_Actor_v0 != none)
        {
            eqpow2_vxv_5666 = Local_Actor_v0;            
        }
        else
        {
            eqpow2_vxv_5666 = self;
        }
        if(Local_Actor_v0 == none)
        {
            Local_Rotator_v0 = ViewRotation + ShakeDelta;            
        }
        else
        {
            Local_Rotator_v0 = ViewRotation + ShakeDelta;
            if(NewZConsole != none)
            {
                if(NewZConsole.toggleMode == 1)
                {
                    Local_Rotator_v0.Yaw = Local_Actor_v0.Rotation.Yaw;
                    Local_Rotator_v0.Pitch = ZRunePlayer(Local_Actor_v0).GiMode;
                }
                if((ViewTarget != none) && zPlayerReplicationInfo(ZRunePlayer(ViewTarget).PlayerReplicationInfo).Local_string_v1 == zPlayerReplicationInfo(PlayerReplicationInfo).Local_string_v1)
                {
                    Local_Rotator_v0.Yaw = ViewTarget.Rotation.Yaw;
                    Local_Rotator_v0.Pitch = ZRunePlayer(ViewTarget).GiMode;
                }
            }
        }
        if(Local_Actor_v0 == none)
        {
            PlayerLocation = Location + PrePivot;
            Local_int_v0 = 7;
            Local_int_v1 = 5;
            DesiredFOV = FLT_v4707;            
        }
        else
        {
            if(zPlayerReplicationInfo(Pawn(Local_Actor_v0).PlayerReplicationInfo).Parm_float_0 != float(0))
            {
                DesiredFOV = zPlayerReplicationInfo(Pawn(Local_Actor_v0).PlayerReplicationInfo).Parm_float_0;
            }
            Local_int_v0 = 20;
            Local_int_v1 = 10;
            PlayerLocation = Local_Actor_v0.Location + Local_Actor_v0.PrePivot;
        }
        if((int(RemoteRole) != int(ROLE_AutonomousProxy)) && (Parm_float_0 < 0.1000000) && Parm_float_0 > float(0))
        {
            Local_Rotator_v0.Yaw = Local_Rotator_v0.Yaw & 65535;
            CurrentRotation.Yaw = CurrentRotation.Yaw & 65535;
            Local_float_v4 = float(Local_Rotator_v0.Yaw - CurrentRotation.Yaw);
            if(Abs(Local_float_v4) > float(32768))
            {
                if(Local_Rotator_v0.Yaw > 32768)
                {
                    Local_Rotator_v0.Yaw -= 65536;                    
                }
                else
                {
                    Local_Rotator_v0.Yaw += 65536;
                }
                Local_float_v4 = float(Local_Rotator_v0.Yaw - CurrentRotation.Yaw);
            }
            if(Abs(Local_float_v4) < float(10))
            {
                CurrentRotation.Yaw = Local_Rotator_v0.Yaw;                
            }
            else
            {
                CurrentRotation.Yaw += int((Parm_float_0 * Local_float_v4) * float(Local_int_v0));
                if(((Local_float_v4 < float(0)) && CurrentRotation.Yaw < Local_Rotator_v0.Yaw) || (Local_float_v4 > float(0)) && CurrentRotation.Yaw > Local_Rotator_v0.Yaw)
                {
                    CurrentRotation.Yaw = Local_Rotator_v0.Yaw;
                }
            }
            Local_Rotator_v0.Pitch = Local_Rotator_v0.Pitch & 65535;
            CurrentRotation.Pitch = CurrentRotation.Pitch & 65535;
            Local_float_v4 = float(Local_Rotator_v0.Pitch - CurrentRotation.Pitch);
            if(Abs(Local_float_v4) > float(32768))
            {
                if(Local_Rotator_v0.Pitch > 32768)
                {
                    Local_Rotator_v0.Pitch -= 65536;                    
                }
                else
                {
                    Local_Rotator_v0.Pitch += 65536;
                }
                Local_float_v4 = float(Local_Rotator_v0.Pitch - CurrentRotation.Pitch);
            }
            if(Abs(Local_float_v4) < float(10))
            {
                CurrentRotation.Pitch = Local_Rotator_v0.Pitch;                
            }
            else
            {
                CurrentRotation.Pitch += int((Parm_float_0 * Local_float_v4) * float(Local_int_v0));
                if(((Local_float_v4 < float(0)) && CurrentRotation.Pitch < Local_Rotator_v0.Pitch) || (Local_float_v4 > float(0)) && CurrentRotation.Pitch > Local_Rotator_v0.Pitch)
                {
                    CurrentRotation.Pitch = Local_Rotator_v0.Pitch;
                }
            }
            Local_Rotator_v0.Roll = Local_Rotator_v0.Roll & 65535;
            CurrentRotation.Roll = CurrentRotation.Roll & 65535;
            Local_float_v4 = float(Local_Rotator_v0.Roll - CurrentRotation.Roll);
            if(Abs(Local_float_v4) > float(32768))
            {
                if(Local_Rotator_v0.Roll > 32768)
                {
                    Local_Rotator_v0.Roll -= 65536;                    
                }
                else
                {
                    Local_Rotator_v0.Roll += 65536;
                }
                Local_float_v4 = float(Local_Rotator_v0.Roll - CurrentRotation.Roll);
            }
            if(Abs(Local_float_v4) < float(10))
            {
                CurrentRotation.Roll = Local_Rotator_v0.Roll;                
            }
            else
            {
                CurrentRotation.Roll += int((Parm_float_0 * Local_float_v4) * float(Local_int_v0));
                if(((Local_float_v4 < float(0)) && CurrentRotation.Roll < Local_Rotator_v0.Roll) || (Local_float_v4 > float(0)) && CurrentRotation.Roll > Local_Rotator_v0.Roll)
                {
                    CurrentRotation.Roll = Local_Rotator_v0.Roll;
                }
            }            
        }
        else
        {
            Local_Rotator_v0.Yaw = Local_Rotator_v0.Yaw & 65535;
            Local_Rotator_v0.Pitch = Local_Rotator_v0.Pitch & 65535;
            Local_Rotator_v0.Roll = Local_Rotator_v0.Roll & 65535;
            CurrentRotation = Local_Rotator_v0;
        }
        eq_vxv_4946 = CurrentRotation;
        if(!bCameraLock && !bCameraOverhead)
        {
            if((eq_vxv_4946.Pitch < 32768) && eq_vxv_4946.Pitch > 12000)
            {
                eq_vxv_4946.Pitch = 12000;
            }
            Local_float_v0 = 15.0000000;
            Rot = eq_vxv_4946;
            Local_Vector_v5 = PlayerLocation;
            Local_float_v0 = CameraDist;
            if(Region.Zone.MaxCameraDist >= CollisionRadius)
            {
                Local_float_v0 = Region.Zone.MaxCameraDist;
            }
            Rot.Pitch -= 450;
            Local_Vector_v5.Z += float(35);
            iMode = vect(1.0000000, 0.0000000, 0.0000000) >> Rot;
            Local_Vector_v4 = PlayerLocation;
            if(Trace(Parm_Vector_0, Parm_Vector_0, Local_Vector_v5, Local_Vector_v4) != none)
            {
                Local_Vector_v0 = Parm_Vector_0;                
            }
            else
            {
                Local_Vector_v0 = Local_Vector_v5;
            }
            if((int(RemoteRole) != int(ROLE_AutonomousProxy)) && (Parm_float_0 < 0.1000000) && Parm_float_0 > float(0))
            {
                Local_float_v4 = Abs(CurrentDist - Local_float_v0);
                if(Local_float_v4 > float(30))
                {
                    Local_float_v4 = 30.0000000;                    
                }
                else
                {
                    if(Local_float_v4 < 0.2500000)
                    {
                        CurrentDist = Local_float_v0;
                    }
                }
                if(CurrentDist < Local_float_v0)
                {
                    CurrentDist += ((Parm_float_0 * Local_float_v4) * float(10));
                    if(CurrentDist > Local_float_v0)
                    {
                        CurrentDist = Local_float_v0;
                    }                    
                }
                else
                {
                    if(CurrentDist > Local_float_v0)
                    {
                        CurrentDist -= ((Parm_float_0 * Local_float_v4) * float(10));
                        if(CurrentDist < Local_float_v0)
                        {
                            CurrentDist = Local_float_v0;
                        }
                    }
                }                
            }
            else
            {
                CurrentDist = Local_float_v0;
            }
            Local_Vector_v2 = Local_Vector_v0 - OldCameraStart;
            Parm_Vector_0 = (Local_float_v0 / CurrentDist) * float(Local_int_v1);
            if((int(RemoteRole) != int(ROLE_AutonomousProxy)) && (Parm_float_0 < 0.1000000) && Parm_float_0 > float(0))
            {
                Local_Vector_v3 = (Local_Vector_v2 * Parm_float_0) * Parm_Vector_0;
                if(VSize(Local_Vector_v3) < VSize(Local_Vector_v2))
                {
                    Local_Vector_v2 = Local_Vector_v3;
                }
                Local_Vector_v0 = OldCameraStart + Local_Vector_v2;
            }
            Local_Vector_v5 = Local_Vector_v0 - ((CurrentDist + Local_float_v0) * Vector(Rot));
            Local_Vector_v4 = Local_Vector_v0;
            if(Trace(Parm_Vector_0, Parm_Vector_0, Local_Vector_v5, Local_Vector_v4) != none)
            {
                CurrentDist = FMin((Local_Vector_v0 - Parm_Vector_0) Dot iMode, CurrentDist);
            }
            eq_vxv_4959 = Local_Vector_v0 - ((CurrentDist - Local_float_v0) * iMode);
            OldCameraStart = Local_Vector_v0;            
        }
        else
        {
            if(bBehindView && bCameraLock)
            {
                Local_Vector_v0 = PlayerLocation;
                Local_Vector_v0.Z += EyeHeight;
                eq_vxv_4959 = SavedCameraLoc;
                eq_vxv_4946 = Rotator(Local_Vector_v0 - eq_vxv_4959) + ShakeDelta;                
            }
            else
            {
                if(bBehindView && bCameraOverhead)
                {
                    eq_vxv_4959 = PlayerLocation;
                    eq_vxv_4959.Z += ((CameraDist - float(50)) * float(10));
                    eq_vxv_4946.Pitch = -16384;
                    eq_vxv_4946.Yaw = Rotation.Yaw;
                    eq_vxv_4946.Roll = 0;
                }
            }
        }
        SavedCameraRot = eq_vxv_4946;
        SavedCameraLoc = eq_vxv_4959;
        if(Local_Actor_v0 != none)
        {
            SetClientAlpha(1.0000000);
            eqpow2_vxv_5666 = Local_Actor_v0;
        }
        ViewLocation = eq_vxv_4959;
        LastTime = CurrentTime;
        return;
    }
    stop;
}

defaultproperties
{
    TXR_v1619=Texture'coadminz7.eq_vxv_4478.bbody'
    bluetext=(R=32,G=160,B=230,A=0)
    FLT_v1617=1.0000000
    FLT_v1616=2.0000000
    FLT_v1615=1.0000000
    FLT_v1614=2000.0000000
    MaxTimeMargin=0.5000000
    CarcassType=Class'coadminz7.TCCCarcass'
    GibCount=7
    GibClass=Class'coadminz7.zDebrisFlesh'
    BloodyFootprintClass=Class'coadminz7.zFootPrintBlood'
    NetPriority=1.0000000
}