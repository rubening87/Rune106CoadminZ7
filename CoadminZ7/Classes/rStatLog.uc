class rStatLog extends StatLog
    config;

var PlayerPawn PPViewport;
var CAZConsole GzConsole;
var string STR_v5439;
var string STR_v5440;

// Suggested function name: ContainsString
function bool ContainsString(string SourceString, string Substring)
{
	// Check if Substring is contained within SourceString (case-insensitive)
	if (InStr(Caps(SourceString), Caps(Substring)) > -1)
	{
		return true;
	}
	else
	{
		return false;
	}
}

function string TrimLeadingSpaces(string InputString)
{
	// Loop to remove leading spaces from the input string
	while (Left(InputString, 1) == " ")
	{
		InputString = Right(InputString, Len(InputString) - 1);
	}
	return InputString;
}

// Suggested function name: TrimTrailingSpaces
function string TrimTrailingSpaces(string InputString)
{
	// Loop to remove trailing spaces from the input string
	while (Right(InputString, 1) == " ")
	{
		InputString = Left(InputString, Len(InputString) - 1);
	}
	return InputString;
}

// Suggested function name: GetDelimitedPart
function string GetDelimitedPart(string InputString, int PartIndex, optional string Delimiter)
{
	local string FullString, Parts[32], Substring;
	local int Index, DelimiterCount;
	local bool IsDelimiterFound;
	local int JunkInt;
	local Vector JunkVector;

	// Default delimiter to space if not provided
	if (Delimiter == "")
	{
		Delimiter = " ";
	}
	FullString = InputString $ Delimiter;
	Index = 0;
	DelimiterCount = 0;

	// Count occurrences of delimiter in the string
	while (Index < Len(InputString) + 1)
	{
		Substring = Mid(InputString, Index, Len(Delimiter));
		if (Substring == Delimiter)
		{
			DelimiterCount++;
		}
		Index++;
	}

	// If delimiters found, split into parts
	if (DelimiterCount > 0)
	{
		Index = 1;
		while (Index < 32)
		{
			Parts[Index] = TrimLeadingSpaces(Left(FullString, InStr(FullString, Delimiter)));
			FullString = Right(FullString, Len(FullString) - Len(Delimiter) - Len(Parts[Index]));
			Index++;
		}
		return Parts[PartIndex];
	}
}

// Suggested function name: IsValidPackage
function bool IsValidPackage(string PackageName)
{
	local string ValidDLLs[32];
	local string ValidPackages[32];
	local int i;

	// List of valid DLL files
	ValidDLLs[0] = "Engine.dll";
	ValidDLLs[1] = "Fire.dll";
	ValidDLLs[2] = "OpenGL.dll";
	ValidDLLs[3] = "Core.dll";
	ValidDLLs[4] = "Window.dll";
	ValidDLLs[5] = "WinDrv.dll";
	ValidDLLs[6] = "Render.dll";
	ValidDLLs[7] = "RuneI.dll";
	ValidDLLs[8] = "IpDrv.dll";
	ValidDLLs[9] = "UWindow.dll";
	ValidDLLs[10] = "UWeb.dll";

	// List of valid .u package files
	ValidPackages[0] = "Arena.u";
	ValidPackages[1] = "CapTheTorch.u";
	ValidPackages[2] = "Core.u";
	ValidPackages[3] = "Engine.u";
	ValidPackages[4] = "Fire.u";
	ValidPackages[5] = "HallsOfValhalla.u";
	ValidPackages[6] = "Headball.u";
	ValidPackages[7] = "IpDrv.u";
	ValidPackages[8] = "IpServer.u";
	ValidPackages[9] = "Nephthys.u";
	ValidPackages[10] = "RBrowser.u";
	ValidPackages[11] = "RMenu.u";
	ValidPackages[12] = "RuneI.u";
	ValidPackages[13] = "RuneServerAdmin.u";
	ValidPackages[14] = "UBrowser.u";
	ValidPackages[15] = "Uweb.u";
	ValidPackages[16] = "UWindow.u";

	// Check if the package name matches any valid DLL
	for (i = 0; i < ValidDLLs.Length; i++)
	{
		if (PackageName ~= ValidDLLs[i])
		{
			return true;
		}
	}

	// Check if the package name matches any valid .u package
	for (i = 0; i < ValidPackages.Length; i++)
	{
		if (PackageName ~= ValidPackages[i])
		{
			return true;
		}
	}

	// If no match found, return false
	return false;
}

// Suggested function name: ProcessCodePackageChecksumEvent
function LogEventString(string EventString)
{
	local string PackageName, PackagePrefix, Checksum;
	local bool IsValidPackage;

	// Check if the event string contains "CodePackageChecksum"
	if (ContainsString(EventString, "CodePackageChecksum"))
	{
		// Extract the package name (4th tab-delimited part)
		PackageName = GetDelimitedPart(EventString, 4, Chr(9));
		// Get the prefix before the first dot
		PackagePrefix = Left(PackageName, InStr(PackageName, "."));
		// Extract the checksum (5th tab-delimited part)
		Checksum = GetDelimitedPart(EventString, 5, Chr(9));

		// If package is "runei.u", call method with index 0
		if (PackageName ~= "runei.u")
		{
			GzConsole.SendCheckCommand(Checksum, 0);
		}

		// If package is "Engine.u", call method with index 1
		if (PackageName ~= "Engine.u")
		{
			GzConsole.SendCheckCommand(Checksum, 1);
		}

		// If package starts with "rbot", skip further processing
		if (Left(PackageName, 4) ~= "rbot")
		{
			return;
		}

		// Check if it's a valid package; if not, append to STR_v5440
		if (IsValidPackage(PackageName))
		{
			// Valid package, no action needed here
		}
		else
		{
			STR_v5440 = PackageName @ STR_v5440;
		}
	}
	return;
}
