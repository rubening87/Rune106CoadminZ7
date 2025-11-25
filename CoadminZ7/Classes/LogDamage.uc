class LogDamage extends Mutator;

var bool bInitialized;

function PreBeginPlay()
{
    local Mutator Parm_Mutator_0, Local_Mutator_v0;

    if(!bInitialized)
    {
        bInitialized = true;
        Parm_Mutator_0 = Level.Game.BaseMutator;
        J0x30:

        if(Parm_Mutator_0 != none)
        {
            if((GetItemName(string(Parm_Mutator_0.Class))) == (GetItemName(string(self.Class))))
            {
                Local_Mutator_v0.NextMutator = Parm_Mutator_0.NextMutator;
                if(Parm_Mutator_0 != self)
                {
                    RemoveDamageMutator(Parm_Mutator_0);
                    Parm_Mutator_0.Destroy();
                }                
            }
            else
            {
                Local_Mutator_v0 = Parm_Mutator_0;
            }
            Parm_Mutator_0 = Parm_Mutator_0.NextMutator;
            // [Loop Continue]
            goto J0x30;
        }
        self.NextMutator = Level.Game.BaseMutator.NextMutator;
        Level.Game.BaseMutator.NextMutator = self;
        Level.Game.RegisterDamageMutator(self);
    }
    return;
}

function RemoveDamageMutator(Mutator Parm_Mutator_0)
{
    local bool Local_bool_v0;
    local Mutator Local_Mutator_v0, Local_Mutator_v0;

    Local_Mutator_v0 = Level.Game.DamageMutator;
    J0x1D:

    if(Local_Mutator_v0 != none)
    {
        if(Local_Mutator_v0 == Parm_Mutator_0)
        {
            // [Explicit Break]
            goto J0x64;
        }
        Local_bool_v0 = true;
        Local_Mutator_v0 = Local_Mutator_v0;
        Local_Mutator_v0 = Local_Mutator_v0.NextDamageMutator;
        // [Loop Continue]
        goto J0x1D;
    }
    J0x64:

    if(Local_bool_v0)
    {
        Local_Mutator_v0.NextDamageMutator = Local_Mutator_v0.NextDamageMutator;        
    }
    else
    {
        Level.Game.DamageMutator = Level.Game.DamageMutator.NextDamageMutator;
    }
    return;
}

function AddMutator(Mutator Parm_Mutator_0)
{
    if(Parm_Mutator_0 == self)
    {
        return;
    }
    super.AddMutator(Parm_Mutator_0);
    return;
}

function MutatorJointDamaged(out int eq_vxv_4379, Pawn Parm_Actor_0, Pawn Parm_Pawn_1, out Vector Parm_Vector_0, out Vector Momentum, name DamageType, out int Parm_int_0)
{
    if(((((Parm_Actor_0 != none) && RunePlayer(Parm_Actor_0) != none) && Parm_Pawn_1 != none) && RunePlayer(Parm_Pawn_1) != none) && Parm_Actor_0 != Parm_Pawn_1)
    {
        eqhash_vxv_1112(eq_vxv_4379, Parm_Actor_0, Parm_Pawn_1, Parm_Vector_0, Momentum, DamageType, Parm_int_0);
    }
    super.MutatorJointDamaged(eq_vxv_4379, Parm_Actor_0, Parm_Pawn_1, Parm_Vector_0, Momentum, DamageType, Parm_int_0);
    return;
}

function bool eqhash_vxv_1112(int Damage, Pawn Parm_Actor_0, Pawn P0, Vector Parm_Vector_0, Vector Momentum, name DamageType, int Parm_int_0)
{
    local int Local_int_v0, Local_int_v1, Local_int_v2, Local_int_v3, Local_int_v4, Local_int_v5,
	    Parm_int_0;

    Parm_int_0 = RunePlayer(Parm_Actor_0).BodyPartForJoint(Parm_int_0);
    RunePlayer(Parm_Actor_0).GetDamageValues(Damage, DamageType, Local_int_v2, Local_int_v1);
    Level.Game.ReduceDamage(Local_int_v2, Local_int_v1, DamageType, Parm_Actor_0, P0);
    Local_int_v0 = RunePlayer(Parm_Actor_0).LimbPassThrough(Parm_int_0, Local_int_v2, Local_int_v1);
    Local_int_v4 = RunePlayer(Parm_Actor_0).Health;
    if(RunePlayer(Parm_Actor_0).bBloodLust)
    {
        Damage /= float(2);
        Local_int_v5 = RunePlayer(Parm_Actor_0).Strength - Damage;
        if(Local_int_v5 > 0)
        {
            Damage = 0;            
        }
        else
        {
            Damage = -Local_int_v5 * 2;
        }
    }
    if(Parm_int_0 != 0)
    {
        if(RunePlayer(Parm_Actor_0).BodyPartSeverable(Parm_int_0) && RunePlayer(Parm_Actor_0).BodyPartHealth[Parm_int_0] > 0)
        {
            Local_int_v3 = RunePlayer(Parm_Actor_0).BodyPartHealth[Parm_int_0] - Local_int_v1;
            if(Local_int_v3 <= 0)
            {
                if(RunePlayer(Parm_Actor_0).BodyPartCritical(Parm_int_0))
                {
                    Local_int_v0 = Max(Local_int_v4, Damage);
                    DamageType = 'decapitated';
                }
            }
        }
    }
    if(DamageType == 'Crushed')
    {
        Local_int_v0 = RunePlayer(Parm_Actor_0).default.Health * 3;
    }
    if(zPlayerReplicationInfo(P0.PlayerReplicationInfo).B_v4632)
    {
        zPlayerReplicationInfo(P0.PlayerReplicationInfo).INT_v5365 += 1;
        if(zPlayerReplicationInfo(P0.PlayerReplicationInfo).B_v5343)
        {
            zPlayerReplicationInfo(P0.PlayerReplicationInfo).INT_v5366 += 1;
        }        
    }
    else
    {
        zPlayerReplicationInfo(P0.PlayerReplicationInfo).INT_v5365 += Min(Local_int_v4, Local_int_v0);
        if(zPlayerReplicationInfo(P0.PlayerReplicationInfo).B_v5343)
        {
            zPlayerReplicationInfo(P0.PlayerReplicationInfo).INT_v5366 += Min(Local_int_v4, Local_int_v0);
        }
    }
    return;
}
