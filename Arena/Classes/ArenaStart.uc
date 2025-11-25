class ArenaStart extends PlayerStart;

var() bool bChampion;	
var() bool bChampionTeam;
var() bool bChallenger;

function PostBeginPlay()
{
	if(bChallenger)
	{
		bChampion = false;
		bChampionTeam = false;
	}
	else if(bChampion)
		bChampionTeam = true;

}

function Trigger(actor Other, pawn EventInstigator)
{
	local actor A;

	if( Event != '')
			foreach AllActors(class 'Actor', A, Event)
				A.Trigger(None, None);	
}

simulated function Debug(Canvas canvas, int mode)
{
	Super.Debug(canvas, mode);

	Canvas.DrawText("bChampion: " $bChampion);
	Canvas.CurY -= 8;
	Canvas.DrawText("bChampionTeam: " $bChampionTeam);
	Canvas.CurY -= 8;
}

defaultproperties
{
}
