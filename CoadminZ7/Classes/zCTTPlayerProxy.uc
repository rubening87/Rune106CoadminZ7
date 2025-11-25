class zCTTPlayerProxy extends RunePlayerProxy;

function bool WantsToPickUp(Inventory Parm_Inventory_0)
{
    if((((Parm_Inventory_0 != none) && Parm_Inventory_0.IsA('CTTorch')) && CTTorch(Parm_Inventory_0).Team == int(ZRunePlayer(Owner).PlayerReplicationInfo.Team)) || (Parm_Inventory_0 != none) && Parm_Inventory_0.GetStateName() != 'Pickup')
    {
        return false;        
    }
    else
    {
        return super.WantsToPickUp(Parm_Inventory_0);
    }
    return;
}

auto state Idle
{
    function bool CanPickup(Inventory Parm_Inventory_0)
    {
        local CTTorch Local_CTTorch_v0;
        local ZRunePlayer A;

        if((Parm_Inventory_0 != none) && Parm_Inventory_0.IsA('CTTorch'))
        {
            if(CTTorch(Parm_Inventory_0).Team != int(ZRunePlayer(Owner).PlayerReplicationInfo.Team))
            {
                return super.CanPickup(Parm_Inventory_0);                
            }
            else
            {
                if(((((((ZRunePlayer(Owner).Weapon != none) && ZRunePlayer(Owner).Inventory != none) && ZRunePlayer(Owner).GetNextWeapon(ZRunePlayer(Owner).Weapon) != none) && ZRunePlayer(Owner).Weapon.IsA('CTTorch')) && CTTorch(Parm_Inventory_0).bHome) && CTTorch(Parm_Inventory_0).Team == int(ZRunePlayer(Owner).PlayerReplicationInfo.Team)) && CTTorch(ZRunePlayer(Owner).Weapon).Team != int(ZRunePlayer(Owner).PlayerReplicationInfo.Team))
                {
                    Local_CTTorch_v0 = CTTorch(ZRunePlayer(Owner).Weapon);
                    BroadcastMessage(((ZRunePlayer(Owner).PlayerReplicationInfo.PlayerName @ "captured the") @ CTTorch(ZRunePlayer(Owner).Weapon).strTeamName) @ "team's torch!");
                    Local_CTTorch_v0.Game.ScoreCapture(Pawn(Owner), CTTorch(Parm_Inventory_0).strTeamName);
                    foreach AllActors(Class'coadminz7.ZRunePlayer', A)
                    {
                        if(Local_CTTorch_v0.Game.bGameEnded)
                        {
                            A.ClientPlaySound(Sound'OtherSnd.Instruments.gong03');
                            continue;
                        }
                        A.ClientPlaySound(Sound'WeaponsSnd.PowerUps.powerend19');                        
                    }                    
                    ZRunePlayer(Owner).PlayerReplicationInfo.Score += float(5);
                    if(int(Level.MinNetVersion) >= 106)
                    {
                        ZRunePlayer(Owner).GroundSpeed = ZRunePlayer(Owner).default.GroundSpeed;                        
                    }
                    else
                    {
                        ZRunePlayer(Owner).CombatSpeed = ZRunePlayer(Owner).default.CombatSpeed;
                    }
                    if(!Local_CTTorch_v0.Game.bGameEnded)
                    {
                        Local_CTTorch_v0.Game.AddFlag(Local_CTTorch_v0.Team);
                        ZRunePlayer(Owner).Weapon.Destroy();
                        ZRunePlayer(Owner).SetMovementMode();
                    }                    
                }
                else
                {
                    if(!CTTorch(Parm_Inventory_0).bHome && CTTorch(Parm_Inventory_0).Team == int(ZRunePlayer(Owner).PlayerReplicationInfo.Team))
                    {
                        Local_CTTorch_v0 = CTTorch(Parm_Inventory_0);
                        BroadcastMessage(((ZRunePlayer(Owner).PlayerReplicationInfo.PlayerName @ "returned the") @ Local_CTTorch_v0.strTeamName) @ "team's torch!");
                        foreach AllActors(Class'coadminz7.ZRunePlayer', A)
                        {
                            if(int(A.PlayerReplicationInfo.Team) == Local_CTTorch_v0.Team)
                            {
                                A.ClientPlaySound(Sound'RMenu.TopMouseOver');
                            }                            
                        }                        
                        ZRunePlayer(Owner).PlayerReplicationInfo.Score += float(2);
                        Local_CTTorch_v0.Game.AddFlag(Local_CTTorch_v0.Team);
                        Local_CTTorch_v0.Destroy();                        
                    }
                    else
                    {
                        if(CTTorch(Parm_Inventory_0).Team == int(ZRunePlayer(Owner).PlayerReplicationInfo.Team))
                        {
                            return false;
                        }
                    }
                }
            }            
        }
        else
        {
            return super.CanPickup(Parm_Inventory_0);
        }
        return;
    }
    stop;
}
