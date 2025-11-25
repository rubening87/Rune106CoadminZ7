//=============================================================================
// RuneMenuTopWindow
//=============================================================================
class RuneMenuTopWindow extends RuneWindow;

var float SlideRate;
var float XAlpha;
var bool bOpening;
var bool bOpen;

var float test1, test2;

//=============================================================================
// Class Functions
//=============================================================================

function Created()
{
	Super.Created();
}

function Paint(Canvas C, float X, float Y)
{
//	LookAndFeel.DrawClientArea(Self, C);			// For tiled background
//	DrawClippedTexture(C, 0, 0, Texture'TopBack');	// for exact size texture
	DrawStretchedTexture(C, 0, 0, WinWidth, WinHeight, Texture'TopBack');
}

function HideAllWindows()
{
}

function HideWindow()
{
	bAlwaysOnTop=false;
	Super.HideWindow();
	bOpen = false;
	bOpening = false;
	WinLeft=0;
}

function SlideOpen()
{
	bAlwaysOnTop=false;
	bOpening = true;
	bOpen = false;
	WinLeft=0;
	XAlpha=0;

	LookAndFeel.PlayMenuSound(Self, MS_TopSlide);
}

function DoneOpening()
{
	bAlwaysOnTop=true;
	bOpening = false;
	bOpen = true;
	LookAndFeel.PlayMenuSound(Self, MS_TopSlam);
}

function Tick(float DeltaTime)
{
	local float PositionAlpha;

	if (bOpening)
	{
		XAlpha += DeltaTime * SlideRate;
		if (XAlpha >= 1.0)
			DoneOpening();
		XAlpha = FClamp(XAlpha, 0.0, 1.0);
//		PositionAlpha = HermiteBlend(XAlpha, 0, 1, 0, 0);
		PositionAlpha = CubicBlend(XAlpha, 0, 1, test1, test2);
		WinLeft = 200.0*PositionAlpha;
//		WindowAlpha = XAlpha;
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

//--------------------------------------------------------
// HermiteBlend
//
// t:	Alpha value [0..1]
// N1:	Start value
// N2:	End value
// S1:	Start slope
// S2:	End slope
//--------------------------------------------------------
function float HermiteBlend(float t, float N1, float N2, float S1, float S2)
{
	local float term1, term2, term3, term4;

	term1 = (2*t*t*t - 3*t*t + 1)	* N1;
	term2 = (-2*t*t*t + 3*t*t)		* N2;
	term3 = (t*t*t - 2*t*t + t)		* S1;
	term4 = -(t*t*t - 2*t*t + t)	* S2;
//	term4 = (t*t*t - t*t)			* S2;	// wrong: try -(t*t*t - 2*t*t + t)*S2

	return term1 + term2 + term3 + term4;
}

function DebugString(string str)
{
	if (RuneRootWindow(Root)!=None)
		if (RuneRootWindow(Root).StatusBar!=None)
			RuneRootWindow(Root).StatusBar.SetHelp(Str);
}

defaultproperties
{
     SlideRate=2.000000
     test1=1.000000
     test2=1.500000
}
