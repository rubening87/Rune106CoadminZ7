class RuneMenuGameOptionsScrollClient extends RuneMenuScrollingDialogClient;

function Created()
{
	ClientClass = class'RuneMenuGameOptionsClientWindow';
	FixedAreaClass = None;
	Super.Created();
}

defaultproperties
{
}
