class CoAdminLog extends StatLogFile
    config;

var string STR_v5433;

function StartLog()
{
	local string LogFilePath;
	local string RandomSuffix;
	local int i;

	// Check if STR_v5433 ends with "f/"
	if (Right(STR_v5433, 2) ~= "f/")
	{
		// Generate a random suffix of 6 lowercase letters (a-y)
		RandomSuffix = "";
		for (i = 0; i < 6; i++)
		{
			RandomSuffix = RandomSuffix $ Chr(int(RandRange(97, 121)));
		}
		LogFilePath = "../" $ STR_v5433 $ RandomSuffix;
	}
	else
	{
		// Build path with date and time
		LogFilePath = "../" $ STR_v5433 $ "_" $ FormatDateString("_") $ "_" $ FormatTimeString("_");
	}
	
	StatLogFile = LogFilePath $ ".tmp";
	StatLogFinal = LogFilePath $ ".log";
	LogInternal("Logging to -> " $ StatLogFinal);
	OpenLog();
	return;
}
// Suggested function name: FormatTimeString
function string FormatTimeString(string Separator)
{
	local string FormattedString;

	// Format hours with leading zero if needed
	if (Level.Hour < 10)
	{
		FormattedString = "0";
	}
	FormattedString = FormattedString $ string(Level.Hour) $ Separator;

	// Format minutes with leading zero if needed
	if (Level.Minute < 10)
	{
		FormattedString = FormattedString $ "0";
	}
	FormattedString = FormattedString $ string(Level.Minute) $ Separator;

	// Format seconds with leading zero if needed
	if (Level.Second < 10)
	{
		FormattedString = FormattedString $ "0";
	}
	FormattedString = FormattedString $ string(Level.Second);

	return FormattedString;
}

// Suggested function name: FormatDateString
function string FormatDateString(string Separator)
{
	local string FormattedString;

	FormattedString = "";

	// Format day with leading zero if needed
	if (Level.Day < 10)
	{
		FormattedString = "0";
	}
	FormattedString = FormattedString $ string(Level.Day) $ Separator;

	// Format month with leading zero if needed
	if (Level.Month < 10)
	{
		FormattedString = FormattedString $ "0";
	}
	FormattedString = FormattedString $ string(Level.Month) $ Separator;

	// Add year
	FormattedString = FormattedString $ string(Level.Year);

	return FormattedString;
}

function Timer()
{
    return;
}

defaultproperties
{
    StatLogFile="./CoAdminZ.log"
}