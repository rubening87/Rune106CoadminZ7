class zConsoleTextAreaControl extends UWindowDynamicTextArea
    config;

var bool B_v2903;
var float FLT_v7264;
var Font Fnt_v5287;
var bool B_v7265;
var string STR_v7266;
var float FLT_v2932;
var float FLT_v2933;
var float FLT_v5297;
var float FLT_v5296;
var float FLT_v7099;
var float FLT_v7100;
var Color Col_v2607;
var bool bControlDown;
var bool Selected;
var bool B_v7268;
var int INT_v7269;
var int INT_v7270;

function LMouseDown(float X, float Y)
{
    super(UWindowWindow).LMouseDown(X, Y);
    FLT_v2932 = X;
    FLT_v2933 = Y;
    
    if(Cursor != Root.HandCursor)
    {
        B_v7268 = true;
        Selected = false;        
    }
    else
    {
        B_v7268 = false;
        Selected = false;
    }
    return;
}

function LMouseUp(float X, float Y)
{
    Selected = true;
    super(UWindowWindow).LMouseUp(X, Y);
    return;
}

function RMouseDown(float X, float Y)
{
    GetPlayerOwner().CopyToClipboard(STR_v7266);
    Selected = false;
    B_v7268 = false;
    bScrollOnResize = CAZConsole(GetPlayerOwner().Player.Console).bAutoScroll;
    super(UWindowWindow).RMouseDown(X, Y);
    return;
}

function BeforePaint(Canvas Parm_Canvas_0, float X, float Y)
{
    super.BeforePaint(Parm_Canvas_0, X, Y);
    Cursor = Root.NormalCursor;
    return;
}

