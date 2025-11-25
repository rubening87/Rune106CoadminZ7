class zRPG_Data extends Info
    config(playerData);

struct STCT_v1984
{
    var int PlayerID;
    var string PlayerKey;
    var string PlayerName;
    var string Password;
    var bool B_v5745;
};

struct STCT_v1985
{
    var int PlayerID;
    var int Level;
    var int INT_v5679;
    var float FLT_v5747;
    var float FLT_v5748;
    var float FLT_v5749;
    var float FLT_v5750;
    var float FLT_v5751;
    var float FLT_v5752;
    var float FLT_v5753;
};

var config STCT_v1984 playerData[1024];
var config STCT_v1985 playerSkills[1024];
var config int lastID;

function eqS_vxv_2639(PlayerPawn Parm_PlayerPawn_0)
{
    Parm_PlayerPawn_0.ClientMessage("Trying to register your account..");
    eqq_vxv_1070(lastID + 1, Parm_PlayerPawn_0);
    return;
}

function eqq_vxv_1070(int Parm_int_0, PlayerPawn Parm_PlayerPawn_0)
{
    return;
}
