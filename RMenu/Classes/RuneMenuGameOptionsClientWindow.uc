class RuneMenuGameOptionsClientWindow extends RuneMenuPageWindow;

// Weapon Flash
var UWindowCheckbox PainFlashCheck;
var localized string PainFlashText;
var localized string PainFlashHelp;

/*
// Weapon Hand
var UWindowComboControl WeaponHandCombo;
var localized string WeaponHandText;
var localized string WeaponHandHelp;

var localized string LeftName;
var localized string CenterName;
var localized string RightName;
var localized string HiddenName;
*/

// Dodging
var UWindowCheckbox DodgingCheck;
var localized string DodgingText;
var localized string DodgingHelp;

// Subtitles
var UWindowCheckbox SubtitleCheck;
var localized string SubtitleText;
var localized string SubtitleHelp;

// Autopickup
var UWindowCheckbox AutopickupCheck;
var localized string AutopickupText;
var localized string AutopickupHelp;

// Game Speed
var UWindowHSliderControl SpeedSlider;
var localized string SpeedText;
var localized string SpeedHelp;

// Reduced Gore
var UWindowComboControl GoreCombo;
var localized string GoreText;
var localized string GoreHelp;
var localized string GoreLevels[3];

// Debris chunks
var UWindowHSliderControl DebrisSlider;
var localized string DebrisText;
var localized string DebrisHelp;

// Hud Translucency
var UWindowHSliderControl HudAlphaSlider;
var localized string HudAlphaText;
var localized string HudAlphaHelp;

// Game HUD
var UWindowCheckbox RuneHudCheck;
var localized string RuneHudText;
var localized string RuneHudHelp;

// Local Logging
//var UWindowCheckbox LocalCheck;
//var localized string LocalText;
//var localized string LocalHelp;

// Context Help
var UWindowCheckbox ContextHelpCheck;
var localized string ContextHelpText;
var localized string ContextHelpHelp;

var UWindowSmallButton AdvancedButton;
var localized string AdvancedText;
var localized string AdvancedHelp;

var globalconfig bool bShowGoreControl;

var float ControlOffset;

