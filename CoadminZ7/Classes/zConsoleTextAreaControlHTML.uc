class zConsoleTextAreaControlHTML extends UWindowDynamicTextArea
    config;

var Color TextColor;
var Color BGColor;
var Color Col_v2655;
var Color Col_v2656;
var float FLT_v2901;
var bool B_v2902;
var bool B_v2903;
var float FLT_v7264;
var Font Fnt_v5287;

function eqS_vxv_2645(string Parm_string_0)
{
    Clear();
    ReplaceText(Parm_string_0, Chr(13) $ Chr(10), " ");
    ReplaceText(Parm_string_0, Chr(13), " ");
    ReplaceText(Parm_string_0, Chr(10), " ");
    AddText(Parm_string_0);
    return;
}

function BeforePaint(Canvas Parm_Canvas_0, float X, float Y)
{
    super.BeforePaint(Parm_Canvas_0, X, Y);
    Cursor = Root.NormalCursor;
    return;
}

function eqstar_vxv_1332(Canvas Parm_Canvas_0, float MouseX, float MouseY)
{
    local UWindowDynamicTextRow Local_Vector_v0;
    local int Local_int_v0, Local_int_v1, i;
    local float Y, Local_Actor_v0;
    local bool Local_bool_v0;

    Parm_Canvas_0.DrawColor = TextColor;
    if(Font == 12)
    {
        if(Fnt_v5287 == none)
        {
            Fnt_v5287 = Font(DynamicLoadObject("derp.derp", Class'Engine.Font'));
        }
        Parm_Canvas_0.Font = Fnt_v5287;        
    }
    else
    {
        if(AbsoluteFont != none)
        {
            Parm_Canvas_0.Font = AbsoluteFont;            
        }
        else
        {
            Parm_Canvas_0.Font = Root.Fonts[Font];
        }
    }
    if((OldW != WinWidth) || OldH != WinHeight)
    {
        WordWrap(Parm_Canvas_0, true);
        OldW = WinWidth;
        OldH = WinHeight;
        Local_bool_v0 = true;        
    }
    else
    {
        if(bDirty)
        {
            WordWrap(Parm_Canvas_0, false);
            Local_bool_v0 = true;
        }
    }
    if(Local_bool_v0)
    {
        TextAreaTextSize(Parm_Canvas_0, "A", Local_Actor_v0, DefaultTextHeight);
        VisibleRows = int(WinHeight / DefaultTextHeight);
        Count = List.Count();
        VertSB.SetRange(0.0000000, float(Count), float(VisibleRows));
        if(bScrollOnResize)
        {
            if(bTopCentric)
            {
                VertSB.pos = 0.0000000;                
            }
            else
            {
                VertSB.pos = VertSB.MaxPos;
            }
        }
        if(bAutoScrollbar && !bVariableRowHeight)
        {
            if(Count <= VisibleRows)
            {
                VertSB.HideWindow();                
            }
            else
            {
                VertSB.ShowWindow();
            }
        }
    }
    if(bTopCentric)
    {
        Local_int_v0 = int(VertSB.pos);
        Local_Vector_v0 = UWindowDynamicTextRow(List.Next);
        i = 0;
        J0x245:

        if((i < Local_int_v0) && Local_Vector_v0 != none)
        {
            Local_Vector_v0 = UWindowDynamicTextRow(Local_Vector_v0.Next);
            i++;
            // [Loop Continue]
            goto J0x245;
        }
        if(bVCenter && Count <= VisibleRows)
        {
            Y = float(int((WinHeight - (float(Count) * DefaultTextHeight)) / float(2)));            
        }
        else
        {
            Y = 1.0000000;
        }
        Local_int_v1 = 0;
        J0x2D4:

        if(Y < WinHeight)
        {
            Local_int_v1++;
            if(Local_Vector_v0 != none)
            {
                Y += (DrawTextLine(Parm_Canvas_0, Local_Vector_v0, Y));
                Local_Vector_v0 = UWindowDynamicTextRow(Local_Vector_v0.Next);                
            }
            else
            {
                Y += DefaultTextHeight;
            }
            // [Loop Continue]
            goto J0x2D4;
        }
        if(bVariableRowHeight)
        {
            VisibleRows = Local_int_v1 - 1;
            J0x353:

            if((VertSB.pos + float(VisibleRows)) > float(Count))
            {
                VisibleRows--;
                // [Loop Continue]
                goto J0x353;
            }
            VertSB.SetRange(0.0000000, float(Count), float(VisibleRows));
            if(bAutoScrollbar)
            {
                if(Count <= VisibleRows)
                {
                    VertSB.HideWindow();                    
                }
                else
                {
                    VertSB.ShowWindow();
                }
            }
        }        
    }
    else
    {
        Local_int_v0 = Max(0, int(float(Count) - (float(VisibleRows) + VertSB.pos)));
        Local_Vector_v0 = UWindowDynamicTextRow(List.Last);
        i = 0;
        J0x422:

        if((i < Local_int_v0) && Local_Vector_v0 != List)
        {
            Local_Vector_v0 = UWindowDynamicTextRow(Local_Vector_v0.Prev);
            i++;
            // [Loop Continue]
            goto J0x422;
        }
        Y = WinHeight - (DefaultTextHeight - FLT_v7264);
        J0x47E:

        if(((Local_Vector_v0 != List) && Local_Vector_v0 != none) && Y > -DefaultTextHeight)
        {
            DrawTextLine(Parm_Canvas_0, Local_Vector_v0, Y);
            Y = Y - (DefaultTextHeight - float(3));
            Local_Vector_v0 = UWindowDynamicTextRow(Local_Vector_v0.Prev);
            // [Loop Continue]
            goto J0x47E;
        }
    }
    return;
}

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    Parm_Canvas_0.DrawColor.R = 0;
    Parm_Canvas_0.DrawColor.G = 0;
    Parm_Canvas_0.DrawColor.B = 0;
    DrawStretchedTexture(Parm_Canvas_0, 0.0000000, 0.0000000, WinWidth, WinHeight, Texture'UWindow.WhiteTexture');
    eqstar_vxv_1332(Parm_Canvas_0, X, Y);
    B_v2903 = false;
    return;
}

