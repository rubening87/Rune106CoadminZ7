class RuneMenuPlayerScrollClient extends RuneMenuScrollingDialogClient;

function Created()
{
	ClientClass = class'RuneMenuPlayerClientWindow';
	FixedAreaClass = None;
	Super.Created();
}

defaultproperties
{
}
