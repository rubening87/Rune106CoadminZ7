class TCCPawnSpawnNotify extends SpawnNotify;

var zStorage G_ZStrg1;

simulated event Actor SpawnNotification(Actor A)
{
    local ZRunePlayer Local_ZRunePlayer_v0;
    local Class<ZRunePlayer> Local_Class<ZRunePlayer>_v0;

    if(int(Level.NetMode) == int(NM_Client))
    {
        return A;
    }
    if(G_ZStrg1 != none)
    {
        if(A.IsA('DwarfWorkSword') && G_ZStrg1.retro)
        {
            Weapon(A).Damage = 30;
        }
        if(A.IsA('goblinaxe') && G_ZStrg1.retro)
        {
            Weapon(A).Damage = 20;
        }
    }
    if(A.IsA('RunePlayer') && !A.IsA('ZRunePlayer'))
    {
        A.bHidden = true;
        Pawn(A).bIsPlayer = false;
        A.SetCollision(false, false, false);
        Local_Class<ZRunePlayer>_v0 = Class'coadminz7.ZRunePlayer';
        Local_Class<ZRunePlayer>_v0.default.PlayerReplicationInfoClass = Class'coadminz7.zPlayerReplicationInfo';
        if(A.Owner != none)
        {
            Local_ZRunePlayer_v0 = Spawn(Local_Class<ZRunePlayer>_v0, A.Owner, A.Tag, A.Location, A.Rotation);            
        }
        else
        {
            Local_ZRunePlayer_v0 = Spawn(Local_Class<ZRunePlayer>_v0,, A.Tag, A.Location, A.Rotation);
        }
        Local_ZRunePlayer_v0.MenuName = eqpct_vxv_1178(A.Class);
        Local_ZRunePlayer_v0.CopyPlayerAppearance(A);
        Local_ZRunePlayer_v0.default.PlayerReplicationInfoClass = Class'coadminz7.zPlayerReplicationInfo';
        Local_ZRunePlayer_v0.MeshName = string(A.SubstituteMesh);
        A.Destroy();
        if((G_ZStrg1 != none) && G_ZStrg1.retro)
        {
            Local_ZRunePlayer_v0.bHiddenEd = true;
        }
        return Local_ZRunePlayer_v0;        
    }
    else
    {
        if((G_ZStrg1 != none) && G_ZStrg1.retro)
        {
            A.bHiddenEd = true;
        }
        return A;
    }
    return;
}

