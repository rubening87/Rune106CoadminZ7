class RuneMenuMutatorList expands UWindowListBoxItem;

var string MutatorName;
var string MutatorClass;

function int Compare(UWindowList T, UWindowList B)
{
	if(Caps(RuneMenuMutatorList(T).MutatorName) < Caps(RuneMenuMutatorList(B).MutatorName))
		return -1;

	return 1;
}

// Call only on sentinel
function RuneMenuMutatorList FindMutator(string FindMutatorClass)
{
	local RuneMenuMutatorList I;

	for(I = RuneMenuMutatorList(Next); I != None; I = RuneMenuMutatorList(I.Next))
		if(I.MutatorClass ~= FindMutatorClass)
			return I;

	return None;
}

defaultproperties
{
}
