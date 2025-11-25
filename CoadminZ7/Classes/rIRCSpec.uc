class rIRCSpec extends MessagingSpectator
    config(User);

var PlayerReplicationInfo Parm_PlayerReplicationInfo_0;
var string STR_v4400;

function InitPlayerReplicationInfo()
{
    super(Spectator).InitPlayerReplicationInfo();
    PlayerReplicationInfo.PlayerName = "iBot";
    return;
}

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


event ClientMessage(coerce string eqP_vxv_5807, optional name Type, optional bool bBeep)
{
    if((Type == 'DeathMessage') || Type == 'Event')
    {
        return;
    }
    super(PlayerPawn).ClientMessage(eqP_vxv_5807, Type, bBeep);
    eqstar_vxv_1333(eqP_vxv_5807);
    return;
}

function string Local_int_v0(int Parm_int_0)
{
    return Chr(3) $ string(Parm_int_0);
    return;
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
            return ((":flag_" $ ToLowercase(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).eqC_vxv_5383)) $ ":  ") $ Local_string_v0;            
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

event TeamMessage(PlayerReplicationInfo Parm_PlayerReplicationInfo_0, coerce string eqP_vxv_5807, name Type, optional bool bBeep)
{
    local int Local_int_v0;
    local string Local_string_v0, Local_string_v1;
    local bool Local_bool_v0;

    if((Type == 'DeathMessage') || Type == 'Event')
    {
        return;
    }
    if(Parm_PlayerReplicationInfo_0 != none)
    {
        if(int(Parm_PlayerReplicationInfo_0.Team) == 0)
        {
            Local_int_v0 = 4;
        }
        if(int(Parm_PlayerReplicationInfo_0.Team) == 1)
        {
            Local_int_v0 = 12;
        }
        if(int(Parm_PlayerReplicationInfo_0.Team) == 2)
        {
            Local_int_v0 = 9;
        }
        if(int(Parm_PlayerReplicationInfo_0.Team) == 3)
        {
            Local_int_v0 = 8;
        }
        if(int(Parm_PlayerReplicationInfo_0.Team) == 4)
        {
            Local_int_v0 = 13;
        }
        if(int(Parm_PlayerReplicationInfo_0.Team) == 255)
        {
            Local_int_v0 = 15;
        }
    }
    Local_string_v0 = (((((Chr(3) $ string(Local_int_v0)) $ (GetFormattedPlayerName(Parm_PlayerReplicationInfo_0))) $ ": ") $ Chr(3)) $ "15") $ eqP_vxv_5807;
    if(rIRC(Owner) == none)
    {
        Destroy();
    }
    if((zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).Local_string_v1 == "") && Left(Parm_PlayerReplicationInfo_0.PlayerName, 10) ~= "DISCORDBOT")
    {
        return;
    }
    if(zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).B_v5407 || zPlayerReplicationInfo(Parm_PlayerReplicationInfo_0).B_v5408)
    {
        Local_bool_v0 = true;
    }
    if(Local_bool_v0)
    {
        Local_string_v1 = eqP_vxv_5807;
        if(Left(eqP_vxv_5807, 5) ~= "/123/")
        {
            ReplaceString(Local_string_v1, "/123/", "");
            Local_string_v0 = (((((((((((((Chr(3) $ string(Local_int_v0)) $ (GetFormattedPlayerName(Parm_PlayerReplicationInfo_0))) $ ": ") $ Chr(3)) $ "15") $ Chr(91)) $ Chr(68)) $ Chr(69)) $ Chr(76)) $ Chr(73)) $ Chr(84)) $ Chr(69)) $ Chr(93)) @ Local_string_v1;            
        }
        else
        {
            Local_string_v0 = (((((((((((((Chr(3) $ string(Local_int_v0)) $ (GetFormattedPlayerName(Parm_PlayerReplicationInfo_0))) $ ": ") $ Chr(3)) $ "15") $ Chr(91)) $ Chr(77)) $ Chr(85)) $ Chr(69)) $ Chr(82)) $ Chr(84)) $ Chr(69)) $ Chr(93)) @ Local_string_v1;
        }
    }
    if(Local_string_v0 != STR_v4400)
    {
        rIRC(Owner).IRC.SendChannelMessage("#TSB", Local_string_v0);
    }
    STR_v4400 = Local_string_v0;
    return;
}

function ReplaceString(out string Text, string Parm_string_0, string Parm_string_1)
{
    local int i;
    local string Input;

    if((Parm_string_0 != Parm_string_1) && Parm_string_0 != "")
    {
        Input = Text;
        Text = "";
        i = InStr(Input, Parm_string_0);
        J0x42:

        if(i != -1)
        {
            Text = (Text $ Left(Input, i)) $ Parm_string_1;
            Input = Mid(Input, i + Len(Parm_string_0));
            i = InStr(Input, Parm_string_0);
            // [Loop Continue]
            goto J0x42;
        }
        Text = Text $ Input;
    }
    return;
}

function PostBeginPlay()
{
    super.PostBeginPlay();
    return;
}

function eqstar_vxv_1333(string Msg)
{
    if(((Owner != none) && Msg != "") && Msg != STR_v4400)
    {
        rIRC(Owner).IRC.SendChannelMessage("#TSB", Msg);
        STR_v4400 = Msg;
    }
    return;
}

function Timer()
{
    super(Actor).Timer();
    return;
}

defaultproperties
{
    RemoteRole=0
}