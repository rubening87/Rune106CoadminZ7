class zWindowEditBox extends UWindowEditBox;

var bool B_v7248;
var byte UNK_v7249;
var int INT_v7250;
var int INT_v7251;
var bool B_v7252;

function Created()
{
    super.Created();
    bCanEdit = true;
    bControlDown = false;
    bShiftDown = false;
    MaxLength = 255;
    CaretOffset = 0;
    offset = 0.0000000;
    LastDrawTime = GetLevel().TimeSeconds;
    return;
}

function SetHistory(bool Parm_bool_0)
{
    bHistory = Parm_bool_0;
    if(bHistory && HistoryList == none)
    {
        HistoryList = new (none) Class'UWindow.UWindowEditBoxHistory';
        HistoryList.SetupSentinel();
        CurrentHistory = none;        
    }
    else
    {
        if(!bHistory && HistoryList != none)
        {
            HistoryList = none;
            CurrentHistory = none;
        }
    }
    return;
}

function SetEditable(bool Parm_bool_0)
{
    bCanEdit = Parm_bool_0;
    if(!Parm_bool_0)
    {
        B_v7252 = false;
    }
    return;
}

function SetValue(string Parm_string_0, optional string eqbslash_vxv_2919)
{
    B_v7252 = false;
    B_v7248 = Len(eqbslash_vxv_2919) > 0;
    Value = Parm_string_0;
    Value2 = eqbslash_vxv_2919;
    if(CaretOffset > Len(Value))
    {
        CaretOffset = Len(Value);
    }
    Notify(1);
    return;
}

function eqR_vxv_2594(string Parm_string_0, optional string eqbslash_vxv_2919, optional bool eqbslash_vxv_2937)
{
    B_v7252 = false;
    B_v7248 = Len(eqbslash_vxv_2919) > 0;
    eqbslash_vxv_2937 = eqbslash_vxv_2937 || (Parm_string_0 == Value) && eqbslash_vxv_2919 == Value2;
    Value = Parm_string_0;
    Value2 = eqbslash_vxv_2919;
    if(CaretOffset > Len(Value))
    {
        CaretOffset = Len(Value);
    }
    if(!eqbslash_vxv_2937)
    {
        Notify(1);
    }
    return;
}

function Clear()
{
    B_v7252 = false;
    B_v7248 = false;
    CaretOffset = 0;
    Value = "";
    Value2 = "";
    bAllSelected = false;
    if(bDelayedNotify)
    {
        bChangePending = true;        
    }
    else
    {
        Notify(1);
    }
    return;
}

function SelectAll()
{
    if(bCanEdit && Value != "")
    {
        B_v7252 = false;
        CaretOffset = Len(Value);
        bAllSelected = true;
        UNK_v7249 = 1;
    }
    return;
}

function string GetValue()
{
    return Value;
    return;
}

function string GetValue2()
{
    return Value2;
    return;
}

function Notify(byte Parm_byte_0)
{
    if(NotifyOwner != none)
    {
        NotifyOwner.Notify(Parm_byte_0);        
    }
    else
    {
        super.Notify(Parm_byte_0);
    }
    return;
}

function InsertText(string Text)
{
    local int i, Local_Vector_v0;

    Local_Vector_v0 = Len(Text);
    i = 0;
    J0x14:

    if(i < Local_Vector_v0)
    {
        Parm_string_072(Asc(Mid(Text, i, 1)));
        B_v7252 = false;
        i++;
        // [Loop Continue]
        goto J0x14;
    }
    return;
}

function bool Insert(byte Parm_byte_0)
{
    local string Parm_string_0;

    if(B_v7252)
    {
        Parm_string_0 = (Left(Value, eqa_vxv_7251[0]) $ Chr(int(Parm_byte_0))) $ Mid(Value, eqa_vxv_7251[1]);        
    }
    else
    {
        Parm_string_0 = (Left(Value, CaretOffset) $ Chr(int(Parm_byte_0))) $ Mid(Value, CaretOffset);
    }
    if(Len(Parm_string_0) > MaxLength)
    {
        return false;
    }
    if(B_v7252)
    {
        CaretOffset = eqa_vxv_7251[0] + 1;        
    }
    else
    {
        CaretOffset++;
    }
    Value = Parm_string_0;
    B_v7248 = false;
    if(bDelayedNotify)
    {
        bChangePending = true;        
    }
    else
    {
        Notify(1);
    }
    return true;
    return;
}

