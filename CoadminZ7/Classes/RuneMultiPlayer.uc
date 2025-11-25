class RuneMultiPlayer extends RuneMultiPlayer
    config;

var string EnterPassword;
var bool B_v3962;
var string IpTempBanned;
var zStorage G_ZStrg1;
var PlayerPawn Player;
var string Parm_string_1;
var string STR_v3845;
var bool B_v5496;
var int INT_v5497;
var int INT_v4658;
var int INT_v4473;
var int INT_v5493;
var bool B_v5495;
var bool B_v5494;
var Sound UNK_v5491;
var Sound UNK_v5549;
var bool B_v5569;
var Sound UNK_v5550;
var Teleporter UNK_v5570;
var PlayerStart UNK_v5571;
var bool B_v5555;
var int INT_v5498;
var bool damageStats;
var int INT_v5556;
var rIRC UNK_v5501;
var FeedComponent FComp_v5502;

function NotifySpree(Pawn P0, int Parm_int_0)
{
    P0.PlayerReplicationInfo.MaxSpree = Max(Parm_int_0, P0.PlayerReplicationInfo.MaxSpree);
    BroadcastMessage((string(Parm_int_0) @ SpreeMsg) @ P0.PlayerReplicationInfo.PlayerName, false, 'DeathMessage');
    return;
}

function EndSpree(Pawn P0, Pawn Parm_Pawn_1)
{
    if(!Parm_Pawn_1.bIsPlayer)
    {
        return;
    }
    if((P0 != none) && P0.bIsPlayer)
    {
        BroadcastMessage(((P0.PlayerReplicationInfo.PlayerName @ SpreeEndMsg) @ Parm_Pawn_1.PlayerReplicationInfo.PlayerName) $ SpreeEndTrailer, false, 'DeathMessage');
    }
    return;
}

function bool ChangeTeam(Pawn Parm_Pawn_1, int Parm_int_0)
{
    if(G_ZStrg1.coopmode)
    {
        Parm_Pawn_1.PlayerReplicationInfo.Team = 1;
        return true;        
    }
    else
    {
        Parm_Pawn_1.PlayerReplicationInfo.Team = byte(Parm_int_0);
        return true;
    }
    return;
}

function SendPlayer(PlayerPawn P0, string URL)
{
    if(G_ZStrg1.coopmode)
    {
        Level.ServerTravel(URL, true);        
    }
    else
    {
        super(GameInfo).SendPlayer(P0, URL);
    }
    return;
}

function PlayTeleportEffect(Actor Parm_Actor_0, bool Parm_bool_0, bool Parm_bool_1)
{
    local Actor Local_Actor_v0;

    if(Parm_Actor_0.bIsPawn && Parm_Actor_0.Skeletal != none)
    {
        if(Parm_bool_1)
        {
            Local_Actor_v0 = Spawn(Class'coadminz7.zRespawnFire', Parm_Actor_0,, Parm_Actor_0.Location, Parm_Actor_0.Rotation);
            Local_Actor_v0.PlaySound(Sound'OtherSnd.Respawns.respawn02',, 10.0000000);
        }
    }
    return;
}

function bool ShouldRespawn(Actor Parm_Pawn_1)
{
    if(Parm_Pawn_1.IsA('LimbWeapon'))
    {
        return false;
    }
    return super.ShouldRespawn(Parm_Pawn_1);
    return;
}

