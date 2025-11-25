class RuneMenuSaveClientWindow extends RuneMenuSlotClientWindow;

var localized string CantSave;

function Created()
{
	Super.Created();

	if ( Root.GetPlayerOwner().Health <= 0 )
		UWindowFramedWindow(ParentWindow).WindowTitle = CantSave;
}

function Notify(UWindowDialogControl C, byte E)
{
	local int I;
	local int Selection;
	local UWindowWindow W;

	Super.Notify(C, E);

	switch(E)
	{
	case DE_Click:
		if(GetPlayerOwner().Health <= 0 || GetPlayerOwner().GetStateName() == 'Scripting'
			|| GetPlayerOwner().GetStateName() == 'Uninterrupted')
		{
			return; // Disallow save if dead or in the middle of a cinematic
		}

		if ( GetLevel().Minute < 10 )
			RuneMenuRaisedButton(C).SetText(GetLevel().Title@GetLevel().Hour$"\:0"$GetLevel().Minute$" "$MonthNames[GetLevel().Month - 1]@GetLevel().Day);
		else
			RuneMenuRaisedButton(C).SetText(GetLevel().Title@GetLevel().Hour$"\:"$GetLevel().Minute@MonthNames[GetLevel().Month - 1]@GetLevel().Day);

		if ( GetLevel().NetMode != NM_Standalone )
			RuneMenuRaisedButton(C).SetText("Net:"$RuneMenuRaisedButton(C).Text);

		for (I=0; I<9; I++)
			if (C == Slots[I])
				Selection = I;

		SlotNames[Selection] = RuneMenuRaisedButton(C).Text;

		// Find Load Game Window (if it exists yet) and save there too
		if (Root != None && RuneRootWindow(Root) != None && RuneRootWindow(Root).LoadClient != None)
		{
			RuneRootWindow(Root).LoadClient.Slots[Selection].SetText(SlotNames[Selection]);
		}

		SaveConfig();

		Root.Console.Viewport.Actor.SetPause( False );
		Root.GetPlayerOwner().ConsoleCommand("SaveGame "$Selection);
		Root.Console.Viewport.Actor.SetPause( True );
		Root.Console.CloseUWindow();
		break;
	}
}

defaultproperties
{
     CantSave="Cannot Save: You are dead."
}
