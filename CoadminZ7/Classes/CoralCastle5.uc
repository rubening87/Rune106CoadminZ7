class CoralCastle5 extends Actor
    notplaceable;

var PlayerPawn PlayerPawn;
var float LastDodgeClickTimer;

replication
{
    reliable if(int(Role) == int(ROLE_Authority))
        PlayerPawn;
}

function PreBeginPlay()
{
	bHidden = true;
	PlayerPawn = PlayerPawn(Owner);
	return;
}

simulated function Tick(float DeltaTime)
{
    PlayerPawn.DodgeClickTimer = LastDodgeClickTimer - DeltaTime;
    LastDodgeClickTimer = PlayerPawn.DodgeClickTimer;
}

defaultproperties
{
    bHidden=true
    RemoteRole=2
}