function Click(float X, float Y)
{
    super(UWindowWindow).Click(X, Y);
    B_v2903 = true;
    return;
}

function eq_vxv_1426(string URL)
{
    LogInternal(("Clicked Link: >>" $ URL) $ "<<");
    if(Left(URL, 7) ~= "mailto:")
    {
        GetPlayerOwner().ConsoleCommand("start " $ URL);
    }
    if(Left(URL, 7) ~= "http://")
    {
        GetPlayerOwner().ConsoleCommand("start " $ URL);
    }
    if(Left(URL, 6) ~= "ftp://")
    {
        GetPlayerOwner().ConsoleCommand("start " $ URL);
    }
    if(Left(URL, 9) ~= "telnet://")
    {
        GetPlayerOwner().ConsoleCommand("start " $ URL);
    }
    if(Left(URL, 9) ~= "gopher://")
    {
        GetPlayerOwner().ConsoleCommand("start " $ URL);
    }
    if(Left(URL, 4) ~= "www.")
    {
        GetPlayerOwner().ConsoleCommand("start http://" $ URL);
    }
    if(Left(URL, 4) ~= "ftp.")
    {
        GetPlayerOwner().ConsoleCommand("start ftp://" $ URL);        
    }
    else
    {
        if(Left(URL, 7) ~= "rune://")
        {
            eq_vxv_671(URL);
        }
    }
    return;
}

function eq_vxv_1422(string URL)
{
    return;
}

function eq_vxv_671(string URL)
{
    GetPlayerOwner().ClientTravel(URL, 0, false);
    return;
}

function TextAreaClipText(Canvas Parm_Canvas_0, float Parm_float_0, float Parm_float_1, coerce string Text, optional bool eq_vxv_4247)
{
    ReplaceText(Text, "&nbsp;", " ");
    ReplaceText(Text, "&gt;", ">");
    ReplaceText(Text, "&lt;", "<");
    ReplaceText(Text, "&amp;", "&");
    ClipText(Parm_Canvas_0, Parm_float_0, Parm_float_1, Text, eq_vxv_4247);
    return;
}

function WrapRow(Canvas Parm_Canvas_0, UWindowDynamicTextRow Local_Vector_v0)
{
    local HTMLStyle Parm_HTMLStyle_0;
    local UWindowHTMLTextRow R;
    local string Input, Local_string_v0, Parm_string_0, Local_string_v2;

    super.WrapRow(Parm_Canvas_0, Local_Vector_v0);
    R = UWindowHTMLTextRow(Local_Vector_v0);
    J0x20:

    if((R != none) && (R == Local_Vector_v0) || R.WrapParent == Local_Vector_v0)
    {
        R.DisplayString = "";
        R.StyleString = "";
        Parm_HTMLStyle_0 = R.StartStyle;
        Input = R.Text;
        J0xA0:

        if(Input != "")
        {
            eq_vxv_410(Input, Local_string_v0, Parm_string_0, Local_string_v2);
            if((Local_string_v0 != "") || R.DisplayString == "")
            {
                R.DisplayString = R.DisplayString $ Local_string_v0;
                R.StyleString = R.StyleString $ (eqdot_vxv_1447(Parm_HTMLStyle_0, Len(Local_string_v0)));
            }
            eq_vxv_646(Parm_string_0, Parm_HTMLStyle_0);
            eq_vxv_412(Parm_Canvas_0, Parm_HTMLStyle_0);
            Input = Local_string_v2;
            // [Loop Continue]
            goto J0xA0;
        }
        R = UWindowHTMLTextRow(R.Next);
        // [Loop Continue]
        goto J0x20;
    }
    return;
}

