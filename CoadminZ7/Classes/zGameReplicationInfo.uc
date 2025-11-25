class zGameReplicationInfo extends RuneGameReplicationInfo
    config;

var int MaxPlayers;
var string moreMOTD;
var float FLT_v5341;
var float GameSpeed;
var TeamInfo UNK_v5342;

replication
{
    // Pos:0x000
    reliable if(int(Role) == int(ROLE_Authority))
        FLT_v5341, GameSpeed, 
        MaxPlayers, eqs_vxv_5342, 
        moreMOTD;
}

simulated function PostBeginPlay()
{
    if(int(Level.NetMode) == int(NM_Client))
    {
        ServerName = "";
        ShortName = "";
        AdminName = "";
        AdminEmail = "";
        MOTDLine1 = "";
        MOTDLine2 = "";
        MOTDLine3 = "";
        MOTDLine4 = "";
    }
    SecondCount = Level.TimeSeconds;
    SetTimer(0.2000000, true);
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

simulated function Timer()
{
    super.Timer();
    if(RuneMultiPlayer(Level.Game) != none)
    {
        fraglimit = RuneMultiPlayer(Level.Game).fraglimit;
        TimeLimit = RuneMultiPlayer(Level.Game).TimeLimit;
    }
    return;
}
