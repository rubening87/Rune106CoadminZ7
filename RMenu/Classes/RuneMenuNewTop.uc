//=============================================================================
// RuneMenuNewTop
//=============================================================================
class RuneMenuNewTop extends RuneMenuTopWindow;


var RuneButton EasyButton, MediumButton, HardButton;

var localized string EasyText,MediumText,HardText;
var localized string EasyHelp,MediumHelp,HardHelp;

//=============================================================================
// Class Functions
//=============================================================================

function Created()
{
	Super.Created();

	EasyButton = RuneButton(CreateControl(class'RuneButton', 0, 0, 130, 30));
	EasyButton.Text=EasyText;
	EasyButton.SetHelpText(EasyHelp);
	EasyButton.WinLeft = 10;
	EasyButton.WinTop = 35;

	MediumButton = RuneButton(CreateControl(class'RuneButton', 0, 0, 130, 30));
	MediumButton.Text=MediumText;
	MediumButton.SetHelpText(MediumHelp);
	MediumButton.WinLeft = 150;
	MediumButton.WinTop = 35;

	HardButton = RuneButton(CreateControl(class'RuneButton', 0, 0, 130, 30));
	HardButton.Text=HardText;
	HardButton.SetHelpText(HardHelp);
	HardButton.WinLeft = 290;
	HardButton.WinTop = 35;
}

function Notify(UWindowDialogControl C, byte E)
{
	if(E == DE_Click)
	{
		switch(C)
		{
			case EasyButton:
				HideAllWindows();
				StartPressed(0);
				break;
			case MediumButton:
				HideAllWindows();
				StartPressed(1);
				break;
			case HardButton:
				HideAllWindows();
				StartPressed(2);
				break;
		}
	}
}

function StartPressed(int Diff)
{
	local string URL;

	if (class'GameInfo'.default.DemoBuild != 0)
		URL = "DEMOHel1?Difficulty="$Diff;
	else
		URL = "RagnarVillage?Difficulty="$Diff;

	ParentWindow.Close();
	Root.Console.CloseUWindow();
	GetPlayerOwner().ClientTravel(URL, TRAVEL_Absolute, false);
}

function HideAllWindows()
{
}

defaultproperties
{
     EasyText="Easy"
     MediumText="Medium"
     HardText="Hard"
     EasyHelp="Easy skill"
     MediumHelp="Medium skill"
     HardHelp="Hard skill"
}
