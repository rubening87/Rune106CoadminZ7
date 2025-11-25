class RuneMenuMutatorClientWindow extends RuneMenuPageWindow;


var RuneMenuServerClientWindow ServerParent;
var UWindowHSplitter Splitter;

var RuneMenuMutatorExclude Exclude;
var RuneMenuMutatorInclude Include;

var localized string ExcludeCaption;
var localized string ExcludeHelp;
var localized string IncludeCaption;
var localized string IncludeHelp;

var UWindowCheckbox KeepCheck;
var localized string KeepText;
var localized string KeepHelp;

var RuneMenuMutatorFrameCW FrameExclude;
var RuneMenuMutatorFrameCW FrameInclude;

var string MutatorBaseClass;

function Created()
{
	Super.Created();

	ServerParent = RuneMenuServerClientWindow(GetParent(class'RuneMenuServerClientWindow'));
	if (ServerParent == None)
		Log("Error: RuneMenuMutatorClientWindow without RuneMenuServerClientWindow parent.");

	KeepCheck = UWindowCheckbox(CreateControl(class'UWindowCheckbox', 10, 2, 190, 1));
	KeepCheck.SetText(KeepText);
	KeepCheck.SetHelpText(KeepHelp);
	KeepCheck.SetFont(F_Normal);
	KeepCheck.bChecked = ServerParent.bKeepMutators;
	KeepCheck.Align = TA_Right;

	Splitter = UWindowHSplitter(CreateWindow(class'UWindowHSplitter', 0, 0, WinWidth, WinHeight));

	FrameExclude = RuneMenuMutatorFrameCW(Splitter.CreateWindow(class'RuneMenuMutatorFrameCW', 0, 0, 100, 100));
	FrameInclude = RuneMenuMutatorFrameCW(Splitter.CreateWindow(class'RuneMenuMutatorFrameCW', 0, 0, 100, 100));

	Splitter.LeftClientWindow  = FrameExclude;
	Splitter.RightClientWindow = FrameInclude;

	Exclude = RuneMenuMutatorExclude(CreateWindow(class'RuneMenuMutatorExclude', 0, 0, 100, 100, Self));
	FrameExclude.Frame.SetFrame(Exclude);
	Include = RuneMenuMutatorInclude(CreateWindow(class'RuneMenuMutatorInclude', 0, 0, 100, 100, Self));
	FrameInclude.Frame.SetFrame(Include);

	Exclude.Register(Self);
	Include.Register(Self);

	Exclude.SetHelpText(ExcludeHelp);
	Include.SetHelpText(IncludeHelp);

	Include.DoubleClickList = Exclude;
	Exclude.DoubleClickList = Include;

	Splitter.bSizable = False;
	Splitter.bRightGrow = True;
	Splitter.SplitPos = WinWidth/2;

	LoadMutators();
}

function Paint(Canvas C, float X, float Y)
{
	Super.Paint(C, X, Y);

	DrawUpBevel( C, 0, 20, WinWidth, 15, GetLookAndFeelTexture());

	C.Font = Root.Fonts[F_Normal];
	C.DrawColor.R = 0;
	C.DrawColor.G = 0;
	C.DrawColor.B = 0;

	ClipText(C, 10, 23, ExcludeCaption, True);
	ClipText(C, WinWidth/2 + 10, 23, IncludeCaption, True);
}

function Resized()
{
	Super.Resized();

	Splitter.WinTop = 35;
	Splitter.SetSize(WinWidth, WinHeight-35);
	Splitter.SplitPos = WinWidth/2;
}

function LoadMutators()
{
	local int NumMutatorClasses;
	local string NextMutator, NextDesc;
	local RuneMenuMutatorList I;
	local string MutatorList;
	local int j;
	local int k;

	GetPlayerOwner().GetNextIntDesc(MutatorBaseClass, 0, NextMutator, NextDesc);
	while( (NextMutator != "") && (NumMutatorClasses < 200) )
	{
		I = RuneMenuMutatorList(Exclude.Items.Append(class'RuneMenuMutatorList'));
		I.MutatorClass = NextMutator;

		k = InStr(NextDesc, ",");
		if(k == -1)
		{
			I.MutatorName = NextDesc;
			I.HelpText = "";
		}
		else
		{
			I.MutatorName = Left(NextDesc, k);
			I.HelpText = Mid(NextDesc, k+1);
		}

		NumMutatorClasses++;
		GetPlayerOwner().GetNextIntDesc(MutatorBaseClass, NumMutatorClasses, NextMutator, NextDesc);
	}

	MutatorList = ServerParent.MutatorList;

	while(MutatorList != "")
	{
		j = InStr(MutatorList, ",");
		if(j == -1)
		{
			NextMutator = MutatorList;
			MutatorList = "";
		}
		else
		{
			NextMutator = Left(MutatorList, j);
			MutatorList = Mid(MutatorList, j+1);
		}
		
		I = RuneMenuMutatorList(Exclude.Items).FindMutator(NextMutator);
		if(I != None)
		{
			I.Remove();
			Include.Items.AppendItem(I);
		}
		else
			Log("Unknown mutator in mutator list: "$NextMutator);
	}

	Exclude.Sort();
}

function SaveConfigs()
{
	local RuneMenuMutatorList I;
	local string MutatorList;

	Super.SaveConfigs();
	
	for(I = RuneMenuMutatorList(Include.Items.Next); I != None; I = RuneMenuMutatorList(I.Next))
	{
		if(MutatorList == "")
			MutatorList = I.MutatorClass;
		else
			MutatorList = MutatorList $ "," $I.MutatorClass;
	}
	ServerParent.MutatorList = MutatorList;
}

function Notify(UWindowDialogControl C, byte E)
{
	Super.Notify(C, E);

	switch(E)
	{
	case DE_Change:
		switch(C)
		{
		case KeepCheck:
			ServerParent.bKeepMutators = KeepCheck.bChecked;
			break;
		}
		break;
	}
}

defaultproperties
{
     ExcludeCaption="Uninstalled Mutators"
     ExcludeHelp="Click and drag a mutator to the right hand column to include that mutator in this game."
     IncludeCaption="Installed Mutators"
     IncludeHelp="Click and drag a mutator to the left hand column to remove it from the mutator list, or drag it up or down to re-order it in the mutator list."
     KeepText="Always use this Mutator configuration"
     KeepHelp="If checked, these Mutators will always be used when starting games."
     MutatorBaseClass="Engine.Mutator"
}