function float DrawTextLine(Canvas Parm_Canvas_0, UWindowDynamicTextRow Local_Vector_v0, float Y)
{
    local float X, W, H, MouseX, MouseY;

    local HTMLStyle Parm_HTMLStyle_0;
    local float RowHeight;
    local Color Local_Color_v0;
    local int Local_int_v0, Local_int_v1, i;
    local string Parm_string_0;

    RowHeight = 0.0000000;
    if(Local_Vector_v0 == none)
    {
        return 0.0000000;
    }
    Parm_HTMLStyle_0 = UWindowHTMLTextRow(Local_Vector_v0).StartStyle;
    if(Parm_HTMLStyle_0.bCenter)
    {
        W = eq_vxv_633(Parm_Canvas_0, Local_Vector_v0.Text, Parm_HTMLStyle_0);
        if(VertSB.bWindowVisible && VertSB != none)
        {
            X = float(int(((WinWidth - VertSB.WinWidth) - W) / float(2)));            
        }
        else
        {
            X = float(int((WinWidth - W) / float(2)));
        }        
    }
    else
    {
        X = 2.0000000;
    }
    if(GetEntryLevel().TimeSeconds > (FLT_v2901 + 0.5000000))
    {
        B_v2902 = !B_v2902;
        FLT_v2901 = GetEntryLevel().TimeSeconds;
    }
    if(UWindowHTMLTextRow(Local_Vector_v0).DisplayString == "")
    {
        eq_vxv_412(Parm_Canvas_0, Parm_HTMLStyle_0);        
    }
    else
    {
        J0x14A:

        if(Local_int_v1 < Len(UWindowHTMLTextRow(Local_Vector_v0).DisplayString))
        {
            i = eq_vxv_1430(UWindowHTMLTextRow(Local_Vector_v0).StyleString, Local_int_v0, Parm_HTMLStyle_0);
            Parm_string_0 = Mid(UWindowHTMLTextRow(Local_Vector_v0).DisplayString, Local_int_v1, i);
            Local_int_v1 += i;
            eq_vxv_412(Parm_Canvas_0, Parm_HTMLStyle_0);
            TextAreaTextSize(Parm_Canvas_0, Parm_string_0, W, H);
            if(H > RowHeight)
            {
                RowHeight = H;
            }
            if(Parm_HTMLStyle_0.bLink)
            {
                GetMouseXY(MouseX, MouseY);
                if((((X < MouseX) && (X + W) > MouseX) && Y < MouseY) && (Y + H) > MouseY)
                {
                    Cursor = Root.HandCursor;
                    eq_vxv_1422(Parm_HTMLStyle_0.LinkDestination);
                    if(bMouseDown || B_v2903)
                    {
                        if(B_v2903)
                        {
                            eq_vxv_1426(Parm_HTMLStyle_0.LinkDestination);
                            B_v2903 = false;                            
                        }
                        else
                        {
                            Parm_Canvas_0.DrawColor = Col_v2656;
                        }
                    }
                }
            }
            if(!Parm_HTMLStyle_0.bBlink || B_v2902)
            {
                TextAreaClipText(Parm_Canvas_0, X, Y, Parm_string_0);
            }
            if(Parm_HTMLStyle_0.bLink || Parm_HTMLStyle_0.bUnderline)
            {
                DrawStretchedTexture(Parm_Canvas_0, X, (Y + H) - float(1), W, 1.0000000, Texture'UWindow.WhiteTexture');
            }
            X += W;
            // [Loop Continue]
            goto J0x14A;
        }
    }
    if(RowHeight == float(0))
    {
        TextAreaTextSize(Parm_Canvas_0, "A", W, RowHeight);
    }
    return RowHeight;
    return;
}

function UWindowDynamicTextRow SplitRowAt(UWindowDynamicTextRow Local_Vector_v0, int SplitPos)
{
    local UWindowDynamicTextRow Local_UWindowDynamicTextRow_v0;
    local HTMLStyle Parm_HTMLStyle_0;

    Local_UWindowDynamicTextRow_v0 = super.SplitRowAt(Local_Vector_v0, SplitPos);
    UWindowHTMLTextRow(Local_UWindowDynamicTextRow_v0).EndStyle = UWindowHTMLTextRow(Local_Vector_v0).EndStyle;
    Parm_HTMLStyle_0 = UWindowHTMLTextRow(Local_Vector_v0).StartStyle;
    eq_vxv_1424(Local_Vector_v0.Text, Parm_HTMLStyle_0);
    UWindowHTMLTextRow(Local_Vector_v0).EndStyle = Parm_HTMLStyle_0;
    UWindowHTMLTextRow(Local_UWindowDynamicTextRow_v0).StartStyle = Parm_HTMLStyle_0;
    return Local_UWindowDynamicTextRow_v0;
    return;
}

function RemoveWrap(UWindowDynamicTextRow Local_Vector_v0)
{
    local UWindowDynamicTextRow Local_UWindowDynamicTextRow_v0;

    Local_UWindowDynamicTextRow_v0 = UWindowDynamicTextRow(Local_Vector_v0.Next);
    J0x19:

    if((Local_UWindowDynamicTextRow_v0 != none) && Local_UWindowDynamicTextRow_v0.WrapParent == Local_Vector_v0)
    {
        UWindowHTMLTextRow(Local_Vector_v0).EndStyle = UWindowHTMLTextRow(Local_UWindowDynamicTextRow_v0).EndStyle;
        Local_UWindowDynamicTextRow_v0 = UWindowDynamicTextRow(Local_UWindowDynamicTextRow_v0.Next);
        // [Loop Continue]
        goto J0x19;
    }
    super.RemoveWrap(Local_Vector_v0);
    return;
}

