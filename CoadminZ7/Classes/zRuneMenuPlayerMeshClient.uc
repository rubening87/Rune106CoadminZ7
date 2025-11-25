class zRuneMenuPlayerMeshClient extends RuneMenuPageWindow;

var UWindowSmallButton UNK_v3966;
var UWindowButton UNK_v3967;
var UWindowButton LeftButton;
var UWindowButton RightButton;
var localized string AnimText;
var zRuneMeshActor UNK_v3239;
var Rotator CenterRotator;
var Rotator ViewRotator;
var int INT_v3970;
var name UNK_v190;
var bool B_v7290;
var Vector VCT_v7291;
var float FLT_v7292;
var int INT_v7293;
var bool Parm_SavedMove_0;
var Class<Pawn> UNK_v7294;

function NotifyAfterLevelChange()
{
    NotifyBeforeLevelChange();
    Close();
    Root.Console.CloseUWindow();
    return;
}

function NotifyBeforeLevelChange()
{
    super(UWindowWindow).NotifyBeforeLevelChange();
    Close();
    Root.Console.CloseUWindow();
    return;
}

function Created()
{
    super(UWindowWindow).Created();
    eq_vxv_677();
    UNK_v3967 = UWindowButton(CreateControl(Class'UWindow.UWindowButton', WinWidth / float(3), 0.0000000, WinWidth / float(3), WinHeight));
    UNK_v3967.bIgnoreLDoubleClick = true;
    ViewRotator = rot(0, 32768, 0);
    LeftButton = UWindowButton(CreateControl(Class'UWindow.UWindowButton', 0.0000000, 0.0000000, WinWidth / float(3), WinHeight));
    LeftButton.bIgnoreLDoubleClick = true;
    RightButton = UWindowButton(CreateControl(Class'UWindow.UWindowButton', (WinWidth / float(3)) * float(2), 0.0000000, WinWidth / float(3), WinHeight));
    RightButton.bIgnoreLDoubleClick = true;
    UNK_v3966 = UWindowSmallButton(CreateControl(Class'UWindow.UWindowSmallButton', 0.0000000, WinHeight - float(16), 48.0000000, 16.0000000));
    UNK_v3966.Text = AnimText;
    UNK_v3966.bAlwaysOnTop = true;
    UNK_v3966.bIgnoreLDoubleClick = true;
    VCT_v7291.X = -2.0000000;
    VCT_v7291.Y = 0.0000000;
    VCT_v7291.Z = 4.0000000;
    return;
}

function eq_vxv_677()
{
    if(UNK_v3239 == none)
    {
        UNK_v3239 = GetEntryLevel().Spawn(Class'coadminz7.zRuneMeshActor', GetEntryLevel());
        UNK_v3239.Skeletal = GetPlayerOwner().Skeletal;
        UNK_v3239.SkelMesh = GetPlayerOwner().SkelMesh;
        UNK_v3239.SubstituteMesh = GetPlayerOwner().SubstituteMesh;
        UNK_v3239.Skin = GetPlayerOwner().Skin;
        UNK_v3239.zRMenuPMC_v3987 = self;
        UNK_v3239.SetDefaultPolygroups();
        UNK_v3239.LODCurve = 0;
    }
    return;
}

function Resized()
{
    super(UWindowWindow).Resized();
    UNK_v3967.SetSize(WinWidth / float(3), WinHeight);
    UNK_v3967.WinLeft = WinWidth / float(3);
    LeftButton.SetSize(WinWidth / float(3), WinHeight);
    LeftButton.WinLeft = 0.0000000;
    RightButton.SetSize(WinWidth / float(3), WinHeight);
    RightButton.WinLeft = (WinWidth / float(3)) * float(2);
    UNK_v3966.WinLeft = 0.0000000;
    UNK_v3966.WinTop = WinHeight - float(16);
    return;
}

