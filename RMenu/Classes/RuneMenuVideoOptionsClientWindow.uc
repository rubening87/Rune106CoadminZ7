class RuneMenuVideoOptionsClientWindow extends RuneMenuPageWindow;

// Driver
var bool bInitialized;
var UWindowLabelControl DriverLabel;
var UWindowLabelControl DriverDesc;
var UWindowSmallButton DriverButton;
var localized string DriverText;
var localized string DriverHelp;
var localized string DriverButtonText;
var localized string DriverButtonHelp;

// Resolution
var UWindowComboControl ResolutionCombo;
var localized string ResolutionText;
var localized string ResolutionHelp;

var string OldSettings;

// Color Depth
var UWindowComboControl ColorDepthCombo;
var localized string ColorDepthText;
var localized string ColorDepthHelp;
var localized string BitsText;

// Texture Detail
var UWindowComboControl TextureDetailCombo;
var localized string TextureDetailText;
var localized string TextureDetailHelp;
var localized string Details[3];
var int OldTextureDetail;

// Skin Detail
var UWindowComboControl SkinDetailCombo;
var localized string SkinDetailText;
var localized string SkinDetailHelp;
var int OldSkinDetail;

// Brightness
var UWindowHSliderControl BrightnessSlider;
var localized string BrightnessText;
var localized string BrightnessHelp;

// Menu Translucency
//var UWindowHSliderControl MenuAlphaSlider;
//var localized string MenuAlphaText;
//var localized string MenuAlphaHelp;

// GUI Skin
//var UWindowComboControl GuiSkinCombo;
//var localized string GuiSkinText;
//var localized string GuiSkinHelp;

var float ControlOffset;

var UWindowMessageBox ConfirmSettings, ConfirmDriver, ConfirmWorldTextureDetail, ConfirmSkinTextureDetail;
var localized string ConfirmSettingsTitle;
var localized string ConfirmSettingsText;
var localized string ConfirmSettingsCancelTitle;
var localized string ConfirmSettingsCancelText;
var localized string ConfirmTextureDetailTitle;
var localized string ConfirmTextureDetailText;
var localized string ConfirmDriverTitle;
var localized string ConfirmDriverText;

// Show Decals
var UWindowCheckbox ShowDecalsCheck;
var localized string ShowDecalsText;
var localized string ShowDecalsHelp;

// Fractal Animation
var UWindowCheckbox FractalCheck;
var localized string FractalText;
var localized string FractalHelp;

// Lighting
var UWindowCheckbox LightingCheck;
var localized string LightingText;
var localized string LightingHelp;

// Min Desired Frame Rate
var UWindowEditControl MinFramerateEdit;
var localized string MinFramerateText;
var localized string MinFramerateHelp;

// Dynamic Lights
var UWindowCheckbox DynamicLightsCheck;
var localized string DynamicLightsText;
var localized string DynamicLightsHelp;

// Particle complexity
//var UWindowHSliderControl ParticleSlider;
//var localized string ParticleText;
//var localized string ParticleHelp;

// LOD percentage
var UWindowHSliderControl LodPercentSlider;
var localized string LodPercentText;
var localized string LodPercentHelp;

// FogDistance
//var UWindowHSliderControl FogSlider;
//var localized string FogText;
//var localized string FogHelp;

// Ragnar Shadows
var localized string ShadowTextNone;
var localized string ShadowTextBlob;
var localized string ShadowTextProjected;
var UWindowComboControl RagnarShadowCombo;
var localized string RagnarShadowText;
var localized string RagnarShadowHelp;

// Actor Shadows
var UWindowComboControl ActorShadowCombo;
var localized string ActorShadowText;
var localized string ActorShadowHelp;


