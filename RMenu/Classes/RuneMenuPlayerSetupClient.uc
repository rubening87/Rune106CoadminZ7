class RuneMenuPlayerSetupClient extends RuneMenuPageWindow;

var() int ControlOffset;

var class<Pawn> NewPlayerClass;
var string MeshName;
var bool Initialized;
var RuneMenuPlayerMeshClient MeshWindow;
var string PlayerBaseClass;

// Player Name
var UWindowEditControl NameEdit;
var localized string NameText;
var localized string NameHelp;

// Team Combo
var UWindowComboControl TeamCombo;
var localized string TeamText;
var localized string Teams[4];
var localized string NoTeam;
var localized string TeamHelp;

// Class Combo
var UWindowComboControl ClassCombo;
var localized string ClassText;
var localized string ClassHelp;

// Skin Combo
var UWindowComboControl SkinCombo;
var localized string SkinText;
var localized string SkinHelp;

// NetSpeed
var UWindowComboControl NetSpeedCombo;
var localized string NetSpeedText;
var localized string NetSpeedHelp;
var localized string NetSpeeds[3];


function Created()
{
	local string SkinName, FaceName;

	local int ControlWidth, ControlLeft, ControlRight;
	local int CenterWidth, CenterPos;
	local int I;
	
	MeshWindow = RuneMenuPlayerMeshClient(RuneMenuPlayerClientWindow(ParentWindow.ParentWindow.ParentWindow).Splitter.RightClientWindow);

	Super.Created();

	ControlWidth = WinWidth/2.5;
	ControlLeft = (WinWidth/2 - ControlWidth)/2;
	ControlRight = WinWidth/2 + ControlLeft;

	CenterWidth = (WinWidth/4)*3;
	CenterPos = (WinWidth - CenterWidth)/2;

	NewPlayerClass = GetPlayerOwner().Class;

	// Player Name
	NameEdit = UWindowEditControl(CreateControl(class'UWindowEditControl', CenterPos, ControlOffset, CenterWidth, 1));
	NameEdit.SetText(NameText);
	NameEdit.SetHelpText(NameHelp);
	NameEdit.SetFont(F_Normal);
	NameEdit.SetNumericOnly(False);
	NameEdit.SetMaxLength(20);
	NameEdit.SetDelayedNotify(True);

	// Team
	ControlOffset += 25;
	TeamCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, ControlOffset, CenterWidth, 1));
	TeamCombo.SetText(TeamText);
	TeamCombo.SetHelpText(TeamHelp);
	TeamCombo.SetFont(F_Normal);
	TeamCombo.SetEditable(False);
	TeamCombo.AddItem(NoTeam, String(255));
	for (I=0; I<class'TeamGame'.Default.MaxTeams; I++)
		TeamCombo.AddItem(Teams[I], String(i));

	// Classes
	ControlOffset += 25;
	ClassCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, ControlOffset, CenterWidth, 1));
	ClassCombo.SetText(ClassText);
	ClassCombo.SetHelpText(ClassHelp);
	ClassCombo.SetEditable(False);
	ClassCombo.SetFont(F_Normal);

	// Skin
	ControlOffset += 25;
	SkinCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, ControlOffset, CenterWidth, 1));
	SkinCombo.SetText(SkinText);
	SkinCombo.SetHelpText(SkinHelp);
	SkinCombo.SetFont(F_Normal);
	SkinCombo.SetEditable(False);

	LoadClasses();

	// Net Speed
	ControlOffset += 35;
	NetSpeedCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, ControlOffset, CenterWidth, 1));
	NetSpeedCombo.SetText(NetSpeedText);
	NetSpeedCombo.SetHelpText(NetSpeedHelp);
	NetSpeedCombo.SetFont(F_Normal);
	NetSpeedCombo.SetEditable(False);
	NetSpeedCombo.AddItem(NetSpeeds[0]);
	NetSpeedCombo.AddItem(NetSpeeds[1]);
	NetSpeedCombo.AddItem(NetSpeeds[2]);

	if (class'Player'.default.ConfiguredInternetSpeed > 12500)
		NetSpeedCombo.SetSelectedIndex(2);
	else if (class'Player'.default.ConfiguredInternetSpeed >= 4000) 
		NetSpeedCombo.SetSelectedIndex(1);
	else 
		NetSpeedCombo.SetSelectedIndex(0);
}

