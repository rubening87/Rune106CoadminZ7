//=============================================================================
// RuneMenuOptionsTop
//=============================================================================
class RuneMenuOptionsTop extends RuneMenuTopWindow;


var RuneButton VideoButton, AudioButton, ControlsButton, InputButton, GameButton;
var UWindowWindow VideoWindow, AudioWindow, ControlsWindow, InputWindow, GameWindow;

var localized string VideoText;
var localized string AudioText;
var localized string GameText;
var localized string ControlsText;
var localized string InputText;
var localized string VideoHelp,AudioHelp,GameHelp,ControlsHelp,InputHelp;

//=============================================================================
// Class Functions
//=============================================================================

function Created()
{
	Super.Created();

	VideoButton = RuneButton(CreateControl(class'RuneButton', 0, 0, 130, 30));
	VideoButton.Text=VideoText;
	VideoButton.SetHelpText(VideoHelp);
	VideoButton.WinLeft = 10;
	VideoButton.WinTop = 10;

	AudioButton = RuneButton(CreateControl(class'RuneButton', 0, 0, 130, 30));
	AudioButton.Text=AudioText;
	AudioButton.SetHelpText(AudioHelp);
	AudioButton.WinLeft = 150;
	AudioButton.WinTop = 10;

	GameButton = RuneButton(CreateControl(class'RuneButton', 0, 0, 130, 30));
	GameButton.Text=GameText;
	GameButton.SetHelpText(GameHelp);
	GameButton.WinLeft = 290;
	GameButton.WinTop = 10;

	ControlsButton = RuneButton(CreateControl(class'RuneButton', 0, 0, 130, 30));
	ControlsButton.Text=ControlsText;
	ControlsButton.SetHelpText(ControlsHelp);
	ControlsButton.WinLeft = 85;
	ControlsButton.WinTop = 60;

	InputButton = RuneButton(CreateControl(class'RuneButton', 0, 0, 130, 30));
	InputButton.Text=InputText;
	InputButton.SetHelpText(InputHelp);
	InputButton.WinLeft = 225;
	InputButton.WinTop = 60;
}

function Notify(UWindowDialogControl C, byte E)
{
	if(E == DE_Click)
	{
		switch(C)
		{
			case VideoButton:
				HideAllWindows();
				if(VideoWindow == None)
					VideoWindow = Root.CreateWindow(class'RuneMenuVideoOptionsScrollClient', 200, 100, 440, 360);
				if (VideoWindow!=None)
					VideoWindow.ShowWindow();
				break;
			case AudioButton:
				HideAllWindows();
				if(AudioWindow == None)
					AudioWindow = Root.CreateWindow(class'RuneMenuAudioScrollClient', 200, 100, 440, 360);
				if (AudioWindow!=None)
					AudioWindow.ShowWindow();
				break;
			case GameButton:
				HideAllWindows();
				if(GameWindow == None)
					GameWindow = Root.CreateWindow(class'RuneMenuGameOptionsScrollClient', 200, 100, 440, 360);
				if(GameWindow!=None)
					GameWindow.ShowWindow();
				break;
			case ControlsButton:
				HideAllWindows();
				if(ControlsWindow == None)
					ControlsWindow = Root.CreateWindow(class'RuneMenuCustomizeScrollClient', 200, 100, 440, 360);
				if(ControlsWindow!=None)
					ControlsWindow.ShowWindow();
				break;
			case InputButton:
				HideAllWindows();
				if(InputWindow == None)
					InputWindow = Root.CreateWindow(class'RuneMenuInputOptionsScrollClient', 200, 100, 440, 360);
				if(InputWindow!=None)
					InputWindow.ShowWindow();
				break;
		}
	}
}

function HideAllWindows()
{
	if (VideoWindow!=None)
		VideoWindow.HideWindow();
	if (AudioWindow!=None)
		AudioWindow.HideWindow();
	if (ControlsWindow!=None)
		ControlsWindow.HideWindow();
	if (InputWindow!=None)
		InputWindow.HideWindow();
	if (GameWindow!=None)
		GameWindow.HideWindow();
}

defaultproperties
{
     VideoText="Video"
     AudioText="Audio"
     GameText="Game"
     ControlsText="Controls"
     InputText="Input"
     VideoHelp="Video Options"
     AudioHelp="Audio Options"
     GameHelp="Game Options"
     ControlsHelp="Customize player controls"
     InputHelp="Choose input device(s)"
}
