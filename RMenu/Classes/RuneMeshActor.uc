class RuneMeshActor extends Info;

var RuneMenuPlayerMeshClient NotifyClient;

function AnimEnd()
{
	if (NotifyClient != None)
		NotifyClient.AnimEnd(Self);
}

event FellOutOfWorld()
{
}

defaultproperties
{
     bHidden=False
     bOnlyOwnerSee=True
     bAlwaysTick=True
     Physics=PHYS_Rotating
     RemoteRole=ROLE_None
     DrawType=DT_SkeletalMesh
     DrawScale=0.100000
     AmbientGlow=255
     bUnlit=True
     CollisionRadius=0.000000
     CollisionHeight=0.000000
}
