class zDiscardedHealth extends Debris;

function InventorySpecial1()
{
    return;
}

simulated function InventorySpecial2()
{
    local Pawn P0;
    local Actor Local_Actor_v0;

    if(Owner == none)
    {
        return;
    }
    P0 = Pawn(Owner);
    Local_Actor_v0 = P0.DetachActorFromJoint(P0.JointNamed(P0.WeaponJoint));
    if(Local_Actor_v0 != none)
    {
        bSimFall = true;
        Local_Actor_v0.Velocity = HasCommandPermission0(P0);
        Local_Actor_v0.SetPhysics(2);
        Local_Actor_v0.bCollideWorld = true;
    }
    return;
}

function eqH_vxv_2298()
{
    return;
}

simulated function Vector HasCommandPermission0(Pawn P0)
{
    local Vector X, Y, Z, Local_Vector_v1;

    GetAxes(P0.Rotation, X, Y, Z);
    Local_Vector_v1 = ((-X * float(150)) + (Y * float(30))) + vect(0.0000000, 0.0000000, 100.0000000);
    return Local_Vector_v1;
    return;
}

defaultproperties
{
    bAlwaysRelevant=true
    bNetTemporary=false
    bReplicateInstigator=true
    RemoteRole=4
}