class RuneMenuMaplistScrollClient extends RuneMenuScrollingDialogClient;

function Created()
{
	ClientClass = class'RuneMenuMaplistClientWindow';
	FixedAreaClass = None;
	Super.Created();
}

defaultproperties
{
}
