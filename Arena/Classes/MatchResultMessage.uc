//=============================================================================
//MatchResultMessage.
//=============================================================================
class MatchResultMessage extends LocalMessage;

var localized string MatchWinMessage;
var localized string MatchRetainMessage;
var localized string ChampionsStayMessage;
var localized string ChallengersOverthrowMessage;

static function string GetString(
	optional int Switch,
	optional PlayerReplicationInfo RelatedPRI_1,
	optional PlayerReplicationInfo RelatedPRI_2,
	optional Object OptionalObject
	)
{
	if(RelatedPRI_1 != None && RelatedPRI_2 != None)
	{
		if(Switch == 1)
			return RelatedPRI_1.PlayerName $ Default.MatchRetainMessage $ RelatedPRI_2.PlayerName;
		else
			return RelatedPRI_1.PlayerName $ Default.MatchWinMessage $ RelatedPRI_2.PlayerName;
			
	}
	else
		if(Switch == 3)
			return Default.ChampionsStayMessage;

		else if(Switch == 4)
			return Default.ChallengersOverthrowMessage;

	return "";
}

static function color GetColor(
	optional int Switch,
	optional PlayerReplicationInfo RelatedPRI_1,
	optional PlayerReplicationInfo RelatedPRI_2
	)
{
	return Default.DrawColor;
}

defaultproperties
{
     MatchWinMessage=" has overtaken "
     MatchRetainMessage=" has beaten down "
     ChampionsStayMessage="The Champions have reigned over the Challengers."
     ChallengersOverthrowMessage="The Challengers have overthrown the Champions."
     bIsConsoleMessage=True
     bFadeMessage=True
     bBeep=True
     LifeTime=10
     bCenter=True
}