function Created()
{
	local bool bLowSoundQuality;
	local int MusicVolume, SoundVolume;
	local int ControlWidth, ControlLeft, ControlRight;
	local int CenterWidth, CenterPos;
	local int i, MinRate, temp;
	local string NextLook, NextDesc;
	local string VideoDriverClassName, ClassLeft, ClassRight, VideoDriverDesc;

	Super.Created();

	ControlWidth = WinWidth/2.5;
	ControlLeft = (WinWidth/2 - ControlWidth)/2;
	ControlRight = WinWidth/2 + ControlLeft;

	CenterWidth = (WinWidth/4)*3;
	CenterPos = (WinWidth - CenterWidth)/2;
	
	VideoDriverClassName = GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.GameRenderDevice Class");
	i = InStr(VideoDriverClassName, "'");
	// Get class name from class'...'
	if(i != -1)
	{
		VideoDriverClassName = Mid(VideoDriverClassName, i+1);
		i = InStr(VideoDriverClassName, "'");
		VideoDriverClassName = Left(VideoDriverClassName, i);
		ClassLeft = Left(VideoDriverClassName, InStr(VideoDriverClassName, "."));
		ClassRight = Mid(VideoDriverClassName, InStr(VideoDriverClassName, ".") + 1);
		VideoDriverDesc = Localize(ClassRight, "ClassCaption", ClassLeft);
	}
	else
		VideoDriverDesc = "VideoDriverClassName";

	// Driver
	DriverLabel = UWindowLabelControl(CreateControl(class'UWindowLabelControl', ControlLeft, ControlOffset, ControlWidth, 1));
	DriverLabel.SetText(DriverText);
	DriverLabel.SetHelpText(DriverHelp);
	DriverLabel.SetFont(F_Normal);

	DriverDesc = UWindowLabelControl(CreateControl(class'UWindowLabelControl', ControlRight, ControlOffset, ControlWidth, 1));
	DriverDesc.SetText(VideoDriverDesc);
	DriverDesc.SetHelpText(DriverHelp);
	DriverDesc.SetFont(F_Normal);
	ControlOffset += 17;

	DriverButton = UWindowSmallButton(CreateControl(class'UWindowSmallButton', ControlRight, ControlOffset, 48, 16));
	DriverButton.SetText(DriverButtonText);
	DriverButton.SetFont(F_Normal);
	DriverButton.SetHelpText(DriverButtonHelp);
	ControlOffset += 25;

	// Resolution
	ResolutionCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, ControlOffset, CenterWidth, 1));
	ResolutionCombo.SetText(ResolutionText);
	ResolutionCombo.SetHelpText(ResolutionHelp);
	ResolutionCombo.SetFont(F_Normal);
	ResolutionCombo.SetEditable(False);
	ControlOffset += 25;

	// Color depth
	ColorDepthCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, ControlOffset, CenterWidth, 1));
	ColorDepthCombo.SetText(ColorDepthText);
	ColorDepthCombo.SetHelpText(ColorDepthHelp);
	ColorDepthCombo.SetFont(F_Normal);
	ColorDepthCombo.SetEditable(False);
	ControlOffset += 25;

	// Texture Detail
	TextureDetailCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, ControlOffset, CenterWidth, 1));
	TextureDetailCombo.SetText(TextureDetailText);
	TextureDetailCombo.SetHelpText(TextureDetailHelp);
	TextureDetailCombo.SetFont(F_Normal);
	TextureDetailCombo.SetEditable(False);
	ControlOffset += 25;

	// The display names are localized.  These strings match the enums in UnCamMgr.cpp.
	TextureDetailCombo.AddItem(Details[0], "High");
	TextureDetailCombo.AddItem(Details[1], "Medium");
	TextureDetailCombo.AddItem(Details[2], "Low");

	// Skin Detail
	SkinDetailCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, ControlOffset, CenterWidth, 1));
	SkinDetailCombo.SetText(SkinDetailText);
	SkinDetailCombo.SetHelpText(SkinDetailHelp);
	SkinDetailCombo.SetFont(F_Normal);
	SkinDetailCombo.SetEditable(False);
	SkinDetailCombo.AddItem(Details[0], "High");
	SkinDetailCombo.AddItem(Details[1], "Medium");
	SkinDetailCombo.AddItem(Details[2], "Low");
	ControlOffset += 25;

	// Brightness
	BrightnessSlider = UWindowHSliderControl(CreateControl(class'UWindowHSliderControl', CenterPos, ControlOffset, CenterWidth, 1));
	BrightnessSlider.bNoSlidingNotify = True;
	BrightnessSlider.SetRange(2, 10, 1);
	BrightnessSlider.SetText(BrightnessText);
	BrightnessSlider.SetHelpText(BrightnessHelp);
	BrightnessSlider.SetFont(F_Normal);
	ControlOffset += 25;

	// MenuAlpha