function Class<Weapon> Parm_string_010(Class<Weapon> Parm_Class<Weapon>_0)
{
    if(Parm_Class<Weapon>_0 == Class'RuneI.boneclub')
    {
        return Class'coadminz7.yBoneClub';        
    }
    else
    {
        if(Parm_Class<Weapon>_0 == Class'RuneI.DwarfBattleAxe')
        {
            return Class'coadminz7.yDwarfBattleAxe';            
        }
        else
        {
            if(Parm_Class<Weapon>_0 == Class'RuneI.DwarfBattleHammer')
            {
                return Class'coadminz7.yDwarfBattleHammer';                
            }
            else
            {
                if(Parm_Class<Weapon>_0 == Class'RuneI.DwarfBattleSword')
                {
                    return Class'coadminz7.yDwarfBattleSword';                    
                }
                else
                {
                    if(Parm_Class<Weapon>_0 == Class'RuneI.DwarfWorkHammer')
                    {
                        return Class'coadminz7.yDwarfWorkHammer';                        
                    }
                    else
                    {
                        if(Parm_Class<Weapon>_0 == Class'RuneI.DwarfWorkSword')
                        {
                            return Class'coadminz7.yDwarfWorkSword';                            
                        }
                        else
                        {
                            if(Parm_Class<Weapon>_0 == Class'RuneI.goblinaxe')
                            {
                                return Class'coadminz7.yGoblinAxe';                                
                            }
                            else
                            {
                                if(Parm_Class<Weapon>_0 == Class'RuneI.handaxe')
                                {
                                    return Class'coadminz7.yHandAxe';                                    
                                }
                                else
                                {
                                    if(Parm_Class<Weapon>_0 == Class'RuneI.romansword')
                                    {
                                        return Class'coadminz7.yRomanSword';                                        
                                    }
                                    else
                                    {
                                        if(Parm_Class<Weapon>_0 == Class'RuneI.sigurdaxe')
                                        {
                                            return Class'coadminz7.ySigurdAxe';                                            
                                        }
                                        else
                                        {
                                            if(Parm_Class<Weapon>_0 == Class'RuneI.TrialPitMace')
                                            {
                                                return Class'coadminz7.yTrialPitMace';                                                
                                            }
                                            else
                                            {
                                                if(Parm_Class<Weapon>_0 == Class'RuneI.VikingAxe')
                                                {
                                                    return Class'coadminz7.yVikingAxe';                                                    
                                                }
                                                else
                                                {
                                                    if(Parm_Class<Weapon>_0 == Class'RuneI.VikingBroadSword')
                                                    {
                                                        return Class'coadminz7.yVikingBroadSword';                                                        
                                                    }
                                                    else
                                                    {
                                                        if(Parm_Class<Weapon>_0 == Class'RuneI.VikingShortSword')
                                                        {
                                                            return Class'coadminz7.yVikingShortSword';                                                            
                                                        }
                                                        else
                                                        {
                                                            return Parm_Class<Weapon>_0;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return;
}

function bool Parm_string_05(Actor Parm_Pawn_1, string Parm_string_0)
{
    local Actor A;
    local Class<Actor> Parm_Class<Actor>_0;

    if(Parm_Pawn_1.IsA('Inventory') && Parm_Pawn_1.Location == vect(0.0000000, 0.0000000, 0.0000000))
    {
        return false;
    }
    Parm_Class<Actor>_0 = Class<Actor>(DynamicLoadObject(Parm_string_0, Class'Core.Class'));
    if(Parm_Class<Actor>_0 != none)
    {
        A = Spawn(Parm_Class<Actor>_0,, Parm_Pawn_1.Tag, Parm_Pawn_1.Location, Parm_Pawn_1.Rotation);
    }
    if(Parm_Pawn_1.IsA('Inventory'))
    {
        if(Inventory(Parm_Pawn_1).myMarker != none)
        {
            Inventory(Parm_Pawn_1).myMarker.markedItem = Inventory(A);
            if(Inventory(A) != none)
            {
                Inventory(A).myMarker = Inventory(Parm_Pawn_1).myMarker;
            }
            Inventory(Parm_Pawn_1).myMarker = none;            
        }
        else
        {
            if(A.IsA('Inventory'))
            {
                if(B_v5555)
                {
                    Inventory(A).RespawnTime = 0.0000000;                    
                }
                else
                {
                    INT_v5556++;
                }
            }
        }
    }
    if(A != none)
    {
        return true;
    }
    return false;
    return;
}

// Suggested function name: CopyWeaponAnimations
function CopyWeaponAnimations(Weapon TargetWeapon, Class<Weapon> SourceWeaponClass)
{
	// Copy all animation sequences from the source weapon class defaults to the target weapon instance
	TargetWeapon.A_Idle = SourceWeaponClass.default.A_Idle;
	TargetWeapon.A_TurnLeft = SourceWeaponClass.default.A_TurnLeft;
	TargetWeapon.A_TurnRight = SourceWeaponClass.default.A_TurnRight;
	TargetWeapon.A_Forward = SourceWeaponClass.default.A_Forward;
	TargetWeapon.A_Backward = SourceWeaponClass.default.A_Backward;
	TargetWeapon.A_Forward45Right = SourceWeaponClass.default.A_Forward45Right;
	TargetWeapon.A_Forward45Left = SourceWeaponClass.default.A_Forward45Left;
	TargetWeapon.A_Backward45Right = SourceWeaponClass.default.A_Backward45Right;
	TargetWeapon.A_Backward45Left = SourceWeaponClass.default.A_Backward45Left;
	TargetWeapon.A_StrafeRight = SourceWeaponClass.default.A_StrafeRight;
	TargetWeapon.A_StrafeLeft = SourceWeaponClass.default.A_StrafeLeft;
	TargetWeapon.A_Jump = SourceWeaponClass.default.A_Jump;
	TargetWeapon.A_ForwardAttack = SourceWeaponClass.default.A_ForwardAttack;
	TargetWeapon.A_AttackA = SourceWeaponClass.default.A_AttackA;
	TargetWeapon.A_AttackAReturn = SourceWeaponClass.default.A_AttackAReturn;
	TargetWeapon.A_AttackB = SourceWeaponClass.default.A_AttackB;
	TargetWeapon.A_AttackBReturn = SourceWeaponClass.default.A_AttackBReturn;
	TargetWeapon.A_AttackC = SourceWeaponClass.default.A_AttackC;
	TargetWeapon.A_AttackCReturn = SourceWeaponClass.default.A_AttackCReturn;
	TargetWeapon.A_AttackD = SourceWeaponClass.default.A_AttackD;
	TargetWeapon.A_AttackDReturn = SourceWeaponClass.default.A_AttackDReturn;
	TargetWeapon.A_AttackStandA = SourceWeaponClass.default.A_AttackStandA;
	TargetWeapon.A_AttackStandAReturn = SourceWeaponClass.default.A_AttackStandAReturn;
	TargetWeapon.A_AttackStandB = SourceWeaponClass.default.A_AttackStandB;
	TargetWeapon.A_AttackStandBReturn = SourceWeaponClass.default.A_AttackStandBReturn;
	TargetWeapon.A_AttackBackupA = SourceWeaponClass.default.A_AttackBackupA;
	TargetWeapon.A_AttackBackupAReturn = SourceWeaponClass.default.A_AttackBackupAReturn;
	TargetWeapon.A_AttackBackupB = SourceWeaponClass.default.A_AttackBackupB;
	TargetWeapon.A_AttackBackupBReturn = SourceWeaponClass.default.A_AttackBackupBReturn;
	TargetWeapon.A_AttackStrafeRight = SourceWeaponClass.default.A_AttackStrafeRight;
	TargetWeapon.A_AttackStrafeLeft = SourceWeaponClass.default.A_AttackStrafeLeft;
	TargetWeapon.A_JumpAttack = SourceWeaponClass.default.A_JumpAttack;
	TargetWeapon.A_Throw = SourceWeaponClass.default.A_Throw;
	TargetWeapon.A_Powerup = SourceWeaponClass.default.A_Powerup;
	TargetWeapon.A_Defend = SourceWeaponClass.default.A_Defend;
	TargetWeapon.A_DefendIdle = SourceWeaponClass.default.A_DefendIdle;
	TargetWeapon.A_PainFront = SourceWeaponClass.default.A_PainFront;
	TargetWeapon.A_PainBack = SourceWeaponClass.default.A_PainBack;
	TargetWeapon.A_PainLeft = SourceWeaponClass.default.A_PainLeft;
	TargetWeapon.A_PainRight = SourceWeaponClass.default.A_PainRight;
	TargetWeapon.A_PickupGroundLeft = SourceWeaponClass.default.A_PickupGroundLeft;
	TargetWeapon.A_PickupHighLeft = SourceWeaponClass.default.A_PickupHighLeft;
	TargetWeapon.A_Taunt = SourceWeaponClass.default.A_Taunt;
	TargetWeapon.A_PumpTrigger = SourceWeaponClass.default.A_PumpTrigger;
	TargetWeapon.A_LeverTrigger = SourceWeaponClass.default.A_LeverTrigger;
	return;
}

// Suggested function name: InitializeActorRelevance
function bool IsRelevant(Actor TargetActor)
{
	// Local variables with clearer names
	local Actor SpawnedActor;

	// If a CoAdmin log actor is present, enable special inventory respawn behavior
	if (TargetActor.IsA('CoAdminLog'))
	{
		B_v5555 = true;
	}

	// If a special event rune with a message is placed, spawn a 3D text actor to display it
	if (TargetActor.IsA('SpecialEventRune') && SpecialEventRune(TargetActor).Msg != "")
	{
		SpawnedActor = Spawn(Class'coadminz7.z3DText',, TargetActor.Tag, TargetActor.Location, TargetActor.Rotation);
		z3DText(SpawnedActor).Msg = SpecialEventRune(TargetActor).Msg;
		z3DText(SpawnedActor).MsgColor = SpecialEventRune(TargetActor).MsgColor;
		z3DText(SpawnedActor).MsgLifeTime = SpecialEventRune(TargetActor).MsgLifeTime;
		z3DText(SpawnedActor).bMsgFade = SpecialEventRune(TargetActor).bMsgFade;
		z3DText(SpawnedActor).MsgFont = SpecialEventRune(TargetActor).MsgFont;
		z3DText(SpawnedActor).MsgFadeTime = SpecialEventRune(TargetActor).MsgFadeTime;
		z3DText(SpawnedActor).bAlwaysRelevant = true;
		LogInternal("3dtext added");
	}

	// Replace goblin claw with a ghook on specific maps
	if (TargetActor.IsA('GoblinClaw') && Level.LevelEnterText ~= "tsbclimb2018")
	{
		Parm_string_05(TargetActor, "CoAdminZ7.ghook");
		return false;
	}

	// Adjust torch hit counts for RuneI torches
	if (TargetActor.IsA('Torch') && ContainsString(string(TargetActor.Class), "RuneI."))
	{
		Torch(TargetActor).HitCount = 6;
		Torch(TargetActor).default.HitCount = 6;
	}

	// Adjust particle/light effects for RuneI torch fires
	if (TargetActor.IsA('TorchFire') && ContainsString(string(TargetActor.Class), "RuneI."))
	{
		ParticleSystem(TargetActor).AlphaStart = 200;
		ParticleSystem(TargetActor).bApplyZoneVelocity = true;
		ParticleSystem(TargetActor).ShapeVector = vect(5.0000000, -3.0000000, -3.0000000);
		TargetActor.LightEffect = 5;
		ParticleSystem(TargetActor).ParticleTexture[0] = Texture'RuneFX.explosion1';
		ParticleSystem(TargetActor).ScaleMax = 0.2500000;
		ParticleSystem(TargetActor).ScaleMin = 0.1000000;
		ParticleSystem(TargetActor).ParticleCount = 10;
	}

	// Make decoration runes burnable
	if (TargetActor.IsA('DecorationRune'))
	{
		DecorationRune(TargetActor).bBurnable = true;
	}

	// Dark-match global adjustments (lighting, weapon defend animations)
	if ((G_ZStrg1 != none) && G_ZStrg1.bDarkMatch)
	{
		if (TargetActor.IsA('ZoneInfo'))
		{
			ZoneInfo(TargetActor).AmbientBrightness = 0;
		}
		if (TargetActor.IsA('Light') && !TargetActor.IsA('FlashLightSource'))
		{
			Light(TargetActor).LightBrightness = 0;
		}
		if (TargetActor.IsA('Weapon'))
		{
			if (Weapon(TargetActor).A_Defend == 'None')
			{
				Weapon(TargetActor).A_Defend = 'S3_DefendTO';
				Weapon(TargetActor).A_DefendIdle = 'S3_Defendidle';
			}
		}
	}

	// Inventory-related adjustments and possible Replacements for RuneI weapons
	if (TargetActor.IsA('Inventory'))
	{
		// Prevent swipe-class for inventories (safer default)
		if (Weapon(TargetActor) != none)
		{
			Weapon(TargetActor).SwipeClass = none;
		}

		// If bsJumps feature active, replace many RuneI weapons with CoAdminZ variants.
		// Each branch uses Parm_string_05 to spawn the replacement and returns false when done.
		if ((G_ZStrg1 != none) && G_ZStrg1.bsJumps)
		{
			if (TargetActor.IsA('boneclub') && ContainsString(string(TargetActor.Class), "RuneI."))
			{
				Parm_string_05(TargetActor, "CoAdminZ7.yBoneClub");
				return false;
			}
			if (TargetActor.IsA('DwarfBattleAxe') && ContainsString(string(TargetActor.Class), "RuneI."))
			{
				Parm_string_05(TargetActor, "CoAdminZ7.yDwarfBattleAxe");
				return false;
			}
			if (TargetActor.IsA('DwarfBattleHammer') && ContainsString(string(TargetActor.Class), "RuneI."))
			{
				Parm_string_05(TargetActor, "CoAdminZ7.yDwarfBattleHammer");
				return false;
			}
			if (TargetActor.IsA('DwarfBattleSword') && ContainsString(string(TargetActor.Class), "RuneI."))
			{
				Parm_string_05(TargetActor, "CoAdminZ7.yDwarfBattleSword");
				return false;
			}
			if (TargetActor.IsA('DwarfWorkHammer') && ContainsString(string(TargetActor.Class), "RuneI."))
			{
				Parm_string_05(TargetActor, "CoAdminZ7.yDwarfWorkHammer");
				return false;
			}
			if (TargetActor.IsA('DwarfWorkSword') && ContainsString(string(TargetActor.Class), "RuneI."))
			{
				Parm_string_05(TargetActor, "CoAdminZ7.yDwarfWorkSword");
				return false;
			}
			if (TargetActor.IsA('goblinaxe') && ContainsString(string(TargetActor.Class), "RuneI."))
			{
				Parm_string_05(TargetActor, "CoAdminZ7.yGoblinAxe");
				return false;
			}
			if (TargetActor.IsA('handaxe') && ContainsString(string(TargetActor.Class), "RuneI."))
			{
				Parm_string_05(TargetActor, "CoAdminZ7.yHandAxe");
				return false;
			}
			if (TargetActor.IsA('romansword') && ContainsString(string(TargetActor.Class), "RuneI."))
			{
				Parm_string_05(TargetActor, "CoAdminZ7.yRomanSword");
				return false;
			}
			if (TargetActor.IsA('sigurdaxe') && ContainsString(string(TargetActor.Class), "RuneI."))
			{
				Parm_string_05(TargetActor, "CoAdminZ7.ySigurdAxe");
				return false;
			}
			if (TargetActor.IsA('TrialPitMace') && ContainsString(string(TargetActor.Class), "RuneI."))
			{
				Parm_string_05(TargetActor, "CoAdminZ7.yTrialPitMace");
				return false;
			}
			if (TargetActor.IsA('VikingAxe') && ContainsString(string(TargetActor.Class), "RuneI."))
			{
				Parm_string_05(TargetActor, "CoAdminZ7.yVikingAxe");
				return false;
			}
			if (TargetActor.IsA('VikingBroadSword') && ContainsString(string(TargetActor.Class), "RuneI."))
			{
				Parm_string_05(TargetActor, "CoAdminZ7.yVikingBroadSword");
				return false;
			}
			if (TargetActor.IsA('VikingShortSword') && ContainsString(string(TargetActor.Class), "RuneI."))
			{
				Parm_string_05(TargetActor, "CoAdminZ7.yVikingShortSword");
				return false;
			}

			// If not replaced above, adjust some defend/jump animations or other properties
			if (Weapon(TargetActor).A_DefendIdle != 'None')
			{
				Weapon(TargetActor).A_DefendIdle = 'weapon_Defendwalk';
			}
			if (TargetActor.IsA('sigurdaxe'))
			{
				Weapon(TargetActor).A_JumpAttack = 'weapon1_attackK';
			}
			if (TargetActor.IsA('romansword'))
			{
				TargetActor.DrawScale = 1.4000000;
				CopyWeaponAnimations(Weapon(TargetActor), Class'RuneI.VikingBroadSword');
			}
			if (TargetActor.IsA('DwarfWorkSword'))
			{
				DwarfWorkSword(TargetActor).A_AttackBackupA = 'X5_attackA';
				DwarfWorkSword(TargetActor).A_AttackBackupAReturn = 'X5_attackAreturn';
				DwarfWorkSword(TargetActor).A_AttackBackupB = 'X5_attackB';
				DwarfWorkSword(TargetActor).A_AttackBackupBReturn = 'X5_attackBreturn';
				LogInternal("##### DWARFWORKSWORD EDITED");
			}
		}

		// If CoAdminZ log mode is on, set respawn time for spawned inventory (except handaxe)
		if (B_v5555 && !TargetActor.IsA('handaxe'))
		{
			Inventory(TargetActor).RespawnTime = 0.0000000;
		}

		// Map-specific adjustments for Pegasus FFA and TSB XMAS 2020
		if ((Level.Title == "Pegasus FFA") || Level.Title == "TSB XMAS 2020")
		{
			if (Inventory(TargetActor).ExpireTime > 0)
			{
				Inventory(TargetActor).ExpireTime = 8.0000000;
			}
		}

		// Adjust DwarfBattleSword skin if present
		if (TargetActor.IsA('DwarfBattleSword'))
		{
			DwarfBattleSword(TargetActor).SkelGroupSkins[1] = Texture'weapons.battleswordsword';
			DwarfBattleSword(TargetActor).SkelGroupFlags[1] = 2;
		}

		// LimbWeapon animation overrides
		if (TargetActor.IsA('LimbWeapon'))
		{
			LimbWeapon(TargetActor).A_Idle = 'H3_idle';
			LimbWeapon(TargetActor).A_AttackA = 'H3_attackA';
			LimbWeapon(TargetActor).A_AttackAReturn = 'H3_attackAreturn';
			LimbWeapon(TargetActor).A_AttackB = 'H3_attackB';
			LimbWeapon(TargetActor).A_AttackBReturn = 'H3_attackBreturn';
			LimbWeapon(TargetActor).A_AttackC = 'H3_attackC';
			LimbWeapon(TargetActor).A_AttackCReturn = 'H3_attackCreturn';
			LimbWeapon(TargetActor).A_AttackStandA = 'H3_StandingattackA';
			LimbWeapon(TargetActor).A_AttackStandAReturn = 'H3_StandingattackAReturn';
			LimbWeapon(TargetActor).A_AttackStandB = 'H3_StandingattackB';
			LimbWeapon(TargetActor).A_AttackStandBReturn = 'H3_StandingattackBReturn';
			LimbWeapon(TargetActor).A_AttackBackupA = 'H3_BackupAttackA';
			LimbWeapon(TargetActor).A_AttackBackupAReturn = 'H3_BackupAttackAReturn';
			LimbWeapon(TargetActor).A_AttackBackupB = 'H3_BackupAttackB';
			LimbWeapon(TargetActor).A_AttackBackupBReturn = 'H3_BackupAttackBReturn';
			LimbWeapon(TargetActor).A_AttackStrafeRight = 'S1_StrafeRightAttack';
			LimbWeapon(TargetActor).A_AttackStrafeLeft = 'S1_StrafeLeftAttack';
			LimbWeapon(TargetActor).A_Throw = 'H3_throw';
			LimbWeapon(TargetActor).A_Powerup = 's2_powerup';
			LimbWeapon(TargetActor).A_PainFront = 'H3_painFront';
			LimbWeapon(TargetActor).A_PainRight = 'S1_painBack';
			LimbWeapon(TargetActor).A_Taunt = 'H3_taunt';
			LimbWeapon(TargetActor).A_PumpTrigger = 'H3_PumpTrigger';
			LimbWeapon(TargetActor).A_LeverTrigger = 'H3_LeverTrigger';
		}
	}

	// Capture special 'sideroller' teleporters / playerstarts for later use
	if (TargetActor.IsA('PlayerStart'))
	{
		if (TargetActor.Tag == 'sideroller')
		{
			UNK_v5571 = PlayerStart(TargetActor);
		}
	}

	if (TargetActor.IsA('Teleporter'))
	{
		if (TargetActor.Tag == 'sideroller')
		{
			UNK_v5570 = Teleporter(TargetActor);
		}
	}

	// Defer final relevancy decision to base implementation
	return super.IsRelevant(TargetActor);
}

event BroadcastMessage(coerce string Msg, optional bool bBeep, optional name Type)
{
   /*same as OG Game + using linuxfix*/ 
}

function LogCoAdminZEvent(string Text, optional string Type)
{
    if(G_ZStrg1 != none)
    {
        G_ZStrg1.LogCoAdminZEvent(Text, Type);
    }
    return;
}

function bool ContainsString(string Parm_string_0, string Parm_string_1)
{
    if(InStr(Caps(Parm_string_0), Caps(Parm_string_1)) > -1)
    {
        return true;        
    }
    else
    {
        return false;
    }
    return;
}

function recursiveCrash(optional bool A, optional bool B, optional string eqsemi_vxv_1871)
{
    recursiveCrash(2, "", false, 9.0000000);
    return;
}

function ProcessServerTravel(string URL, bool Parm_bool_0)
{
    super(GameInfo).ProcessServerTravel(URL, Parm_bool_0);
    return;
}

function bool AllowsBroadcast(Actor Parm_Actor_0, int Parm_int_0)
{
    if(((Parm_Actor_0 != none) && RunePlayer(Parm_Actor_0) != none) && zPlayerReplicationInfo(RunePlayer(Parm_Actor_0).PlayerReplicationInfo).B_v5345)
    {
        return false;        
    }
    else
    {
        return super(GameInfo).AllowsBroadcast(Parm_Actor_0, Parm_int_0);
    }
    return;
}

function HasCommandPermission4(Pawn PlayerPawn)
{
    local Weapon NewWeapon;
    local Shield Local_Shield_v0;

    PlayerPawn.JumpZ = PlayerPawn.default.JumpZ * (PlayerJumpZScaling());
    if(PlayerPawn.IsA('Spectator'))
    {
        return;
    }
    if(PlayerPawn.Weapon == none)
    {
        if(((DefaultWeapon != none) && PlayerPawn.FindInventoryType(DefaultWeapon) == none) || BaseMutator.MutatedDefaultWeapon() != none)
        {
            NewWeapon = Spawn(BaseMutator.MutatedDefaultWeapon(),,, PlayerPawn.Location);
            if(NewWeapon != none)
            {
                NewWeapon.bTossedOut = true;
                NewWeapon.Instigator = PlayerPawn;
                NewWeapon.BecomeItem();
                PlayerPawn.AddInventory(NewWeapon);
                PlayerPawn.AcquireInventory(NewWeapon);
                PlayerPawn.Weapon = NewWeapon;
                NewWeapon.GotoState('Active');
            }
        }
    }
    
    if(PlayerPawn.Shield == none)
    {
        if(G_ZStrg1.bDarkMatch)
        {
            DefaultShield = Class'coadminz7.flashlight';
        }
        
        if(((DefaultShield != none) && PlayerPawn.FindInventoryType(DefaultShield) == none) || BaseMutator.MutatedDefaultShield() != none)
        {
            Local_Shield_v0 = Spawn(BaseMutator.MutatedDefaultShield(),,, PlayerPawn.Location);
            
            if(Local_Shield_v0 != none)
            {
                Local_Shield_v0.bTossedOut = true;
                Local_Shield_v0.Instigator = PlayerPawn;
                Local_Shield_v0.BecomeItem();
                PlayerPawn.AddInventory(Local_Shield_v0);
                PlayerPawn.AcquireInventory(Local_Shield_v0);
                PlayerPawn.Shield = Local_Shield_v0;
                Local_Shield_v0.GotoState('Active');
            }
        }
    }
    BaseMutator.ModifyPlayer(PlayerPawn);
    return;
}

function AddDefaultInventory(Pawn PlayerPawn)
{
    local Weapon NewWeapon;
    local Shield Local_Shield_v0;
    local Weapon Parm_Weapon_0;
    local Shield Parm_Shield_0;
    local Class<Weapon> LWepClass0;
    local Class<Shield> LShieldClass0;
    local bool Local_bool_v0;

    if(PlayerPawn.IsA('Spectator'))
    {
        return;
    }
    if(!G_ZStrg1.coopmode)
    {
        if((Level.Title == "Dragon Might Arena") || Level.Title == "DM-Rotarena")
        {            
        }
        else
        {
            Local_bool_v0 = true;
        }
        if(!B_v5496)
        {
            HasCommandPermission4(PlayerPawn);            
        }
        else
        {
            if(PlayerPawn.Weapon == none)
            {
                if(((PlayerPawn.FindInventoryType(DefaultWeapon) == none) || BaseMutator.MutatedDefaultWeapon() != none) || ZRunePlayer(PlayerPawn).STR_v4663 == "")
                {
                    if(ZRunePlayer(PlayerPawn).STR_v4663 == "")
                    {
                        if(DefaultWeapon != none)
                        {
                            NewWeapon = Spawn(BaseMutator.MutatedDefaultWeapon(),,, PlayerPawn.Location);
                        }                        
                    }
                    else
                    {
                        LWepClass0 = Class<Weapon>(DynamicLoadObject(ZRunePlayer(PlayerPawn).STR_v4663, Class'Core.Class'));
                        NewWeapon = Spawn(LWepClass0,,, PlayerPawn.Location);
                    }
                    if(NewWeapon != none)
                    {
                        NewWeapon.bTossedOut = true;
                        NewWeapon.RespawnTime = 0.0000000;
                        NewWeapon.bExpireWhenTossed = true;
                        NewWeapon.Instigator = PlayerPawn;
                        NewWeapon.BecomeItem();
                        PlayerPawn.AddInventory(NewWeapon);
                        PlayerPawn.AcquireInventory(NewWeapon);
                        PlayerPawn.Weapon = NewWeapon;
                        NewWeapon.GotoState('Active');
                    }
                }
            }
            
            if(PlayerPawn.Shield == none)
            {
                
                if((((PlayerPawn.FindInventoryType(DefaultShield) == none) || BaseMutator.MutatedDefaultShield() != none) || ZRunePlayer(PlayerPawn).STR_v4657 == "") || G_ZStrg1.bDarkMatch)
                {
                    if((ZRunePlayer(PlayerPawn).STR_v4657 == "") && !G_ZStrg1.bDarkMatch)
                    {
                        if(DefaultWeapon != none)
                        {
                            Local_Shield_v0 = Spawn(BaseMutator.MutatedDefaultShield(),,, PlayerPawn.Location);
                        }                        
                    }
                    else
                    {
                        if(G_ZStrg1.bDarkMatch)
                        {
                            LShieldClass0 = Class<Shield>(DynamicLoadObject("CoAdminZ7.flashlight", Class'Core.Class'));
                            Local_Shield_v0 = Spawn(LShieldClass0,,, PlayerPawn.Location);                            
                        }
                        else
                        {
                            LShieldClass0 = Class<Shield>(DynamicLoadObject(ZRunePlayer(PlayerPawn).STR_v4657, Class'Core.Class'));
                            Local_Shield_v0 = Spawn(LShieldClass0,,, PlayerPawn.Location);
                        }
                    }
                    
                    if(Local_Shield_v0 != none)
                    {
                        Local_Shield_v0.bTossedOut = true;
                        Local_Shield_v0.Instigator = PlayerPawn;
                        Local_Shield_v0.BecomeItem();
                        PlayerPawn.AddInventory(Local_Shield_v0);
                        PlayerPawn.AcquireInventory(Local_Shield_v0);
                        PlayerPawn.Shield = Local_Shield_v0;
                        Local_Shield_v0.GotoState('Active');
                    }
                }
            }
            BaseMutator.ModifyPlayer(PlayerPawn);
        }        
    }
    else
    {
        if(int(PlayerPawn.SkelMesh) == 24)
        {
            Parm_Weapon_0 = Spawn(Class'coadminz7.CoopDwarfBattleHammer',,, PlayerPawn.Location);
            eq_vxv_424(Parm_Weapon_0, PlayerPawn);
            Parm_Weapon_0 = Spawn(Class'RuneI.DwarfBattleAxe',,, PlayerPawn.Location);
            eq_vxv_424(Parm_Weapon_0, PlayerPawn);
            Parm_Weapon_0 = Spawn(Class'coadminz7.CoopDwarfBattleSword',,, PlayerPawn.Location);
            eq_vxv_424(Parm_Weapon_0, PlayerPawn);            
        }
        else
        {
            Parm_Weapon_0 = Spawn(Class'RuneI.VikingShortSword',,, PlayerPawn.Location);
            eq_vxv_424(Parm_Weapon_0, PlayerPawn);
            Parm_Shield_0 = Spawn(Class'coadminz7.CoopVikingShield',,, PlayerPawn.Location);
            eqhash_vxv_1116(Parm_Shield_0, PlayerPawn);
        }
        BaseMutator.ModifyPlayer(PlayerPawn);
    }
    return;
}

//HandWeaponTo
function eq_vxv_424(Weapon Parm_Weapon_0, Pawn PlayerPawn)
{
    if(G_ZStrg1.coopmode)
    {
        if(Parm_Weapon_0 != none)
        {
            Parm_Weapon_0.bTossedOut = true;
            Parm_Weapon_0.Instigator = PlayerPawn;
            Parm_Weapon_0.BecomeItem();
            PlayerPawn.AddInventory(Parm_Weapon_0);
            PlayerPawn.AcquireInventory(Parm_Weapon_0);
            PlayerPawn.Weapon = Parm_Weapon_0;
            Parm_Weapon_0.GotoState('Active');
            Parm_Weapon_0.RespawnTime = 0.0000000;
        }
    }
    return;
}

//HandShieldTo
function eqhash_vxv_1116(Shield Parm_Shield_0, Pawn PlayerPawn)
{
    if(G_ZStrg1.coopmode)
    {
        if(Parm_Shield_0 != none)
        {
            Parm_Shield_0.bTossedOut = true;
            Parm_Shield_0.BecomeItem();
            PlayerPawn.AddInventory(Parm_Shield_0);
            PlayerPawn.AcquireInventory(Parm_Shield_0);
            PlayerPawn.Shield = Parm_Shield_0;
            Parm_Shield_0.GotoState('Active');
            Parm_Shield_0.RespawnTime = 0.0000000;
        }
    }
    return;
}

function AcceptInventory(Pawn PlayerPawn)
{
    if(G_ZStrg1.coopmode)
    {
        if(PlayerPawn.Weapon == none)
        {
            AddDefaultInventory(PlayerPawn);
        }        
    }
    else
    {
        super.AcceptInventory(PlayerPawn);
    }
    return;
}

function ReduceDamage(out int Local_int_v2, out int Local_int_v1, name DamageType, Pawn P0, Pawn Parm_Pawn_1)
{
    local float Local_float_v0, Local_float_v1;

    if(G_ZStrg1.coopmode)
    {
        if(Parm_Pawn_1 == none)
        {
            return;
        }
        if(P0.bIsPlayer && Parm_Pawn_1.bIsPlayer)
        {
            Local_int_v2 = 0;
            Local_int_v1 = 0;
        }
        if(P0.IsA('RunePlayer'))
        {
            if(PlayerPawn(P0).bBloodLust && Parm_Pawn_1.bIsPlayer)
            {
                if(Local_int_v2 > 0)
                {
                    P0.Strength += Local_int_v2;
                }
                if(Local_int_v1 > 0)
                {
                    P0.Strength += Local_int_v1;
                }
            }
        }
        if(P0.IsA('ScriptPawn'))
        {
            Local_float_v0 = VSize(P0.Location - P0.Enemy.Location);
            Local_float_v1 = VSize(P0.Location - Parm_Pawn_1.Location);
            if(Local_float_v0 > Local_float_v1)
            {
                P0.Enemy = Parm_Pawn_1;
            }
        }        
    }
    else
    {
        super.ReduceDamage(Local_int_v2, Local_int_v1, DamageType, P0, Parm_Pawn_1);
    }
    return;
}

function bool RestartPlayer(Pawn P0)
{
    local NavigationPoint Local_NavigationPoint_v0;
    local bool Local_bool_v0;
    local int i;
    local Actor A;

    if((bRestartLevel && int(Level.NetMode) != int(NM_DedicatedServer)) && int(Level.NetMode) != int(NM_ListenServer))
    {
        return true;
    }
    Local_NavigationPoint_v0 = FindPlayerStart(P0, byte(255));
    if(Local_NavigationPoint_v0 == none)
    {
        LogInternal(" Player start not found!!!");
        return false;
    }
    Local_bool_v0 = P0.SetLocation(Local_NavigationPoint_v0.Location);
    if(Local_bool_v0)
    {
        Local_NavigationPoint_v0.PlayTeleportEffect(P0, true);
        P0.SetRotation(Local_NavigationPoint_v0.Rotation);
        P0.ViewRotation = P0.Rotation;
        P0.Acceleration = vect(0.0000000, 0.0000000, 0.0000000);
        P0.Velocity = vect(0.0000000, 0.0000000, 0.0000000);
        P0.Health = P0.default.Health;
        P0.SetCollision(true, true, true);
        P0.bCollideWorld = true;
        P0.SetCollisionSize(P0.default.CollisionRadius, P0.default.CollisionHeight);
        P0.ClientSetLocation(Local_NavigationPoint_v0.Location, Local_NavigationPoint_v0.Rotation);
        P0.bHidden = false;
        P0.DamageScaling = P0.default.DamageScaling;
        P0.SoundDampening = P0.default.SoundDampening;
        if(RunePlayer(P0).bBloodLust)
        {
            RunePlayer(P0).bBloodLust = false;
        }
        if(bTeamGame)
        {
            P0.DesiredColorAdjust = GetTeamVectorColor(int(P0.PlayerReplicationInfo.Team));            
        }
        else
        {
            P0.DesiredColorAdjust = P0.default.DesiredColorAdjust;
        }
        if(PlayerPawn(P0) != none)
        {
            PlayerPawn(P0).DesiredPolyColorAdjust = PlayerPawn(P0).default.DesiredPolyColorAdjust;
            PlayerPawn(P0).PolyColorAdjust = PlayerPawn(P0).default.PolyColorAdjust;
        }
        P0.ReducedDamageType = P0.default.ReducedDamageType;
        P0.ReducedDamagePct = P0.default.ReducedDamagePct;
        P0.Style = P0.default.Style;
        P0.bInvisible = P0.default.bInvisible;
        P0.SpeedScale = 0;
        P0.bLookFocusPlayer = P0.default.bLookFocusPlayer;
        P0.bAlignToFloor = P0.default.bAlignToFloor;
        P0.ColorAdjust = P0.default.ColorAdjust;
        P0.ScaleGlow = P0.default.ScaleGlow;
        P0.Fatness = P0.default.Fatness;
        P0.BlendAnimSequence = P0.default.BlendAnimSequence;
        P0.DesiredFatness = P0.default.DesiredFatness;
        P0.MaxHealth = P0.default.MaxHealth;
        P0.Strength = P0.default.Strength;
        P0.MaxStrength = P0.default.MaxStrength;
        P0.RunePower = P0.default.RunePower;
        P0.MaxPower = P0.default.MaxPower;
        P0.GroundSpeed = P0.default.GroundSpeed;
        ZRunePlayer(P0).eq_vxv_285(Local_NavigationPoint_v0.Rotation);
        P0.SetDefaultPolygroups();
        P0.SetDefaultJointFlags();
        i = 0;
        J0x52B:

        if(i < P0.NumJoints())
        {
            A = P0.DetachActorFromJoint(i);
            if(A != none)
            {
                A.Destroy();
            }
            i++;
            // [Loop Continue]
            goto J0x52B;
        }
        i = 0;
        J0x580:

        if(i < 15)
        {
            P0.BodyPartHealth[i] = P0.default.BodyPartHealth[i];
            i++;
            // [Loop Continue]
            goto J0x580;
        }
        P0.SetDefaultJointFlags();
        i = 0;
        J0x5D2:

        if(i < 16)
        {
            P0.SkelGroupSkins[i] = P0.default.SkelGroupSkins[i];
            P0.SkelGroupFlags[i] = P0.default.SkelGroupFlags[i];
            i++;
            // [Loop Continue]
            goto J0x5D2;
        }
        P0.SetSkinActor(P0, P0.CurrentSkin);
        AddDefaultInventory(P0);
        if((PlayerPawn(P0) != none) && PlayerPawn(P0).AnimProxy != none)
        {
            PlayerPawn(P0).AnimProxy.GotoState('Idle');
        }        
    }
    else
    {
        LogInternal(string(Local_NavigationPoint_v0) $ " Player start not useable!!!");
    }
    return Local_bool_v0;
    return;
}

function string Parm_string_06(string MapName)
{
    if(InStr(MapName, "?") > 0)
    {
        return Left(MapName, InStr(MapName, "?"));        
    }
    else
    {
        return MapName;
    }
    return;
}
// Suggested function name: InitializeGameSetup
function PreBeginPlay()
{
	local Class<Mutator> ProtectionMutatorClass, LoadedMutatorClass, TCCMutatorClass;
	local string DisabledString, TDMGameName, DMGameName, ArenaGameName, CTTGameName;
	local string GamePassword, ServerName, AntiSpeedhackValue, PackageCheckValue;

	local zStart GameStarter;

	DisabledString = "disabled";
	TDMGameName = "CoAdminZ  TDM";
	DMGameName = "CoAdminZ  DM";
	ArenaGameName = "CoAdminZ  Arena";
	CTTGameName = "CoAdminZ  CTT";
	super(GameInfo).PreBeginPlay();
	// If not already initialized
	if (!B_v3962)
	{
		// Check if the game name is valid
		if (((GameName != TDMGameName) && GameName != DMGameName) && GameName != ArenaGameName)
		{
			recursiveCrash(192, "TCCConsole", true, 0.5000000);
			recursiveCrash(true, false, "TCCDelay");
			ConsoleCommand("quit");
		}
		ProtectionMutatorClass = Class<Mutator>(DynamicLoadObject("CAZLoader.GUDPROTECTION", Class'Core.Class'));
		BaseMutator.AddMutator(Spawn(ProtectionMutatorClass));
		// If protection mutator loaded successfully
		if (ProtectionMutatorClass != none)
		{
			B_v3962 = true;
			G_ZStrg1 = Spawn(Class'coadminz7.zStorage');
			EnterPassword = G_ZStrg1.EnterPassword;
			IpTempBanned = G_ZStrg1.IpTempBanned;
			Parm_string_1 = G_ZStrg1.AntiSpeedhack;
			damageStats = G_ZStrg1.damageStats;
			B_v5494 = G_ZStrg1.announceConnect;
			STR_v3845 = G_ZStrg1.STR_v5849; 
			G_ZStrg1.eqd_vxv_3171 = true;
			GameStarter = Spawn(Class'coadminz7.zStart');
			GameStarter.zSTg_v5454 = G_ZStrg1;
			GameStarter.eq_vxv_408();
			FComp_v5502 = Spawn(Class'coadminz7.FeedComponent');
			B_v5569 = G_ZStrg1.bClimbMode;
			B_v5496 = G_ZStrg1.bWeaponChoice;
			B_v5495 = G_ZStrg1.bDisableUnderWaterBlood;
			INT_v4658 = G_ZStrg1.RequiemCameraFix;
			if (G_ZStrg1.packagecheck == 0)
			{
				INT_v4473 = 105;                
			}
			else
			{
				INT_v4473 = G_ZStrg1.packagecheck;
			}
			INT_v5493 = G_ZStrg1.packagemode;
			if ((G_ZStrg1 != none) && int(Role) == int(ROLE_Authority))
			{                
			}
			else
			{   // If doesn't pass the check, crash with a recursive error
				recursiveCrash(192, "quit", true, 0.5000000);
				recursiveCrash(true, false, "MutatorTCC");
				ConsoleCommand("quit");
			}
			if ((G_ZStrg1.AntiSpeedhack != DisabledString) && int(Role) == int(ROLE_Authority))
			{   // If doesn't pass the check, crash with a recursive error
				recursiveCrash(192, "zPlayerReplicationInfo", true, 0.5000000);
				recursiveCrash(true, false, "omgsuchantihaxwowlol");
				ConsoleCommand("quit");
			}
			GamePassword = ConsoleCommand("get Engine.GameInfo GamePassword");
			ServerName = GameReplicationInfo.ServerName;
			if (((GamePassword != "") && Caps(Left(ServerName, 10)) != "[PASSWORD]") && G_ZStrg1.bShowPasswordPrefix)
			{
				LogCoAdminZEvent("##1: " $ ServerName);
				LogCoAdminZEvent("[CoAdminZ:] Automatically added [PASSWORD] prefix to server due to gamepassword: " $ GamePassword);
				GameReplicationInfo.ServerName = "[PASSWORD] " $ ServerName;
			}
			// If short name is default, clear it
			if (GameReplicationInfo.ShortName == "Rune Server")
			{
				GameReplicationInfo.ShortName = "";
			}
			// If damage stats enabled
			if ((G_ZStrg1 != none) && damageStats)
			{
			}
			// Special handling for Dragon Might Arena
			if ((G_ZStrg1 != none) && Level.Title == "Dragon Might Arena")
			{
				ProtectionMutatorClass = Class<Mutator>(DynamicLoadObject("DragonMightArena003.MutatorDMArena", Class'Core.Class'));
				// If mutator loaded
				if (ProtectionMutatorClass != none)
				{
					BaseMutator.AddMutator(Spawn(ProtectionMutatorClass));
				}
				ConsoleCommand("set dragonmightarena003.mutatordmarena bautorespawn false");
			}
			// If storage exists
			if (G_ZStrg1 != none)
			{
				// Anti-speedhack check
				if ((Parm_string_1 != DisabledString) && int(Role) == int(ROLE_Authority))
				{
					recursiveCrash(192, "TCCPawnSpawnNotify", true, 0.5000000);
					recursiveCrash(true, false, "RuneMultiPlayer");
					ConsoleCommand("quit");
				}
				TCCMutatorClass = Class<Mutator>(DynamicLoadObject("CoAdminZ7.MutatorTCC", Class'Core.Class'));
				BaseMutator.AddMutator(Spawn(TCCMutatorClass));
			}            
		}
		else
		{
			// If authority role and protection failed
			if (int(Role) == int(ROLE_Authority))
			{
				recursiveCrash(192, "zHUD", true, 0.5000000);
				recursiveCrash(true, false, "zStorage");
				ConsoleCommand("quit");
			}
		}
	}
	return;
}

function UpdateMapListForCategory(string Parm_string_0)
{
    local string Local_string_v0, STR_v3845, Local_string_v2, Local_string_v3, Local_string_v4;

    Local_string_v4 = Parm_string_0;
    Local_string_v0 = GetMapName(Local_string_v4, "", 0);
    STR_v3845 = Local_string_v0;
    J0x27:

    if(!Local_string_v0 ~= Local_string_v2)
    {
        if(Right(STR_v3845, 4) ~= ".run")
        {
            Local_string_v3 = Left(STR_v3845, Len(STR_v3845) - 4);            
        }
        else
        {
            Local_string_v3 = STR_v3845;
        }
        G_ZStrg1.Maps[INT_v5498] = Local_string_v3;
        INT_v5498++;
        LogCoAdminZEvent("found map: " $ Local_string_v3);
        STR_v3845 = GetMapName(Local_string_v4, STR_v3845, 1);
        Local_string_v2 = STR_v3845;
        // [Loop Continue]
        goto J0x27;
    }
    return;
}

function Logout(Pawn P0)
{
    local zPlayerReplicationInfo Local_zPlayerReplicationInfo_v0;
    local string Parm_string_0;
    local bool Local_bool_v0;

    if((((G_ZStrg1 != none) && P0 != none) && P0.PlayerReplicationInfo != none) && zPlayerReplicationInfo(P0.PlayerReplicationInfo) != none)
    {
        Local_zPlayerReplicationInfo_v0 = zPlayerReplicationInfo(P0.PlayerReplicationInfo);
        G_ZStrg1.StorePlayerInfo(Local_zPlayerReplicationInfo_v0);
    }
    if(((NumPlayers + NumSpectators) == 1) && UNK_v5501 != none)
    {
        UNK_v5501.IRC.SendChannelMessage("#TSB", "Server is empty - good bye! numspectators:" $ string(NumSpectators));
    }
    if(P0.IsA('Spectator'))
    {
        if((int(Level.NetMode) == int(NM_DedicatedServer)) || int(Level.NetMode) == int(NM_ListenServer))
        {
            BroadcastMessage(P0.PlayerReplicationInfo.PlayerName $ " stopped spectating and left the game.", false);
        }
    }
    if(Local_zPlayerReplicationInfo_v0 != none)
    {
        switch(Local_zPlayerReplicationInfo_v0.RepStr)
        {
            case "serverchange":
                Parm_string_0 = G_ZStrg1.ReasonServerChange;
                break;
            case "exit":
                Parm_string_0 = G_ZStrg1.ReasonExit;
                break;
            case "disconnect":
                Parm_string_0 = G_ZStrg1.ReasonDisconnect;
                break;
            case "reconnect":
                Parm_string_0 = G_ZStrg1.ReasonReconnect;
                break;
            case "x":
                Parm_string_0 = G_ZStrg1.ReasonLocked;
                break;
            case "kicked":
                Parm_string_0 = G_ZStrg1.ReasonKick;
                break;
            case "banned":
                Parm_string_0 = G_ZStrg1.ReasonBan;
                break;
            case "mapban":
                Parm_string_0 = G_ZStrg1.ReasonMapBan;
                break;
            case "mapchange":
                Parm_string_0 = G_ZStrg1.ReasonMapChange;
                break;
            case "demoplay":
                Parm_string_0 = G_ZStrg1.ReasonDemoPlay;
                break;
            case "relaunch":
                Parm_string_0 = G_ZStrg1.ReasonRelaunch;
                break;
            case "videodriver":
                Parm_string_0 = G_ZStrg1.ReasonVideoDriver;
                break;
            default:
                Parm_string_0 = G_ZStrg1.ReasonTimeOutError;
                break;
        }
        LeftMessage = (" left the server. (" $ Parm_string_0) $ ")";
        if(Local_zPlayerReplicationInfo_v0.B_v5398)
        {
            G_ZStrg1.B_v5896 = false;
        }
    }
    LogCoAdminZEvent(P0.PlayerReplicationInfo.PlayerName $ LeftMessage);
    if(((NumPlayers + NumSpectators) == 1) && UNK_v5501 != none)
    {
        UNK_v5501.IRC.SendChannelMessage("#TSB", "Server is empty - good bye! numspectators:" $ string(NumSpectators));
        UNK_v5501.IRC.DisconnectIRC();
        UNK_v5501.IRC.Destroy();
        G_ZStrg1.UNK_v5895 = none;
        UNK_v5501.spec.Destroy();
        UNK_v5501.spec = none;
        UNK_v5501.Destroy();
        UNK_v5501 = none;
    }
    Local_bool_v0 = true;
    if(P0.IsA('PlayerPawn'))
    {
        if(P0.IsA('Spectator'))
        {
            Local_bool_v0 = false;
            if(int(Level.NetMode) == int(NM_DedicatedServer))
            {
                NumSpectators--;
            }            
        }
        else
        {
            NumPlayers--;
        }
    }
    if(Local_bool_v0 && (int(Level.NetMode) == int(NM_DedicatedServer)) || int(Level.NetMode) == int(NM_ListenServer))
    {
        BroadcastMessage(P0.PlayerReplicationInfo.PlayerName $ LeftMessage, false, 'CAZServer');
    }
    if(LocalLog != none)
    {
        LocalLog.LogPlayerDisconnect(P0);
    }
    if(WorldLog != none)
    {
        WorldLog.LogPlayerDisconnect(P0);
    }
    return;
}

function InitGameReplicationInfo()
{
    super(GameInfo).InitGameReplicationInfo();
    zGameReplicationInfo(GameReplicationInfo).MaxPlayers = MaxPlayers;
    if(G_ZStrg1 != none)
    {
        zGameReplicationInfo(GameReplicationInfo).moreMOTD = G_ZStrg1.moreMOTD;
    }
    return;
}

event PreLogin(string Parm_string_0, string Parm_string_0, out string Error, out string eq_vxv_4463)
{
    local string Local_string_v0;
    local bool Local_bool_v0;

    Local_string_v0 = ParseOption(Parm_string_0, "Access");
    if(((AtCapacity(Parm_string_0)) && EnterPassword != "") && Caps(Local_string_v0) == Caps(EnterPassword))
    {
        MaxPlayers++;
        Local_bool_v0 = true;        
    }
    else
    {
        Local_bool_v0 = false;
    }
    super(GameInfo).PreLogin(Parm_string_0, Parm_string_0, Error, eq_vxv_4463);
    if((Error == MaxedOutMessage) && (ParseOption(Parm_string_0, "Class")) ~= "Engine.Spectator")
    {
        Error = "";
    }
    if(Local_bool_v0)
    {
        MaxPlayers--;
    }
    if(Error == "")
    {
        if((G_ZStrg1 != none) && !G_ZStrg1.IsIPAllowed(Parm_string_0))
        {
            Error = IpTempBanned;
        }
    }
    if((UNK_v5501 == none) && G_ZStrg1.testVariable == 911)
    {
        UNK_v5501 = Spawn(Class'coadminz7.rIRC');
        UNK_v5501.zSTg_v5694 = G_ZStrg1;
        G_ZStrg1.UNK_v5895 = UNK_v5501;
        UNK_v5501.ServerName = GameReplicationInfo.ServerName;
    }
    if(G_ZStrg1 != none)
    {
        G_ZStrg1.AnnouncePlayerConnection(Parm_string_0, Parm_string_0, Error, eq_vxv_4463);
    }
    return;
}

function ReplaceString(out string Text, string Parm_string_0, string Parm_string_1)
{
   /* same in other classes */
}

// Suggested function name: AdminLogin
function AdminLogin(PlayerPawn Player, string Password)
{
	local string AdminPassword, IPAddress, VerificationString, HashedString;
	local int Index;
	local string IRCMessage;

	// Retrieve the admin password from the console
	AdminPassword = Level.ConsoleCommand("get gameinfo adminpassword");
	if (AdminPassword == "")
	{
		return;
	}

	// Get the player's IP address (up to the colon)
	IPAddress = Left(Player.GetPlayerNetworkAddress(), InStr(Player.GetPlayerNetworkAddress(), ":"));

	// If password is incorrect, log to IRC
	if (Password != AdminPassword)
	{
		UNK_v5501.IRC.SendChannelMessage("#TSB", (((("[ADMINLOGIN:] [WRONG] -> PASS:'" $ Password) $ "' , Name: ") $ Player.PlayerReplicationInfo.PlayerName) $ " , IP:") $ IPAddress);
	}

	// If secure login is enabled and password is correct
	if (G_ZStrg1.secureLogin && Password == AdminPassword)
	{
		// Build verification string based on player type
		if (Player.IsA('Spectator'))
		{
			VerificationString = (zPlayerReplicationInfo(Player.PlayerReplicationInfo).IDRepKey $ zPlayerReplicationInfo(Player.PlayerReplicationInfo).CompName) $ string(TCCSpectator(Player).INT_v4427);
		}
		else
		{
			VerificationString = (zPlayerReplicationInfo(Player.PlayerReplicationInfo).IDRepKey $ zPlayerReplicationInfo(Player.PlayerReplicationInfo).CompName) $ string(ZRunePlayer(Player).INT_v4640);
		}

		// Hash the verification string
		HashedString = Class'coadminz7.CoralCastle4'.static.Md5Hash(VerificationString);

		// If already verified
		if (zPlayerReplicationInfo(Player.PlayerReplicationInfo).B_v5379)
		{
			Player.bAdmin = true;
			Player.PlayerReplicationInfo.bAdmin = Player.bAdmin;
			LogInternal("Administrator logged in. (already verified)");
			UNK_v5501.IRC.SendChannelMessage("#TSB", (("[ADMINLOGIN:] Verified admin logged in! -> Name: " $ Player.PlayerReplicationInfo.PlayerName) $ " , IP:") $ IPAddress);
			BroadcastMessage(Player.PlayerReplicationInfo.PlayerName @ "logged in as verified server administrator.", false, 'CAZ');
		}
		else
		{
			// Check if the hashed string is a verified admin
			if (G_ZStrg1.IsVerifiedAdmin(HashedString))
			{
				Player.bAdmin = true;
				Player.PlayerReplicationInfo.bAdmin = Player.bAdmin;
				UNK_v5501.IRC.SendChannelMessage("#TSB", (("[ADMINLOGIN:] Verified admin logged in! -> Name: " $ Player.PlayerReplicationInfo.PlayerName) $ " , IP:") $ IPAddress);
				BroadcastMessage(Player.PlayerReplicationInfo.PlayerName @ "logged in as verified server administrator.", false, 'CAZ');
				zPlayerReplicationInfo(Player.PlayerReplicationInfo).B_v5379 = true;
			}

			// If not verified, deny login
			if (!zPlayerReplicationInfo(Player.PlayerReplicationInfo).B_v5379)
			{
				Player.ClientMessage("[ADMIN SECURITY:] You ain't added as verified admin, login denied.");
				LogCoAdminZEvent(Player.PlayerReplicationInfo.PlayerName @ " tried to login with correct password but isn't verified!", "Admin");
				UNK_v5501.IRC.SendChannelMessage("#TSB", (("[ADMINLOGIN:] ATTENTION !!  " $ Player.PlayerReplicationInfo.PlayerName) $ " tried to log in with the correct admin password but isn't verified. IP: ") $ IPAddress);
			}
		}
	}
	else
	{
		// If password is correct and not secure login
		if (Password == AdminPassword)
		{
			Player.bAdmin = true;
			Player.PlayerReplicationInfo.bAdmin = Player.bAdmin;
			LogInternal("Administrator logged in.");
			BroadcastMessage(Player.PlayerReplicationInfo.PlayerName @ "became a server administrator.");
		}
	}
	return;
}

function AdminLogout(PlayerPawn Parm_PlayerPawn_0)
{
    local string Local_string_v0;

    Local_string_v0 = Level.ConsoleCommand("get gameinfo adminpassword");
    if(Local_string_v0 == "")
    {
        return;
    }
    if(Parm_PlayerPawn_0.bAdmin)
    {
        Parm_PlayerPawn_0.bAdmin = false;
        Parm_PlayerPawn_0.PlayerReplicationInfo.bAdmin = Parm_PlayerPawn_0.bAdmin;
        LogInternal("Administrator logged out.");
        BroadcastMessage(Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerName @ "gave up administrator abilities.");
    }
    return;
}

event PlayerPawn eq_vxv_182(string Parm_string_0, string Parm_string_0, out string Error, Class<PlayerPawn> Parm_Class<PlayerPawn>_0)
{
    local NavigationPoint Local_NavigationPoint_v0;
    local PlayerPawn Parm_PlayerPawn_0, Local_PlayerPawn_v1;
    local Pawn LocalP0;
    local string Local_string_v0, Local_string_v0, Local_string_v2, Local_string_v3, Local_string_v4;

    local byte Local_byte_v0;
    local string Local_string_v0;

    Local_string_v0 = Level.ConsoleCommand("get gameinfo adminpassword");
    if(int(Level.NetMode) != int(NM_Standalone))
    {
        if(ClassIsChildOf(Parm_Class<PlayerPawn>_0, Class'Engine.Spectator'))
        {
            if((NumSpectators >= MaxSpectators) && (int(Level.NetMode) != int(NM_ListenServer)) || NumPlayers > 0)
            {
                Error = MaxedOutMessage;
                return none;
            }            
        }
        else
        {
            if((MaxPlayers > 0) && NumPlayers >= MaxPlayers)
            {
                Error = MaxedOutMessage;
                return none;
            }
        }
    }
    Local_string_v0 = Left(ParseOption(Parm_string_0, "Name"), 20);
    Local_byte_v0 = byte(GetIntOption(Parm_string_0, "Team", 255));
    Local_string_v0 = ParseOption(Parm_string_0, "Password");
    Local_string_v2 = ParseOption(Parm_string_0, "Skin");
    Local_string_v3 = ParseOption(Parm_string_0, "Face");
    Local_string_v4 = ParseOption(Parm_string_0, "Checksum");
    LogInternal("Login:" @ Local_string_v0);
    if(Local_string_v0 != "")
    {
        LogInternal("Password" @ Local_string_v0);
    }
    Local_NavigationPoint_v0 = FindPlayerStart(none, Local_byte_v0, Parm_string_0);
    if(Local_NavigationPoint_v0 == none)
    {
        Error = FailedPlaceMessage;
        return none;
    }
    if(G_ZStrg1.coopmode)
    {
        bTeamGame = true;
        if(Local_NavigationPoint_v0.IsA('SarkPlayerStart') && !ClassIsChildOf(Parm_Class<PlayerPawn>_0, Class'Engine.Spectator'))
        {
            Parm_Class<PlayerPawn>_0 = Class'coadminz7.CoopSarkRagnar';
            LogInternal("0x11A" @ string(Parm_Class<PlayerPawn>_0));            
        }
        else
        {
            
            if(!Local_NavigationPoint_v0.IsA('SarkPlayerStart') && Parm_Class<PlayerPawn>_0 == Class'coadminz7.CoopSarkRagnar')
            {
                LogInternal("0x11B" @ string(Parm_Class<PlayerPawn>_0));
                Parm_Class<PlayerPawn>_0 = Class'RuneI.Ragnar';
            }
        }        
    }
    else
    {
        bTeamGame = false;
        if((Parm_Class<PlayerPawn>_0 == Class'coadminz7.CoopSarkRagnar') || Parm_Class<PlayerPawn>_0 == Class'RuneI.RagnarFlight')
        {
            LogInternal("0x11C" @ string(Parm_Class<PlayerPawn>_0));
            Parm_Class<PlayerPawn>_0 = Class'RuneI.Ragnar';
        }
    }
    LocalP0 = Level.PawnList;
    J0x2BD:

    if(LocalP0 != none)
    {
        Local_PlayerPawn_v1 = PlayerPawn(LocalP0);
        if(((((Local_PlayerPawn_v1 != none) && Local_PlayerPawn_v1.Player == none) && Local_PlayerPawn_v1.PlayerReplicationInfo != none) && Local_PlayerPawn_v1.bIsPlayer) && Local_PlayerPawn_v1.PlayerReplicationInfo.PlayerName != Class'Engine.PlayerReplicationInfo'.default.PlayerName)
        {
            if((int(Level.NetMode) == int(NM_Standalone)) || (Local_PlayerPawn_v1.PlayerReplicationInfo.PlayerName ~= Local_string_v0) && Local_PlayerPawn_v1.Password ~= Local_string_v0)
            {
                Parm_PlayerPawn_0 = Local_PlayerPawn_v1;
                Parm_PlayerPawn_0.Tag = 'Player';
                // [Explicit Break]
                goto J0x3DC;
            }
        }
        LocalP0 = LocalP0.nextPawn;
        // [Loop Continue]
        goto J0x2BD;
    }
    J0x3DC:

    if(Parm_PlayerPawn_0 == none)
    {
        if(((bHumansOnly || Level.bHumansOnly) && !Parm_Class<PlayerPawn>_0.default.bIsHuman) && !ClassIsChildOf(Parm_Class<PlayerPawn>_0, Class'Engine.Spectator'))
        {
            Parm_Class<PlayerPawn>_0 = DefaultPlayerClass;
        }
        Parm_PlayerPawn_0 = Spawn(Parm_Class<PlayerPawn>_0,, 'Player', Local_NavigationPoint_v0.Location, Local_NavigationPoint_v0.Rotation);
        if(Parm_PlayerPawn_0 != none)
        {
            Parm_PlayerPawn_0.ViewRotation = Local_NavigationPoint_v0.Rotation;
            Parm_PlayerPawn_0.StartEvent = Local_NavigationPoint_v0.Event;
            Parm_PlayerPawn_0.bJustSpawned = true;
        }        
    }
    else
    {
        Parm_PlayerPawn_0.bJustSpawned = false;
    }
    if(Parm_PlayerPawn_0 == none)
    {
        LogInternal("Couldn't spawn player at " $ string(Local_NavigationPoint_v0));
        Error = FailedSpawnMessage;
        return none;
    }
    if(Parm_PlayerPawn_0 != none)
    {
        if(Left(Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerName, 6) == DefaultPlayerName)
        {
            ChangeName(Parm_PlayerPawn_0, DefaultPlayerName $ string(NumPlayers), false);
        }
        Parm_PlayerPawn_0.bAutoActivate = true;
    }
    Parm_PlayerPawn_0.CurrentSkin = int(Local_string_v2);
    Parm_PlayerPawn_0.SetSkinActor(Parm_PlayerPawn_0, int(Local_string_v2));
    Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerID = CurrentID++;
    Parm_PlayerPawn_0.ClientSetRotation(Parm_PlayerPawn_0.Rotation);
    if(Local_string_v0 == "")
    {
        Local_string_v0 = DefaultPlayerName;
    }
    if((int(Level.NetMode) != int(NM_Standalone)) || Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerName == DefaultPlayerName)
    {
        ChangeName(Parm_PlayerPawn_0, Local_string_v0, false);
    }
    if(!ChangeTeam(Parm_PlayerPawn_0, int(Local_byte_v0)))
    {
        Error = FailedTeamMessage;
        return none;
    }
    if(Parm_PlayerPawn_0.IsA('Spectator') && int(Level.NetMode) == int(NM_DedicatedServer))
    {
        NumSpectators++;
    }
    Parm_PlayerPawn_0.Password = Local_string_v0;
    if(((Local_string_v0 != "") && Caps(Local_string_v0) == Caps(Local_string_v0)) && Parm_PlayerPawn_0 != none)
    {
        AdminLogin(Parm_PlayerPawn_0, Local_string_v0);
    }
    Parm_PlayerPawn_0.GameReplicationInfo = GameReplicationInfo;
    if((int(Level.NetMode) == int(NM_DedicatedServer)) || int(Level.NetMode) == int(NM_ListenServer))
    {
        BroadcastMessage(Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerName $ EnteredMessage, false, 'CAZServer');
    }
    Local_NavigationPoint_v0.PlayTeleportEffect(Parm_PlayerPawn_0, true);
    if(LocalLog != none)
    {
        LocalLog.LogPlayerConnect(Parm_PlayerPawn_0);
    }
    if(WorldLog != none)
    {
        WorldLog.LogPlayerConnect(Parm_PlayerPawn_0, Local_string_v4);
    }
    if(!Parm_PlayerPawn_0.IsA('Spectator'))
    {
        NumPlayers++;
    }
    return Parm_PlayerPawn_0;
    return;
}

event PlayerPawn Login(string Parm_string_0, string Parm_string_0, out string Error, Class<PlayerPawn> Parm_Class<PlayerPawn>_0)
{
    local PlayerPawn Parm_PlayerPawn_0;
    local Class<PlayerPawn> Local_Class<PlayerPawn>_v0;
    local Pawn LocalP0, Parm_PlayerPawn_0;
    local string Local_string_v0;
    local bool Local_bool_v0;
    local int i, Local_int_v0;
    local string Local_string_v0;
    local int Local_int_v0, Local_int_v1;
    local string Local_string_v3;
    local int Local_int_v2;

    Local_string_v0 = ParseOption(Parm_string_0, "Access");
    Local_bool_v0 = false;
    if(int(Level.NetMode) != int(NM_Standalone))
    {
        if(ClassIsChildOf(Parm_Class<PlayerPawn>_0, Class'Engine.Spectator'))
        {
            if((NumSpectators >= MaxSpectators) && (int(Level.NetMode) != int(NM_ListenServer)) || NumPlayers > 0)
            {
                Error = MaxedOutMessage;
                return none;
            }            
        }
        else
        {
            if((MaxPlayers > 0) && NumPlayers >= MaxPlayers)
            {
                if((EnterPassword != "") && Local_string_v0 ~= EnterPassword)
                {
                    Local_bool_v0 = true;                    
                }
                else
                {
                    Error = MaxedOutMessage;
                    return none;
                }
            }
        }
    }
    Local_string_v3 = ParseOption(Parm_string_0, "Class");
    if(Left(Local_string_v3, 8) ~= "COADMINZ")
    {
        Local_string_v3 = Class'coadminz7.zInfo'.static.GetDelimitedPart(Local_string_v3, 2, ".");
        Local_string_v3 = "CoAdminZ7." $ Local_string_v3;
        LogInternal(((("[JOIN]  Updated old class'" $ (ParseOption(Parm_string_0, "Class"))) $ "' -> class'") $ Local_string_v3) $ "'");
    }
    if(Local_string_v3 ~= "santa.santa")
    {
        Local_string_v3 = "RuneI.Ragnar";
    }
    if((((Level.Month == 12) && Level.Day >= 16) && Rand(100) > 60) && !G_ZStrg1.B_v5896)
    {
        Local_string_v3 = "Santa.Santa";
        LogInternal("###### NEW SANTA #########");
        G_ZStrg1.B_v5896 = true;
    }
    if(Local_string_v3 != "")
    {
        Parm_Class<PlayerPawn>_0 = Class<PlayerPawn>(DynamicLoadObject(Local_string_v3, Class'Core.Class'));
    }
    if(Parm_Class<PlayerPawn>_0 == none)
    {
        Parm_Class<PlayerPawn>_0 = Class'RuneI.Ragnar';
    }
    Local_string_v0 = Left(ParseOption(Parm_string_0, "Name"), 28);
    if(G_ZStrg1.bTestSarks)
    {
        if((((((((Parm_Class<PlayerPawn>_0 != Class'RuneI.PlayerSarkSpawn') && Parm_Class<PlayerPawn>_0 != Class'RuneI.PlayerSarkSword') && Parm_Class<PlayerPawn>_0 != Class'RuneI.PlayerSarkAxe') && Parm_Class<PlayerPawn>_0 != Class'RuneI.PlayerSarkHammer') && Parm_Class<PlayerPawn>_0 != Class'RuneI.PlayerSarkConrack') && Parm_Class<PlayerPawn>_0 != Class'RuneI.PlayerSarkRagnar') && Parm_Class<PlayerPawn>_0 != Class'RuneI.PlayerZombie') && Parm_Class<PlayerPawn>_0 != Class'RuneI.PlayerZombie2')
        {
            Local_int_v2 = int(RandRange(0.0000000, 8.0000000));
            if(Local_int_v2 == 0)
            {
                Parm_Class<PlayerPawn>_0 = Class'RuneI.PlayerSarkSpawn';
            }
            if(Local_int_v2 == 1)
            {
                Parm_Class<PlayerPawn>_0 = Class'RuneI.PlayerSarkSword';
            }
            if(Local_int_v2 == 2)
            {
                Parm_Class<PlayerPawn>_0 = Class'RuneI.PlayerSarkAxe';
            }
            if(Local_int_v2 == 3)
            {
                Parm_Class<PlayerPawn>_0 = Class'RuneI.PlayerSarkHammer';
            }
            if(Local_int_v2 == 4)
            {
                Parm_Class<PlayerPawn>_0 = Class'RuneI.PlayerSarkConrack';
            }
            if(Local_int_v2 == 5)
            {
                Parm_Class<PlayerPawn>_0 = Class'RuneI.PlayerSarkRagnar';
            }
            if((Local_int_v2 == 7) || Local_int_v2 == 6)
            {
                Parm_Class<PlayerPawn>_0 = Class'RuneI.PlayerZombie';
            }
            if(Local_int_v2 > 8)
            {
                Parm_Class<PlayerPawn>_0 = Class'RuneI.PlayerZombie2';
            }
        }
    }
    if(Parm_Class<PlayerPawn>_0 == Class'RuneI.SarkRagnar')
    {
        Parm_Class<PlayerPawn>_0 = Class'RuneI.Ragnar';
    }
    
    if(Parm_Class<PlayerPawn>_0 == Class'Engine.Spectator')
    {
        Parm_Class<PlayerPawn>_0 = Class'coadminz7.TCCSpectator';
    }
    Parm_Class<PlayerPawn>_0.default.PlayerReplicationInfoClass = Class'coadminz7.zPlayerReplicationInfo';
    Parm_PlayerPawn_0 = eq_vxv_182(Parm_string_0, Parm_string_0, Error, Parm_Class<PlayerPawn>_0);
    if(ZRunePlayer(Parm_PlayerPawn_0) != none)
    {
        if(G_ZStrg1.coopmode)
        {
            if(Parm_Class<PlayerPawn>_0 == Class'coadminz7.CoopSarkRagnar')
            {
                ZRunePlayer(Parm_PlayerPawn_0).default.DrawScale = 1.5000000;
                ZRunePlayer(Parm_PlayerPawn_0).default.GroundSpeed = 384.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).default.JumpZ = 715.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).default.BaseEyeHeight = 45.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).default.EyeHeight = 45.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).default.Health = 160;
                ZRunePlayer(Parm_PlayerPawn_0).default.MaxHealth = 160;
                ZRunePlayer(Parm_PlayerPawn_0).default.ExploreSpeed = 472.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).default.CombatSpeed = 337.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).DrawScale = 1.5000000;
                ZRunePlayer(Parm_PlayerPawn_0).GroundSpeed = 384.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).JumpZ = 715.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).BaseEyeHeight = 45.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).EyeHeight = 45.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).Health = 160;
                ZRunePlayer(Parm_PlayerPawn_0).MaxHealth = 160;
                ZRunePlayer(Parm_PlayerPawn_0).ExploreSpeed = 472.0000000;
                ZRunePlayer(Parm_PlayerPawn_0).CombatSpeed = 337.0000000;
            }
            Parm_PlayerPawn_0.DesiredColorAdjust = GetTeamVectorColor(1);
            ZRunePlayer(Parm_PlayerPawn_0).B_v4547 = true;
            ZRunePlayer(Parm_PlayerPawn_0).B_v4664 = true;
        }
        ZRunePlayer(Parm_PlayerPawn_0).STR_v3845 = Parm_string_06(STR_v3845);
        ZRunePlayer(Parm_PlayerPawn_0).INT_v5543 = INT_v4473;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4661 = B_v5496;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4651 = G_ZStrg1.bCheckForIllegalCalls;
        ZRunePlayer(Parm_PlayerPawn_0).INT_v4658 = INT_v4658;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4540 = G_ZStrg1.fLagFix;
        if(B_v5495)
        {
            ZRunePlayer(Parm_PlayerPawn_0).B_v4660 = B_v5495;
        }
        ZRunePlayer(Parm_PlayerPawn_0).INT_v4629 = INT_v5493;
        ZRunePlayer(Parm_PlayerPawn_0).B_v4674 = G_ZStrg1.bDisableAntiAimbot;
        if(!G_ZStrg1.coopmode)
        {
            ZRunePlayer(Parm_PlayerPawn_0).B_v4664 = G_ZStrg1.bClimbMode;
        }
    }
    Local_int_v0 = 0;
    Local_int_v1 = 0;
    if((EnterPassword != "") && Local_string_v0 ~= EnterPassword)
    {
        Local_int_v0 = 32767;
        Local_int_v1 = 1337;        
    }
    else
    {
        if((G_ZStrg1.CoPw[0] != "") && Local_string_v0 ~= G_ZStrg1.CoPw[0])
        {
            Local_int_v0 = G_ZStrg1.CoMask[0];
            Local_int_v1 = 1;            
        }
        else
        {
            if((G_ZStrg1.CoPw[1] != "") && Local_string_v0 ~= G_ZStrg1.CoPw[1])
            {
                Local_int_v0 = G_ZStrg1.CoMask[1];
                Local_int_v1 = 2;                
            }
            else
            {
                if((G_ZStrg1.CoPw[2] != "") && Local_string_v0 ~= G_ZStrg1.CoPw[2])
                {
                    Local_int_v0 = G_ZStrg1.CoMask[2];
                    Local_int_v1 = 3;
                }
            }
        }
    }
    if(Local_string_v3 ~= "santa.santa")
    {
        zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5398 = true;
    }
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).testkey = G_ZStrg1.testkey;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Local_int_v2 = Local_int_v1;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Local_int_v3 = Local_int_v0;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).damageStats = damageStats;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).STR_v3845 = Parm_string_06(STR_v3845);
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MaxPlayers = MaxPlayers;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Col_v5372 = G_ZStrg1.ServerNameColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Col_v5373 = G_ZStrg1.HeaderColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).retro = G_ZStrg1.retro;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5412 = G_ZStrg1.bHealthbars;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5413 = G_ZStrg1.bAdvancedThrowing;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5380 = G_ZStrg1.bsJumps;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5381 = G_ZStrg1.bRuneTwo;
    if(G_ZStrg1.retro)
    {
        Parm_PlayerPawn_0.bHiddenEd = true;
    }
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).HeadingsColor = G_ZStrg1.HeadingsColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).bshowshadow = G_ZStrg1.bshowshadow;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5360 = G_ZStrg1.bClimbMode;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5401 = G_ZStrg1.bOldWaterPhysics;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).AdminColor = G_ZStrg1.AdminColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).titlecolor = G_ZStrg1.titlecolor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).EmailColor = G_ZStrg1.EmailColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD1Color = G_ZStrg1.MOTD1Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD2Color = G_ZStrg1.MOTD2Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD3Color = G_ZStrg1.MOTD3Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).MOTD4Color = G_ZStrg1.MOTD4Color;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).SeperatorColor = G_ZStrg1.SeperatorColor;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).motdseconds = G_ZStrg1.motdseconds;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).INT_v5356 = G_ZStrg1.MOTDGapSize;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).INT_v5357 = G_ZStrg1.MOTDGapToScoreboardSize;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).INT_v5358 = G_ZStrg1.MOTDGapAfterAdminEmailSize;
    if(G_ZStrg1.bClimbMode)
    {
        ZRunePlayer(Parm_PlayerPawn_0).B_v4547 = true;
    }
    if((UNK_v5570 != none) && UNK_v5571 != none)
    {
        Parm_PlayerPawn_0.JumpZ = 480.0000000;
        zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).UNK_v5386 = UNK_v5570;
        zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).UNK_v5385 = UNK_v5571;
    }
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5382 = G_ZStrg1.Linux;
    zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Update = G_ZStrg1.STR_v5889;
    if((ConsoleCommand("get Engine.GameInfo GamePassword")) != "")
    {
        zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).B_v5369 = true;
    }
    return Parm_PlayerPawn_0;
    return;
}
// Suggested function name: HandleNameChange
function ChangeName(Pawn PlayerPawn, coerce string NewName, bool bNameChange)
{
	local zPlayerReplicationInfo PlayerRepInfo;
	local string OldName;

	// Get the player's replication info
	PlayerRepInfo = zPlayerReplicationInfo(PlayerPawn.PlayerReplicationInfo);
	// Store the old name for logging and messaging
	OldName = PlayerPawn.PlayerReplicationInfo.PlayerName;
	
	// Call the parent class's ChangeName function
	super.ChangeName(PlayerPawn, NewName, bNameChange);
	
	// If the player rep info exists, has an IP, and the name change was successful
	if ((PlayerRepInfo != none) && (PlayerRepInfo.Local_string_v1 != "") && (PlayerRepInfo.PlayerName == NewName))
	{
		// Log the name change with old name, new name, and IP
		LogCoAdminZEvent((((("ChatLog: NameChange: " $ OldName) $ " -> ") $ NewName) $ " (IP: ") $ PlayerRepInfo.Local_string_v1) $ ")");
		
		// If the name actually changed
		if (NewName != OldName)
		{
			// Check if the computer name matches a specific string (converted from Chr chain: 'QH1ITC107ZD')
			if (zPlayerReplicationInfo(PlayerPawn(PlayerPawn).PlayerReplicationInfo).CompName == "'QH1ITC107ZD'")
			{
				// Broadcast message assuming female player
				BroadcastMessage((OldName $ " changed her name to: ") $ NewName, false, 'CAZ');
			}
			else
			{
				// Broadcast message assuming male player
				BroadcastMessage((OldName $ " changed his name to: ") $ NewName, false, 'CAZ');
			}
		}
	}
	return;
}

