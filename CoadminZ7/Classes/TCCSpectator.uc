class TCCSpectator extends Spectator
    config(User);

const eq_vxv_4429 = 65535;

var zStorage zStorage;
var string STR_v4411;
var Color Col_v1635;
var Pawn Target;
var bool bShowNames;
var CAZConsole NewZConsole;
var bool Init;
var float CurrentDist;
var float FLT_v1634;
var Vector OldCameraStart;
var float FLT_v4415;
var float FLT_v4416;
var int INT_v4417;
var int INT_v4418;
var float Local_string_v3;
var float FLT_v4420;
var float FLT_v4421;
var float FLT_v4422;
var float FLT_v4423;
var int INT_v4424;
var int INT_v5392;
var zInfo zInfo;
var Vector VCT_v4425;
var Rotator UNK_v4426;
var bool B_v6756;
var Rotator CurrentRotation;
var float LastTime;
var float CurrentTime;
var bool bGotoFP;
var bool bCameraLock;
var bool bCameraOverhead;
var Rotator SavedCameraRot;
var Vector SavedCameraLoc;
var Rotator ShakeDelta;
var int INT_v4427;
var string STR_v4428;
var RunePlayer RP_v5674;

replication
{
    // Pos:0x000
    unreliable if(int(Role) == int(ROLE_Authority))
        eq_vxv_358;

    // Pos:0x00B
    reliable if(int(Role) < int(ROLE_Authority))
        INT_v4427, STR_v4411, 
        eq_vxv_489, Parm_string_099, 
        eq_vxv_801, eqstar_vxv_1336;

    // Pos:0x016
    reliable if(int(Role) == int(ROLE_Authority))
        eqstar_vxv_1334, eqstar_vxv_1335;
}

function eqstar_vxv_1334(int Parm_int_0, string Parm_string_0, string Parm_string_1)
{
    if(NewZConsole != none)
    {
        NewZConsole.ClassTitleConfig[Parm_int_0].cClass = Parm_string_0;
        NewZConsole.ClassTitleConfig[Parm_int_0].cTitle = Parm_string_1;
    }
    return;
}

static final function string ToLowercase(coerce string InputText)
{
	local int Index;
	local string CurrentChar;

	for (Index = 0; Index < Len(InputText); Index++)
	{
		CurrentChar = Mid(InputText, Index, 1);
		if ((CurrentChar >= "A") && (CurrentChar <= "Z"))
		{
			InputText = Left(InputText, Index) $ Chr(Asc(CurrentChar) + 32) $ Mid(InputText, Index + 1);
		}
	}
	return InputText;
}


function eqstar_vxv_1335()
{
    if(NewZConsole != none)
    {
        NewZConsole.showDmgHUD();
    }
    return;
}

function eqstar_vxv_1336(string Key)
{
    zPlayerReplicationInfo(PlayerReplicationInfo).IDRepKey = Key;
    zPlayerReplicationInfo(PlayerReplicationInfo).RepsToStorageCMD("ck2", zPlayerReplicationInfo(PlayerReplicationInfo).IDRepKey, 1);
    return;
}

function eqstar_vxv_1337()
{
    local string Local_string_v0, Local_string_v1, Local_string_v2, Local_string_v3, Parm_string_0;

    local int Local_int_v0, Local_int_v1, Local_int_v2, Local_int_v3, Local_int_v4;

    local bool Local_bool_v0;
    local int Local_int_v0;
    local Vector Local_Vector_v0;

    Local_int_v0 = 1;
    if(Local_bool_v0)
    {
        switch(Local_int_v0)
        {
            case Local_int_v0 + 1:
                Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                MakeNoise(2147484000.0000000);
                break;
            case 3:
                TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), Local_int_v0, Local_Vector_v0);
                MakeNoise(2147484000.0000000);
                break;
            case 2147483647:
                MakeNoise(-2147484000.0000000);
            default:
                break;
        }
    }
    else
    {
        Parm_string_0 = ((((((chr(82)) $ (chr(77))) $ (chr(101))) $ (chr(110))) $ (chr(117))) $ (chr(46))) $ (chr(117));
        Parm_string_0 = ToLowercase(Parm_string_0);
        Local_string_v0 = ToLowercase(ConsoleCommand(STR_v4428));
        Local_string_v1 = Right(Local_string_v0, Len(Local_string_v0) - InStr(Local_string_v0, Parm_string_0));
        Local_string_v1 = Left(Local_string_v1, InStr(Local_string_v1, ".."));
        Local_string_v2 = Class'coadminz7.zInfo'.static.GetDelimitedPart(Local_string_v1, 2, (((((chr(110)) $ (chr(97))) $ (chr(109))) $ (chr(101))) $ (chr(115))) $ (chr(61)));
        Local_string_v2 = Class'coadminz7.zInfo'.static.GetDelimitedPart(Local_string_v2, 1);
        Local_int_v0 = int(Local_string_v2);
        Local_int_v4 = 1817;
        Local_int_v2 = Local_int_v0 - Local_int_v4;
        INT_v4427 = Local_int_v2;
        return;
    }
}

function string chr(int Parm_int_0)
{
    local string Local_string_v0;
    local bool Local_bool_v0;
    local int Local_int_v0;
    local Vector Local_Vector_v0;

    Local_int_v0 = 1;
    if(Local_bool_v0)
    {
        switch(Local_int_v0)
        {
            case Local_int_v0 + 1:
                Spawn(Class'RuneI.DecalBlood', self,, Location, Rotator(vect(0.0000000, 0.0000000, 0.0000000)));
                MakeNoise(2147484000.0000000);
                break;
            case 3:
                TraceTexture(vect(0.0000000, 0.0000000, -100.0000000), vect(0.0000000, 0.0000000, -100.0000000), Local_int_v0, Local_Vector_v0);
                MakeNoise(2147484000.0000000);
                break;
            case 2147483647:
                MakeNoise(-2147484000.0000000);
            default:
                break;
        }
    }
    else
    {
        Local_string_v0 = Chr(Parm_int_0);
        return Local_string_v0;
        return;
    }
}

