class zPlayerProxy extends RunePlayerProxy;

var bool retro;

simulated event FrameNotify(int Parm_int_0)
{
    local int Local_int_v0;

    if((Owner != none) && RunePlayer(Owner).Weapon != none)
    {
        Local_int_v0 = int(Owner.SkelMesh);
        RunePlayer(Owner).Weapon.FrameNotify(Parm_int_0);
    }
    return;
}

simulated function InventorySpecial1()
{
    local Actor A;

    if(RunePlayer(Owner).Weapon != none)
    {
        RunePlayer(Owner).Weapon.InventorySpecial1();        
    }
    else
    {
        A = Owner.ActorAttachedTo(Owner.JointNamed(RunePlayer(Owner).WeaponJoint));
        if(A != none)
        {
            if(A.IsA('Inventory'))
            {
                Inventory(A).InventorySpecial1();                
            }
            else
            {
                if(A.IsA('DiscardedHealth'))
                {
                    DiscardedHealth(A).InventorySpecial1();
                }
            }
        }
    }
    return;
}

simulated function InventorySpecial2()
{
    local Actor A;

    if(RunePlayer(Owner).Weapon != none)
    {
        RunePlayer(Owner).Weapon.InventorySpecial2();        
    }
    else
    {
        A = Owner.ActorAttachedTo(Owner.JointNamed(RunePlayer(Owner).WeaponJoint));
        if(A != none)
        {
            if(A.IsA('Inventory'))
            {
                Inventory(A).InventorySpecial2();                
            }
            else
            {
                if(A.IsA('DiscardedHealth'))
                {
                    DiscardedHealth(A).InventorySpecial2();                    
                }
                else
                {
                    if(A.IsA('yFragment'))
                    {
                        yFragment(A).InventorySpecial2();
                    }
                }
            }
        }
    }
    return;
}

function Inventory SpawnCopy(Pawn P0, Inventory Parm_Inventory_0)
{
    local Inventory Local_Inventory_v0;
    local Weapon NewWeapon;

    if(Level.Game.ShouldRespawn(Parm_Inventory_0))
    {
        Local_Inventory_v0 = Spawn(eq_vxv_710(Parm_Inventory_0.Class), P0,,, rot(0, 0, 0));
        if(Local_Inventory_v0 == none)
        {
            LogInternal(string(Name) @ "cannot be spawned in spawncopy");
        }
        Local_Inventory_v0.Tag = Parm_Inventory_0.Tag;
        Local_Inventory_v0.Event = Parm_Inventory_0.Event;
        if(!Parm_Inventory_0.IsA('Weapon') || !Weapon(Parm_Inventory_0).bWeaponStay)
        {
            Parm_Inventory_0.GotoState('Sleeping');
        }        
    }
    else
    {
        Local_Inventory_v0 = Parm_Inventory_0;
    }
    Local_Inventory_v0.bTossedOut = true;
    Local_Inventory_v0.RespawnTime = 0.0000000;
    Local_Inventory_v0.GiveTo(P0);
    Local_Inventory_v0.bHidden = false;
    if(Parm_Inventory_0.IsA('food'))
    {
        if(food(Local_Inventory_v0).JunkActor == Class'RuneI.EmptyStein')
        {
            food(Local_Inventory_v0).JunkActor = Class'coadminz7.yEmptyStein';
        }
        if(food(Local_Inventory_v0).JunkActor == Class'RuneI.Fruit_Core')
        {
            food(Local_Inventory_v0).JunkActor = Class'coadminz7.yFruit_Core';
        }
        if(food(Local_Inventory_v0).JunkActor == Class'RuneI.EatenLegBone')
        {
            food(Local_Inventory_v0).JunkActor = Class'coadminz7.yEatenLegBone';
        }
        if(food(Local_Inventory_v0).JunkActor == Class'RuneI.EatenLizard')
        {
            food(Local_Inventory_v0).JunkActor = Class'coadminz7.yEatenLizard';
        }
    }
    NewWeapon = Weapon(Local_Inventory_v0);
    if(Parm_Inventory_0.IsA('Weapon'))
    {
        return NewWeapon;        
    }
    else
    {
        return Local_Inventory_v0;
    }
    return;
}

