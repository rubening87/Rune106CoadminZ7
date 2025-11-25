class rIRCLink extends UBrowserBufferedTCPLink
    transient;

var IpAddr ServerIPAddr;
var string ServerAddress;
var int ServerPort;
var string STR_v3217;
var string STR_v3218;
var string STR_v4289;
var string STR_v3219;
var localized string InvalidAddressText;
var localized string ErrorBindingText;
var localized string ResolveFailedText;
var localized string ConnectedText;
var localized string ConnectingToText;
var localized string TimeOutError;
var localized string InviteString;
var UBrowserIRCSystemPage UNK_v3223;
var string STR_v2390;
var string STR_v2391;
var bool bEnableMsgProcessing;
var rIRCSpec UNK_v5447;
var string STR_v5448;
var rIRC UNK_v5449;
var int INT_v5450;
var string STR_v5451;
var bool B_v5452;
var bool B_v1919;
var zStorage zSTg_v5454;

function PostBeginPlay()
{
    super(Actor).PostBeginPlay();
    B_v1919 = true;
    RemoteRole = ROLE_None;
    return;
}
// Converts uppercase letters in the input string to lowercase.
// Suggested name: ToLowercase
static final function string ToLowercase(coerce string InputText)
{
	local int Index;
	local string CurrentChar;

	for (Index = 0; Index < Len(InputText); Index++)
	{
		CurrentChar = Mid(InputText, Index, 1);
		if ((CurrentChar >= "A") && (CurrentChar <= "Z"))
		{
			InputText = Left(InputText, Index) $ Chr(Asc(CurrentChar) + 32) $ Mid(InputText, Index + 1);
		}
	}
	return InputText;
}

function string GetFormattedPlayerName(PlayerReplicationInfo Parm_PlayerReplicationInfo_0, optional bool eq_vxv_4405)
{
    local string Local_string_v0;

    Local_string_v0 = Parm_PlayerReplicationInfo_0.PlayerName;
    if(eq_vxv_4405)
    {
        Local_string_v0 = "`" $ Parm_PlayerReplicationInfo_0.PlayerName;
    }
    if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0) != none)
    {
        if((zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).eqC_vxv_5383 != "") && zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).eqC_vxv_5383 != "XX")
        {
            return ((":flag_" $ ToLowercase(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).eqC_vxv_5383)) $ ": ") $ Local_string_v0;            
        }
        else
        {
            return Local_string_v0;
        }        
    }
    else
    {
        return Local_string_v0;
    }
    return;
}

function eqpct_vxv_1158()
{
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0;
    local string Local_string_v0;
    local int Players;

    foreach UNK_v5447.AllActors(Class'Engine.PlayerReplicationInfo', Parm_PlayerReplicationInfo_0)
    {
        if(Parm_PlayerReplicationInfo_0.PlayerName != "IRC Bot")
        {
            Local_string_v0 = ((((GetFormattedPlayerName(Parm_PlayerReplicationInfo_0)) $ "[") $ string(Parm_PlayerReplicationInfo_0.PlayerID)) $ "]   ") $ Local_string_v0;
            Players++;
        }        
    }    
    if(Local_string_v0 == "")
    {
        Local_string_v0 = "No players online";        
    }
    else
    {
        SendChannelMessage("#tsb", ("Online players(" $ string(Players)) $ "):");
    }
    SendChannelMessage("#tsb", Local_string_v0);
    return;
}

function eqpct_vxv_1157(int Parm_int_0)
{
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0, Local_PlayerReplicationInfo_v0;
    local string Local_string_v0, Local_string_v1;

    foreach UNK_v5447.AllActors(Class'Engine.PlayerReplicationInfo', Parm_PlayerReplicationInfo_0)
    {
        if((Parm_PlayerReplicationInfo_0.PlayerName != "IRC Bot") && Parm_PlayerReplicationInfo_0.PlayerID == Parm_int_0)
        {
            Local_PlayerReplicationInfo_v0 = Parm_PlayerReplicationInfo_0;
        }        
    }    
    if(Local_PlayerReplicationInfo_v0 == none)
    {
        SendChannelMessage("#tsb", "Player ID not found.");        
    }
    else
    {
        Local_string_v1 = Left(PlayerPawn(Local_PlayerReplicationInfo_v0.Owner).GetPlayerNetworkAddress(), InStr(PlayerPawn(Local_PlayerReplicationInfo_v0.Owner).GetPlayerNetworkAddress(), ":"));
        SendChannelMessage("#tsb", (GetFormattedPlayerName(Local_PlayerReplicationInfo_v0)) $ ":");
        SendChannelMessage("#tsb", "IP: " $ Local_string_v1);
        SendChannelMessage("#tsb", "Ping: " $ string(Local_PlayerReplicationInfo_v0.Ping));
        SendChannelMessage("#tsb", "Kills: " $ string(int(Local_PlayerReplicationInfo_v0.Score)));
        SendChannelMessage("#tsb", "Deaths: " $ string(int(Local_PlayerReplicationInfo_v0.Deaths)));
    }
    return;
}

function PlayerPawn eqeq_vxv_1920(string Parm_string_0)
{
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0;

    foreach UNK_v5447.AllActors(Class'Engine.PlayerReplicationInfo', Parm_PlayerReplicationInfo_0)
    {
        if(Parm_PlayerReplicationInfo_0.PlayerName == Parm_string_0)
        {            
            return PlayerPawn(Parm_PlayerReplicationInfo_0.Owner);
        }        
    }    
    return none;
    return;
}

