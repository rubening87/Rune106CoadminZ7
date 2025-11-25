class r_LeadZoneChecker extends actor;

/*

this class will be spawned where the hitlocation of the feeler jumparc trace is, then it will check region.zoneinfo to see if the zone is safe( like lava, acid etc.. pain damage )

*/


var bool bIsInSafeZone;

auto state CheckZone
{
	event ZoneChange(ZoneInfo NewZone)
	{
		if (NewZone != None)
		{
			if (NewZone.DamagePerSec > 0) // if zone does damage, not safe
			{
				bIsInSafeZone = false;
				log("JumpArc ZoneCheck: NOT SAFE ZONE - " $ NewZone.DamagePerSec);
			}
			else
			{
				bIsInSafeZone = true;
				log("JumpArc ZoneCheck: SAFE ZONE - " $ NewZone);
			}
		}
	}
}

state idle
{
	ignores ZoneChange;
}