function Class<Inventory> eq_vxv_710(Class<Inventory> Parm_Class<Weapon>_0)
{
    if(Parm_Class<Weapon>_0 == Class'RuneI.boneclub')
    {
        return Class'coadminz7.yBoneClub';        
    }
    else
    {
        if(Parm_Class<Weapon>_0 == Class'RuneI.DwarfBattleAxe')
        {
            return Class'coadminz7.yDwarfBattleAxe';            
        }
        else
        {
            if(Parm_Class<Weapon>_0 == Class'RuneI.DwarfBattleHammer')
            {
                return Class'coadminz7.yDwarfBattleHammer';                
            }
            else
            {
                if(Parm_Class<Weapon>_0 == Class'RuneI.DwarfBattleSword')
                {
                    return Class'coadminz7.yDwarfBattleSword';                    
                }
                else
                {
                    if(Parm_Class<Weapon>_0 == Class'RuneI.DwarfWorkHammer')
                    {
                        return Class'coadminz7.yDwarfWorkHammer';                        
                    }
                    else
                    {
                        if(Parm_Class<Weapon>_0 == Class'RuneI.DwarfWorkSword')
                        {
                            return Class'coadminz7.yDwarfWorkSword';                            
                        }
                        else
                        {
                            if(Parm_Class<Weapon>_0 == Class'RuneI.goblinaxe')
                            {
                                return Class'coadminz7.yGoblinAxe';                                
                            }
                            else
                            {
                                if(Parm_Class<Weapon>_0 == Class'RuneI.handaxe')
                                {
                                    return Class'coadminz7.yHandAxe';                                    
                                }
                                else
                                {
                                    if(Parm_Class<Weapon>_0 == Class'RuneI.romansword')
                                    {
                                        return Class'coadminz7.yRomanSword';                                        
                                    }
                                    else
                                    {
                                        if(Parm_Class<Weapon>_0 == Class'RuneI.sigurdaxe')
                                        {
                                            return Class'coadminz7.ySigurdAxe';                                            
                                        }
                                        else
                                        {
                                            if(Parm_Class<Weapon>_0 == Class'RuneI.TrialPitMace')
                                            {
                                                return Class'coadminz7.yTrialPitMace';                                                
                                            }
                                            else
                                            {
                                                if(Parm_Class<Weapon>_0 == Class'RuneI.VikingAxe')
                                                {
                                                    return Class'coadminz7.yVikingAxe';                                                    
                                                }
                                                else
                                                {
                                                    if(Parm_Class<Weapon>_0 == Class'RuneI.VikingBroadSword')
                                                    {
                                                        return Class'coadminz7.yVikingBroadSword';                                                        
                                                    }
                                                    else
                                                    {
                                                        if(Parm_Class<Weapon>_0 == Class'RuneI.VikingShortSword')
                                                        {
                                                            return Class'coadminz7.yVikingShortSword';                                                            
                                                        }
                                                        else
                                                        {
                                                            return Parm_Class<Weapon>_0;
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

function DoStow()
{
    local Vector Local_Vector_v0;
    local Inventory Local_Inventory_v0;

    if(int(DoStowType) == int(0))
    {
        return;        
    }
    else
    {
        if(int(DoStowType) == int(1))
        {
            if(RunePlayer(Owner).Weapon != none)
            {
                if(RunePlayer(Owner).Weapon.IsA('NonStow'))
                {
                    RunePlayer(Owner).PlaySound(RunePlayer(Owner).WeaponDropSound, 5, 1.0000000, false, 1200.0000000, (FRand() * 0.0800000) + 0.9600000);
                    RunePlayer(Owner).DropWeapon();                    
                }
                else
                {
                    RunePlayer(Owner).StowWeapon(none);
                }
            }            
        }
        else
        {
            if(int(DoStowType) == int(2))
            {
                RunePlayer(Owner).RetrieveWeapon(DoStowIndex);                
            }
            else
            {
                if((int(DoStowType) == int(3)) && PendingItem != none)
                {
                    if((PendingItem.IsA('Weapon') || PendingItem.IsA('Shield')) || PendingItem.IsA('Runes'))
                    {
                        if(zPlayerReplicationInfo(RunePlayer(Owner).PlayerReplicationInfo).B_v5380)
                        {
                            if((Pawn(Owner).Health > 0) && Pawn(Owner).CanPickup(PendingItem))
                            {
                                Local_Inventory_v0 = SpawnCopy(Pawn(Owner), PendingItem);
                                PendingItem = Local_Inventory_v0;
                                if(Local_Inventory_v0.PickupMessageClass == none)
                                {
                                    Pawn(Owner).ClientMessage(Local_Inventory_v0.PickupMessage, 'Pickup');                                    
                                }
                                else
                                {
                                    Pawn(Owner).ReceiveLocalizedMessage(Local_Inventory_v0.PickupMessageClass, 0, none, none, Local_Inventory_v0.Class);
                                }
                                Local_Inventory_v0.PlaySound(Local_Inventory_v0.PickupSound);
                                if(int(Level.Game.Difficulty) > 1)
                                {
                                    Owner.MakeNoise(0.1000000 * float(Level.Game.Difficulty));
                                }
                                Pawn(Owner).AcquireInventory(Local_Inventory_v0);
                                if(!Pawn(Owner).IsInState('PlayerSwimming'))
                                {
                                    Local_Inventory_v0.GotoState('Active');
                                }
                            }                            
                        }
                        else
                        {
                            PendingItem.Touch(RunePlayer(Owner));
                        }                        
                    }
                    else
                    {
                        if(PendingItem.IsA('food'))
                        {
                            Local_Inventory_v0 = SpawnCopy(RunePlayer(Owner), PendingItem);
                            PendingItem = Local_Inventory_v0;
                            RunePlayer(Owner).AttachActorToJoint(PendingItem, RunePlayer(Owner).JointNamed(RunePlayer(Owner).WeaponJoint));
                            PendingItem.SetOwner(RunePlayer(Owner));
                            PendingItem.PlaySound(food(PendingItem).UseSound);
                        }
                    }                    
                }
                else
                {
                    if(int(DoStowType) == int(4))
                    {
                        if(RunePlayer(Owner).Weapon != none)
                        {
                            RunePlayer(Owner).StowWeapon(none);
                            RunePlayer(Owner).SwapStowToNext(DoStowIndex);
                            RunePlayer(Owner).RetrieveWeapon(DoStowIndex);
                        }
                    }
                }
            }
        }
    }
    return;
}

function bool WantsToPickUp(Inventory Parm_Inventory_0)
{
    local Weapon Local_Weapon_v0, Next, Stow;

    if(Parm_Inventory_0.IsA('Weapon') && !Parm_Inventory_0.IsA('InvisibleWeapon'))
    {
        Local_Weapon_v0 = RunePlayer(Owner).Weapon;
        Next = Weapon(Parm_Inventory_0);
        if(RunePlayer(Owner).BodyPartMissing(3))
        {
            return false;
        }
        if(zPlayerReplicationInfo(RunePlayer(Owner).PlayerReplicationInfo).B_v5380)
        {
            if(RunePlayer(Owner).FindInventoryType(eq_vxv_710(Parm_Inventory_0.Class)) != none)
            {
                return false;
            }            
        }
        else
        {
            if((RunePlayer(Owner).FindInventoryType(Parm_Inventory_0.Class) != none) && !zPlayerReplicationInfo(RunePlayer(Owner).PlayerReplicationInfo).B_v5381)
            {
                return false;
            }
        }
        Stow = RunePlayer(Owner).GetStowedWeapon(GetStowIndex(Next));
        if((Stow != none) && !zPlayerReplicationInfo(RunePlayer(Owner).PlayerReplicationInfo).B_v5381)
        {
            if(Stow.IsA(Next.Class.Name))
            {
                return false;
            }
        }
        if(Local_Weapon_v0 == none)
        {
            return true;
        }
        if(Local_Weapon_v0.IsA(Next.Class.Name) && !zPlayerReplicationInfo(RunePlayer(Owner).PlayerReplicationInfo).B_v5381)
        {
            return false;
        }
        return true;        
    }
    else
    {
        if(Parm_Inventory_0.IsA('Shield'))
        {
            if(RunePlayer(Owner).BodyPartMissing(1))
            {
                return false;
            }
            if((RunePlayer(Owner).Weapon != none) && RunePlayer(Owner).Weapon.A_Defend == 'None')
            {
                return false;
            }
            if((RunePlayer(Owner).Shield != none) && RunePlayer(Owner).Shield.IsA('MagicShield'))
            {
                return false;
            }
            return (RunePlayer(Owner).Shield == none) || Shield(Parm_Inventory_0).Health > RunePlayer(Owner).Shield.Health;            
        }
        else
        {
            if(Parm_Inventory_0.IsA('Runes'))
            {
                return Runes(Parm_Inventory_0).PawnWantsRune(Pawn(Owner));                
            }
            else
            {
                if(Parm_Inventory_0.IsA('food'))
                {
                    if(((RunePlayer(Owner).Health < RunePlayer(Owner).MaxHealth) || RunePlayer(Owner).BodyPartMissing(1)) || RunePlayer(Owner).BodyPartMissing(3))
                    {
                        return true;
                    }
                }
            }
        }
    }
    return false;
    return;
}

function PostBeginPlay()
{
    super(AnimationProxy).PostBeginPlay();
    PendingSwitchWeapon = 0;
    return;
}

function Timer()
{
    return;
}

function eq_vxv_727()
{
    return;
}

state Switching
{
    function TryPlayAnim(name Local_name_v0, optional float eq_vxv_5591, optional float Parm_float_0)
    {
        return;
    }

    function TryLoopAnim(name Local_name_v0, optional float eq_vxv_5591, optional float Parm_float_0)
    {
        return;
    }

    function TryTweenAnim(name Local_name_v0, optional float Parm_float_0)
    {
        return;
    }

    function bool CanGotoPainState()
    {
        return false;
        return;
    }

    function bool CanPickup(Inventory Parm_Inventory_0)
    {
        return false;
        return;
    }
Begin:

    curWeapon = RunePlayer(Owner).Weapon;
    NewWeapon = RunePlayer(Owner).GetStowedWeapon(Index);
    NextWeapon = RunePlayer(Owner).GetNextWeapon(curWeapon);
    RunePlayer(Owner).LastHeldWeapon = none;
    if(((((curWeapon != none) && (GetStowIndex(curWeapon)) == Index) && NextWeapon != none) && NextWeapon != curWeapon) && NewWeapon != none)
    {
        DoStowType = 4;
        ProxyStowWeapon(Index);
        FinishAnim();
        RunePlayer(Owner).Weapon.GotoState('Active');
        goto 'Local_bool_v0';        
    }
    else
    {
        if(curWeapon != none)
        {
            if(Index >= 0)
            {
                if(NewWeapon == none)
                {
                    goto 'Local_bool_v0';
                }
            }
            DoStowType = 1;
            ProxyStowWeapon(GetStowIndex(curWeapon));
            FinishAnim();
        }
    }
    if(Index == -1)
    {
        RunePlayer(Owner).Weapon = none;
        goto 'Local_bool_v0';
    }
    if(NewWeapon != none)
    {
        DoStowType = 2;
        ProxyStowWeapon(Index);
        FinishAnim();
    }
    if(RunePlayer(Owner).Weapon != none)
    {
        RunePlayer(Owner).Weapon.GotoState('Active');
    }
    if(((RunePlayer(Owner).Weapon != none) && RunePlayer(Owner).Weapon.DrawScale == float(0)) && zPlayerReplicationInfo(RunePlayer(Owner).PlayerReplicationInfo).B_v5381)
    {
        RunePlayer(Owner).Weapon.DrawScale = 1.5000000;
        RunePlayer(Owner).Weapon.SetCollisionSize(RunePlayer(Owner).Weapon.default.CollisionRadius - float(10), RunePlayer(Owner).Weapon.default.CollisionHeight - float(5));
    }
Local_bool_v0:


    if((RunePlayer(Owner).Weapon != none) && RunePlayer(Owner).Weapon.A_Defend == 'None')
    {
        RunePlayer(Owner).DropShield();
    }
    if(Owner.Region.Zone.bWaterZone)
    {
        RunePlayer(Owner).InstantStow();
    }
    RunePlayer(Owner).SetMovementMode();
    SyncAnimation(0.3000000);
    GotoState('Idle');
    stop;        
}

state zNewProxyState1
{Begin:

    stop;            
}

auto state Idle
{
    function eq_vxv_727()
    {
        if(int(RunePlayer(Owner).Physics) == int(2))
        {
            TorsoAnim = 'H5_attackA';            
        }
        else
        {
            TorsoAnim = 'weapon1_attackD';
        }
        GotoState('Attacking');
        return;
    }

    function SwitchWeapon(byte Local_CTTorch_v1)
    {
        PendingSwitchWeapon = 0;
        if(int(Local_CTTorch_v1) <= 4)
        {
            Index = int(Local_CTTorch_v1) - 2;
            GotoState('Switching');
        }
        return;
    }

    function bool CanPickup(Inventory Parm_Inventory_0)
    {
        local Weapon Local_Weapon_v0, Next, Stow;

        if(!Level.Game.bAutoPickup && !Owner.IsInState('PlayerSwimming'))
        {
            return false;
        }
        if(Parm_Inventory_0.IsA('Weapon') && !Parm_Inventory_0.IsA('InvisibleWeapon'))
        {
            Local_Weapon_v0 = RunePlayer(Owner).Weapon;
            Next = Weapon(Parm_Inventory_0);
            Stow = RunePlayer(Owner).GetStowedWeapon(GetStowIndex(Next));
            if((RunePlayer(Owner).FindInventoryType(Parm_Inventory_0.Class) != none) && !zPlayerReplicationInfo(RunePlayer(Owner).PlayerReplicationInfo).B_v5381)
            {
                return false;
            }
            if(Owner.IsInState('PlayerSwimming') && Parm_Inventory_0.IsA('NonStow'))
            {
                return false;
            }
            if(Local_Weapon_v0 == none)
            {
                return true;                
            }
            else
            {
                if((Local_Weapon_v0 != none) && Parm_Inventory_0.IsA('NonStow'))
                {
                    return false;
                }
            }
            return true;            
        }
        else
        {
            if(Parm_Inventory_0.IsA('Shield'))
            {
                if((RunePlayer(Owner).Weapon != none) && RunePlayer(Owner).Weapon.A_Defend == 'None')
                {
                    return false;
                }
                if((RunePlayer(Owner).Shield != none) && RunePlayer(Owner).Shield.IsA('MagicShield'))
                {
                    return false;
                }
                return (RunePlayer(Owner).Shield == none) || Shield(Parm_Inventory_0).Health > RunePlayer(Owner).Shield.Health;                
            }
            else
            {
                if(Parm_Inventory_0.IsA('Runes'))
                {
                    return Runes(Parm_Inventory_0).PawnWantsRune(Pawn(Owner));                    
                }
                else
                {
                    if(Parm_Inventory_0.IsA('food'))
                    {
                        return RunePlayer(Owner).Health < RunePlayer(Owner).MaxHealth;
                    }
                }
            }
        }
        return false;
        return;
    }

    function bool Use()
    {
        GotoState('PickingUp');
        return true;
        return;
    }

    function bool Attack()
    {
        local float Local_float_v0;
        local Vector X, Y, Z;
        local bool Local_bool_v1;
        local int i;

        TorsoIntroAnim = 'None';
        TorsoLoop = 'None';
        if((RunePlayer(Owner).Weapon == none) || RunePlayer(Owner).Weapon.A_AttackA == 'None')
        {
            return false;
        }
        GetAxes(RunePlayer(Owner).Rotation, X, Y, Z);
        Local_float_v0 = Vector(RunePlayer(Owner).Rotation) Dot Normal(RunePlayer(Owner).Acceleration);
        if((Normal(RunePlayer(Owner).Acceleration) Dot Y) >= float(0))
        {
            Local_bool_v1 = true;            
        }
        else
        {
            Local_bool_v1 = false;
        }
        if(RunePlayer(Owner).bIsCrouching)
        {
            if((Local_float_v0 < 0.9000000) && Local_float_v0 > -0.9000000)
            {
                if(Local_bool_v1)
                {
                    TorsoAnim = RunePlayer(Owner).Weapon.A_AttackStrafeRight;                    
                }
                else
                {
                    TorsoAnim = RunePlayer(Owner).Weapon.A_AttackStrafeLeft;
                }                
            }
            else
            {
                TorsoAnim = RunePlayer(Owner).Weapon.A_AttackStrafeRight;
            }
            GotoState('Attacking');
            return true;
        }
        if(((RunePlayer(Owner).Velocity.X * RunePlayer(Owner).Velocity.X) + (RunePlayer(Owner).Velocity.Y * RunePlayer(Owner).Velocity.Y)) < float(1000))
        {
            TorsoAnim = RunePlayer(Owner).Weapon.A_AttackStandA;            
        }
        else
        {
            if(Local_float_v0 > 0.9000000)
            {
                if(!zPlayerReplicationInfo(RunePlayer(Owner).PlayerReplicationInfo).B_v5381)
                {
                    if(RunePlayer(Owner).AnimSequence == RunePlayer(Owner).Weapon.A_Jump)
                    {
                        TorsoAnim = RunePlayer(Owner).Weapon.A_JumpAttack;
                        GotoState('Attacking');
                        return true;                        
                    }
                    else
                    {
                        TorsoAnim = RunePlayer(Owner).Weapon.A_AttackA;
                    }                    
                }
                else
                {
                    if(RunePlayer(Owner).AnimSequence == RunePlayer(Owner).Weapon.A_Jump)
                    {
                        TorsoAnim = 'OneHandJumpAttackB';
                        GotoState('Attacking');
                        return true;                        
                    }
                    else
                    {
                        if(Local_float_v0 < -0.9000000)
                        {
                            TorsoAnim = RunePlayer(Owner).Weapon.A_AttackBackupA;                            
                        }
                        else
                        {
                            if(Local_bool_v1)
                            {
                                TorsoAnim = RunePlayer(Owner).Weapon.A_AttackStrafeRight;                                
                            }
                            else
                            {
                                TorsoAnim = RunePlayer(Owner).Weapon.A_AttackStrafeLeft;
                            }
                        }
                    }
                }                
            }
            else
            {
                if(Local_float_v0 < -0.9000000)
                {
                    TorsoAnim = RunePlayer(Owner).Weapon.A_AttackBackupA;                    
                }
                else
                {
                    if(Local_bool_v1)
                    {
                        TorsoAnim = RunePlayer(Owner).Weapon.A_AttackStrafeRight;                        
                    }
                    else
                    {
                        TorsoAnim = RunePlayer(Owner).Weapon.A_AttackStrafeLeft;
                    }
                }
            }
        }
        if((RunePlayer(Owner).bBloodLust && RunePlayer(Owner).LookTarget != none) && RunePlayer(Owner).LookTarget.IsA('Pawn'))
        {
            i = Rand(6);
            RunePlayer(Owner).PlaySound(RunePlayer(Owner).BerserkYellSound[i], 5, 1.0000000, false, 1200.0000000, (FRand() * 0.0800000) + 0.9600000);
        }
        GotoState('Attacking');
        return true;
        return;
    }

    function bool Defend()
    {
        if(RunePlayer(Owner).Shield != none)
        {
            GotoState('Defending');
            return true;            
        }
        else
        {
            return false;
        }
        return;
    }

    function bool Throw()
    {
        GotoState('Throwing');
        return true;
        return;
    }
Begin:

    if((int(RunePlayer(Owner).bAltFire) == 1) && RunePlayer(Owner).Shield != none)
    {
        GotoState('Defending');        
    }
    else
    {
        if(int(PendingSwitchWeapon) != 0)
        {
            SwitchWeapon(PendingSwitchWeapon);
        }
    }
    stop;    
}

state PickingUp
{
    function TryPlayAnim(name Local_name_v0, optional float eq_vxv_5591, optional float Parm_float_0)
    {
        return;
    }

    function TryLoopAnim(name Local_name_v0, optional float eq_vxv_5591, optional float Parm_float_0)
    {
        return;
    }

    function TryTweenAnim(name Local_name_v0, optional float Parm_float_0)
    {
        return;
    }

    function EndState()
    {
        return;
    }

    function bool CanGotoPainState()
    {
        return false;
        return;
    }

    function bool CanPickup(Inventory Parm_Inventory_0)
    {
        return Parm_Inventory_0 == PendingItem;
        return;
    }

    function FindPickupItem()
    {
        PendingItem = none;
        if(RunePlayer(Owner).UseActor.Owner != none)
        {
            return;
        }
        PendingItem = Inventory(RunePlayer(Owner).UseActor);
        return;
    }
Begin:

    FindPickupItem();
    RunePlayer(Owner).LastHeldWeapon = none;
    if((PendingItem != none) && (((int(Owner.Physics) == int(1)) || int(Owner.Physics) == int(3)) || zPlayerReplicationInfo(RunePlayer(Owner).PlayerReplicationInfo).retro) || Owner.GetStateName() == 'CheatFlying')
    {
        PendingItem.LifeSpan = 0.0000000;
        PendingItem.Style = default.Style;
        RunePlayer(Owner).UninterruptedAnim = 'None';
        if(Owner.GetStateName() != 'CheatFlying')
        {
            RunePlayer(Owner).GotoState('Uninterrupted');
        }
        if(PendingItem.IsA('food'))
        {
            RunePlayer(Owner).LastHeldWeapon = RunePlayer(Owner).Weapon;
        }
        if(((RunePlayer(Owner).Weapon != none) && !PendingItem.IsA('Shield')) && !PendingItem.IsA('Runes'))
        {
            if(RunePlayer(Owner).Weapon.IsA('NonStow'))
            {
                RunePlayer(Owner).LastHeldWeapon = none;
            }
            DoStowType = 1;
            ProxyStowWeapon(GetStowIndex(RunePlayer(Owner).Weapon));
            FinishAnim();
        }
        DoStowType = 3;
        RunePlayer(Owner).PlaySound(RunePlayer(Owner).WeaponPickupSound, 5, 1.0000000, false, 1200.0000000, (FRand() * 0.0800000) + 0.9600000);
        ProxyPickup();
        FinishAnim();
        ProxyDonePickup();
        PendingItem = none;
        if(Owner.GetStateName() != 'CheatFlying')
        {
            RunePlayer(Owner).GotoState('PlayerWalking');
        }
    }
    RunePlayer(Owner).SetMovementMode();
    if(RunePlayer(Owner).LastHeldWeapon == none)
    {
        SyncAnimation(0.4000000);
        GotoState('Idle');        
    }
    else
    {
        RetrieveLastHeldWeapon();
    }
    stop;    
}

state Attacking
{
    function TryPlayAnim(name Local_name_v0, optional float eq_vxv_5591, optional float Parm_float_0)
    {
        return;
    }

    function TryLoopAnim(name Local_name_v0, optional float eq_vxv_5591, optional float Parm_float_0)
    {
        return;
    }

    function TryTweenAnim(name Local_name_v0, optional float Parm_float_0)
    {
        return;
    }

    function bool CanPickup(Inventory Parm_Inventory_0)
    {
        return false;
        return;
    }

    function BeginState()
    {
        SwipeEffectStart();
        return;
    }

    function EndState()
    {
        WeaponDeactivate();
        SwipeEffectEnd();
        return;
    }

    function StopAttack()
    {
        WeaponDeactivate();
        SyncAnimation(0.3000000);
        SwipeEffectEnd();
        GotoState('Idle');
        return;
    }

    function bool Attack()
    {
        if(RunePlayer(Owner).bIsCrouching)
        {
            return false;
        }
        if(RunePlayer(Owner).Weapon == none)
        {
            return false;
        }
        if((AnimSequence == RunePlayer(Owner).Weapon.A_AttackStandA) && RunePlayer(Owner).Weapon.A_AttackStandB != 'None')
        {
            TorsoAnim = RunePlayer(Owner).Weapon.A_AttackStandB;            
        }
        else
        {
            if((AnimSequence == RunePlayer(Owner).Weapon.A_AttackA) && RunePlayer(Owner).Weapon.A_AttackB != 'None')
            {
                TorsoAnim = RunePlayer(Owner).Weapon.A_AttackB;                
            }
            else
            {
                if((AnimSequence == RunePlayer(Owner).Weapon.A_AttackB) && RunePlayer(Owner).Weapon.A_AttackC != 'None')
                {
                    TorsoAnim = RunePlayer(Owner).Weapon.A_AttackC;                    
                }
                else
                {
                    if((AnimSequence == RunePlayer(Owner).Weapon.A_AttackC) && RunePlayer(Owner).Weapon.A_AttackD != 'None')
                    {
                        TorsoAnim = RunePlayer(Owner).Weapon.A_AttackD;                        
                    }
                    else
                    {
                        if((AnimSequence == RunePlayer(Owner).Weapon.A_AttackBackupA) && RunePlayer(Owner).Weapon.A_AttackBackupB != 'None')
                        {
                            TorsoAnim = RunePlayer(Owner).Weapon.A_AttackBackupB;
                        }
                    }
                }
            }
        }
        return true;
        return;
    }

    function bool Defend()
    {
        return true;
        return;
    }

    function PlayAttack(float Parm_float_0)
    {
        if(zPlayerReplicationInfo(RunePlayer(Owner).PlayerReplicationInfo).B_v5381)
        {
            PlayAnim(TorsoAnim, 0.6000000, Parm_float_0);            
        }
        else
        {
            PlayAnim(TorsoAnim, 1.0000000, Parm_float_0);
        }
        if(zPlayerReplicationInfo(RunePlayer(Owner).PlayerReplicationInfo).B_v5381)
        {
            RunePlayer(Owner).TryPlayTorsoAnim(TorsoAnim, 0.6000000, Parm_float_0);            
        }
        else
        {
            RunePlayer(Owner).TryPlayTorsoAnim(TorsoAnim, 1.0000000, Parm_float_0);
        }
        return;
    }
doattack:

    if(RunePlayer(Owner).Weapon != none)
    {
        if(zPlayerReplicationInfo(RunePlayer(Owner).PlayerReplicationInfo).retro || zPlayerReplicationInfo(RunePlayer(Owner).PlayerReplicationInfo).B_v5381)
        {
            if(TorsoAnim != RunePlayer(Owner).Weapon.A_JumpAttack)
            {
                RunePlayer(Owner).SpeedScale = 2;
            }
        }
        if(zPlayerReplicationInfo(RunePlayer(Owner).PlayerReplicationInfo).B_v5381)
        {
            PlayAttack(0.0100000);
            Sleep(0.1000000);
            WeaponActivate();
            TorsoAnim = 'None';
            FinishAnim();
            WeaponDeactivate();
            RunePlayer(Owner).SetMovementMode();            
        }
        else
        {
            PlayAttack(0.1000000);
            Sleep(0.1000000);
            WeaponActivate();
            TorsoAnim = 'None';
            FinishAnim();
            WeaponDeactivate();
            if(TorsoAnim != 'None')
            {
                PlayAttack(0.0000000);
                TorsoAnim = 'None';
                FinishAnim();
                WeaponDeactivate();
                if(TorsoAnim != 'None')
                {
                    PlayAttack(0.0000000);
                    TorsoAnim = 'None';
                    FinishAnim();
                    WeaponDeactivate();
                    if(TorsoAnim != 'None')
                    {
                        PlayAttack(0.0000000);
                        TorsoAnim = 'None';
                        FinishAnim();
                        WeaponDeactivate();
                        if(RunePlayer(Owner).Weapon.A_AttackDReturn != 'None')
                        {
                            TorsoAnim = RunePlayer(Owner).Weapon.A_AttackDReturn;
                            PlayAttack(0.0000000);
                            TorsoAnim = 'None';
                            FinishAnim();
                        }                        
                    }
                    else
                    {
                        if(RunePlayer(Owner).Weapon.A_AttackCReturn != 'None')
                        {
                            TorsoAnim = RunePlayer(Owner).Weapon.A_AttackCReturn;
                            PlayAttack(0.0000000);
                            TorsoAnim = 'None';
                            FinishAnim();
                        }
                    }                    
                }
                else
                {
                    if((AnimSequence == RunePlayer(Owner).Weapon.A_AttackB) && RunePlayer(Owner).Weapon.A_AttackBReturn != 'None')
                    {
                        TorsoAnim = RunePlayer(Owner).Weapon.A_AttackBReturn;
                        PlayAttack(0.0000000);
                        TorsoAnim = 'None';
                        FinishAnim();                        
                    }
                    else
                    {
                        if((AnimSequence == RunePlayer(Owner).Weapon.A_AttackBackupB) && RunePlayer(Owner).Weapon.A_AttackBackupBReturn != 'None')
                        {
                            TorsoAnim = RunePlayer(Owner).Weapon.A_AttackBackupBReturn;
                            PlayAttack(0.0000000);
                            TorsoAnim = 'None';
                            FinishAnim();                            
                        }
                        else
                        {
                            if((AnimSequence == RunePlayer(Owner).Weapon.A_AttackStandB) && RunePlayer(Owner).Weapon.A_AttackStandBReturn != 'None')
                            {
                                TorsoAnim = RunePlayer(Owner).Weapon.A_AttackStandBReturn;
                                PlayAttack(0.0000000);
                                TorsoAnim = 'None';
                                FinishAnim();
                            }
                        }
                    }
                }                
            }
            else
            {
                if((AnimSequence == RunePlayer(Owner).Weapon.A_AttackA) && RunePlayer(Owner).Weapon.A_AttackAReturn != 'None')
                {
                    TorsoAnim = RunePlayer(Owner).Weapon.A_AttackAReturn;
                    PlayAttack(0.0000000);
                    TorsoAnim = 'None';
                    FinishAnim();                    
                }
                else
                {
                    5
                    if((AnimSequence == RunePlayer(Owner).Weapon.A_AttackBackupA) && RunePlayer(Owner).Weapon.A_AttackBackupAReturn != 'None')
                    {
                        TorsoAnim = RunePlayer(Owner).Weapon.A_AttackBackupAReturn;
                        PlayAttack(0.0000000);
                        TorsoAnim = 'None';
                        FinishAnim();                        
                    }
                    else
                    {
                        if((AnimSequence == RunePlayer(Owner).Weapon.A_AttackStandA) && RunePlayer(Owner).Weapon.A_AttackStandAReturn != 'None')
                        {
                            TorsoAnim = RunePlayer(Owner).Weapon.A_AttackStandAReturn;
                            PlayAttack(0.0000000);
                            TorsoAnim = 'None';
                            FinishAnim();
                        }
                    }
                }
            }
            WeaponDeactivate();
            RunePlayer(Owner).SetMovementMode();
        }
    }
    J0x5E8:

    SyncAnimation(0.0100000);
    GotoState('Idle');
    stop;    
}

defaultproperties
{
    NetPriority=1.0000000
}