class RuneCreditsWindow extends RuneMenuPageWindow;

// Import fonts


var RuneMenuLabelControl ProgrammersHeader;
var localized string ProgrammersText;
var RuneMenuLabelControl ProgrammerLabels[10];
var string ProgrammerNames[10];
var int MaxProgs;

var RuneMenuLabelControl AddProgrammersHeader;
var localized string AddProgrammersText;
var RuneMenuLabelControl AddProgrammerLabels[10];
var string AddProgrammerNames[10];
var int MaxAddProgs;

var RuneMenuLabelControl LevelDesignHeader;
var localized string LevelDesignText;
var RuneMenuLabelControl DesignerLabels[10];
var string DesignerNames[10];
var int MaxDesigners;

var RuneMenuLabelControl ArtHeader;
var localized string ArtText;
var RuneMenuLabelControl ArtLabels[10];
var string ArtNames[10];
var int MaxArts;

var RuneMenuLabelControl AnimationHeader;
var localized string AnimationText;
var RuneMenuLabelControl AnimationLabels[10];
var string AnimationNames[10];
var int MaxAnimations;

var RuneMenuLabelControl AddAnimationHeader;
var localized string AddAnimationText;
var RuneMenuLabelControl AddAnimationLabels[10];
var string AddAnimationNames[10];
var int MaxAddAnimations;

var RuneMenuLabelControl SoundHeader;
var localized string SoundText;
var RuneMenuLabelControl SoundLabels[10];
var string SoundNames[10];
var int MaxSounds;

var RuneMenuLabelControl MusicHeader;
var localized string MusicText;
var RuneMenuLabelControl MusicLabels[10];
var string MusicNames[10];
var int MaxMusics;

var RuneMenuLabelControl BizHeader;
var localized string BizText;
var RuneMenuLabelControl BizLabels[10];
var string BizNames[10];
var int MaxBiz;

var RuneMenuLabelControl ThanksHeader;
var localized string ThanksText;
var RuneMenuLabelControl ThanksLabels[10];
var string ThanksNames[10];
var int MaxThanks;

var RuneMenuLabelControl VoiceHeader;
var localized string VoiceText;
var RuneMenuLabelControl VoiceLabels[10];
var string VoiceNames[10];
var int MaxVoice;

var RuneMenuLabelControl DedicationHeader;
var localized string DedicationText;
var RuneMenuLabelControl DedicationLabels[10];
var string DedicationNames[10];
var int MaxDedication;

var RuneMenuLabelControl LinksLabel;
var localized string LinksText;

var RuneMenuHotlinkControl HHHotlink;
var localized string HHHotlinkText;

var RuneMenuHotlinkControl TSHotlink;
var localized string TSHotlinkText;

var RuneMenuHotlinkControl RGHotlink;
var localized string RGHotlinkText;

// ===== Halls of Valhalla Credits =====
var RuneMenuLabelControl HOVLeadHeader;
var string HOVLeadText;
var RuneMenuLabelControl HOVLeadHeader2;
var string HOVLeadText2;
var RuneMenuLabelControl HOVLeadLabel;
var string HOVLeadName;

var RuneMenuLabelControl HOVArtLeadHeader;
var string HOVArtLeadText;
var RuneMenuLabelControl HOVArtLeadLabel;
var string HOVArtLeadName;

var RuneMenuLabelControl HOVProjectManagerHeader;
var string HOVProjectManagerText;
var RuneMenuLabelControl HOVProjectManagerLabel;
var string HOVProjectManagerName;

var RuneMenuLabelControl HOVDesignAssistantHeader;
var string HOVDesignAssistantText;
var RuneMenuLabelControl HOVDesignAssistantLabel;
var string HOVDesignAssistantName;

var RuneMenuLabelControl HOVProgrammersHeader;
var string HOVProgrammersText;
var RuneMenuLabelControl HOVProgrammersLabels[10];
var string HOVProgrammersNames[10];
var int HOVMaxProgrammers;

var RuneMenuLabelControl HOVLevelDesignersHeader;
var string HOVLevelDesignersText;
var RuneMenuLabelControl HOVLevelDesignersLabels[10];
var string HOVLevelDesignersNames[10];
var int HOVMaxLevelDesigners;

var RuneMenuLabelControl HOVModelersSkinnersHeader;
var string HOVModelersSkinnersText;
var RuneMenuLabelControl HOVModelersSkinnersLabels[10];
var string HOVModelersSkinnersNames[10];
var int HOVMaxModelersSkinners;

var RuneMenuLabelControl HOVAnimatorsHeader;
var string HOVAnimatorsText;
var RuneMenuLabelControl HOVAnimatorsLabels[10];
var string HOVAnimatorsNames[10];
var int HOVMaxAnimators;

