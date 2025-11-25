//=============================================================================
// ArenaZone.
//=============================================================================
class ArenaZone extends ZoneInfo;

var() bool bBlockWeapons;
var() name ArenaMatchBeginEvent;
var() name ArenaMatchEndEvent;

event ActorEntered( actor Other )
{
	local vector VectLoc;

	if(!bBlockWeapons)
		return;

	if(Other.IsA('Weapon') && (Other.GetStateName() == 'Throw' || Other.GetStateName() == 'Settling'))
		Other.Velocity = -Other.Velocity;
}

function BeginArenaMatch()
{
	local actor A;

	//slog("BeginArenaMatch");
	if(ArenaMatchBeginEvent!='' )
	{
		foreach AllActors(class 'Actor', A, ArenaMatchBeginEvent)
			A.Trigger(Self, None);
	}
}

function EndArenaMatch()
{
	local actor A;

	//slog("EndArenaMatch");
	if(ArenaMatchEndEvent != '')
	{
		foreach AllActors(class 'Actor', A, ArenaMatchEndEvent)
			A.Trigger(Self, None);
	}
}

simulated function Debug(Canvas canvas, int mode)
{
	local actor A;

	Super.Debug(canvas, mode);

	if(ArenaMatchBeginEvent != '')
	{
		foreach AllActors(class'Actor', A, ArenaMatchBeginEvent)
			Canvas.DrawLine3D(Location, A.Location, 255, 0, 0);
	}

	if(ArenaMatchEndEvent != '')
	{
		foreach AllActors(class'Actor', A, ArenaMatchEndEvent)
			Canvas.DrawLine3D(Location, A.Location, 255, 0, 0);
	}
}

defaultproperties
{
     bBlockWeapons=True
}
