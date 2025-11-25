class RuneMenuAudioClientWindow extends RuneMenuPageWindow;

// Sound Quality
var UWindowComboControl SoundQualityCombo;
var localized string SoundQualityText;
var localized string SoundQualityHelp;
var localized string Details[2];

// Effects Channels
//var UWindowComboControl EffectChannelsCombo;
//var localized string EffectChannelsText;
//var localized string EffectChannelsHelp;
//var localized string EffectChannelsDetails[3];
//var UWindowMessageBox ConfirmChannels;
//var localized string ConfirmChannelsTitle;
//var localized string ConfirmChannelsText;

// Music Volume
//var UWindowHSliderControl MusicVolumeSlider;
//var localized string MusicVolumeText;
//var localized string MusicVolumeHelp;

// Sound Volume
var UWindowHSliderControl SoundVolumeSlider;
var localized string SoundVolumeText;
var localized string SoundVolumeHelp;

/*// Voice Messages
var UWindowCheckbox VoiceMessagesCheck;
var localized string VoiceMessagesText;
var localized string VoiceMessagesHelp;
*/

// Reverse Stereo
var UWindowCheckbox ReverseStereoCheck;
var localized string ReverseStereoText;
var localized string ReverseStereoHelp;

// Use 3D Hardware
var UWindowCheckbox Use3DHardwareCheck;
var localized string Use3DHardwareText;
var localized string Use3DHardwareHelp;

// Use Surround Sound
var UWindowCheckbox UseSurroundSoundCheck;
var localized string UseSurroundSoundText;
var localized string UseSurroundSoundHelp;

// Message Beep
var UWindowCheckbox MessageBeepCheck;
var localized string MessageBeepText;
var localized string MessageBeepHelp;

var UWindowMessageBox ConfirmHardware;
var localized string ConfirmHardwareTitle;
var localized string ConfirmHardwareText;

var UWindowMessageBox ConfirmSurround;
var localized string ConfirmSurroundTitle;
var localized string ConfirmSurroundText;

var float ControlOffset;