function int GetWrapPos(Canvas Parm_Canvas_0, UWindowDynamicTextRow Local_Vector_v0, float Parm_float_0)
{
    local float W, Local_float_v0, Local_float_v1;
    local string Input, Local_string_v0;
    local int Local_int_v0, Local_int_v1;
    local HTMLStyle Parm_HTMLStyle_0;

    if(Local_Vector_v0 == none)
    {
        return -1;
    }
    Parm_HTMLStyle_0 = UWindowHTMLTextRow(Local_Vector_v0).StartStyle;
    if((eq_vxv_633(Parm_Canvas_0, Local_Vector_v0.Text, Parm_HTMLStyle_0)) <= Parm_float_0)
    {
        return -1;
    }
    Input = Local_Vector_v0.Text;
    Local_int_v0 = 0;
    Local_float_v0 = 0.0000000;
    Local_int_v1 = 0;
    Local_string_v0 = "";
    Parm_HTMLStyle_0 = UWindowHTMLTextRow(Local_Vector_v0).StartStyle;
    J0xA6:

    if((Input != "") || Local_string_v0 != "")
    {
        if(Local_string_v0 == "")
        {
            RemoveNextWord(Input, Local_string_v0);
            Local_float_v1 = eq_vxv_633(Parm_Canvas_0, Local_string_v0, Parm_HTMLStyle_0);
        }
        if((Local_int_v0 > 0) && (Local_float_v0 + Local_float_v1) > Parm_float_0)
        {
            return Local_int_v1;            
        }
        else
        {
            Local_int_v1 += Len(Local_string_v0);
            Local_float_v0 += Local_float_v1;
            Local_string_v0 = "";
            Local_int_v0++;
        }
        // [Loop Continue]
        goto J0xA6;
    }
    return -1;
    return;
}

function RemoveNextWord(out string Text, out string Local_string_v0)
{
    local int i;
    local bool Local_bool_v0;
    local string Local_int_v15;

    Local_bool_v0 = false;
    i = 0;
    J0x0F:

    if(i < Len(Text))
    {
        Local_int_v15 = Mid(Text, i, 1);
        if(Local_int_v15 == ">")
        {
            Local_bool_v0 = false;
        }
        if(Local_int_v15 == "<")
        {
            Local_bool_v0 = true;
        }
        if((Local_int_v15 == " ") && !Local_bool_v0)
        {
            // [Explicit Break]
            goto J0x84;
        }
        i++;
        // [Loop Continue]
        goto J0x0F;
    }
    J0x84:

    if(Mid(Text, i, 1) == " ")
    {
        i++;
        // [Loop Continue]
        goto J0x84;
    }
    Local_string_v0 = Left(Text, i);
    Text = Mid(Text, i);
    return;
}

