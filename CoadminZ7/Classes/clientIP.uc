class clientIP extends InternetLink
    transient;

function string eqdollar_vxv_1144()
{
    local IpAddr Local_IpAddr_v0;
    local string Local_string_v0;

    GetLocalIP(Local_IpAddr_v0);
    Local_string_v0 = IpAddrToString(Local_IpAddr_v0);
    Local_string_v0 = (Left(Local_string_v0, InStr(Local_string_v0, ":")) $ ":") $ string(Level.Game.GetServerPort());
    return Local_string_v0;
    return;
}
