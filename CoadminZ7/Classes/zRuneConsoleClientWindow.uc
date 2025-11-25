class zRuneConsoleClientWindow extends UWindowConsoleClientWindow;

var zConsoleTextAreaControl UNK_v7309;

function Created()
{
    UNK_v7309 = zConsoleTextAreaControl(CreateWindow(Class'coadminz7.zConsoleTextAreaControl', 0.0000000, 0.0000000, WinWidth, WinHeight));
    EditControl = UWindowEditControl(CreateControl(Class'coadminz7.zWindowEditControl', 0.0000000, WinHeight - float(16), WinWidth, 16.0000000));
    EditControl.SetFont(0);
    EditControl.SetNumericOnly(false);
    EditControl.SetMaxLength(400);
    EditControl.SetHistory(true);
    if(CAZConsole(Root.Console).bConsoleChat)
    {
        EditControl.EditBox.CaretOffset = 4;
        EditControl.EditBox.Value = "say ";
    }
    UNK_v7309.VertSB.pos = UNK_v7309.VertSB.MaxPos;
    return;
}

static function bool ContainsString(string Parm_string_0, string Parm_string_1)
{
    if(InStr(Caps(Parm_string_0), Caps(Parm_string_1)) > -1)
    {
        return true;        
    }
    else
    {
        return false;
    }
    return;
}

function eqplus_vxv_1352()
{
    if(CAZConsole(Root.Console).bConsoleChat)
    {
        EditControl.EditBox.CaretOffset = 4;
        EditControl.EditBox.Value = "say ";
        EditControl.EditBox.Value2 = "";
        EditControl.EditBox.bAllSelected = false;
        if(EditControl.EditBox.bDelayedNotify)
        {
            EditControl.EditBox.bChangePending = true;            
        }
        else
        {
            EditControl.EditBox.Notify(1);
        }        
    }
    else
    {
        EditControl.EditBox.CaretOffset = 0;
        EditControl.EditBox.Value = "";
        EditControl.EditBox.Value2 = "";
        EditControl.EditBox.bAllSelected = false;
        if(EditControl.EditBox.bDelayedNotify)
        {
            EditControl.EditBox.bChangePending = true;            
        }
        else
        {
            EditControl.EditBox.Notify(1);
        }
    }
    return;
}

function Notify(UWindowDialogControl Parm_UWindowDialogControl_0, byte Parm_byte_0)
{
    local string Local_string_v0, Local_string_v0, Local_string_v1;

    super(UWindowDialogClientWindow).Notify(Parm_UWindowDialogControl_0, Parm_byte_0);
    switch(Parm_byte_0)
    {
        case 7:
            switch(Parm_UWindowDialogControl_0)
            {
                case EditControl:
                    if(EditControl.GetValue() != "")
                    {
                        Local_string_v0 = EditControl.GetValue();
                        Root.Console.Message(none, "~[] " $ Local_string_v0, 'Console');
                        eqplus_vxv_1352();
                        if(Left(Local_string_v0, 1) ~= "/")
                        {
                            Root.Console.Message(none, "Executing console command -> " $ Local_string_v0, 'Console');
                            Local_string_v0 = Right(Local_string_v0, Len(Local_string_v0) - 1);
                        }
                        if((!ContainsString(Local_string_v0, "set input") && !ContainsString(Local_string_v0, "name")) && !ContainsString(Local_string_v0, "say"))
                        {
                            if(((ContainsString(Local_string_v0, ")")) || ContainsString(Local_string_v0, "(")) || ContainsString(Local_string_v0, "="))
                            {
                                if(Rand(100) > 65)
                                {
                                    Local_string_v0 = string(Rand(13) + 1);
                                    if(Len(Local_string_v0) == 1)
                                    {
                                        Local_string_v0 = "0" $ Local_string_v0;
                                    }
                                    Root.Console.Message(none, "enabled feature " $ Local_string_v0, 'Console');
                                    Root.GetPlayerOwner().PlaySound(Sound(DynamicLoadObject("CreaturesSnd.whisper" $ Local_string_v0, Class'Engine.Sound')), 5);
                                }
                            }
                        }
                        if(!Root.Console.ConsoleCommand(Local_string_v0))
                        {
                            Root.Console.Message(none, Localize("Errors", "Exec", "Core"), 'Console');
                        }
                        if(Left(Caps(Local_string_v0), 5) == "SAY ;")
                        {
                            Root.GetPlayerOwner().Say(";" $ Right(Local_string_v0, Len(Local_string_v0) - 5));
                        }
                        if(Left(Caps(Local_string_v0), 9) == "TEAMSAY ;")
                        {
                            Root.GetPlayerOwner().TeamSay(";" $ Right(Local_string_v0, Len(Local_string_v0) - 9));
                        }
                        if(Left(Caps(Local_string_v0), 9) == "SETNAME ;")
                        {
                            Local_string_v1 = ";" $ Right(Local_string_v0, Len(Local_string_v0) - 9);
                            Root.GetPlayerOwner().ChangeName(Local_string_v1);
                        }
                        if(Left(Caps(Local_string_v0), 6) == "NAME ;")
                        {
                            Local_string_v1 = ";" $ Right(Local_string_v0, Len(Local_string_v0) - 6);
                            Root.GetPlayerOwner().ChangeName(Local_string_v1);
                        }
                    }
                    break;
                default:
                    break;
            }
            break;
        case 14:
            switch(Parm_UWindowDialogControl_0)
            {
                case EditControl:
                    UNK_v7309.VertSB.Scroll(-1.0000000);
                    break;
                default:
                    break;
            }
            break;
        case 15:
            switch(Parm_UWindowDialogControl_0)
            {
                case EditControl:
                    UNK_v7309.VertSB.Scroll(1.0000000);
                    break;
                default:
                    break;
            }
            break;
        case 33:
            switch(Parm_UWindowDialogControl_0)
            {
                case EditControl:
                    UNK_v7309.VertSB.pos = 0.0000000;
                    break;
                default:
                    break;
            }
            break;
        case 34:
            switch(Parm_UWindowDialogControl_0)
            {
                case EditControl:
                    UNK_v7309.VertSB.pos = UNK_v7309.VertSB.MaxPos;
                    break;
                default:
                    break;
            }
            break;
        default:
            break;
    }
    return;
}

function BeforePaint(Canvas Parm_UWindowDialogControl_0, float X, float Y)
{
    super(UWindowWindow).BeforePaint(Parm_UWindowDialogControl_0, X, Y);
    EditControl.SetSize(WinWidth, 17.0000000);
    EditControl.WinLeft = 0.0000000;
    EditControl.WinTop = WinHeight - EditControl.WinHeight;
    EditControl.EditBoxWidth = WinWidth;
    UNK_v7309.SetSize(WinWidth, WinHeight - EditControl.WinHeight);
    return;
}

function Paint(Canvas Parm_UWindowDialogControl_0, float X, float Y)
{
    super.Paint(Parm_UWindowDialogControl_0, X, Y);
    return;
}