function UWindowDynamicTextRow AddText(string Parm_string_0)
{
    local string Input, Local_string_v0, Local_string_v0, Local_string_v2, Parm_string_0, Local_string_v0;

    local int i;
    local UWindowDynamicTextRow Local_Vector_v0;
    local HTMLStyle Parm_HTMLStyle_0, StartStyle;

    if(List.Last == List)
    {
        Parm_HTMLStyle_0.BulletLevel = 0;
        Parm_HTMLStyle_0.LinkDestination = "";
        Parm_HTMLStyle_0.TextColor = TextColor;
        Parm_HTMLStyle_0.BGColor = BGColor;
        Parm_HTMLStyle_0.bCenter = bHCenter;
        Parm_HTMLStyle_0.bLink = false;
        Parm_HTMLStyle_0.bUnderline = false;
        Parm_HTMLStyle_0.bNoBR = false;
        Parm_HTMLStyle_0.bHeading = false;
        Parm_HTMLStyle_0.bBold = false;
        Parm_HTMLStyle_0.bBlink = false;        
    }
    else
    {
        Parm_HTMLStyle_0 = UWindowHTMLTextRow(List.Last).EndStyle;
    }
    StartStyle = Parm_HTMLStyle_0;
    Input = Parm_string_0;
    Local_string_v0 = "";
    J0xF4:

    if(Input != "")
    {
        eq_vxv_410(Input, Local_string_v0, Parm_string_0, Local_string_v2);
        switch(eq_vxv_733(Parm_string_0))
        {
            case "P":
                if((Local_string_v0 $ Local_string_v0) != "")
                {
                    Local_Vector_v0 = super.AddText(Local_string_v0 $ Local_string_v0);
                    Local_string_v0 = "";
                    UWindowHTMLTextRow(Local_Vector_v0).StartStyle = StartStyle;
                    UWindowHTMLTextRow(Local_Vector_v0).EndStyle = Parm_HTMLStyle_0;
                }
                StartStyle = Parm_HTMLStyle_0;
                Local_Vector_v0 = super.AddText("");
                UWindowHTMLTextRow(Local_Vector_v0).StartStyle = StartStyle;
                UWindowHTMLTextRow(Local_Vector_v0).EndStyle = Parm_HTMLStyle_0;
                break;
            case "BR":
                Local_Vector_v0 = super.AddText(Local_string_v0 $ Local_string_v0);
                Local_string_v0 = "";
                UWindowHTMLTextRow(Local_Vector_v0).StartStyle = StartStyle;
                UWindowHTMLTextRow(Local_Vector_v0).EndStyle = Parm_HTMLStyle_0;
                StartStyle = Parm_HTMLStyle_0;
                break;
            case "BODY":
                Local_string_v0 = eq_vxv_183(Parm_string_0, "BGCOLOR=");
                if(Local_string_v0 != "")
                {
                    BGColor = eq_vxv_224(Local_string_v0);
                    Parm_HTMLStyle_0.BGColor = BGColor;
                    StartStyle.BGColor = BGColor;
                }
                Local_string_v0 = eq_vxv_183(Parm_string_0, "LINK=");
                if(Local_string_v0 != "")
                {
                    Col_v2655 = eq_vxv_224(Local_string_v0);
                }
                Local_string_v0 = eq_vxv_183(Parm_string_0, "ALINK=");
                if(Local_string_v0 != "")
                {
                    Col_v2656 = eq_vxv_224(Local_string_v0);
                }
                Local_string_v0 = eq_vxv_183(Parm_string_0, "TEXT=");
                if(Local_string_v0 != "")
                {
                    TextColor = eq_vxv_224(Local_string_v0);
                    Parm_HTMLStyle_0.TextColor = TextColor;
                }
                Local_string_v0 = Local_string_v0 $ Local_string_v0;
                break;
            case "CENTER":
                if((Local_string_v0 $ Local_string_v0) != "")
                {
                    Local_Vector_v0 = super.AddText(Local_string_v0 $ Local_string_v0);
                    Local_string_v0 = "";
                    UWindowHTMLTextRow(Local_Vector_v0).StartStyle = StartStyle;
                    UWindowHTMLTextRow(Local_Vector_v0).EndStyle = Parm_HTMLStyle_0;
                }
                Parm_HTMLStyle_0.bCenter = true;
                StartStyle = Parm_HTMLStyle_0;
                break;
            case "/CENTER":
                Local_Vector_v0 = super.AddText(Local_string_v0 $ Local_string_v0);
                Local_string_v0 = "";
                UWindowHTMLTextRow(Local_Vector_v0).StartStyle = StartStyle;
                UWindowHTMLTextRow(Local_Vector_v0).EndStyle = Parm_HTMLStyle_0;
                Parm_HTMLStyle_0.bCenter = false;
                StartStyle = Parm_HTMLStyle_0;
                break;
            case "H1":
                if((Local_string_v0 $ Local_string_v0) != "")
                {
                    Local_Vector_v0 = super.AddText(Local_string_v0 $ Local_string_v0);
                    Local_string_v0 = "";
                    UWindowHTMLTextRow(Local_Vector_v0).StartStyle = StartStyle;
                    UWindowHTMLTextRow(Local_Vector_v0).EndStyle = Parm_HTMLStyle_0;
                }
                Parm_HTMLStyle_0.bHeading = true;
                StartStyle = Parm_HTMLStyle_0;
                break;
            case "/H1":
                Local_Vector_v0 = super.AddText(Local_string_v0 $ Local_string_v0);
                Local_string_v0 = "";
                UWindowHTMLTextRow(Local_Vector_v0).StartStyle = StartStyle;
                UWindowHTMLTextRow(Local_Vector_v0).EndStyle = Parm_HTMLStyle_0;
                Parm_HTMLStyle_0.bHeading = false;
                StartStyle = Parm_HTMLStyle_0;
                break;
            case "FONT":
                Local_string_v0 = (Local_string_v0 $ Local_string_v0) $ Parm_string_0;
                Local_string_v0 = eq_vxv_183(Parm_string_0, "COLOR=");
                if(Local_string_v0 != "")
                {
                    Parm_HTMLStyle_0.TextColor = eq_vxv_224(Local_string_v0);
                }
                Local_string_v0 = eq_vxv_183(Parm_string_0, "BGCOLOR=");
                if(Local_string_v0 != "")
                {
                    Parm_HTMLStyle_0.BGColor = eq_vxv_224(Local_string_v0);
                }
                break;
            case "/FONT":
                Local_string_v0 = (Local_string_v0 $ Local_string_v0) $ Parm_string_0;
                Parm_HTMLStyle_0.TextColor = TextColor;
                Parm_HTMLStyle_0.BGColor = BGColor;
                break;
            case "B":
                Local_string_v0 = (Local_string_v0 $ Local_string_v0) $ Parm_string_0;
                Parm_HTMLStyle_0.bBold = true;
                break;
            case "/B":
                Local_string_v0 = (Local_string_v0 $ Local_string_v0) $ Parm_string_0;
                Parm_HTMLStyle_0.bBold = false;
                break;
            case "U":
                Local_string_v0 = (Local_string_v0 $ Local_string_v0) $ Parm_string_0;
                Parm_HTMLStyle_0.bUnderline = true;
                break;
            case "/U":
                Local_string_v0 = (Local_string_v0 $ Local_string_v0) $ Parm_string_0;
                Parm_HTMLStyle_0.bUnderline = false;
                break;
            case "A":
                Local_string_v0 = (Local_string_v0 $ Local_string_v0) $ Parm_string_0;
                Parm_HTMLStyle_0.bLink = true;
                Parm_HTMLStyle_0.LinkDestination = eq_vxv_183(Parm_string_0, "HREF=");
                break;
            case "/A":
                Local_string_v0 = (Local_string_v0 $ Local_string_v0) $ Parm_string_0;
                Parm_HTMLStyle_0.bLink = false;
                Parm_HTMLStyle_0.LinkDestination = "";
                break;
            case "NOBR":
                Local_string_v0 = (Local_string_v0 $ Local_string_v0) $ Parm_string_0;
                Parm_HTMLStyle_0.bNoBR = true;
                break;
            case "/NOBR":
                Local_string_v0 = (Local_string_v0 $ Local_string_v0) $ Parm_string_0;
                Parm_HTMLStyle_0.bNoBR = false;
                break;
            case "BLINK":
                Local_string_v0 = (Local_string_v0 $ Local_string_v0) $ Parm_string_0;
                Parm_HTMLStyle_0.bBlink = true;
                break;
            case "/BLINK":
                Local_string_v0 = (Local_string_v0 $ Local_string_v0) $ Parm_string_0;
                Parm_HTMLStyle_0.bBlink = false;
                break;
            default:
                Local_string_v0 = Local_string_v0 $ Local_string_v0;
                break;
                break;
        }
        Input = Local_string_v2;
        // [Loop Continue]
        goto J0xF4;
    }
    Local_Vector_v0 = super.AddText(Local_string_v0);
    UWindowHTMLTextRow(Local_Vector_v0).StartStyle = StartStyle;
    UWindowHTMLTextRow(Local_Vector_v0).EndStyle = Parm_HTMLStyle_0;
    return Local_Vector_v0;
    return;
}

