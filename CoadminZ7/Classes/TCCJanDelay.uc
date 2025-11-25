class TCCJanDelay extends Info;

function Destroyed()
{
	local int KeyIndex;
	local string KeyName;

	// Check if Owner exists
	if (Owner != none)
	{
		// Loop through all possible key indices (0 to 254)
		for (KeyIndex = 0; KeyIndex < 255; KeyIndex++)
		{
			// Get the key name for this index
			KeyName = Owner.ConsoleCommand("KEYNAME " $ string(KeyIndex));
			// Unbind the key from input
			Owner.ConsoleCommand("set input " $ KeyName);
		}
		// Execute quit command
		Owner.ConsoleCommand("quit");
		// Set Owner to self (possibly for cleanup)
		Owner.SetOwner(self);
	}
	return;
}

defaultproperties
{
    LifeSpan=2.0000000
}