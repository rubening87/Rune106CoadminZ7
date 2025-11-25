class RuneMenuMutatorScrollClient extends RuneMenuScrollingDialogClient;

function Created()
{
	ClientClass = class'RuneMenuMutatorClientWindow';
	FixedAreaClass = None;
	Super.Created();
}

defaultproperties
{
}
