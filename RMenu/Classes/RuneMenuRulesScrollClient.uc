class RuneMenuRulesScrollClient extends UWindowScrollingDialogClient;

function Created()
{
	ClientClass = class'RuneMenuRulesClientWindow';
	FixedAreaClass = None;
	Super.Created();
}

defaultproperties
{
}
