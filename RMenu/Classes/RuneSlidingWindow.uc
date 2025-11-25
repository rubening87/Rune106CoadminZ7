//=============================================================================
// RuneSlidingWindow	-> For implementing Windows that 'slide' in and out of view
//=============================================================================
class RuneSlidingWindow extends RuneWindow;



//==ISSUES============
//
// *Need to junk all this, goto X,Y version and Ramp UP/DOWN
//
//====================



var		float	Vstart;
var		float	Vend;		//Should always be Zero!
var		float	Vdelta;

var		int		Dtotal;
var		int		Dcurrent;

var		float	Ttotal;
var		float	Tpassed;


var		bool	bMove;


var		int		Yoffset,Xoffset;


//=============================================================================
// Class Functions
//=============================================================================


function	SetupMove(int	aDistanceDesired,float aTimeDesired)
{
	Dtotal=aDistanceDesired;
	Ttotal=aTimeDesired;
	Tpassed=0;

	Vend=0;		//Always
	Vstart=((2*Dtotal)/Ttotal)+Vend;
	Vdelta=(Vend-Vstart)/Ttotal;
	
	bMove=true;
}

//=============================================================================
// Superclass Function Overrides
//=============================================================================


function	Tick(float	DeltaTime)
{

	if(bMove)
	{
		Tpassed+=DeltaTime;		//Assumption
		Dcurrent=((Vdelta*(Tpassed*Tpassed))/2)+(Vstart*Tpassed);			//Simple Integration
		//Dcurrent=(Vstart*Tpassed)-((Vdelta*(Tpassed*Tpassed))/2);
		if(TPassed>=Ttotal)
		{
			bMove=false;
			Dcurrent=Dtotal;
		}
	}
}




function	PreSize()
{
	Yoffset=WinHeight-DefaultHeight;
	Xoffset=WinWidth-DefaultWidth;
}

defaultproperties
{
}
