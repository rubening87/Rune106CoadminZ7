class FeedComponent extends Info;

var bool B_v5664;
var bool B_v5665;

function HasCommandPermission6(Pawn P0, Pawn Parm_Pawn_1, name DamageType, optional bool eqpow2_vxv_5667, optional bool eqpow2_vxv_5668)
{
    local Pawn LocalP0;
    local bool Local_bool_v0;
    local Weapon Local_Weapon_v0;

    if(eqpow2_vxv_5667)
    {
        B_v5664 = true;
    }
    if(eqpow2_vxv_5668)
    {
        B_v5665 = true;
    }
    if(Level.Title == "Requiem")
    {
        if((P0 == none) && ZRunePlayer(Parm_Pawn_1) != none)
        {
            if((ZRunePlayer(Parm_Pawn_1).UNK_v4507 != none) && ZRunePlayer(Parm_Pawn_1).Wpn_v4508 != none)
            {
                P0 = ZRunePlayer(Parm_Pawn_1).UNK_v4507;
                if(ZRunePlayer(Parm_Pawn_1).B_v4509)
                {
                    DamageType = 'ThrownWeaponBlunt';
                }
                Local_bool_v0 = true;
            }
        }
    }
    if((Parm_Pawn_1 == none) && Parm_Pawn_1.PlayerReplicationInfo == none)
    {
        return;
    }
    if(Parm_Pawn_1.PlayerReplicationInfo.PlayerName == "")
    {
        return;
    }
    if(!Parm_Pawn_1.IsA('RunePlayer'))
    {
        return;
    }
    if((P0 != none) && P0 != Parm_Pawn_1)
    {
        if(Local_bool_v0)
        {
            Local_Weapon_v0 = ZRunePlayer(Parm_Pawn_1).Wpn_v4508;            
        }
        else
        {
            Local_Weapon_v0 = zPlayerReplicationInfo(P0.PlayerReplicationInfo).Wpn_v5371;
        }
        if(((DamageType == 'Jump') && ZRunePlayer(Parm_Pawn_1) != none) && ZRunePlayer(P0) != none)
        {
            eq_vxv_261(P0.PlayerReplicationInfo.PlayerName, Parm_Pawn_1.PlayerReplicationInfo.PlayerName, P0.PlayerReplicationInfo.Team, Parm_Pawn_1.PlayerReplicationInfo.Team, byte(P0.Spree), PlayerPawn(Parm_Pawn_1).bIsTyping, false, true, false, none);
            return;
        }
        if(((DamageType == 'ThrownWeaponBlunt') || DamageType == 'thrownweaponsever') || DamageType == 'thrownweaponbluntsever')
        {
            LogInternal((("throwkill: " $ P0.PlayerReplicationInfo.PlayerName) $ " -> ") $ Parm_Pawn_1.PlayerReplicationInfo.PlayerName);
            eq_vxv_261(P0.PlayerReplicationInfo.PlayerName, Parm_Pawn_1.PlayerReplicationInfo.PlayerName, P0.PlayerReplicationInfo.Team, Parm_Pawn_1.PlayerReplicationInfo.Team, byte(P0.Spree), PlayerPawn(Parm_Pawn_1).bIsTyping, false, false, true, Local_Weapon_v0);
            return;            
        }
        else
        {
            if((((P0 != none) && Parm_Pawn_1.PlayerReplicationInfo.PlayerName != "") && DamageType == 'decapitated') && P0.Weapon == none)
            {
                LogInternal((("throwkill +headshot?: " $ P0.PlayerReplicationInfo.PlayerName) $ " -> ") $ Parm_Pawn_1.PlayerReplicationInfo.PlayerName);
                eq_vxv_261(P0.PlayerReplicationInfo.PlayerName, Parm_Pawn_1.PlayerReplicationInfo.PlayerName, P0.PlayerReplicationInfo.Team, Parm_Pawn_1.PlayerReplicationInfo.Team, byte(P0.Spree), PlayerPawn(Parm_Pawn_1).bIsTyping, true, false, true, Local_Weapon_v0);
                return;                
            }
            else
            {
                if((((P0 != none) && Parm_Pawn_1.PlayerReplicationInfo.PlayerName != "") && DamageType == 'decapitated') && P0.Weapon != none)
                {
                    LogInternal((("headshot?: " $ P0.PlayerReplicationInfo.PlayerName) $ " -> ") $ Parm_Pawn_1.PlayerReplicationInfo.PlayerName);
                    eq_vxv_261(P0.PlayerReplicationInfo.PlayerName, Parm_Pawn_1.PlayerReplicationInfo.PlayerName, P0.PlayerReplicationInfo.Team, Parm_Pawn_1.PlayerReplicationInfo.Team, byte(P0.Spree), PlayerPawn(Parm_Pawn_1).bIsTyping, true, false, false, P0.Weapon);
                    return;                    
                }
                else
                {
                    if((P0 != none) && Parm_Pawn_1.PlayerReplicationInfo.PlayerName != "")
                    {
                        LogInternal((("other kill: " $ P0.PlayerReplicationInfo.PlayerName) $ " -> ") $ Parm_Pawn_1.PlayerReplicationInfo.PlayerName);
                        eq_vxv_261(P0.PlayerReplicationInfo.PlayerName, Parm_Pawn_1.PlayerReplicationInfo.PlayerName, P0.PlayerReplicationInfo.Team, Parm_Pawn_1.PlayerReplicationInfo.Team, byte(P0.Spree), PlayerPawn(Parm_Pawn_1).bIsTyping, false, false, false, P0.Weapon);
                        return;
                    }
                }
            }
        }
    }
    if((P0 == none) && Parm_Pawn_1 != none)
    {
        eq_vxv_261("", Parm_Pawn_1.PlayerReplicationInfo.PlayerName, 0, Parm_Pawn_1.PlayerReplicationInfo.Team, 0, false, false, false, false, none);
    }
    return;
}