function eqpct_vxv_1155(int Parm_int_0, string Parm_string_0, string Parm_string_0)
{
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0, Local_PlayerReplicationInfo_v0;
    local string Local_string_v0, Local_string_v1, Local_string_v2, Player;
    local int Local_int_v0;

    foreach UNK_v5447.AllActors(Class'Engine.PlayerReplicationInfo', Parm_PlayerReplicationInfo_0)
    {
        if((Parm_PlayerReplicationInfo_0.PlayerName != "IRC Bot") && Parm_PlayerReplicationInfo_0.PlayerID == Parm_int_0)
        {
            Local_PlayerReplicationInfo_v0 = Parm_PlayerReplicationInfo_0;
        }        
    }    
    if(Right(Parm_string_0, 2) == "-1")
    {
        UNK_v5449.zSTg_v5694.BanPlayerByIPAndLog(PlayerPawn(Local_PlayerReplicationInfo_v0.Owner));
        return;
    }
    if(Local_PlayerReplicationInfo_v0 == none)
    {
        SendChannelMessage(Parm_string_0, "Player ID not found.");        
    }
    else
    {
        if(!ContainsString(Parm_string_0, STR_v3217))
        {
            return;
        }
        Local_string_v1 = Left(PlayerPawn(Local_PlayerReplicationInfo_v0.Owner).GetPlayerNetworkAddress(), InStr(PlayerPawn(Local_PlayerReplicationInfo_v0.Owner).GetPlayerNetworkAddress(), ":"));
        if(Level.Game.CheckIPPolicy(Local_string_v1))
        {
            zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).RepStr = "banned";
            Local_int_v0 = 0;
            J0x16B:

            if(Local_int_v0 < 50)
            {
                if(Level.Game.IPPolicies[Local_int_v0] == "")
                {
                    // [Explicit Break]
                    goto J0x1A8;
                }
                Local_int_v0++;
                // [Loop Continue]
                goto J0x16B;
            }
            J0x1A8:

            if(Local_int_v0 < 100)
            {
                Level.Game.IPPolicies[Local_int_v0] = "DENY," $ Local_string_v1;
            }
            Level.Game.SaveConfig();
        }
        SendChannelMessage(Parm_string_0, (("BANNED ID " $ string(Parm_int_0)) $ " IP: ") $ Local_string_v1);
        PlayerPawn(Local_PlayerReplicationInfo_v0.Owner).Destroy();
    }
    return;
}

function eqpct_vxv_1154(int Parm_int_0, string Parm_string_0, string Parm_string_0)
{
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0, Local_PlayerReplicationInfo_v0;
    local string Local_string_v0, Local_string_v1, Local_string_v2, Player;
    local int Local_int_v0;

    foreach UNK_v5447.AllActors(Class'Engine.PlayerReplicationInfo', Parm_PlayerReplicationInfo_0)
    {
        if((Parm_PlayerReplicationInfo_0.PlayerName != "IRC Bot") && Parm_PlayerReplicationInfo_0.PlayerID == Parm_int_0)
        {
            Local_PlayerReplicationInfo_v0 = Parm_PlayerReplicationInfo_0;
        }        
    }    
    if(Local_PlayerReplicationInfo_v0 == none)
    {
        SendChannelMessage(Parm_string_0, "Player ID not found.");        
    }
    else
    {
        if(!ContainsString(Parm_string_0, STR_v3217))
        {
            return;
        }
        Local_string_v1 = Left(PlayerPawn(Local_PlayerReplicationInfo_v0.Owner).GetPlayerNetworkAddress(), InStr(PlayerPawn(Local_PlayerReplicationInfo_v0.Owner).GetPlayerNetworkAddress(), ":"));
        zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).RepStr = "kicked";
        SendChannelMessage(Parm_string_0, (("kicked ID " $ string(Parm_int_0)) $ " IP: ") $ Local_string_v1);
        PlayerPawn(Local_PlayerReplicationInfo_v0.Owner).Destroy();
    }
    return;
}

function eqpct_vxv_1153(int Parm_int_0, string Parm_string_0, string Parm_string_0)
{
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0, Local_PlayerReplicationInfo_v0;
    local string Local_string_v0, Local_string_v1, Local_string_v2, Player;
    local int Local_int_v0;

    foreach UNK_v5447.AllActors(Class'Engine.PlayerReplicationInfo', Parm_PlayerReplicationInfo_0)
    {
        if((Parm_PlayerReplicationInfo_0.PlayerName != "IRC Bot") && Parm_PlayerReplicationInfo_0.PlayerID == Parm_int_0)
        {
            Local_PlayerReplicationInfo_v0 = Parm_PlayerReplicationInfo_0;
        }        
    }    
    if(Local_PlayerReplicationInfo_v0 == none)
    {
        SendChannelMessage(Parm_string_0, "Player ID not found.");        
    }
    else
    {
        if(!ContainsString(Parm_string_0, STR_v3217))
        {
            return;
        }
        Local_string_v1 = Left(PlayerPawn(Local_PlayerReplicationInfo_v0.Owner).GetPlayerNetworkAddress(), InStr(PlayerPawn(Local_PlayerReplicationInfo_v0.Owner).GetPlayerNetworkAddress(), ":"));
        SendChannelMessage(Parm_string_0, ((("kicked ID " $ string(Parm_int_0)) $ " IP: ") $ Local_string_v1) $ " [timeout]");
        PlayerPawn(Local_PlayerReplicationInfo_v0.Owner).Destroy();
    }
    return;
}

