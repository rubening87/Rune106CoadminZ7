class TCCDelay extends Info;

function Destroyed()
{
    if(Owner != none)
    {
        Owner.Destroy();
    }
    return;
}

defaultproperties
{
    LifeSpan=2.0000000
}