class RuneMenuCreditsScrollClient extends RuneMenuScrollingDialogClient;

function Created()
{
	ClientClass = class'RuneCreditsWindow';
	FixedAreaClass = None;
	Super.Created();
}

defaultproperties
{
}
