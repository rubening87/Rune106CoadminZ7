class zBrowserGridColumn extends UWindowGridColumn;

function Created()
{
    super.Created();
    return;
}

function BeforePaint(Canvas Parm_Canvas_0, float X, float Y)
{
    super.BeforePaint(Parm_Canvas_0, X, Y);
    if(WinWidth < float(1))
    {
        WinWidth = 1.0000000;
    }
    return;
}

function LMouseDown(float X, float Y)
{
    super.LMouseDown(X, Y);
    if((X > float(Min(int(WinWidth - float(5)), int((ParentWindow.WinWidth - WinLeft) - float(5))))) && Y < float(12))
    {
        bSizing = true;
        UWindowGrid(ParentWindow.ParentWindow).bSizingColumn = true;
        Root.CaptureMouse();
    }
    return;
}

function LMouseUp(float X, float Y)
{
    super.LMouseUp(X, Y);
    UWindowGrid(ParentWindow.ParentWindow).bSizingColumn = false;
    return;
}

function MouseMove(float X, float Y)
{
    if((X > float(Min(int(WinWidth - float(5)), int((ParentWindow.WinWidth - WinLeft) - float(5))))) && Y < float(12))
    {
        Cursor = Root.HSplitCursor;        
    }
    else
    {
        Cursor = Root.NormalCursor;
    }
    if(bSizing && bMouseDown)
    {
        WinWidth = X;
        if(WinWidth < float(1))
        {
            WinWidth = 1.0000000;
        }
        if(WinWidth > ((ParentWindow.WinWidth - WinLeft) - float(1)))
        {
            WinWidth = (ParentWindow.WinWidth - WinLeft) - float(1);
        }        
    }
    else
    {
        bSizing = false;
        UWindowGrid(ParentWindow.ParentWindow).bSizingColumn = false;
    }
    return;
}

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    local Region R;
    local Texture Local_int_v0;
    local Color Local_Color_v0;

    UWindowGrid(ParentWindow.ParentWindow).PaintColumn(Parm_Canvas_0, self, X, Y);
    if(IsActive())
    {
        Local_int_v0 = LookAndFeel.Active;
        Local_Color_v0 = LookAndFeel.HeadingActiveTitleColor;        
    }
    else
    {
        Local_int_v0 = LookAndFeel.Inactive;
        Local_Color_v0 = LookAndFeel.HeadingInActiveTitleColor;
    }
    Parm_Canvas_0.DrawColor.R = byte(255);
    Parm_Canvas_0.DrawColor.G = byte(255);
    Parm_Canvas_0.DrawColor.B = byte(255);
    DrawUpBevel(Parm_Canvas_0, 0.0000000, 0.0000000, WinWidth, float(LookAndFeel.ColumnHeadingHeight + 1), Local_int_v0);
    Parm_Canvas_0.DrawColor.R = 0;
    Parm_Canvas_0.DrawColor.G = 0;
    Parm_Canvas_0.DrawColor.B = 0;
    ClipText(Parm_Canvas_0, 2.0000000, 1.0000000, ColumnHeading);
    Parm_Canvas_0.DrawColor.R = byte(255);
    Parm_Canvas_0.DrawColor.G = byte(255);
    Parm_Canvas_0.DrawColor.B = byte(255);
    return;
}

function Click(float X, float Y)
{
    local int Local_int_v0;

    if(Y < float(12))
    {
        if(X <= float(Min(int(WinWidth - float(5)), int((ParentWindow.WinWidth - WinLeft) - float(5)))))
        {
            UWindowGrid(ParentWindow.ParentWindow).SortColumn(self);
        }        
    }
    else
    {
        Local_int_v0 = int(float(int(Y - float(12))) / UWindowGrid(ParentWindow.ParentWindow).RowHeight) + UWindowGrid(ParentWindow.ParentWindow).TopRow;
        UWindowGrid(ParentWindow.ParentWindow).SelectRow(Local_int_v0);
    }
    return;
}

function RMouseDown(float X, float Y)
{
    local int Local_int_v0;

    super.RMouseDown(X, Y);
    if(Y > float(12))
    {
        Local_int_v0 = int(float(int(Y - float(12))) / UWindowGrid(ParentWindow.ParentWindow).RowHeight) + UWindowGrid(ParentWindow.ParentWindow).TopRow;
        UWindowGrid(ParentWindow.ParentWindow).SelectRow(Local_int_v0);
        UWindowGrid(ParentWindow.ParentWindow).RightClickRowDown(Local_int_v0, X + WinLeft, Y + WinTop);
    }
    return;
}

function RMouseUp(float X, float Y)
{
    local int Local_int_v0;

    super.RMouseUp(X, Y);
    if(Y > float(12))
    {
        Local_int_v0 = int(float(int(Y - float(12))) / UWindowGrid(ParentWindow.ParentWindow).RowHeight) + UWindowGrid(ParentWindow.ParentWindow).TopRow;
        UWindowGrid(ParentWindow.ParentWindow).SelectRow(Local_int_v0);
        UWindowGrid(ParentWindow.ParentWindow).RightClickRow(Local_int_v0, X + WinLeft, Y + WinTop);
    }
    return;
}

function DoubleClick(float X, float Y)
{
    local int Local_int_v0;

    if(Y < float(12))
    {
        Click(X, Y);        
    }
    else
    {
        Local_int_v0 = int(float(int(Y - float(12))) / UWindowGrid(ParentWindow.ParentWindow).RowHeight) + UWindowGrid(ParentWindow.ParentWindow).TopRow;
        UWindowGrid(ParentWindow.ParentWindow).DoubleClickRow(Local_int_v0);
    }
    return;
}

function MouseLeave()
{
    super.MouseLeave();
    UWindowGrid(ParentWindow.ParentWindow).MouseLeaveColumn(self);
    return;
}