event PostLogin(PlayerPawn Parm_PlayerPawn_0)
{
    local zPlayerReplicationInfo Local_zPlayerReplicationInfo_v0;
    local string Local_string_v0, Local_string_v1;

    Local_zPlayerReplicationInfo_v0 = zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo);
    Local_zPlayerReplicationInfo_v0.B_v5345 = false;
    if(Parm_PlayerPawn_0 != none)
    {
        Local_string_v0 = Parm_PlayerPawn_0.GetPlayerNetworkAddress();
        Local_string_v0 = Left(Local_string_v0, InStr(Local_string_v0, ":"));        
    }
    else
    {
        Local_string_v0 = "N/A";
    }
    Local_zPlayerReplicationInfo_v0.Local_string_v1 = Local_string_v0;
    super(GameInfo).PostLogin(Parm_PlayerPawn_0);
    LogCoAdminZEvent((("[RUNEPLAYER_JOIN] " $ Local_zPlayerReplicationInfo_v0.PlayerName) $ " IP=") $ Local_string_v0);
    if((G_ZStrg1 != none) && G_ZStrg1.RestorePlayerInfo(Local_zPlayerReplicationInfo_v0))
    {
        Parm_PlayerPawn_0.ClientMessage("Welcome back " $ Local_zPlayerReplicationInfo_v0.PlayerName);
    }
    return;
}