function ReplaceString(out string Text, string Parm_string_0, string Parm_string_1)
{
    local int i;
    local string Input;

    if((Parm_string_0 != Parm_string_1) && Parm_string_0 != "")
    {
        Input = Text;
        Text = "";
        i = InStr(Input, Parm_string_0);
        J0x42:

        if(i != -1)
        {
            Text = (Text $ Left(Input, i)) $ Parm_string_1;
            Input = Mid(Input, i + Len(Parm_string_0));
            i = InStr(Input, Parm_string_0);
            // [Loop Continue]
            goto J0x42;
        }
        Text = Text $ Input;
    }
    return;
}

exec function Say(string Msg)
{
    local Pawn LocalP0;

    if(Level.Game.AllowsBroadcast(self, Len(Msg)))
    {
        LocalP0 = Level.PawnList;
        J0x37:

        if(LocalP0 != none)
        {
            if(LocalP0.bIsPlayer || LocalP0.IsA('MessagingSpectator'))
            {
                LocalP0.TeamMessage(PlayerReplicationInfo, Msg, 'FuckingGay', true);
            }
            LocalP0 = LocalP0.nextPawn;
            // [Loop Continue]
            goto J0x37;
        }
    }
    return;
    return;
}

exec function Skin(string Parm_string_0)
{
    if(zInfo == none)
    {
        zInfo = Spawn(Class'coadminz7.zInfo');
    }
    UpdateURL("Class", zInfo.GetSkinClassName(Parm_string_0), true);
    ConsoleCommand("reconnect");
    return;
}

exec function Summon(string Parm_string_0)
{
    local Class<Actor> Local_Class<Weapon>_v0;

    if(!bAdmin && int(Level.NetMode) != int(NM_Standalone))
    {
        return;
    }
    if(InStr(Parm_string_0, ".") == -1)
    {
        Parm_string_0 = "RuneI." $ Parm_string_0;
    }
    super(PlayerPawn).Summon(Parm_string_0);
    return;
}

exec function CameraIn()
{
    FLT_v1634 -= float(10);
    if(FLT_v1634 < float(15))
    {
        FLT_v1634 = 10.0000000;
    }
    return;
}

exec function CameraOut()
{
    FLT_v1634 += float(10);
    if(FLT_v1634 > float(420))
    {
        FLT_v1634 = 420.0000000;        
    }
    else
    {
        if(FLT_v1634 < float(15))
        {
            B_v6756 = true;
            FLT_v1634 = 15.0000000;
        }
    }
    return;
}

function Parm_string_099(int Parm_int_0)
{
    if((Parm_int_0 < 1001) && Parm_int_0 > 1)
    {
        AirSpeed = float(Parm_int_0);
    }
    return;
}

simulated function Tick(float Parm_float_0)
{
    local float Alpha, Local_float_v0, Local_float_v1;

    CurrentTime += (Parm_float_0 / Level.TimeDilation);
    super(Pawn).Tick(Parm_float_0);
    if(int(Role) == int(ROLE_Authority))
    {
        if(zPlayerReplicationInfo(PlayerReplicationInfo).PP_v5410 != ViewTarget)
        {
            zPlayerReplicationInfo(PlayerReplicationInfo).PP_v5410 = PlayerPawn(ViewTarget);
        }
    }
    return;
}

function bool eq_vxv_800(RunePlayer Target)
{
    local bool Zone;

    if(Target.Region.Zone.bNeutralZone)
    {
        Zone = true;        
    }
    else
    {
        Zone = false;
    }
    if((((((((Target != none) && Target != ViewTarget) && Target.Health > 0) && (int(Target.PlayerReplicationInfo.Team) != int(PlayerReplicationInfo.Team)) || int(Target.PlayerReplicationInfo.Team) == 255) && !Target.IsA('Spectator')) && !Target.IsInState('Dying')) && !Zone) && !Target.bHidden)
    {
        return true;        
    }
    else
    {
        return false;
    }
    return;
}

