class LinuxFix extends Info;

static simulated function string eq_vxv_304(string Msg)
{
    local int Local_int_v0, Local_Vector_v0;
    local string Local_string_v0, Local_string_v1, Local_string_v2, Local_string_v0;
    local bool Local_bool_v0;

    Local_string_v0 = Msg;
    Local_Vector_v0 = Len(Local_string_v0);
    Local_int_v0 = 1;
    if(Len(Local_string_v0) <= 0)
    {        
    }
    else
    {
        J0x2F:

        if(Local_int_v0 > Local_Vector_v0)
        {
            if(Len(Local_string_v0) == Len(Msg))
            {
                return Msg;
                // [Explicit Break]
                goto J0x60;
            }
            return Local_string_v0;
        }
        J0x60:

        Local_string_v0 = Left(Local_string_v0, Local_int_v0 - 1);
        Local_string_v2 = Left(Right(Local_string_v0, (Local_Vector_v0 - Local_int_v0) + 1), 1);
        Local_string_v1 = Right(Local_string_v0, Local_Vector_v0 - Local_int_v0);
        if(((Local_string_v2 ~= "|") || Local_string_v2 ~= "~") || Local_string_v2 ~= "")
        {
            if(Local_string_v2 ~= "")
            {
                Local_string_v2 = "~0";                
            }
            else
            {
                if(Local_string_v2 ~= "|")
                {
                    Local_string_v2 = "~8";                    
                }
                else
                {
                    if(Local_string_v2 ~= "~")
                    {
                        Local_string_v2 = "~9";                        
                    }
                    else
                    {
                        Local_string_v2 = eq_vxv_851(Local_string_v2);
                    }
                }
            }            
        }
        else
        {
            if((eq_vxv_853(Local_string_v2)) && Len(Local_string_v2) == 1)
            {
                Local_int_v0++;
                // [Loop Continue]
                goto J0x2F;
                // [Explicit Continue]
                goto J0x1F2;
            }
            if(!eq_vxv_853(Local_string_v2) && Len(Local_string_v2) == 1)
            {
                Local_string_v2 = eq_vxv_851(Local_string_v2);
            }/* !MISMATCHING REMOVE, tried Else got Type:If Position:0x164! */
            if((Local_string_v2 ~= "") || Len(Local_string_v2) != 2)
            {
                Local_string_v2 = "~0";
            }
            Local_string_v0 = (Local_string_v0 $ Local_string_v2) $ Local_string_v1;
            Local_Vector_v0 = Len(Local_string_v0);
            Local_int_v0 = Local_int_v0 + 2;
            // [Loop Continue]
            goto J0x2F;
        }/* !MISMATCHING REMOVE, tried If got Type:Else Position:0x13A! */
    }
    J0x1F2:

    return;
}

