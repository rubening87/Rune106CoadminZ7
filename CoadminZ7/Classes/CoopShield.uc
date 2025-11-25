class CoopShield extends Shield
    abstract;

function bool JointDamaged(int Damage, Pawn P0, Vector Parm_Vector_0, Vector Momentum, name DamageType, int Parm_int_0)
{
    if(P0.IsA('PlayerPawn') && Pawn(Owner).IsA('PlayerPawn'))
    {
        Damage = 0;
        return false;
    }
    super.JointDamaged(Damage, P0, Parm_Vector_0, Momentum, DamageType, Parm_int_0);
    return;
}