var RuneMenuLabelControl HOVTexturesHeader;
var string HOVTexturesText;
var RuneMenuLabelControl HOVTexturesLabels[10];
var string HOVTexturesNames[10];
var int HOVMaxTextures;

var RuneMenuLabelControl HOVSoundEffectsHeader;
var string HOVSoundEffectsText;
var RuneMenuLabelControl HOVSoundEffectsLabel;
var string HOVSoundEffectsName;

var RuneMenuLabelControl HOVMusicHeader;
var string HOVMusicText;
var RuneMenuLabelControl HOVMusicLabels[10];
var string HOVMusicNames[10];
var int HOVMaxMusic;

var RuneMenuLabelControl HOVThanksHeader;
var string HOVThanksText;

var bool bHallsOfValhalla;


function Created()
{
	local int i;
	local int ControlWidth, ControlLeft, ControlRight;
	local int CenterWidth, CenterPos;
	local int ButtonWidth;
	local float ControlOffset, BaseOffset;
	local string AddonStr;

	Super.Created();

	// Check if this machine has HOV installed
	// ISADDON returns:
	//		STANDALONE if HOV is installed seperately
	//		ADDON if HOV is installed on top of Rune
	//		NONE if HOV isn't installed
	AddonStr = GetPlayerOwner().ConsoleCommand("ISADDON");
	if(AddonStr == "STANDALONE" || AddonStr == "ADDON")
	{
		bHallsOfValhalla = true;
		HOVCreated();
		return;
	}

	ControlWidth = WinWidth/2.5;
	ControlLeft = (WinWidth/2 - ControlWidth)/2;
	ControlRight = WinWidth/2 + ControlLeft;

	CenterWidth = (WinWidth/4)*3;
	CenterPos = (WinWidth - CenterWidth)/2;

	BaseOffset = 25;

	// Programming
	ControlOffset = BaseOffset;
	ProgrammersHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	ProgrammersHeader.SetText(ProgrammersText);
	ProgrammersHeader.SetFont(F_Bold);
	ProgrammersHeader.Align = TA_Left;
	for (i=0; i<MaxProgs; i++)
	{
		ControlOffset += 10;
		ProgrammerLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		ProgrammerLabels[i].SetText(ProgrammerNames[i]);
		ProgrammerLabels[i].SetFont(F_Normal);
		ProgrammerLabels[i].Align = TA_Left;
	}
	Controloffset += 25;

	// AdditionalProgramming
	AddProgrammersHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	AddProgrammersHeader.SetText(AddProgrammersText);
	AddProgrammersHeader.SetFont(F_Bold);
	AddProgrammersHeader.Align = TA_Left;
	for (i=0; i<MaxAddProgs; i++)
	{
		ControlOffset += 10;
		AddProgrammerLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		AddProgrammerLabels[i].SetText(AddProgrammerNames[i]);
		AddProgrammerLabels[i].SetFont(F_Normal);
		AddProgrammerLabels[i].Align = TA_Left;
	}
	Controloffset += 25;

	// Art
	ArtHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	ArtHeader.SetText(ArtText);
	ArtHeader.SetFont(F_Bold);
	ArtHeader.Align = TA_Left;
	for (i=0; i<MaxArts; i++)
	{
		ControlOffset += 10;
		ArtLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		ArtLabels[i].SetText(ArtNames[i]);
		ArtLabels[i].SetFont(F_Normal);
		ArtLabels[i].Align = TA_Left;
	}
	Controloffset += 25;

	// Sound Effects
	SoundHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	SoundHeader.SetText(SoundText);
	SoundHeader.SetFont(F_Bold);
	SoundHeader.Align = TA_Left;
	for (i=0; i<MaxSounds; i++)
	{
		ControlOffset += 10;
		SoundLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		SoundLabels[i].SetText(SoundNames[i]);
		SoundLabels[i].SetFont(F_Normal);
		SoundLabels[i].Align = TA_Left;
	}
	Controloffset += 25;

	// Music
	MusicHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	MusicHeader.SetText(MusicText);
	MusicHeader.SetFont(F_Bold);
	MusicHeader.Align = TA_Left;
	for (i=0; i<MaxMusics; i++)
	{
		ControlOffset += 10;
		MusicLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		MusicLabels[i].SetText(MusicNames[i]);
		MusicLabels[i].SetFont(F_Normal);
		MusicLabels[i].Align = TA_Left;
	}
	Controloffset += 25;

	// Level Design
	ControlOffset = BaseOffset;
	LevelDesignHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	LevelDesignHeader.SetText(LevelDesignText);
	LevelDesignHeader.SetFont(F_Bold);
	LevelDesignHeader.Align = TA_Right;
	for (i=0; i<MaxDesigners; i++)
	{
		ControlOffset += 10;
		DesignerLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		DesignerLabels[i].SetText(DesignerNames[i]);
		DesignerLabels[i].SetFont(F_Normal);
		DesignerLabels[i].Align = TA_Right;
	}
	Controloffset += 25;

	// Animation
	AnimationHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	AnimationHeader.SetText(AnimationText);
	AnimationHeader.SetFont(F_Bold);
	AnimationHeader.Align = TA_Right;
	for (i=0; i<MaxAnimations; i++)
	{
		ControlOffset += 10;
		AnimationLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		AnimationLabels[i].SetText(AnimationNames[i]);
		AnimationLabels[i].SetFont(F_Normal);
		AnimationLabels[i].Align = TA_Right;
	}
	Controloffset += 25;

	// Additional Animation
	AddAnimationHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	AddAnimationHeader.SetText(AddAnimationText);
	AddAnimationHeader.SetFont(F_Bold);
	AddAnimationHeader.Align = TA_Right;
	for (i=0; i<MaxAddAnimations; i++)
	{
		ControlOffset += 10;
		AddAnimationLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		AddAnimationLabels[i].SetText(AddAnimationNames[i]);
		AddAnimationLabels[i].SetFont(F_Normal);
		AddAnimationLabels[i].Align = TA_Right;
	}
	Controloffset += 25;

	// Voice actors
	VoiceHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	VoiceHeader.SetText(VoiceText);
	VoiceHeader.SetFont(F_Bold);
	VoiceHeader.Align = TA_Right;
	for (i=0; i<MaxVoice; i++)
	{
		ControlOffset += 10;
		VoiceLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		VoiceLabels[i].SetText(VoiceNames[i]);
		VoiceLabels[i].SetFont(F_Normal);
		VoiceLabels[i].Align = TA_Right;
	}
	ControlOffset += 25;

	// Biz
	ControlOffset = BaseOffset+70;
	BizHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	BizHeader.SetText(BizText);
	BizHeader.SetFont(F_Bold);
	BizHeader.Align = TA_Center;
	for (i=0; i<MaxBiz; i++)
	{
		ControlOffset += 10;
		BizLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		BizLabels[i].SetText(BizNames[i]);
		BizLabels[i].SetFont(F_Normal);
		BizLabels[i].Align = TA_Center;
	}
	ControlOffset += 25;
	ControlOffset += 35;

	// Special Thanks
	ThanksHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	ThanksHeader.SetText(ThanksText);
	ThanksHeader.SetFont(F_Bold);
	ThanksHeader.Align = TA_Center;
	for (i=0; i<MaxThanks; i++)
	{
		ControlOffset += 10;
		ThanksLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		ThanksLabels[i].SetText(ThanksNames[i]);
		ThanksLabels[i].SetFont(F_Normal);
		ThanksLabels[i].Align = TA_Center;
	}
	ControlOffset += 45;

	// Dedication
	DedicationHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	DedicationHeader.SetText(DedicationText);
	DedicationHeader.SetFont(F_Bold);
	DedicationHeader.Align = TA_Center;
	for (i=0; i<MaxDedication; i++)
	{
		ControlOffset += 10;
		DedicationLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		DedicationLabels[i].SetText(DedicationNames[i]);
		DedicationLabels[i].SetFont(F_Normal);
		DedicationLabels[i].Align = TA_Center;
	}
	ControlOffset += 17;

	LinksLabel = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	LinksLabel.SetFont(F_Bold);
	LinksLabel.SetText(LinksText);
	LinksLabel.Align = TA_Left;
	ControlOffset += 17;

	// HH link
	ButtonWidth = 110;
	HHHotlink = RuneMenuHotlinkControl(CreateControl(class'RuneMenuHotlinkControl', CenterPos+20, ControlOffset, ButtonWidth, 15));
	HHHotlink.SetText(HHHotlinkText);
	HHHotlink.SetFont(F_Bold);
	HHHotlink.Align = TA_Left;
	ControlOffset += 15;

	// Rune link
	ButtonWidth = 110;
	RGHotlink = RuneMenuHotlinkControl(CreateControl(class'RuneMenuHotlinkControl', CenterPos+20, ControlOffset, ButtonWidth, 15));
	RGHotlink.SetText(RGHotlinkText);
	RGHotlink.SetFont(F_Bold);
	RGHotlink.Align = TA_Left;
	ControlOffset += 15;

	// Troubleshoot link
	ButtonWidth = 200;
	TSHotlink = RuneMenuHotlinkControl(CreateControl(class'RuneMenuHotlinkControl', CenterPos+20, ControlOffset, ButtonWidth, 15));
	TSHotlink.SetText(TSHotlinkText);
	TSHotlink.SetFont(F_Bold);
	TSHotlink.Align = TA_Left;
	ControlOffset += 15;
}

