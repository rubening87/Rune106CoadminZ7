class RuneMenuScrollingDialogClient extends UWindowScrollingDialogClient;

var float SlideRate;
var float Alpha;
var bool bOpening;
var bool bOpen;
var float test1, test2;
var int StartTop;


function HideWindow()
{
	Super.HideWindow();
	bOpen = false;
	bOpening = false;
	WinTop=StartTop;
}

function ShowWindow()
{
	Super.ShowWindow();
	SlideOpen();
}

function SlideOpen()
{
	bOpening = true;
	bOpen = false;
	WinTop=StartTop;
	Alpha=0;
	LookAndFeel.PlayMenuSound(Self, MS_BottomOpen);
}

function DoneOpening()
{
	bOpening = false;
	bOpen = true;
}

function Tick(float DeltaTime)
{
	local float PositionAlpha;

	if (bOpening)
	{
		Alpha += DeltaTime * SlideRate;
		if (Alpha >= 1.0)
			DoneOpening();
		Alpha = FClamp(Alpha, 0.0, 1.0);
		PositionAlpha = CubicBlend(Alpha, 0, 1, test1, test2);
		WinTop = StartTop + 360.0*PositionAlpha;
	}
}


//--------------------------------------------------------
// CubicBlend
//
// t:	Alpha value [0..1]
// N1:	Start value
// N2:	End value
// NC:	Control value 1
// ND:	Control value 2
//--------------------------------------------------------
function float CubicBlend(float t, float N1, float N2, float NC, float ND)
{
	local float term1, term2, term3, term4;

	term1 = (1-t)*(1-t)*(1-t)*N1;
	term2 = t*t*t*N2;
	term3 = 3*t*(1-t)*(1-t)*NC;
	term4 = 3*t*t*(1-t)*ND;

	return term1 + term2 + term3 + term4;
}

defaultproperties
{
     SlideRate=1.500000
     test1=1.000000
     test2=1.200000
     StartTop=-260
     bAlwaysBehind=True
}
