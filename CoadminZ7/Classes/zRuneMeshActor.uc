class zRuneMeshActor extends Info;

var zRuneMenuPlayerMeshClient zRMenuPMC_v3987;
var Vector VCT_v5917;
var Rotator Local_Rotator_v0;
var Rotator LookAngle;
var(eq_vxv_257) float eqM_vxv_2460;
var(AI) float eqgt_vxv_1974;
var(eq_vxv_257) Rotator eqH_vxv_2294;
var(eq_vxv_257) Rotator MaxHeadAngle;
var(eq_vxv_257) bool eqH_vxv_2290;
var(eq_vxv_257) bool bRotateTorso;
var(eq_vxv_257) bool eqA_vxv_2072;

function AnimEnd()
{
    if(zRMenuPMC_v3987 != none)
    {
        zRMenuPMC_v3987.AnimEnd(self);
    }
    return;
}

event FellOutOfWorld()
{
    return;
}

function PostBeginPlay()
{
    VCT_v5917 = Location + vect(20.0000000, 0.0000000, 0.0000000);
    SetTimer(RandRange(1.0000000, 1.5000000), true);
    return;
}

function Timer()
{
    VCT_v5917 = Location + (VRand() * float(100));
    return;
}

function Tick(float Parm_float_0)
{
    eq_vxv_257(Parm_float_0);
    return;
}