function Created()
{
	local int ControlWidth, ControlLeft, ControlRight;
	local int CenterWidth, CenterPos;
	local int I, S;

	Super.Created();

	ControlWidth = WinWidth/2.5;
	ControlLeft = (WinWidth/2 - ControlWidth)/2;
	ControlRight = WinWidth/2 + ControlLeft;

	CenterWidth = (WinWidth/4)*3;
	CenterPos = (WinWidth - CenterWidth)/2;

/* RUNE:  Handedness isn't an issue
	// Weapon Hand
	WeaponHandCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, ControlOffset, CenterWidth, 1));
	WeaponHandCombo.SetText(WeaponHandText);
	WeaponHandCombo.SetHelpText(WeaponHandHelp);
	WeaponHandCombo.SetFont(F_Normal);
	WeaponHandCombo.SetEditable(False);
	WeaponHandCombo.AddItem(LeftName, "Left");
	WeaponHandCombo.AddItem(CenterName, "Center");
	WeaponHandCombo.AddItem(RightName, "Right");
	WeaponHandCombo.AddItem(HiddenName, "Hidden");
	switch(GetPlayerOwner().Handedness)
	{
		case -1: WeaponHandCombo.SetSelectedIndex(2); break;
		case 0: WeaponHandCombo.SetSelectedIndex(1); break;
		case 1: WeaponHandCombo.SetSelectedIndex(0); break;
		case 2: WeaponHandCombo.SetSelectedIndex(3); break;
		default: WeaponHandCombo.SetSelectedIndex(2); break;
	}
	ControlOffset += 25;
*/

	if ( class'GameInfo'.default.bAlternateMode )
		bShowGoreControl = false;

	if(bShowGoreControl)
	{
		// Reduced Gore
		GoreCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, ControlOffset, CenterWidth, 1));
		GoreCombo.SetText(GoreText);
		GoreCombo.SetHelpText(GoreHelp);
		GoreCombo.SetFont(F_Normal);
		GoreCombo.SetEditable(False);
		GoreCombo.AddItem(GoreLevels[0]);
		GoreCombo.AddItem(GoreLevels[1]);
		GoreCombo.AddItem(GoreLevels[2]);

		if(class'GameInfo'.default.bVeryLowGore)
			GoreCombo.SetSelectedIndex(2);
		else
		if(class'GameInfo'.default.bLowGore)
			GoreCombo.SetSelectedIndex(1);
		else
			GoreCombo.SetSelectedIndex(0);
		ControlOffset += 25;
	}

	// Game Speed
	if(GetLevel().Game != None)
	{
		SpeedSlider = UWindowHSliderControl(CreateControl(class'UWindowHSliderControl', CenterPos, ControlOffset, CenterWidth, 1));
		SpeedSlider.SetRange(50, 200, 5);
		S = GetLevel().Game.GameSpeed * 100.0;
		SpeedSlider.SetValue(S);
		SpeedSlider.SetText(SpeedText$" ["$S$"%]:");
		SpeedSlider.SetHelpText(SpeedHelp);
		SpeedSlider.SetFont(F_Normal);
		ControlOffset += 25;
	}

	// Dodging
	DodgingCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', ControlLeft, ControlOffset, ControlWidth, 1));
	DodgingCheck.bChecked = (GetPlayerOwner().DodgeClickTime > 0);
	DodgingCheck.SetText(DodgingText);
	DodgingCheck.SetHelpText(DodgingHelp);
	DodgingCheck.SetFont(F_Normal);
	ControlOffset += 25;

	// Autopickup
	AutopickupCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', ControlLeft, ControlOffset, ControlWidth, 1));
	AutopickupCheck.bChecked = class'GameInfo'.default.bAutoPickup;
	AutopickupCheck.SetText(AutopickupText);
	AutopickupCheck.SetHelpText(AutopickupHelp);
	AutopickupCheck.SetFont(F_Normal);
	ControlOffset += 25;

	// Subtitles
	SubtitleCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', ControlLeft, ControlOffset, ControlWidth, 1));
	SubtitleCheck.bChecked = class'GameInfo'.default.bSubtitles;
	SubtitleCheck.SetText(SubtitleText);
	SubtitleCheck.SetHelpText(SubtitleHelp);
	SubtitleCheck.SetFont(F_Normal);
	ControlOffset += 25;

	// Weapon Flash
	PainFlashCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', ControlRight, ControlOffset, ControlWidth, 1));
	if (!GetPlayerOwner().bNoFlash)
		PainFlashCheck.bChecked = true;
	PainFlashCheck.SetText(PainFlashText);
	PainFlashCheck.SetHelpText(PainFlashHelp);
	PainFlashCheck.SetFont(F_Normal);
	ControlOffset += 25;

	// Debris slider
	DebrisSlider = UWindowHSliderControl(CreateControl(class'UWindowHSliderControl', CenterPos, ControlOffset, CenterWidth, 1));
	DebrisSlider.bNoSlidingNotify = True;
	DebrisSlider.SetRange(0, 100, 10);
	DebrisSlider.SetText(DebrisText);
	DebrisSlider.SetHelpText(DebrisHelp);
	DebrisSlider.SetFont(F_Normal);
	DebrisSlider.SetValue(class'GameInfo'.default.DebrisPercentage*100);
	ControlOffset += 25;

	// Hud alpha
	HudAlphaSlider = UWindowHSliderControl(CreateControl(class'UWindowHSliderControl', CenterPos, ControlOffset, CenterWidth, 1));
	HudAlphaSlider.bNoSlidingNotify = True;
	HudAlphaSlider.SetRange(0, 100, 10);
	HudAlphaSlider.SetText(HudAlphaText);
	HudAlphaSlider.SetHelpText(HudAlphaHelp);
	HudAlphaSlider.SetFont(F_Normal);
	HudAlphaSlider.SetValue(GetPlayerOwner().HudTranslucency*100);
	ControlOffset += 25;

	// Rune Hud
	RuneHudCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', CenterPos, ControlOffset, CenterWidth, 1));
	switch(class'Hud'.Default.HudMode)
	{
		case 0:	RuneHudCheck.bChecked = false;	break;
		case 1:	RuneHudCheck.bChecked = true;	break;
	}
	RuneHudCheck.SetText(RuneHudText);
	RuneHudCheck.SetHelpText(RuneHudHelp);
	RuneHudCheck.SetFont(F_Normal);
	ControlOffset += 25;

/*	// Local Logging
	LocalCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', CenterPos, ControlOffset, CenterWidth, 1));
	LocalCheck.SetText(LocalText);
	LocalCheck.SetHelpText(LocalHelp);
	LocalCheck.SetFont(F_Normal);
//	LocalCheck.Align = TA_Right;
	if (GetLevel().Game != None)
		LocalCheck.bChecked = GetLevel().Game.Default.bLocalLog;
	else
		LocalCheck.bDisabled = True;
	ControlOffset += 25;
*/

	// Context Help
	ContextHelpCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', CenterPos, ControlOffset, CenterWidth, 1));
	ContextHelpCheck.bChecked = RuneRootWindow(Root).StatusBar.bContextHelp;
	ContextHelpCheck.SetText(ContextHelpText);
	ContextHelpCheck.SetHelpText(ContextHelpHelp);
	ContextHelpCheck.SetFont(F_Normal);
