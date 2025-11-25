class zWindowComboList extends UWindowComboList;

var ZWindowComboControl UNK_v7247;

function KeyDown(int Key, float X, float Y)
{
    local PlayerPawn Local_PlayerPawn_v0;

    Local_PlayerPawn_v0 = GetPlayerOwner();
    if((Local_PlayerPawn_v0 != none) && VertSB != none)
    {
        switch(Key)
        {
            case int(Local_PlayerPawn_v0.236):
                VertSB.Scroll(-1.0000000);
                break;
            case int(Local_PlayerPawn_v0.237):
                VertSB.Scroll(1.0000000);
                break;
            default:
                break;
        }
    }
    else
    {
        super(UWindowDialogControl).KeyDown(Key, X, Y);
        return;
    }
}

function Sort()
{
    Items.Sort();
    return;
}

function WindowShown()
{
    super(UWindowWindow).WindowShown();
    FocusWindow();
    return;
}

function Clear()
{
    Items.Clear();
    return;
}

function Texture GetLookAndFeelTexture()
{
    return LookAndFeel.Active;
    return;
}

function Setup()
{
    VertSB = UWindowVScrollbar(CreateWindow(Class'UWindow.UWindowVScrollbar', 0.0000000, WinWidth - float(16), 16.0000000, WinHeight));
    return;
}

function Created()
{
    ListClass = Class'UWindow.UWindowComboListItem';
    bAlwaysOnTop = true;
    bTransient = true;
    super(UWindowListControl).Created();
    ItemHeight = 13;
    VBorder = 3;
    HBorder = 3;
    TextBorder = 9;
    super(UWindowListControl).Created();
    return;
}

function int FindItemIndex(string Value, optional bool eqY_vxv_2835)
{
    local UWindowComboListItem i;
    local int Count;

    i = UWindowComboListItem(Items.Next);
    Count = 0;
    J0x20:

    if(i != none)
    {
        
        if(eqY_vxv_2835 && i.Value ~= Value)
        {
            return Count;
        }
        if(i.Value == Value)
        {
            return Count;
        }
        Count++;
        i = UWindowComboListItem(i.Next);
        // [Loop Continue]
        goto J0x20;
    }
    return -1;
    return;
}

function int FindItemIndex2(string Value2, optional bool eqY_vxv_2835)
{
    local UWindowComboListItem i;
    local int Count;

    i = UWindowComboListItem(Items.Next);
    Count = 0;
    J0x20:

    if(i != none)
    {
        
        if(eqY_vxv_2835 && i.Value2 ~= Value2)
        {
            return Count;
        }
        if(i.Value2 == Value2)
        {
            return Count;
        }
        Count++;
        i = UWindowComboListItem(i.Next);
        // [Loop Continue]
        goto J0x20;
    }
    return -1;
    return;
}

function string GetItemValue(int Index)
{
    local UWindowComboListItem i;
    local int Count;

    i = UWindowComboListItem(Items.Next);
    Count = 0;
    J0x20:

    if(i != none)
    {
        if(Count == Index)
        {
            return i.Value;
        }
        Count++;
        i = UWindowComboListItem(i.Next);
        // [Loop Continue]
        goto J0x20;
    }
    return "";
    return;
}

function RemoveItem(int Index)
{
    local UWindowComboListItem i;
    local int Count;

    if(Index == -1)
    {
        return;
    }
    i = UWindowComboListItem(Items.Next);
    Count = 0;
    J0x31:

    if(i != none)
    {
        if(Count == Index)
        {
            i.Remove();
            return;
        }
        Count++;
        i = UWindowComboListItem(i.Next);
        // [Loop Continue]
        goto J0x31;
    }
    return;
}

function string GetItemValue2(int Index)
{
    local UWindowComboListItem i;
    local int Count;

    i = UWindowComboListItem(Items.Next);
    Count = 0;
    J0x20:

    if(i != none)
    {
        if(Count == Index)
        {
            return i.Value2;
        }
        Count++;
        i = UWindowComboListItem(i.Next);
        // [Loop Continue]
        goto J0x20;
    }
    return "";
    return;
}

