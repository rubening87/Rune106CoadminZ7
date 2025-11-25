class NSword extends DwarfWorkSword;

var byte UNK_v5320;

function PlaySwipeSound()
{
    if((RunePlayer(Owner) != none) && RunePlayer(Owner).AnimProxy.AnimSequence == 'weapon1_attackD')
    {
        PlaySound(Sound'WeaponsSnd.Stows.xunstow02', 0,,,, 1.0000000 + (((FRand() - 0.5000000) * 2.0000000) * PitchDeviation));        
    }
    else
    {
        super(Weapon).PlaySwipeSound();
    }
    return;
}

function SpawnHitEffect(Vector Parm_Vector_0, Vector Parm_Vector_1, int LowMask, int HighMask, Actor Parm_Actor_0)
{
    local int i, Local_int_v0;
    local Object.EMatterType Local_Object.EMatterType_v0;
    local Vector Local_Vector_v0, Local_Vector_v1;
    local float Local_float_v0;
    local Rotator Rot;
    local Actor A;

    if((Parm_Actor_0.Skeletal != none) && (LowMask != 0) || HighMask != 0)
    {
        Local_int_v0 = 0;
        J0x35:

        if(Local_int_v0 < Parm_Actor_0.NumJoints())
        {
            if(((Local_int_v0 < 32) && (LowMask & (1 << Local_int_v0)) != 0) || ((Local_int_v0 >= 32) && Local_int_v0 < 64) && (HighMask & (1 << (Local_int_v0 - 32))) != 0)
            {
                Local_Object.EMatterType_v0 = Parm_Actor_0.MatterForJoint(Local_int_v0);
                // [Explicit Break]
                goto J0xCC;
            }
            Local_int_v0++;
            // [Loop Continue]
            goto J0x35;
        }
        J0xCC:
        
    }
    else
    {
        if(Parm_Actor_0.IsA('LevelInfo'))
        {
            Local_Object.EMatterType_v0 = Parm_Actor_0.MatterTrace(Parm_Vector_0, Owner.Location, WeaponSweepExtent);
            if((Parm_Vector_1.Z > -0.1000000) && Parm_Vector_1.Z < 0.1000000)
            {
                Spawn(Class'RuneI.DecalSlash',,,, Rotator(Parm_Vector_1));
            }            
        }
        else
        {
            Local_Object.EMatterType_v0 = Parm_Actor_0.MatterForJoint(0);
        }
    }
    if(GetStateName() != 'zNewState1')
    {
        PlayHitMatterSound(Local_Object.EMatterType_v0);
    }
    if(int(Local_Object.EMatterType_v0) == int(4))
    {
        Spawn(Class'RuneI.BloodMist',,, Parm_Vector_0, Rotator(Parm_Vector_1));
        if(((BloodTexture != none) && !Region.Zone.bWaterZone) && !Class'Engine.GameInfo'.default.bVeryLowGore)
        {
            SkelGroupSkins[1] = BloodTexture;
        }        
    }
    else
    {
        if(int(Local_Object.EMatterType_v0) == int(1))
        {
            A = Spawn(Class'RuneI.HitWood',,, Parm_Vector_0, Rotator(Parm_Vector_1));
            A.bSweepable = true;            
        }
        else
        {
            if(int(Local_Object.EMatterType_v0) == int(3))
            {
                if(GetStateName() == 'zNewState1')
                {
                    A = Spawn(Class'coadminz7.NHitStone',,, Parm_Vector_0, Rotator(Parm_Vector_1));
                    A.bSweepable = true;
                }
                A = Spawn(Class'RuneI.HitStone',,, Parm_Vector_0, Rotator(Parm_Vector_1));
                A.bSweepable = true;                
            }
            else
            {
                if(int(Local_Object.EMatterType_v0) == int(2))
                {
                    A = Spawn(Class'RuneI.HitMetal',,, Parm_Vector_0, Rotator(Parm_Vector_1));
                    A.bSweepable = true;                    
                }
                else
                {
                    if(int(Local_Object.EMatterType_v0) == int(7))
                    {
                        A = Spawn(Class'RuneI.GroundDust',,, Parm_Vector_0, Rotator(Parm_Vector_1));
                        A.bSweepable = true;                        
                    }
                    else
                    {
                        if(int(Local_Object.EMatterType_v0) == int(12))
                        {
                            Spawn(Class'RuneI.HitWeapon',,, Parm_Vector_0, Rotator(Parm_Vector_1));                            
                        }
                        else
                        {
                            if(int(Local_Object.EMatterType_v0) == int(5))
                            {
                                A = Spawn(Class'RuneI.HitIce',,, Parm_Vector_0, Rotator(Parm_Vector_1));
                                A.bSweepable = true;
                            }
                        }
                    }
                }
            }
        }
    }
    return;
}

