class RuneMenuSaveScrollClient extends RuneMenuScrollingDialogClient;

function Created()
{
	ClientClass = class'RuneMenuSaveClientWindow';
	FixedAreaClass = None;
	Super.Created();
}

defaultproperties
{
}
