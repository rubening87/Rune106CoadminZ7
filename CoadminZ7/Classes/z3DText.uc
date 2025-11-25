class z3DText extends Info;

var localized string Msg;
var Font MsgFont;
var float MsgLifeTime;
var bool bMsgFade;
var float MsgFadeTime;
var Vector VCT_v3828;
var Color MsgColor;

replication
{
    // Pos:0x000
    reliable if(int(Role) == int(ROLE_Authority))
        Msg, MsgColor, 
        MsgFadeTime, MsgFont, 
        MsgLifeTime, bMsgFade, 
        VCT_v3828;
}
