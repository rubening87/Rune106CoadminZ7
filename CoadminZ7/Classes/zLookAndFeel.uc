class zLookAndFeel extends RuneLookAndFeel;

var CAZConsole UNK_v7333;

function FW_DrawWindowFrame(UWindowFramedWindow W, Canvas Parm_Canvas_0)
{
    local Texture Local_int_v0;
    local Region R, Local_Region_v0;

    Parm_Canvas_0.DrawColor.R = byte(255);
    Parm_Canvas_0.DrawColor.G = byte(255);
    Parm_Canvas_0.DrawColor.B = byte(255);
    Local_int_v0 = W.GetLookAndFeelTexture();
    R = FrameTL;
    W.DrawStretchedTextureSegment(Parm_Canvas_0, 0.0000000, 0.0000000, float(R.W), float(R.H), float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);
    R = FrameT;
    W.DrawStretchedTextureSegment(Parm_Canvas_0, float(FrameTL.W), 0.0000000, (W.WinWidth - float(FrameTL.W)) - float(FrameTR.W), float(R.H), float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);
    R = FrameTR;
    W.DrawStretchedTextureSegment(Parm_Canvas_0, W.WinWidth - float(R.W), 0.0000000, float(R.W), float(R.H), float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);
    if(W.bStatusBar)
    {
        Local_Region_v0 = FrameSBL;        
    }
    else
    {
        Local_Region_v0 = FrameBL;
    }
    R = FrameL;
    W.DrawStretchedTextureSegment(Parm_Canvas_0, 0.0000000, float(FrameTL.H), float(R.W), (W.WinHeight - float(FrameTL.H)) - float(Local_Region_v0.H), float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);
    R = FrameR;
    W.DrawStretchedTextureSegment(Parm_Canvas_0, W.WinWidth - float(R.W), float(FrameTL.H), float(R.W), (W.WinHeight - float(FrameTL.H)) - float(Local_Region_v0.H), float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);
    if(W.bStatusBar)
    {
        R = FrameSBL;        
    }
    else
    {
        R = FrameBL;
    }
    W.DrawStretchedTextureSegment(Parm_Canvas_0, 0.0000000, W.WinHeight - float(R.H), float(R.W), float(R.H), float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);
    if(W.bStatusBar)
    {
        R = FrameSB;
        W.DrawStretchedTextureSegment(Parm_Canvas_0, float(FrameBL.W), W.WinHeight - float(R.H), (W.WinWidth - float(FrameSBL.W)) - float(FrameSBR.W), float(R.H), float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);        
    }
    else
    {
        R = FrameB;
        W.DrawStretchedTextureSegment(Parm_Canvas_0, float(FrameBL.W), W.WinHeight - float(R.H), (W.WinWidth - float(FrameBL.W)) - float(FrameBR.W), float(R.H), float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);
    }
    if(W.bStatusBar)
    {
        R = FrameSBR;        
    }
    else
    {
        R = FrameBR;
    }
    W.DrawStretchedTextureSegment(Parm_Canvas_0, W.WinWidth - float(R.W), W.WinHeight - float(R.H), float(R.W), float(R.H), float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);
    if(W.IsActive())
    {
        Parm_Canvas_0.DrawColor = FrameActiveTitleColor;
        Parm_Canvas_0.Font = W.Root.Fonts[W.1];        
    }
    else
    {
        Parm_Canvas_0.DrawColor = FrameInactiveTitleColor;
        Parm_Canvas_0.Font = W.Root.Fonts[W.0];
    }
    W.ClipTextWidth(Parm_Canvas_0, float(FrameTitleX), float(FrameTitleY), W.WindowTitle, W.WinWidth - float(22));
    if(W.bStatusBar)
    {
        Parm_Canvas_0.Font = W.Root.Fonts[W.0];
        Parm_Canvas_0.DrawColor.R = byte(255);
        Parm_Canvas_0.DrawColor.G = byte(255);
        Parm_Canvas_0.DrawColor.B = byte(255);
        W.ClipTextWidth(Parm_Canvas_0, 6.0000000, W.WinHeight - float(13), W.StatusBarText, W.WinWidth - float(22));
        Parm_Canvas_0.DrawColor.R = byte(255);
        Parm_Canvas_0.DrawColor.G = byte(255);
        Parm_Canvas_0.DrawColor.B = byte(255);
    }
    return;
}

function FW_SetupFrameButtons(UWindowFramedWindow W, Canvas Parm_Canvas_0)
{
    local Texture Local_int_v0;

    Local_int_v0 = W.GetLookAndFeelTexture();
    if(W.CloseBox != none)
    {
        W.CloseBox.WinLeft = (W.WinWidth - float(CloseBoxOffsetX)) - float(CloseBoxUp.W);
        W.CloseBox.WinTop = float(CloseBoxOffsetY);
        W.CloseBox.SetSize(float(CloseBoxUp.W), float(CloseBoxUp.H));
        W.CloseBox.bUseRegion = true;
        W.CloseBox.UpTexture = Local_int_v0;
        W.CloseBox.DownTexture = Local_int_v0;
        W.CloseBox.OverTexture = Local_int_v0;
        W.CloseBox.DisabledTexture = Local_int_v0;
        W.CloseBox.UpRegion = CloseBoxUp;
        W.CloseBox.DownRegion = CloseBoxDown;
        W.CloseBox.OverRegion = CloseBoxUp;
        W.CloseBox.DisabledRegion = CloseBoxUp;
    }
    return;
}

function Region FW_GetClientArea(UWindowFramedWindow W)
{
    local Region R;

    R.X = FrameL.W;
    R.Y = FrameT.H;
    R.W = int(W.WinWidth - float(FrameL.W + FrameR.W));
    if(W.bStatusBar)
    {
        R.H = int(W.WinHeight - float(FrameT.H + FrameSB.H));        
    }
    else
    {
        R.H = int(W.WinHeight - float(FrameT.H + FrameB.H));
    }
    return R;
    return;
}