/*function WindowShown()
{
	Super.WindowShown();
	if (Initialized)
	{
		LoadCurrent();
		UseSelected();
	}
}*/

function AfterCreate()
{
	Super.AfterCreate();

	DesiredWidth = 220;
	DesiredHeight = ControlOffset + 25;

	Initialized = True;

	LoadCurrent();
	UseSelected();
}

function LoadClasses()
{
	local int NumPlayerClasses;
	local string NextPlayer, NextDesc;
	local int SortWeight;

	GetPlayerOwner().GetNextIntDesc(PlayerBaseClass, 0, NextPlayer, NextDesc);
	while( (NextPlayer != "") && (NumPlayerClasses < 64) )
	{
		ClassCombo.AddItem(NextDesc, NextPlayer, SortWeight);
		NumPlayerClasses++;
		GetPlayerOwner().GetNextIntDesc(PlayerBaseClass, NumPlayerClasses, NextPlayer, NextDesc);
	}
	ClassCombo.Sort();
}

function LoadCurrent()
{
	local string SN;
	local int NewTeam;

	NameEdit.SetValue(GetPlayerOwner().PlayerReplicationInfo.PlayerName);
	NewTeam = GetPlayerOwner().PlayerReplicationInfo.Team;
	TeamCombo.SetSelectedIndex(Max(TeamCombo.FindItemIndex2(string(NewTeam)), 0));

	ClassCombo.SetSelectedIndex(Max(ClassCombo.FindItemIndex2(string(GetPlayerOwner().Class), True), 0));
	SN = string(GetPlayerOwner().CurrentSkin);
	SkinCombo.SetSelectedIndex(Max(SkinCombo.FindItemIndex2(SN, True), 0));
}

function IterateSkins()
{
	local int numskins;
	local int i;

	SkinCombo.Clear();

	if( ClassIsChildOf(NewPlayerClass, class'Spectator') )
	{
		SkinCombo.HideWindow();
		return;
	}
	else
		SkinCombo.ShowWindow();

	numskins = NewPlayerClass.static.GetNumSkins();
	for (i=0; i<numskins; i++)
	{
		SkinCombo.AddItem(NewPlayerClass.static.GetSkinName(i), string(i));
	}
}


function BeforePaint(Canvas C, float X, float Y)
{
	local int ControlWidth, ControlLeft, ControlRight;
	local int CenterWidth, CenterPos;
	local float W;

	W = Min(WinWidth, 220);

	ControlWidth = W/3;
	ControlLeft = (W/2 - ControlWidth)/2;
	ControlRight = W/2 + ControlLeft;

	CenterWidth = (W/7)*6;
	CenterPos = (W - CenterWidth)/2;

	NameEdit.SetSize(CenterWidth, 1);
	NameEdit.WinLeft = CenterPos;
	NameEdit.EditBoxWidth = 105;

	TeamCombo.SetSize(CenterWidth, 1);
	TeamCombo.WinLeft = CenterPos;
	TeamCombo.EditBoxWidth = 105;

	SkinCombo.SetSize(CenterWidth, 1);
	SkinCombo.WinLeft = CenterPos;
	SkinCombo.EditBoxWidth = 105;

	ClassCombo.SetSize(CenterWidth, 1);
	ClassCombo.WinLeft = CenterPos;
	ClassCombo.EditBoxWidth = 105;

	NetSpeedCombo.SetSize(CenterWidth, 1);
	NetSpeedCombo.WinLeft = CenterPos;
	NetSpeedCombo.EditBoxWidth = 105;
}

