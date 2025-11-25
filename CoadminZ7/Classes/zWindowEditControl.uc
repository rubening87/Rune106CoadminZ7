class zWindowEditControl extends UWindowEditControl;

function Created()
{
    local Color Parm_Canvas_0;

    super(UWindowDialogControl).Created();
    EditBox = UWindowEditBox(CreateWindow(Class'coadminz7.zWindowEditBox', 0.0000000, 0.0000000, WinWidth, WinHeight));
    EditBox.NotifyOwner = self;
    EditBox.bSelectOnFocus = true;
    EditBoxWidth = WinWidth / float(2);
    SetEditTextColor(LookAndFeel.EditBoxTextColor);
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
    super(UWindowDialogControl).SetFont(Parm_int_0);
    EditBox.SetFont(Parm_int_0);
    return;
}

function SetHistory(bool Parm_bool_0)
{
    EditBox.SetHistory(Parm_bool_0);
    return;
}

function SetEditTextColor(Color Parm_Color_0)
{
    EditBox.SetTextColor(Parm_Color_0);
    return;
}

function Clear()
{
    EditBox.Clear();
    return;
}

function string GetValue()
{
    return EditBox.GetValue();
    return;
}

function SetValue(string Parm_string_0)
{
    EditBox.SetValue(Parm_string_0);
    return;
}

function SetMaxLength(int MaxLength)
{
    EditBox.MaxLength = MaxLength;
    return;
}

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    LookAndFeel.Editbox_Draw(self, Parm_Canvas_0);
    super(UWindowWindow).Paint(Parm_Canvas_0, X, Y);
    return;
}

function BeforePaint(Canvas Parm_Canvas_0, float X, float Y)
{
    super(UWindowDialogControl).BeforePaint(Parm_Canvas_0, X, Y);
    LookAndFeel.Editbox_SetupSizes(self, Parm_Canvas_0);
    return;
}

function SetDelayedNotify(bool bDelayedNotify)
{
    EditBox.bDelayedNotify = bDelayedNotify;
    return;
}