function eq_vxv_261(string P0, string Killed, byte Parm_byte_0, byte Parm_byte_1, byte Spree, bool Parm_bool_0, bool Parm_bool_1, bool Parm_bool_2, bool Parm_bool_3, Weapon Parm_Weapon_0)
{
    local Pawn LocalP0;
    local int Local_int_v0;

    if(Parm_bool_2)
    {
        Local_int_v0 = 18;        
    }
    else
    {
        if(P0 == "")
        {
            Local_int_v0 = 19;            
        }
        else
        {
            Local_int_v0 = eq_vxv_619(Parm_Weapon_0);
        }
    }
    if(B_v5664)
    {
        Spree = 0;
    }
    LocalP0 = Level.PawnList;
    J0x61:

    if(LocalP0 != none)
    {
        if(ZRunePlayer(LocalP0) != none)
        {
            ZRunePlayer(LocalP0).AddKillFeedEntry(P0, Killed, Parm_byte_0, Parm_byte_1, Spree, Parm_bool_0, Parm_bool_1, Parm_bool_2, Parm_bool_3, Local_int_v0);
        }
        LocalP0 = LocalP0.nextPawn;
        // [Loop Continue]
        goto J0x61;
    }
    return;
}

function int eq_vxv_619(Weapon Parm_Weapon_0)
{
    if(Parm_Weapon_0.IsA('VikingShortSword'))
    {
        return 0;        
    }
    else
    {
        if(Parm_Weapon_0.IsA('romansword'))
        {
            return 1;            
        }
        else
        {
            if(Parm_Weapon_0.IsA('VikingBroadSword'))
            {
                return 2;                
            }
            else
            {
                if(Parm_Weapon_0.IsA('DwarfWorkSword'))
                {
                    return 3;                    
                }
                else
                {
                    if(Parm_Weapon_0.IsA('DwarfBattleSword'))
                    {
                        return 4;                        
                    }
                    else
                    {
                        if(Parm_Weapon_0.IsA('handaxe'))
                        {
                            return 5;                            
                        }
                        else
                        {
                            if(Parm_Weapon_0.IsA('goblinaxe'))
                            {
                                return 6;                                
                            }
                            else
                            {
                                if(Parm_Weapon_0.IsA('VikingAxe'))
                                {
                                    return 7;                                    
                                }
                                else
                                {
                                    if(Parm_Weapon_0.IsA('sigurdaxe'))
                                    {
                                        return 8;                                        
                                    }
                                    else
                                    {
                                        if(Parm_Weapon_0.IsA('DwarfBattleAxe'))
                                        {
                                            return 9;                                            
                                        }
                                        else
                                        {
                                            if(Parm_Weapon_0.IsA('RustyMace'))
                                            {
                                                return 10;                                                
                                            }
                                            else
                                            {
                                                if(Parm_Weapon_0.IsA('boneclub'))
                                                {
                                                    return 11;                                                    
                                                }
                                                else
                                                {
                                                    if(Parm_Weapon_0.IsA('TrialPitMace'))
                                                    {
                                                        return 12;                                                        
                                                    }
                                                    else
                                                    {
                                                        if(Parm_Weapon_0.IsA('DwarfWorkHammer'))
                                                        {
                                                            return 13;                                                            
                                                        }
                                                        else
                                                        {
                                                            if(Parm_Weapon_0.IsA('DwarfBattleHammer'))
                                                            {
                                                                return 14;                                                                
                                                            }
                                                            else
                                                            {
                                                                if(Parm_Weapon_0.IsA('Torch'))
                                                                {
                                                                    return 15;                                                                    
                                                                }
                                                                else
                                                                {
                                                                    if(Parm_Weapon_0.IsA('Head'))
                                                                    {
                                                                        return 16;                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        if(Parm_Weapon_0.IsA('LimbWeapon'))
                                                                        {
                                                                            return 17;                                                                            
                                                                        }
                                                                        else
                                                                        {
                                                                            return 50;
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
