class zInfo extends Info;

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

static function string TrimLeadingSpaces(string Parm_string_0)
{
    J0x00:
    if(Left(Parm_string_0, 1) == " ")
    {
        Parm_string_0 = Right(Parm_string_0, Len(Parm_string_0) - 1);
        // [Loop Continue]
        goto J0x00;
    }
    return Parm_string_0;
    return;
}

function string TrimTrailingSpaces(string Parm_string_0)
{
    J0x00:
    if(Right(Parm_string_0, 1) == " ")
    {
        Parm_string_0 = Left(Parm_string_0, Len(Parm_string_0) - 1);
        // [Loop Continue]
        goto J0x00;
    }
    return Parm_string_0;
    return;
}

function string eqgt_vxv_1981(string Parm_string_0)
{
    local string Local_string_v0;

    if(Level.Hour < 10)
    {
        Local_string_v0 = "0";
    }
    Local_string_v0 = (Local_string_v0 $ string(Level.Hour)) $ Parm_string_0;
    if(Level.Minute < 10)
    {
        Local_string_v0 = Local_string_v0 $ "0";
    }
    Local_string_v0 = (Local_string_v0 $ string(Level.Minute)) $ Parm_string_0;
    if(Level.Second < 10)
    {
        Local_string_v0 = Local_string_v0 $ "0";
    }
    Local_string_v0 = Local_string_v0 $ string(Level.Second);
    return Local_string_v0;
    return;
}

function string eqq_vxv_1983(string Parm_string_0)
{
    local string Local_string_v0;

    Local_string_v0 = "";
    if(Level.Day < 10)
    {
        Local_string_v0 = "0";
    }
    Local_string_v0 = (Local_string_v0 $ string(Level.Day)) $ Parm_string_0;
    if(Level.Month < 10)
    {
        Local_string_v0 = Local_string_v0 $ "0";
    }
    Local_string_v0 = (Local_string_v0 $ string(Level.Month)) $ Parm_string_0;
    Local_string_v0 = Local_string_v0 $ string(Level.Year);
    return Local_string_v0;
    return;
}

static function string GetDelimitedPart(string Parm_string_0, int Parm_int_0, optional string eq_vxv_4439)
{
    local string Local_string_v0, Local_string_v1, Local_string_v2;
    local int i, Local_int_v0;

    if(eq_vxv_4439 == "")
    {
        eq_vxv_4439 = " ";
    }
    Local_string_v0 = Parm_string_0 $ eq_vxv_4439;
    i = 0;
    J0x2E:

    if(i < (Len(Parm_string_0) + 1))
    {
        Local_string_v2 = Mid(Parm_string_0, i, Len(eq_vxv_4439));
        if(Local_string_v2 == eq_vxv_4439)
        {
            Local_int_v0++;
        }
        i++;
        // [Loop Continue]
        goto J0x2E;
    }
    if(Local_int_v0 > 0)
    {
        i = 1;
        J0x8D:

        if(i < 32)
        {
            Local_string_v1[i] = TrimLeadingSpaces(Left(Local_string_v0, InStr(Local_string_v0, eq_vxv_4439)));
            Local_string_v0 = Right(Local_string_v0, (Len(Local_string_v0) - Len(eq_vxv_4439)) - Len(Local_string_v1[i]));
            i++;
            // [Loop Continue]
            goto J0x8D;
        }
        return Local_string_v1[Parm_int_0];
    }
    return;
}

static final function string ToLowercase(coerce string InputText)
{
	local int Index;
	local string CurrentChar;

	for (Index = 0; Index < Len(InputText); Index++)
	{
		CurrentChar = Mid(InputText, Index, 1);
		if ((CurrentChar >= "A") && (CurrentChar <= "Z"))
		{
			InputText = Left(InputText, Index) $ Chr(Asc(CurrentChar) + 32) $ Mid(InputText, Index + 1);
		}
	}
	return InputText;
}


function ReplaceString(out string Text, string Parm_string_0, string Parm_string_1)
{
    local int i;
    local string Input;

    if((Parm_string_0 != Parm_string_1) && Parm_string_0 != "")
    {
        Input = Text;
        Text = "";
        i = InStr(Input, Parm_string_0);
        J0x42:

        if(i != -1)
        {
            Text = (Text $ Left(Input, i)) $ Parm_string_1;
            Input = Mid(Input, i + Len(Parm_string_0));
            i = InStr(Input, Parm_string_0);
            // [Loop Continue]
            goto J0x42;
        }
        Text = Text $ Input;
    }
    return;
}