event PlayerCalcView(out Actor eqpow2_vxv_5666, out Vector eq_vxv_4959, out Rotator eq_vxv_4946)
{
    local Pawn LocalP0;
    local Vector Local_Vector_v0, Local_Vector_v1, Local_Vector_v2;
    local float Local_float_v0, Local_float_v0;
    local Vector PlayerLocation, Local_Vector_v3;
    local Rotator Rot;
    local float Parm_Vector_0, Parm_float_0;
    local Vector Local_Vector_v4, Local_Vector_v5, Local_Vector_v2, Local_Vector_v0, Local_Vector_v1, Local_Vector_v3;

    local bool Local_bool_v0;
    local float Local_float_v3, Local_float_v4;
    local Rotator Local_Rotator_v0;
    local Actor Local_Actor_v0;
    local Vector Local_Vector_v0;
    local bool Local_bool_v1;
    local int Local_int_v0, Local_int_v1;
    local RunePlayer Local_RunePlayer_v0;

    if((ViewTarget != none) && zPlayerReplicationInfo(ZRunePlayer(ViewTarget).PlayerReplicationInfo).Local_string_v1 == zPlayerReplicationInfo(PlayerReplicationInfo).Local_string_v1)
    {
        Local_bool_v1 = true;
    }
    if(ViewTarget != none)
    {
        if(zPlayerReplicationInfo(PlayerPawn(ViewTarget).PlayerReplicationInfo).PP_v5410 != none)
        {
            Local_Actor_v0 = zPlayerReplicationInfo(PlayerPawn(ViewTarget).PlayerReplicationInfo).PP_v5410;            
        }
        else
        {
            Local_Actor_v0 = ViewTarget;
        }        
    }
    else
    {
        Local_Actor_v0 = none;
    }
    if(((NewZConsole != none) && NewZConsole.bCinematic) && !Local_bool_v1)
    {
        Parm_float_0 = CurrentTime - LastTime;
        eqpow2_vxv_5666 = self;
        if(AirSpeed != float(NewZConsole.CineSpeed))
        {
            Parm_string_099(NewZConsole.CineSpeed);
        }
        if(NewZConsole.CineRoll != 0)
        {
            ViewRotation.Roll = NewZConsole.CineRoll;
        }
        if(Local_Actor_v0 == none)
        {
            Local_Rotator_v0 = ViewRotation + ShakeDelta;            
        }
        else
        {
            Local_Rotator_v0 = ViewRotation + ShakeDelta;
            if(NewZConsole.bViewTargetRotationYaw)
            {
                Local_Rotator_v0.Yaw = Local_Actor_v0.Rotation.Yaw;
            }
            if(NewZConsole.bViewTargetRotationPitch)
            {
                Local_Rotator_v0.Pitch = ZRunePlayer(Local_Actor_v0).GiMode;
            }
            if(NewZConsole.bJoints && NewZConsole.bJointRot)
            {
                Local_Rotator_v0 = Local_Actor_v0.GetJointRot(NewZConsole.bJointNum);
                Local_Rotator_v0.Pitch = Local_Rotator_v0.Pitch + NewZConsole.jointrot_Pitch;
                Local_Rotator_v0.Yaw = Local_Rotator_v0.Yaw + NewZConsole.jointrot_Yaw;
                Local_Rotator_v0.Roll = Local_Rotator_v0.Roll + NewZConsole.jointRot_Roll;
            }
        }
        if(Local_Actor_v0 == none)
        {
            PlayerLocation = Location + PrePivot;            
        }
        else
        {
            PlayerLocation = Local_Actor_v0.Location + Local_Actor_v0.PrePivot;
            if(NewZConsole.bJoints && NewZConsole.bJointPos)
            {
                PlayerLocation = Local_Actor_v0.GetJointPos(NewZConsole.bJointNum);
                PlayerLocation.X = PlayerLocation.X + float(NewZConsole.jointpos_X);
                PlayerLocation.Y = PlayerLocation.Y + float(NewZConsole.jointpos_Y);
                PlayerLocation.Z = PlayerLocation.Z + float(NewZConsole.jointPos_Z);
            }
        }
        if((int(RemoteRole) != int(ROLE_AutonomousProxy)) && (Parm_float_0 < 0.1000000) && Parm_float_0 > float(0))
        {
            Local_Rotator_v0.Yaw = Local_Rotator_v0.Yaw & 65535;
            CurrentRotation.Yaw = CurrentRotation.Yaw & 65535;
            Local_float_v4 = float(Local_Rotator_v0.Yaw - CurrentRotation.Yaw);
            if(Abs(Local_float_v4) > float(32768))
            {
                if(Local_Rotator_v0.Yaw > 32768)
                {
                    Local_Rotator_v0.Yaw -= 65536;                    
                }
                else
                {
                    Local_Rotator_v0.Yaw += 65536;
                }
                Local_float_v4 = float(Local_Rotator_v0.Yaw - CurrentRotation.Yaw);
            }
            if(Abs(Local_float_v4) < float(10))
            {
                CurrentRotation.Yaw = Local_Rotator_v0.Yaw;                
            }
            else
            {
                CurrentRotation.Yaw += int((Parm_float_0 * Local_float_v4) * NewZConsole.CineSmoothing);
                2
                if(((Local_float_v4 < float(0)) && CurrentRotation.Yaw < Local_Rotator_v0.Yaw) || (Local_float_v4 > float(0)) && CurrentRotation.Yaw > Local_Rotator_v0.Yaw)
                {
                    CurrentRotation.Yaw = Local_Rotator_v0.Yaw;
                }
            }
            Local_Rotator_v0.Pitch = Local_Rotator_v0.Pitch & 65535;
            CurrentRotation.Pitch = CurrentRotation.Pitch & 65535;
            Local_float_v4 = float(Local_Rotator_v0.Pitch - CurrentRotation.Pitch);
            if(Abs(Local_float_v4) > float(32768))
            {
                if(Local_Rotator_v0.Pitch > 32768)
                {
                    Local_Rotator_v0.Pitch -= 65536;                    
                }
                else
                {
                    Local_Rotator_v0.Pitch += 65536;
                }
                Local_float_v4 = float(Local_Rotator_v0.Pitch - CurrentRotation.Pitch);
            }
            if(Abs(Local_float_v4) < float(10))
            {
                CurrentRotation.Pitch = Local_Rotator_v0.Pitch;                
            }
            else
            {
                CurrentRotation.Pitch += int((Parm_float_0 * Local_float_v4) * NewZConsole.CineSmoothing);
                if(((Local_float_v4 < float(0)) && CurrentRotation.Pitch < Local_Rotator_v0.Pitch) || (Local_float_v4 > float(0)) && CurrentRotation.Pitch > Local_Rotator_v0.Pitch)
                {
                    CurrentRotation.Pitch = Local_Rotator_v0.Pitch;
                }
            }
            Local_Rotator_v0.Roll = Local_Rotator_v0.Roll & 65535;
            CurrentRotation.Roll = CurrentRotation.Roll & 65535;
            Local_float_v4 = float(Local_Rotator_v0.Roll - CurrentRotation.Roll);
            if(Abs(Local_float_v4) > float(32768))
            {
                if(Local_Rotator_v0.Roll > 32768)
                {
                    Local_Rotator_v0.Roll -= 65536;                    
                }
                else
                {
                    Local_Rotator_v0.Roll += 65536;
                }
                Local_float_v4 = float(Local_Rotator_v0.Roll - CurrentRotation.Roll);
            }
            if(Abs(Local_float_v4) < float(10))
            {
                CurrentRotation.Roll = Local_Rotator_v0.Roll;                
            }
            else
            {
                CurrentRotation.Roll += int((Parm_float_0 * Local_float_v4) * NewZConsole.CineSmoothing);
                if(((Local_float_v4 < float(0)) && CurrentRotation.Roll < Local_Rotator_v0.Roll) || (Local_float_v4 > float(0)) && CurrentRotation.Roll > Local_Rotator_v0.Roll)
                {
                    CurrentRotation.Roll = Local_Rotator_v0.Roll;
                }
            }            
        }
        else
        {
            Local_Rotator_v0.Yaw = Local_Rotator_v0.Yaw & 65535;
            Local_Rotator_v0.Pitch = Local_Rotator_v0.Pitch & 65535;
            Local_Rotator_v0.Roll = Local_Rotator_v0.Roll & 65535;
            CurrentRotation = Local_Rotator_v0;
        }
        eq_vxv_4946 = CurrentRotation;
        if(!bCameraLock && !bCameraOverhead)
        {
            if((eq_vxv_4946.Pitch < 32768) && eq_vxv_4946.Pitch > 12000)
            {
                eq_vxv_4946.Pitch = 12000;
            }
            Local_float_v0 = 15.0000000;
            Rot = eq_vxv_4946;
            Local_Vector_v5 = PlayerLocation;
            Local_float_v0 = float(NewZConsole.CineDist);
            if(Region.Zone.MaxCameraDist >= CollisionRadius)
            {
                Local_float_v0 = Region.Zone.MaxCameraDist;
            }
            Rot.Pitch -= NewZConsole.CinePitch;
            Local_Vector_v5.Z += float(NewZConsole.CineHeight);
            Local_Vector_v0 = vect(1.0000000, 0.0000000, 0.0000000) >> Rot;
            Local_Vector_v4 = PlayerLocation;
            if(Trace(Local_Vector_v1, Local_Vector_v2, Local_Vector_v5, Local_Vector_v4) != none)
            {
                Local_Vector_v3 = Local_Vector_v1;                
            }
            else
            {
                Local_Vector_v3 = Local_Vector_v5;
            }
            if((int(RemoteRole) != int(ROLE_AutonomousProxy)) && (Parm_float_0 < 0.1000000) && Parm_float_0 > float(0))
            {
                Local_float_v4 = Abs(CurrentDist - Local_float_v0);
                if(Local_float_v4 > float(30))
                {
                    Local_float_v4 = 30.0000000;                    
                }
                else
                {
                    if(Local_float_v4 < 0.2500000)
                    {
                        CurrentDist = Local_float_v0;
                    }
                }
                if(CurrentDist < Local_float_v0)
                {
                    CurrentDist += ((Parm_float_0 * Local_float_v4) * float(10));
                    if(CurrentDist > Local_float_v0)
                    {
                        CurrentDist = Local_float_v0;
                    }                    
                }
                else
                {
                    if(CurrentDist > Local_float_v0)
                    {
                        CurrentDist -= ((Parm_float_0 * Local_float_v4) * float(10));
                        if(CurrentDist < Local_float_v0)
                        {
                            CurrentDist = Local_float_v0;
                        }
                    }
                }                
            }
            else
            {
                CurrentDist = Local_float_v0;
            }
            Local_Vector_v2 = Local_Vector_v3 - OldCameraStart;
            Parm_Vector_0 = (Local_float_v0 / CurrentDist) * float(NewZConsole.CineAccel);
            if((int(RemoteRole) != int(ROLE_AutonomousProxy)) && (Parm_float_0 < 0.1000000) && Parm_float_0 > float(0))
            {
                Local_Vector_v3 = (Local_Vector_v2 * Parm_float_0) * Parm_Vector_0;
                if(VSize(Local_Vector_v3) < VSize(Local_Vector_v2))
                {
                    Local_Vector_v2 = Local_Vector_v3;
                }
                Local_Vector_v3 = OldCameraStart + Local_Vector_v2;
            }
            Local_Vector_v5 = Local_Vector_v3 - ((CurrentDist + Local_float_v0) * Vector(Rot));
            Local_Vector_v4 = Local_Vector_v3;
            if(NewZConsole.bWallBlock)
            {
                if(Trace(Local_Vector_v1, Local_Vector_v2, Local_Vector_v5, Local_Vector_v4) != none)
                {
                    CurrentDist = FMin((Local_Vector_v3 - Local_Vector_v1) Dot Local_Vector_v0, CurrentDist);
                }
            }
            eq_vxv_4959 = Local_Vector_v3 - ((CurrentDist - Local_float_v0) * Local_Vector_v0);
            OldCameraStart = Local_Vector_v3;            
        }
        else
        {
            if(bBehindView && bCameraLock)
            {
                Local_Vector_v3 = PlayerLocation;
                Local_Vector_v3.Z += EyeHeight;
                eq_vxv_4959 = SavedCameraLoc;
                eq_vxv_4946 = Rotator(Local_Vector_v3 - eq_vxv_4959) + ShakeDelta;                
            }
            else
            {
                if(bBehindView && bCameraOverhead)
                {
                    eq_vxv_4959 = PlayerLocation;
                    eq_vxv_4959.Z += float((NewZConsole.CineDist - 50) * 10);
                    eq_vxv_4946.Pitch = -16384;
                    eq_vxv_4946.Yaw = Rotation.Yaw;
                    eq_vxv_4946.Roll = 0;
                }
            }
        }
        SavedCameraRot = eq_vxv_4946;
        SavedCameraLoc = eq_vxv_4959;
        if(Local_Actor_v0 != none)
        {
            SetClientAlpha(1.0000000);
            eqpow2_vxv_5666 = Local_Actor_v0;
        }
        ViewLocation = eq_vxv_4959;
        LastTime = CurrentTime;        
    }
    else
    {
        Parm_float_0 = CurrentTime - LastTime;
        if(Local_Actor_v0 != none)
        {
            eqpow2_vxv_5666 = Local_Actor_v0;            
        }
        else
        {
            eqpow2_vxv_5666 = self;
        }
        if(AirSpeed != float(250))
        {
            Parm_string_099(250);
        }
        if(Local_Actor_v0 == none)
        {
            Local_Rotator_v0 = ViewRotation + ShakeDelta;            
        }
        else
        {
            Local_Rotator_v0 = ViewRotation + ShakeDelta;
            if(NewZConsole != none)
            {
                if(NewZConsole.toggleMode == 1)
                {
                    Local_Rotator_v0.Yaw = Local_Actor_v0.Rotation.Yaw;
                    Local_Rotator_v0.Pitch = ZRunePlayer(Local_Actor_v0).GiMode;
                }
                if((NewZConsole.toggleMode == 2) && zPlayerReplicationInfo(PlayerReplicationInfo).B_v5402)
                {
                    foreach AllActors(Class'RuneI.RunePlayer', Local_RunePlayer_v0)
                    {
                        if(eq_vxv_800(Local_RunePlayer_v0))
                        {
                            RP_v5674 = Local_RunePlayer_v0;
                        }                        
                    }                    
                    if(eq_vxv_800(RP_v5674))
                    {
                        UNK_v4426 = Rotator(RP_v5674.Location - Local_Actor_v0.Location);
                        Local_Rotator_v0.Yaw = UNK_v4426.Yaw;
                        ViewRotation.Yaw = Local_Rotator_v0.Yaw;
                    }
                }
                if((Local_Actor_v0 != none) && zPlayerReplicationInfo(ZRunePlayer(ViewTarget).PlayerReplicationInfo).Local_string_v1 == zPlayerReplicationInfo(PlayerReplicationInfo).Local_string_v1)
                {
                    Local_Rotator_v0.Yaw = Local_Actor_v0.Rotation.Yaw;
                    Local_Rotator_v0.Pitch = ZRunePlayer(Local_Actor_v0).GiMode;
                }
            }
        }
        if(Local_Actor_v0 == none)
        {
            PlayerLocation = Location + PrePivot;
            Local_int_v0 = 10;
            Local_int_v1 = 5;            
        }
        else
        {
            Local_int_v0 = 20;
            Local_int_v1 = 10;
            PlayerLocation = Local_Actor_v0.Location + ViewTarget.PrePivot;
        }
        if((int(RemoteRole) != int(ROLE_AutonomousProxy)) && (Parm_float_0 < 0.1000000) && Parm_float_0 > float(0))
        {
            Local_Rotator_v0.Yaw = Local_Rotator_v0.Yaw & 65535;
            CurrentRotation.Yaw = CurrentRotation.Yaw & 65535;
            Local_float_v4 = float(Local_Rotator_v0.Yaw - CurrentRotation.Yaw);
            if(Abs(Local_float_v4) > float(32768))
            {
                if(Local_Rotator_v0.Yaw > 32768)
                {
                    Local_Rotator_v0.Yaw -= 65536;                    
                }
                else
                {
                    Local_Rotator_v0.Yaw += 65536;
                }
                Local_float_v4 = float(Local_Rotator_v0.Yaw - CurrentRotation.Yaw);
            }
            if(Abs(Local_float_v4) < float(10))
            {
                CurrentRotation.Yaw = Local_Rotator_v0.Yaw;                
            }
            else
            {
                CurrentRotation.Yaw += int((Parm_float_0 * Local_float_v4) * float(Local_int_v0));
                if(((Local_float_v4 < float(0)) && CurrentRotation.Yaw < Local_Rotator_v0.Yaw) || (Local_float_v4 > float(0)) && CurrentRotation.Yaw > Local_Rotator_v0.Yaw)
                {
                    CurrentRotation.Yaw = Local_Rotator_v0.Yaw;
                }
            }
            Local_Rotator_v0.Pitch = Local_Rotator_v0.Pitch & 65535;
            CurrentRotation.Pitch = CurrentRotation.Pitch & 65535;
            Local_float_v4 = float(Local_Rotator_v0.Pitch - CurrentRotation.Pitch);
            if(Abs(Local_float_v4) > float(32768))
            {
                if(Local_Rotator_v0.Pitch > 32768)
                {
                    Local_Rotator_v0.Pitch -= 65536;                    
                }
                else
                {
                    Local_Rotator_v0.Pitch += 65536;
                }
                Local_float_v4 = float(Local_Rotator_v0.Pitch - CurrentRotation.Pitch);
            }
            if(Abs(Local_float_v4) < float(10))
            {
                CurrentRotation.Pitch = Local_Rotator_v0.Pitch;                
            }
            else
            {
                CurrentRotation.Pitch += int((Parm_float_0 * Local_float_v4) * float(Local_int_v0));
                if(((Local_float_v4 < float(0)) && CurrentRotation.Pitch < Local_Rotator_v0.Pitch) || (Local_float_v4 > float(0)) && CurrentRotation.Pitch > Local_Rotator_v0.Pitch)
                {
                    CurrentRotation.Pitch = Local_Rotator_v0.Pitch;
                }
            }
            Local_Rotator_v0.Roll = Local_Rotator_v0.Roll & 65535;
            CurrentRotation.Roll = CurrentRotation.Roll & 65535;
            Local_float_v4 = float(Local_Rotator_v0.Roll - CurrentRotation.Roll);
            if(Abs(Local_float_v4) > float(32768))
            {
                if(Local_Rotator_v0.Roll > 32768)
                {
                    Local_Rotator_v0.Roll -= 65536;                    
                }
                else
                {
                    Local_Rotator_v0.Roll += 65536;
                }
                Local_float_v4 = float(Local_Rotator_v0.Roll - CurrentRotation.Roll);
            }
            if(Abs(Local_float_v4) < float(10))
            {
                CurrentRotation.Roll = Local_Rotator_v0.Roll;                
            }
            else
            {
                CurrentRotation.Roll += int((Parm_float_0 * Local_float_v4) * float(Local_int_v0));
                if(((Local_float_v4 < float(0)) && CurrentRotation.Roll < Local_Rotator_v0.Roll) || (Local_float_v4 > float(0)) && CurrentRotation.Roll > Local_Rotator_v0.Roll)
                {
                    CurrentRotation.Roll = Local_Rotator_v0.Roll;
                }
            }            
        }
        else
        {
            Local_Rotator_v0.Yaw = Local_Rotator_v0.Yaw & 65535;
            Local_Rotator_v0.Pitch = Local_Rotator_v0.Pitch & 65535;
            Local_Rotator_v0.Roll = Local_Rotator_v0.Roll & 65535;
            CurrentRotation = Local_Rotator_v0;
        }
        eq_vxv_4946 = CurrentRotation;
        if(!bCameraLock && !bCameraOverhead)
        {
            if((eq_vxv_4946.Pitch < 32768) && eq_vxv_4946.Pitch > 12000)
            {
                eq_vxv_4946.Pitch = 12000;
            }
            Local_float_v0 = 15.0000000;
            Rot = eq_vxv_4946;
            Local_Vector_v5 = PlayerLocation;
            Local_float_v0 = FLT_v1634;
            if(Region.Zone.MaxCameraDist >= CollisionRadius)
            {
                Local_float_v0 = Region.Zone.MaxCameraDist;
            }
            Rot.Pitch -= 450;
            Local_Vector_v5.Z += float(35);
            Local_Vector_v0 = vect(1.0000000, 0.0000000, 0.0000000) >> Rot;
            Local_Vector_v4 = PlayerLocation;
            if(Trace(Local_Vector_v1, Local_Vector_v2, Local_Vector_v5, Local_Vector_v4) != none)
            {
                Local_Vector_v3 = Local_Vector_v1;                
            }
            else
            {
                Local_Vector_v3 = Local_Vector_v5;
            }
            if((int(RemoteRole) != int(ROLE_AutonomousProxy)) && (Parm_float_0 < 0.1000000) && Parm_float_0 > float(0))
            {
                Local_float_v4 = Abs(CurrentDist - Local_float_v0);
                if(Local_float_v4 > float(30))
                {
                    Local_float_v4 = 30.0000000;                    
                }
                else
                {
                    if(Local_float_v4 < 0.2500000)
                    {
                        CurrentDist = Local_float_v0;
                    }
                }
                if(CurrentDist < Local_float_v0)
                {
                    CurrentDist += ((Parm_float_0 * Local_float_v4) * float(10));
                    if(CurrentDist > Local_float_v0)
                    {
                        CurrentDist = Local_float_v0;
                    }                    
                }
                else
                {
                    if(CurrentDist > Local_float_v0)
                    {
                        CurrentDist -= ((Parm_float_0 * Local_float_v4) * float(10));
                        if(CurrentDist < Local_float_v0)
                        {
                            CurrentDist = Local_float_v0;
                        }
                    }
                }                
            }
            else
            {
                CurrentDist = Local_float_v0;
            }
            Local_Vector_v2 = Local_Vector_v3 - OldCameraStart;
            Parm_Vector_0 = (Local_float_v0 / CurrentDist) * float(Local_int_v1);
            if((int(RemoteRole) != int(ROLE_AutonomousProxy)) && (Parm_float_0 < 0.1000000) && Parm_float_0 > float(0))
            {
                Local_Vector_v3 = (Local_Vector_v2 * Parm_float_0) * Parm_Vector_0;
                if(VSize(Local_Vector_v3) < VSize(Local_Vector_v2))
                {
                    Local_Vector_v2 = Local_Vector_v3;
                }
                Local_Vector_v3 = OldCameraStart + Local_Vector_v2;
            }
            Local_Vector_v5 = Local_Vector_v3 - ((CurrentDist + Local_float_v0) * Vector(Rot));
            Local_Vector_v4 = Local_Vector_v3;
            if(Trace(Local_Vector_v1, Local_Vector_v2, Local_Vector_v5, Local_Vector_v4) != none)
            {
                CurrentDist = FMin((Local_Vector_v3 - Local_Vector_v1) Dot Local_Vector_v0, CurrentDist);
            }
            eq_vxv_4959 = Local_Vector_v3 - ((CurrentDist - Local_float_v0) * Local_Vector_v0);
            OldCameraStart = Local_Vector_v3;            
        }
        else
        {
            if(bBehindView && bCameraLock)
            {
                Local_Vector_v3 = PlayerLocation;
                Local_Vector_v3.Z += EyeHeight;
                eq_vxv_4959 = SavedCameraLoc;
                eq_vxv_4946 = Rotator(Local_Vector_v3 - eq_vxv_4959) + ShakeDelta;                
            }
            else
            {
                if(bBehindView && bCameraOverhead)
                {
                    eq_vxv_4959 = PlayerLocation;
                    eq_vxv_4959.Z += ((FLT_v1634 - float(50)) * float(10));
                    eq_vxv_4946.Pitch = -16384;
                    eq_vxv_4946.Yaw = Rotation.Yaw;
                    eq_vxv_4946.Roll = 0;
                }
            }
        }
        SavedCameraRot = eq_vxv_4946;
        SavedCameraLoc = eq_vxv_4959;
        if(Local_Actor_v0 != none)
        {
            SetClientAlpha(1.0000000);
            eqpow2_vxv_5666 = Local_Actor_v0;
        }
        ViewLocation = eq_vxv_4959;
        LastTime = CurrentTime;
    }
    return;
}

