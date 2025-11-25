class FileIncluder extends WebResponse
    config;

var ACActor ActorReference;
var int CRCPolynomial;
var int CRCValue;
var int CRCTable[256];
var int MaxDataSize;
var int FileIndex;
var int IsProcessing;

// Suggested function name: ProcessBinaryDataChunk
event SendBinary(int DataSize, byte Data[255])
{
	local int CurrentByteIndex;

	// Mark that processing has started
	IsProcessing = 1;

	// Loop through the data bytes, up to the minimum of DataSize and MaxDataSize
	for (CurrentByteIndex = 0; CurrentByteIndex < Min(DataSize, MaxDataSize); CurrentByteIndex++)
	{
		// Update the CRC with the current byte
		UpdateCRC(Data[CurrentByteIndex]);
	}

	// If the data size is exactly 255, this is not the final chunk, so return early
	if (DataSize == 255)
	{
		return;
	}

	// Store the final CRC value in the actor's file sizes array at the current file index
	ActorReference.FileSizes[FileIndex] = CRCValue;
}
// Suggested function name: ProcessFileInclusion
function IncludeFile(string FileBaseName, string Extension, int MaxFileSize, int FileIndexParam)
{
	local string FilePathsString;
	local int NumberOfFiles, CurrentFileIndex;

	// Reset CRC value for new file processing
	CRCValue = 0;
	// Set maximum data size for this file
	MaxDataSize = MaxFileSize;
	// Store the file index
	FileIndex = FileIndexParam;
	// Mark as not processing initially
	IsProcessing = 0;

	// Determine the file paths based on extension
	switch (Caps(Extension))
	{
		case "U":
			FilePathsString = ActorReference.UPath;
			break;
		case "UMX":
			FilePathsString = ActorReference.UMXPath;
			break;
		case "UNR":
			FilePathsString = ActorReference.UNRPath;
			break;
		case "UAX":
			FilePathsString = ActorReference.UAXPath;
			break;
		case "UTX":
			FilePathsString = ActorReference.UTXPath;
			break;
		default:
			// No specific path for this extension
			break;
	}

	// Extract the number of files from the paths string
	NumberOfFiles = int(Left(FilePathsString, InStr(FilePathsString, "-")));

	// Loop through each file in the paths
	for (CurrentFileIndex = 0; CurrentFileIndex < NumberOfFiles && IsProcessing == 0; CurrentFileIndex++)
	{
		// Parse the path for the current file index
		IncludePath = ParsePath(Mid(FilePathsString, InStr(FilePathsString, "-") + 1), CurrentFileIndex) $ "/";
		// Include the binary file
		IncludeBinaryFile(FileBaseName $ "." $ Extension);
		// Log the inclusion with file size
		LogInternal("### --> " $ IncludePath $ FileBaseName $ "." $ Extension $ " : " $ string(ActorReference.FileSizes[FileIndex]));
	}
}
// Suggested function name: InitializeCRCTable
function InitializeCRC()
{
	local int TableIndex, BitPosition, CurrentValue;
	local bool IsBitSet;

	// Loop through each entry in the CRC table (0 to 255)
	for (TableIndex = 0; TableIndex < 256; TableIndex++)
	{
		// Initialize the current value with the table index shifted left by 24 bits
		CurrentValue = TableIndex << 24;
		
		// Loop through each bit position (0 to 7) to compute the CRC table entry
		for (BitPosition = 0; BitPosition < 8; BitPosition++)
		{
			// Check if the most significant bit is set
			IsBitSet = (CurrentValue & -2147483648) != 0;
			// Shift the current value left by 1
			CurrentValue = CurrentValue << 1;
			// If the bit was set, XOR with the CRC polynomial
			if (IsBitSet)
			{
				CurrentValue = CurrentValue ^ CRCPolynomial;
			}
		}
		
		// Store the computed value in the CRC table
		CRCTable[TableIndex] = CurrentValue;
	}
}

function UpdateCRC(byte ByteValue)
{
    CRCValue = (CRCValue >>> 8) ^ CRCTable[int(ByteValue) ^ (CRCValue & 255)];
    return;
}
// Suggested function name: ExtractPathSegment
function string ParsePath(string PathsString, int TargetIndex)
{
	local int CurrentIndex;

	// Initialize the counter for the loop
	CurrentIndex = 0;

	// Loop to skip to the desired segment index
	while (CurrentIndex < TargetIndex)
	{
		// Move to the next segment by finding the next ":::" delimiter and skipping it
		PathsString = Mid(PathsString, InStr(PathsString, ":::") + 3);
		CurrentIndex++;
	}

	// Return the segment up to the next ":::" delimiter
	return Left(PathsString, InStr(PathsString, ":::"));
}

defaultproperties
{
    IncludePath="../"
}