function UWindowBase.FrameHitTest FW_HitTest(UWindowFramedWindow W, float X, float Y)
{
    if((((X >= float(3)) && X <= (W.WinWidth - float(3))) && Y >= float(3)) && Y <= float(14))
    {
        return 8;
    }
    if(((X < float(15)) && Y < float(3)) || (X < float(3)) && Y < float(15))
    {
        return 0;
    }
    if(((X > (W.WinWidth - float(3))) && Y < float(15)) || (X > (W.WinWidth - float(15))) && Y < float(3))
    {
        return 2;
    }
    if(((X < float(15)) && Y > (W.WinHeight - float(3))) || (X < float(3)) && Y > (W.WinHeight - float(15)))
    {
        return 5;
    }
    if((X > (W.WinWidth - float(15))) && Y > (W.WinHeight - float(15)))
    {
        return 7;
    }
    if(Y < float(3))
    {
        return 1;
    }
    if(Y > (W.WinHeight - float(3)))
    {
        return 6;
    }
    if(X < float(3))
    {
        return 3;
    }
    if(X > (W.WinWidth - float(3)))
    {
        return 4;
    }
    return 10;
    return;
}

function DrawClientArea(UWindowClientWindow W, Canvas Parm_Canvas_0)
{
    local int Local_int_v0, Local_int_v1;

    if(CAZConsole(W.Root.Console).eqAE_vxv_6316 ~= "class'D3D9Drv.D3D9RenderDevice'")
    {
        Local_int_v1 = 175;        
    }
    else
    {
        Local_int_v1 = 255;
    }
    Parm_Canvas_0.DrawColor.R = byte(float(byte(Local_int_v1)) * CAZConsole(W.Root.Console).eqAE_vxv_6312);
    Parm_Canvas_0.DrawColor.G = byte(float(byte(Local_int_v1)) * CAZConsole(W.Root.Console).eqAE_vxv_6312);
    Parm_Canvas_0.DrawColor.B = byte(float(byte(Local_int_v1)) * CAZConsole(W.Root.Console).eqAE_vxv_6312);
    W.DrawClippedTexture(Parm_Canvas_0, 0.0000000, 0.0000000, Texture'RMenu.Icons.StoneMenuTL');
    W.DrawStretchedTexture(Parm_Canvas_0, 2.0000000, 0.0000000, W.WinWidth - float(4), 2.0000000, Texture'RMenu.Icons.StoneMenuT');
    W.DrawClippedTexture(Parm_Canvas_0, W.WinWidth - float(2), 0.0000000, Texture'RMenu.Icons.StoneMenuTR');
    W.DrawClippedTexture(Parm_Canvas_0, 0.0000000, W.WinHeight - float(2), Texture'RMenu.Icons.StoneMenuBL');
    W.DrawStretchedTexture(Parm_Canvas_0, 2.0000000, W.WinHeight - float(2), W.WinWidth - float(4), 2.0000000, Texture'RMenu.Icons.StoneMenuB');
    W.DrawClippedTexture(Parm_Canvas_0, W.WinWidth - float(2), W.WinHeight - float(2), Texture'RMenu.Icons.StoneMenuBR');
    W.DrawStretchedTexture(Parm_Canvas_0, 0.0000000, 2.0000000, 2.0000000, W.WinHeight - float(4), Texture'RMenu.Icons.StoneMenuL');
    W.DrawStretchedTexture(Parm_Canvas_0, W.WinWidth - float(2), 2.0000000, 2.0000000, W.WinHeight - float(4), Texture'RMenu.Icons.StoneMenuR');
    if(bool(zPlayerReplicationInfo(W.GetPlayerOwner().PlayerReplicationInfo)) && zPlayerReplicationInfo(W.GetPlayerOwner().PlayerReplicationInfo).testkey ~= "menu")
    {
        W.Tile(Parm_Canvas_0, Texture'CAZTest.CAZStoneClientAreaTiled');        
    }
    else
    {
        W.Tile(Parm_Canvas_0, Texture'coadminz7.Icons.RuneClientArea');
    }
    return;
}