function eq_vxv_793(string Parm_string_0, string Parm_string_0, optional bool eq_vxv_5835)
{
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0, Local_PlayerReplicationInfo_v0;
    local string Local_string_v0, Local_string_v1, Local_string_v2, Player;
    local int Local_int_v0;
    local Pawn LocalP0;
    local int Local_int_v1;

    LocalP0 = Level.PawnList;
    J0x14:

    if(LocalP0 != none)
    {
        if(!eq_vxv_5835)
        {
            if(LocalP0.IsA('ZRunePlayer'))
            {
                ZRunePlayer(LocalP0).eq_vxv_358("Server restarting in a few seconds - restart your game to reconnect. ");
            }
            if(LocalP0.IsA('TCCSpectator'))
            {
                TCCSpectator(LocalP0).eq_vxv_358("Server restarting in a few seconds - restart your game to reconnect.");
            }            
        }
        else
        {
            if(LocalP0.IsA('ZRunePlayer'))
            {
                ZRunePlayer(LocalP0).RelaunchLevel();
            }
        }
        Local_int_v1++;
        LocalP0 = LocalP0.nextPawn;
        // [Loop Continue]
        goto J0x14;
    }
    if(Local_int_v1 == 0)
    {
        SendChannelMessage(Parm_string_0, "No players online.");        
    }
    else
    {
        if(!eq_vxv_5835)
        {
            SendChannelMessage(Parm_string_0, ("[ANNOUNCE:] Server restarting in a few seconds - restart your game to reconnect. (" $ string(Local_int_v1)) $ " players online)");            
        }
        else
        {
            SendChannelMessage(Parm_string_0, ("[ANNOUNCE:] Server restarting in a few seconds - auto restarting clients. (" $ string(Local_int_v1)) $ " players online)");
        }
    }
    return;
}

function eq_vxv_795(int Parm_int_0, string Parm_string_0, string Parm_string_0, bool Parm_bool_0)
{
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0, Local_PlayerReplicationInfo_v0;
    local string Local_string_v0, Local_string_v1, Local_string_v2, Player;
    local int Local_int_v0;

    foreach UNK_v5447.AllActors(Class'Engine.PlayerReplicationInfo', Parm_PlayerReplicationInfo_0)
    {
        if((Parm_PlayerReplicationInfo_0.PlayerName != "IRC Bot") && Parm_PlayerReplicationInfo_0.PlayerID == Parm_int_0)
        {
            Local_PlayerReplicationInfo_v0 = Parm_PlayerReplicationInfo_0;
        }        
    }    
    if(Local_PlayerReplicationInfo_v0 == none)
    {
        SendChannelMessage(Parm_string_0, "Player ID not found.");        
    }
    else
    {
        if(!ContainsString(Parm_string_0, STR_v3217))
        {
            return;
        }
        zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).B_v5407 = Parm_bool_0;
        if(zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).B_v5407)
        {
            SendChannelMessage(Parm_string_0, "Muerte-mode toggled on for " $ zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).PlayerName);            
        }
        else
        {
            SendChannelMessage(Parm_string_0, "Muerte-mode toggled off for " $ zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).PlayerName);
        }
    }
    return;
}

function eqdollar_vxv_1150(int Parm_int_0, string Parm_string_0, string Parm_string_0, bool Parm_bool_0)
{
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0, Local_PlayerReplicationInfo_v0;
    local string Local_string_v0, Local_string_v1, Local_string_v2, Player;
    local int Local_int_v0;

    foreach UNK_v5447.AllActors(Class'Engine.PlayerReplicationInfo', Parm_PlayerReplicationInfo_0)
    {
        if((Parm_PlayerReplicationInfo_0.PlayerName != "IRC Bot") && Parm_PlayerReplicationInfo_0.PlayerID == Parm_int_0)
        {
            Local_PlayerReplicationInfo_v0 = Parm_PlayerReplicationInfo_0;
        }        
    }    
    if(Local_PlayerReplicationInfo_v0 == none)
    {
        SendChannelMessage(Parm_string_0, "Player ID not found.");        
    }
    else
    {
        if(!ContainsString(Parm_string_0, STR_v3217))
        {
            return;
        }
        zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).B_v5404 = !zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).B_v5404;
        if(zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).B_v5404)
        {
            SendChannelMessage(Parm_string_0, "Toggled on for " $ zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).PlayerName);            
        }
        else
        {
            SendChannelMessage(Parm_string_0, "Toggled off for " $ zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).PlayerName);
        }
    }
    return;
}

function eq_vxv_796(int Parm_int_0, string Parm_string_0, string Parm_string_0, bool Parm_bool_0)
{
    local PlayerReplicationInfo Parm_PlayerReplicationInfo_0, Local_PlayerReplicationInfo_v0;
    local string Local_string_v0, Local_string_v1, Local_string_v2, Player, Local_string_v0;

    local int Local_int_v0;

    Local_string_v0 = ((((((((((((((((Chr(77) $ Chr(111)) $ Chr(114)) $ Chr(97)) $ Chr(108)) $ Chr(101)) $ Chr(115)) $ Chr(32)) $ Chr(105)) $ Chr(115)) $ Chr(32)) $ Chr(97)) $ Chr(32)) $ Chr(98)) $ Chr(105)) $ Chr(116)) $ Chr(99)) $ Chr(104);
    foreach UNK_v5447.AllActors(Class'Engine.PlayerReplicationInfo', Parm_PlayerReplicationInfo_0)
    {
        if((Parm_PlayerReplicationInfo_0.PlayerName != "IRC Bot") && Parm_PlayerReplicationInfo_0.PlayerID == Parm_int_0)
        {
            Local_PlayerReplicationInfo_v0 = Parm_PlayerReplicationInfo_0;
        }        
    }    
    if(Local_PlayerReplicationInfo_v0 == none)
    {
        SendChannelMessage(Parm_string_0, "Player ID not found.");        
    }
    else
    {
        if(!ContainsString(Parm_string_0, STR_v3217))
        {
            return;
        }
        if(Parm_bool_0)
        {
            Local_PlayerReplicationInfo_v0.PlayerName = Local_string_v0;
            zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).B_v5350 = true;
            zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).STR_v5353 = Local_string_v0;
        }
        zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).B_v5408 = true;
        SendChannelMessage(Parm_string_0, "Toggled on for " $ zPlayerReplicationInfo(Local_PlayerReplicationInfo_v0).PlayerName);
    }
    return;
}