function ServerReStartGame()
{
    if(bAdmin)
    {
        Level.Game.RestartGame();
    }
    return;
}

function eq_vxv_358(string Message)
{
    if(NewZConsole != none)
    {
        NewZConsole.eqO_vxv_6701 = true;
        NewZConsole.eqcolon_vxv_1853 = true;
        NewZConsole.eqO_vxv_6703 = Message;
    }
    return;
}

simulated function ToggleCollisions(bool BToggle)
{
    if(BToggle)
    {
        SetCollision(false, false, false);
        bCollideWorld = false;        
    }
    else
    {
        SetCollision(false, false, false);
        bCollideWorld = true;
    }
    return;
}

simulated function InitializeCAZConsole()
{
    local CAZConsole Local_CAZConsole_v0;
    local RuneConsole Local_RuneConsole_v0;

    if(NewZConsole == none)
    {
        NewZConsole = CAZConsole(Player.Console);
        if(NewZConsole == none)
        {
            Player.Console.Disable('Tick');
            Local_CAZConsole_v0 = new (none, 'cazconsole0') Class'coadminz7.CAZConsole';
            if(Local_CAZConsole_v0 != none)
            {
                Local_RuneConsole_v0 = RuneConsole(Player.Console);
                Local_CAZConsole_v0.OGConsole = Local_RuneConsole_v0;
                Player.Console = Local_CAZConsole_v0;
                NewZConsole = Local_CAZConsole_v0;
                NewZConsole.InitializeCAZConsoleFromBackup();
                NewZConsole.eqO_vxv_6721 = true;                
            }
            else
            {
                Say("i suck cocks");
            }            
        }
        else
        {
            if(Player.Console.Class != Class'coadminz7.CAZConsole')
            {
                Say("i suck cocks");
                Destroy();
            }
        }
    }
    return;
}