function BeforePaint(Canvas C, float X, float Y)
{
	local int i;
	local int ControlWidth, ControlLeft, ControlRight;
	local int CenterWidth, CenterPos;

	Super.BeforePaint(C, X, Y);

	if(bHallsOfValhalla)
	{
		HOVBeforePaint(C, X, Y);
		return;
	}

	ControlWidth = WinWidth/2.5;
	ControlLeft = (WinWidth/2 - ControlWidth)/2;
	ControlRight = WinWidth/2 + ControlLeft;

	CenterWidth = (WinWidth/4)*3;
	CenterPos = (WinWidth - CenterWidth)/2;

	ProgrammersHeader.SetSize(CenterWidth, 1);
	ProgrammersHeader.WinLeft = CenterPos;
	for (i=0; i<MaxProgs; i++)
	{
		ProgrammerLabels[i].SetSize(CenterWidth, 1);
		ProgrammerLabels[i].WinLeft = CenterPos;
	}

	AddProgrammersHeader.SetSize(CenterWidth, 1);
	AddProgrammersHeader.WinLeft = CenterPos;
	for (i=0; i<MaxAddProgs; i++)
	{
		AddProgrammerLabels[i].SetSize(CenterWidth, 1);
		AddProgrammerLabels[i].WinLeft = CenterPos;
	}

	LevelDesignHeader.SetSize(CenterWidth, 1);
	LevelDesignHeader.WinLeft = CenterPos;
	for (i=0; i<MaxDesigners; i++)
	{
		DesignerLabels[i].SetSize(CenterWidth, 1);
		DesignerLabels[i].WinLeft = CenterPos;
	}

	ArtHeader.SetSize(CenterWidth, 1);
	ArtHeader.WinLeft = CenterPos;
	for (i=0; i<MaxArts; i++)
	{
		ArtLabels[i].SetSize(CenterWidth, 1);
		ArtLabels[i].WinLeft = CenterPos;
	}

	AnimationHeader.SetSize(CenterWidth, 1);
	AnimationHeader.WinLeft = CenterPos;
	for (i=0; i<MaxAnimations; i++)
	{
		AnimationLabels[i].SetSize(CenterWidth, 1);
		AnimationLabels[i].WinLeft = CenterPos;
	}

	AddAnimationHeader.SetSize(CenterWidth, 1);
	AddAnimationHeader.WinLeft = CenterPos;
	for (i=0; i<MaxAddAnimations; i++)
	{
		AddAnimationLabels[i].SetSize(CenterWidth, 1);
		AddAnimationLabels[i].WinLeft = CenterPos;
	}

	SoundHeader.SetSize(CenterWidth, 1);
	SoundHeader.WinLeft = CenterPos;
	for (i=0; i<MaxSounds; i++)
	{
		SoundLabels[i].SetSize(CenterWidth, 1);
		SoundLabels[i].WinLeft = CenterPos;
	}

	MusicHeader.SetSize(CenterWidth, 1);
	MusicHeader.WinLeft = CenterPos;
	for (i=0; i<MaxMusics; i++)
	{
		MusicLabels[i].SetSize(CenterWidth, 1);
		MusicLabels[i].WinLeft = CenterPos;
	}

	BizHeader.SetSize(CenterWidth, 1);
	BizHeader.WinLeft = CenterPos;
	for (i=0; i<MaxBiz; i++)
	{
		BizLabels[i].SetSize(CenterWidth, 1);
		BizLabels[i].WinLeft = CenterPos;
	}

	LinksLabel.SetSize(CenterWidth, 1);
	LinksLabel.WinLeft = CenterPos;
}

