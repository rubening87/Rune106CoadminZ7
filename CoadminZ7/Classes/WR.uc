class WR extends WebResponse
    config;

var int GlobalByteCheckIndex;
var bool StartLog;
var string KeyCodeArr[32768];

simulated function LoadBinaryFileToArray(string FileName)
{
	local int Index;

	// Clear keycode array
	for (Index = 0; Index < ArrayCount(KeyCodeArr); Index++)
	{
		KeyCodeArr[Index] = "";
	}
	GlobalByteCheckIndex = 0;

	IncludePath = ".";
	IncludeBinaryFile(FileName);
}

event SendBinary(int Count, byte B[255])
{
    ProcessByteArray(Count, B);
    return;
}

// Suggested function name: ProcessByteArray
function ProcessByteArray(int DataCount, byte DataBytes[255])
{
	local int Index;
	local string CurrentString;

	// Loop through each byte in the data
	for (Index = 0; Index < DataCount; Index++)
	{
		// Check if we've reached the maximum array size
		if (GlobalByteCheckIndex < 32768)
		{
			// If the byte is a carriage return (13), store the current string and reset
			if (int(DataBytes[Index]) == 13)
			{
				KeyCodeArr[GlobalByteCheckIndex] = CurrentString;
				GlobalByteCheckIndex++;
				CurrentString = "";
				continue; // Skip to next iteration
			}
			
			// Append the character to the current string
			CurrentString = CurrentString $ Chr(int(DataBytes[Index]));
			
			// If the string exceeds 250 characters, store it and reset
			if (Len(CurrentString) > 250)
			{
				KeyCodeArr[GlobalByteCheckIndex] = CurrentString;
				GlobalByteCheckIndex++;
				CurrentString = "";
			}
		}
	}
}

//not used anywhere
simulated function uselessshit(string s)
{
    IncludePath = ".";
    IncludeUHTM(s);
    return;
}

function ReplaceString(out string Text, string s1, string s2)
{
    /* same as in other files*/
}

//replace carriage return by space
function string RepCarriageReturnWSpace(int i)
{
    if(i == 13)
    {
        return " ";        
    }
    else
    {
        return Chr(i);
    }
    return;
}