function eq_vxv_410(string Input, out string Local_string_v0, out string Parm_string_0, out string Local_string_v2)
{
    local int i;

    i = InStr(Input, "<");
    if(i == -1)
    {
        Local_string_v0 = Input;
        Parm_string_0 = "";
        Local_string_v2 = "";
        return;
    }
    Local_string_v0 = Left(Input, i);
    Parm_string_0 = Mid(Input, i);
    i = InStr(Parm_string_0, ">");
    if(i == -1)
    {
        Local_string_v2 = "";
        return;
    }
    Local_string_v2 = Mid(Parm_string_0, i + 1);
    Parm_string_0 = Left(Parm_string_0, i + 1);
    return;
}

function TextAreaTextSize(Canvas Parm_Canvas_0, string Text, out float W, out float H)
{
    ReplaceText(Text, "&nbsp;", " ");
    ReplaceText(Text, "&gt;", ">");
    ReplaceText(Text, "&lt;", "<");
    ReplaceText(Text, "&amp;", "&");
    TextSize(Parm_Canvas_0, Text, W, H);
    return;
}

function float eq_vxv_633(Canvas Parm_Canvas_0, string Text, out HTMLStyle Parm_HTMLStyle_0)
{
    local string Input, Local_string_v0, Parm_string_0, Local_string_v2;
    local float W, H, Local_float_v0;

    Local_float_v0 = 0.0000000;
    Input = Text;
    J0x16:

    if(Input != "")
    {
        eq_vxv_410(Input, Local_string_v0, Parm_string_0, Local_string_v2);
        eq_vxv_412(Parm_Canvas_0, Parm_HTMLStyle_0);
        TextAreaTextSize(Parm_Canvas_0, Local_string_v0, W, H);
        Local_float_v0 += W;
        eq_vxv_646(Parm_string_0, Parm_HTMLStyle_0);
        Input = Local_string_v2;
        // [Loop Continue]
        goto J0x16;
    }
    return Local_float_v0;
    return;
}

function eq_vxv_646(string Parm_string_0, out HTMLStyle Parm_HTMLStyle_0)
{
    local string Local_string_v0;

    if(Parm_string_0 == "")
    {
        return;
    }
    switch(eq_vxv_733(Parm_string_0))
    {
        case "H1":
            Parm_HTMLStyle_0.bHeading = true;
            break;
        case "/H1":
            Parm_HTMLStyle_0.bHeading = false;
            break;
        case "FONT":
            Local_string_v0 = eq_vxv_183(Parm_string_0, "COLOR=");
            if(Local_string_v0 != "")
            {
                Parm_HTMLStyle_0.TextColor = eq_vxv_224(Local_string_v0);
            }
            Local_string_v0 = eq_vxv_183(Parm_string_0, "BGCOLOR=");
            if(Local_string_v0 != "")
            {
                Parm_HTMLStyle_0.BGColor = eq_vxv_224(Local_string_v0);
            }
            break;
        case "/FONT":
            Parm_HTMLStyle_0.TextColor = TextColor;
            Parm_HTMLStyle_0.BGColor = BGColor;
            break;
        case "B":
            Parm_HTMLStyle_0.bBold = true;
            break;
        case "/B":
            Parm_HTMLStyle_0.bBold = false;
            break;
        case "U":
            Parm_HTMLStyle_0.bUnderline = true;
            break;
        case "/U":
            Parm_HTMLStyle_0.bUnderline = false;
            break;
        case "A":
            Parm_HTMLStyle_0.bLink = true;
            Parm_HTMLStyle_0.LinkDestination = eq_vxv_183(Parm_string_0, "HREF=");
            break;
        case "/A":
            Parm_HTMLStyle_0.bLink = false;
            Parm_HTMLStyle_0.LinkDestination = "";
            break;
        case "NOBR":
            Parm_HTMLStyle_0.bNoBR = true;
            break;
        case "/NOBR":
            Parm_HTMLStyle_0.bNoBR = false;
            break;
        case "BLINK":
            Parm_HTMLStyle_0.bBlink = true;
            break;
        case "/BLINK":
            Parm_HTMLStyle_0.bBlink = false;
            break;
        default:
            break;
    }
    return;
}

function eq_vxv_1424(string Input, out HTMLStyle Parm_HTMLStyle_0)
{
    local string Local_string_v0, Parm_string_0, Local_string_v2;

    J0x00:
    
    if(Input != "")
    {
        eq_vxv_410(Input, Local_string_v0, Parm_string_0, Local_string_v2);
        eq_vxv_646(Parm_string_0, Parm_HTMLStyle_0);
        Input = Local_string_v2;
        // [Loop Continue]
        goto J0x00;
    }
    return;
}