function eqstar_vxv_1328(Canvas Parm_Canvas_0, float MouseX, float MouseY)
{
    local UWindowDynamicTextRow Local_Vector_v0;
    local int Local_int_v0, Local_int_v1, i;
    local float Y, Local_Actor_v0;
    local bool Local_bool_v0, Local_bool_v1, Local_bool_v2;

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
    Local_bool_v1 = true;
    if((OldW != WinWidth) || OldH != WinHeight)
    {
        WordWrap(Parm_Canvas_0, true);
        OldW = WinWidth;
        OldH = WinHeight;
        Local_bool_v0 = true;
        Local_bool_v2 = true;        
    }
    else
    {
        if(bDirty)
        {
            WordWrap(Parm_Canvas_0, false);
            Local_bool_v0 = true;            
        }
        else
        {
            if(Local_bool_v1)
            {
                WordWrap(Parm_Canvas_0, false);
                Local_bool_v0 = true;
            }
        }
    }
    if(Local_bool_v0)
    {
        TextAreaTextSize(Parm_Canvas_0, "A", Local_Actor_v0, DefaultTextHeight);
        VisibleRows = int(WinHeight / DefaultTextHeight);
        Count = List.Count();
        VertSB.SetRange(0.0000000, float(Count), float(VisibleRows));
        if(bDirty || Local_bool_v2)
        {
            if((bScrollOnResize && !Selected) && !B_v7268)
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
    }
    if(bTopCentric)
    {
        Local_int_v0 = int(VertSB.pos);
        Local_Vector_v0 = UWindowDynamicTextRow(List.Next);
        i = 0;
        J0x28F:

        if((i < Local_int_v0) && Local_Vector_v0 != none)
        {
            Local_Vector_v0 = UWindowDynamicTextRow(Local_Vector_v0.Next);
            i++;
            // [Loop Continue]
            goto J0x28F;
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
        J0x31E:

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
            goto J0x31E;
        }
        if(bVariableRowHeight)
        {
            VisibleRows = Local_int_v1 - 1;
            J0x39D:

            if((VertSB.pos + float(VisibleRows)) > float(Count))
            {
                VisibleRows--;
                // [Loop Continue]
                goto J0x39D;
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
        J0x46C:

        if((i < Local_int_v0) && Local_Vector_v0 != List)
        {
            Local_Vector_v0 = UWindowDynamicTextRow(Local_Vector_v0.Prev);
            i++;
            // [Loop Continue]
            goto J0x46C;
        }
        Y = WinHeight - DefaultTextHeight;
        J0x4C1:

        if(((Local_Vector_v0 != List) && Local_Vector_v0 != none) && Y > -DefaultTextHeight)
        {
            DrawTextLine(Parm_Canvas_0, Local_Vector_v0, Y);
            Y = Y - DefaultTextHeight;
            Local_Vector_v0 = UWindowDynamicTextRow(Local_Vector_v0.Prev);
            // [Loop Continue]
            goto J0x4C1;
        }
    }
    return;
}

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    STR_v7266 = "";
    B_v7265 = B_v7268;
    if(B_v7265)
    {
        if(!Selected)
        {
            INT_v7269 = int(X);
            INT_v7270 = int(Y);
        }
        if(Selected)
        {
            if(FLT_v2932 <= float(INT_v7269))
            {
                FLT_v5297 = FLT_v2932;
                FLT_v7099 = float(INT_v7269);                
            }
            else
            {
                FLT_v5297 = float(INT_v7269);
                FLT_v7099 = FLT_v2932;
            }
            if(FLT_v2933 <= float(INT_v7270))
            {
                FLT_v5296 = FLT_v2933;
                FLT_v7100 = float(INT_v7270);                
            }
            else
            {
                FLT_v5296 = float(INT_v7270);
                FLT_v7100 = FLT_v2933;
            }            
        }
        else
        {
            if(FLT_v2932 <= X)
            {
                FLT_v5297 = FLT_v2932;
                FLT_v7099 = X;                
            }
            else
            {
                FLT_v5297 = X;
                FLT_v7099 = FLT_v2932;
            }
            if(FLT_v2933 <= Y)
            {
                FLT_v5296 = FLT_v2933;
                FLT_v7100 = Y;                
            }
            else
            {
                FLT_v5296 = Y;
                FLT_v7100 = FLT_v2933;
            }
        }
    }
    eqstar_vxv_1328(Parm_Canvas_0, X, Y);
    B_v2903 = false;
    return;
}

function eqstar_vxv_1331(Canvas Parm_Canvas_0, float Parm_float_0, float Parm_float_1, coerce string eqP_vxv_5807, optional bool eq_vxv_4247)
{
    local int Local_int_v0, Local_int_v1, Local_int_v2;
    local Color Prev;
    local string Selected;
    local float Local_float_v0, W, H;
    local int i;
    local float Local_float_v1;

    TextAreaClipText(Parm_Canvas_0, Parm_float_0, Parm_float_1, eqP_vxv_5807, eq_vxv_4247);
    if(!B_v7265)
    {
        return;
    }
    Local_float_v1 = Parm_float_1 + DefaultTextHeight;
    if((Parm_float_1 > FLT_v7100) || Local_float_v1 < FLT_v5296)
    {
        return;
    }
    Local_int_v2 = Len(eqP_vxv_5807);
    Local_int_v0 = 0;
    Local_int_v1 = Local_int_v2;
    if(((Parm_float_1 <= FLT_v5296) && FLT_v5296 <= Local_float_v1) && FLT_v5297 > float(0))
    {
        i = 1;
        J0xB5:

        if(i < Local_int_v2)
        {
            TextAreaTextSize(Parm_Canvas_0, Left(eqP_vxv_5807, i), W, H);
            if(W > FLT_v5297)
            {
                Local_int_v0 = i - 1;
                // [Explicit Break]
                goto J0x10F;
            }
            i++;
            // [Loop Continue]
            goto J0xB5;
        }
    }
    J0x10F:

    if((Parm_float_1 <= FLT_v7100) && FLT_v7100 <= Local_float_v1)
    {
        i = Local_int_v0 + 1;
        J0x13D:

        if(i < Local_int_v2)
        {
            TextAreaTextSize(Parm_Canvas_0, Left(eqP_vxv_5807, i), W, H);
            if(W > FLT_v7099)
            {
                Local_int_v1 = i;
                // [Explicit Break]
                goto J0x194;
            }
            i++;
            // [Loop Continue]
            goto J0x13D;
        }
    }
    J0x194:

    TextAreaTextSize(Parm_Canvas_0, Left(eqP_vxv_5807, Local_int_v0), Local_float_v0, H);
    Local_float_v0 += Parm_float_0;
    Selected = Mid(eqP_vxv_5807, Local_int_v0, Local_int_v1 - Local_int_v0);
    if(Local_float_v1 < FLT_v7100)
    {
        STR_v7266 = (Chr(13) $ Chr(10)) $ STR_v7266;
    }
    STR_v7266 = Selected $ STR_v7266;
    Prev = Parm_Canvas_0.DrawColor;
    Parm_Canvas_0.DrawColor = Col_v2607;
    TextAreaClipText(Parm_Canvas_0, Local_float_v0, Parm_float_1, Selected, eq_vxv_4247);
    Parm_Canvas_0.DrawColor = Prev;
    return;
}

function TextAreaClipText(Canvas Parm_Canvas_0, float Parm_float_0, float Parm_float_1, coerce string eqP_vxv_5807, optional bool eq_vxv_4247)
{
    local float X, Y, W, H, FLT_v2932, FLT_v2933;

    local string Text, Local_string_v0;
    local byte bLink;
    local bool Local_bool_v0, Local_bool_v1;
    local int Local_int_v0, Local_int_v1, Local_int_v2;
    local Color Prev;
    local string Selected;
    local float Local_float_v0;
    local int i;
    local float Local_float_v1;
    local bool Local_bool_v2;
    local GameReplicationInfo Local_GameReplicationInfo_v0;

    if(B_v7265)
    {
        eqstar_vxv_1331(Parm_Canvas_0, Parm_float_0, Parm_float_1, eqP_vxv_5807, eq_vxv_4247);
        return;
    }
    Text = eqP_vxv_5807;
    X = Parm_float_0;
    Y = Parm_float_1;
    J0x4C:

    if(Text != "")
    {
        eqdot_vxv_1445(Parm_Canvas_0, Text, Local_string_v0, W, H, bLink);
        if(int(bLink) != 0)
        {
            Parm_Canvas_0.DrawColor.R = 30;
            Parm_Canvas_0.DrawColor.G = 144;
            Parm_Canvas_0.DrawColor.B = byte(255);            
        }
        else
        {
            Parm_Canvas_0.DrawColor = TextColor;
        }
        if(Class'coadminz7.zInfo'.static.ContainsString(Local_string_v0, "Spectator@all"))
        {
            Parm_Canvas_0.DrawColor.R = 0;
            Parm_Canvas_0.DrawColor.G = 191;
            Parm_Canvas_0.DrawColor.B = byte(255);
            Local_bool_v1 = true;
        }
        GetMouseXY(FLT_v2932, FLT_v2933);
        Local_bool_v0 = ((((int(bLink) != 0) && Parm_float_0 < FLT_v2932) && (Parm_float_0 + W) > FLT_v2932) && Parm_float_1 < FLT_v2933) && (Parm_float_1 + H) > FLT_v2933;
        if(Local_bool_v0)
        {
            Cursor = Root.HandCursor;
        }
        if(Local_bool_v0 && bMouseDown || B_v2903)
        {
            if(B_v2903)
            {
                if((Right(Local_string_v0, 1) ~= ".") || Right(Local_string_v0, 1) ~= ":")
                {
                    Local_string_v0 = Left(Local_string_v0, Len(Local_string_v0) - 1);
                }
                LogInternal(("Clicked URL: >>" $ Local_string_v0) $ "<<");
                if(Left(Local_string_v0, 7) ~= "http://")
                {
                    GetPlayerOwner().ConsoleCommand("start " $ Local_string_v0);
                }
                if(Left(Local_string_v0, 8) ~= "theme://")
                {
                    CAZConsole(GetPlayerOwner().Player.Console).decode(Local_string_v0);
                }
                if(Left(Local_string_v0, 9) ~= "twitch://")
                {
                    GetPlayerOwner().ConsoleCommand("start http://twitch.tv/" $ Right(Local_string_v0, Len(Local_string_v0) - 9));
                }
                if(Left(Local_string_v0, 8) ~= "https://")
                {
                    GetPlayerOwner().ConsoleCommand("start " $ Local_string_v0);
                }
                if(Left(Local_string_v0, 6) ~= "ftp://")
                {
                    GetPlayerOwner().ConsoleCommand("start " $ Local_string_v0);
                }
                if(Left(Local_string_v0, 9) ~= "telnet://")
                {
                    GetPlayerOwner().ConsoleCommand("start " $ Local_string_v0);
                }
                if(Left(Local_string_v0, 9) ~= "gopher://")
                {
                    GetPlayerOwner().ConsoleCommand("start " $ Local_string_v0);
                }
                if(Left(Local_string_v0, 4) ~= "www.")
                {
                    GetPlayerOwner().ConsoleCommand("start http://" $ Local_string_v0);
                }
                if(Left(Local_string_v0, 4) ~= "ftp.")
                {
                    GetPlayerOwner().ConsoleCommand("start ftp://" $ Local_string_v0);
                }
                if(Left(Local_string_v0, 7) ~= "discord")
                {
                    GetPlayerOwner().ConsoleCommand("start http://bit.ly/runediscord");
                }
                if(Left(Local_string_v0, 6) ~= "donate")
                {
                    GetPlayerOwner().ConsoleCommand("start http://bit.ly/coadminz_donate");
                }
                if(Left(Local_string_v0, 6) ~= "money")
                {
                    GetPlayerOwner().ConsoleCommand("start http://bit.ly/coadminz_donate");
                }
                if(zPlayerReplicationInfo(GetPlayerOwner().PlayerReplicationInfo).Local_int_v2 > 0)
                {
                    if((((Left(Local_string_v0, 4) ~= "CTT-") || Left(Local_string_v0, 3) ~= "AR-") || Left(Local_string_v0, 3) ~= "HB-") || Left(Local_string_v0, 5) ~= "Coop-")
                    {
                        GetPlayerOwner().ConsoleCommand("pMap " $ Local_string_v0);
                    }
                    if(Left(Local_string_v0, 3) ~= "DM-")
                    {
                        if((ZRunePlayer(GetPlayerOwner()) != none) && ZRunePlayer(GetPlayerOwner()).GGREPInfo != none)
                        {
                            Local_GameReplicationInfo_v0 = ZRunePlayer(GetPlayerOwner()).GGREPInfo;                            
                        }
                        else
                        {
                            if(GetPlayerOwner().GameReplicationInfo != none)
                            {
                                Local_GameReplicationInfo_v0 = GetPlayerOwner().GameReplicationInfo;
                            }
                        }
                        if(Local_GameReplicationInfo_v0 != none)
                        {
                            if(Local_GameReplicationInfo_v0.bTeamGame)
                            {
                                GetPlayerOwner().ConsoleCommand("pMap T" $ Local_string_v0);                                
                            }
                            else
                            {
                                GetPlayerOwner().ConsoleCommand("pMap " $ Local_string_v0);
                            }                            
                        }
                        else
                        {
                            GetPlayerOwner().ConsoleCommand("pMap " $ Local_string_v0);
                        }
                    }                    
                }
                else
                {
                    if(Left(Local_string_v0, 7) ~= "rune://")
                    {
                        eq_vxv_671(Local_string_v0);
                    }
                }                
            }
            else
            {
                Parm_Canvas_0.DrawColor.R = byte(255);
                Parm_Canvas_0.DrawColor.G = 0;
                Parm_Canvas_0.DrawColor.B = 0;
            }
            if(B_v2903)
            {
                B_v2903 = false;
            }
        }
        if(int(bLink) != 0)
        {
            DrawStretchedTexture(Parm_Canvas_0, Parm_float_0, (Parm_float_1 + H) - float(1), W, 1.0000000, Texture'UWindow.WhiteTexture');
        }
        ClipText(Parm_Canvas_0, Parm_float_0, Parm_float_1, Local_string_v0);
        Parm_float_0 += W;
        // [Loop Continue]
        goto J0x4C;
    }
    return;
}

function eq_vxv_671(string URL)
{
    GetPlayerOwner().ClientTravel(URL, 0, false);
    return;
}

function Click(float X, float Y)
{
    super(UWindowWindow).Click(X, Y);
    B_v2903 = true;
    return;
}

function eqdot_vxv_1445(Canvas Parm_Canvas_0, out string Text, out string Local_string_v0, out float W, out float H, out byte bLink)
{
    local int i, Local_int_v0;
    local string Local_string_v0;

    i = InStr(Text, "http://");
    Local_int_v0 = InStr(Text, "www.");
    if((i == -1) || Local_int_v0 == -1)
    {
        i = Max(i, Local_int_v0);        
    }
    else
    {
        i = Min(i, Local_int_v0);
    }
    Local_int_v0 = InStr(Text, "rune://");
    if((i == -1) || Local_int_v0 == -1)
    {
        i = Max(i, Local_int_v0);        
    }
    else
    {
        i = Min(i, Local_int_v0);
    }
    Local_int_v0 = InStr(Text, "https://");
    if((i == -1) || Local_int_v0 == -1)
    {
        i = Max(i, Local_int_v0);        
    }
    else
    {
        i = Min(i, Local_int_v0);
    }
    Local_int_v0 = InStr(Caps(Text), "DISCORD");
    if((i == -1) || Local_int_v0 == -1)
    {
        i = Max(i, Local_int_v0);        
    }
    else
    {
        i = Min(i, Local_int_v0);
    }
    Local_int_v0 = InStr(Caps(Text), "MONEY");
    if((i == -1) || Local_int_v0 == -1)
    {
        i = Max(i, Local_int_v0);        
    }
    else
    {
        i = Min(i, Local_int_v0);
    }
    Local_int_v0 = InStr(Caps(Text), "DONATE");
    if((i == -1) || Local_int_v0 == -1)
    {
        i = Max(i, Local_int_v0);        
    }
    else
    {
        i = Min(i, Local_int_v0);
    }
    Local_int_v0 = InStr(Caps(Text), "THEME://");
    if((i == -1) || Local_int_v0 == -1)
    {
        i = Max(i, Local_int_v0);        
    }
    else
    {
        i = Min(i, Local_int_v0);
    }
    Local_int_v0 = InStr(Caps(Text), "TWITCH://");
    if((i == -1) || Local_int_v0 == -1)
    {
        i = Max(i, Local_int_v0);        
    }
    else
    {
        i = Min(i, Local_int_v0);
    }
    if(zPlayerReplicationInfo(GetPlayerOwner().PlayerReplicationInfo).Local_int_v2 > 0)
    {
        Local_int_v0 = InStr(Caps(Text), "DM-");
        if((i == -1) || Local_int_v0 == -1)
        {
            i = Max(i, Local_int_v0);            
        }
        else
        {
            i = Min(i, Local_int_v0);
        }
        Local_int_v0 = InStr(Caps(Text), "AR-");
        if((i == -1) || Local_int_v0 == -1)
        {
            i = Max(i, Local_int_v0);            
        }
        else
        {
            i = Min(i, Local_int_v0);
        }
        Local_int_v0 = InStr(Caps(Text), "COOP-");
        if((i == -1) || Local_int_v0 == -1)
        {
            i = Max(i, Local_int_v0);            
        }
        else
        {
            i = Min(i, Local_int_v0);
        }
        Local_int_v0 = InStr(Caps(Text), "CTT-");
        if((i == -1) || Local_int_v0 == -1)
        {
            i = Max(i, Local_int_v0);            
        }
        else
        {
            i = Min(i, Local_int_v0);
        }
        Local_int_v0 = InStr(Caps(Text), "HB-");
        if((i == -1) || Local_int_v0 == -1)
        {
            i = Max(i, Local_int_v0);            
        }
        else
        {
            i = Min(i, Local_int_v0);
        }
    }
    bLink = 0;
    if(Class'coadminz7.zInfo'.static.ContainsString(Text, "Spectator@all"))
    {
        Local_string_v0 = Text;
        Text = Local_string_v0;
    }
    if(i == -1)
    {
        Local_string_v0 = Text;
        Text = "";        
    }
    else
    {
        if(i == 0)
        {
            bLink = 1;
            i = InStr(Text, " ");
            if(i == -1)
            {
                Local_string_v0 = Text;
                Text = "";                
            }
            else
            {
                Local_string_v0 = Left(Text, i);
                Text = Mid(Text, i);
            }            
        }
        else
        {
            Local_string_v0 = Left(Text, i);
            Text = Mid(Text, i);
        }
    }
    TextAreaTextSize(Parm_Canvas_0, Local_string_v0, W, H);
    return;
}

defaultproperties
{
    Col_v2607=(R=0,G=40,B=240,A=0)
    MaxLines=5000
    bIgnoreLDoubleClick=true
}