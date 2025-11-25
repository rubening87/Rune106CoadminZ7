class RuneMenuSettingsScrollClient extends UWindowScrollingDialogClient;

function Created()
{
	ClientClass = class'RuneMenuSettingsClientWindow';
	FixedAreaClass = None;
	Super.Created();
}

defaultproperties
{
}