//	ContextHelpCheck.Align = TA_Left;
	ControlOffset += 25;

	// Advanced Options
	AdvancedButton = UWindowSmallButton(CreateControl(class'UWindowSmallButton', ControlRight, ControlOffset, 48, 16));
	AdvancedButton.SetText(AdvancedText);
	AdvancedButton.SetFont(F_Normal);
	AdvancedButton.SetHelpText(AdvancedHelp);
	ControlOffset += 25;
}

function AfterCreate()
{
	Super.AfterCreate();
	DesiredWidth = 220;
	DesiredHeight = ControlOffset;
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

	PainFlashCheck.SetSize(CenterWidth-100+16, 1);
	PainFlashCheck.WinLeft = CenterPos;

	DodgingCheck.SetSize(CenterWidth-100+16, 1);
	DodgingCheck.WinLeft = CenterPos;

	AutopickupCheck.SetSize(CenterWidth-100+16, 1);
	AutopickupCheck.WinLeft = CenterPos;

	SubtitleCheck.SetSize(CenterWidth-100+16, 1);
	SubtitleCheck.WinLeft = CenterPos;

/*	WeaponHandCombo.SetSize(CenterWidth, 1);
	WeaponHandCombo.WinLeft = CenterPos;
	WeaponHandCombo.EditBoxWidth = 100;*/

	if(SpeedSlider != None)
	{
		SpeedSlider.SetSize(CenterWidth, 1);
		SpeedSlider.SliderWidth = 100;
		SpeedSlider.WinLeft = CenterPos;
	}

	if(GoreCombo != None)
	{
		GoreCombo.SetSize(CenterWidth, 1);
		GoreCombo.WinLeft = CenterPos;
		GoreCombo.EditBoxWidth = 100;
	}

	DebrisSlider.SetSize(CenterWidth, 1);
	DebrisSlider.SliderWidth = 100;
	DebrisSlider.WinLeft = CenterPos;

	HudAlphaSlider.SetSize(CenterWidth, 1);
	HudAlphaSlider.SliderWidth = 100;
	HudAlphaSlider.WinLeft = CenterPos;

	RuneHudCheck.SetSize(CenterWidth-100+16, 1);
	RuneHudCheck.WinLeft = CenterPos;

/*	LocalCheck.SetSize(CenterWidth-100+16, 1);
	LocalCheck.WinLeft = CenterPos;*/

	ContextHelpCheck.SetSize(CenterWidth-100+16, 1);
	ContextHelpCheck.WinLeft = CenterPos;

	AdvancedButton.AutoWidth(C);
	AdvancedButton.WinLeft = CenterPos + CenterWidth - 100;
}

function Notify(UWindowDialogControl C, byte E)
{
	switch(E)
	{
	case DE_Click:
		switch(C)
		{
		case AdvancedButton:
			AdvancedChange();
			break;
		}
		break;
	case DE_Change:
		switch(C)
		{
		case PainFlashCheck:
			PainFlashChecked();
			break;
		case SubtitleCheck:
			SubtitleChecked();
			break;
		case DodgingCheck:
			DodgingChecked();
			break;
//		case WeaponHandCombo:
//			WeaponHandChanged();
//			break;
		case SpeedSlider:
			SpeedChanged();
			break;
		case GoreCombo:
			GoreChanged();
			break;
		case DebrisSlider:
			DebrisChanged();
			break;
		case AutopickupCheck:
			AutopickupChanged();
			break;
		case HudAlphaSlider:
			HudAlphaChanged();
			break;
		case RuneHudCheck:
			RuneHudChanged();
			break;
//		case LocalCheck:
//			LocalChecked();
//			break;
		case ContextHelpCheck:
			ContextHelpChecked();
			break;
		}
	}
	Super.Notify(C, E);
}

function PainFlashChecked()
{
	GetPlayerOwner().bNoFlash = !PainFlashCheck.bChecked;
}

function SubtitleChecked()
{
	if (GetLevel().Game != None)
	{
		GetLevel().Game.bSubtitles = SubtitleCheck.bChecked;
	}
	class'GameInfo'.default.bSubtitles = SubtitleCheck.bChecked;
}

/*
function WeaponHandChanged()
{
	GetPlayerOwner().ChangeSetHand(WeaponHandCombo.GetValue2());
}
*/

function SpeedChanged()
{
	local int S;

	S = SpeedSlider.GetValue();
	SpeedSlider.SetText(SpeedText$" ["$S$"%]:");
	if(GetLevel().Game != None)
		GetLevel().Game.SetGameSpeed(float(S) / 100.0);
}

