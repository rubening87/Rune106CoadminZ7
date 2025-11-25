class RuneMenuServerScrollClient extends RuneMenuScrollingDialogClient;

function Created()
{
	ClientClass = class'RuneMenuServerClientWindow';
	FixedAreaClass = None;
	Super.Created();
}

defaultproperties
{
}