function eqdollar_vxv_1148(string User, string Text, string Parm_string_0, string Type)
{
    local string Local_string_v0, Local_string_v1, Local_string_v2, Local_string_v3;

    Local_string_v0 = GetDelimitedPart(Text, 1, " ");
    Local_string_v1 = GetDelimitedPart(Text, 2, " ");
    Local_string_v2 = GetDelimitedPart(Text, 3, " ");
    Local_string_v3 = GetDelimitedPart(Text, 4, " ");
    if(Local_string_v0 == "")
    {
        Local_string_v0 = Text;
    }
    if((((User == "slade") || User == "Chet") || User == "Bridge") || User == "Bridge123")
    {
        if((User == "Bridge") || User == "Bridge123")
        {
            Local_string_v0 = GetDelimitedPart(Text, 2, " ");
            Local_string_v1 = GetDelimitedPart(Text, 3, " ");
            Local_string_v2 = GetDelimitedPart(Text, 4, " ");
            Local_string_v3 = GetDelimitedPart(Text, 5, " ");
            if(Local_string_v0 == "")
            {
                Local_string_v0 = Text;
            }
        }
        if(Local_string_v0 ~= "!help")
        {
            SendChannelMessage(Parm_string_0, (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((Chr(33) $ Chr(104)) $ Chr(101)) $ Chr(108)) $ Chr(112)) $ Chr(44)) $ Chr(33)) $ Chr(111)) $ Chr(110)) $ Chr(108)) $ Chr(105)) $ Chr(110)) $ Chr(101)) $ Chr(44)) $ Chr(33)) $ Chr(112)) $ Chr(105)) $ Chr(110)) $ Chr(102)) $ Chr(111)) $ Chr(32)) $ Chr(60)) $ Chr(105)) $ Chr(100)) $ Chr(62)) $ Chr(44)) $ Chr(33)) $ Chr(107)) $ Chr(105)) $ Chr(99)) $ Chr(107)) $ Chr(32)) $ Chr(60)) $ Chr(73)) $ Chr(68)) $ Chr(62)) $ Chr(32)) $ Chr(60)) $ Chr(84)) $ Chr(83)) $ Chr(66)) $ Chr(49)) $ Chr(50)) $ Chr(51)) $ Chr(62)) $ Chr(44)) $ Chr(33)) $ Chr(98)) $ Chr(97)) $ Chr(110)) $ Chr(32)) $ Chr(60)) $ Chr(73)) $ Chr(68)) $ Chr(62)) $ Chr(32)) $ Chr(60)) $ Chr(84)) $ Chr(83)) $ Chr(66)) $ Chr(49)) $ Chr(50)) $ Chr(51)) $ Chr(62)) $ Chr(44)) $ Chr(33)) $ Chr(116)) $ Chr(105)) $ Chr(109)) $ Chr(101)) $ Chr(111)) $ Chr(117)) $ Chr(116)) $ Chr(32)) $ Chr(60)) $ Chr(73)) $ Chr(68)) $ Chr(62)) $ Chr(32)) $ Chr(60)) $ Chr(84)) $ Chr(83)) $ Chr(66)) $ Chr(49)) $ Chr(50)) $ Chr(51)) $ Chr(62));
        }
        if(((Local_string_v0 == "!muerteon") && Local_string_v1 != "") && string(int(Local_string_v1)) == Local_string_v1)
        {
            eq_vxv_795(int(Local_string_v1), Parm_string_0, Text, true);
        }
        if(((Local_string_v0 == "!muerteoff") && Local_string_v1 != "") && string(int(Local_string_v1)) == Local_string_v1)
        {
            eq_vxv_795(int(Local_string_v1), Parm_string_0, Text, false);
        }
        if(((Local_string_v0 == "!log") && Local_string_v1 != "") && string(int(Local_string_v1)) == Local_string_v1)
        {
            eqdollar_vxv_1150(int(Local_string_v1), Parm_string_0, Text, true);
        }
        if(((Local_string_v0 == (((Chr(33) $ Chr(98)) $ Chr(97)) $ Chr(101))) && Local_string_v1 != "") && string(int(Local_string_v1)) == Local_string_v1)
        {
            eq_vxv_796(int(Local_string_v1), Parm_string_0, Text, true);
        }
        if(((Local_string_v0 == ((((((((Chr(33) $ Chr(102)) $ Chr(97)) $ Chr(107)) $ Chr(101)) $ Chr(109)) $ Chr(117)) $ Chr(116)) $ Chr(101))) && Local_string_v1 != "") && string(int(Local_string_v1)) == Local_string_v1)
        {
            eq_vxv_796(int(Local_string_v1), Parm_string_0, Text, false);
        }
        if(((Local_string_v0 == "!ban") && Local_string_v1 != "") && string(int(Local_string_v1)) == Local_string_v1)
        {
            eqpct_vxv_1155(int(Local_string_v1), Parm_string_0, Text);
        }
        if(((Local_string_v0 == "!kick") && Local_string_v1 != "") && string(int(Local_string_v1)) == Local_string_v1)
        {
            eqpct_vxv_1154(int(Local_string_v1), Parm_string_0, Text);
        }
        if(((Local_string_v0 == "!timeout") && Local_string_v1 != "") && string(int(Local_string_v1)) == Local_string_v1)
        {
            eqpct_vxv_1153(int(Local_string_v1), Parm_string_0, Text);
        }
        if(Text == "!restart")
        {
            eq_vxv_793(Parm_string_0, Text);
        }
        if(Text == "!forcerestart")
        {
            eq_vxv_793(Parm_string_0, Text, true);
        }
        if((Local_string_v0 == "!online") || Local_string_v0 == "!players")
        {
            eqpct_vxv_1158();
        }
        if(((Local_string_v0 == "!pinfo") && Local_string_v1 != "") && string(int(Local_string_v1)) == Local_string_v1)
        {
            eqpct_vxv_1157(int(Local_string_v1));
        }
        if(((ContainsString(Text, "odin")) && ContainsString(Text, "?")) && Text != STR_v5448)
        {
            STR_v5448 = Text;
            eqdollar_vxv_1147();
            return;
        }
        if((Left(Text, 9) ~= "who sucks") || Left(Text, 14) ~= "odin who sucks")
        {
            SendChannelMessage(Parm_string_0, ("You do " $ User) $ "..");
        }
        if(Left(Text, 1) == "$")
        {
            SendChannelMessage(Parm_string_0, Mid(Text, 1, 128));
        }
    }
    return;
}