function string eqpct_vxv_1178(Class<Actor> Parm_Class<Actor>_0)
{
    local Class Parm_Class<PlayerPawn>_0;

    if(Parm_Class<Actor>_0 != Class'Engine.Spectator')
    {
        if(Parm_Class<Actor>_0 == Class'RuneI.Ragnar')
        {
            return "Ragnar";            
        }
        else
        {
            
            if(Parm_Class<Actor>_0 == Class'RuneI.PlayerAlric')
            {
                return "Alric";                
            }
            else
            {
                if(Parm_Class<Actor>_0 == Class'RuneI.PlayerBerserker')
                {
                    return "Berserker";                    
                }
                else
                {
                    if(Parm_Class<Actor>_0 == Class'RuneI.PlayerConrack')
                    {
                        return "Conrack";                        
                    }
                    else
                    {
                        if(Parm_Class<Actor>_0 == Class'RuneI.PlayerDarkViking')
                        {
                            return "DarkViking";                            
                        }
                        else
                        {
                            if(Parm_Class<Actor>_0 == Class'coadminz7.PlayerDarkVikingSnow')
                            {
                                return "DarkVikingSnow";                                
                            }
                            else
                            {
                                if(Parm_Class<Actor>_0 == Class'coadminz7.theplayerkarl')
                                {
                                    return "AlricKarl";                                    
                                }
                                else
                                {
                                    if(Parm_Class<Actor>_0 == Class'RuneI.PlayerDarkWarrior')
                                    {
                                        return "DarkWarrior";                                        
                                    }
                                    else
                                    {
                                        if(Parm_Class<Actor>_0 == Class'RuneI.PlayerElder')
                                        {
                                            return "Elder";                                            
                                        }
                                        else
                                        {
                                            if(Parm_Class<Actor>_0 == Class'coadminz7.PlayerElder2')
                                            {
                                                return "Elder2";                                                
                                            }
                                            else
                                            {
                                                if(Parm_Class<Actor>_0 == Class'RuneI.PlayerKarl')
                                                {
                                                    return "Karl";                                                    
                                                }
                                                else
                                                {
                                                    if(Parm_Class<Actor>_0 == Class'RuneI.PlayerLokiGuard')
                                                    {
                                                        return "LokiGuard";                                                        
                                                    }
                                                    else
                                                    {
                                                        if(Parm_Class<Actor>_0 == Class'RuneI.RagnarSnow')
                                                        {
                                                            return "SnowRagnar";                                                            
                                                        }
                                                        else
                                                        {
                                                            if(Parm_Class<Actor>_0 == Class'RuneI.PlayerShipWreckRagnar')
                                                            {
                                                                return "ShipWreckRagnar";                                                                
                                                            }
                                                            else
                                                            {
                                                                if(Parm_Class<Actor>_0 == Class'RuneI.PlayerSigurd')
                                                                {
                                                                    return "Sigurd";                                                                    
                                                                }
                                                                else
                                                                {
                                                                    if(Parm_Class<Actor>_0 == Class'RuneI.PlayerSven')
                                                                    {
                                                                        return "Sven";                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        if(Parm_Class<Actor>_0 == Class'RuneI.PlayerTownRagnar')
                                                                        {
                                                                            return "TownRagnar";                                                                            
                                                                        }
                                                                        else
                                                                        {
                                                                            if(Parm_Class<Actor>_0 == Class'RuneI.TrialPitRagnar')
                                                                            {
                                                                                return "TrialPitRagnar";                                                                                
                                                                            }
                                                                            else
                                                                            {
                                                                                if(Parm_Class<Actor>_0 == Class'RuneI.PlayerUlf')
                                                                                {
                                                                                    return "Ulf";                                                                                    
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(Parm_Class<Actor>_0 == Class'RuneI.PlayerValkyrie')
                                                                                    {
                                                                                        return "Valkyrie";                                                                                        
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(Parm_Class<Actor>_0 == Class'RuneI.PlayerWolfgar')
                                                                                        {
                                                                                            return "Wolfgar";                                                                                            
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(Parm_Class<Actor>_0 == Class'RuneI.PlayerZombie')
                                                                                            {
                                                                                                return "Zombie";                                                                                                
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(Parm_Class<Actor>_0 == Class'RuneI.PlayerZombie2')
                                                                                                {
                                                                                                    return "Zombie2";                                                                                                    
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(Parm_Class<Actor>_0 == Class'HallsOfValhalla.PlayerValkyrie')
                                                                                                    {
                                                                                                        return "HOVValkyrie";                                                                                                        
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(Parm_Class<Actor>_0 == Class'HallsOfValhalla.PlayerSnake')
                                                                                                        {
                                                                                                            return "HOVSnake";                                                                                                            
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(Parm_Class<Actor>_0 == Class'HallsOfValhalla.PlayerDwarf')
                                                                                                            {
                                                                                                                return "HOVDwarf";                                                                                                                
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if(Parm_Class<Actor>_0 == Class'HallsOfValhalla.PlayerPirate')
                                                                                                                {
                                                                                                                    return "HOVPirate";                                                                                                                    
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if(Parm_Class<Actor>_0 == Class'HallsOfValhalla.PlayerMongol')
                                                                                                                    {
                                                                                                                        return "HOVMongol";                                                                                                                        
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if(Parm_Class<Actor>_0 == Class'HallsOfValhalla.PlayerSyrian')
                                                                                                                        {
                                                                                                                            return "HOVSyrian";                                                                                                                            
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            if(Parm_Class<Actor>_0 == Class'HallsOfValhalla.PlayerValkyrieWren')
                                                                                                                            {
                                                                                                                                return "HOVValkyrieWren";                                                                                                                                
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                if(Parm_Class<Actor>_0 == Class'HallsOfValhalla.PlayerGladiator')
                                                                                                                                {
                                                                                                                                    return "HOVGladiator";                                                                                                                                    
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    if(Parm_Class<Actor>_0 == Class'HallsOfValhalla.PlayerGladiator2')
                                                                                                                                    {
                                                                                                                                        return "HOVGladiator2";                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        return GetItemName(string(Parm_Class<Actor>_0));
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
            }
        }        
    }
    else
    {
        return "TCCSpectator";
    }
    return;
}

defaultproperties
{
    ActorClass=Class'RuneI.RunePlayer'
}