function Combo_SetupSizes(UWindowComboControl W, Canvas Parm_Canvas_0)
{
    local float Local_float_v0, Local_float_v1;

    Parm_Canvas_0.Font = W.Root.Fonts[W.Font];
    W.TextSize(Parm_Canvas_0, W.Text, Local_float_v0, Local_float_v1);
    W.WinHeight = (12.0000000 + float(MiscBevelT[2].H)) + float(MiscBevelB[2].H);
    switch(W.Align)
    {
        case 0:
            W.EditAreaDrawX = W.WinWidth - W.EditBoxWidth;
            W.TextX = 0.0000000;
            break;
        case 1:
            W.EditAreaDrawX = 0.0000000;
            W.TextX = W.WinWidth - Local_float_v0;
            break;
        case 2:
            W.EditAreaDrawX = (W.WinWidth - W.EditBoxWidth) / float(2);
            W.TextX = (W.WinWidth - Local_float_v0) / float(2);
            break;
        default:
            break;
    }
    W.EditAreaDrawY = (W.WinHeight - float(2)) / float(2);
    W.TextY = (W.WinHeight - Local_float_v1) / float(2);
    W.EditBox.WinLeft = W.EditAreaDrawX + float(MiscBevelL[2].W);
    W.EditBox.WinTop = float(MiscBevelT[2].H);
    W.Button.WinWidth = float(ComboBtnUp.W);
    if(W.bButtons)
    {
        W.EditBox.WinWidth = ((((W.EditBoxWidth - float(MiscBevelL[2].W)) - float(MiscBevelR[2].W)) - float(ComboBtnUp.W)) - float(SBLeftUp.W)) - float(SBRightUp.W);
        W.EditBox.WinHeight = (W.WinHeight - float(MiscBevelT[2].H)) - float(MiscBevelB[2].H);
        W.Button.WinLeft = (((W.WinWidth - float(ComboBtnUp.W)) - float(MiscBevelR[2].W)) - float(SBLeftUp.W)) - float(SBRightUp.W);
        W.Button.WinTop = W.EditBox.WinTop;
        W.LeftButton.WinLeft = ((W.WinWidth - float(MiscBevelR[2].W)) - float(SBLeftUp.W)) - float(SBRightUp.W);
        W.LeftButton.WinTop = W.EditBox.WinTop;
        W.RightButton.WinLeft = (W.WinWidth - float(MiscBevelR[2].W)) - float(SBRightUp.W);
        W.RightButton.WinTop = W.EditBox.WinTop;
        W.LeftButton.WinWidth = float(SBLeftUp.W);
        W.LeftButton.WinHeight = float(SBLeftUp.H);
        W.RightButton.WinWidth = float(SBRightUp.W);
        W.RightButton.WinHeight = float(SBRightUp.H);        
    }
    else
    {
        W.EditBox.WinWidth = ((W.EditBoxWidth - float(MiscBevelL[2].W)) - float(MiscBevelR[2].W)) - float(ComboBtnUp.W);
        W.EditBox.WinHeight = (W.WinHeight - float(MiscBevelT[2].H)) - float(MiscBevelB[2].H);
        W.Button.WinLeft = (W.WinWidth - float(ComboBtnUp.W)) - float(MiscBevelR[2].W);
        W.Button.WinTop = W.EditBox.WinTop;
    }
    W.Button.WinHeight = W.EditBox.WinHeight;
    return;
}

function Combo_Draw(UWindowComboControl W, Canvas Parm_Canvas_0)
{
    W.DrawMiscBevel(Parm_Canvas_0, W.EditAreaDrawX, 0.0000000, W.EditBoxWidth, W.WinHeight, Misc, 2);
    if(W.Text != "")
    {
        Parm_Canvas_0.DrawColor = W.TextColor;
        W.ClipText(Parm_Canvas_0, W.TextX, W.TextY, W.Text);
        Parm_Canvas_0.DrawColor.R = byte(255);
        Parm_Canvas_0.DrawColor.G = byte(255);
        Parm_Canvas_0.DrawColor.B = byte(255);
    }
    return;
}

function ComboList_DrawBackground(UWindowComboList W, Canvas Parm_Canvas_0)
{
    W.DrawClippedTexture(Parm_Canvas_0, 0.0000000, 0.0000000, Texture'RMenu.Icons.StoneMenuTL');
    W.DrawStretchedTexture(Parm_Canvas_0, 4.0000000, 0.0000000, W.WinWidth - float(8), 4.0000000, Texture'RMenu.Icons.StoneMenuT');
    W.DrawClippedTexture(Parm_Canvas_0, W.WinWidth - float(4), 0.0000000, Texture'RMenu.Icons.StoneMenuTR');
    W.DrawClippedTexture(Parm_Canvas_0, 0.0000000, W.WinHeight - float(4), Texture'RMenu.Icons.StoneMenuBL');
    W.DrawStretchedTexture(Parm_Canvas_0, 4.0000000, W.WinHeight - float(4), W.WinWidth - float(8), 4.0000000, Texture'RMenu.Icons.StoneMenuB');
    W.DrawClippedTexture(Parm_Canvas_0, W.WinWidth - float(4), W.WinHeight - float(4), Texture'RMenu.Icons.StoneMenuBR');
    W.DrawStretchedTexture(Parm_Canvas_0, 0.0000000, 4.0000000, 4.0000000, W.WinHeight - float(8), Texture'RMenu.Icons.StoneMenuL');
    W.DrawStretchedTexture(Parm_Canvas_0, W.WinWidth - float(4), 4.0000000, 4.0000000, W.WinHeight - float(8), Texture'RMenu.Icons.StoneMenuR');
    W.DrawStretchedTexture(Parm_Canvas_0, 4.0000000, 4.0000000, W.WinWidth - float(8), W.WinHeight - float(8), Texture'RMenu.Icons.StoneMenuArea');
    return;
}

function ComboList_DrawItem(UWindowComboList Parm_UWindowComboList_0, Canvas Parm_Canvas_0, float X, float Y, float W, float H, string Text, bool Local_bool_v2)
{
    Parm_Canvas_0.DrawColor.R = byte(255);
    Parm_Canvas_0.DrawColor.G = byte(255);
    Parm_Canvas_0.DrawColor.B = byte(255);
    if(Local_bool_v2)
    {
        Parm_UWindowComboList_0.DrawClippedTexture(Parm_Canvas_0, X, Y, Texture'RMenu.Icons.StoneMenuHL');
        Parm_UWindowComboList_0.DrawStretchedTexture(Parm_Canvas_0, X + float(4), Y, W - float(8), 16.0000000, Texture'RMenu.Icons.StoneMenuHM');
        Parm_UWindowComboList_0.DrawClippedTexture(Parm_Canvas_0, (X + W) - float(4), Y, Texture'RMenu.Icons.StoneMenuHR');
        Parm_Canvas_0.DrawColor.R = 8;
        Parm_Canvas_0.DrawColor.G = 3;
        Parm_Canvas_0.DrawColor.B = 139;        
    }
    else
    {
        Parm_Canvas_0.DrawColor.R = 0;
        Parm_Canvas_0.DrawColor.G = 0;
        Parm_Canvas_0.DrawColor.B = 0;
    }
    Parm_UWindowComboList_0.ClipText(Parm_Canvas_0, (X + float(Parm_UWindowComboList_0.TextBorder)) + float(2), Y + float(3), Text);
    return;
}

