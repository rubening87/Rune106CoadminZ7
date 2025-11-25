class RuneMenuRulesClientWindow extends RuneMenuRulesBase;


function LoadCurrentValues()
{
	FragEdit.SetValue(string(Class<RuneMultiPlayer>(ServerParent.GameClass).Default.FragLimit));

	TimeEdit.SetValue(string(Class<RuneMultiPlayer>(ServerParent.GameClass).Default.TimeLimit));

	if(MaxPlayersEdit != None)
		MaxPlayersEdit.SetValue(string(Class<RuneMultiPlayer>(ServerParent.GameClass).Default.MaxPlayers));
	
	if(MaxSpectatorsEdit != None)
		MaxSpectatorsEdit.SetValue(string(Class<RuneMultiPlayer>(ServerParent.GameClass).Default.MaxSpectators));

	WeaponsCheck.bChecked = Class<RuneMultiPlayer>(ServerParent.GameClass).Default.bCoopWeaponMode;
}


function FragChanged()
{
	Class<RuneMultiPlayer>(ServerParent.GameClass).Default.FragLimit = int(FragEdit.GetValue());
}

function TimeChanged()
{
	Class<RuneMultiPlayer>(ServerParent.GameClass).Default.TimeLimit = int(TimeEdit.GetValue());
}

function MaxPlayersChanged()
{
	if(int(MaxPlayersEdit.GetValue()) > 16)
		MaxPlayersEdit.SetValue("16");

	if(int(MaxPlayersEdit.GetValue()) < 1)
		MaxPlayersEdit.SetValue("1");

	Class<RuneMultiPlayer>(ServerParent.GameClass).Default.MaxPlayers = int(MaxPlayersEdit.GetValue());
}

function MaxSpectatorsChanged()
{
	if(int(MaxSpectatorsEdit.GetValue()) > 16)
		MaxSpectatorsEdit.SetValue("16");

	if(int(MaxSpectatorsEdit.GetValue()) < 0)
		MaxSpectatorsEdit.SetValue("0");

	Class<RuneMultiPlayer>(ServerParent.GameClass).Default.MaxSpectators = int(MaxSpectatorsEdit.GetValue());
}

function WeaponsChecked()
{
	Class<RuneMultiPlayer>(ServerParent.GameClass).Default.bCoopWeaponMode = WeaponsCheck.bChecked;
}

defaultproperties
{
}
