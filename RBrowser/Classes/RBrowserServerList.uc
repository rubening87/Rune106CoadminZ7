class RBrowserServerList expands UBrowserServerList;

/*
var bool bNGWorldStats;

function bool DecodeServerProperties(string Data)
{
	local int i;

	i=InStr(Data, "\\worldlog\\");
	if(i >= 0 && Mid(Data, i+10, 4) ~= "true")
		bNGWorldStats = True;

	return Super.DecodeServerProperties(Data);
}

function UWindowList CopyExistingListItem(Class<UWindowList> ItemClass, UWindowList SourceItem)
{
	local RBrowserServerList L;

	L = RBrowserServerList(Super.CopyExistingListItem(ItemClass, SourceItem));
	L.bNGWorldStats	= RBrowserServerList(SourceItem).bNGWorldStats;

	return L;
}
*/

defaultproperties
{
}
