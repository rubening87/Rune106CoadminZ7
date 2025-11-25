class RuneMenuSettingsClientWindow extends RuneMenuSettingsBase;

function LoadCurrentValues()
{
	local int S;

	// Style
	if ( Class<RuneMultiPlayer>(ServerParent.GameClass).Default.bMegaSpeed )
		StyleCombo.SetSelectedIndex(2);
	else if ( Class<RuneMultiPlayer>(ServerParent.GameClass).Default.bHardcoreMode )
		StyleCombo.SetSelectedIndex(1);
	else
		StyleCombo.SetSelectedIndex(0);

	// GameSpeed
	S = Class<RuneMultiPlayer>(ServerParent.GameClass).Default.GameSpeed * 100.0;
	SpeedSlider.SetValue(S);
	SpeedSlider.SetText(SpeedText$" ["$S$"%]:");

	// Autopickup
//	AutopickupCheck.bChecked = Class<RuneMultiPlayer>(ServerParent.GameClass).Default.bAutoPickup;
}

function StyleChanged()
{
	switch (StyleCombo.GetSelectedIndex())
	{
		case 0:
			Class<RuneMultiPlayer>(ServerParent.GameClass).Default.bMegaSpeed = false;
			Class<RuneMultiPlayer>(ServerParent.GameClass).Default.bHardCoreMode = false;
			break;
		case 1:
			Class<RuneMultiPlayer>(ServerParent.GameClass).Default.bMegaSpeed = false;
			Class<RuneMultiPlayer>(ServerParent.GameClass).Default.bHardCoreMode = true;
			break;
		case 2:
			Class<RuneMultiPlayer>(ServerParent.GameClass).Default.bMegaSpeed = true;
			Class<RuneMultiPlayer>(ServerParent.GameClass).Default.bHardCoreMode = true;
			break;
	}
}

function SpeedChanged()
{
	local int S;

	S = SpeedSlider.GetValue();
	SpeedSlider.SetText(SpeedText$" ["$S$"%]:");
	Class<RuneMultiPlayer>(ServerParent.GameClass).Default.GameSpeed = float(S) / 100.0;
}


/*function AutopickupChanged()
{
	Class<RuneMultiPlayer>(ServerParent.GameClass).Default.bAutoPickup = AutopickupCheck.bChecked;
}
*/

defaultproperties
{
}