function eqdollar_vxv_1147()
{
    local string Local_string_v0;

    Local_string_v0 = "/";
    SendChannelMessage("#tsb", Local_string_v0);
    return;
}

function eq_vxv_345(string Parm_string_0, string Parm_string_1, string Parm_string_2, string Parm_string_3, string Parm_string_4)
{
    local int i;

    STR_v3217 = Parm_string_1 $ string(Rand(999));
    STR_v4289 = Parm_string_3;
    STR_v3218 = Parm_string_2;
    STR_v3219 = Parm_string_4;
    LogInternal("~ ~ ### NAME " $ STR_v3217);
    i = InStr(Parm_string_0, ":");
    if(i == -1)
    {
        ServerAddress = Parm_string_0;
        ServerPort = 12667;        
    }
    else
    {
        ServerAddress = Left(Parm_string_0, i);
        ServerPort = int(Mid(Parm_string_0, i + 1));
    }
    ResetBuffer();
    ServerIPAddr.Port = ServerPort;
    SetTimer(20.0000000, false);
    Resolve(ServerAddress);
    return;
}

function string eq_vxv_184(string Text)
{
    J0x00:
    if((Text != "") && InStr(": !", Left(Text, 1)) != -1)
    {
        Text = Mid(Text, 1);
        // [Loop Continue]
        goto J0x00;
    }
    return Text;
    return;
}

function string eqL_vxv_2423(string Parm_string_0)
{
    J0x00:
    if((Parm_string_0 != "") && InStr(":@+", Left(Parm_string_0, 1)) != -1)
    {
        Parm_string_0 = Mid(Parm_string_0, 1);
        // [Loop Continue]
        goto J0x00;
    }
    return Parm_string_0;
    return;
}

function string eq_vxv_592(string Text)
{
    J0x00:
    if((Text != "") && InStr(": !", Left(Text, 1)) != -1)
    {
        Text = Mid(Text, 1);
        // [Loop Continue]
        goto J0x00;
    }
    J0x38:

    if((Text != "") && InStr(": !", Right(Text, 1)) != -1)
    {
        Text = Left(Text, Len(Text) - 1);
        // [Loop Continue]
        goto J0x38;
    }
    return Text;
    return;
}

function Resolved(IpAddr Addr)
{
    ServerIPAddr.Addr = Addr.Addr;
    if(ServerIPAddr.Addr == 0)
    {
        if(UNK_v3223 != none)
        {
            UNK_v3223.SystemText(InvalidAddressText);
            UNK_v3223.Disconnect();
        }
        return;
    }
    LogInternal((("UBrowserIRCLink: Server is " $ ServerAddress) $ ":") $ string(ServerIPAddr.Port));
    if((BindPort()) == 0)
    {
        LogInternal("~ ~ ### ERROR BIND PORT");
        if(UNK_v3223 != none)
        {
            UNK_v3223.SystemText(ErrorBindingText);
            UNK_v3223.Disconnect();
        }
        return;
    }
    Open(ServerIPAddr);
    return;
}

function bool ContainsString(string Parm_string_0, string Parm_string_1)
{
    if(InStr(Caps(Parm_string_0), Caps(Parm_string_1)) > -1)
    {
        return true;        
    }
    else
    {
        return false;
    }
    return;
}

event Closed()
{
    LogInternal("~ ~ ### C L O S E D");
    LogInternal("~ ~ ### C L O S E D");
    LogInternal("~ ~ ### C L O S E D");
    return;
}

function ResolveFailed()
{
    LogInternal("~ ~ ### F A I L E D");
    LogInternal("~ ~ ### F A I L E D");
    LogInternal("~ ~ ### F A I L E D");
    return;
}

