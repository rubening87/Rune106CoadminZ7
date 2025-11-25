class ArenaMenuRulesCW extends ArenaMenuRulesBase;


function LoadCurrentValues()
{
	FragEdit.SetValue(string(Class<ArenaGameInfo>(ServerParent.GameClass).Default.FragLimit));

	TimeEdit.SetValue(string(Class<ArenaGameInfo>(ServerParent.GameClass).Default.TimeLimit));

	MaxArenaEdit.SetValue(string(Class<ArenaGameInfo>(ServerParent.GameClass).Default.MaxTeamSupport));

	MatchWaitEdit.SetValue(string(Class<ArenaGameInfo>(ServerParent.GameClass).Default.TimeBetweenMatch));

	if(MaxPlayersEdit != None)
		MaxPlayersEdit.SetValue(string(Class<ArenaGameInfo>(ServerParent.GameClass).Default.MaxPlayers));
	
	if(MaxSpectatorsEdit != None)
		MaxSpectatorsEdit.SetValue(string(Class<ArenaGameInfo>(ServerParent.GameClass).Default.MaxSpectators));

	WeaponsCheck.bChecked = Class<ArenaGameInfo>(ServerParent.GameClass).Default.bCoopWeaponMode;
}


function FragChanged()
{
	Class<ArenaGameInfo>(ServerParent.GameClass).Default.FragLimit = int(FragEdit.GetValue());
}

function TimeChanged()
{
	Class<ArenaGameInfo>(ServerParent.GameClass).Default.TimeLimit = int(TimeEdit.GetValue());
}

function MaxArenaChanged()
{
	if(int(MaxArenaEdit.GetValue()) > 4)
		MaxArenaEdit.SetValue("4");

	if(int(MaxArenaEdit.GetValue()) < 1)
		MaxArenaEdit.SetValue("1");

	Class<ArenaGameInfo>(ServerParent.GameClass).Default.MaxTeamSupport = int(MaxArenaEdit.GetValue());
}

function MatchWaitChanged()
{
	if(int(MatchWaitEdit.GetValue()) > 30)
		MatchWaitEdit.SetValue("30");

	if(int(MatchWaitEdit.GetValue()) < 5)
		MatchWaitEdit.SetValue("5");

	Class<ArenaGameInfo>(ServerParent.GameClass).Default.TimeBetweenMatch = int(MatchWaitEdit.GetValue());
}

function MaxPlayersChanged()
{
	if(int(MaxPlayersEdit.GetValue()) > 16)
		MaxPlayersEdit.SetValue("16");

	if(int(MaxPlayersEdit.GetValue()) < 1)
		MaxPlayersEdit.SetValue("1");

	Class<ArenaGameInfo>(ServerParent.GameClass).Default.MaxPlayers = int(MaxPlayersEdit.GetValue());
}

function MaxSpectatorsChanged()
{
	if(int(MaxSpectatorsEdit.GetValue()) > 16)
		MaxSpectatorsEdit.SetValue("16");

	if(int(MaxSpectatorsEdit.GetValue()) < 0)
		MaxSpectatorsEdit.SetValue("0");

	Class<ArenaGameInfo>(ServerParent.GameClass).Default.MaxSpectators = int(MaxSpectatorsEdit.GetValue());
}

function WeaponsChecked()
{
	Class<ArenaGameInfo>(ServerParent.GameClass).Default.bCoopWeaponMode = WeaponsCheck.bChecked;
}

defaultproperties
{
}
