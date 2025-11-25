class RuneMenuAboutScrollClient extends RuneMenuScrollingDialogClient;

function Created()
{
	ClientClass = class'RuneMenuAboutClientWindow';
	FixedAreaClass = None;
	Super.Created();
}

defaultproperties
{
}
