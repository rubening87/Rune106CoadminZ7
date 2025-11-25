class RuneMenuPlayerMeshClient extends RuneMenuPageWindow;

var UWindowSmallButton AnimButton;
var UWindowButton CenterButton;
var UWindowButton LeftButton, RightButton;
var localized string AnimText;

var RuneLookMesh PlayerMesh;
var rotator CenterRotator, ViewRotator;
var int curAnim;
var name AnimTable[7];

function Created()
{
	Super.Created();

	SpawnPlayerMesh();

	CenterButton = UWindowButton(CreateControl(class'UWindowButton', WinWidth/3, 0, WinWidth/3, WinHeight));
	CenterButton.bIgnoreLDoubleclick = True;
	ViewRotator = rot(0, 32768, 0);

	LeftButton = UWindowButton(CreateControl(class'UWindowButton', 0, 0, WinWidth/3, WinHeight));
	LeftButton.bIgnoreLDoubleclick = True;

	RightButton = UWindowButton(CreateControl(class'UWindowButton', (WinWidth/3)*2, 0, WinWidth/3, WinHeight));
	RightButton.bIgnoreLDoubleclick = True;

	AnimButton = UWindowSmallButton(CreateControl(class'UWindowSmallButton', 0, WinHeight - 16, 48, 16));
	AnimButton.Text = AnimText;
	AnimButton.bAlwaysOnTop = True;
	AnimButton.bIgnoreLDoubleclick = True;
}

function SpawnPlayerMesh()
{
	if (PlayerMesh == None)
	{
		PlayerMesh = GetEntryLevel().Spawn(class'RuneLookMesh', GetEntryLevel());
		PlayerMesh.Skeletal = GetPlayerOwner().Skeletal;
		PlayerMesh.SkelMesh = GetPlayerOwner().SkelMesh;
		PlayerMesh.SubstituteMesh = GetPlayerOwner().SubstituteMesh;
		PlayerMesh.Skin = GetPlayerOwner().Skin;
		PlayerMesh.NotifyClient = Self;
		PlayerMesh.SetDefaultPolyGroups();
	}
}

function Resized()
{
	Super.Resized();

	CenterButton.SetSize(WinWidth/3, WinHeight);
	CenterButton.WinLeft = WinWidth/3;

	LeftButton.SetSize(WinWidth/3, WinHeight);
	LeftButton.WinLeft = 0;

	RightButton.SetSize(WinWidth/3, WinHeight);
	RightButton.WinLeft = (WinWidth/3)*2;

	AnimButton.WinLeft = 0;
	AnimButton.WinTop = WinHeight - 16;
}

function BeforePaint(Canvas C, float X, float Y)
{
	AnimButton.AutoWidth(C);
	if (LeftButton.bMouseDown)
	{
		ViewRotator.Yaw += 256;
	}
	else if (RightButton.bMouseDown)
	{
		ViewRotator.Yaw -= 256;
	}
}

function Paint(Canvas C, float X, float Y) 
{
	local float OldFov;

	C.Style = GetPlayerOwner().ERenderStyle.STY_Modulated;
	DrawStretchedTexture(C, 0, 0, WinWidth, WinHeight, Texture'BlackTexture');
	C.Style = GetPlayerOwner().ERenderStyle.STY_Normal;

	if (PlayerMesh == None)
		SpawnPlayerMesh();

	if (PlayerMesh != None)
	{
		OldFov = GetPlayerOwner().FOVAngle;
		GetPlayerOwner().SetFOVAngle(30);

		DrawClippedActor( C, WinWidth/2, WinHeight/2, PlayerMesh, False, ViewRotator, vect(-2, 0, 4) );
		GetPlayerOwner().SetFOVAngle(OldFov);
	}
}

function ClearSkins()
{
	local int i;

	PlayerMesh.Skin = None;
	for(i=0;i<4;i++)
		PlayerMesh.MultiSkins[i] = None;
}

function SetSkin(texture NewSkin)
{
	ClearSkins();
	PlayerMesh.Skin = NewSkin;
}