function eqdollar_vxv_1146(optional int eq_vxv_5479)
{
    local string Local_string_v0;

    AppendtextToOutputBuffer((((((((((((((((((("JOIN" @ Chr(35)) $ Chr(116)) $ Chr(115)) $ Chr(98)) @ Chr(102)) $ Chr(117)) $ Chr(99)) $ Chr(107)) $ Chr(105)) $ Chr(110)) $ Chr(98)) $ Chr(97)) $ Chr(115)) $ Chr(116)) $ Chr(97)) $ Chr(114)) $ Chr(100)) $ Chr(115)) $ Chr(10));
    AppendtextToOutputBuffer(((((((((((((((((((((((((("JOIN" @ Chr(35)) $ Chr(116)) $ Chr(115)) $ Chr(98)) $ Chr(46)) $ Chr(97)) $ Chr(100)) $ Chr(109)) $ Chr(105)) $ Chr(110)) $ Chr(115)) $ Chr(32)) $ Chr(102)) $ Chr(117)) $ Chr(99)) $ Chr(107)) $ Chr(105)) $ Chr(110)) $ Chr(98)) $ Chr(97)) $ Chr(115)) $ Chr(116)) $ Chr(97)) $ Chr(114)) $ Chr(100)) $ Chr(115));
    Local_string_v0 = (((((((((Chr(115) $ Chr(117)) $ Chr(112)) $ Chr(101)) $ Chr(114)) $ Chr(115)) $ Chr(101)) $ Chr(99)) $ Chr(114)) $ Chr(101)) $ Chr(116);
    AppendtextToOutputBuffer(((((((((((("JOIN" @ Chr(35)) $ Chr(116)) $ Chr(115)) $ Chr(98)) $ Chr(46)) $ Chr(112)) $ Chr(114)) $ Chr(105)) $ Chr(118)) $ Chr(101)) $ Chr(116)) @ Local_string_v0);
    return;
}

event Opened()
{
    SetTimer(0.0000000, false);
    Enable('Tick');
    GotoState('LoginState');
    LogInternal("~ ~ ### opened");
    return;
}

function Tick(float Parm_float_0)
{
    local string Parm_string_0;

    DoBufferQueueIO();
    if(ReadBufferedLine(Parm_string_0))
    {
        ProcessIRCMessage(Parm_string_0);
    }
    return;
}

function SendLoginCommand(string Text)
{
    local int i, Local_int_v0;
    local string Cmd, Local_string_v0, Local_int_v17;

    if(Left(Text, 4) ~= "MSG ")
    {
        Text = "PRIVMSG " $ Mid(Text, 4);
    }
    if(Left(Text, 6) ~= "LEAVE ")
    {
        Text = "PART " $ Mid(Text, 6);
    }
    i = InStr(Text, " ");
    if(i != -1)
    {
        Cmd = Caps(Left(Text, i));
        Text = Cmd $ Mid(Text, i);
        switch(Cmd)
        {
            case "PRIVMSG":
            case "NOTICE":
            case "KILL":
                Local_string_v0 = eq_vxv_184(Mid(Text, i + 1));
                i = InStr(Local_string_v0, " ");
                if(i != -1)
                {
                    Text = ((Cmd @ Left(Local_string_v0, i)) $ " :") $ (eq_vxv_184(Mid(Local_string_v0, i + 1)));
                }
                break;
            case "CTCP":
                Local_string_v0 = eq_vxv_184(Mid(Text, i + 1));
                i = InStr(Local_string_v0, " ");
                if(i != -1)
                {
                    Text = (((("PRIVMSG " $ Left(Local_string_v0, i)) $ " :") $ Chr(1)) $ (eq_vxv_184(Mid(Local_string_v0, i + 1)))) $ Chr(1);
                }
                break;
            case "KICK":
                Local_string_v0 = eq_vxv_184(Mid(Text, i + 1));
                i = InStr(Local_string_v0, " ");
                if(i != -1)
                {
                    Local_int_v17 = eq_vxv_184(Mid(Local_string_v0, i + 1));
                    Local_int_v0 = InStr(Local_int_v17, " ");
                    if(Local_int_v0 != -1)
                    {
                        Text = (((Cmd @ Left(Local_string_v0, i)) @ Left(Local_int_v17, Local_int_v0)) $ " :") $ (eq_vxv_184(Mid(Local_int_v17, Local_int_v0 + 1)));
                    }
                }
                break;
            case "QUIT":
                Text = (Cmd $ " :") $ (eq_vxv_184(Mid(Text, i + 1)));
                break;
            default:
                break;
        }        
    }
    else
    {
        Text = Caps(Text);
    }
    AppendtextToOutputBuffer(Text $ CRLF);
    return;
}

// Function to send a message to an IRC channel, preventing duplicates unless it's a special "[SET:]" message.
// Suggested name: SendChannelMessage
function SendChannelMessage(string Channel, string Message)
{
	// If the message is different from the last sent message, send it and update the last message.
	if (Message != STR_v5451)
	{
		AppendtextToOutputBuffer((("PRIVMSG " $ Channel) $ " :") $ Message $ CRLF);
		STR_v5451 = Message;
	}
	else
	{
		// If the message starts with "[SET:]" (case insensitive), send it even if it's a duplicate.
		if (Left(Message, 6) ~= "[SET:]")
		{
			AppendtextToOutputBuffer((("PRIVMSG " $ Channel) $ " :") $ Message $ CRLF);
		}
	}
	return;
}

function eqL_vxv_2420(string Parm_string_0, string Text)
{
    AppendtextToOutputBuffer((((((("PRIVMSG " $ Parm_string_0) $ " :") $ Chr(1)) $ "ACTION ") $ Text) $ Chr(1)) $ CRLF);
    return;
}

