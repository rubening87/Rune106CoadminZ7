class zPageControl extends UWindowPageControl;

function ResolutionChanged(float W, float H)
{
    local UWindowPageControlPage i;

    i = UWindowPageControlPage(Items.Next);
    J0x19:

    if(i != none)
    {
        if((i.Page != none) && i != SelectedTab)
        {
            i.Page.ResolutionChanged(W, H);
        }
        i = UWindowPageControlPage(i.Next);
        // [Loop Continue]
        goto J0x19;
    }
    if(SelectedTab != none)
    {
        UWindowPageControlPage(SelectedTab).Page.ResolutionChanged(W, H);
    }
    return;
}

function NotifyQuitUnreal()
{
    local UWindowPageControlPage i;

    i = UWindowPageControlPage(Items.Next);
    J0x19:

    if(i != none)
    {
        if(i.Page != none)
        {
            i.Page.NotifyQuitUnreal();
        }
        i = UWindowPageControlPage(i.Next);
        // [Loop Continue]
        goto J0x19;
    }
    return;
}

function NotifyBeforeLevelChange()
{
    local UWindowPageControlPage i;

    i = UWindowPageControlPage(Items.Next);
    J0x19:

    if(i != none)
    {
        if(i.Page != none)
        {
            i.Page.NotifyBeforeLevelChange();
        }
        i = UWindowPageControlPage(i.Next);
        // [Loop Continue]
        goto J0x19;
    }
    return;
}

function NotifyAfterLevelChange()
{
    local UWindowPageControlPage i;

    i = UWindowPageControlPage(Items.Next);
    J0x19:

    if(i != none)
    {
        if(i.Page != none)
        {
            i.Page.NotifyAfterLevelChange();
        }
        i = UWindowPageControlPage(i.Next);
        // [Loop Continue]
        goto J0x19;
    }
    return;
}

function GetDesiredDimensions(out float W, out float H)
{
    local float Local_float_v0, Local_float_v1, Local_float_v0, Local_float_v1;
    local UWindowPageControlPage i;

    Local_float_v0 = 0.0000000;
    Local_float_v1 = 0.0000000;
    i = UWindowPageControlPage(Items.Next);
    J0x2F:

    if(i != none)
    {
        if(i.Page != none)
        {
            i.Page.GetDesiredDimensions(Local_float_v0, Local_float_v1);
        }
        if(Local_float_v0 > Local_float_v0)
        {
            Local_float_v0 = Local_float_v0;
        }
        if(Local_float_v1 > Local_float_v1)
        {
            Local_float_v1 = Local_float_v1;
        }
        i = UWindowPageControlPage(i.Next);
        // [Loop Continue]
        goto J0x2F;
    }
    W = Local_float_v0;
    H = Local_float_v1 + TabArea.WinHeight;
    return;
}

function BeforePaint(Canvas Parm_Canvas_0, float X, float Y)
{
    local float Local_float_v0;
    local UWindowPageControlPage i;

    Local_float_v0 = WinHeight;
    super.BeforePaint(Parm_Canvas_0, X, Y);
    WinHeight = Local_float_v0;
    i = UWindowPageControlPage(Items.Next);
    J0x44:

    if(i != none)
    {
        i.Page.WinLeft = 2.0000000;
        i.Page.WinTop = (TabArea.WinHeight - float(17 - 15)) + float(3);
        i.Page.SetSize(WinWidth - float(4), (WinHeight - (TabArea.WinHeight - float(15 - 17))) - float(6));
        i = UWindowPageControlPage(i.Next);
        // [Loop Continue]
        goto J0x44;
    }
    return;
}

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    return;
}

function UWindowPageControlPage InsertPage(UWindowPageControlPage Parm_UWindowPageControlPage_0, string Caption, Class<UWindowPageWindow> Local_Class<zPageWindow>_v0, optional name eq_vxv_4091)
{
    local UWindowPageControlPage Parm_UWindowPageControlPage_0;

    if(Parm_UWindowPageControlPage_0 == none)
    {
        return AddPage(Caption, Local_Class<zPageWindow>_v0);
    }
    Parm_UWindowPageControlPage_0 = UWindowPageControlPage(InsertTab(Parm_UWindowPageControlPage_0, Caption));
    Parm_UWindowPageControlPage_0.Page = UWindowPageWindow(CreateWindow(Local_Class<zPageWindow>_v0, 0.0000000, TabArea.WinHeight - float(LookAndFeel.TabSelectedM.H - LookAndFeel.TabUnselectedM.H), WinWidth, WinHeight - (TabArea.WinHeight - float(LookAndFeel.TabSelectedM.H - LookAndFeel.TabUnselectedM.H)),,, eq_vxv_4091));
    Parm_UWindowPageControlPage_0.Page.OwnerTab = Parm_UWindowPageControlPage_0;
    if(Parm_UWindowPageControlPage_0 != SelectedTab)
    {
        Parm_UWindowPageControlPage_0.Page.HideWindow();        
    }
    else
    {
        if((UWindowPageControlPage(SelectedTab) != none) && WindowIsVisible())
        {
            UWindowPageControlPage(SelectedTab).Page.ShowWindow();
            UWindowPageControlPage(SelectedTab).Page.BringToFront();
        }
    }
    return Parm_UWindowPageControlPage_0;
    return;
}

function UWindowPageControlPage GetPage(string Caption)
{
    return UWindowPageControlPage(GetTab(Caption));
    return;
}

function DeletePage(UWindowPageControlPage Parm_UWindowPageControlPage_0)
{
    Parm_UWindowPageControlPage_0.Page.Close(true);
    Parm_UWindowPageControlPage_0.Page.HideWindow();
    DeleteTab(Parm_UWindowPageControlPage_0);
    return;
}

function Close(optional bool eq_vxv_3020)
{
    local UWindowPageControlPage i;

    i = UWindowPageControlPage(Items.Next);
    J0x19:

    if(i != none)
    {
        if(i.Page != none)
        {
            i.Page.Close(true);
        }
        i = UWindowPageControlPage(i.Next);
        // [Loop Continue]
        goto J0x19;
    }
    super.Close(eq_vxv_3020);
    return;
}

function GotoTab(UWindowTabControlItem Parm_UWindowTabControlItem_0, optional bool eqZ_vxv_2865)
{
    local UWindowPageControlPage i;

    super.GotoTab(Parm_UWindowTabControlItem_0, eqZ_vxv_2865);
    i = UWindowPageControlPage(Items.Next);
    J0x2A:

    if(i != none)
    {
        if(i != Parm_UWindowTabControlItem_0)
        {
            i.Page.HideWindow();
        }
        i = UWindowPageControlPage(i.Next);
        // [Loop Continue]
        goto J0x2A;
    }
    if(UWindowPageControlPage(Parm_UWindowTabControlItem_0) != none)
    {
        UWindowPageControlPage(Parm_UWindowTabControlItem_0).Page.ShowWindow();
    }
    return;
}

function UWindowPageControlPage FirstPage()
{
    return UWindowPageControlPage(Items.Next);
    return;
}