state Swinging
{
    event FrameSwept(Vector Parm_Vector_0, Vector Parm_Vector_1, Vector Parm_Vector_2, Vector Parm_Vector_3)
    {
        local int LowMask, HighMask;
        local Vector Parm_Vector_0, Parm_Vector_1, Local_Vector_v2, Local_Vector_v3, Momentum;

        local Actor A;
        local Vector Local_Vector_v4, Local_Vector_v5, X;

        Momentum = (Parm_Vector_3 - Parm_Vector_1) * Mass;
        foreach DynamicActors(Class'Engine.Actor', A, Parm_Vector_0, Parm_Vector_1, Parm_Vector_2, Parm_Vector_3, WeaponSweepExtent, Parm_Vector_0, Parm_Vector_1, LowMask, HighMask)
        {
            if(SwipeArrayCheck(A, LowMask, HighMask))
            {
                if(!DoWeaponSwipe(A, LowMask, HighMask, Parm_Vector_0, Parm_Vector_1, Momentum))
                {
                }
                SpawnHitEffect(Parm_Vector_0, Parm_Vector_1, LowMask, HighMask, A);
            }
            if(((A.IsA('LevelInfo') && ZRunePlayer(Owner) != none) && NSword(ZRunePlayer(Owner).Weapon) != none) && ZRunePlayer(Owner).AnimProxy.AnimSequence == 'H5_attackA')
            {
                GetAxes(Owner.Rotation, X, Local_Vector_v4, Local_Vector_v4);
                Local_Vector_v4 = Owner.Location;
                Local_Vector_v4.Z += float(40);
                Local_Vector_v5 = Local_Vector_v4 + (X * float(50));
                if(!FastTrace(Local_Vector_v5, Local_Vector_v4))
                {
                    Local_Vector_v4 = Owner.Location;
                    Local_Vector_v5 = Local_Vector_v4;
                    Local_Vector_v5.Z -= float(50);
                    if(FastTrace(Local_Vector_v5, Local_Vector_v4))
                    {
                        SpawnHitEffect(Parm_Vector_0, Parm_Vector_1, LowMask, HighMask, A);
                        ZRunePlayer(Owner).GotoState('zNewState1');
                    }
                }
            }            
        }        
        gB1 = Parm_Vector_0;
        gE1 = Parm_Vector_1;
        gB2 = Parm_Vector_2;
        gE2 = Parm_Vector_3;
        return;
    }
    stop;
}

state zNewState1
{
    function BeginState()
    {
        UNK_v5320 = 0;
        PlaySound(Sound'WeaponsSnd.ImpWood.impactwood12', 0,,,, 1.0000000 + (((FRand() - 0.5000000) * 2.0000000) * PitchDeviation));
        SetTimer(0.5000000, false);
        return;
    }

    function Timer()
    {
        GotoState('Active');
        return;
    }

    function FrameNotify(int Parm_int_0)
    {
        if(Parm_int_0 == 0)
        {
            Timer();
        }
        return;
    }

    function Tick(float Parm_float_0)
    {
        local Vector Local_Vector_v2, Local_Vector_v3, Local_Vector_v2;

        super(Actor).Tick(Parm_float_0);
        if(int(UNK_v5320) > 0)
        {
            UNK_v5320--;
            return;
        }
        UNK_v5320 = 5;
        Local_Vector_v2 = GetJointPos(SweepJoint1);
        Local_Vector_v3 = GetJointPos(SweepJoint2);
        Local_Vector_v2 = SweepVector * (VSize(Local_Vector_v3 - Local_Vector_v2) + ExtendedLength);
        FrameSweep(int(Parm_float_0), Local_Vector_v2, lastpos1, lastpos2);
        return;
    }

    event FrameSwept(Vector Parm_Vector_0, Vector Parm_Vector_1, Vector Parm_Vector_2, Vector Parm_Vector_3)
    {
        local int LowMask, HighMask;
        local Vector Parm_Vector_0, Parm_Vector_1, Local_Vector_v2, Local_Vector_v3, Momentum;

        local Actor A;
        local Vector Local_Vector_v4, Local_Vector_v5, X;

        Momentum = (Parm_Vector_3 - Parm_Vector_1) * Mass;
        foreach DynamicActors(Class'Engine.Actor', A, Parm_Vector_0, Parm_Vector_1, Parm_Vector_2, Parm_Vector_3, WeaponSweepExtent, Parm_Vector_0, Parm_Vector_1, LowMask, HighMask)
        {
            if(A.IsA('LevelInfo'))
            {
                SpawnHitEffect(Parm_Vector_0, Parm_Vector_1, LowMask, HighMask, A);
            }            
        }        
        gB1 = Parm_Vector_0;
        gE1 = Parm_Vector_1;
        gB2 = Parm_Vector_2;
        gE2 = Parm_Vector_3;
        return;
    }
    stop;
}