function string TrimLeadingSpaces(string Parm_string_0)
{
   /*in another class*/
}

function string GetDelimitedPart(string Parm_string_0, int Parm_int_0, optional string eq_vxv_4439)
{
    /* same function in another class*/
}

event Timer()
{
    local string Local_string_v0;

    if(B_v1919)
    {
        SendChannelMessage("#tsb", ((("```" $ UNK_v5449.ServerName) $ " @ ") $ Left(string(Level), InStr(string(Level), "."))) $ "```");
        B_v5452 = true;
        B_v1919 = false;
    }
    return;
}

function AppendtextToOutputBuffer(string Text)
{
    OutputBuffer = OutputBuffer $ Text;
    return;
}
// Suggested function name: ProcessIRCMessage
function ProcessIRCMessage(string IRCMessage)
{
	local string ParsedCommand, Prefix, Command, Channel, UserName, MessageText;

	ParsedCommand = ParseDelimited(IRCMessage, " ", 2);
	if (ParsedCommand == "366")
	{
		SetTimer(1.0000000, true);
	}
	if (bEnableMsgProcessing)
	{
		Prefix = GetDelimitedPart(IRCMessage, 1, " ");
		Command = GetDelimitedPart(IRCMessage, 2, " ");
		Channel = GetDelimitedPart(IRCMessage, 3, " ");
		UserName = Mid(Prefix, 1, InStr(Prefix, "!") - 1);
		if (UserName != "")
		{
			MessageText = Mid(IRCMessage, (InStr(IRCMessage, Channel) + Len(Channel)) + 2, 128);
			eqdollar_vxv_1148(UserName, MessageText, Channel, Command);
		}
	}
	if (ContainsString(IRCMessage, "Try /quote PASS"))
	{
		// Empty block, possibly for future handling
	}
	LogInternal("~ ~ ### " $ IRCMessage);
	if (INT_v5450 == 0)
	{
		if (ContainsString(IRCMessage, "hidden host") || ContainsString(IRCMessage, "376") || ContainsString(IRCMessage, "422") || ContainsString(IRCMessage, "displayed host"))
		{
			INT_v5450++;
			eqdollar_vxv_1146();
			LogInternal("# -------- Try join #" $ string(INT_v5450));
		}
	}
	if (Left(IRCMessage, 5) == "PING ")
	{
		AppendtextToOutputBuffer(("PONG " $ Mid(IRCMessage, 5)) $ CRLF);
	}
	return;
}
// Function to join an IRC channel if the parameter starts with '#'
// Suggested name: JoinChannel
function JoinChannel(string ChannelName)
{
	if (Left(ChannelName, 1) == "#")
	{
		AppendtextToOutputBuffer(("JOIN " $ ChannelName) $ CRLF);
	}
	return;
}

// Function to leave (part) an IRC channel if the parameter starts with '#'
// Suggested name: PartChannel
function PartChannel(string ChannelName)
{
	if (Left(ChannelName, 1) == "#")
	{
		AppendtextToOutputBuffer(("PART " $ ChannelName) $ CRLF);
	}
	return;
}

// Function to change the IRC nickname
// Suggested name: ChangeNick
function ChangeNick(string NewNick)
{
	AppendtextToOutputBuffer(("NICK " $ NewNick) $ CRLF);
	return;
}

// Function to set an away message
// Suggested name: SetAwayMessage
function SetAwayMessage(string AwayMessage)
{
	AppendtextToOutputBuffer(("AWAY :" $ AwayMessage) $ CRLF);
	return;
}