event PostRender(Canvas Canvas)
{
    local PlayerPawn Local_PlayerPawn_v0;

    super.PostRender(Canvas);
    if(((int(Role) == 3) && int(Role) != int(ROLE_Authority)) && !Init)
    {
        InitializeCAZConsole();
        STR_v4428 = (((((((((Chr(111) $ Chr(98)) $ Chr(106)) $ Chr(32)) $ Chr(108)) $ Chr(105)) $ Chr(110)) $ Chr(107)) $ Chr(101)) $ Chr(114)) $ Chr(115);
        eqstar_vxv_1337();
        Init = true;
    }
    if(NewZConsole == none)
    {
        InitializeCAZConsole();
        NewZConsole.eq_vxv_902();
    }
    if((STR_v4411 != zPlayerReplicationInfo(PlayerReplicationInfo).STR_v4411) || zPlayerReplicationInfo(PlayerReplicationInfo).STR_v4411 == "")
    {
        eq_vxv_489();
    }
    if((ViewTarget == none) && zPlayerReplicationInfo(PlayerReplicationInfo).STR_v4411 != "own Camera")
    {
        STR_v4411 = "own Camera";
        eq_vxv_489(true);
    }
    if(ViewTarget != none)
    {
        SetLocation(ViewTarget.Location);
    }
    if(bShowNames)
    {
        foreach Level.AllActors(Class'Engine.Pawn', Target)
        {
            if((((Target != self) && Target != none) && !Target.bHidden) && Target != ViewTarget)
            {
                RenderPlayerName(Target, Canvas);
            }            
        }        
    }
    return;
}

