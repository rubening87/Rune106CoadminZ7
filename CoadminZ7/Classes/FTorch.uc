class FTorch extends Torch;

var CAZConsole CAZCon;

function Destroyed()
{
    if(CAZCon != none)
    {
        CAZCon.FTorch_v6659 = none;
    }
    super(Weapon).Destroyed();
    return;
}
