class AssEndingPoint extends NavigationPoint;

var bool B_v6209;
var AssTeleporter UNK_v6210;
var() string eqA_vxv_6211;
var() string eqA_vxv_6212;
var() string eqA_vxv_6213;
var() Texture eqA_vxv_6214[5];
var() name eq_A_vxv_6215[5];

replication
{
    // Pos:0x000
    reliable if(int(Role) == int(ROLE_Authority))
        B_v6209, eqA_vxv_6211, 
        eqA_vxv_6212, eqA_vxv_6213;
}

function PreBeginPlay()
{
    super(Actor).PreBeginPlay();
    B_v6209 = false;
    return;
}

simulated function eqB_vxv_2079(Actor Parm_Actor_0)
{
    local Actor A;
    local int i;

    i = 0;
    J0x07:

    if(i < 5)
    {
        if(eq_A_vxv_6215[i] != 'None')
        {
            foreach AllActors(Class'Engine.Actor', A, eq_A_vxv_6215[i])
            {
                eqdollar_vxv_1135(A, Parm_Actor_0, Parm_Actor_0.Instigator);                
            }            
        }
        i++;
        // [Loop Continue]
        goto J0x07;
    }
    return;
}

function eqdollar_vxv_1135(Actor Parm_Actor_0, Actor Parm_Actor_1, Pawn P0)
{
    Parm_Actor_0.Trigger(Parm_Actor_1, P0);
    return;
}

defaultproperties
{
    SoundRadius=8
    SoundVolume=32
    CollisionRadius=30.0000000
    CollisionHeight=30.0000000
    bCollideActors=true
}