//=============================================================================
// RuneWindow	-> Basic Window class 
//=============================================================================
class RuneWindow extends UWindowDialogClientWindow;


var config int DefaultWidth;
var config int DefaultHeight;


//=============================================================================
// Class Functions
//=============================================================================

function Created()
{
	Super.Created();
}


function BeforePaint(Canvas C, float X,float Y)
{
	Super.BeforePaint(C,X,Y);
	//Default call
	PreSize();
}

function Paint(Canvas C,float X, float Y)
{
	//Prevent UWindowDialogClientWindow from Painting always!
}
function PreSize()		//Called to 'PreSize' window and controls
{
	//Implement in Child Class
}

defaultproperties
{
}
