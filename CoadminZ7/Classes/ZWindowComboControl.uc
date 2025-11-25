class ZWindowComboControl extends UWindowComboControl;

var Class<zWindowComboList> ListClass;
var zWindowComboList UNK_v7245;
var string STR_v7246;
var zRuneMenuPlayerSetupClient Owner;

function Created()
{
    super(UWindowDialogControl).Created();
    EditBox = UWindowEditBox(CreateWindow(Class'UWindow.UWindowEditBox', 0.0000000, 0.0000000, WinWidth - float(12), WinHeight));
    EditBox.NotifyOwner = self;
    EditBoxWidth = WinWidth / float(2);
    EditBox.bTransient = true;
    Button = UWindowComboButton(CreateWindow(Class'UWindow.UWindowComboButton', WinWidth - float(12), 0.0000000, 12.0000000, 10.0000000));
    Button.Owner = self;
    UNK_v7245 = zWindowComboList(Root.CreateWindow(ListClass, 0.0000000, 0.0000000, 100.0000000, 100.0000000));
    UNK_v7245.LookAndFeel = LookAndFeel;
    UNK_v7245.UNK_v7247 = self;
    UNK_v7245.Setup();
    UNK_v7245.HideWindow();
    bListVisible = false;
    SetEditTextColor(LookAndFeel.EditBoxTextColor);
    return;
}

function SetButtons(bool Parm_bool_0)
{
    bButtons = Parm_bool_0;
    if(Parm_bool_0)
    {
        LeftButton = UWindowComboLeftButton(CreateWindow(Class'UWindow.UWindowComboLeftButton', WinWidth - float(12), 0.0000000, 12.0000000, 10.0000000));
        RightButton = UWindowComboRightButton(CreateWindow(Class'UWindow.UWindowComboRightButton', WinWidth - float(12), 0.0000000, 12.0000000, 10.0000000));        
    }
    else
    {
        LeftButton = none;
        RightButton = none;
    }
    return;
}

function Notify(byte Parm_byte_0)
{
    super(UWindowDialogControl).Notify(Parm_byte_0);
    if(int(Parm_byte_0) == 10)
    {
        if(!bListVisible)
        {
            if(!bCanEdit)
            {
                DropDown();
                Root.CaptureMouse(UNK_v7245);
            }            
        }
        else
        {
            CloseUp();
        }
    }
    return;
}

function int FindItemIndex(string Local_Vector_v0, optional bool eqY_vxv_2835)
{
    return UNK_v7245.FindItemIndex(Local_Vector_v0, eqY_vxv_2835);
    return;
}

function RemoveItem(int Index)
{
    UNK_v7245.RemoveItem(Index);
    return;
}

function int FindItemIndex2(string Parm_string_0, optional bool eqY_vxv_2835)
{
    return UNK_v7245.FindItemIndex2(Parm_string_0, eqY_vxv_2835);
    return;
}

function Close(optional bool eq_vxv_3020)
{
    if(eq_vxv_3020 && bListVisible)
    {
        CloseUp();
    }
    super(UWindowWindow).Close(eq_vxv_3020);
    return;
}

function SetNumericOnly(bool bNumericOnly)
{
    EditBox.bNumericOnly = bNumericOnly;
    return;
}

function SetNumericFloat(bool bNumericFloat)
{
    EditBox.bNumericFloat = bNumericFloat;
    return;
}

function SetFont(int Parm_int_0)
{
    super.SetFont(Parm_int_0);
    EditBox.SetFont(Parm_int_0);
    return;
}

function SetEditTextColor(Color Parm_Color_0)
{
    EditBox.SetTextColor(Parm_Color_0);
    return;
}

function SetEditable(bool Parm_bool_0)
{
    bCanEdit = Parm_bool_0;
    EditBox.SetEditable(bCanEdit);
    return;
}

function int GetSelectedIndex()
{
    return UNK_v7245.FindItemIndex(GetValue());
    return;
}

function SetSelectedIndex(int Index)
{
    SetValue(UNK_v7245.GetItemValue(Index), UNK_v7245.GetItemValue2(Index));
    return;
}

function string GetValue()
{
    return EditBox.GetValue();
    return;
}

function string GetValue2()
{
    return EditBox.GetValue2();
    return;
}

function SetValue(string Parm_string_0, optional string eqbslash_vxv_2919)
{
    EditBox.SetValue(Parm_string_0, eqbslash_vxv_2919);
    return;
}

function SetMaxLength(int MaxLength)
{
    EditBox.MaxLength = MaxLength;
    return;
}

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    LookAndFeel.Combo_Draw(self, Parm_Canvas_0);
    super.Paint(Parm_Canvas_0, X, Y);
    return;
}

function AddItem(string Parm_string_0, optional string VCT_v2839, optional int SortWeight)
{
    UNK_v7245.AddItem(Parm_string_0, VCT_v2839, SortWeight);
    return;
}

function InsertItem(string Parm_string_0, optional string VCT_v2839, optional int SortWeight)
{
    UNK_v7245.InsertItem(Parm_string_0, VCT_v2839, SortWeight);
    return;
}

function BeforePaint(Canvas Parm_Canvas_0, float X, float Y)
{
    super(UWindowDialogControl).BeforePaint(Parm_Canvas_0, X, Y);
    LookAndFeel.Combo_SetupSizes(self, Parm_Canvas_0);
    UNK_v7245.bLeaveOnscreen = bListVisible && bLeaveOnscreen;
    return;
}

function CloseUp()
{
    bListVisible = false;
    EditBox.SetEditable(bCanEdit);
    EditBox.SelectAll();
    UNK_v7245.HideWindow();
    return;
}

function DropDown()
{
    local int Index;

    Index = GetSelectedIndex();
    if(Index >= 0)
    {
        UNK_v7245.VertSB.pos = float(Index);
    }
    bListVisible = true;
    EditBox.SetEditable(false);
    UNK_v7245.ShowWindow();
    return;
}

function Sort()
{
    UNK_v7245.Sort();
    return;
}

function ClearValue()
{
    EditBox.Clear();
    return;
}

function Clear()
{
    UNK_v7245.Clear();
    EditBox.Clear();
    return;
}

function FocusOtherWindow(UWindowWindow W)
{
    super(UWindowWindow).FocusOtherWindow(W);
    if(((bListVisible && W.ParentWindow != self) && W != UNK_v7245) && W.ParentWindow != UNK_v7245)
    {
        CloseUp();
    }
    return;
}

defaultproperties
{
    ListClass=Class'coadminz7.zWindowComboList'
}