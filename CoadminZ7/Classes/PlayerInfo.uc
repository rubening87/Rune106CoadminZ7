class PlayerInfo extends Info
    config(PlayerInfo);

struct STCT_v1960
{
    var string Name;
    var string Password;
    var int INT_v5679;
    var int Level;
    var byte UNK_v5680;
    var byte Status;
    var int INT_v4237;
};

var config STCT_v1960 playerData[512];