function bool Parm_string_072(int Parm_byte_0)
{
    local string Parm_string_0;

    if(B_v7252)
    {
        Parm_string_0 = (Left(Value, eqa_vxv_7251[0]) $ Chr(Parm_byte_0)) $ Mid(Value, eqa_vxv_7251[1]);        
    }
    else
    {
        Parm_string_0 = (Left(Value, CaretOffset) $ Chr(Parm_byte_0)) $ Mid(Value, CaretOffset);
    }
    if(Len(Parm_string_0) > MaxLength)
    {
        return false;
    }
    if(B_v7252)
    {
        CaretOffset = eqa_vxv_7251[0] + 1;        
    }
    else
    {
        CaretOffset++;
    }
    Value = Parm_string_0;
    B_v7248 = false;
    if(bDelayedNotify)
    {
        bChangePending = true;        
    }
    else
    {
        Notify(1);
    }
    return true;
    return;
}

function eqrp_vxv_1306(string Text)
{
    local int i, Parm_byte_0, TextSize;
    local bool Local_bool_v0;
    local string Local_string_v0, Local_string_v1;

    if(bNumericOnly)
    {
        TextSize = Len(Text);
        i = 0;
        J0x1D:

        if(i < TextSize)
        {
            Parm_byte_0 = Asc(Mid(Text, i, 1));
            if((Parm_byte_0 >= 48) && Parm_byte_0 <= 57)
            {
                // [Explicit Continue]
                goto J0xAA;
                // [Explicit Continue]
                goto J0xAA;
            }
            if((bNumericFloat && !Local_bool_v0) && (Parm_byte_0 == Asc(".")) || Parm_byte_0 == Asc(","))
            {
                Local_bool_v0 = true;
                // [Explicit Continue]
                goto J0xAA;
                // [Explicit Continue]
                goto J0xAA;
            }
            // [Explicit Break]
            goto J0xB4;
            J0xAA:

            ++i;
            // [Loop Continue]
            goto J0x1D;
        }
        J0xB4:

        if(i == 0)
        {
            return;
        }
        if(i < TextSize)
        {
            Text = Left(Text, i);
        }
        ReplaceString(Text, ",", ".");
    }
    if(bAllSelected)
    {
        Clear();
        InsertText(Text);        
    }
    else
    {
        InsertText(Text);
    }
    return;
}

function ReplaceString(out string Text, string p, string p2)
{
    /*same as other classes*/
    return;
}

function bool Backspace()
{
    local string Parm_string_0;

    if(!B_v7252 && CaretOffset == 0)
    {
        return false;
    }
    if(B_v7252)
    {
        Parm_string_0 = Left(Value, eqa_vxv_7251[0]) $ Mid(Value, eqa_vxv_7251[1]);
        CaretOffset = eqa_vxv_7251[0];        
    }
    else
    {
        Parm_string_0 = Left(Value, CaretOffset - 1) $ Mid(Value, CaretOffset);
        CaretOffset--;
    }
    Value = Parm_string_0;
    B_v7248 = false;
    if(bDelayedNotify)
    {
        bChangePending = true;        
    }
    else
    {
        Notify(1);
    }
    B_v7252 = false;
    return true;
    return;
}

function bool Delete()
{
    local string Parm_string_0;

    if(!B_v7252 && CaretOffset == Len(Value))
    {
        return false;
    }
    if(B_v7252)
    {
        Parm_string_0 = Left(Value, eqa_vxv_7251[0]) $ Mid(Value, eqa_vxv_7251[1]);
        CaretOffset = eqa_vxv_7251[0];        
    }
    else
    {
        Parm_string_0 = Left(Value, CaretOffset) $ Mid(Value, CaretOffset + 1);
    }
    Value = Parm_string_0;
    B_v7248 = false;
    Notify(1);
    B_v7252 = false;
    return true;
    return;
}

