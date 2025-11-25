class RuneLookMesh extends RuneMeshActor;


var vector LookSpot;
var rotator targetangle;			// Only used when bOverrideLookTarget
var rotator LookAngle;				// Angle currently looking
var(Look) float LookDegPerSec;		// Degrees/Second velocity for turning to look
var(AI) float PeripheralVision;		// Cosine of limits of peripheral vision. (-1..1)
var(Look) rotator MaxBodyAngle;		// Max angles on each axis for body turning
var(Look) rotator MaxHeadAngle;		// Max angles on each axis for head turning
var(Look) bool bRotateHead;
var(Look) bool bRotateTorso;		// Torso turns during look
var(Look) bool bHeadLookUpDouble;	// Allow the head to look up double the MaxHeadAngle Pitch


function PostBeginPlay()
{
	LookSpot = Location + vect(20, 0, 0);
	SetTimer(RandRange(1, 1.5), true);
}

function Timer()
{
	LookSpot = Location + VRand()*100;
}

function Tick(float DeltaTime)
{
	Look(DeltaTime);
}

function Look(float DeltaTime)
{
	local int head,body;
	local float headdeg,bodydeg,rotvel;
	local rotator headangle, bodyangle;
	local rotator ragnarRot;
	local float headPitchUp;
	local int joint;

	if (Skeletal==None)
		return;

	ragnarRot = Rotation;
	ragnarRot.Pitch = 0;
	
	targetangle = rotator(LookSpot - Location);
	targetangle -= ragnarRot;

	// Fix angles (0..180,0..-180)
	while (targetangle.Yaw > 32768)
		targetangle.Yaw = targetangle.Yaw - 65535;
	while (targetangle.Yaw < -32768)
		targetangle.Yaw = targetangle.Yaw + 65535;
	while (targetangle.Pitch > 32768)
		targetangle.Pitch = targetangle.Pitch - 65535;
	while (targetangle.Pitch < -32768)
		targetangle.Pitch = targetangle.Pitch + 65535;

	rotvel = LookDegPerSec * 65535.0 / 360.0;
		
	// If target is in dead zone, return to looking forward
	if (cos(targetangle.Yaw*2.0*Pi/65535.0) < PeripheralVision)
	{
		targetangle = rot(0,0,0);
		rotvel *= 0.5;				// slower rate when returning to straight
	}

	// Yaw towards target angle
	if (targetangle.Yaw < LookAngle.Yaw)
	{	// Turning left
		LookAngle.Yaw -= rotvel * DeltaTime;
		if (LookAngle.Yaw < targetangle.Yaw)	// Disallow overshoot
			LookAngle.Yaw = targetangle.Yaw;
	}
	else
	{	// Turning right
		LookAngle.Yaw += rotvel * DeltaTime;
		if (LookAngle.Yaw > targetangle.Yaw)	// Disallow overshoot
			LookAngle.Yaw = targetangle.Yaw;
	}

	// Pitch towards target angle
	rotvel = 0.5 * LookDegPerSec * 65535.0 / 360.0;
	if (targetangle.Pitch < LookAngle.Pitch)
	{	// Pitching Up
		LookAngle.Pitch -= rotvel * DeltaTime;
		if (LookAngle.Pitch < targetangle.Pitch)
			LookAngle.Pitch = targetangle.Pitch;
	}
	else
	{	// Pitching Down
		LookAngle.Pitch += rotvel * DeltaTime;
		if (LookAngle.Pitch > targetangle.Pitch)
			LookAngle.Pitch = targetangle.Pitch;
	}

	if(bHeadLookUpDouble)
	{
		headPitchUp = MaxHeadAngle.Pitch * 2;
	}
	else
	{
		headPitchUp = MaxHeadAngle.Pitch;
	}

	// Now translate LookAngle.Yaw into head and body angles
	if (bRotateHead)
	{
		headangle = LookAngle;


		// Overflow any extra angle beyond head maximums into body
		if (headangle.Yaw > MaxHeadAngle.Yaw)
		{
			bodyangle.Yaw = headangle.Yaw - MaxHeadAngle.Yaw;
			headangle.Yaw = MaxHeadAngle.Yaw;
		}
		else if (headangle.Yaw < -MaxHeadAngle.Yaw)
		{
			bodyangle.Yaw = headangle.Yaw + MaxHeadAngle.Yaw;
			headangle.Yaw = -MaxHeadAngle.Yaw;
		}

		if (headangle.Pitch > headPitchUp)
		{
			bodyangle.Pitch = headangle.Pitch - headPitchUp;
			headangle.Pitch = headPitchUp;
		}
		else if (headangle.Pitch < -MaxHeadAngle.Pitch)
		{
			bodyangle.Pitch = headangle.Pitch + MaxHeadAngle.Pitch;
			headangle.Pitch = -MaxHeadAngle.Pitch;
		}
	}
	else if (bRotateTorso)
	{
		bodyangle = LookAngle;
	}
	
	// Do head roll
	if (MaxHeadAngle.Roll > 0)	// TODO: Make proportional
		headangle.Roll = headangle.Yaw / 2;
	if (MaxBodyAngle.Roll > 0)  // TODO: Make proportional
		bodyangle.Roll = bodyangle.Yaw / 2;

	// Clamp to max angles
	bodyangle.Yaw   = Clamp(bodyangle.Yaw,   -MaxBodyAngle.Yaw,   MaxBodyAngle.Yaw);
	bodyangle.Pitch = Clamp(bodyangle.Pitch, -MaxBodyAngle.Pitch, MaxBodyAngle.Pitch);
	bodyangle.Roll  = Clamp(bodyangle.Roll,  -MaxBodyAngle.Roll,  MaxBodyAngle.Roll);
	headangle.Yaw   = Clamp(headangle.Yaw,   -MaxHeadAngle.Yaw,   MaxHeadAngle.Yaw);
	headangle.Pitch = Clamp(headangle.Pitch, -MaxHeadAngle.Pitch, headPitchUp);
	headangle.Roll  = Clamp(headangle.Roll,  -MaxHeadAngle.Roll,  MaxHeadAngle.Roll);

//headdeg = headangle.Yaw * 360.0 / 65536.0;
//bodydeg = bodyangle.Yaw * 360.0 / 65536.0;
//Log("Head="$headdeg$" Body="$bodydeg);

	headangle += Rotation;
	bodyangle += Rotation;

	joint = JointNamed('torso');
	if (joint != 0)
	{
		if (bRotateTorso)
			TurnJointTo(joint, bodyangle);
		else
			TurnJointTo(joint, Rotation); // No extra rotation
	}

	joint = JointNamed('head');
	if (joint != 0)
	{
		if (bRotateHead)
			TurnJointTo(joint, headangle);
		else
			TurnJointTo(joint, Rotation); // No extra rotation
	}
}

defaultproperties
{
     LookDegPerSec=360.000000
     PeripheralVision=-1.000000
     MaxBodyAngle=(Yaw=8192)
     MaxHeadAngle=(Pitch=4096,Yaw=8192)
     bRotateHead=True
     bRotateTorso=True
     bHeadLookUpDouble=True
}
