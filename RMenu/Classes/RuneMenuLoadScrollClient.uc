class RuneMenuLoadScrollClient extends RuneMenuScrollingDialogClient;

function Created()
{
	ClientClass = class'RuneMenuLoadClientWindow';
	FixedAreaClass = None;
	Super.Created();
}

defaultproperties
{
}