function bool WordLeft()
{
    J0x00:
    if((CaretOffset > 0) && Mid(Value, CaretOffset - 1, 1) == " ")
    {
        CaretOffset--;
        // [Loop Continue]
        goto J0x00;
    }
    J0x2F:

    if((CaretOffset > 0) && Mid(Value, CaretOffset - 1, 1) != " ")
    {
        CaretOffset--;
        // [Loop Continue]
        goto J0x2F;
    }
    B_v7252 = false;
    LastDrawTime = GetLevel().TimeSeconds;
    bShowCaret = true;
    return true;
    return;
}

function bool MoveLeft()
{
    if(CaretOffset == 0)
    {
        return false;
    }
    CaretOffset--;
    B_v7252 = false;
    LastDrawTime = GetLevel().TimeSeconds;
    bShowCaret = true;
    return true;
    return;
}

function bool MoveRight()
{
    if(CaretOffset == Len(Value))
    {
        return false;
    }
    CaretOffset++;
    B_v7252 = false;
    LastDrawTime = GetLevel().TimeSeconds;
    bShowCaret = true;
    return true;
    return;
}

function bool WordRight()
{
    J0x00:
    if((CaretOffset < Len(Value)) && Mid(Value, CaretOffset, 1) != " ")
    {
        CaretOffset++;
        // [Loop Continue]
        goto J0x00;
    }
    J0x32:

    if((CaretOffset < Len(Value)) && Mid(Value, CaretOffset, 1) == " ")
    {
        CaretOffset++;
        // [Loop Continue]
        goto J0x32;
    }
    B_v7252 = false;
    LastDrawTime = GetLevel().TimeSeconds;
    bShowCaret = true;
    return true;
    return;
}

function bool MoveHome()
{
    CaretOffset = 0;
    B_v7252 = false;
    LastDrawTime = GetLevel().TimeSeconds;
    bShowCaret = true;
    return true;
    return;
}

function bool MoveEnd()
{
    CaretOffset = Len(Value);
    B_v7252 = false;
    LastDrawTime = GetLevel().TimeSeconds;
    bShowCaret = true;
    return true;
    return;
}

function EditCopy()
{
    if(Root == none)
    {
        return;
    }
    if(bAllSelected || !bCanEdit)
    {
        GetPlayerOwner().CopyToClipboard(Value);        
    }
    else
    {
        if(B_v7252)
        {
            GetPlayerOwner().CopyToClipboard(Mid(Value, eqa_vxv_7251[0], eqa_vxv_7251[1] - eqa_vxv_7251[0]));
        }
    }
    return;
}

function EditPaste()
{
    if(bCanEdit && Root != none)
    {
        eqrp_vxv_1306(GetPlayerOwner().PasteFromClipboard());
    }
    return;
}

function EditCut()
{
    if(bCanEdit && Root != none)
    {
        if(bAllSelected)
        {
            GetPlayerOwner().CopyToClipboard(Value);
            bAllSelected = false;
            Clear();            
        }
        else
        {
            if(B_v7252)
            {
                GetPlayerOwner().CopyToClipboard(Mid(Value, eqa_vxv_7251[0], eqa_vxv_7251[1] - eqa_vxv_7251[0]));
                Delete();
            }
        }        
    }
    else
    {
        EditCopy();
    }
    return;
}

function KeyType(int Key, float MouseX, float MouseY)
{
    if(bCanEdit && bKeyDown)
    {
        if(!bControlDown)
        {
            if(bAllSelected)
            {
                Clear();
            }
            bAllSelected = false;
            if(bNumericOnly)
            {
                if((Key >= 48) && Key <= 57)
                {
                    Insert(byte(Key));
                }                
            }
            else
            {
                if((Key >= 32) && Key != 127)
                {
                    Parm_string_072(Key);
                }
            }
            B_v7252 = false;
        }
    }
    return;
}

function KeyUp(int Key, float X, float Y)
{
    local PlayerPawn Local_PlayerPawn_v0;

    bKeyDown = false;
    Local_PlayerPawn_v0 = GetPlayerOwner();
    switch(Key)
    {
        case int(Local_PlayerPawn_v0.17):
            bControlDown = false;
            break;
        case int(Local_PlayerPawn_v0.16):
            bShiftDown = false;
            break;
        default:
            break;
    }
    return;
}