//	MenuAlphaSlider = UWindowHSliderControl(CreateControl(class'UWindowHSliderControl', CenterPos, ControlOffset, CenterWidth, 1));
//	MenuAlphaSlider.bNoSlidingNotify = True;
//	MenuAlphaSlider.SetRange(25, 100, 5);
//	MenuAlphaSlider.SetText(MenuAlphaText);
//	MenuAlphaSlider.SetHelpText(MenuAlphaHelp);
//	MenuAlphaSlider.SetFont(F_Normal);
//	ControlOffset += 25;

	// Particle Slider
//	ParticleSlider = UWindowHSliderControl(CreateControl(class'UWindowHSliderControl', CenterPos, ControlOffset, CenterWidth, 1));
//	ParticleSlider.bNoSlidingNotify = True;
//	ParticleSlider.SetRange(0, 100, 10);
//	ParticleSlider.SetText(ParticleText);
//	ParticleSlider.SetHelpText(ParticleHelp);
//	ParticleSlider.SetFont(F_Normal);
//	ControlOffset += 25;

	// LOD Percent
	LodPercentSlider = UWindowHSliderControl(CreateControl(class'UWindowHSliderControl', CenterPos, ControlOffset, CenterWidth, 1));
	LodPercentSlider.bNoSlidingNotify = True;
	LodPercentSlider.SetRange(0, 100, 10);
	LodPercentSlider.SetText(LodPercentText$" ["$int(LodPercentSlider.GetValue())$"%]:");
	LodPercentSlider.SetHelpText(LodPercentHelp);
	LodPercentSlider.SetFont(F_Normal);
	ControlOffset += 25;

/*	// Fog slider
	FogSlider = UWindowHSliderControl(CreateControl(class'UWindowHSliderControl', CenterPos, ControlOffset, CenterWidth, 1));
	FogSlider.bNoSlidingNotify = True;
	FogSlider.SetRange(0, 1000, 10);
	temp = int(float(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.ViewportManager FogDistPercentage"))*100);
	FogSlider.SetValue(temp);
	FogSlider.SetText(FogText$" ["$temp$"%]:");
	FogSlider.SetHelpText(FogHelp);
	FogSlider.SetFont(F_Normal);
	ControlOffset += 25;*/

	// Player Shadows
	RagnarShadowCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, ControlOffset, CenterWidth, 1));
	RagnarShadowCombo.SetText(RagnarShadowText);
	RagnarShadowCombo.SetHelpText(RagnarShadowHelp);
	RagnarShadowCombo.SetFont(F_Normal);
	RagnarShadowCombo.SetEditable(False);
	RagnarShadowCombo.AddItem(ShadowTextNone, "0");
	RagnarShadowCombo.AddItem(ShadowTextBlob, "1");
	RagnarShadowCombo.AddItem(ShadowTextProjected, "2");
	ControlOffset += 25;

	// Actor Shadows
	ActorShadowCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, ControlOffset, CenterWidth, 1));
	ActorShadowCombo.SetText(ActorShadowText);
	ActorShadowCombo.SetHelpText(ActorShadowHelp);
	ActorShadowCombo.SetFont(F_Normal);
	ActorShadowCombo.SetEditable(False);
	ActorShadowCombo.AddItem(ShadowTextNone, "0");
	ActorShadowCombo.AddItem(ShadowTextBlob, "1");
	ActorShadowCombo.AddItem(ShadowTextProjected, "2");
	ControlOffset += 25;

