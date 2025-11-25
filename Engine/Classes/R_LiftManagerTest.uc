class R_LiftManagerTest extends actor;

function RandomizeLifts(){
    local Actor A;
    local Mover M1, M2, M3;
    local Mover RingMovers[3];
    local Mover TempMover;
    local int RingCount;
    local int i, j;
    
    // Find all movers in the level
    foreach AllActors(class'Mover', A)
    {
        // Store the mover in our array
        RingMovers[RingCount] = Mover(A);
        RingCount++;
        
        // Stop after finding 3 movers (rings)
        if (RingCount >= 3)
            break;
    }
    
    // Make sure we found all three rings
    if (RingCount < 3)
    {
        Log("RandomizeLifts: Error - Could not find all three rings!");
        return;
    }
    
    // Sort the movers by their DelayTime using bubble sort
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2 - i; j++)
        {
            if (RingMovers[j].DelayTime > RingMovers[j+1].DelayTime)
            {
                // Swap positions
                TempMover = RingMovers[j];
                RingMovers[j] = RingMovers[j+1];
                RingMovers[j+1] = TempMover;
            }
        }
    }
    
    // Assign sorted movers to variables (smallest to largest delay)
    M1 = RingMovers[0]; // Ring with smallest delay
    M2 = RingMovers[1]; // Ring with middle delay
    M3 = RingMovers[2]; // Ring with largest delay
    
    // Log current delay times
    Log("BEFORE - M1.DelayTime:" @ M1.DelayTime @ " M2.DelayTime:" @ M2.DelayTime @ " M3.DelayTime:" @ M3.DelayTime);
    
    // Apply new randomized delay times with the required pattern
    M1.DelayTime = RandRange(3, 10);
    M2.DelayTime = M1.DelayTime + RandRange(3, 10);
    M3.DelayTime = M2.DelayTime + RandRange(3, 10);
    
    // Log the final delay times
    Log("AFTER - M1.DelayTime:" @ M1.DelayTime @ " M2.DelayTime:" @ M2.DelayTime @ " M3.DelayTime:" @ M3.DelayTime);
}