function KeyDown(int Key, float X, float Y)
{
    local PlayerPawn Local_PlayerPawn_v0;

    bKeyDown = true;
    Local_PlayerPawn_v0 = GetPlayerOwner();
    switch(Key)
    {
        case int(Local_PlayerPawn_v0.17):
            bControlDown = true;
            break;
        case int(Local_PlayerPawn_v0.16):
            bShiftDown = true;
            break;
        case int(Local_PlayerPawn_v0.27):
            break;
        case int(Local_PlayerPawn_v0.13):
            if(bCanEdit)
            {
                if(bHistory)
                {
                    eqstar_vxv_1317();
                    CurrentHistory = HistoryList;
                }
                Notify(7);
            }
            break;
        case int(Local_PlayerPawn_v0.236):
            if(bCanEdit)
            {
                Notify(14);
            }
            break;
        case int(Local_PlayerPawn_v0.237):
            if(bCanEdit)
            {
                Notify(15);
            }
            break;
        case int(Local_PlayerPawn_v0.39):
            if(bCanEdit)
            {
                if(bControlDown)
                {
                    WordRight();                    
                }
                else
                {
                    MoveRight();
                }
            }
            bAllSelected = false;
            break;
        case int(Local_PlayerPawn_v0.37):
            if(bCanEdit)
            {
                if(bControlDown)
                {
                    WordLeft();                    
                }
                else
                {
                    MoveLeft();
                }
            }
            bAllSelected = false;
            break;
        case int(Local_PlayerPawn_v0.38):
            if(bCanEdit && bHistory)
            {
                bAllSelected = false;
                if((CurrentHistory == none) && HistoryList != none)
                {
                    CurrentHistory = HistoryList;
                }
                if((CurrentHistory != none) && CurrentHistory.Next != none)
                {
                    CurrentHistory = UWindowEditBoxHistory(CurrentHistory.Next);
                    SetValue(CurrentHistory.HistoryText);
                    MoveEnd();
                }
            }
            break;
        case int(Local_PlayerPawn_v0.40):
            if(bCanEdit && bHistory)
            {
                bAllSelected = false;
                if((CurrentHistory != none) && CurrentHistory.Prev != none)
                {
                    CurrentHistory = UWindowEditBoxHistory(CurrentHistory.Prev);
                    SetValue(CurrentHistory.HistoryText);
                    MoveEnd();
                }
            }
            break;
        case int(Local_PlayerPawn_v0.36):
            if(bCanEdit)
            {
                MoveHome();
            }
            bAllSelected = false;
            break;
        case int(Local_PlayerPawn_v0.35):
            if(bCanEdit)
            {
                MoveEnd();
            }
            bAllSelected = false;
            break;
        case int(Local_PlayerPawn_v0.8):
            if(bCanEdit)
            {
                if(bAllSelected)
                {
                    Clear();                    
                }
                else
                {
                    Backspace();
                }
            }
            bAllSelected = false;
            break;
        case int(Local_PlayerPawn_v0.46):
            if(bCanEdit)
            {
                if(bAllSelected)
                {
                    Clear();                    
                }
                else
                {
                    Delete();
                }
            }
            bAllSelected = false;
            break;
        case int(Local_PlayerPawn_v0.190):
        case int(Local_PlayerPawn_v0.110):
            if(bNumericFloat)
            {
                if(InStr(Value, ".") >= 0)
                {
                    ReplaceString(Value, ".", "");
                }
                Insert(byte(Asc(".")));
            }
            break;
        default:
            
            if(bControlDown)
            {
                if((Key == Asc("a")) || Key == Asc("A"))
                {
                    SelectAll();
                }
                if((Key == Asc("c")) || Key == Asc("C"))
                {
                    EditCopy();
                }
                if((Key == Asc("v")) || Key == Asc("V"))
                {
                    EditPaste();
                }
                
                if((Key == Asc("x")) || Key == Asc("X"))
                {
                    EditCut();
                }                
            }
            else
            {
                if(NotifyOwner != none)
                {
                    NotifyOwner.KeyDown(Key, X, Y);                    
                }
                else
                {
                    super.KeyDown(Key, X, Y);
                }
            }
            break;
            break;
    }
    return;
}

function Click(float X, float Y)
{
    UNK_v7249 = 0;
    Notify(2);
    return;
}

function LMouseDown(float X, float Y)
{
    B_v7252 = false;
    bAllSelected = false;
    if(bCanEdit)
    {
        UNK_v7249 = 2;
        INT_v7250 = int(X);
    }
    super.LMouseDown(X, Y);
    Notify(10);
    return;
}

