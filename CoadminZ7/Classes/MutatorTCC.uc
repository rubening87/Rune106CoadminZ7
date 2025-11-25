class MutatorTCC extends Mutator;

var bool bInitialized;
var CoralCastle6 DodgeChecker6;
var int dc_i;

// Suggested name: InitializeMutator
event PostBeginPlay()
{
	// Call the parent class's PostBeginPlay to ensure proper initialization
	super(Actor).PostBeginPlay();
	// Spawn the TCCPawnSpawnNotify actor for pawn spawning notifications
	Spawn(Class'coadminz7.TCCPawnSpawnNotify');
	return;
}

// Suggested name: SetupMutator
function PreBeginPlay()
{
	local Mutator CurrentMutator, PreviousMutator, TempMutator;

	if (!bInitialized)
	{
		bInitialized = true;
		// Log all existing mutators in the chain
		CurrentMutator = Level.Game.BaseMutator;
		while (CurrentMutator != none)
		{
			LogInternal("Mutator exist " $ GetItemName(string(CurrentMutator.Class)));
			CurrentMutator = CurrentMutator.NextMutator;
		}
		// Remove duplicate mutators of the same class as this one
		CurrentMutator = Level.Game.BaseMutator;
		PreviousMutator = none;
		while (CurrentMutator != none)
		{
			if (GetItemName(string(CurrentMutator.Class)) == GetItemName(string(self.Class)))
			{
				// Remove the duplicate from the chain
				if (PreviousMutator != none)
				{
					PreviousMutator.NextMutator = CurrentMutator.NextMutator;
				}
				else
				{
					Level.Game.BaseMutator = CurrentMutator.NextMutator;
				}
				if (CurrentMutator != self)
				{
					RemoveDamageMutator(CurrentMutator);
					CurrentMutator.Destroy();
				}
			}
			else
			{
				PreviousMutator = CurrentMutator;
			}
			CurrentMutator = CurrentMutator.NextMutator;
		}
		// Insert this mutator into the chain after the base mutator
		self.NextMutator = Level.Game.BaseMutator.NextMutator;
		Level.Game.BaseMutator.NextMutator = self;
		// Register this mutator as a damage mutator
		Level.Game.RegisterDamageMutator(self);
		// Log the current damage mutators
		LogDamageMutators();
	}
	return;
}

// Suggested name: LogDamageMutators
function LogDamageMutators()
{
	local Mutator CurrentDamageMutator;

	// Iterate through the damage mutator chain and log each one
	CurrentDamageMutator = Level.Game.DamageMutator;
	while (CurrentDamageMutator != none)
	{
		LogInternal("Damagemutator loaded: " $ GetItemName(string(CurrentDamageMutator.Class)));
		CurrentDamageMutator = CurrentDamageMutator.NextDamageMutator;
	}
	return;
}

// Suggested name: RemoveDamageMutator
function RemoveDamageMutator(Mutator MutatorToRemove)
{
	local bool FoundPrevious;
	local Mutator CurrentMutator, PreviousMutator;

	// Start from the head of the damage mutator chain
	CurrentMutator = Level.Game.DamageMutator;
	while (CurrentMutator != none)
	{
		if (CurrentMutator == MutatorToRemove)
		{
			// Found the mutator to remove, break out of the loop
			break;
		}
		// Set flag indicating we have a previous mutator
		FoundPrevious = true;
		// Move to the next mutator, keeping track of the previous one
		PreviousMutator = CurrentMutator;
		CurrentMutator = CurrentMutator.NextDamageMutator;
	}

	// Remove the mutator from the chain
	if (FoundPrevious)
	{
		// If there was a previous mutator, link it to the next one
		PreviousMutator.NextDamageMutator = CurrentMutator.NextDamageMutator;
	}
	else
	{
		// If no previous, update the head of the chain
		Level.Game.DamageMutator = Level.Game.DamageMutator.NextDamageMutator;
	}
	return;
}

function AddMutator(Mutator M)
{
    if(M == self)
    {
        return;
    }
    super.AddMutator(M);
    return;
}

// Suggested name: HandleJointDamage
function MutatorJointDamaged(out int DamageAmount, Pawn InstigatorPawn, Pawn VictimPawn, out Vector HitLocation, out Vector Momentum, name DamageType, out int HitJoint)
{
	// Check if the victim is a ScriptPawn and set protection timer
	if (InstigatorPawn != none && InstigatorPawn.IsA('ScriptPawn'))
	{
		LogInternal("old protection timer: " $ string(ScriptPawn(InstigatorPawn).ProtectionTimer));
		ScriptPawn(InstigatorPawn).ProtectionTimer = 3.0;
	}
	super.MutatorJointDamaged(DamageAmount, InstigatorPawn, VictimPawn, HitLocation, Momentum, DamageType, HitJoint);
	return;
}

function ModifyPlayer(Pawn P0)
{
    local CoralCastle6 dc6;

    
    if(((PlayerPawn(P0) != none) && P0.bIsPlayer) && !P0.PlayerReplicationInfo.bIsSpectator)
    {
        dc6 = GetOrCreateDodgeChecker(P0);
    }
    super.ModifyPlayer(P0);
    return;
}

// Suggested name: GetOrCreateDodgeChecker
function CoralCastle6 GetOrCreateDodgeChecker(Pawn PlayerPawn)
{
	local CoralCastle6 DodgeChecker;

	// Try to find an existing DodgeChecker for this player
	DodgeChecker = FindDodgeCheckerForPawn(PlayerPawn);
	if (DodgeChecker == none)
	{
		// Spawn a new DodgeChecker if none exists
		DodgeChecker = Spawn(Class'coadminz7.CoralCastle6', PlayerPawn);
		DodgeChecker6[dc_i] = DodgeChecker;
		dc_i++;
		DodgeChecker.Init();
	}
	return DodgeChecker;
}
// Suggested function name: FindDodgeCheckerForPawn
function CoralCastle6 FindDodgeCheckerForPawn(Pawn PlayerPawn)
{
	local int Index;

	// Loop through the array of DodgeCheckers to find one matching the player's ID
	for (Index = 0; Index < dc_i; Index++)
	{
		if (DodgeChecker6[Index] != none && DodgeChecker6[Index].PlayerPawn.PlayerReplicationInfo.PlayerID == PlayerPawn.PlayerReplicationInfo.PlayerID)
		{
			return DodgeChecker6[Index];
		}
	}
	return none;
}
