class RuneMenuModScrollClient extends RuneMenuScrollingDialogClient;

function Created()
{
	ClientClass = class'RuneMenuModClientWindow';
	FixedAreaClass = None;
	Super.Created();
}

defaultproperties
{
}