function BeforePaint(Canvas Parm_Canvas_0, float X, float Y)
{
    UNK_v3966.AutoWidth(Parm_Canvas_0);
    if(LeftButton.bMouseDown)
    {
        ViewRotator.Yaw += 256;        
    }
    else
    {
        if(RightButton.bMouseDown)
        {
            ViewRotator.Yaw -= 256;
        }
    }
    return;
}

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    local float Local_float_v0;
    local Vector VCT_v7291;
    local float Local_float_v0;

    Parm_Canvas_0.Style = GetPlayerOwner().4;
    DrawStretchedTexture(Parm_Canvas_0, 0.0000000, 0.0000000, WinWidth, WinHeight, Texture'UWindow.BlackTexture');
    Parm_Canvas_0.Style = GetPlayerOwner().1;
    if(UNK_v3239 == none)
    {
        eq_vxv_677();
    }
    if(CAZConsole(Root.Console) == none)
    {
        UNK_v3239 = none;
        Close(true);
    }
    Local_float_v0 = CAZConsole(Root.Console).eqI_vxv_6552;
    if(Local_float_v0 > float(300))
    {
        Local_float_v0 = 300.0000000;
    }
    if(ViewRotator.Pitch > 800)
    {
        B_v7290 = true;
    }
    if(ViewRotator.Pitch < -1600)
    {
        B_v7290 = false;
    }
    if(B_v7290)
    {
        ViewRotator.Pitch -= int(float(4 * 100) / Local_float_v0);        
    }
    else
    {
        ViewRotator.Pitch += int(float(4 * 100) / Local_float_v0);
    }
    if(Parm_SavedMove_0)
    {
        FLT_v7292 -= ((0.9000000 * float(100)) / Local_float_v0);
        if(FLT_v7292 < float(-15))
        {
            Parm_SavedMove_0 = false;
            eq_vxv_668(UNK_v7294);
        }        
    }
    else
    {
        if(FLT_v7292 < float(4))
        {
            FLT_v7292 += ((0.6000000 * float(100)) / Local_float_v0);
        }
    }
    VCT_v7291.Z = FLT_v7292;
    if(UNK_v3239 != none)
    {
        Local_float_v0 = GetPlayerOwner().FovAngle;
        GetPlayerOwner().SetFOVAngle(5.0000000);
        DrawClippedActor(Parm_Canvas_0, WinWidth / float(2), WinHeight / float(2), UNK_v3239, false, ViewRotator, VCT_v7291);
        GetPlayerOwner().SetFOVAngle(Local_float_v0);
    }
    return;
}

function eqand_vxv_1185()
{
    local int i;

    UNK_v3239.Skin = none;
    i = 0;
    J0x17:

    if(i < 4)
    {
        UNK_v3239.MultiSkins[i] = none;
        i++;
        // [Loop Continue]
        goto J0x17;
    }
    return;
}

function eqsemi_vxv_1886(Texture Parm_int_0)
{
    eqand_vxv_1185();
    UNK_v3239.Skin = Parm_int_0;
    return;
}

function eqand_vxv_1186(Class<Pawn> Local_Class<Weapon>_v0)
{
    local int i;

    Parm_SavedMove_0 = true;
    UNK_v7294 = Local_Class<Weapon>_v0;
    return;
}

function eq_vxv_668(Class<Pawn> Local_Class<Weapon>_v0)
{
    local int i;

    if(UNK_v3239 == none)
    {
        eq_vxv_677();
    }
    Parm_SavedMove_0 = false;
    UNK_v3239.DrawScale = UNK_v3239.default.DrawScale;
    UNK_v3239.Skeletal = UNK_v7294.default.Skeletal;
    i = 0;
    J0x5A:

    if(i < 16)
    {
        UNK_v3239.SkelGroupSkins[i] = UNK_v7294.default.SkelGroupSkins[i];
        UNK_v3239.SkelGroupFlags[i] = UNK_v7294.default.SkelGroupFlags[i];
        i++;
        // [Loop Continue]
        goto J0x5A;
    }
    UNK_v7294.static.SetSkinActor(UNK_v3239, INT_v7293);
    UNK_v3239.SkelMesh = UNK_v7294.default.SkelMesh;
    UNK_v3239.SubstituteMesh = UNK_v7294.default.SubstituteMesh;
    if(INT_v3970 == 0)
    {
        UNK_v3239.PlayAnim('S3_taunt', 1.0000000, 0.2000000);
    }
    UNK_v3239.LoopAnim(eq_vxv_190[INT_v3970], 1.0000000, 0.1000000);
    return;
}

