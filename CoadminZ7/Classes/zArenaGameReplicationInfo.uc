class zArenaGameReplicationInfo extends ArenaGameReplicationInfo
    config;

var bool B_v5332;
var int MaxPlayers;
var string STR_v5109;
var string moreMOTD;
var float GameSpeed;
var bool bTournament;
var string demoName;
var int INT_v5336;
var int INT_v5337;
var string MapName;
var int INT_v5338;
var int INT_v5339;
var bool B_v5340;

replication
{
    // Pos:0x000
    reliable if(int(Role) == int(ROLE_Authority))
        B_v5332, B_v5340, 
        GameSpeed, INT_v5336, 
        INT_v5337, MaxPlayers, 
        STR_v5109, bTournament, 
        demoName, moreMOTD;
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
    super(GameReplicationInfo).PostBeginPlay();
    return;
}

simulated function Timer()
{
    super(RuneGameReplicationInfo).Timer();
    if(MapName != "")
    {
        INT_v5338++;
        if((INT_v5338 > 0) && INT_v5338 < 50)
        {
            if(int(float(10) - (float(INT_v5338) * 0.2000000)) != INT_v5339)
            {
                INT_v5339 = int(float(10) - (float(INT_v5338) * 0.2000000));
                BroadcastMessage(string(int(float(10) - (float(INT_v5338) * 0.2000000))), false, 'Pickup');
            }
        }
        if(INT_v5338 > 50)
        {
            BroadcastMessage("MapVote succesful - changing map to " $ MapName, false, 'CAZ');
            Level.ServerTravel(MapName $ ".run?game=CoAdminZ7.ArenaGameInfo", false);
            MapName = "";
            INT_v5338 = 0;
            INT_v5339 = 0;
        }        
    }
    else
    {
        INT_v5338 = 0;
        INT_v5339 = 0;
    }
    return;
}