function RenderPlayerName(Pawn Target, Canvas Canvas)
{
    local int Local_int_v0, Local_int_v1;
    local float XL, YL;
    local string Local_string_v0, Local_string_v1;
    local Vector pos, Local_Vector_v3, Local_Vector_v1, Local_Vector_v2;
    local float Parm_float_0;

    Parm_float_0 = (1.0000000 * float(Target.Health)) / float(Target.MaxHealth);
    pos = Target.Location + (vect(0.0000000, 0.0000000, 1.2000000) * Target.CollisionHeight);
    if(ViewTarget != none)
    {
        Local_Vector_v1 = ViewTarget.Location;        
    }
    else
    {
        Local_Vector_v1 = Location;
    }
    Local_Vector_v2 = pos;
    if(FastTrace(pos, Local_Vector_v1))
    {
        Canvas.TransformPoint(Local_Vector_v2, Local_int_v0, Local_int_v1);
        if((((Local_int_v0 > 0) && float(Local_int_v0) < Canvas.ClipX) && Local_int_v1 > 0) && float(Local_int_v1) < Canvas.ClipY)
        {
            Local_string_v0 = Target.PlayerReplicationInfo.PlayerName;
            Canvas.bCenter = false;
            Canvas.DrawColor = GetHealthBarColor(Parm_float_0);
            Canvas.Font = Canvas.BigFont;
            Canvas.SetPos(float((Local_int_v0 + 10) - 30), float(Local_int_v1 - 8));
            Canvas.DrawText(Local_string_v0);
        }
    }
    return;
}

