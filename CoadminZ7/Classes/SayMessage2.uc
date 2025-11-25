class SayMessage2 extends SayMessage;

var() Color TeamColor[5];
var() Color eq_vxv_422[5];
var Color WhiteColor;

static function RenderComplexMessage(Canvas Canvas, out float XL, out float YL, optional string eq_vxv_4377, optional int Switch, optional PlayerReplicationInfo eq_vxv_4284, optional PlayerReplicationInfo eq_vxv_4285, optional Object OptionalObject)
{
    local string Local_string_v0;
    local Color MsgColor, TextColor;
    local string Parm_string_0;
    local float Local_float_v0, Local_float_v1;
    local int X, Y, Local_int_v0, Local_int_v1, Local_int_v2, Local_int_v3;

    if(eq_vxv_4284 == none)
    {
        return;
    }
    Canvas.StrLen("0", Local_float_v0, Local_float_v1);
    X = int(Canvas.CurX);
    Y = int(Canvas.CurY);
    TextColor = default.TeamColor[3];
    MsgColor = default.WhiteColor;
    Canvas.SetPos(float(X), float(Y));
    Canvas.DrawColor = TextColor;
    Canvas.Style = 3;
    Canvas.DrawTile(Texture'coadminz7.Icons.MsgBack', Canvas.ClipX - float(32), Local_float_v1 + float(2), 0.0000000, 0.0000000, 8.0000000, 8.0000000);
    Canvas.DrawTile(Texture'coadminz7.Icons.MsgBackEnd', 32.0000000, Local_float_v1 + float(2), 0.0000000, 0.0000000, 32.0000000, 8.0000000);
    Canvas.SetPos((float(X) + Local_float_v1) + Local_float_v1, float(Y + 1));
    Canvas.Style = 1;
    Canvas.DrawColor = default.WhiteColor;
    Canvas.DrawText(eq_vxv_4284.PlayerName, false);
    Canvas.DrawColor = MsgColor;
    Local_int_v2 = int(Local_float_v0 * float(5));
    Local_int_v3 = int((float(Y) + Local_float_v1) + float(2));
    Local_int_v0 = int(XL);
    Local_int_v1 = int(YL + float(Local_int_v3));
    Canvas.SetPos(0.0000000, 0.0000000);
    Canvas.DrawText(eq_vxv_4377, false);
    return;
}

static function string AssembleString(HUD myHUD, optional int Switch, optional PlayerReplicationInfo eq_vxv_4284, optional string eq_vxv_4377)
{
    return eq_vxv_4377;
    return;
}

defaultproperties
{
    TeamColor(0)=(R=255,G=0,B=0,A=0)
    TeamColor(1)=(R=0,G=128,B=255,A=0)
    TeamColor(2)=(R=0,G=255,B=0,A=0)
    TeamColor(3)=(R=255,G=255,B=0,A=0)
    TeamColor(4)=(R=255,G=255,B=255,A=0)
    eq_vxv_422(0)=(R=200,G=0,B=0,A=0)
    eq_vxv_422(1)=(R=0,G=94,B=187,A=0)
    eq_vxv_422(2)=(R=0,G=128,B=0,A=0)
    eq_vxv_422(3)=(R=255,G=255,B=128,A=0)
    eq_vxv_422(4)=(R=160,G=160,B=160,A=0)
    WhiteColor=(R=255,G=255,B=255,A=0)
    bComplexString=true
}