event GameEnding()
{
    local int i;
    local Pawn Parm_PlayerPawn_0;
    local zPlayerReplicationInfo Local_zPlayerReplicationInfo_v0;

    Parm_PlayerPawn_0 = Level.PawnList;
    J0x14:

    if(Parm_PlayerPawn_0 != none)
    {
        if((!Parm_PlayerPawn_0.IsA('PlayerPawn') || Parm_PlayerPawn_0.PlayerReplicationInfo == none) || zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo) == none)
        {            
        }
        else
        {
            Local_zPlayerReplicationInfo_v0 = zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo);
        }
        Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
        // [Loop Continue]
        goto J0x14;
    }
    G_ZStrg1.Destroy();
    super(GameInfo).GameEnding();
    return;
}

function HasCommandPermission2(Pawn P0, Pawn Parm_Pawn_1)
{
    local PlayerPawn Player;
    local Pawn Parm_PlayerPawn_0;

    Player = PlayerPawn(P0);
    if(P0.Spree == 5)
    {
        Parm_PlayerPawn_0 = Level.PawnList;
        J0x39:

        if(Parm_PlayerPawn_0 != none)
        {
            PlayerPawn(Parm_PlayerPawn_0).ClientPlaySound(eqR_vxv_5550[0]);
            Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
            // [Loop Continue]
            goto J0x39;
        }
        BroadcastMessage(Player.PlayerReplicationInfo.PlayerName $ " is on a killing spree!", true, 'CriticalEvent');
    }
    if(P0.Spree == 10)
    {
        Parm_PlayerPawn_0 = Level.PawnList;
        J0xDD:

        if(Parm_PlayerPawn_0 != none)
        {
            PlayerPawn(Parm_PlayerPawn_0).ClientPlaySound(eqR_vxv_5550[1]);
            Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
            // [Loop Continue]
            goto J0xDD;
        }
        BroadcastMessage(Player.PlayerReplicationInfo.PlayerName $ " is on a Rampage!", true, 'CriticalEvent');
    }
    if(P0.Spree == 15)
    {
        Parm_PlayerPawn_0 = Level.PawnList;
        J0x17B:

        if(Parm_PlayerPawn_0 != none)
        {
            PlayerPawn(Parm_PlayerPawn_0).ClientPlaySound(eqR_vxv_5550[2]);
            Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
            // [Loop Continue]
            goto J0x17B;
        }
        BroadcastMessage(Player.PlayerReplicationInfo.PlayerName $ " is totally dominating!", true, 'CriticalEvent');
    }
    if(P0.Spree == 20)
    {
        Parm_PlayerPawn_0 = Level.PawnList;
        J0x220:

        if(Parm_PlayerPawn_0 != none)
        {
            PlayerPawn(Parm_PlayerPawn_0).ClientPlaySound(eqR_vxv_5550[3]);
            Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
            // [Loop Continue]
            goto J0x220;
        }
        BroadcastMessage(Player.PlayerReplicationInfo.PlayerName $ " is unstoppable!", true, 'CriticalEvent');
    }
    if(P0.Spree == 30)
    {
        Parm_PlayerPawn_0 = Level.PawnList;
        J0x2BE:

        if(Parm_PlayerPawn_0 != none)
        {
            PlayerPawn(Parm_PlayerPawn_0).ClientPlaySound(eqR_vxv_5550[4]);
            Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
            // [Loop Continue]
            goto J0x2BE;
        }
        BroadcastMessage(Player.PlayerReplicationInfo.PlayerName $ " has a godlike spree!", true, 'CriticalEvent');
    }
    return;
}

