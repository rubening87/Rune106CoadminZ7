class zHeadBallGameReplicationInfo extends HeadBallGameReplicationInfo
    config;

var bool bCountingDown;
var bool bGameStarted;
var int RemainingCountdown;
var byte BYTE_v4120;
var byte BYTE_v4121;
var bool B_v4122;
var int MaxPlayers;
var string moreMOTD;
var float FLT_v5341;
var float GameSpeed;

replication
{
    // Pos:0x000
    reliable if(int(Role) == int(ROLE_Authority))
        B_v4122, RemainingCountdown, 
        bCountingDown, bGameStarted, 
        eq_vxv_4120, eq_vxv_4121;

    // Pos:0x00B
    reliable if(int(Role) == int(ROLE_Authority))
        FLT_v5341, GameSpeed, 
        MaxPlayers, moreMOTD;
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
    super(RuneGameReplicationInfo).Timer();
    if(RuneMultiPlayer(Level.Game) != none)
    {
        fraglimit = RuneMultiPlayer(Level.Game).fraglimit;
        TimeLimit = RuneMultiPlayer(Level.Game).TimeLimit;
    }
    return;
}
