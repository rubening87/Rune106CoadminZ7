class RuneMenuHotlinkControl extends UWindowButton;

var color UpColor, OverColor;


function Created()
{
	Super.Created();

	Font = F_Normal;
	TextColor = UpColor;
}

function MouseEnter()
{
	SetTextColor(OverColor);
	Super.MouseEnter();
}

function MouseLeave()
{
	SetTextColor(UpColor);
	Super.MouseLeave();
}

defaultproperties
{
     UpColor=(R=255,G=255,B=255)
     OverColor=(R=255,G=255)
}