function Checkbox_SetupSizes(UWindowCheckbox W, Canvas Parm_Canvas_0)
{
    local float Local_float_v0, Local_float_v1;

    Parm_Canvas_0.Font = W.Root.Fonts[W.Font];
    W.TextSize(Parm_Canvas_0, W.Text, Local_float_v0, Local_float_v1);
    W.WinHeight = float(Max(int(Local_float_v1 + float(1)), 16));
    switch(W.Align)
    {
        case 0:
            W.ImageX = W.WinWidth - float(16);
            W.TextX = 0.0000000;
            break;
        case 1:
            W.ImageX = 0.0000000;
            W.TextX = W.WinWidth - Local_float_v0;
            break;
        case 2:
            W.ImageX = (W.WinWidth - float(16)) / float(2);
            W.TextX = (W.WinWidth - Local_float_v0) / float(2);
            break;
        default:
            break;
    }
    W.ImageY = (W.WinHeight - float(16)) / float(2);
    W.TextY = (W.WinHeight - Local_float_v1) / float(2);
    if(W.bChecked)
    {
        W.UpTexture = Texture'UWindow.Icons.ChkChecked';
        W.DownTexture = Texture'UWindow.Icons.ChkChecked';
        W.OverTexture = Texture'UWindow.Icons.ChkChecked';
        W.DisabledTexture = Texture'UWindow.Icons.ChkCheckedDisabled';        
    }
    else
    {
        W.UpTexture = Texture'UWindow.Icons.ChkUnchecked';
        W.DownTexture = Texture'UWindow.Icons.ChkUnchecked';
        W.OverTexture = Texture'UWindow.Icons.ChkUnchecked';
        W.DisabledTexture = Texture'UWindow.Icons.ChkUncheckedDisabled';
    }
    return;
}

function Combo_GetButtonBitmaps(UWindowComboButton W)
{
    local Texture Local_int_v0;

    Local_int_v0 = W.GetLookAndFeelTexture();
    W.bUseRegion = true;
    W.UpTexture = Local_int_v0;
    W.DownTexture = Local_int_v0;
    W.OverTexture = Local_int_v0;
    W.DisabledTexture = Local_int_v0;
    W.UpRegion = ComboBtnUp;
    W.DownRegion = ComboBtnDown;
    W.OverRegion = ComboBtnUp;
    W.DisabledRegion = ComboBtnDisabled;
    return;
}

function Combo_SetupLeftButton(UWindowComboLeftButton W)
{
    local Texture Local_int_v0;

    Local_int_v0 = W.GetLookAndFeelTexture();
    W.bUseRegion = true;
    W.UpTexture = Local_int_v0;
    W.DownTexture = Local_int_v0;
    W.OverTexture = Local_int_v0;
    W.DisabledTexture = Local_int_v0;
    W.UpRegion = SBLeftUp;
    W.DownRegion = SBLeftDown;
    W.OverRegion = SBLeftUp;
    W.DisabledRegion = SBLeftDisabled;
    return;
}

function Combo_SetupRightButton(UWindowComboRightButton W)
{
    local Texture Local_int_v0;

    Local_int_v0 = W.GetLookAndFeelTexture();
    W.bUseRegion = true;
    W.UpTexture = Local_int_v0;
    W.DownTexture = Local_int_v0;
    W.OverTexture = Local_int_v0;
    W.DisabledTexture = Local_int_v0;
    W.UpRegion = SBRightUp;
    W.DownRegion = SBRightDown;
    W.OverRegion = SBRightUp;
    W.DisabledRegion = SBRightDisabled;
    return;
}

function Editbox_SetupSizes(UWindowEditControl W, Canvas Parm_Canvas_0)
{
    local float Local_float_v0, Local_float_v1;
    local int B;

    B = EditBoxBevel;
    Parm_Canvas_0.Font = W.Root.Fonts[W.Font];
    W.TextSize(Parm_Canvas_0, W.Text, Local_float_v0, Local_float_v1);
    W.WinHeight = (12.0000000 + float(MiscBevelT[B].H)) + float(MiscBevelB[B].H);
    switch(W.Align)
    {
        case 0:
            W.EditAreaDrawX = W.WinWidth - W.EditBoxWidth;
            W.TextX = 0.0000000;
            break;
        case 1:
            W.EditAreaDrawX = 0.0000000;
            W.TextX = W.WinWidth - Local_float_v0;
            break;
        case 2:
            W.EditAreaDrawX = (W.WinWidth - W.EditBoxWidth) / float(2);
            W.TextX = (W.WinWidth - Local_float_v0) / float(2);
            break;
        default:
            break;
    }
    W.EditAreaDrawY = (W.WinHeight - float(2)) / float(2);
    W.TextY = (W.WinHeight - Local_float_v1) / float(2);
    W.EditBox.WinLeft = W.EditAreaDrawX + float(MiscBevelL[B].W);
    W.EditBox.WinTop = float(MiscBevelT[B].H);
    W.EditBox.WinWidth = (W.EditBoxWidth - float(MiscBevelL[B].W)) - float(MiscBevelR[B].W);
    W.EditBox.WinHeight = (W.WinHeight - float(MiscBevelT[B].H)) - float(MiscBevelB[B].H);
    return;
}

