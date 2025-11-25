class rIRC extends Info;

var rIRCLink IRC;
var rIRCSpec spec;
var bool B_v5682;
var bool B_v5683;
var bool B_v5684;
var string STR_v1971;
var string STR_v5686;
var string STR_v5687;
var string STR_v5688;
var string STR_v5689;
var int INT_v5690;
var int INT_v1973;
var int INT_v1978;
var int INT_v1979;
var string ServerName;
var zStorage zSTg_v5694;

function PostBeginPlay()
{
    super(Actor).PostBeginPlay();
    eqq_vxv_1078();
    return;
}

function eqq_vxv_1078()
{
    spec = Spawn(Class'coadminz7.rIRCSpec');
    spec.SetOwner(self);
    spec.SetTimer(1.0000000, true);
    if(IRC == none)
    {
        IRC = Spawn(Class'coadminz7.rIRCLink');
        IRC.SetOwner(self);
        IRC.UNK_v5447 = spec;
        IRC.UNK_v5449 = self;
        IRC.zSTg_v5454 = zSTg_v5694;
        IRC.eq_vxv_345(STR_v1971, "TSB", "TSB", "TSB", "#tsb");
    }
    return;
}

defaultproperties
{
    STR_v1971="127.0.0.1"
    INT_v1973=4
    INT_v1978=12
    INT_v1979=9
    RemoteRole=0
}