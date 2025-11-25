//=============================================================================
// RuneConsoleWindow	
//=============================================================================
class RuneConsoleWindow extends UWindowConsoleWindow;


//=============================================================================
// Superclass Function Overrides
//=============================================================================

/*
function Created() 
{
	Super.Created();

	UWindowConsoleClientWindow(ClientArea).TextArea.Font = F_Normal;
}

function Close(optional bool bByParent)
{
	Super.Close(bByParent);

	if(Root.bQuickKeyEnable)
		Root.Console.CloseUWindow();
}
*/

defaultproperties
{
     ClientClass=Class'RMenu.RuneConsoleClientWindow'
     WindowTitle="Rune Console"
     bAlwaysOnTop=True
}