function Editbox_Draw(UWindowEditControl W, Canvas Parm_Canvas_0)
{
    W.DrawMiscBevel(Parm_Canvas_0, W.EditAreaDrawX, 0.0000000, W.EditBoxWidth, W.WinHeight, Misc, EditBoxBevel);
    if(W.Text != "")
    {
        Parm_Canvas_0.DrawColor = W.TextColor;
        W.ClipText(Parm_Canvas_0, W.TextX, W.TextY, W.Text);
        Parm_Canvas_0.DrawColor.R = byte(255);
        Parm_Canvas_0.DrawColor.G = byte(255);
        Parm_Canvas_0.DrawColor.B = byte(255);
    }
    return;
}

function ControlFrame_SetupSizes(UWindowControlFrame W, Canvas Parm_Canvas_0)
{
    local int B;

    B = EditBoxBevel;
    W.Framed.WinLeft = float(MiscBevelL[B].W);
    W.Framed.WinTop = float(MiscBevelT[B].H);
    W.Framed.SetSize((W.WinWidth - float(MiscBevelL[B].W)) - float(MiscBevelR[B].W), (W.WinHeight - float(MiscBevelT[B].H)) - float(MiscBevelB[B].H));
    return;
}

function ControlFrame_Draw(UWindowControlFrame W, Canvas Parm_Canvas_0)
{
    Parm_Canvas_0.DrawColor.R = byte(255);
    Parm_Canvas_0.DrawColor.G = byte(255);
    Parm_Canvas_0.DrawColor.B = byte(255);
    W.DrawStretchedTexture(Parm_Canvas_0, 0.0000000, 0.0000000, W.WinWidth, W.WinHeight, Texture'UWindow.WhiteTexture');
    W.DrawMiscBevel(Parm_Canvas_0, 0.0000000, 0.0000000, W.WinWidth, W.WinHeight, Misc, EditBoxBevel);
    return;
}

function Tab_DrawTab(UWindowTabControlTabArea Parm_UWindowTabControlTabArea_0, Canvas Parm_Canvas_0, bool Parm_bool_0, bool Parm_bool_1, float X, float Y, float W, float H, string Text, bool Parm_bool_2)
{
    local Region R;
    local Texture Local_int_v0;
    local float Local_float_v0, Local_float_v1;

    Parm_Canvas_0.DrawColor.R = byte(255);
    Parm_Canvas_0.DrawColor.G = byte(255);
    Parm_Canvas_0.DrawColor.B = byte(255);
    Local_int_v0 = Parm_UWindowTabControlTabArea_0.GetLookAndFeelTexture();
    if(Parm_bool_0)
    {
        R = TabSelectedL;
        Parm_UWindowTabControlTabArea_0.DrawStretchedTextureSegment(Parm_Canvas_0, X, Y, float(R.W), float(R.H), float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);
        R = TabSelectedM;
        Parm_UWindowTabControlTabArea_0.DrawStretchedTextureSegment(Parm_Canvas_0, X + float(TabSelectedL.W), Y, (W - float(TabSelectedL.W)) - float(TabSelectedR.W), float(R.H), float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);
        R = TabSelectedR;
        Parm_UWindowTabControlTabArea_0.DrawStretchedTextureSegment(Parm_Canvas_0, (X + W) - float(R.W), Y, float(R.W), float(R.H), float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);
        Parm_Canvas_0.Font = Parm_UWindowTabControlTabArea_0.Root.Fonts[Parm_UWindowTabControlTabArea_0.1];
        Parm_Canvas_0.DrawColor.R = 0;
        Parm_Canvas_0.DrawColor.G = 0;
        Parm_Canvas_0.DrawColor.B = 0;
        if(Parm_bool_2)
        {
            Parm_UWindowTabControlTabArea_0.TextSize(Parm_Canvas_0, Text, Local_float_v0, Local_float_v1);
            Parm_UWindowTabControlTabArea_0.ClipText(Parm_Canvas_0, X + ((W - Local_float_v0) / float(2)), Y + float(3), Text, true);
        }        
    }
    else
    {
        R = TabUnselectedL;
        Parm_UWindowTabControlTabArea_0.DrawStretchedTextureSegment(Parm_Canvas_0, X, Y, float(R.W), float(R.H), float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);
        R = TabUnselectedM;
        Parm_UWindowTabControlTabArea_0.DrawStretchedTextureSegment(Parm_Canvas_0, X + float(TabUnselectedL.W), Y, (W - float(TabUnselectedL.W)) - float(TabUnselectedR.W), float(R.H), float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);
        R = TabUnselectedR;
        Parm_UWindowTabControlTabArea_0.DrawStretchedTextureSegment(Parm_Canvas_0, (X + W) - float(R.W), Y, float(R.W), float(R.H), float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);
        Parm_Canvas_0.Font = Parm_UWindowTabControlTabArea_0.Root.Fonts[Parm_UWindowTabControlTabArea_0.0];
        Parm_Canvas_0.DrawColor.R = 0;
        Parm_Canvas_0.DrawColor.G = 0;
        Parm_Canvas_0.DrawColor.B = 0;
        if(Parm_bool_2)
        {
            Parm_UWindowTabControlTabArea_0.TextSize(Parm_Canvas_0, Text, Local_float_v0, Local_float_v1);
            Parm_UWindowTabControlTabArea_0.ClipText(Parm_Canvas_0, X + ((W - Local_float_v0) / float(2)), Y + float(4), Text, true);
        }
    }
    return;
}

function SB_SetupUpButton(UWindowSBUpButton W)
{
    local Texture Local_int_v0;

    Local_int_v0 = W.GetLookAndFeelTexture();
    W.bUseRegion = true;
    W.UpTexture = Local_int_v0;
    W.DownTexture = Local_int_v0;
    W.OverTexture = Local_int_v0;
    W.DisabledTexture = Local_int_v0;
    W.UpRegion = SBUpUp;
    W.DownRegion = SBUpDown;
    W.OverRegion = SBUpUp;
    W.DisabledRegion = SBUpDisabled;
    return;
}