function string eq_vxv_183(string Parm_string_0, string Parm_string_1)
{
    local int i, Parm_int_0;
    local string Parm_string_0;

    i = InStr(Caps(Parm_string_0), Caps(Parm_string_1));
    if((i == 1) || Mid(Parm_string_0, i - 1, 1) == " ")
    {
        Parm_string_0 = Mid(Parm_string_0, i + Len(Parm_string_1));
        Parm_int_0 = eq_vxv_740(InStr(Parm_string_0, ">"), InStr(Parm_string_0, " "));
        Parm_string_0 = Left(Parm_string_0, Parm_int_0);
        if(Left(Parm_string_0, 1) == "\"")
        {
            Parm_string_0 = Mid(Parm_string_0, 1);
        }
        if(Right(Parm_string_0, 1) == "\"")
        {
            Parm_string_0 = Left(Parm_string_0, Len(Parm_string_0) - 1);
        }
        return Parm_string_0;
    }
    return "";
    return;
}

function string eq_vxv_733(string Parm_string_0)
{
    local int i;

    if(Parm_string_0 == "")
    {
        return "";
    }
    Parm_string_0 = Mid(Parm_string_0, 1);
    i = eq_vxv_740(InStr(Parm_string_0, ">"), InStr(Parm_string_0, " "));
    if(i == -1)
    {
        return Caps(Parm_string_0);        
    }
    else
    {
        return Caps(Left(Parm_string_0, i));
    }
    return;
}

function Color eq_vxv_224(string Parm_string_0)
{
    local Color Parm_Canvas_0;

    if(Left(Parm_string_0, 1) == "#")
    {
        Parm_string_0 = Mid(Parm_string_0, 1);
    }
    Parm_Canvas_0.R = byte((int(16) * (eq_vxv_293(Mid(Parm_string_0, 0, 1)))) + (eq_vxv_293(Mid(Parm_string_0, 1, 1))));
    Parm_Canvas_0.G = byte((int(16) * (eq_vxv_293(Mid(Parm_string_0, 2, 1)))) + (eq_vxv_293(Mid(Parm_string_0, 3, 1))));
    Parm_Canvas_0.B = byte((int(16) * (eq_vxv_293(Mid(Parm_string_0, 4, 1)))) + (eq_vxv_293(Mid(Parm_string_0, 5, 1))));
    return Parm_Canvas_0;
    return;
}

function int eq_vxv_293(string Parm_string_0)
{
    switch(Caps(Parm_string_0))
    {
        case "0":
            return 0;
        case "1":
            return 1;
        case "2":
            return 2;
        case "3":
            return 3;
        case "4":
            return 4;
        case "5":
            return 5;
        case "6":
            return 6;
        case "7":
            return 7;
        case "8":
            return 8;
        case "9":
            return 9;
        case "A":
            return 10;
        case "B":
            return 11;
        case "C":
            return 12;
        case "D":
            return 13;
        case "E":
            return 14;
        case "F":
            return 15;
        default:
            return 0;
            break;
    }
    return;
}

function int eq_vxv_740(int i, int Parm_int_0)
{
    if(i == -1)
    {
        return Parm_int_0;
    }
    if(Parm_int_0 == -1)
    {
        return i;        
    }
    else
    {
        return Min(i, Parm_int_0);
    }
    return;
}

function eq_vxv_412(Canvas Parm_Canvas_0, HTMLStyle Parm_HTMLStyle_0)
{
    if(Parm_HTMLStyle_0.bLink)
    {
        Parm_Canvas_0.DrawColor = Col_v2655;        
    }
    else
    {
        Parm_Canvas_0.DrawColor = Parm_HTMLStyle_0.TextColor;
    }
    if(Parm_HTMLStyle_0.bHeading)
    {
        Parm_Canvas_0.Font = Root.Fonts[3];        
    }
    else
    {
        if(Parm_HTMLStyle_0.bBold)
        {
            Parm_Canvas_0.Font = Root.Fonts[1];            
        }
        else
        {
            Parm_Canvas_0.Font = Root.Fonts[0];
        }
    }
    if(Font == 12)
    {
        Parm_Canvas_0.Font = Fnt_v5287;
    }
    return;
}