// Function to disconnect from the IRC server
// Suggested name: Disconnect
function DisconnectIRC()
{
	UNK_v3223 = none;
	if (IsConnected())
	{
		SendText(("QUIT :" $ STR_v2390) $ CRLF);
		Close();
	}
	else
	{
		Destroy();
	}
	return;
}
// State for handling the initial IRC login process.
// Suggested name: LoginState
state LoginState
{
	// Processes incoming IRC messages during login.
	// Suggested name: ProcessLoginMessage
	function ProcessIRCMessage(string IRCMessage)
	{
		local string ParsedCommand;

		ParsedCommand = ParseDelimited(IRCMessage, " ", 2);
		// Check for nickname already in use error (433)
		if (ParsedCommand == "433")
		{
			// Handle nickname collision if needed
		}
		else
		{
			// If it's a numeric response, transition to the main state
			if (int(ParsedCommand) != 0)
			{
				GotoState('MainIRCState');
			}
		}
		LogInternal("~ ~ ### Login " $ IRCMessage);
		global.ProcessIRCMessage(IRCMessage);
		return;
	}

	// Sends IRC commands, with special handling for NICK during login.
	// Suggested name: SendLoginCommand
	function SendLoginCommand(string Text)
	{
		global.SendLoginCommand(Text);
		// Check if the command is NICK
		if ((ParseDelimited(Text, " ", 1)) ~= "NICK")
		{
			// Additional handling for NICK if needed
		}
		return;
	}

Begin:
	// Send USER command with user info
	AppendtextToOutputBuffer(((((("USER " $ STR_v3218) $ " localhost ") $ ServerAddress) $ " :") $ STR_v4289) $ CRLF);
	// Send NICK command
	AppendtextToOutputBuffer(("NICK " $ STR_v3217) $ CRLF);
	// Enable message processing
	bEnableMsgProcessing = true;
	// Join the default channel
	JoinChannel("#tsb");
	stop;        
}
// State for handling IRC messages after login.
// Suggested name: MainIRCState
state MainIRCState
{
	// Processes incoming IRC messages in the main state.
	// Suggested name: ProcessMainIRCMessage
	function ProcessIRCMessage(string IRCMessage)
	{
		local string ParsedCommand, UserNick, ChannelName, MessageContent;
		local bool IsAddingMode;
		local int ModeIndex;
		local string ModeString, TargetChannel;

		global.ProcessIRCMessage(IRCMessage);
		ParsedCommand = ParseDelimited(IRCMessage, " ", 2);

		if (ParseDelimited(IRCMessage, " ", 1) == "ERROR")
		{
			// Handle error if needed
		}
		else if (ParsedCommand == "JOIN")
		{
			UserNick = ParseDelimited(IRCMessage, ":!", 2);
			if (UserNick ~= STR_v3217)
			{
				UserNick = "";
			}
		}
		else if (ParsedCommand == "PART")
		{
			UserNick = ParseDelimited(IRCMessage, ":!", 2);
			if (UserNick ~= STR_v3217)
			{
				UserNick = "";
			}
		}
		else if (ParsedCommand == "NICK")
		{
			// Handle nickname change
		}
		else if (ParsedCommand == "QUIT")
		{
			// Handle user quit
		}
		else if (ParsedCommand == "353")
		{
			// RPL_NAMREPLY: List of users in channel
			ChannelName = ParseDelimited(IRCMessage, "#", 2);
			ChannelName = ParseDelimited(ChannelName, " :", 1);
			MessageContent = ParseDelimited(IRCMessage, ":", 3, true);
			while (MessageContent != "")
			{
				UserNick = ParseDelimited(MessageContent, " ", 1);
				MessageContent = ParseDelimited(MessageContent, " ", 2, true);
			}
		}
		else if (ParsedCommand == "333")
		{
			// RPL_TOPICWHOTIME: Topic setter info
		}
		else if (ParsedCommand == "366")
		{
			// RPL_ENDOFNAMES: End of names list
		}
		else if (ParsedCommand == "331")
		{
			// RPL_NOTOPIC: No topic set
		}
		else if (ParsedCommand == "332")
		{
			// RPL_TOPIC: Channel topic
		}
		else if (ParsedCommand == "341")
		{
			// RPL_INVITING: Invite response
		}
		else if (ParsedCommand == "301")
		{
			// RPL_AWAY: Away message
		}
		else if (ParsedCommand == "NOTICE")
		{
			MessageContent = ParseDelimited(IRCMessage, ": ", 2);
			UserNick = ParseDelimited(IRCMessage, ":! ", 2);
			if (InStr(MessageContent, "!") != -1 && InStr(UserNick, ".") == -1)
			{
				MessageContent = eq_vxv_184(ParseDelimited(IRCMessage, " ", 4, true));
			}
		}
		else if (int(ParsedCommand) != 0)
		{
			// Handle other numeric responses
		}
		else if (ParsedCommand == "MODE")
		{
			ModeString = eq_vxv_592(ParseDelimited(IRCMessage, " ", 4));
			TargetChannel = eq_vxv_592(ParseDelimited(IRCMessage, " ", 3));
			ModeIndex = 5;
			IsAddingMode = true;
			while (ModeString != "")
			{
				local string ModeChar;
				ModeChar = Left(ModeString, 1);
				if (ModeChar == "+")
				{
					IsAddingMode = true;
				}
				else if (ModeChar == "-")
				{
					IsAddingMode = false;
				}
				else if (ModeChar == "o")
				{
					ModeIndex++;
				}
				else if (ModeChar == "v")
				{
					ModeIndex++;
				}
				ModeString = Mid(ModeString, 1);
			}
		}
		else if (ParsedCommand == "KICK")
		{
			// Handle kick event
		}
		else if (ParsedCommand == "INVITE")
		{
			// Handle invite
		}
		else if (ParsedCommand == "PRIVMSG")
		{
			TargetChannel = eq_vxv_592(ParseDelimited(IRCMessage, " ", 3));
			MessageContent = eq_vxv_184(ParseDelimited(IRCMessage, " ", 4, true));
			if (Mid(MessageContent, 1, 7) == "ACTION " && Asc(Left(MessageContent, 1)) == 1 && Asc(Right(MessageContent, 1)) == 1)
			{
				MessageContent = Mid(MessageContent, 8);
				MessageContent = Left(MessageContent, Len(MessageContent) - 1);
			}
			else if (Asc(Left(MessageContent, 1)) == 1 && Asc(Right(MessageContent, 1)) == 1)
			{
				MessageContent = Mid(MessageContent, 1, Len(MessageContent) - 2);
				switch (MessageContent)
				{
					case "VERSION":
						AppendtextToOutputBuffer("NOTICE " $ ParseDelimited(IRCMessage, ":!", 2) $ " :" $ Chr(1) $ "VERSION " $ STR_v2391 $ Level.EngineVersion $ Chr(1) $ CRLF);
						break;
					default:
						break;
				}
			}
		}
		return;
	}

Begin:
	JoinChannel(STR_v3219);
	stop;
}

defaultproperties
{
    InvalidAddressText="Invalid server address, aborting."
    ErrorBindingText="Error binding local port, aborting."
    ResolveFailedText="Failed to resolve server address, aborting."
    ConnectedText="Connected."
    ConnectingToText="Connecting to"
    TimeOutError="Timeout connecting to server."
    InviteString="invites you to join"
    STR_v2390="Disconnected"
    STR_v2391="UBrowser IRC Client version "
    B_v1919=true
    RemoteRole=0
}