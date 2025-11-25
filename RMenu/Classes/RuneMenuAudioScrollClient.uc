class RuneMenuAudioScrollClient extends RuneMenuScrollingDialogClient;

function Created()
{
	ClientClass = class'RuneMenuAudioClientWindow';
	FixedAreaClass = None;
	Super.Created();
}

defaultproperties
{
}