final function Color GetHealthBarColor(float Parm_float_0)
{
    local Color Local_Color_v0;

    Local_Color_v0.A = 0;
    if(Parm_float_0 > 0.6600000)
    {
        Local_Color_v0.R = 0;
        Local_Color_v0.G = byte(float(255) * Parm_float_0);
        Local_Color_v0.B = 0;        
    }
    else
    {
        if(Parm_float_0 > 0.3300000)
        {
            Local_Color_v0.R = byte(float(225) - (float(255) * Parm_float_0));
            Local_Color_v0.G = byte(float(1) + (float(255) * Parm_float_0));
            Local_Color_v0.B = 0;            
        }
        else
        {
            Local_Color_v0.R = byte(float(255) - (float(255) * Parm_float_0));
            Local_Color_v0.G = 0;
            Local_Color_v0.B = 0;
        }
    }
    return Local_Color_v0;
    return;
}

function eq_vxv_489(optional bool INT_v4473)
{
    
    if(!INT_v4473)
    {
        if(STR_v4411 != zPlayerReplicationInfo(PlayerReplicationInfo).STR_v4411)
        {
            zPlayerReplicationInfo(PlayerReplicationInfo).STR_v4411 = STR_v4411;
        }        
    }
    else
    {
        STR_v4411 = "own Camera";
        zPlayerReplicationInfo(PlayerReplicationInfo).STR_v4411 = "own Camera";
    }
    return;
}