function SetClass(class<Pawn> newclass)
{
	local int i;

	if (PlayerMesh == None)
		SpawnPlayerMesh();

	PlayerMesh.DrawScale = PlayerMesh.Default.DrawScale;
	PlayerMesh.Skeletal = newclass.Default.Skeletal;
	PlayerMesh.SkelMesh = newclass.Default.SkelMesh;
	PlayerMesh.SubstituteMesh = newclass.Default.SubstituteMesh;

	for (i=0; i<16; i++)
	{
		PlayerMesh.SkelGroupSkins[i] = newclass.Default.SkelGroupSkins[i];
		PlayerMesh.SkelGroupFlags[i] = newclass.Default.SkelGroupFlags[i];
	}
	PlayerMesh.LoopAnim(AnimTable[curAnim], 1.0, 0.1);
}

function SetTeam(int TeamNum)
{
	local float brightness;
	brightness = 102;
	switch(TeamNum)
	{
	case 0:
		PlayerMesh.DesiredColorAdjust = vect(1,0,0)*brightness;
		break;
	case 1:
		PlayerMesh.DesiredColorAdjust = vect(0,0,1)*brightness;
		break;
	case 2:
		PlayerMesh.DesiredColorAdjust = vect(0,1,0)*brightness;
		break;
	case 3:
		PlayerMesh.DesiredColorAdjust = vect(1,1,0)*brightness;
		break;
	case 255:
		PlayerMesh.DesiredColorAdjust = vect(0,0,0);
		break;
	}
	PlayerMesh.ColorAdjust = PlayerMesh.DesiredColorAdjust;
}

function SetMesh(int MeshIndex)
{
	local int i;
	PlayerMesh.bMeshEnviroMap = False;
	PlayerMesh.DrawScale = PlayerMesh.Default.DrawScale;
	PlayerMesh.SkelMesh = MeshIndex;
	for (i=0; i<16; i++)
		PlayerMesh.SkelGroupSkins[i] = None;
	PlayerMesh.SetDefaultPolygroups();
	PlayerMesh.LoopAnim(AnimTable[curAnim], 1.0, 0.1);
}

function SetNoAnimMesh(int MeshIndex)
{
	local int i;
	PlayerMesh.bMeshEnviroMap = False;
	PlayerMesh.DrawScale = PlayerMesh.Default.DrawScale;
	PlayerMesh.SkelMesh = MeshIndex;
	for (i=0; i<16; i++)
		PlayerMesh.SkelGroupSkins[i] = None;
	PlayerMesh.SetDefaultPolygroups();
}

function Close(optional bool bByParent)
{
	Super.Close(bByParent);
/*	if(PlayerMesh != None)
	{
		PlayerMesh.Destroy();
		PlayerMesh = None;
	}*/
}

function Notify(UWindowDialogControl C, byte E)
{
	switch (E)
	{
		case DE_Click:
			switch (C)
			{
				case AnimButton:
					AnimPressed();
					break;
				case CenterButton:
					ViewRotator = rot(0, 32768, 0) + CenterRotator;
					break;
			}
			break;
	}
}

function AnimPressed()
{
	curAnim = (curAnim+1)%7;
	PlayerMesh.LoopAnim(AnimTable[curAnim], 1.0, 0.2);
}

function AnimEnd(RuneMeshActor MyMesh)
{
//	MyMesh.PlayAnim(AnimTable[curAnim], 1.0, 0.2);
}

defaultproperties
{
     AnimText="Change Anim"
     AnimTable(0)=neutral_idle
     AnimTable(1)=IDL_ALL_breathe1_AN0N
     AnimTable(2)=MOV_ALL_run1_AA0N
     AnimTable(3)=cine_vil_armpump1
     AnimTable(4)=MOV_ALL_lstrafe1_AN0N
     AnimTable(5)=MOV_ALL_rstrafe1_AN0N
     AnimTable(6)=MOV_ALL_runback1_AA0S
}