function SB_SetupDownButton(UWindowSBDownButton W)
{
    local Texture Local_int_v0;

    Local_int_v0 = W.GetLookAndFeelTexture();
    W.bUseRegion = true;
    W.UpTexture = Local_int_v0;
    W.DownTexture = Local_int_v0;
    W.OverTexture = Local_int_v0;
    W.DisabledTexture = Local_int_v0;
    W.UpRegion = SBDownUp;
    W.DownRegion = SBDownDown;
    W.OverRegion = SBDownUp;
    W.DisabledRegion = SBDownDisabled;
    return;
}

function SB_SetupLeftButton(UWindowSBLeftButton W)
{
    local Texture Local_int_v0;

    Local_int_v0 = W.GetLookAndFeelTexture();
    W.bUseRegion = true;
    W.UpTexture = Local_int_v0;
    W.DownTexture = Local_int_v0;
    W.OverTexture = Local_int_v0;
    W.DisabledTexture = Local_int_v0;
    W.UpRegion = SBLeftUp;
    W.DownRegion = SBLeftDown;
    W.OverRegion = SBLeftUp;
    W.DisabledRegion = SBLeftDisabled;
    return;
}

function SB_SetupRightButton(UWindowSBRightButton W)
{
    local Texture Local_int_v0;

    Local_int_v0 = W.GetLookAndFeelTexture();
    W.bUseRegion = true;
    W.UpTexture = Local_int_v0;
    W.DownTexture = Local_int_v0;
    W.OverTexture = Local_int_v0;
    W.DisabledTexture = Local_int_v0;
    W.UpRegion = SBRightUp;
    W.DownRegion = SBRightDown;
    W.OverRegion = SBRightUp;
    W.DisabledRegion = SBRightDisabled;
    return;
}

function SB_VDraw(UWindowVScrollbar W, Canvas Parm_Canvas_0)
{
    local Region R;
    local Texture Local_int_v0;

    Local_int_v0 = W.GetLookAndFeelTexture();
    R = SBBackground;
    W.DrawStretchedTextureSegment(Parm_Canvas_0, 0.0000000, 0.0000000, W.WinWidth, W.WinHeight, float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);
    if(!W.bDisabled)
    {
        W.DrawUpBevel(Parm_Canvas_0, 0.0000000, W.ThumbStart, Size_ScrollbarWidth, W.ThumbHeight, Local_int_v0);
    }
    return;
}

function SB_HDraw(UWindowHScrollbar W, Canvas Parm_Canvas_0)
{
    local Region R;
    local Texture Local_int_v0;

    Local_int_v0 = W.GetLookAndFeelTexture();
    R = SBBackground;
    W.DrawStretchedTextureSegment(Parm_Canvas_0, 0.0000000, 0.0000000, W.WinWidth, W.WinHeight, float(R.X), float(R.Y), float(R.W), float(R.H), Local_int_v0);
    if(!W.bDisabled)
    {
        W.DrawUpBevel(Parm_Canvas_0, W.ThumbStart, 0.0000000, W.ThumbWidth, Size_ScrollbarWidth, Local_int_v0);
    }
    return;
}

function Tab_SetupLeftButton(UWindowTabControlLeftButton W)
{
    local Texture Local_int_v0;

    Local_int_v0 = W.GetLookAndFeelTexture();
    W.WinWidth = Size_ScrollbarButtonHeight;
    W.WinHeight = Size_ScrollbarWidth;
    W.WinTop = Size_TabAreaHeight - W.WinHeight;
    W.WinLeft = W.ParentWindow.WinWidth - (float(2) * W.WinWidth);
    W.bUseRegion = true;
    W.UpTexture = Local_int_v0;
    W.DownTexture = Local_int_v0;
    W.OverTexture = Local_int_v0;
    W.DisabledTexture = Local_int_v0;
    W.UpRegion = SBLeftUp;
    W.DownRegion = SBLeftDown;
    W.OverRegion = SBLeftUp;
    W.DisabledRegion = SBLeftDisabled;
    return;
}

function Tab_SetupRightButton(UWindowTabControlRightButton W)
{
    local Texture Local_int_v0;

    Local_int_v0 = W.GetLookAndFeelTexture();
    W.WinWidth = Size_ScrollbarButtonHeight;
    W.WinHeight = Size_ScrollbarWidth;
    W.WinTop = Size_TabAreaHeight - W.WinHeight;
    W.WinLeft = W.ParentWindow.WinWidth - W.WinWidth;
    W.bUseRegion = true;
    W.UpTexture = Local_int_v0;
    W.DownTexture = Local_int_v0;
    W.OverTexture = Local_int_v0;
    W.DisabledTexture = Local_int_v0;
    W.UpRegion = SBRightUp;
    W.DownRegion = SBRightDown;
    W.OverRegion = SBRightUp;
    W.DisabledRegion = SBRightDisabled;
    return;
}

function Tab_SetTabPageSize(UWindowPageControl W, UWindowPageWindow Parm_UWindowPageWindow_0)
{
    Parm_UWindowPageWindow_0.WinLeft = 2.0000000;
    Parm_UWindowPageWindow_0.WinTop = (W.TabArea.WinHeight - float(TabSelectedM.H - TabUnselectedM.H)) + float(3);
    Parm_UWindowPageWindow_0.SetSize(W.WinWidth - float(4), (W.WinHeight - (W.TabArea.WinHeight - float(TabSelectedM.H - TabUnselectedM.H))) - float(6));
    return;
}