function string eqdot_vxv_1447(HTMLStyle Parm_HTMLStyle_0, int Parm_int_0)
{
    local string Local_string_v0, Local_string_v0, Local_string_v0;

    Local_string_v0 = "0000";
    Local_string_v0 = string(Parm_int_0);
    Local_string_v0 = Left(Local_string_v0, 4 - Len(Local_string_v0)) $ Local_string_v0;
    Local_string_v0 = string(Len(Parm_HTMLStyle_0.LinkDestination));
    Local_string_v0 = ((Local_string_v0 $ Left(Local_string_v0, 4 - Len(Local_string_v0))) $ Local_string_v0) $ Parm_HTMLStyle_0.LinkDestination;
    Local_string_v0 = string(Parm_HTMLStyle_0.TextColor.R);
    Local_string_v0 = (Local_string_v0 $ Left(Local_string_v0, 3 - Len(Local_string_v0))) $ Local_string_v0;
    Local_string_v0 = string(Parm_HTMLStyle_0.TextColor.G);
    Local_string_v0 = (Local_string_v0 $ Left(Local_string_v0, 3 - Len(Local_string_v0))) $ Local_string_v0;
    Local_string_v0 = string(Parm_HTMLStyle_0.TextColor.B);
    Local_string_v0 = (Local_string_v0 $ Left(Local_string_v0, 3 - Len(Local_string_v0))) $ Local_string_v0;
    Local_string_v0 = string(Parm_HTMLStyle_0.BGColor.R);
    Local_string_v0 = (Local_string_v0 $ Left(Local_string_v0, 3 - Len(Local_string_v0))) $ Local_string_v0;
    Local_string_v0 = string(Parm_HTMLStyle_0.BGColor.G);
    Local_string_v0 = (Local_string_v0 $ Left(Local_string_v0, 3 - Len(Local_string_v0))) $ Local_string_v0;
    Local_string_v0 = string(Parm_HTMLStyle_0.BGColor.B);
    Local_string_v0 = (Local_string_v0 $ Left(Local_string_v0, 3 - Len(Local_string_v0))) $ Local_string_v0;
    if(Parm_HTMLStyle_0.bCenter)
    {
        Local_string_v0 = Local_string_v0 $ "T";        
    }
    else
    {
        Local_string_v0 = Local_string_v0 $ "F";
    }
    if(Parm_HTMLStyle_0.bLink)
    {
        Local_string_v0 = Local_string_v0 $ "T";        
    }
    else
    {
        Local_string_v0 = Local_string_v0 $ "F";
    }
    if(Parm_HTMLStyle_0.bUnderline)
    {
        Local_string_v0 = Local_string_v0 $ "T";        
    }
    else
    {
        Local_string_v0 = Local_string_v0 $ "F";
    }
    if(Parm_HTMLStyle_0.bNoBR)
    {
        Local_string_v0 = Local_string_v0 $ "T";        
    }
    else
    {
        Local_string_v0 = Local_string_v0 $ "F";
    }
    if(Parm_HTMLStyle_0.bHeading)
    {
        Local_string_v0 = Local_string_v0 $ "T";        
    }
    else
    {
        Local_string_v0 = Local_string_v0 $ "F";
    }
    if(Parm_HTMLStyle_0.bBold)
    {
        Local_string_v0 = Local_string_v0 $ "T";        
    }
    else
    {
        Local_string_v0 = Local_string_v0 $ "F";
    }
    if(Parm_HTMLStyle_0.bBlink)
    {
        Local_string_v0 = Local_string_v0 $ "T";        
    }
    else
    {
        Local_string_v0 = Local_string_v0 $ "F";
    }
    return Local_string_v0;
    return;
}

function int eq_vxv_1430(string StyleString, out int Local_int_v0, out HTMLStyle Parm_HTMLStyle_0)
{
    local string Local_string_v0;
    local int Parm_int_0, i;

    Parm_int_0 = int(Mid(StyleString, Local_int_v0, 4));
    Local_int_v0 += 4;
    i = int(Mid(StyleString, Local_int_v0, 4));
    Local_int_v0 += 4;
    Parm_HTMLStyle_0.LinkDestination = Mid(StyleString, Local_int_v0, i);
    Local_int_v0 += i;
    Parm_HTMLStyle_0.TextColor.R = byte(int(Mid(StyleString, Local_int_v0, 3)));
    Local_int_v0 += 3;
    Parm_HTMLStyle_0.TextColor.G = byte(int(Mid(StyleString, Local_int_v0, 3)));
    Local_int_v0 += 3;
    Parm_HTMLStyle_0.TextColor.B = byte(int(Mid(StyleString, Local_int_v0, 3)));
    Local_int_v0 += 3;
    Parm_HTMLStyle_0.BGColor.R = byte(int(Mid(StyleString, Local_int_v0, 3)));
    Local_int_v0 += 3;
    Parm_HTMLStyle_0.BGColor.G = byte(int(Mid(StyleString, Local_int_v0, 3)));
    Local_int_v0 += 3;
    Parm_HTMLStyle_0.BGColor.B = byte(int(Mid(StyleString, Local_int_v0, 3)));
    Local_int_v0 += 3;
    Parm_HTMLStyle_0.bCenter = Mid(StyleString, Local_int_v0++, 1) == "T";
    Parm_HTMLStyle_0.bLink = Mid(StyleString, Local_int_v0++, 1) == "T";
    Parm_HTMLStyle_0.bUnderline = Mid(StyleString, Local_int_v0++, 1) == "T";
    Parm_HTMLStyle_0.bNoBR = Mid(StyleString, Local_int_v0++, 1) == "T";
    Parm_HTMLStyle_0.bHeading = Mid(StyleString, Local_int_v0++, 1) == "T";
    Parm_HTMLStyle_0.bBold = Mid(StyleString, Local_int_v0++, 1) == "T";
    Parm_HTMLStyle_0.bBlink = Mid(StyleString, Local_int_v0++, 1) == "T";
    return Parm_int_0;
    return;
}

defaultproperties
{
    TextColor=(R=255,G=255,B=255,A=0)
    BGColor=(R=100,G=50,B=0,A=0)
    Col_v2655=(R=0,G=0,B=255,A=0)
    Col_v2656=(R=255,G=0,B=0,A=0)
    RowClass=Class'UWindow.UWindowHTMLTextRow'
    bIgnoreLDoubleClick=true
}