function string GetSkinClassName(string Parm_Class<Actor>_0)
{
    if(Parm_Class<Actor>_0 ~= "Ragnar")
    {
        return "RuneI.Ragnar";        
    }
    else
    {
        if(Parm_Class<Actor>_0 ~= "Alric")
        {
            return "RuneI.PlayerAlric";            
        }
        else
        {
            if(Parm_Class<Actor>_0 ~= "Berserker")
            {
                return "RuneI.PlayerBerserker";                
            }
            else
            {
                if(Parm_Class<Actor>_0 ~= "Conrack")
                {
                    return "RuneI.PlayerConrack";                    
                }
                else
                {
                    if(Parm_Class<Actor>_0 ~= "DarkViking")
                    {
                        return "RuneI.PlayerDarkViking";                        
                    }
                    else
                    {
                        if(Parm_Class<Actor>_0 ~= "DarkVikingSnow")
                        {
                            return "CoAdminZ7.PlayerDarkVikingSnow";                            
                        }
                        else
                        {
                            if(Parm_Class<Actor>_0 ~= "DarkWarrior")
                            {
                                return "RuneI.PlayerDarkWarrior";                                
                            }
                            else
                            {
                                if(Parm_Class<Actor>_0 ~= "Elder")
                                {
                                    return "RuneI.PlayerElder";                                    
                                }
                                else
                                {
                                    if(Parm_Class<Actor>_0 ~= "Elder2")
                                    {
                                        return "RuneI.PlayerElder2";                                        
                                    }
                                    else
                                    {
                                        if(Parm_Class<Actor>_0 ~= "Karl")
                                        {
                                            return "RuneI.PlayerKarl";                                            
                                        }
                                        else
                                        {
                                            if(Parm_Class<Actor>_0 ~= "Kalric")
                                            {
                                                return "CoAdminZ7.thePlayerKarl";                                                
                                            }
                                            else
                                            {
                                                if(Parm_Class<Actor>_0 ~= "LokiGuard")
                                                {
                                                    return "RuneI.PlayerLokiGuard";                                                    
                                                }
                                                else
                                                {
                                                    if(Parm_Class<Actor>_0 ~= "SnowRagnar")
                                                    {
                                                        return "RuneI.RagnarSnow";                                                        
                                                    }
                                                    else
                                                    {
                                                        if(Parm_Class<Actor>_0 ~= "ShipWreckRagnar")
                                                        {
                                                            return "RuneI.PlayerShipWreckRagnar";                                                            
                                                        }
                                                        else
                                                        {
                                                            if(Parm_Class<Actor>_0 ~= "Sigurd")
                                                            {
                                                                return "RuneI.PlayerSigurd";                                                                
                                                            }
                                                            else
                                                            {
                                                                if(Parm_Class<Actor>_0 ~= "Sven")
                                                                {
                                                                    return "RuneI.PlayerSven";                                                                    
                                                                }
                                                                else
                                                                {
                                                                    if(Parm_Class<Actor>_0 ~= "TownRagnar")
                                                                    {
                                                                        return "RuneI.PlayerTownRagnar";                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        if(Parm_Class<Actor>_0 ~= "TrialPitRagnar")
                                                                        {
                                                                            return "RuneI.TrialPitRagnar";                                                                            
                                                                        }
                                                                        else
                                                                        {
                                                                            if(Parm_Class<Actor>_0 ~= "Ulf")
                                                                            {
                                                                                return "RuneI.PlayerUlf";                                                                                
                                                                            }
                                                                            else
                                                                            {
                                                                                if(Parm_Class<Actor>_0 ~= "Valkyrie")
                                                                                {
                                                                                    return "RuneI.PlayerValkyrie";                                                                                    
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(Parm_Class<Actor>_0 ~= "Wolfgar")
                                                                                    {
                                                                                        return "RuneI.PlayerWolfgar";                                                                                        
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(Parm_Class<Actor>_0 ~= "ValkyrieGold")
                                                                                        {
                                                                                            return "HallsOfValhalla.PlayerValkyrie";                                                                                            
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(Parm_Class<Actor>_0 ~= "Snake")
                                                                                            {
                                                                                                return "HallsOfValhalla.PlayerSnake";                                                                                                
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(Parm_Class<Actor>_0 ~= "Dwarf")
                                                                                                {
                                                                                                    return "HallsOfValhalla.PlayerDwarf";                                                                                                    
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(Parm_Class<Actor>_0 ~= "Pirate")
                                                                                                    {
                                                                                                        return "HallsOfValhalla.PlayerPirate";                                                                                                        
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(Parm_Class<Actor>_0 ~= "Mongol")
                                                                                                        {
                                                                                                            return "HallsOfValhalla.PlayerMongol";                                                                                                            
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(Parm_Class<Actor>_0 ~= "Syrian")
                                                                                                            {
                                                                                                                return "HallsOfValhalla.PlayerSyrian";                                                                                                                
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if(Parm_Class<Actor>_0 ~= "ValkyrieWren")
                                                                                                                {
                                                                                                                    return "HallsOfValhalla.PlayerValkyrieWren";                                                                                                                    
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if(Parm_Class<Actor>_0 ~= "Gladiator")
                                                                                                                    {
                                                                                                                        return "HallsOfValhalla.PlayerGladiator";                                                                                                                        
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if(Parm_Class<Actor>_0 ~= "Gladiator2")
                                                                                                                        {
                                                                                                                            return "HallsOfValhalla.PlayerGladiator2";                                                                                                                            
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            return Parm_Class<Actor>_0;
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
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