function Tab_DrawTabPageArea(UWindowPageControl W, Canvas Parm_Canvas_0, UWindowPageWindow Parm_UWindowPageWindow_0)
{
    W.DrawUpBevel(Parm_Canvas_0, 0.0000000, W.TabArea.WinHeight - float(TabSelectedM.H - TabUnselectedM.H), W.WinWidth, W.WinHeight - (W.TabArea.WinHeight - float(TabSelectedM.H - TabUnselectedM.H)), W.GetLookAndFeelTexture());
    return;
}

function Tab_GetTabSize(UWindowTabControlTabArea Parm_UWindowTabControlTabArea_0, Canvas Parm_Canvas_0, string Text, out float W, out float H)
{
    local float Local_float_v0, Local_float_v1;

    Parm_Canvas_0.Font = Parm_UWindowTabControlTabArea_0.Root.Fonts[Parm_UWindowTabControlTabArea_0.1];
    Parm_UWindowTabControlTabArea_0.TextSize(Parm_Canvas_0, Text, Local_float_v0, Local_float_v1);
    W = Local_float_v0 + Size_TabSpacing;
    H = Size_TabAreaHeight;
    return;
}

function Menu_DrawMenuBar(UWindowMenuBar W, Canvas Parm_Canvas_0)
{
    W.DrawClippedTexture(Parm_Canvas_0, 0.0000000, 0.0000000, Texture'RMenu.Icons.StoneBarL');
    W.DrawStretchedTexture(Parm_Canvas_0, 16.0000000, 0.0000000, W.WinWidth - float(32), 16.0000000, Texture'RMenu.Icons.StoneBarTile');
    W.DrawClippedTexture(Parm_Canvas_0, W.WinWidth - float(16), 0.0000000, Texture'RMenu.Icons.StoneBarWin');
    return;
}

function Menu_DrawMenuBarItem(UWindowMenuBar B, UWindowMenuBarItem i, float X, float Y, float W, float H, Canvas Parm_Canvas_0)
{
    if(B.Selected == i)
    {
        B.DrawClippedTexture(Parm_Canvas_0, X, 0.0000000, Texture'RMenu.Icons.StoneBarInL');
        B.DrawClippedTexture(Parm_Canvas_0, (X + W) - float(1), 0.0000000, Texture'RMenu.Icons.StoneBarInR');
        B.DrawStretchedTexture(Parm_Canvas_0, X + float(1), 0.0000000, W - float(2), 16.0000000, Texture'RMenu.Icons.StoneBarInM');        
    }
    else
    {
        if(B.Over == i)
        {
            B.DrawClippedTexture(Parm_Canvas_0, X, 0.0000000, Texture'RMenu.Icons.StoneBarOutL');
            B.DrawClippedTexture(Parm_Canvas_0, (X + W) - float(1), 0.0000000, Texture'RMenu.Icons.StoneBarOutR');
            B.DrawStretchedTexture(Parm_Canvas_0, X + float(1), 0.0000000, W - float(2), 16.0000000, Texture'RMenu.Icons.StoneBarOutM');
        }
    }
    Parm_Canvas_0.Font = B.Root.Fonts[0];
    Parm_Canvas_0.DrawColor.R = 0;
    Parm_Canvas_0.DrawColor.G = 0;
    Parm_Canvas_0.DrawColor.B = 0;
    B.ClipText(Parm_Canvas_0, X + float(B.Spacing / 2), 3.0000000, i.Caption, true);
    return;
}

function Menu_DrawPulldownMenuBackground(UWindowPulldownMenu W, Canvas Parm_Canvas_0)
{
    W.DrawClippedTexture(Parm_Canvas_0, 0.0000000, 0.0000000, Texture'RMenu.Icons.StoneMenuTL');
    W.DrawStretchedTexture(Parm_Canvas_0, 4.0000000, 0.0000000, W.WinWidth - float(8), 4.0000000, Texture'RMenu.Icons.StoneMenuT');
    W.DrawClippedTexture(Parm_Canvas_0, W.WinWidth - float(4), 0.0000000, Texture'RMenu.Icons.StoneMenuTR');
    W.DrawClippedTexture(Parm_Canvas_0, 0.0000000, W.WinHeight - float(4), Texture'RMenu.Icons.StoneMenuBL');
    W.DrawStretchedTexture(Parm_Canvas_0, 4.0000000, W.WinHeight - float(4), W.WinWidth - float(8), 4.0000000, Texture'RMenu.Icons.StoneMenuB');
    W.DrawClippedTexture(Parm_Canvas_0, W.WinWidth - float(4), W.WinHeight - float(4), Texture'RMenu.Icons.StoneMenuBR');
    W.DrawStretchedTexture(Parm_Canvas_0, 0.0000000, 4.0000000, 4.0000000, W.WinHeight - float(8), Texture'RMenu.Icons.StoneMenuL');
    W.DrawStretchedTexture(Parm_Canvas_0, W.WinWidth - float(4), 4.0000000, 4.0000000, W.WinHeight - float(8), Texture'RMenu.Icons.StoneMenuR');
    W.DrawStretchedTexture(Parm_Canvas_0, 4.0000000, 4.0000000, W.WinWidth - float(8), W.WinHeight - float(8), Texture'RMenu.Icons.StoneMenuArea');
    return;
}