// HOV-Specific Create/BeforePaint functions

function HOVCreated()
{
	local int i;
	local int ControlWidth, ControlLeft, ControlRight;
	local int CenterWidth, CenterPos;
	local int ButtonWidth;
	local float ControlOffset, BaseOffset;

	ControlWidth = WinWidth/2.5;
	ControlLeft = (WinWidth/2 - ControlWidth)/2;
	ControlRight = WinWidth/2 + ControlLeft;

	CenterWidth = (WinWidth/4)*3;
	CenterPos = (WinWidth - CenterWidth)/2;

	BaseOffset = 40;

	// Leads
	ControlOffset = BaseOffset + 20;

	HOVLeadHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVLeadHeader.SetText(HOVLeadText);
	HOVLeadHeader.SetFont(F_Bold);
	HOVLeadHeader.Align = TA_Center;
	ControlOffset += 12;
	HOVLeadHeader2 = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVLeadHeader2.SetText(HOVLeadText2);
	HOVLeadHeader2.SetFont(F_Bold);
	HOVLeadHeader2.Align = TA_Center;
	ControlOffset += 12;
	HOVLeadLabel = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVLeadLabel.SetText(HOVLeadName);
	HOVLeadLabel.SetFont(F_Normal);
	HOVLeadLabel.Align = TA_Center;
	ControlOffset += 35;

	HOVArtLeadHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVArtLeadHeader.SetText(HOVArtLeadText);
	HOVArtLeadHeader.SetFont(F_Bold);
	HOVArtLeadHeader.Align = TA_Center;
	ControlOffset += 12;
	HOVArtLeadLabel = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVArtLeadLabel.SetText(HOVArtLeadName);
	HOVArtLeadLabel.SetFont(F_Normal);
	HOVArtLeadLabel.Align = TA_Center;
	ControlOffset += 35;

	HOVProjectManagerHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVProjectManagerHeader.SetText(HOVProjectManagerText);
	HOVProjectManagerHeader.SetFont(F_Bold);
	HOVProjectManagerHeader.Align = TA_Center;
	ControlOffset += 12;
	HOVProjectManagerLabel = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVProjectManagerLabel.SetText(HOVProjectManagerName);
	HOVProjectManagerLabel.SetFont(F_Normal);
	HOVProjectManagerLabel.Align = TA_Center;
	ControlOffset += 35;

	HOVDesignAssistantHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVDesignAssistantHeader.SetText(HOVDesignAssistantText);
	HOVDesignAssistantHeader.SetFont(F_Bold);
	HOVDesignAssistantHeader.Align = TA_Center;
	ControlOffset += 12;
	HOVDesignAssistantLabel = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVDesignAssistantLabel.SetText(HOVDesignAssistantName);
	HOVDesignAssistantLabel.SetFont(F_Normal);
	HOVDesignAssistantLabel.Align = TA_Center;

	// Programming
	ControlOffset = BaseOffset;

	HOVProgrammersHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVProgrammersHeader.SetText(HOVProgrammersText);
	HOVProgrammersHeader.SetFont(F_Bold);
	HOVProgrammersHeader.Align = TA_Left;
	for(i = 0; i < HOVMaxProgrammers; i++)
	{
		ControlOffset += 12;
		HOVProgrammersLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		HOVProgrammersLabels[i].SetText(HOVProgrammersNames[i]);
		HOVProgrammersLabels[i].SetFont(F_Normal);
		HOVProgrammersLabels[i].Align = TA_Left;
	}
	Controloffset += 35;

	// Level Design
	HOVLevelDesignersHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVLevelDesignersHeader.SetText(HOVLevelDesignersText);
	HOVLevelDesignersHeader.SetFont(F_Bold);
	HOVLevelDesignersHeader.Align = TA_Left;
	for(i = 0; i < HOVMaxLevelDesigners; i++)
	{
		ControlOffset += 12;
		HOVLevelDesignersLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		HOVLevelDesignersLabels[i].SetText(HOVLevelDesignersNames[i]);
		HOVLevelDesignersLabels[i].SetFont(F_Normal);
		HOVLevelDesignersLabels[i].Align = TA_Left;
	}
	Controloffset += 35;

	// Sound
	HOVSoundEffectsHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVSoundEffectsHeader.SetText(HOVSoundEffectsText);
	HOVSoundEffectsHeader.SetFont(F_Bold);
	HOVSoundEffectsHeader.Align = TA_Left;
	ControlOffset += 12;
	HOVSoundEffectsLabel = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVSoundEffectsLabel.SetText(HOVSoundEffectsName);
	HOVSoundEffectsLabel.SetFont(F_Normal);
	HOVSoundEffectsLabel.Align = TA_Left;
	ControlOffset += 35;

	// Modeling
	ControlOffset = BaseOffset;

	HOVModelersSkinnersHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVModelersSkinnersHeader.SetText(HOVModelersSkinnersText);
	HOVModelersSkinnersHeader.SetFont(F_Bold);
	HOVModelersSkinnersHeader.Align = TA_Right;
	for(i = 0; i < HOVMaxModelersSkinners; i++)
	{
		ControlOffset += 12;
		HOVModelersSkinnersLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		HOVModelersSkinnersLabels[i].SetText(HOVModelersSkinnersNames[i]);
		HOVModelersSkinnersLabels[i].SetFont(F_Normal);
		HOVModelersSkinnersLabels[i].Align = TA_Right;
	}
	Controloffset += 35;

	// Textures
	HOVTexturesHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVTexturesHeader.SetText(HOVTexturesText);
	HOVTexturesHeader.SetFont(F_Bold);
	HOVTexturesHeader.Align = TA_Right;
	for(i = 0; i < HOVMaxTextures; i++)
	{
		ControlOffset += 12;
		HOVTexturesLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		HOVTexturesLabels[i].SetText(HOVTexturesNames[i]);
		HOVTexturesLabels[i].SetFont(F_Normal);
		HOVTexturesLabels[i].Align = TA_Right;
	}
	Controloffset += 35;

	// Animation
	HOVAnimatorsHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVAnimatorsHeader.SetText(HOVAnimatorsText);
	HOVAnimatorsHeader.SetFont(F_Bold);
	HOVAnimatorsHeader.Align = TA_Right;
	for(i = 0; i < HOVMaxAnimators; i++)
	{
		ControlOffset += 12;
		HOVAnimatorsLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		HOVAnimatorsLabels[i].SetText(HOVAnimatorsNames[i]);
		HOVAnimatorsLabels[i].SetFont(F_Normal);
		HOVAnimatorsLabels[i].Align = TA_Right;
	}
	Controloffset += 35;

	// Music
	HOVMusicHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVMusicHeader.SetText(HOVMusicText);
	HOVMusicHeader.SetFont(F_Bold);
	HOVMusicHeader.Align = TA_Right;
	for(i = 0; i < HOVMaxMusic; i++)
	{
		ControlOffset += 12;
		HOVMusicLabels[i] = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
		HOVMusicLabels[i].SetText(HOVMusicNames[i]);
		HOVMusicLabels[i].SetFont(F_Normal);
		HOVMusicLabels[i].Align = TA_Right;
	}

	// Thanks
	Controloffset += 40;

	HOVThanksHeader = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	HOVThanksHeader.SetText(HOVThanksText);
	HOVThanksHeader.SetFont(F_Normal);
	HOVThanksHeader.Align = TA_Center;


/*
	LinksLabel = RuneMenuLabelControl(CreateWindow(class'RuneMenuLabelControl', CenterPos, ControlOffset, CenterWidth, 1));
	LinksLabel.SetFont(F_Bold);
	LinksLabel.SetText(LinksText);
	LinksLabel.Align = TA_Left;
	ControlOffset += 10;

	// HH link
	ButtonWidth = 110;
	HHHotlink = RuneMenuHotlinkControl(CreateControl(class'RuneMenuHotlinkControl', CenterPos+20, ControlOffset, ButtonWidth, 15));
	HHHotlink.SetText(HHHotlinkText);
	HHHotlink.SetFont(F_Bold);
	HHHotlink.Align = TA_Left;
	ControlOffset += 15;

	// Rune link
	ButtonWidth = 110;
	RGHotlink = RuneMenuHotlinkControl(CreateControl(class'RuneMenuHotlinkControl', CenterPos+20, ControlOffset, ButtonWidth, 15));
	RGHotlink.SetText(RGHotlinkText);
	RGHotlink.SetFont(F_Bold);
	RGHotlink.Align = TA_Left;
	ControlOffset += 15;

	// Troubleshoot link
	ButtonWidth = 200;
	TSHotlink = RuneMenuHotlinkControl(CreateControl(class'RuneMenuHotlinkControl', CenterPos+20, ControlOffset, ButtonWidth, 15));
	TSHotlink.SetText(TSHotlinkText);
	TSHotlink.SetFont(F_Bold);
	TSHotlink.Align = TA_Left;
	ControlOffset += 15;
*/
}