function eq_vxv_257(float Parm_float_0)
{
    local int Head, Local_int_v0;
    local float Local_float_v0, Local_float_v1, Local_float_v2;
    local Rotator Local_Rotator_v0, Local_Rotator_v1, Local_Rotator_v2;
    local float Local_float_v3;
    local int Parm_int_0;

    if(Skeletal == none)
    {
        return;
    }
    Local_Rotator_v2 = Rotation;
    Local_Rotator_v2.Pitch = 0;
    Local_Rotator_v0 = Rotator(VCT_v5917 - Location);
    Local_Rotator_v0 -= Local_Rotator_v2;
    J0x44:

    if(Local_Rotator_v0.Yaw > 32768)
    {
        Local_Rotator_v0.Yaw = Local_Rotator_v0.Yaw - 65535;
        // [Loop Continue]
        goto J0x44;
    }
    J0x77:

    if(Local_Rotator_v0.Yaw < -32768)
    {
        Local_Rotator_v0.Yaw = Local_Rotator_v0.Yaw + 65535;
        // [Loop Continue]
        goto J0x77;
    }
    J0xAA:

    if(Local_Rotator_v0.Pitch > 32768)
    {
        Local_Rotator_v0.Pitch = Local_Rotator_v0.Pitch - 65535;
        // [Loop Continue]
        goto J0xAA;
    }
    J0xDD:

    if(Local_Rotator_v0.Pitch < -32768)
    {
        Local_Rotator_v0.Pitch = Local_Rotator_v0.Pitch + 65535;
        // [Loop Continue]
        goto J0xDD;
    }
    Local_float_v2 = (eqM_vxv_2460 * 65535.0000000) / 360.0000000;
    if(Cos(((float(Local_Rotator_v0.Yaw) * 2.0000000) * 3.1415930) / 65535.0000000) < eqgt_vxv_1974)
    {
        Local_Rotator_v0 = rot(0, 0, 0);
        Local_float_v2 *= 0.5000000;
    }
    if(Local_Rotator_v0.Yaw < LookAngle.Yaw)
    {
        LookAngle.Yaw -= int(Local_float_v2 * Parm_float_0);
        if(LookAngle.Yaw < Local_Rotator_v0.Yaw)
        {
            LookAngle.Yaw = Local_Rotator_v0.Yaw;
        }        
    }
    else
    {
        LookAngle.Yaw += int(Local_float_v2 * Parm_float_0);
        if(LookAngle.Yaw > Local_Rotator_v0.Yaw)
        {
            LookAngle.Yaw = Local_Rotator_v0.Yaw;
        }
    }
    Local_float_v2 = ((0.5000000 * eqM_vxv_2460) * 65535.0000000) / 360.0000000;
    if(Local_Rotator_v0.Pitch < LookAngle.Pitch)
    {
        LookAngle.Pitch -= int(Local_float_v2 * Parm_float_0);
        if(LookAngle.Pitch < Local_Rotator_v0.Pitch)
        {
            LookAngle.Pitch = Local_Rotator_v0.Pitch;
        }        
    }
    else
    {
        LookAngle.Pitch += int(Local_float_v2 * Parm_float_0);
        if(LookAngle.Pitch > Local_Rotator_v0.Pitch)
        {
            LookAngle.Pitch = Local_Rotator_v0.Pitch;
        }
    }
    if(eqA_vxv_2072)
    {
        Local_float_v3 = float(MaxHeadAngle.Pitch * 2);        
    }
    else
    {
        Local_float_v3 = float(MaxHeadAngle.Pitch);
    }
    if(eqH_vxv_2290)
    {
        Local_Rotator_v0 = LookAngle;
        if(Local_Rotator_v0.Yaw > MaxHeadAngle.Yaw)
        {
            Local_Rotator_v1.Yaw = Local_Rotator_v0.Yaw - MaxHeadAngle.Yaw;
            Local_Rotator_v0.Yaw = MaxHeadAngle.Yaw;            
        }
        else
        {
            if(Local_Rotator_v0.Yaw < -MaxHeadAngle.Yaw)
            {
                Local_Rotator_v1.Yaw = Local_Rotator_v0.Yaw + MaxHeadAngle.Yaw;
                Local_Rotator_v0.Yaw = -MaxHeadAngle.Yaw;
            }
        }
        if(float(Local_Rotator_v0.Pitch) > Local_float_v3)
        {
            Local_Rotator_v1.Pitch = int(float(Local_Rotator_v0.Pitch) - Local_float_v3);
            Local_Rotator_v0.Pitch = int(Local_float_v3);            
        }
        else
        {
            if(Local_Rotator_v0.Pitch < -MaxHeadAngle.Pitch)
            {
                Local_Rotator_v1.Pitch = Local_Rotator_v0.Pitch + MaxHeadAngle.Pitch;
                Local_Rotator_v0.Pitch = -MaxHeadAngle.Pitch;
            }
        }        
    }
    else
    {
        if(bRotateTorso)
        {
            Local_Rotator_v1 = LookAngle;
        }
    }
    if(MaxHeadAngle.Roll > 0)
    {
        Local_Rotator_v0.Roll = Local_Rotator_v0.Yaw / 2;
    }
    if(eqH_vxv_2294.Roll > 0)
    {
        Local_Rotator_v1.Roll = Local_Rotator_v1.Yaw / 2;
    }
    Local_Rotator_v1.Yaw = Clamp(Local_Rotator_v1.Yaw, -eqH_vxv_2294.Yaw, eqH_vxv_2294.Yaw);
    Local_Rotator_v1.Pitch = Clamp(Local_Rotator_v1.Pitch, -eqH_vxv_2294.Pitch, eqH_vxv_2294.Pitch);
    Local_Rotator_v1.Roll = Clamp(Local_Rotator_v1.Roll, -eqH_vxv_2294.Roll, eqH_vxv_2294.Roll);
    Local_Rotator_v0.Yaw = Clamp(Local_Rotator_v0.Yaw, -MaxHeadAngle.Yaw, MaxHeadAngle.Yaw);
    Local_Rotator_v0.Pitch = Clamp(Local_Rotator_v0.Pitch, -MaxHeadAngle.Pitch, int(Local_float_v3));
    Local_Rotator_v0.Roll = Clamp(Local_Rotator_v0.Roll, -MaxHeadAngle.Roll, MaxHeadAngle.Roll);
    Local_Rotator_v0 += Rotation;
    Local_Rotator_v1 += Rotation;
    Parm_int_0 = JointNamed('torso');
    if(Parm_int_0 != 0)
    {
        if(bRotateTorso)
        {
            TurnJointTo(Parm_int_0, Local_Rotator_v1);            
        }
        else
        {
            TurnJointTo(Parm_int_0, Rotation);
        }
    }
    Parm_int_0 = JointNamed('Head');
    if(Parm_int_0 != 0)
    {
        if(eqH_vxv_2290)
        {
            TurnJointTo(Parm_int_0, Local_Rotator_v0);            
        }
        else
        {
            TurnJointTo(Parm_int_0, Rotation);
        }
    }
    return;
}

defaultproperties
{
    eqM_vxv_2460=360.0000000
    eqgt_vxv_1974=-1.0000000
    eqH_vxv_2294=(Pitch=0,Yaw=8192,Roll=0)
    MaxHeadAngle=(Pitch=4096,Yaw=8192,Roll=0)
    eqH_vxv_2290=true
    bRotateTorso=true
    eqA_vxv_2072=true
    bHidden=false
    bOnlyOwnerSee=true
    bAlwaysTick=true
    Physics=5
    RemoteRole=0
    DrawType=6
    DrawScale=0.1000000
    AmbientGlow=255
    bUnlit=true
    CollisionRadius=0.0000000
    CollisionHeight=0.0000000
}