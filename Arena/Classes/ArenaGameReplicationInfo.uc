//=============================================================================
// ArenaGameReplicationInfo.
//=============================================================================
class ArenaGameReplicationInfo extends RuneGameReplicationInfo;

var int curTimer;
var bool bDrawTimer;
var bool bInMatch;
var byte TeamColor[2];
var byte matchSize;
var int CurMatch;

replication
{
	reliable if ( Role == ROLE_Authority )
		bDrawTimer, curTimer, bInMatch, TeamColor, matchSize, CurMatch;
}

defaultproperties
{
     TeamColor(1)=1
}