function AddItem(string Value, optional string Value2, optional int SortWeight)
{
    local UWindowComboListItem i;

    i = UWindowComboListItem(Items.Append(Class'UWindow.UWindowComboListItem'));
    i.Value = Value;
    i.Value2 = Value2;
    i.SortWeight = SortWeight;
    return;
}

function InsertItem(string Value, optional string Value2, optional int SortWeight)
{
    local UWindowComboListItem i;

    i = UWindowComboListItem(Items.Insert(Class'UWindow.UWindowComboListItem'));
    i.Value = Value;
    i.Value2 = Value2;
    i.SortWeight = SortWeight;
    return;
}

function SetSelected(float X, float Y)
{
    local UWindowComboListItem Parm_UWindowTabControlItem_0, Parm_Inventory_0;
    local int i, Count;

    Count = 0;
    Parm_Inventory_0 = UWindowComboListItem(Items.Next);
    J0x20:

    if(Parm_Inventory_0 != none)
    {
        Count++;
        Parm_Inventory_0 = UWindowComboListItem(Parm_Inventory_0.Next);
        // [Loop Continue]
        goto J0x20;
    }
    i = int(float(int(Y - float(VBorder)) / ItemHeight) + VertSB.pos);
    if(i < 0)
    {
        i = 0;
    }
    if(float(i) >= (VertSB.pos + float(Min(Count, MaxVisible))))
    {
        i = int((VertSB.pos + float(Min(Count, MaxVisible))) - float(1));
    }
    Parm_UWindowTabControlItem_0 = UWindowComboListItem(Items.FindEntry(i));
    if(Parm_UWindowTabControlItem_0 != Selected)
    {
        if(Parm_UWindowTabControlItem_0 == none)
        {
            Selected = none;            
        }
        else
        {
            Selected = Parm_UWindowTabControlItem_0;
        }
    }
    if(UNK_v7247.Owner != none)
    {
        if(UNK_v7247.STR_v7246 == "skin")
        {
            UNK_v7247.Owner.eq_vxv_491(string(i), UNK_v7247.STR_v7246);            
        }
        else
        {
            UNK_v7247.Owner.eq_vxv_491(Parm_UWindowTabControlItem_0.Value2, UNK_v7247.STR_v7246);
        }
    }
    return;
}

function MouseMove(float X, float Y)
{
    super(UWindowDialogControl).MouseMove(X, Y);
    if(Y > WinHeight)
    {
        VertSB.Scroll(1.0000000);
    }
    if(Y < float(0))
    {
        VertSB.Scroll(-1.0000000);
    }
    SetSelected(X, Y);
    FocusWindow();
    return;
}

function LMouseUp(float X, float Y)
{
    if(((Y >= float(0)) && Y <= WinHeight) && Selected != none)
    {
        ExecuteItem(Selected);
    }
    super(UWindowWindow).LMouseUp(X, Y);
    return;
}

function LMouseDown(float X, float Y)
{
    Root.CaptureMouse();
    return;
}