static function string eq_vxv_851(string Parm_int_1)
{
    switch(Parm_int_1)
    {
        case "�":
            return "|1";
        case "�":
            return "|2";
        case "�":
            return "|3";
        case "�":
            return "|4";
        case "�":
            return "|5";
        case "�":
            return "|6";
        case "�":
            return "|7";
        case "�":
            return "|8";
        case "�":
            return "|9";
        case "�":
            return "|0";
        case "�":
            return "|a";
        case "�":
            return "|b";
        case "�":
            return "|c";
        case "�":
            return "|d";
        case "�":
            return "|e";
        case "�":
            return "|f";
        case "�":
            return "|g";
        case "�":
            return "|h";
        case "�":
            return "|i";
        case "�":
            return "|j";
        case "�":
            return "|k";
        case "�":
            return "|l";
        case "�":
            return "|m";
        case "�":
            return "|n";
        case "�":
            return "|o";
        case "�":
            return "|p";
        case "�":
            return "|q";
        case "�":
            return "|r";
        case "�":
            return "|s";
        case "�":
            return "|t";
        case "�":
            return "|u";
        case "�":
            return "|v";
        case "�":
            return "|w";
        case "�":
            return "|x";
        case "�":
            return "|y";
        case "�":
            return "|z";
        case "�":
            return "~a";
        case "�":
            return "~b";
        case "�":
            return "~c";
        case "�":
            return "~d";
        case "�":
            return "~e";
        case "�":
            return "~f";
        case "�":
            return "~g";
        case "�":
            return "~h";
        case "�":
            return "~i";
        case "�":
            return "~j";
        case "�":
            return "~k";
        case "�":
            return "~l";
        case "�":
            return "~m";
        case "�":
            return "~n";
        case "�":
            return "~o";
        case "�":
            return "~p";
        case "�":
            return "~q";
        case "�":
            return "~r";
        case "�":
            return "~s";
        case "�":
            return "~t";
        case "�":
            return "~u";
        case "�":
            return "~v";
        case "�":
            return "~w";
        case "�":
            return "~x";
        case "�":
            return "~y";
        case "�":
            return "~z";
        case "�":
            return "|@";
        case "�":
            return "|#";
        case "�":
            return "|$";
        case "�":
            return "|%";
        case "�":
            return "|^";
        case "�":
            return "|&";
        case "�":
            return "|*";
        case "�":
            return "|(";
        case "�":
            return "|)";
        case "�":
            return "|-";
        case "�":
            return "|_";
        case "�":
            return "|+";
        case "�":
            return "|=";
        case "�":
            return "|[";
        case "�":
            return "|]";
        case "�":
            return "|{";
        case "�":
            return "|}";
        case "�":
            return "|'";
        case "�":
            return "|/";
        case "�":
            return "|1";
        case "�":
            return "|,";
        
        case "�":
            return "|.";
        case "�":
            return "|`";
        case "�":
            return "|~";
        case "�":
            return "|<";
        case "�":
            return "|>";
        case "�":
            return "|?";
        case "�":
            return "|2";
        case Chr(186):
            return "~3";
        case "�":
            return "~4";
        case "�":
            return "~5";
        case Chr(176):
            return "~6";
        case Chr(161):
            return "~7";
        case "|":
            return "~8";
        case "~":
            return "~9";
        default:
            return Parm_int_1;
            break;
    }
    return;
}