function Menu_DrawPulldownMenuItem(UWindowPulldownMenu Parm_UWindowPulldownMenu_0, UWindowPulldownMenuItem Parm_Inventory_0, Canvas Parm_Canvas_0, float X, float Y, float W, float H, bool Local_bool_v2)
{
    Parm_Canvas_0.DrawColor.R = byte(255);
    Parm_Canvas_0.DrawColor.G = byte(255);
    Parm_Canvas_0.DrawColor.B = byte(255);
    Parm_Inventory_0.ItemTop = Y + Parm_UWindowPulldownMenu_0.WinTop;
    if(Parm_Inventory_0.Caption == "-")
    {
        Parm_Canvas_0.DrawColor.R = byte(255);
        Parm_Canvas_0.DrawColor.G = byte(255);
        Parm_Canvas_0.DrawColor.B = byte(255);
        Parm_UWindowPulldownMenu_0.DrawStretchedTexture(Parm_Canvas_0, X, Y + float(5), W, 2.0000000, Texture'RMenu.Icons.StoneMenuLine');
        return;
    }
    Parm_Canvas_0.Font = Parm_UWindowPulldownMenu_0.Root.Fonts[0];
    if(Local_bool_v2)
    {
        Parm_UWindowPulldownMenu_0.DrawClippedTexture(Parm_Canvas_0, X, Y, Texture'RMenu.Icons.StoneMenuHL');
        Parm_UWindowPulldownMenu_0.DrawStretchedTexture(Parm_Canvas_0, X + float(4), Y, W - float(8), 16.0000000, Texture'RMenu.Icons.StoneMenuHM');
        Parm_UWindowPulldownMenu_0.DrawClippedTexture(Parm_Canvas_0, (X + W) - float(4), Y, Texture'RMenu.Icons.StoneMenuHR');
    }
    if(Parm_Inventory_0.bDisabled)
    {
        Parm_Canvas_0.DrawColor.R = 96;
        Parm_Canvas_0.DrawColor.G = 96;
        Parm_Canvas_0.DrawColor.B = 96;        
    }
    else
    {
        Parm_Canvas_0.DrawColor.R = 0;
        Parm_Canvas_0.DrawColor.G = 0;
        Parm_Canvas_0.DrawColor.B = 0;
    }
    if(Parm_Inventory_0.bChecked)
    {
        Parm_UWindowPulldownMenu_0.DrawClippedTexture(Parm_Canvas_0, X + float(1), Y + float(3), Texture'UWindow.Icons.MenuTick');
    }
    if(Parm_Inventory_0.SubMenu != none)
    {
        Parm_UWindowPulldownMenu_0.DrawClippedTexture(Parm_Canvas_0, (X + W) - float(9), Y + float(3), Texture'UWindow.Icons.MenuSubArrow');
    }
    Parm_UWindowPulldownMenu_0.ClipText(Parm_Canvas_0, (X + float(Parm_UWindowPulldownMenu_0.TextBorder)) + float(2), Y + float(3), Parm_Inventory_0.Caption, true);
    return;
}

function Button_DrawSmallButton(UWindowSmallButton B, Canvas Parm_Canvas_0)
{
    local float Y;

    if(B.bDisabled)
    {
        Y = 34.0000000;        
    }
    else
    {
        if(B.bMouseDown)
        {
            Y = 17.0000000;            
        }
        else
        {
            Y = 0.0000000;
        }
    }
    B.DrawStretchedTextureSegment(Parm_Canvas_0, 0.0000000, 0.0000000, 3.0000000, 16.0000000, 0.0000000, Y, 3.0000000, 16.0000000, Texture'RMenu.Icons.StoneButton');
    B.DrawStretchedTextureSegment(Parm_Canvas_0, B.WinWidth - float(3), 0.0000000, 3.0000000, 16.0000000, 45.0000000, Y, 3.0000000, 16.0000000, Texture'RMenu.Icons.StoneButton');
    B.DrawStretchedTextureSegment(Parm_Canvas_0, 3.0000000, 0.0000000, B.WinWidth - float(6), 16.0000000, 3.0000000, Y, 42.0000000, 16.0000000, Texture'RMenu.Icons.StoneButton');
    return;
}

simulated function PlayMenuSound(UWindowWindow W, UWindowBase.MenuSound Parm_UWindowBase.MenuSound_0)
{
    local PlayerPawn Parm_UWindowPageWindow_0;
    local Actor Local_Actor_v0;

    Parm_UWindowPageWindow_0 = W.GetPlayerOwner();
    if(Parm_UWindowPageWindow_0.ViewTarget != none)
    {
        Local_Actor_v0 = Parm_UWindowPageWindow_0.ViewTarget;        
    }
    else
    {
        Local_Actor_v0 = Parm_UWindowPageWindow_0;
    }
    switch(Parm_UWindowBase.MenuSound_0)
    {
        case 0:
            Local_Actor_v0.PlaySound(Sound'RMenu.WindowOpen', 6);
            break;
        case 1:
            break;
        case 2:
            Local_Actor_v0.PlaySound(Sound'RMenu.LittleSelect');
            break;
        case 6:
            break;
        case 3:
            break;
        case 4:
            break;
        case 5:
            Local_Actor_v0.PlaySound(Sound'RMenu.LittleSelect');
            break;
        case 7:
            Local_Actor_v0.PlaySound(Sound'RMenu.TopSlide', 6);
            break;
        case 8:
            Local_Actor_v0.PlaySound(Sound'RMenu.TopSlam', 2);
            break;
        case 9:
            Local_Actor_v0.PlaySound(Sound'RMenu.BottomOpen', 0);
            break;
        case 10:
            Local_Actor_v0.PlaySound(Sound'RMenu.LeftButton', 1);
            break;
        case 11:
            Local_Actor_v0.PlaySound(Sound'RMenu.TopButton', 1);
            break;
        case 12:
            Local_Actor_v0.PlaySound(Sound'RMenu.LeftMouseOver', 0);
            break;
        case 13:
            Local_Actor_v0.PlaySound(Sound'RMenu.TopMouseOver', 0);
            break;
        case 14:
            Local_Actor_v0.PlaySound(Sound'RMenu.WindowOpen', 0);
            break;
        case 15:
            break;
        default:
            break;
    }
    return;
}