function Notify(UWindowDialogControl C, byte E)
{
	Super.Notify(C, E);

	switch(E)
	{
	case DE_Change:
		switch(C)
		{
			case NameEdit:
				NameChanged();
				break;
			case TeamCombo:
				TeamChanged();
				break;
			case SkinCombo:
				SkinChanged();
				break;
			case ClassCombo:
				ClassChanged();
				break;
			case NetSpeedCombo:
				NetSpeedChanged();
				break;
		}
	}
}


/*
 * Message Crackers
 */

function NameChanged()
{
	local string N;
	if (Initialized)
	{
		Initialized = False;
		N = NameEdit.GetValue();
		ReplaceText(N, " ", "_");
		NameEdit.SetValue(N);
		Initialized = True;

		GetPlayerOwner().ChangeName(NameEdit.GetValue());
		GetPlayerOwner().UpdateURL("Name", NameEdit.GetValue(), True);
	}
}

function TeamChanged()
{
	if (Initialized)
		UseSelected();
}

function SkinChanged()
{
	if (Initialized)
		UseSelected();
}


function ClassChanged()
{
	local string SkinName, SkinDesc;
	local bool OldInitialized;
	local int P;

	// Get the class.
	NewPlayerClass = class<Pawn>(DynamicLoadObject(ClassCombo.GetValue2(), class'Class'));

	OldInitialized = Initialized;
	Initialized = False;

	IterateSkins();
	SkinCombo.SetSelectedIndex(0);

	Initialized = OldInitialized;

	if (Initialized)
		UseSelected();
}

function NetSpeedChanged()
{
	local int NewSpeed;

	if (!Initialized)
		return;

	switch(NetSpeedCombo.GetSelectedIndex())
	{
		case 0:
			NewSpeed = 2600;
			break;
		case 1:
			NewSpeed = 5000;
			break;
		case 2:
			NewSpeed = 20000;
			break;
	}
	GetPlayerOwner().ConsoleCommand("NETSPEED "$NewSpeed);
}

function UseSelected()
{
	local int NewTeam;

	NewTeam = 255;
	if (Initialized)
	{
		GetPlayerOwner().UpdateURL("Class", ClassCombo.GetValue2(), True);
		GetPlayerOwner().UpdateURL("Skin", SkinCombo.GetValue2(), True);
		GetPlayerOwner().UpdateURL("Team", TeamCombo.GetValue2(), True);
		NewTeam = Int(TeamCombo.GetValue2());

		// if the same class as current class, change skin
		if( ClassCombo.GetValue2() ~= String( GetPlayerOwner().Class ))
			GetPlayerOwner().ServerChangeSkin(int(SkinCombo.GetValue2()));

		if( GetPlayerOwner().PlayerReplicationInfo.Team != NewTeam )
			GetPlayerOwner().ChangeTeam(NewTeam);
	}

	MeshWindow.SetClass(NewPlayerClass);
	MeshWindow.SetTeam(NewTeam);
//	MeshWindow.SetMesh(NewPlayerClass.Default.SkelMesh);
	NewPlayerClass.static.SetSkinActor(MeshWindow.PlayerMesh, int(SkinCombo.GetValue2()));
}

function SaveConfigs()
{
	Super.SaveConfigs();
	GetPlayerOwner().SaveConfig();
	GetPlayerOwner().PlayerReplicationInfo.SaveConfig();
}

defaultproperties
{
     ControlOffset=25
     PlayerBaseClass="Runei.RunePlayer"
     NameText="Name:"
     NameHelp="Set your player name."
     TeamText="Team:"
     Teams(0)="Red"
     Teams(1)="Blue"
     Teams(2)="Green"
     Teams(3)="Gold"
     NoTeam="None"
     TeamHelp="Select the team you wish to play on."
     ClassText="Class:"
     ClassHelp="Select your player class."
     SkinText="Skin:"
     SkinHelp="Choose a skin for your player."
     NetSpeedText="Net Connection"
     NetSpeedHelp="Select the closest match to your internet connection. Try selecting a lower setting if you're getting huge lag."
     NetSpeeds(0)="Modem (28.8K - 56K)"
     NetSpeeds(1)="ISDN"
     NetSpeeds(2)="LAN, Cable, DSL"
}