function HOVBeforePaint(Canvas C, float X, float Y)
{
	local int i;
	local int ControlWidth, ControlLeft, ControlRight;
	local int CenterWidth, CenterPos;

	ControlWidth = WinWidth/2.5;
	ControlLeft = (WinWidth/2 - ControlWidth)/2;
	ControlRight = WinWidth/2 + ControlLeft;

	CenterWidth = (WinWidth/4)*3;
	CenterPos = (WinWidth - CenterWidth)/2;

	HOVLeadHeader.SetSize(CenterWidth, 1);
	HOVLeadHeader.WinLeft = CenterPos;
	HOVLeadHeader2.SetSize(CenterWidth, 1);
	HOVLeadHeader2.WinLeft = CenterPos;
	HOVLeadLabel.SetSize(CenterWidth, 1);
	HOVLeadLabel.WinLeft = CenterPos;

	HOVArtLeadHeader.SetSize(CenterWidth, 1);
	HOVArtLeadHeader.WinLeft = CenterPos;
	HOVArtLeadLabel.SetSize(CenterWidth, 1);
	HOVArtLeadLabel.WinLeft = CenterPos;

	HOVProjectManagerHeader.SetSize(CenterWidth, 1);
	HOVProjectManagerHeader.WinLeft = CenterPos;
	HOVProjectManagerLabel.SetSize(CenterWidth, 1);
	HOVProjectManagerLabel.WinLeft = CenterPos;

	HOVDesignAssistantHeader.SetSize(CenterWidth, 1);
	HOVDesignAssistantHeader.WinLeft = CenterPos;
	HOVDesignAssistantLabel.SetSize(CenterWidth, 1);
	HOVDesignAssistantLabel.WinLeft = CenterPos;

	// Programming
	HOVProgrammersHeader.SetSize(CenterWidth, 1);
	HOVProgrammersHeader.WinLeft = CenterPos;
	for(i = 0; i < HOVMaxProgrammers; i++)
	{
		HOVProgrammersLabels[i].SetSize(CenterWidth, 1);
		HOVProgrammersLabels[i].WinLeft = CenterPos;
	}

	// Level Design
	HOVLevelDesignersHeader.SetSize(CenterWidth, 1);
	HOVLevelDesignersHeader.WinLeft = CenterPos;
	for(i = 0; i < HOVMaxLevelDesigners; i++)
	{
		HOVLevelDesignersLabels[i].SetSize(CenterWidth, 1);
		HOVLevelDesignersLabels[i].WinLeft = CenterPos;
	}

	// Sound
	HOVSoundEffectsHeader.SetSize(CenterWidth, 1);
	HOVSoundEffectsHeader.WinLeft = CenterPos;
	HOVSoundEffectsLabel.SetSize(CenterWidth, 1);
	HOVSoundEffectsLabel.WinLeft = CenterPos;

	// Modeling
	HOVModelersSkinnersHeader.SetSize(CenterWidth, 1);
	HOVModelersSkinnersHeader.WinLeft = CenterPos;
	for(i = 0; i < HOVMaxModelersSkinners; i++)
	{
		HOVModelersSkinnersLabels[i].SetSize(CenterWidth, 1);
		HOVModelersSkinnersLabels[i].WinLeft = CenterPos;
	}

	// Textures
	HOVTexturesHeader.SetSize(CenterWidth, 1);
	HOVTexturesHeader.WinLeft = CenterPos;
	for(i = 0; i < HOVMaxTextures; i++)
	{
		HOVTexturesLabels[i].SetSize(CenterWidth, 1);
		HOVTexturesLabels[i].WinLeft = CenterPos;
	}

	// Animation
	HOVAnimatorsHeader.SetSize(CenterWidth, 1);
	HOVAnimatorsHeader.WinLeft = CenterPos;
	for(i = 0; i < HOVMaxAnimators; i++)
	{
		HOVAnimatorsLabels[i].SetSize(CenterWidth, 1);
		HOVAnimatorsLabels[i].WinLeft = CenterPos;
	}

	// Music
	HOVMusicHeader.SetSize(CenterWidth, 1);
	HOVMusicHeader.WinLeft = CenterPos;
	for(i = 0; i < HOVMaxMusic; i++)
	{
		HOVMusicLabels[i].SetSize(CenterWidth, 1);
		HOVMusicLabels[i].WinLeft = CenterPos;
	}

	// Thanks
	HOVThanksHeader.SetSize(CenterWidth, 1);
	HOVThanksHeader.WinLeft = CenterPos;
}

