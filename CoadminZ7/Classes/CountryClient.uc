class CountryClient extends UBrowserHTTPClient
    transient
    config;

var CAZConsole G_ZStrg1;
var zStorage zSTg_v5445;

function PostBeginPlay()
{
    super.PostBeginPlay();
    ServerIPAddr.Addr = 0;
    RemoteRole = ROLE_None;
    Disable('Tick');
    return;
}

function Browse(string Parm_string_0, string Parm_string_1, optional int eqd_vxv_3188, optional int eqrb_vxv_2961)
{
    CurrentState = 0;
    ServerAddress = Parm_string_0;
    ServerURI = Parm_string_1;
    if(eqd_vxv_3188 == 0)
    {
        ServerPort = 80;        
    }
    else
    {
        ServerPort = eqd_vxv_3188;
    }
    if(eqrb_vxv_2961 > 0)
    {
        SetTimer(float(eqrb_vxv_2961), false);
    }
    ResetBuffer();
    if(ProxyServerAddress != "")
    {
        ServerIPAddr.Port = ProxyServerPort;
        if(ServerIPAddr.Addr == 0)
        {
            Resolve(ProxyServerAddress);            
        }
        else
        {
            DoBind();
        }        
    }
    else
    {
        ServerIPAddr.Port = ServerPort;
        if(ServerIPAddr.Addr == 0)
        {
            Resolve(ServerAddress);            
        }
        else
        {
            DoBind();
        }
    }
    return;
}

function Resolved(IpAddr Addr)
{
    ServerIPAddr.Addr = Addr.Addr;
    if(ServerIPAddr.Addr == 0)
    {
        LogInternal("UBrowserHTTPClient: Invalid server address");
        SetError(-1);
        return;
    }
    DoBind();
    return;
}

function DoBind()
{
    if((BindPort()) == 0)
    {
        LogInternal("UBrowserHTTPLink: Error binding local port.");
        SetError(-2);
        return;
    }
    Open(ServerIPAddr);
    bClosed = false;
    return;
}

event Timer()
{
    return;
}

event Opened()
{
    Enable('Tick');
    SendBufferedData((((((("GET http://" $ ServerAddress) $ ":") $ string(ServerPort)) $ ServerURI) $ " HTTP/1.1") $ CR) $ LF);
    SendBufferedData(("User-Agent: Unreal" $ CR) $ LF);
    SendBufferedData(("Connection: close" $ CR) $ LF);
    SendBufferedData((((((("Host: " $ ServerAddress) $ ":") $ string(ServerPort)) $ CR) $ LF) $ CR) $ LF);
    CurrentState = 1;
    return;
}

function SetError(int Parm_int_0)
{
    Disable('Tick');
    SetTimer(0.0000000, false);
    ResetBuffer();
    CurrentState = 4;
    ErrorCode = Parm_int_0;
    if(!IsConnected() || !Close())
    {
        HTTPError(ErrorCode);
    }
    return;
}

event Closed()
{
    bClosed = true;
    return;
}

function HTTPReceivedData(string Parm_string_0)
{
    if(G_ZStrg1 != none)
    {
        G_ZStrg1.ProcessCountryResponse(Parm_string_0, false);
    }
    if(zSTg_v5445 != none)
    {
        zSTg_v5445.ProcessCountryResponse(Parm_string_0, false);
    }
    return;
}

function HTTPError(int Parm_int_0)
{
    if(G_ZStrg1 != none)
    {
        G_ZStrg1.ProcessCountryResponse(string(Parm_int_0), true);
    }
    if(zSTg_v5445 != none)
    {
        zSTg_v5445.ProcessCountryResponse(string(Parm_int_0), true);
    }
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

event Tick(float Parm_float_0)
{
    local string Local_string_v0;
    local bool Local_bool_v0;
    local int NextState, i, Local_int_v0;

    super(Actor).Tick(Parm_float_0);
    DoBufferQueueIO();
    J0x11:

    NextState = CurrentState;
    switch(CurrentState)
    {
        case 1:
            Local_bool_v0 = ReadBufferedLine(Local_string_v0);
            if(Local_bool_v0)
            {
                i = InStr(Local_string_v0, " ");
                Local_int_v0 = int(Mid(Local_string_v0, i + 1));
                Local_string_v0 = Right(Local_string_v0, Len(Local_string_v0) - 36);
                ReplaceString(Local_string_v0, Chr(10), " ");
                ReplaceString(Local_string_v0, Chr(13), " ");
                NextState = 2;
            }
            break;
        case 2:
            Local_bool_v0 = ReadBufferedLine(Local_string_v0);
            if(Local_bool_v0)
            {
                if(Local_string_v0 == "")
                {
                    NextState = 3;
                }
            }
            break;
        case 3:
            Local_bool_v0 = false;
            break;
        default:
            Local_bool_v0 = false;
            break;
            break;
    }
    CurrentState = NextState;
    if(!(!Local_bool_v0))
        goto J0x11;
    if(bClosed)
    {
        Disable('Tick');
        if(CurrentState == 3)
        {
            HTTPReceivedData(InputBuffer);
        }
        if(CurrentState == 4)
        {
            HTTPError(ErrorCode);
        }
    }
    return;
}

defaultproperties
{
    RemoteRole=0
}