function Created()
{
	local bool bLowSoundQuality;
	local int MusicVolume, SoundVolume;
	local int ControlWidth, ControlLeft, ControlRight;
	local int CenterWidth, CenterPos;
	local int channels;

	Super.Created();

	ControlWidth = WinWidth/2.5;
	ControlLeft = (WinWidth/2 - ControlWidth)/2;
	ControlRight = WinWidth/2 + ControlLeft;

	CenterWidth = (WinWidth/4)*3;
	CenterPos = (WinWidth - CenterWidth)/2;

	// Sound Quality
	SoundQualityCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, ControlOffset, CenterWidth, 1));
	SoundQualityCombo.SetText(SoundQualityText);
	SoundQualityCombo.SetHelpText(SoundQualityHelp);
	SoundQualityCombo.SetFont(F_Normal);
	SoundQualityCombo.SetEditable(False);
	SoundQualityCombo.AddItem(Details[0]);
	SoundQualityCombo.AddItem(Details[1]);
	bLowSoundQuality = bool(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.AudioDevice LowSoundQuality"));
	if (bLowSoundQuality)
		SoundQualityCombo.SetSelectedIndex(0);
	else
		SoundQualityCombo.SetSelectedIndex(1);
	ControlOffset += 25;

/*	// Effects Channels
	EffectChannelsCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, ControlOffset, CenterWidth, 1));
	EffectChannelsCombo.SetText(EffectChannelsText);
	EffectChannelsCombo.SetHelpText(EffectChannelsHelp);
	EffectChannelsCombo.SetFont(F_Normal);
	EffectChannelsCombo.SetEditable(False);
	EffectChannelsCombo.AddItem(EffectChannelsDetails[0]);
	EffectChannelsCombo.AddItem(EffectChannelsDetails[1]);
	EffectChannelsCombo.AddItem(EffectChannelsDetails[2]);
	channels = int(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.AudioDevice EffectsChannels"));
	channels = Clamp(channels, 16, 32);
	switch(channels)
	{
		case 16:
			EffectChannelsCombo.SetSelectedIndex(0);
			break;
		case 24:
			EffectChannelsCombo.SetSelectedIndex(1);
			break;
		case 32:
			EffectChannelsCombo.SetSelectedIndex(2);
			break;
		default:
			EffectChannelsCombo.SetSelectedIndex(0);
			GetPlayerOwner().ConsoleCommand("set ini Engine.Engine.AudioDevice EffectsChannels 16");
			break;
	}
	ControlOffset += 25;
*/

	// Music Volume
//	MusicVolumeSlider = UWindowHSliderControl(CreateControl(class'UWindowHSliderControl', CenterPos, ControlOffset, CenterWidth, 1));
//	MusicVolumeSlider.SetRange(0, 255, 32);
//	MusicVolume = int(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.AudioDevice MusicVolume"));
//	MusicVolumeSlider.SetValue(MusicVolume);
//	MusicVolumeSlider.SetText(MusicVolumeText);
//	MusicVolumeSlider.SetHelpText(MusicVolumeHelp);
//	MusicVolumeSlider.SetFont(F_Normal);
//	ControlOffset += 25;

	// Sound Volume
	SoundVolumeSlider = UWindowHSliderControl(CreateControl(class'UWindowHSliderControl', CenterPos, ControlOffset, CenterWidth, 1));
	SoundVolumeSlider.SetRange(0, 255, 32);
	SoundVolume = int(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.AudioDevice SoundVolume"));
	SoundVolumeSlider.SetValue(SoundVolume);
	SoundVolumeSlider.SetText(SoundVolumeText);
	SoundVolumeSlider.SetHelpText(SoundVolumeHelp);
	SoundVolumeSlider.SetFont(F_Normal);
	ControlOffset += 25;

/*	// Voice Messages
	VoiceMessagesCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', CenterPos, ControlOffset, CenterWidth, 1));
	VoiceMessagesCheck.bChecked = !GetPlayerOwner().bNoVoices;
	VoiceMessagesCheck.SetText(VoiceMessagesText);
	VoiceMessagesCheck.SetHelpText(VoiceMessagesHelp);
	VoiceMessagesCheck.SetFont(F_Normal);
	VoiceMessagesCheck.Align = TA_Left;
	ControlOffset += 25;*/

	// Reverse Stereo
	ReverseStereoCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', CenterPos, ControlOffset, CenterWidth, 1));
	ReverseStereoCheck.bChecked = bool(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.AudioDevice ReverseStereo"));
	ReverseStereoCheck.SetText(ReverseStereoText);
	ReverseStereoCheck.SetHelpText(ReverseStereoHelp);
	ReverseStereoCheck.SetFont(F_Normal);
	ReverseStereoCheck.Align = TA_Left;
	ControlOffset += 25;

	// Use 3D Hardware
/*	Use3DHardwareCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', CenterPos, ControlOffset, CenterWidth, 1));
	Use3DHardwareCheck.bChecked = bool(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.AudioDevice Use3DHardware"));
	Use3DHardwareCheck.SetText(Use3DHardwareText);
	Use3DHardwareCheck.SetHelpText(Use3DHardwareHelp);
	Use3DHardwareCheck.SetFont(F_Normal);
	Use3DHardwareCheck.Align = TA_Left;
	ControlOffset += 25;*/

	// Surround Sound.
	UseSurroundSoundCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', CenterPos, ControlOffset, CenterWidth, 1));
	UseSurroundSoundCheck.bChecked = bool(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.AudioDevice UseSurround"));
	UseSurroundSoundCheck.SetText(UseSurroundSoundText);
	UseSurroundSoundCheck.SetHelpText(UseSurroundSoundHelp);
	UseSurroundSoundCheck.SetFont(F_Normal);
	UseSurroundSoundCheck.Align = TA_Left;
	ControlOffset += 25;

	// Message Beep
	MessageBeepCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', CenterPos, ControlOffset, CenterWidth, 1));
	MessageBeepCheck.bChecked = GetPlayerOwner().bMessageBeep;
	MessageBeepCheck.SetText(MessageBeepText);
	MessageBeepCheck.SetHelpText(MessageBeepHelp);
	MessageBeepCheck.SetFont(F_Normal);
	MessageBeepCheck.Align = TA_Left;
	ControlOffset += 25;

	ExtraMessageOptions();
}

function AfterCreate()
{
	Super.AfterCreate();

	DesiredWidth = 220;
	DesiredHeight = ControlOffset;
}

function ExtraMessageOptions()
{
}

function BeforePaint(Canvas C, float X, float Y)
{
	local int ControlWidth, ControlLeft, ControlRight;
	local int CenterWidth, CenterPos;

	Super.BeforePaint(C, X, Y);

	ControlWidth = WinWidth/2.5;
	ControlLeft = (WinWidth/2 - ControlWidth)/2;
	ControlRight = WinWidth/2 + ControlLeft;

	CenterWidth = (WinWidth/4)*3;
	CenterPos = (WinWidth - CenterWidth)/2;

/*	VoiceMessagesCheck.SetSize(CenterWidth-100+16, 1);
	VoiceMessagesCheck.WinLeft = CenterPos;*/

	ReverseStereoCheck.SetSize(CenterWidth-100+16, 1);
	ReverseStereoCheck.WinLeft = CenterPos;

//	Use3DHardwareCheck.SetSize(CenterWidth-100+16, 1);
//	Use3DHardwareCheck.WinLeft = CenterPos;

	UseSurroundSoundCheck.SetSize(CenterWidth-100+16, 1);
	UseSurroundSoundCheck.WinLeft = CenterPos;

	MessageBeepCheck.SetSize(CenterWidth-100+16, 1);
	MessageBeepCheck.WinLeft = CenterPos;

	SoundQualityCombo.SetSize(CenterWidth, 1);
	SoundQualityCombo.WinLeft = CenterPos;
	SoundQualityCombo.EditBoxWidth = 100;

//	EffectChannelsCombo.SetSize(CenterWidth, 1);
//	EffectChannelsCombo.WinLeft = CenterPos;
//	EffectChannelsCombo.EditBoxWidth = 100;

//	MusicVolumeSlider.SetSize(CenterWidth, 1);
//	MusicVolumeSlider.SliderWidth = 100;
//	MusicVolumeSlider.WinLeft = CenterPos;

	SoundVolumeSlider.SetSize(CenterWidth, 1);
	SoundVolumeSlider.SliderWidth = 100;
	SoundVolumeSlider.WinLeft = CenterPos;
}

function Notify(UWindowDialogControl C, byte E)
{
	Super.Notify(C, E);

	switch(E)
	{
	case DE_Change:
		switch(C)
		{
/*		case VoiceMessagesCheck:
			VoiceMessagesChecked();
			break;*/
		case ReverseStereoCheck:
			ReverseStereoChecked();
			break;
		case Use3DHardwareCheck:
			Use3DHardwareChecked();
			break;
		case UseSurroundSoundCheck:
			SurroundSoundChecked();
			break;
		case MessageBeepCheck:
			MessageBeepChecked();
			break;
		case SoundQualityCombo:
			SoundQualityChanged();
			break;
//		case EffectChannelsCombo:
//			EffectChannelsChanged();
//			break;
//		case MusicVolumeSlider:
//			MusicVolumeChanged();
//			break;
		case SoundVolumeSlider:
			SoundVolumeChanged();
			break;
		}
	}
}

/*
 * Message Crackers
 */

function SoundQualityChanged()
{
	local bool bLowSoundQuality;
	bLowSoundQuality = bool(SoundQualityCombo.GetSelectedIndex());
	bLowSoundQuality = !bLowSoundQuality;
	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice LowSoundQuality "$bLowSoundQuality);
}

/*
function EffectChannelsChanged()
{
	ConfirmChannels = MessageBox(ConfirmChannelsTitle, ConfirmChannelsText, MB_OK, MB_OK, MR_OK);
}

function MessageBoxDone(UWindowMessageBox W, MessageBoxResult Result)
{
	local int channels, oldchannels;
	if(W == ConfirmChannels)
	{
		ConfirmChannels = None;
		if(Result == MR_OK)
		{
			switch(EffectChannelsCombo.GetSelectedIndex())
			{
				case 0:
					channels = 16;
					break;
				case 1:
					channels = 24;
					break;
				case 2:
					channels = 32;
					break;
			}
			GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice EffectsChannels"@channels);
		}
		else
		{
			oldchannels = int(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.AudioDevice EffectsChannels"));
			switch(oldchannels)
			{
				case 16:
					EffectChannelsCombo.SetSelectedIndex(0);
					break;
				case 24:
					EffectChannelsCombo.SetSelectedIndex(1);
					break;
				case 32:
					EffectChannelsCombo.SetSelectedIndex(2);
					break;
				default:
					EffectChannelsCombo.SetSelectedIndex(0);
					GetPlayerOwner().ConsoleCommand("set ini Engine.Engine.AudioDevice EffectsChannels 16");
					break;
			}
		}
	}
}
*/

function MessageBoxDone(UWindowMessageBox W, MessageBoxResult Result)
{
	if(Result != MR_Yes)
	{
		switch(W)
		{
		case ConfirmHardware:
			Use3DHardwareCheck.bChecked = False;
			Hardware3DSet();
			ConfirmHardware = None;
			break;
		case ConfirmSurround:
			UseSurroundSoundCheck.bChecked = False;
			SurroundSoundSet();
			ConfirmSurround = None;
			break;
		}
	}
}

/*function VoiceMessagesChecked()
{
	GetPlayerOwner().bNoVoices = !VoiceMessagesCheck.bChecked;
}*/

function ReverseStereoChecked()
{
	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice ReverseStereo "$ReverseStereoCheck.bChecked);
}

function Use3DHardwareChecked()
{
	Hardware3DSet();

	if(Use3DHardwareCheck.bChecked)
		ConfirmHardware = MessageBox(ConfirmHardwareTitle, ConfirmHardwareText, MB_YesNo, MR_No, MR_None);
}

function Hardware3DSet()
{
	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice Use3dHardware "$Use3DHardwareCheck.bChecked);
}

function SurroundSoundChecked()
{
	SurroundSoundSet();
	if(UseSurroundSoundCheck.bChecked)
		ConfirmSurround = MessageBox(ConfirmSurroundTitle, ConfirmSurroundText, MB_YesNo, MR_No, MR_None);
}

function SurroundSoundSet()
{
	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice UseSurround "$UseSurroundSoundCheck.bChecked);
}

function MessageBeepChecked()
{
	GetPlayerOwner().bMessageBeep = MessageBeepCheck.bChecked;
}

//function MusicVolumeChanged()
//{
//	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice MusicVolume "$MusicVolumeSlider.Value);
//}

function SoundVolumeChanged()
{
	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice SoundVolume "$SoundVolumeSlider.Value);
}

function SaveConfigs()
{
	Super.SaveConfigs();
	GetPlayerOwner().SaveConfig();
}

defaultproperties
{
     SoundQualityText="Sound Quality"
     SoundQualityHelp="Use low sound quality to improve game performance on machines with less than 32 Mb memory."
     Details(0)="Low"
     Details(1)="High"
     SoundVolumeText="Sound Volume"
     SoundVolumeHelp="Increase or decrease sound effects volume."
     ReverseStereoText="Reverse Stereo"
     ReverseStereoHelp="Swap left and right speaker outputs."
     Use3DHardwareText="Use 3D audio hardware card."
     Use3DHardwareHelp="If checked, allows capable 3D audio cards for richer environmental sound."
     UseSurroundSoundText="Use Surround Sound"
     UseSurroundSoundHelp="If checked, Rune will use your digital receiver for better surround sound."
     MessageBeepText="Message Beep"
     MessageBeepHelp="If checked, you will hear a beep sound when a chat message is received."
     ConfirmHardwareTitle="Confirm Use 3D Sound Hardware"
     ConfirmHardwareText="The hardware 3D sound feature requires you have a 3D sound card supporting A3D or EAX.  Enabling this option can also cause your performance to degrade severely in some cases.\n\nAre you sure you want to enable this feature?"
     ConfirmSurroundTitle="Confirm Use Surround Sound"
     ConfirmSurroundText="The surround sound feature requires you have a compatible surround sound receiver connected to your sound card.  Enabling this option without the appropriate receiver can cause anomalies in sound performance.\n\nAre you sure you want to enable this feature?"
     ControlOffset=25.000000
}
