class RBrowserUpdateServerLink expands UBrowserUpdateServerLink;

function SetupURIs()
{
	local string ver;

	ver = Level.EngineVersion;
	while (Len(ver) < 3)
		ver = "0" $ ver;
	if( class'GameInfo'.default.DemoBuild != 0 )
	{
		MaxURI = 3;
		URIs[3] = "/updateserver/runedemomotd"$ver$".html";
		URIs[2] = "/updateserver/runedemomotdfallback.html";
		URIs[1] = "/updateserver/runedemomasterserver.txt";
		URIs[0] = "/updateserver/runedemoircserver.txt";
	}
	else
	{
		MaxURI = 3;
		URIs[3] = "/updateserver/runemotd"$ver$".html";
		URIs[2] = "/updateserver/runemotdfallback.html";
		URIs[1] = "/updateserver/runemasterserver.txt";
		URIs[0] = "/updateserver/runeircserver.txt";
	}
}

defaultproperties
{
}