function DodgingChecked()
{
	if (DodgingCheck.bChecked)
		GetPlayerOwner().DodgeClickTime = 0.25;
	else
		GetPlayerOwner().DodgeClickTime = 0;
}

function GoreChanged()
{
	local bool bLowGore, bVeryLowGore;

	switch(GoreCombo.GetSelectedIndex())
	{
	case 0:
		bLowGore = False;
		bVeryLowGore = False;
		break;
	case 1:
		bLowGore = True;
		bVeryLowGore = False;
		break;
	case 2:
		bLowGore = True;
		bVeryLowGore = True;
		break;
	}

	if (GetLevel().Game != None)
	{
		GetLevel().Game.bLowGore = bLowGore;
		GetLevel().Game.bVeryLowGore = bVeryLowGore;
	}

	class'GameInfo'.default.bLowGore = bLowGore;
	class'GameInfo'.default.bVeryLowGore = bVeryLowGore;
}

function DebrisChanged()
{
	if (GetLevel().Game != None)
	{
		GetLevel().Game.DebrisPercentage = DebrisSlider.Value*0.01;
	}

	class'GameInfo'.default.DebrisPercentage = DebrisSlider.Value*0.01;
}

function HudAlphaChanged()
{
	GetPlayerOwner().HudTranslucency = HudAlphaSlider.Value*0.01;
}

function AutopickupChanged()
{
	if (GetLevel().Game != None)
	{
		GetLevel().Game.bAutoPickup = AutopickupCheck.bChecked;
	}

	class'GameInfo'.default.bAutoPickup = AutopickupCheck.bChecked;
}

function RuneHudChanged()
{
	if (GetPlayerOwner().myHud != None)
	{
		if (RuneHudCheck.bChecked)
			GetPlayerOwner().myHud.HudMode = 1;
		else
			GetPlayerOwner().myHud.HudMode = 0;
	}

	if (RuneHudCheck.bChecked)
		class'HUD'.Default.HudMode = 1;
	else
		class'HUD'.Default.HudMode = 0;
}

/*function LocalChecked()
{
	if (GetLevel().Game != None)
		GetLevel().Game.bLocalLog = LocalCheck.bChecked;
}*/

function ContextHelpChecked()
{
	if (RuneRootWindow(Root)!=None)
	{
		if (RuneRootWindow(Root).StatusBar!=None)
		{
			RuneRootWindow(Root).StatusBar.SetHelp("");
			RuneRootWindow(Root).StatusBar.bContextHelp = ContextHelpCheck.bChecked;
		}
	}
}

function AdvancedChange()
{
	GetPlayerOwner().ConsoleCommand("PREFERENCES");
}

function SaveConfigs()
{
	GetPlayerOwner().SaveConfig();
	if ( GetLevel().Game != None )
	{
		GetLevel().Game.SaveConfig();
		GetLevel().Game.GameReplicationInfo.SaveConfig();
	}
	class'GameInfo'.static.StaticSaveConfig();

	if ( GetPlayerOwner().myHud != None)
	{
		GetPlayerOwner().myHud.SaveConfig();
	}
	class'Hud'.static.StaticSaveConfig();
	RuneRootWindow(Root).StatusBar.SaveConfig();
	Super.SaveConfigs();
}

defaultproperties
{
     PainFlashText="Pain flashes"
     PainFlashHelp="If checked, your screen will flash when receive pain."
     DodgingText="Dodging"
     DodgingHelp="If checked, double tapping the movement keys (forward, back, and strafe left or right) will result in a fast dodge move."
     SubtitleText="Subtitles"
     SubtitleHelp="If checked, will display subtitles on dialog."
     AutopickupText="Auto Pickup"
     AutopickupHelp="Automatically pickup objects in the world rather than hitting the Use key"
     SpeedText="Game Speed"
     SpeedHelp="Game speed: 100 = normal"
     GoreText="Gore Level"
     GoreHelp="Choose the level of gore you wish to see in the game."
     GoreLevels(0)="Normal"
     GoreLevels(1)="Reduced"
     GoreLevels(2)="Ultra-Low"
     DebrisText="Amount of Debris"
     DebrisHelp="Higher values give more debris chunks"
     HudAlphaText="HUD Opacity"
     HudAlphaHelp="Opacity of the heads up display, full will be completely opaque"
     RuneHudText="Game interface"
     RuneHudHelp="If checked, the game interface will be displayed, showing Health, RunePower, etc."
     ContextHelpText="Context Sensitive Help"
     ContextHelpHelp="If checked, context sensitive help will be displayed."
     AdvancedText="Advanced Options"
     AdvancedHelp="Allows you to edit advanced options."
     bShowGoreControl=True
     ControlOffset=20.000000
}
