//=============================================================================
// QueueZone.
//=============================================================================
class QueueZone extends ZoneInfo;

event ActorEntered( actor Other )
{
	local Pawn aPawn;

	aPawn = Pawn(Other);
	if(aPawn != None && aPawn.bIsPlayer)
	{	
		ArenaGameInfo(Level.Game).EnteredQueueZone(aPawn);
	}

	Super.ActorEntered(Other);
}

event ActorLeaving( actor Other )
{
	local Pawn aPawn;

	aPawn = Pawn(Other);
	if(aPawn != None && aPawn.bIsPlayer)
	{
		ArenaGameInfo(Level.Game).LeftQueueZone(aPawn);
	}

	Super.ActorLeaving(Other);
}

defaultproperties
{
     bNeutralZone=True
}