function BeforePaint(Canvas Parm_Canvas_0, float X, float Y)
{
    local float W, H, Parm_float_0;
    local int Count;
    local UWindowComboListItem i;
    local float Local_float_v1, Local_float_v2, Local_float_v3;

    Parm_Canvas_0.Font = Root.Fonts[0];
    Parm_Canvas_0.SetPos(0.0000000, 0.0000000);
    Parm_float_0 = UNK_v7247.EditBoxWidth;
    Local_float_v3 = float(HBorder + TextBorder) * float(2);
    Count = Items.Count();
    if(Count > MaxVisible)
    {
        Local_float_v3 += LookAndFeel.Size_ScrollbarWidth;
        WinHeight = float(ItemHeight * MaxVisible) + float(VBorder * 2);        
    }
    else
    {
        VertSB.pos = 0.0000000;
        WinHeight = float(ItemHeight * Count) + float(VBorder * 2);
    }
    i = UWindowComboListItem(Items.Next);
    J0x10B:

    if(i != none)
    {
        TextSize(Parm_Canvas_0, RemoveAmpersand(i.Value), W, H);
        if((W + Local_float_v3) > Parm_float_0)
        {
            Parm_float_0 = W + Local_float_v3;
        }
        i = UWindowComboListItem(i.Next);
        // [Loop Continue]
        goto J0x10B;
    }
    WinWidth = Parm_float_0;
    Local_float_v1 = (UNK_v7247.EditAreaDrawX + UNK_v7247.EditBoxWidth) - WinWidth;
    Local_float_v2 = UNK_v7247.Button.WinTop + UNK_v7247.Button.WinHeight;
    if(Count > MaxVisible)
    {
        VertSB.ShowWindow();
        VertSB.SetRange(0.0000000, float(Count), float(MaxVisible));
        VertSB.WinLeft = (WinWidth - LookAndFeel.Size_ScrollbarWidth) - float(HBorder);
        VertSB.WinTop = float(HBorder);
        VertSB.WinWidth = LookAndFeel.Size_ScrollbarWidth;
        VertSB.WinHeight = WinHeight - float(2 * VBorder);        
    }
    else
    {
        VertSB.HideWindow();
    }
    UNK_v7247.WindowToGlobal(Local_float_v1, Local_float_v2, WinLeft, WinTop);
    return;
}

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    local int Count;
    local UWindowComboListItem i;

    DrawMenuBackground(Parm_Canvas_0);
    Count = 0;
    i = UWindowComboListItem(Items.Next);
    J0x2B:

    if(i != none)
    {
        if(VertSB.bWindowVisible)
        {
            if(float(Count) >= VertSB.pos)
            {
                DrawItem(Parm_Canvas_0, i, float(HBorder), float(VBorder) + (float(ItemHeight) * (float(Count) - VertSB.pos)), (WinWidth - float(2 * HBorder)) - VertSB.WinWidth, float(ItemHeight));
            }            
        }
        else
        {
            DrawItem(Parm_Canvas_0, i, float(HBorder), float(VBorder + (ItemHeight * Count)), WinWidth - float(2 * HBorder), float(ItemHeight));
        }
        Count++;
        i = UWindowComboListItem(i.Next);
        // [Loop Continue]
        goto J0x2B;
    }
    return;
}

function DrawMenuBackground(Canvas Parm_Canvas_0)
{
    LookAndFeel.ComboList_DrawBackground(self, Parm_Canvas_0);
    return;
}

function DrawItem(Canvas Parm_Canvas_0, UWindowList Parm_Inventory_0, float X, float Y, float W, float H)
{
    LookAndFeel.ComboList_DrawItem(self, Parm_Canvas_0, X, Y, W, H, UWindowComboListItem(Parm_Inventory_0).Value, Selected == Parm_Inventory_0);
    return;
}

function ExecuteItem(UWindowComboListItem i)
{
    UNK_v7247.SetValue(i.Value, i.Value2);
    CloseUp();
    return;
}

function CloseUp()
{
    if(UNK_v7247.Owner != none)
    {
        UNK_v7247.Owner.eq_vxv_491("close", UNK_v7247.STR_v7246);
    }
    UNK_v7247.CloseUp();
    return;
}

function HideWindow()
{
    if(UNK_v7247.Owner != none)
    {
        UNK_v7247.Owner.eq_vxv_491("close", UNK_v7247.STR_v7246);
    }
    super(UWindowWindow).HideWindow();
    return;
}

function FocusOtherWindow(UWindowWindow W)
{
    super(UWindowWindow).FocusOtherWindow(W);
    if(((bWindowVisible && W.ParentWindow.ParentWindow != self) && W.ParentWindow != self) && W.ParentWindow != UNK_v7247)
    {
        CloseUp();
    }
    return;
}

defaultproperties
{
    MaxVisible=20
}