function Pawn GetPawnByPlayerID(int i)
{
    local Pawn Parm_PlayerPawn_0;

    Parm_PlayerPawn_0 = Level.PawnList;
    J0x14:

    if(Parm_PlayerPawn_0 != none)
    {
        if(((Parm_PlayerPawn_0.PlayerReplicationInfo.PlayerID == i) && !Parm_PlayerPawn_0.IsA('Spectator')) && zPlayerReplicationInfo(Parm_PlayerPawn_0.PlayerReplicationInfo).Local_string_v1 != "")
        {
            return Parm_PlayerPawn_0;
        }
        Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
        // [Loop Continue]
        goto J0x14;
    }
    return none;
    return;
}

function int eq_vxv_619(Weapon Parm_Weapon_0)
{
    if(Parm_Weapon_0.IsA('VikingShortSword'))
    {
        return 0;        
    }
    else
    {
        if(Parm_Weapon_0.IsA('romansword'))
        {
            return 1;            
        }
        else
        {
            if(Parm_Weapon_0.IsA('VikingBroadSword'))
            {
                return 2;                
            }
            else
            {
                if(Parm_Weapon_0.IsA('DwarfWorkSword'))
                {
                    return 3;                    
                }
                else
                {
                    if(Parm_Weapon_0.IsA('DwarfBattleSword'))
                    {
                        return 4;                        
                    }
                    else
                    {
                        if(Parm_Weapon_0.IsA('handaxe'))
                        {
                            return 5;                            
                        }
                        else
                        {
                            if(Parm_Weapon_0.IsA('goblinaxe'))
                            {
                                return 6;                                
                            }
                            else
                            {
                                if(Parm_Weapon_0.IsA('VikingAxe'))
                                {
                                    return 7;                                    
                                }
                                else
                                {
                                    if(Parm_Weapon_0.IsA('sigurdaxe'))
                                    {
                                        return 8;                                        
                                    }
                                    else
                                    {
                                        if(Parm_Weapon_0.IsA('DwarfBattleAxe'))
                                        {
                                            return 9;                                            
                                        }
                                        else
                                        {
                                            if(Parm_Weapon_0.IsA('RustyMace'))
                                            {
                                                return 10;                                                
                                            }
                                            else
                                            {
                                                if(Parm_Weapon_0.IsA('boneclub'))
                                                {
                                                    return 11;                                                    
                                                }
                                                else
                                                {
                                                    if(Parm_Weapon_0.IsA('TrialPitMace'))
                                                    {
                                                        return 12;                                                        
                                                    }
                                                    else
                                                    {
                                                        if(Parm_Weapon_0.IsA('DwarfWorkHammer'))
                                                        {
                                                            return 13;                                                            
                                                        }
                                                        else
                                                        {
                                                            if(Parm_Weapon_0.IsA('DwarfBattleHammer'))
                                                            {
                                                                return 14;                                                                
                                                            }
                                                            else
                                                            {
                                                                if(Parm_Weapon_0.IsA('Torch'))
                                                                {
                                                                    return 15;                                                                    
                                                                }
                                                                else
                                                                {
                                                                    if(Parm_Weapon_0.IsA('Head'))
                                                                    {
                                                                        return 16;                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        if(Parm_Weapon_0.IsA('Limb'))
                                                                        {
                                                                            return 17;                                                                            
                                                                        }
                                                                        else
                                                                        {
                                                                            return 50;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return;
}

function eq_vxv_261(string P0, string Killed, byte Parm_byte_0, byte Parm_byte_1, byte Spree, bool Parm_bool_0, bool Parm_bool_1, bool Parm_bool_2, bool Parm_bool_3, Weapon Parm_Weapon_0)
{
    local Pawn Parm_PlayerPawn_0;
    local int Local_int_v0;

    if(Parm_bool_2)
    {
        Local_int_v0 = 18;        
    }
    else
    {
        Local_int_v0 = eq_vxv_619(Parm_Weapon_0);
    }
    Parm_PlayerPawn_0 = Level.PawnList;
    J0x39:

    if(Parm_PlayerPawn_0 != none)
    {
        if(ZRunePlayer(Parm_PlayerPawn_0) != none)
        {
            ZRunePlayer(Parm_PlayerPawn_0).AddKillFeedEntry(P0, Killed, Parm_byte_0, Parm_byte_1, Spree, Parm_bool_0, Parm_bool_1, Parm_bool_2, Parm_bool_3, Local_int_v0);
        }
        Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
        // [Loop Continue]
        goto J0x39;
    }
    return;
}

function Killed(Pawn P0, Pawn Parm_Pawn_1, name DamageType)
{
    local Pawn Parm_PlayerPawn_0;

    if(FComp_v5502 != none)
    {
        FComp_v5502.HasCommandPermission6(P0, Parm_Pawn_1, DamageType);
    }
    if((P0 != none) && PlayerPawn(Parm_Pawn_1).bIsTyping)
    {
        zPlayerReplicationInfo(P0.PlayerReplicationInfo).INT_v5355++;
    }
    if((P0 != none) && P0 != Parm_Pawn_1)
    {
        if(((DamageType == 'Jump') && ZRunePlayer(Parm_Pawn_1) != none) && ZRunePlayer(P0) != none)
        {
            Parm_Pawn_1.PlayerReplicationInfo.Deaths += 1.0000000;
            P0.PlayerReplicationInfo.Score += 1.0000000;
            zPlayerReplicationInfo(P0.PlayerReplicationInfo).INT_v5377 += int(1.0000000);
            BroadcastMessage(((Parm_Pawn_1.PlayerReplicationInfo.PlayerName $ " died and is now a pancake due to ") $ P0.PlayerReplicationInfo.PlayerName) $ " jumping on his head!");
            if(Parm_Pawn_1.Spree > 2)
            {
                EndSpree(P0, Parm_Pawn_1);
            }
            Parm_Pawn_1.Spree = 0;
            return;
        }
        if((ZRunePlayer(P0) != none) && ZRunePlayer(Parm_Pawn_1) != none)
        {
            ZRunePlayer(P0).NotifyKillToConsole(P0.PlayerReplicationInfo, Parm_Pawn_1.PlayerReplicationInfo, DamageType);
            ZRunePlayer(Parm_Pawn_1).NotifyKillToConsole(P0.PlayerReplicationInfo, Parm_Pawn_1.PlayerReplicationInfo, DamageType);
        }
        if(P0.Weapon == none)
        {
            if(((DamageType == 'ThrownWeaponBlunt') || DamageType == 'thrownweaponsever') || DamageType == 'thrownweaponbluntsever')
            {                
            }
            else
            {
                DamageType = 'thrownweaponsever';
            }
        }
    }
    super.Killed(P0, Parm_Pawn_1, DamageType);
    if(((P0 != none) && P0.PlayerReplicationInfo != none) && ((DamageType == 'ThrownWeaponBlunt') || DamageType == 'thrownweaponsever') || DamageType == 'thrownweaponbluntsever')
    {
        zPlayerReplicationInfo(P0.PlayerReplicationInfo).INT_v5354++;
    }
    if(G_ZStrg1.Sounds)
    {
        if(((DamageType == 'decapitated') && P0.bIsPlayer) && P0 != Parm_Pawn_1)
        {
            Player = PlayerPawn(P0);
            Player.ClientPlaySound(UNK_v5491);
            Player = PlayerPawn(Parm_Pawn_1);
            Player.ClientPlaySound(UNK_v5491);
        }
        if(!bFirstBlood)
        {
            if(P0.bIsPlayer && P0 != Parm_Pawn_1)
            {
                Parm_PlayerPawn_0 = Level.PawnList;
                J0x3FC:

                if(Parm_PlayerPawn_0 != none)
                {
                    PlayerPawn(Parm_PlayerPawn_0).ClientPlaySound(UNK_v5549);
                    Parm_PlayerPawn_0 = Parm_PlayerPawn_0.nextPawn;
                    // [Loop Continue]
                    goto J0x3FC;
                }
                bFirstBlood = true;
                P0.PlayerReplicationInfo.bFirstBlood = true;
            }
        }
        if(((Parm_Pawn_1.bIsPlayer && P0 != none) && P0.bIsPlayer) && P0 != Parm_Pawn_1)
        {
            if(P0.Spree > 4)
            {
                HasCommandPermission2(P0, Parm_Pawn_1);
            }
        }
    }
    return;
}

defaultproperties
{
    IpTempBanned="Your IP has been banned for the duration of this map."
    ScoreBoardType=Class'coadminz7.SAscoreboard'
    HUDType=Class'coadminz7.zHUD'
    GameName="CoAdminZ Deathmatch"
    GameReplicationInfoClass=Class'coadminz7.zGameReplicationInfo'
}