//=============================================================================
// BloodWaterSurface.
//=============================================================================
class BloodWaterSurface expands Effects;

var float ExpandSpeed;
var float GlowSpeed;

auto state Expanding
{
	function BeginState()
	{
		Super.BeginState();
		LoG("BloodWaterSurface BeginState");
	}

	function Tick(float DeltaTime)
	{
		DrawScale += DeltaTime * ExpandSpeed;
		ScaleGlow -= DeltaTime * GlowSpeed;

		log("ScaleGlow="@ScaleGlow);
		if (ScaleGlow < 0)
			Destroy();
	}

	function EndState()
	{
		Super.EndState();
		LoG("BloodWaterSurface EndState");
	}
	
begin:
}

defaultproperties
{
     ExpandSpeed=0.500000
     GlowSpeed=0.430000
     DrawType=DT_VerticalSprite
     Style=STY_Translucent
     Texture=Texture'RuneFX.WaterBlood'
     DrawScale=0.400000
     ScaleGlow=1.300000
     bShadowCast=False
}