/*	GuiSkinCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, ControlOffset, CenterWidth, 1));
	GuiSkinCombo.SetText(GuiSkinText);
	GuiSkinCombo.SetHelpText(GuiSkinHelp);
	GuiSkinCombo.SetFont(F_Normal);
	GuiSkinCombo.SetEditable(False);
	ControlOffset += 25;
	i=0;
	GetPlayerOwner().GetNextIntDesc("UWindowLookAndFeel", 0, NextLook, NextDesc);
	while( (NextLook != "") && (i < 32) )
	{
		GuiSkinCombo.AddItem(NextDesc, NextLook);
		i++;
		GetPlayerOwner().GetNextIntDesc("UWindowLookAndFeel", i, NextLook, NextDesc);
	}
	GuiSkinCombo.Sort();*/

	// Min Desired Framerate
	MinFramerateEdit = UWindowEditControl(CreateControl(class'UWindowEditControl', CenterPos, ControlOffset, CenterWidth, 1));
	MinFramerateEdit.SetText(MinFramerateText);
	MinFramerateEdit.SetHelpText(MinFramerateHelp);
	MinFramerateEdit.SetFont(F_Normal);
	MinFramerateEdit.SetNumericOnly(True);
	MinFramerateEdit.SetMaxLength(3);
	MinFramerateEdit.Align = TA_Left;
	MinRate = int(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.ViewportManager MinDesiredFrameRate"));
	MinFramerateEdit.SetValue(string(MinRate));
	ControlOffset += 25;

	// Show Decals
	ShowDecalsCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', CenterPos, ControlOffset, CenterWidth, 1));
	ShowDecalsCheck.bChecked = bool(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.ViewportManager Decals"));
	ShowDecalsCheck.SetText(ShowDecalsText);
	ShowDecalsCheck.SetHelpText(ShowDecalsHelp);
	ShowDecalsCheck.SetFont(F_Normal);
	ShowDecalsCheck.Align = TA_Left;
	ControlOffset += 25;

	// Fractal Animation
	FractalCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', CenterPos, ControlOffset, CenterWidth, 1));
	FractalCheck.bChecked = bool(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.ViewportManager NoFractalAnim"));
	FractalCheck.bChecked = !FractalCheck.bChecked;
	FractalCheck.SetText(FractalText);
	FractalCheck.SetHelpText(FractalHelp);
	FractalCheck.SetFont(F_Normal);
	FractalCheck.Align = TA_Left;
	ControlOffset += 25;

	// Fractal Animation
	LightingCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', CenterPos, ControlOffset, CenterWidth, 1));
	LightingCheck.bChecked = bool(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.ViewportManager NoLighting"));
	LightingCheck.bChecked = !LightingCheck.bChecked;
	LightingCheck.SetText(LightingText);
	LightingCheck.SetHelpText(LightingHelp);
	LightingCheck.SetFont(F_Normal);
	LightingCheck.Align = TA_Left;
	ControlOffset += 25;

	// Dynamic Lights
	DynamicLightsCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', CenterPos, ControlOffset, CenterWidth, 1));
	DynamicLightsCheck.bChecked = bool(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.ViewportManager NoDynamicLights"));
	DynamicLightsCheck.bChecked = !DynamicLightsCheck.bChecked;
	DynamicLightsCheck.SetText(DynamicLightsText);
	DynamicLightsCheck.SetHelpText(DynamicLightsHelp);
	DynamicLightsCheck.SetFont(F_Normal);
	DynamicLightsCheck.Align = TA_Left;
	ControlOffset += 25;

	LoadAvailableSettings();
}

function AfterCreate()
{
	Super.AfterCreate();

	DesiredWidth = 220;
	DesiredHeight = ControlOffset;
}

function LoadAvailableSettings()
{
	local float Brightness;
	local int P;
	local string CurrentDepth;
	local string ParseString;
	local float temp;
	local string ResString;
	local float ResX, ResY;
	local int ResP;

	bInitialized = False;

	// Load available video drivers and current video driver here.

	ResolutionCombo.Clear();
	ParseString = GetPlayerOwner().ConsoleCommand("GetRes");
	P = InStr(ParseString, " ");
	while (P != -1) 
	{
/*		ResString = Left(ParseString, P);
		ResP=InStr(ResString,"x");
		if (ResP != -1)
		{	// Validate resolution
			ResX = float(Left(ResString, ResP));
			ResY = float(Mid(ResString, ResP+1));
			if (ResY/ResX == 0.75 && ResX>=512)
			{
				ResolutionCombo.AddItem(Left(ParseString, P));
			}
			else
			{
				log("disallowing non 4:3 res:"@ResX@ResY@ResY/ResX);
			}
		}
		else
		{*/
			ResolutionCombo.AddItem(Left(ParseString, P));
/*		}*/

		ParseString = Mid(ParseString, P+1);
		P = InStr(ParseString, " ");
	}
	ResolutionCombo.AddItem(ParseString);
	ResolutionCombo.SetValue(GetPlayerOwner().ConsoleCommand("GetCurrentRes"));

	ColorDepthCombo.Clear();
	ParseString = GetPlayerOwner().ConsoleCommand("GetColorDepths");
	P = InStr(ParseString, " ");
	while (P != -1) 
	{
		ColorDepthCombo.AddItem(Left(ParseString, P)@BitsText, Left(ParseString, P));
		ParseString = Mid(ParseString, P+1);
		P = InStr(ParseString, " ");
	}
	ColorDepthCombo.AddItem(ParseString@BitsText, ParseString);
	CurrentDepth = GetPlayerOwner().ConsoleCommand("GetCurrentColorDepth");
	ColorDepthCombo.SetValue(CurrentDepth@BitsText, CurrentDepth);

//	GuiSkinCombo.SetSelectedIndex(Max(GuiSkinCombo.FindItemIndex2(Root.LookAndFeelClass, True), 0));
	OldTextureDetail = Max(0, TextureDetailCombo.FindItemIndex2(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.ViewportManager TextureDetail")));
	TextureDetailCombo.SetSelectedIndex(OldTextureDetail);
	OldSkinDetail = Max(0, SkinDetailCombo.FindItemIndex2(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.ViewportManager SkinDetail")));
	SkinDetailCombo.SetSelectedIndex(OldSkinDetail);
	Brightness = int(float(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.ViewportManager Brightness")) * 10);
	BrightnessSlider.SetValue(Brightness);
//	MenuAlphaSlider.SetValue(Root.Console.MenuTranslucency*100);
//	ParticleSlider.SetValue(class'GameInfo'.default.ParticlePercentage*100);
	P = int(float(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.ViewportManager LodPercentage"))*100);
	LodPercentSlider.SetValue(P);
	LodPercentSlider.SetText(LodPercentText$" ["$P$"%]:");
//	P = int(float(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.ViewportManager FogDistPercentage"))*100);
//	FogSlider.SetValue(P);
//	FogSlider.SetText(FogText$" ["$P$"%]:");

	P = int(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.ViewportManager PlayerShadows"));
	switch(P)
	{
		case 1:
			RagnarShadowCombo.SetValue(ShadowTextBlob, "1");
			break;
		case 2:
			RagnarShadowCombo.SetValue(ShadowTextProjected, "2");
			break;
		case 0:
		default:
			RagnarShadowCombo.SetValue(ShadowTextNone, "0");
			break;
	}

	P = int(GetPlayerOwner().ConsoleCommand("get ini:Engine.Engine.ViewportManager ActorShadows"));
	switch(P)
	{
		case 1:
			ActorShadowCombo.SetValue(ShadowTextBlob, "1");
			break;
		case 2:
			ActorShadowCombo.SetValue(ShadowTextProjected, "2");
			break;
		case 0:
		default:
			ActorShadowCombo.SetValue(ShadowTextNone, "0");
			break;
	}

	bInitialized = True;
}

function ResolutionChanged(float W, float H)
{
	Super.ResolutionChanged(H, H);
	if(GetPlayerOwner().ConsoleCommand("GetCurrentRes") != ResolutionCombo.GetValue())
		LoadAvailableSettings();
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

	DriverLabel.SetSize(CenterWidth-100, 1);
	DriverLabel.WinLeft = CenterPos;

	DriverDesc.SetSize(200, 1);
	DriverDesc.WinLeft = CenterPos + CenterWidth - 100;

	DriverButton.AutoWidth(C);
	DriverButton.WinLeft = CenterPos + CenterWidth - 100;

	ResolutionCombo.SetSize(CenterWidth, 1);
	ResolutionCombo.WinLeft = CenterPos;
	ResolutionCombo.EditBoxWidth = 100;

	ColorDepthCombo.SetSize(CenterWidth, 1);
	ColorDepthCombo.WinLeft = CenterPos;
	ColorDepthCombo.EditBoxWidth = 100;

	TextureDetailCombo.SetSize(CenterWidth, 1);
	TextureDetailCombo.WinLeft = CenterPos;
	TextureDetailCombo.EditBoxWidth = 100;

	SkinDetailCombo.SetSize(CenterWidth, 1);
	SkinDetailCombo.WinLeft = CenterPos;
	SkinDetailCombo.EditBoxWidth = 100;

	BrightnessSlider.SetSize(CenterWidth, 1);
	BrightnessSlider.SliderWidth = 100;
	BrightnessSlider.WinLeft = CenterPos;

//	MenuAlphaSlider.SetSize(CenterWidth, 1);
//	MenuAlphaSlider.SliderWidth = 100;
//	MenuAlphaSlider.WinLeft = CenterPos;

//	ParticleSlider.SetSize(CenterWidth, 1);
//	ParticleSlider.SliderWidth = 100;
//	ParticleSlider.WinLeft = CenterPos;

	LodPercentSlider.SetSize(CenterWidth, 1);
	LodPercentSlider.SliderWidth = 100;
	LodPercentSlider.WinLeft = CenterPos;

//	FogSlider.SetSize(CenterWidth, 1);
//	FogSlider.SliderWidth = 100;
//	FogSlider.WinLeft = CenterPos;

	RagnarShadowCombo.SetSize(CenterWidth, 1);
	RagnarShadowCombo.WinLeft = CenterPos;
	RagnarShadowCombo.EditBoxWidth = 100;

	ActorShadowCombo.SetSize(CenterWidth, 1);
	ActorShadowCombo.WinLeft = CenterPos;
	ActorShadowCombo.EditBoxWidth = 100;

//	GuiSkinCombo.SetSize(CenterWidth, 1);
//	GuiSkinCombo.WinLeft = CenterPos;
//	GuiSkinCombo.EditBoxWidth = 100;

	ShowDecalsCheck.SetSize(CenterWidth-100+16, 1);
	ShowDecalsCheck.WinLeft = CenterPos;

	FractalCheck.SetSize(CenterWidth-100+16, 1);
	FractalCheck.WinLeft = CenterPos;

	LightingCheck.SetSize(CenterWidth-100+16, 1);
	LightingCheck.WinLeft = CenterPos;

	DynamicLightsCheck.SetSize(CenterWidth-100+16, 1);
	DynamicLightsCheck.WinLeft = CenterPos;

	MinFramerateEdit.SetSize(CenterWidth-100+30, 1);
	MinFramerateEdit.WinLeft = CenterPos;
	MinFramerateEdit.EditBoxWidth = 30;
}

function Notify(UWindowDialogControl C, byte E)
{
	Super.Notify(C, E);

	switch(E)
	{
	case DE_Click:
		switch(C)
		{
		case DriverButton:
			DriverChange();
			break;
		}
		break;
	case DE_Change:
		switch(C)
		{
		case ResolutionCombo:
		case ColorDepthCombo:
			SettingsChanged();
			break;
		case TextureDetailCombo:
			TextureDetailChanged();
			break;
		case SkinDetailCombo:
			SkinDetailChanged();
			break;
		case BrightnessSlider:
			BrightnessChanged();
			break;
//		case MenuAlphaSlider:
//			MenuAlphaChanged();
//			break;
//		case ParticleSlider:
//			ParticlesChanged();
//			break;
		case LodPercentSlider:
			LodPercentChanged();
			break;
//		case FogSlider:
//			FogChanged();
//			break;
		case RagnarShadowCombo:
			RagnarShadowChanged();
			break;
		case ActorShadowCombo:
			ActorShadowChanged();
			break;
		case ShowDecalsCheck:
			DecalsChanged();
			break;
		case FractalCheck:
			FractalChanged();
			break;
		case LightingCheck:
			LightingChanged();
			break;
		case DynamicLightsCheck:
			DynamicChanged();
			break;
		case MinFramerateEdit:
			MinFramerateChanged();
			break;
		}
		break;
	}
}

/*
 * Message Crackers
 */


function DriverChange()
{
	ConfirmDriver = MessageBox(ConfirmDriverTitle, ConfirmDriverText, MB_YesNo, MR_No);
}

function SettingsChanged()
{
	local string NewSettings;

	if(bInitialized)
	{
		OldSettings = GetPlayerOwner().ConsoleCommand("GetCurrentRes")$"x"$GetPlayerOwner().ConsoleCommand("GetCurrentColorDepth");
		NewSettings = ResolutionCombo.GetValue()$"x"$ColorDepthCombo.GetValue2();

		if(NewSettings != OldSettings)
		{
			GetPlayerOwner().ConsoleCommand("SetRes "$NewSettings);
			LoadAvailableSettings();
			ConfirmSettings = MessageBox(ConfirmSettingsTitle, ConfirmSettingsText, MB_YesNo, MR_No, MR_None, 10);
		}
	}
}

function MessageBoxDone(UWindowMessageBox W, MessageBoxResult Result)
{
	if(W == ConfirmSettings)
	{
		ConfirmSettings = None;
		if(Result != MR_Yes)
		{
			GetPlayerOwner().ConsoleCommand("SetRes "$OldSettings);
			LoadAvailableSettings();			
			MessageBox(ConfirmSettingsCancelTitle, ConfirmSettingsCancelText, MB_OK, MR_OK, MR_OK);
		}
	}
	else
	if(W == ConfirmDriver)
	{
		ConfirmDriver = None;
		if(Result == MR_Yes)
		{
			GetParent(class'UWindowFramedWindow').Close();
			Root.Console.CloseUWindow();
			GetPlayerOwner().ConsoleCommand("RELAUNCH -changevideo");
		}
	}
	if(W == ConfirmSkinTextureDetail)
	{
		if(Result == MR_Yes)
			OldSkinDetail = SkinDetailCombo.GetSelectedIndex();
		else
			SkinDetailCombo.SetSelectedIndex(OldSkinDetail);
	}
	if(W == ConfirmWorldTextureDetail)
	{
		if(Result == MR_Yes)
			OldTextureDetail = TextureDetailCombo.GetSelectedIndex();
		else
			TextureDetailCombo.SetSelectedIndex(OldTextureDetail);
	}
}

function TextureDetailChanged()
{
	if(bInitialized)
	{
		TextureDetailSet();
		if( TextureDetailCombo.GetSelectedIndex() < OldTextureDetail )
			ConfirmWorldTextureDetail = MessageBox(ConfirmTextureDetailTitle, ConfirmTextureDetailText, MB_YesNo, MR_No, MR_None);	
		else
			OldTextureDetail = TextureDetailCombo.GetSelectedIndex();
	}
}

function TextureDetailSet()
{
	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.ViewportManager TextureDetail "$TextureDetailCombo.GetValue2());
}

function SkinDetailChanged()
{
	local int D;
	if(bInitialized)
	{
		SkinDetailSet();
		if( SkinDetailCombo.GetSelectedIndex() < OldSkinDetail )
			ConfirmSkinTextureDetail = MessageBox(ConfirmTextureDetailTitle, ConfirmTextureDetailText, MB_YesNo, MR_No, MR_None);	
		else
			OldSkinDetail = SkinDetailCombo.GetSelectedIndex();
	}
}

function SkinDetailSet()
{
	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.ViewportManager SkinDetail "$SkinDetailCombo.GetValue2());
}

function BrightnessChanged()
{
	if(bInitialized)
	{
		GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.ViewportManager Brightness "$(BrightnessSlider.Value / 10));
		GetPlayerOwner().ConsoleCommand("FLUSH");
	}
}

//function MenuAlphaChanged()
//{
//	Root.Console.MenuTranslucency = MenuAlphaSlider.Value*0.01;
//}

function DecalsChanged()
{
	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.ViewportManager Decals "$ShowDecalsCheck.bChecked);
}

function FractalChanged()
{
	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.ViewportManager NoFractalAnim "$!FractalCheck.bChecked);
	GetPlayerOwner().ConsoleCommand("FLUSH");
}

function LightingChanged()
{
	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.ViewportManager NoLighting "$!LightingCheck.bChecked);
}

function DynamicChanged()
{
	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.ViewportManager NoDynamicLights "$!DynamicLightsCheck.bChecked);
}

function MinFramerateChanged()
{
	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.ViewportManager MinDesiredFrameRate "$MinFramerateEdit.EditBox.Value);
}

/*function ParticlesChanged()
{
	if (GetLevel().Game != None)
	{
		GetLevel().Game.ParticlePercentage = ParticleSlider.Value*0.01;
	}

	class'GameInfo'.default.ParticlePercentage = ParticleSlider.Value*0.01;
}*/

function LodPercentChanged()
{
	local int value;
	local float f;
	value = LodPercentSlider.GetValue();
	LodPercentSlider.SetText(LodPercentText$" ["$value$"%]:");
	f = float(value)*0.01;
	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.ViewportManager LodPercentage"@f);
}

/*function FogChanged()
{
	local int value;
	local float f;
	value = FogSlider.GetValue();
	FogSlider.SetText(FogText$" ["$value$"%]:");
	f = float(value)*0.01;
	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.ViewportManager FogDistPercentage"@f);
}*/

function RagnarShadowChanged()
{
	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.ViewportManager PlayerShadows"@RagnarShadowCombo.GetValue2());
}

function ActorShadowChanged()
{
	GetPlayerOwner().ConsoleCommand("set ini:Engine.Engine.ViewportManager ActorShadows"@ActorShadowCombo.GetValue2());
}

function SaveConfigs()
{
	GetPlayerOwner().SaveConfig();
	Root.Console.SaveConfig();
	Super.SaveConfigs();
//	if(GuiSkinCombo.GetValue2() != Root.LookAndFeelClass)
//		Root.ChangeLookAndFeel(GuiSkinCombo.GetValue2());
}

defaultproperties
{
     DriverText="Video Driver"
     DriverHelp="This is the current video driver.  Use the Change button to change video drivers."
     DriverButtonText="Change"
     DriverButtonHelp="Press this button to change your video driver."
     ResolutionText="Resolution"
     ResolutionHelp="Select a new screen resolution."
     ColorDepthText="Color Depth"
     ColorDepthHelp="Select a new color depth."
     BitsText="bit"
     TextureDetailText="World Texture Detail"
     TextureDetailHelp="Change the texture detail of world geometry.  Use a lower texture detail to improve game performance."
     Details(0)="High"
     Details(1)="Medium"
     Details(2)="Low"
     SkinDetailText="Skin Detail"
     SkinDetailHelp="Change the detail of player skins.  Use a lower skin detail to improve game performance."
     BrightnessText="Brightness"
     BrightnessHelp="Adjust display brightness."
     ControlOffset=20.000000
     ConfirmSettingsTitle="Confirm Video Settings Change"
     ConfirmSettingsText="Are you sure you wish to keep these new video settings?"
     ConfirmSettingsCancelTitle="Video Settings Change"
     ConfirmSettingsCancelText="Your previous video settings have been restored."
     ConfirmTextureDetailTitle="Confirm Texture Detail"
     ConfirmTextureDetailText="Increasing texture detail above its default value may degrade performance on some machines.\n\nAre you sure you want to make this change?"
     ConfirmDriverTitle="Change Video Driver"
     ConfirmDriverText="This option will restart Rune now, and enable you to change your video driver.  Do you want to do this?"
     ShowDecalsText="Show Decals"
     ShowDecalsHelp="If checked, impact and gore decals will be used in game."
     FractalText="Fractal Animation"
     FractalHelp="If checked, fractal textures will animate."
     LightingText="World lighting"
     LightingHelp="If checked, world will be lit."
     MinFramerateText="Min Desired Framerate"
     MinFramerateHelp="If your framerate falls below this value, Rune will reduce special effects to increase your framerate."
     DynamicLightsText="Use Dynamic Lighting"
     DynamicLightsHelp="If checked, dynamic lighting will be used in game."
     LodPercentText="Mesh Complexity"
     LodPercentHelp="Percentage of maximum mesh complexity"
     ShadowTextNone="None"
     ShadowTextBlob="Blob"
     ShadowTextProjected="Projected"
     RagnarShadowText="Player Shadow"
     RagnarShadowHelp="Type of shadow on players"
     ActorShadowText="Actor Shadows"
     ActorShadowHelp="Type of shadow on non-players"
}