function Paint(Canvas Parm_byte_0, float X, float Y)
{
    local float W, H, XL, YL, Local_int_v2, TextY;

    local int Local_int_v0;
    local string Local_string_v0;

    Parm_byte_0.Font = Root.Fonts[Font];
    if(int(UNK_v7249) == 1)
    {
        UNK_v7249 = 0;        
    }
    else
    {
        if(int(UNK_v7249) == 2)
        {
            UNK_v7249 = 3;
            CaretOffset = Parm_string_083(INT_v7250, Parm_byte_0);            
        }
        else
        {
            if(int(UNK_v7249) == 3)
            {
                GetMouseXY(W, H);
                Local_int_v0 = Parm_string_083(int(W), Parm_byte_0);
                if((((H < float(-1)) || H > WinHeight) || W < float(-1)) || W > WinWidth)
                {
                    UNK_v7249 = 0;                    
                }
                else
                {
                    if(Local_int_v0 != CaretOffset)
                    {
                        if(Local_int_v0 < CaretOffset)
                        {
                            eqa_vxv_7251[0] = Local_int_v0;
                            eqa_vxv_7251[1] = CaretOffset;
                            B_v7252 = true;                            
                        }
                        else
                        {
                            eqa_vxv_7251[0] = CaretOffset;
                            eqa_vxv_7251[1] = Local_int_v0;
                            B_v7252 = true;
                        }
                    }
                }                
            }
            else
            {
                if(bAllSelected)
                {
                    CaretOffset = Len(Value);
                }
            }
        }
    }
    TextSize(Parm_byte_0, "A", W, H);
    TextY = (WinHeight - H) / float(2);
    if(CaretOffset == 0)
    {
        TextSize(Parm_byte_0, "A", W, H);
        W = 0.0000000;        
    }
    else
    {
        TextSize(Parm_byte_0, Left(Value, CaretOffset), W, H);
    }
    Parm_byte_0.DrawColor.R = byte(255);
    Parm_byte_0.DrawColor.G = byte(255);
    Parm_byte_0.DrawColor.B = byte(255);
    if((W + offset) < float(0))
    {
        offset = -W;
    }
    if((W + offset) > (WinWidth - float(2)))
    {
        offset = (WinWidth - float(2)) - W;
        if(offset > float(0))
        {
            offset = 0.0000000;
        }
    }
    Parm_byte_0.DrawColor = TextColor;
    if(bAllSelected)
    {
        DrawStretchedTexture(Parm_byte_0, offset + float(1), TextY, W, H, Texture'UWindow.WhiteTexture');
        Parm_byte_0.DrawColor.R = byte(255 ^ int(Parm_byte_0.DrawColor.R));
        Parm_byte_0.DrawColor.G = byte(255 ^ int(Parm_byte_0.DrawColor.G));
        Parm_byte_0.DrawColor.B = byte(255 ^ int(Parm_byte_0.DrawColor.B));        
    }
    else
    {
        if(B_v7252)
        {
            if(eqa_vxv_7251[0] > 0)
            {
                Local_string_v0 = Left(Value, eqa_vxv_7251[0]);
                Parm_byte_0.TextSize(Local_string_v0, XL, YL);
                ClipText(Parm_byte_0, offset + float(1), TextY, Local_string_v0);                
            }
            else
            {
                XL = 0.0000000;
            }
            XL /= Root.GUIScale;
            Local_string_v0 = Mid(Value, eqa_vxv_7251[0], eqa_vxv_7251[1] - eqa_vxv_7251[0]);
            Parm_byte_0.TextSize(Local_string_v0, Local_int_v2, YL);
            Local_int_v2 /= Root.GUIScale;
            DrawStretchedTexture(Parm_byte_0, (offset + float(1)) + XL, TextY, Local_int_v2, H, Texture'UWindow.WhiteTexture');
            Parm_byte_0.DrawColor.R = byte(255 ^ int(Parm_byte_0.DrawColor.R));
            Parm_byte_0.DrawColor.G = byte(255 ^ int(Parm_byte_0.DrawColor.G));
            Parm_byte_0.DrawColor.B = byte(255 ^ int(Parm_byte_0.DrawColor.B));
            ClipText(Parm_byte_0, (offset + float(1)) + XL, TextY, Local_string_v0);
            Local_string_v0 = Mid(Value, eqa_vxv_7251[1]);
            Parm_byte_0.DrawColor = TextColor;
            ClipText(Parm_byte_0, ((offset + float(1)) + XL) + Local_int_v2, TextY, Local_string_v0);
            return;
        }
    }
    ClipText(Parm_byte_0, offset + float(1), TextY, Value);
    if(!bHasKeyboardFocus || !bCanEdit)
    {
        bShowCaret = false;        
    }
    else
    {
        if((GetLevel().TimeSeconds > (LastDrawTime + 0.3000000)) || GetLevel().TimeSeconds < LastDrawTime)
        {
            LastDrawTime = GetLevel().TimeSeconds;
            bShowCaret = !bShowCaret;
        }
    }
    if(bShowCaret)
    {
        ClipText(Parm_byte_0, (offset + W) - float(1), TextY, "|");
    }
    return;
}

