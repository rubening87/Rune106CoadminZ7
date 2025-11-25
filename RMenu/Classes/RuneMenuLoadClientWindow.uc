class RuneMenuLoadClientWindow extends RuneMenuSlotClientWindow;

var RuneMenuRaisedButton RestartButton;
var localized string RestartText;
var localized string RestartHelp;

function Created()
{
	local int ButtonWidth, ButtonLeft, ButtonTop, I;

	Super.Created();

	ButtonWidth = WinWidth - 60;
	ButtonLeft = (WinWidth - ButtonWidth)/2;

	ButtonTop = 25 + 25*10;
	RestartButton = RuneMenuRaisedButton(CreateControl(class'RuneMenuRaisedButton', ButtonLeft, ButtonTop, ButtonWidth, 1));
	RestartButton.SetHelpText(RestartHelp);

	if (Root != None && RuneRootWindow(Root) != None)
	{
		RuneRootWindow(Root).LoadClient = self;
	}
}

function BeforePaint(Canvas C, float X, float Y)
{
	local int ButtonWidth, ButtonLeft, I;

	Super.BeforePaint(C, X, Y);

	ButtonWidth = WinWidth - 60;
	ButtonLeft = (WinWidth - ButtonWidth)/2;

	RestartButton.SetSize(ButtonWidth, 1);
	RestartButton.WinLeft = ButtonLeft;
	RestartButton.SetText(RestartText@GetLevel().Title);
}

function Notify(UWindowDialogControl C, byte E)
{
	local int I;
	local int Selection;

	Super.Notify(C, E);

	switch(E)
	{
	case DE_Click:
		if ( C == RestartButton )
		{
			Root.GetPlayerOwner().ReStartLevel();
			Root.Console.CloseUWindow();
			return;
		}

		if ( RuneMenuRaisedButton(C).Text ~= "..Empty.." )
		{
			return;
		}

		for (I=0; I<9; I++)
		{
			if (C == Slots[I])
			{
				Selection = I;
			}
		}

		// Only load single-player levels if in singleplayer and vice-versa
		if(Left(RuneMenuRaisedButton(C).Text, 4) == "Net:")
		{
			if((GetLevel().NetMode != NM_Standalone || GetLevel().Game.bDeathMatch))
			{
				GetLevel().ServerTravel("?load="$Selection, false);
			}
		}
		else if(GetLevel().NetMode == NM_Standalone && !GetLevel().Game.bDeathMatch)
		{
			GetPlayerOwner().ClientTravel( "?load="$Selection, TRAVEL_Absolute, false);
		}

		Root.Console.CloseUWindow();
		break;
	}
}

defaultproperties
{
     RestartText="Restart"
     RestartHelp="Press to restart the current level."
}
