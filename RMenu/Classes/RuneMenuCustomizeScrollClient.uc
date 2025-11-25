class RuneMenuCustomizeScrollClient extends RuneMenuScrollingDialogClient;

function Created()
{
	ClientClass = class'RuneMenuCustomizeClientWindow';
	FixedAreaClass = None;
	Super.Created();
}

defaultproperties
{
}