static function bool eq_vxv_853(string Parm_int_1)
{
    if((Left(Parm_int_1, 1) ~= "|") || Left(Parm_int_1, 1) ~= "~")
    {
        return false;
    }
    if(((((((((((((Caps(Left(Parm_int_1, 1)) ~= "A") || Caps(Left(Parm_int_1, 1)) ~= "B") || Caps(Left(Parm_int_1, 1)) ~= "C") || Caps(Left(Parm_int_1, 1)) ~= "D") || Caps(Left(Parm_int_1, 1)) ~= "E") || Caps(Left(Parm_int_1, 1)) ~= "F") || Caps(Left(Parm_int_1, 1)) ~= "G") || Caps(Left(Parm_int_1, 1)) ~= "H") || Caps(Left(Parm_int_1, 1)) ~= "I") || Caps(Left(Parm_int_1, 1)) ~= "J") || Caps(Left(Parm_int_1, 1)) ~= "K") || Caps(Left(Parm_int_1, 1)) ~= "L") || Caps(Left(Parm_int_1, 1)) ~= "M")
    {
        return true;        
    }
    else
    {
        if(((((((((((((Caps(Left(Parm_int_1, 1)) ~= "N") || Caps(Left(Parm_int_1, 1)) ~= "O") || Caps(Left(Parm_int_1, 1)) ~= "P") || Caps(Left(Parm_int_1, 1)) ~= "Q") || Caps(Left(Parm_int_1, 1)) ~= "R") || Caps(Left(Parm_int_1, 1)) ~= "S") || Caps(Left(Parm_int_1, 1)) ~= "T") || Caps(Left(Parm_int_1, 1)) ~= "U") || Caps(Left(Parm_int_1, 1)) ~= "V") || Caps(Left(Parm_int_1, 1)) ~= "W") || Caps(Left(Parm_int_1, 1)) ~= "X") || Caps(Left(Parm_int_1, 1)) ~= "Y") || Caps(Left(Parm_int_1, 1)) ~= "Z")
        {
            return true;            
        }
        else
        {
            if((((((((((Left(Parm_int_1, 1) ~= "1") || Left(Parm_int_1, 1) ~= "2") || Left(Parm_int_1, 1) ~= "3") || Left(Parm_int_1, 1) ~= "4") || Left(Parm_int_1, 1) ~= "5") || Left(Parm_int_1, 1) ~= "6") || Left(Parm_int_1, 1) ~= "7") || Left(Parm_int_1, 1) ~= "8") || Left(Parm_int_1, 1) ~= "9") || Left(Parm_int_1, 1) ~= "0")
            {
                return true;                
            }
            else
            {
                if((((((((((Left(Parm_int_1, 1) ~= ".") || Left(Parm_int_1, 1) ~= "!") || Left(Parm_int_1, 1) ~= "?") || Left(Parm_int_1, 1) ~= "@") || Left(Parm_int_1, 1) ~= "#") || Left(Parm_int_1, 1) ~= "$") || Left(Parm_int_1, 1) ~= "%") || Left(Parm_int_1, 1) ~= "^") || Left(Parm_int_1, 1) ~= "&") || Left(Parm_int_1, 1) ~= "*")
                {
                    return true;                    
                }
                else
                {
                    if(((((((((((Left(Parm_int_1, 1) ~= "(") || Left(Parm_int_1, 1) ~= ")") || Left(Parm_int_1, 1) ~= "-") || Left(Parm_int_1, 1) ~= "_") || Left(Parm_int_1, 1) ~= "+") || Left(Parm_int_1, 1) ~= "=") || Left(Parm_int_1, 1) ~= ":") || Left(Parm_int_1, 1) ~= ";") || Left(Parm_int_1, 1) ~= "[") || Left(Parm_int_1, 1) ~= "{") || Left(Parm_int_1, 1) ~= Chr(92))
                    {
                        return true;                        
                    }
                    else
                    {
                        if((((((((Left(Parm_int_1, 1) ~= "]") || Left(Parm_int_1, 1) ~= "}") || Left(Parm_int_1, 1) ~= ",") || Left(Parm_int_1, 1) ~= "<") || Left(Parm_int_1, 1) ~= ">") || Left(Parm_int_1, 1) ~= "/") || Left(Parm_int_1, 1) ~= "`") || Left(Parm_int_1, 1) ~= "'")
                        {
                            return true;                            
                        }
                        else
                        {
                            if(Left(Parm_int_1, 1) ~= " ")
                            {
                                return true;                                
                            }
                            else
                            {
                                if((Left(Parm_int_1, 1) == Chr(34)) || Left(Parm_int_1, 1) == Chr(295))
                                {
                                    return true;                                    
                                }
                                else
                                {
                                    return false;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return;
}

static simulated function string eq_vxv_401(string Msg)
{
    local int Local_int_v0, Local_Vector_v0;
    local string Local_string_v0, Local_string_v1, Local_string_v2, Local_string_v0, Parm_string_0;

    local bool Local_bool_v0;

    Parm_string_0 = Msg;
    Local_string_v0 = Msg;
    Local_Vector_v0 = Len(Local_string_v0);
    Local_int_v0 = 1;
    if(Len(Local_string_v0) <= 0)
    {        
    }
    else
    {
        J0x3A:

        if(Local_int_v0 > Local_Vector_v0)
        {
            if(Len(Local_string_v0) == Len(Parm_string_0))
            {
                return Parm_string_0;
                // [Explicit Break]
                goto J0x6B;
            }
            return Local_string_v0;
        }
        J0x6B:

        Local_string_v0 = Left(Local_string_v0, Local_int_v0 - 1);
        Local_string_v2 = Left(Right(Local_string_v0, Local_Vector_v0 - Len(Local_string_v0)), 2);
        Local_string_v1 = Right(Local_string_v0, (Local_Vector_v0 - Local_int_v0) - 1);
        if((Left(Local_string_v2, 1) ~= "|") || Left(Local_string_v2, 1) ~= "~")
        {
            if(((Local_string_v2 ~= "~8") || Local_string_v2 ~= "~9") || Local_string_v2 ~= "~0")
            {
                if(Local_string_v2 ~= "~0")
                {
                    Local_string_v2 = "";
                }
                if(Local_string_v2 ~= "~8")
                {
                    Local_string_v2 = "�";
                }
                if(Local_string_v2 ~= "~9")
                {
                    Local_string_v2 = Chr(126);
                }                
            }
            else
            {
                Local_string_v2 = eqq_vxv_1086(Local_string_v2);
            }
            goto J0x177;            
        }
        else
        {
            Local_int_v0++;
            // [Loop Continue]
            goto J0x3A;
        }
        J0x177:

        if((Local_string_v2 != "") && Len(Local_string_v2) == 1)
        {
            Local_string_v0 = (Local_string_v0 $ Local_string_v2) $ Local_string_v1;
            Local_Vector_v0 = Len(Local_string_v0);
            Local_int_v0++;
            // [Loop Continue]
            goto J0x3A;
        }
    }
    return;
}

static simulated function string eqq_vxv_1086(string Parm_int_1)
{
    switch(Parm_int_1)
    {
        case "|1":
            return "�";
        case "|2":
            return "�";
        case "|3":
            return "�";
        case "|4":
            return "�";
        case "|5":
            return "�";
        case "|6":
            return "�";
        case "|7":
            return "�";
        case "|8":
            return "�";
        case "|9":
            return "�";
        case "|0":
            return "�";
        case "|a":
            return "�";
        case "|b":
            return "�";
        case "|c":
            return "�";
        case "|d":
            return "�";
        case "|e":
            return "�";
        case "|f":
            return "�";
        case "|g":
            return "�";
        case "|h":
            return "�";
        case "|i":
            return "�";
        case "|j":
            return "�";
        case "|k":
            return "�";
        case "|l":
            return "�";
        case "|m":
            return "�";
        case "|n":
            return "�";
        case "|o":
            return "�";
        case "|p":
            return "�";
        case "|q":
            return "�";
        case "|r":
            return "�";
        case "|s":
            return "�";
        case "|t":
            return "�";
        case "|u":
            return "�";
        case "|v":
            return "�";
        case "|w":
            return "�";
        case "|x":
            return "�";
        case "|y":
            return "�";
        case "|z":
            return "�";
        case "~a":
            return "�";
        case "~b":
            return "�";
        case "~c":
            return "�";
        case "~d":
            return "�";
        case "~e":
            return "�";
        case "~f":
            return "�";
        case "~g":
            return "�";
        case "~h":
            return "�";
        case "~i":
            return "�";
        case "~j":
            return "�";
        case "~k":
            return "�";
        case "~l":
            return "�";
        case "~m":
            return "�";
        case "~n":
            return "�";
        case "~o":
            return "�";
        case "~p":
            return "�";
        case "~q":
            return "�";
        case "~r":
            return "�";
        case "~s":
            return "�";
        case "~t":
            return "�";
        case "~u":
            return "�";
        case "~v":
            return "�";
        case "~w":
            return "�";
        case "~x":
            return "�";
        case "~y":
            return "�";
        case "~z":
            return "�";
        case "|@":
            return "�";
        case "|#":
            return "�";
        case "|$":
            return "�";
        case "|%":
            return "�";
        case "|^":
            return "�";
        case "|&":
            return "�";
        case "|*":
            return "�";
        case "|(":
            return "�";
        case "|)":
            return "�";
        case "|-":
            return "�";
        case "|_":
            return "�";
        case "|+":
            return "�";
        case "|=":
            return "�";
        case "|[":
            return "�";
        case "|]":
            return "�";
        case "|{":
            return "�";
        case "|}":
            return "�";
        case "|'":
            return "�";
        case "|/":
            return "�";
        case "~1":
            return "�";
        case "|,":
            return "�";
        
        case "|.":
            return "�";
        case "|`":
            return "�";
        case "|~":
            return "�";
        case "|<":
            return "�";
        case "|>":
            return "�";
        case "|?":
            return "�";
        case "~2":
            return "�";
        case "~3":
            return Chr(186);
        case "~4":
            return "�";
        case "~5":
            return "�";
        case "~6":
            return Chr(176);
        case "~7":
            return Chr(161);
        default:
            return Parm_int_1;
            break;
    }
    return;
}
