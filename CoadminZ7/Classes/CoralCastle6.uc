class CoralCastle6 extends Actor
    notplaceable;

var PlayerPawn PlayerPawn;
var CoralCastle5 X;

function PreBeginPlay()
{
    PlayerPawn = PlayerPawn(Owner);
    bHidden = true;
    return;
}

function Init()
{
    X = Spawn(Class'coadminz7.CoralCastle5', Owner);
    bHidden = true;
    return;
}

function Tick(float Parm_float_0)
{
    if(Owner == none)
    {
        if(X != none)
        {
            X.Destroy();
        }
        Destroy();
    }
    return;
}

defaultproperties
{
    bHidden=true
}