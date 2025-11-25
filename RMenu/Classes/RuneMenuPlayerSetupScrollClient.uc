class RuneMenuPlayerSetupScrollClient extends UWindowScrollingDialogClient;

function Created()
{
	ClientClass = class'RuneMenuPlayerSetupClient';
	FixedAreaClass = None;
	Super.Created();
}

defaultproperties
{
}
