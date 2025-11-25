class zWindowSmallButton extends UWindowSmallButton;

function Created()
{
    bNoKeyboard = true;
    super.Created();
    ToolTipString = "";
    SetText("");
    SetFont(0);
    WinHeight = 16.0000000;
    return;
}

function AutoWidth(Canvas Parm_Canvas_0)
{
    local float W, H;

    Parm_Canvas_0.Font = Root.Fonts[Font];
    TextSize(Parm_Canvas_0, RemoveAmpersand(Text), W, H);
    if(WinWidth < (W + float(10)))
    {
        WinWidth = W + float(10);
    }
    return;
}

function BeforePaint(Canvas Parm_Canvas_0, float X, float Y)
{
    local float W, H;

    Parm_Canvas_0.Font = Root.Fonts[Font];
    TextSize(Parm_Canvas_0, RemoveAmpersand(Text), W, H);
    TextX = (WinWidth - W) / float(2);
    TextY = (WinHeight - H) / float(2);
    if(bMouseDown)
    {
        TextX += float(1);
        TextY += float(1);
    }
    return;
}

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    LookAndFeel.Button_DrawSmallButton(self, Parm_Canvas_0);
    super.Paint(Parm_Canvas_0, X, Y);
    return;
}