function AssignPlayerToTeamWithSkin(int Parm_int_0)
{
    local float Local_float_v0;

    Local_float_v0 = 102.0000000;
    switch(Parm_int_0)
    {
        case 0:
            UNK_v3239.DesiredColorAdjust = vect(1.0000000, 0.0000000, 0.0000000) * Local_float_v0;
            break;
        case 1:
            UNK_v3239.DesiredColorAdjust = vect(0.0000000, 0.0000000, 1.0000000) * Local_float_v0;
            break;
        case 2:
            UNK_v3239.DesiredColorAdjust = vect(0.0000000, 1.0000000, 0.0000000) * Local_float_v0;
            break;
        case 3:
            UNK_v3239.DesiredColorAdjust = vect(1.0000000, 1.0000000, 0.0000000) * Local_float_v0;
            break;
        case 4:
            UNK_v3239.DesiredColorAdjust = vect(220.0000000, 0.0000000, 150.0000000);
            break;
        case 255:
            UNK_v3239.DesiredColorAdjust = vect(0.0000000, 0.0000000, 0.0000000);
            break;
        default:
            break;
    }
    UNK_v3239.ColorAdjust = UNK_v3239.DesiredColorAdjust;
    return;
}

function eqN_vxv_2494(int Parm_int_0)
{
    local int i;

    UNK_v3239.bMeshEnviroMap = false;
    UNK_v3239.DrawScale = UNK_v3239.default.DrawScale;
    UNK_v3239.SkelMesh = byte(Parm_int_0);
    i = 0;
    J0x4A:

    if(i < 16)
    {
        UNK_v3239.SkelGroupSkins[i] = none;
        i++;
        // [Loop Continue]
        goto J0x4A;
    }
    UNK_v3239.SetDefaultPolygroups();
    UNK_v3239.LoopAnim(eq_vxv_190[INT_v3970], 1.0000000, 0.1000000);
    return;
}

function eqlt_vxv_1890(int Parm_int_0)
{
    local int i;

    UNK_v3239.bMeshEnviroMap = false;
    UNK_v3239.DrawScale = UNK_v3239.default.DrawScale;
    UNK_v3239.SkelMesh = byte(Parm_int_0);
    i = 0;
    J0x4A:

    if(i < 16)
    {
        UNK_v3239.SkelGroupSkins[i] = none;
        i++;
        // [Loop Continue]
        goto J0x4A;
    }
    UNK_v3239.SetDefaultPolygroups();
    return;
}

function Close(optional bool eq_vxv_3020)
{
    super(UWindowClientWindow).Close(eq_vxv_3020);
    return;
}

function Notify(UWindowDialogControl Parm_Canvas_0, byte Parm_byte_0)
{
    switch(Parm_byte_0)
    {
        case 2:
            switch(Parm_Canvas_0)
            {
                case UNK_v3966:
                    eq_vxv_694();
                    break;
                case UNK_v3967:
                    ViewRotator.Yaw = 32768;
                    break;
                default:
                    break;
            }
            break;
        default:
            break;
    }
    return;
}

function eq_vxv_694()
{
    INT_v3970 = int(float(INT_v3970 + 1) % float(11));
    UNK_v3239.LoopAnim(eq_vxv_190[INT_v3970], 1.0000000, 0.2000000);
    return;
}

function AnimEnd(zRuneMeshActor Parm_zRuneMeshActor_0)
{
    return;
}

defaultproperties
{
    AnimText="Change Anim"
    eq_vxv_190(0)="neutral_idle"
    eq_vxv_190(1)="IDL_ALL_breathe1_AN0N"
    eq_vxv_190(2)="MOV_ALL_run1_AA0N"
    eq_vxv_190(3)="cine_vil_armpump1"
    eq_vxv_190(4)="MOV_ALL_lstrafe1_AN0N"
    eq_vxv_190(5)="MOV_ALL_rstrafe1_AN0N"
    eq_vxv_190(6)="MOV_ALL_runback1_AA0S"
    eq_vxv_190(7)="sark_Flip"
    eq_vxv_190(8)="cine_vil_kneeldown"
    eq_vxv_190(9)="cine_vil_armpump2"
    eq_vxv_190(10)="sark_Taunt"
}