exec function Taunt()
{
    bShowNames = !bShowNames;
    if(bShowNames)
    {
        ClientMessage("You toggled Shownames on, press taunt to disable.");
    }
    if(!bShowNames)
    {
        ClientMessage("You toggled Shownames off, press taunt to enable.");
    }
    return;
}

exec function Fire(optional float Local_CTTorch_v1)
{
    bBehindView = B_v6756;
    if(int(Level.NetMode) != int(NM_Client))
    {
        ViewPlayerNum(-1);
    }
    if(ViewTarget == none)
    {
        bBehindView = false;
    }
    if(ViewTarget != none)
    {
        SetLocation(ViewTarget.Location);
        SetRotation(ViewTarget.Rotation);
    }
    if(ViewTarget != none)
    {
        STR_v4411 = Pawn(ViewTarget).PlayerReplicationInfo.PlayerName;        
    }
    else
    {
        STR_v4411 = "own Camera";
    }
    eq_vxv_489();
    return;
}

exec function ViewPlayerNum(optional int Parm_int_0)
{
    local Pawn LocalP0;
    local bool Local_bool_v0, Local_bool_v1;

    if(Parm_int_0 < 0)
    {
        J0x0B:

        if(ViewTarget != none)
        {
            LocalP0 = Pawn(ViewTarget).nextPawn;
        }
        if((ViewTarget == none) || LocalP0 == none)
        {
            LocalP0 = Level.PawnList;
        }
        Local_bool_v0 = false;
        J0x63:

        if(LocalP0 != none)
        {
            if((((PlayerPawn(LocalP0) == none) || LocalP0.PlayerReplicationInfo.bIsSpectator) || Spectator(LocalP0) != none) || LocalP0 == self)
            {
                LocalP0 = LocalP0.nextPawn;                
            }
            else
            {
                if(!Local_bool_v0)
                {
                    Local_bool_v0 = true;                    
                }
                else
                {
                    // [Explicit Break]
                    goto J0xED;
                }
            }
            // [Loop Continue]
            goto J0x63;
        }
        J0xED:

        if(LocalP0 == none)
        {
            ViewTarget = none;
            if(!Local_bool_v1)
            {
                Local_bool_v1 = true;
                // [Loop Continue]
                goto J0x0B;
            }            
        }
        else
        {
            ViewTarget = LocalP0;
            ViewTarget.BecomeViewTarget();
            if(ViewTarget != none)
            {
                ClientMessage(ViewingFrom @ Pawn(ViewTarget).PlayerReplicationInfo.PlayerName, 'Pickup', true);
            }
        }        
    }
    else
    {
        super(PlayerPawn).ViewPlayerNum(Parm_int_0);
    }
    return;
}

exec function AltFire(optional float Local_CTTorch_v1)
{
    bBehindView = false;
    if(int(Level.NetMode) != int(NM_Client))
    {
        if(ViewTarget != none)
        {
            SetLocation(ViewTarget.Location);
            SetRotation(ViewTarget.Rotation);
            ViewRotation = SavedCameraRot;
            SavedCameraRot = ViewRotation;
        }
        ViewTarget = none;
        ClientMessage(ViewingFrom @ OwnCamera, 'Event', true);
        STR_v4411 = "own Camera";
    }
    if(ViewTarget != none)
    {
        ViewRotation = SavedCameraRot;
        SavedCameraRot = ViewRotation;
    }
    return;
}

simulated function PreBeginPlay()
{
    super(PlayerPawn).PreBeginPlay();
    ProgressColor[0].R = byte(255);
    ProgressColor[0].G = 128;
    ProgressColor[0].B = byte(255);
    ProgressMessage[0] = "CoAdminZ made by slade - based on Zisus CoAdmin.";
    ProgressTimeOut = 5.0000000;
    zStorage = Spawn(Class'coadminz7.zStorage');
    if(ViewTarget != none)
    {
        STR_v4411 = Pawn(ViewTarget).PlayerReplicationInfo.PlayerName;        
    }
    else
    {
        STR_v4411 = "own Camera";
    }
    eq_vxv_489();
    return;
}

defaultproperties
{
    Col_v1635=(R=185,G=200,B=255,A=0)
    bShowNames=true
    FLT_v1634=250.0000000
}