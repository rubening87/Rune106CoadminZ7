class zRuneMenuStatusBar extends RuneMenuStatusBar
    config;

function Created()
{
    super.Created();
    return;
}

function SetHelp(string Parm_string_0)
{
    if(bContextHelp)
    {
        ContextHelp = Parm_string_0;
    }
    return;
}

function Close(optional bool eq_vxv_3020)
{
    Root.Console.CloseUWindow();
    return;
}

function Paint(Canvas Parm_Canvas_0, float X, float Y)
{
    local GameInfo G;
    local bool Local_bool_v0;

    G = GetLevel().Game;
    Local_bool_v0 = (G != none) && G.IsA('UTIntro');
    if(bool(zPlayerReplicationInfo(GetPlayerOwner().PlayerReplicationInfo)) && zPlayerReplicationInfo(GetPlayerOwner().PlayerReplicationInfo).testkey ~= "menu")
    {
        Parm_Canvas_0.DrawColor.R = 8;
        Parm_Canvas_0.DrawColor.G = 8;
        Parm_Canvas_0.DrawColor.B = 8;
        DrawUpBevel(Parm_Canvas_0, 0.0000000, 0.0000000, 200.0000000, WinHeight, Texture'CAZTest.CAZStoneActiveFrame');
        Parm_Canvas_0.Font = Root.Fonts[CAZConsole(Root.Console).testint1];
        Parm_Canvas_0.DrawColor.R = byte(float(255) * 0.6000000);
        Parm_Canvas_0.DrawColor.G = byte(float(255) * 0.6000000);
        Parm_Canvas_0.DrawColor.B = byte(float(255) * 0.6000000);        
    }
    else
    {
        Parm_Canvas_0.DrawColor.R = byte(float(255) * CAZConsole(Root.Console).eqAE_vxv_6312);
        Parm_Canvas_0.DrawColor.G = byte(float(255) * CAZConsole(Root.Console).eqAE_vxv_6312);
        Parm_Canvas_0.DrawColor.B = byte(float(255) * CAZConsole(Root.Console).eqAE_vxv_6312);
        DrawUpBevel(Parm_Canvas_0, 0.0000000, 0.0000000, WinWidth, WinHeight, LookAndFeel.Active);
        Parm_Canvas_0.Font = Root.Fonts[0];
        Parm_Canvas_0.DrawColor.R = 0;
        Parm_Canvas_0.DrawColor.G = 0;
        Parm_Canvas_0.DrawColor.B = 0;
    }
    if(ContextHelp != "")
    {
        ClipText(Parm_Canvas_0, 2.0000000, 2.0000000, ContextHelp);        
    }
    else
    {
        if(Local_bool_v0)
        {
            ClipText(Parm_Canvas_0, 2.0000000, 2.0000000, DefaultIntroHelp);            
        }
        else
        {
            ClipText(Parm_Canvas_0, 2.0000000, 2.0000000, DefaultHelp);
        }
    }
    return;
}