function Close(optional bool eq_vxv_3020)
{
    if(bChangePending)
    {
        bChangePending = false;
        Notify(1);
    }
    bKeyDown = false;
    super.Close(eq_vxv_3020);
    return;
}

function FocusOtherWindow(UWindowWindow W)
{
    if(bChangePending)
    {
        bChangePending = false;
        Notify(1);
    }
    if(NotifyOwner != none)
    {
        NotifyOwner.FocusOtherWindow(W);        
    }
    else
    {
        super.FocusOtherWindow(W);
    }
    return;
}

function KeyFocusEnter()
{
    if(CAZConsole(Root.Console).bConsoleChat)
    {
        super(UWindowDialogControl).KeyFocusEnter();        
    }
    else
    {
        if(bSelectOnFocus && !bHasKeyboardFocus)
        {
            SelectAll();
        }
        super(UWindowDialogControl).KeyFocusEnter();
    }
    return;
}

function DoubleClick(float X, float Y)
{
    super.DoubleClick(X, Y);
    SelectAll();
    return;
}

function KeyFocusExit()
{
    bAllSelected = false;
    B_v7252 = false;
    UNK_v7249 = 0;
    super.KeyFocusExit();
    return;
}

function int Parm_string_083(int Parm_int_0, Canvas Parm_byte_0)
{
    local int i, Local_Vector_v0;
    local float XL, YL, Local_float_v0;

    Parm_int_0 -= int(offset);
    Parm_int_0 *= Root.GUIScale;
    Local_Vector_v0 = Len(Value);
    if(Local_Vector_v0 == 0)
    {
        return 0;
    }
    i = 1;
    J0x43:

    if(i <= Local_Vector_v0)
    {
        Parm_byte_0.TextSize(Left(Value, i), XL, YL);
        if(XL > float(Parm_int_0))
        {
            if(i == 1)
            {
                if((XL / 2.0000000) < float(Parm_int_0))
                {
                    return 1;
                }
                return 0;
            }
            XL -= float(Parm_int_0);
            Local_float_v0 -= float(Parm_int_0);
            if(Abs(Local_float_v0) > XL)
            {
                return i;                
            }
            else
            {
                return i - 1;
            }
            // [Explicit Continue]
            goto J0xF5;
        }
        Local_float_v0 = XL;
        J0xF5:

        i++;
        // [Loop Continue]
        goto J0x43;
    }
    return Local_Vector_v0;
    return;
}

function eqstar_vxv_1317()
{
    local int i;

    if(Len(Value) == 0)
    {
        return;
    }
    CurrentHistory = UWindowEditBoxHistory(HistoryList.Next);
    J0x28:

    if((CurrentHistory != none) && i < 1024)
    {
        if(CurrentHistory.HistoryText == Value)
        {
            CurrentHistory.Remove();
            HistoryList.InsertItem(CurrentHistory);
            return;
        }
        ++i;
        CurrentHistory = UWindowEditBoxHistory(CurrentHistory.Next);
        // [Loop Continue]
        goto J0x28;
    }
    CurrentHistory = UWindowEditBoxHistory(HistoryList.Insert(Class'UWindow.UWindowEditBoxHistory'));
    CurrentHistory.HistoryText = Value;
    return;
}
