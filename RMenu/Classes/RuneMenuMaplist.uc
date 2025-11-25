class RuneMenuMapList expands UWindowListBoxItem;

var string MapName;
var string DisplayName;

function int Compare(UWindowList T, UWindowList B)
{
	if(Caps(RuneMenuMapList(T).MapName) < Caps(RuneMenuMapList(B).MapName))
		return -1;

	return 1;
}

// Call only on sentinel
function RuneMenuMapList FindMap(string FindMapName)
{
	local RuneMenuMapList I;

	for(I = RuneMenuMapList(Next); I != None; I = RuneMenuMapList(I.Next))
		if(I.MapName ~= FindMapName)
			return I;

	return None;
}

defaultproperties
{
}