function Notify(UWindowDialogControl C, byte E)
{
	Super.Notify(C, E);

	switch(E)
	{
	case DE_Change:
		switch(C)
		{
		}
	case DE_Click:
		switch(C)
		{
		case HHHotlink:
			GetPlayerOwner().ConsoleCommand("start http://www.humanhead.com/");
			break;
		case RGHotlink:
			GetPlayerOwner().ConsoleCommand("start http://www.runegame.com/");
			break;
		case TSHotlink:
			GetPlayerOwner().ConsoleCommand("start http://www.runegame.com/support.php");
			break;
		}
		break;
	}
}

/*
 * Message Crackers
 */


function SaveConfigs()
{
	GetPlayerOwner().SaveConfig();
	Super.SaveConfigs();
}

defaultproperties
{
     ProgrammersText="Programming"
     ProgrammerNames(0)="Paul MacArthur"
     ProgrammerNames(1)="Chris Rhinehart"
     MaxProgs=2
     AddProgrammersText="Additional Programming"
     AddProgrammerNames(0)="Ben Gokey"
     AddProgrammerNames(1)="Mike Craddick"
     MaxAddProgs=2
     LevelDesignText="Level Design"
     DesignerNames(0)="Mick Beard"
     DesignerNames(1)="Dave Halsted"
     DesignerNames(2)="Ted Halsted"
     DesignerNames(3)="James Sumwalt"
     MaxDesigners=4
     ArtText="Art & Models"
     ArtNames(0)="Tim Bowman"
     ArtNames(1)="Shane Gurno"
     ArtNames(2)="Greg Marshall"
     MaxArts=3
     AnimationText="Animation"
     AnimationNames(0)="Jeff DeWitt"
     AnimationNames(1)="Nathaniel Albright"
     MaxAnimations=2
     AddAnimationText="Additional Animation"
     AddAnimationNames(0)="Mike Werckle"
     MaxAddAnimations=1
     SoundText="Sound Effects"
     SoundNames(0)="Mike Larson"
     MaxSounds=1
     MusicText="Music"
     MusicNames(0)="Mike Larson"
     MusicNames(1)="Jim B-Reay"
     MusicNames(2)="Romulus Mars Priscus"
     MaxMusics=3
     BizText="Biz"
     BizNames(0)="Tim Gerritsen"
     MaxBiz=1
     ThanksText="Special Thanks to"
     ThanksNames(0)="Seth Johnson"
     ThanksNames(1)="Kenny Stoll"
     ThanksNames(2)="Sean Wipfli"
     ThanksNames(3)="Larry Hill"
     ThanksNames(4)="John Falgate"
     MaxThanks=5
     VoiceText="Voice Actors"
     VoiceNames(0)="Lee Ernst"
     VoiceNames(1)="Ted Halsted"
     VoiceNames(2)="Mike Larson"
     VoiceNames(3)="Tejumola F Ologboni"
     VoiceNames(4)="Sue Quinn"
     VoiceNames(5)="Nick Skrowaczewski"
     MaxVoice=6
     DedicationText="Dedicated to the Memory of:"
     DedicationNames(0)="Gene Rhinehart"
     DedicationNames(1)="1950 - 1999"
     MaxDedication=2
     LinksText="Links:"
     HHHotlinkText="www.humanhead.com"
     TSHotlinkText="www.runegame.com/support.php"
     RGHotlinkText="www.runegame.com"
     HOVLeadText="Project Lead /"
     HOVLeadText2=" Lead Programmer:"
     HOVLeadName="Chris Rhinehart"
     HOVArtLeadText="Art Lead:"
     HOVArtLeadName="Rowan Atalla"
     HOVProjectManagerText="Project Manager / Biz:"
     HOVProjectManagerName="Timothy S. Gerritsen"
     HOVDesignAssistantText="Design Assistant:"
     HOVDesignAssistantName="Seth Johnson"
     HOVProgrammersText="Programming"
     HOVProgrammersNames(0)="Chris Rhinehart"
     HOVProgrammersNames(1)="Mike Craddick"
     HOVProgrammersNames(2)="Ben Gokey"
     HOVProgrammersNames(3)="Paul MacArthur"
     HOVMaxProgrammers=4
     HOVLevelDesignersText="Level Designers:"
     HOVLevelDesignersNames(0)="Rowan Atalla"
     HOVLevelDesignersNames(1)="Mick Beard"
     HOVLevelDesignersNames(2)="Mike Flynn"
     HOVLevelDesignersNames(3)="Brian Frank"
     HOVLevelDesignersNames(4)="Dave Halsted"
     HOVLevelDesignersNames(5)="Ted Halsted"
     HOVLevelDesignersNames(6)="Jean-Paul LeBreton"
     HOVLevelDesignersNames(7)="Jim Sumwalt"
     HOVMaxLevelDesigners=8
     HOVModelersSkinnersText="Modelers/Skinners:"
     HOVModelersSkinnersNames(0)="Tim Bowman"
     HOVModelersSkinnersNames(1)="David Gulisano"
     HOVModelersSkinnersNames(2)="Shane Gurno"
     HOVModelersSkinnersNames(3)="Brett Hawkins"
     HOVMaxModelersSkinners=4
     HOVAnimatorsText="Animators:"
     HOVAnimatorsNames(0)="Jeff DeWitt"
     HOVAnimatorsNames(1)="Nathaniel Albright"
     HOVMaxAnimators=2
     HOVTexturesText="Level Textures:"
     HOVTexturesNames(0)="Greg Marshall"
     HOVTexturesNames(1)="Eli Quinn"
     HOVMaxTextures=2
     HOVSoundEffectsText="Sound Effects:"
     HOVSoundEffectsName="Mike Larson"
     HOVMusicText="Music:"
     HOVMusicNames(0)="Mike Larson"
     HOVMusicNames(1)="Romulus Mars Priscus"
     HOVMusicNames(2)="Jim B-Reay"
     HOVMaxMusic=3
     HOVThanksText="A long overdue special thanks to Terry Nagy for his assistance on Rune."
}
