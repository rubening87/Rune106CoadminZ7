class zCTTGameReplicationInfo extends CTTGameReplicationInfo
    config;

var int MaxPlayers;
var string moreMOTD;
var float GameSpeed;
var int TeamScore[4];
var int TeamActive[4];
var int TeamFlagAway[4];
var Vector TeamColor[4];

replication
{
    // Pos:0x000
    reliable if(int(Role) == int(ROLE_Authority))
        GameSpeed, MaxPlayers, 
        TeamActive, TeamColor, 
        TeamFlagAway, TeamScore, 
        moreMOTD;
}

event PreBeginPlay()
{
    TeamActive[0] = 0;
    TeamActive[1] = 0;
    TeamActive[2] = 0;
    TeamActive[3] = 0;
    TeamFlagAway[0] = 0;
    TeamFlagAway[1] = 0;
    TeamFlagAway[2] = 0;
    TeamFlagAway[3] = 0;
    return;
}

simulated function Tick(float Parm_float_0)
{
    
    if((Level.Game != none) && GameSpeed != Level.Game.GameSpeed)
    {
        GameSpeed = Level.Game.GameSpeed;
    }
    super(Actor).Tick(Parm_float_0);
    return;
}
