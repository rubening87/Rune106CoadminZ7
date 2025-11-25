class CoralCastle4 extends Object
    abstract;

struct STRUCT_Core
{
    var int Low32;
    var int High32;
};

var const int G_Intv43[64];
var const byte G_Byte44[64];
var const string G_String127[16];
var const int G_Int42[64];
var const STRUCT_Core G_StructCore36[80];

static function STRUCT_Core MakeStructCore(coerce int HighBits, coerce optional int LowBits)
{
	local STRUCT_Core Result;

	Result.High32 = HighBits;
	Result.Low32 = LowBits;
	return Result;
}

// Extracts the high 32 bits from a STRUCT_Core value.
static function int GetHigh32(STRUCT_Core Value)
{
	return Value.High32;
}

// Bitwise NOT operator for STRUCT_Core (inverts all bits in both Low32 and High32)
static final preoperator STRUCT_Core BITNOT(STRUCT_Core A)
{
	A.Low32 = ~A.Low32;
	A.High32 = ~A.High32;
	return A;
	return;
}

// Alias for bitwise NOT operator for STRUCT_Core for clarity
static final preoperator STRUCT_Core BitwiseNot(STRUCT_Core A)
{
	return BITNOT(A);
}

static final preoperator STRUCT_Core cleaned_vxv_585(STRUCT_Core A)
{
    A = BITNOT A;
    if(A.High32 == -1)
    {
        A.Low32++;
        A.High32 = 0;
        return A;
    }
    A.High32++;
    return A;
    return;
}

//+
static final operator(20) STRUCT_Core AddSTRUCT_Core(STRUCT_Core A, STRUCT_Core B)
{
    local STRUCT_Core Result;
    local int BitIndex, Carry, BitA, BitB, SumBit, PrevCarry;

    Carry = 0;
    Result.High32 = 0;
    for (BitIndex = 0; BitIndex < 32; BitIndex++)
    {
        BitA = (A.High32 >>> BitIndex) & 1;
        BitB = (B.High32 >>> BitIndex) & 1;
        PrevCarry = Carry;
        SumBit = BitA ^ BitB ^ PrevCarry;
        Carry = (BitA & BitB) | (PrevCarry & (BitA ^ BitB));
        Result.High32 = Result.High32 | (SumBit << BitIndex);
    }
    Result.Low32 = (A.Low32 + B.Low32) + Carry;
    return Result;
}

static final operator(20) STRUCT_Core plus_vxv_798(STRUCT_Core A, coerce int B)
{
    return A plus_vxv_798 (MakeStructCore(B));
    return;
}

static final operator(20) STRUCT_Core plus_vxv_798(coerce int A, STRUCT_Core B)
{
    return (MakeStructCore(A)) plus_vxv_798 B;
    return;
}

static final operator(20) STRUCT_Core cleaned_vxv_585(STRUCT_Core A, STRUCT_Core B)
{
    return A plus_vxv_798 (cleaned_vxv_585 B);
    return;
}

static final operator(20) STRUCT_Core cleaned_vxv_585(STRUCT_Core A, coerce int B)
{
    return A cleaned_vxv_585 (MakeStructCore(B));
    return;
}

static final operator(20) STRUCT_Core cleaned_vxv_585(coerce int A, STRUCT_Core B)
{
    return (MakeStructCore(A)) cleaned_vxv_585 B;
    return;
}

static final operator(34) STRUCT_Core AddAssignSTRUCT_Core(out STRUCT_Core A, STRUCT_Core B)
{
	A = A plus_vxv_798 B;
	return;
}

static final operator(34) STRUCT_Core eq_vxv_1844(out STRUCT_Core A, STRUCT_Core B)
{
    A = A cleaned_vxv_585 B;
    return;
}

/**
 * Bitwise left-shift operator for STRUCT_Core structure.
 * 
 * This operator shifts the combined 64-bit value (represented by two 32-bit integers)
 * to the left by B bits. The two integer members, Low32 and High32, are used to
 * represent the lower and upper 32 bits of a 64-bit value, respectively.
 *
 * @param A The STRUCT_Core struct to be shifted (contains two 32-bit integer fields).
 * @param B The number of bits to shift left.
 * @return The shifted STRUCT_Core struct.
 *
 * Low32: likely represents the lower 32 bits of a 64-bit value.
 * High32: likely represents the upper 32 bits of a 64-bit value.
 *
 * SUGGESTION: Consider renaming Low32 to Low32 or LowBits, and High32 to High32 or HighBits
 * for clarity.
 *
 * Logic:
 * - If B >= 32, shift the upper 32 bits (High32) left by (B - 32) and store in lower 32 bits (Low32), set upper 32 bits to 0.
 * - If 0 < B < 32, shift both parts appropriately to perform a 64-bit left shift.
 */
 //NOT USED N THIS 
static final operator(22) STRUCT_Core Left_ShiftOp(STRUCT_Core A, coerce int B)
{
    if(B >= 32)
    {
        A.Low32 = A.High32 << (B - 32);
        A.High32 = 0;        
    }
    else
    {
        if(B > 0)
        {
            A.Low32 = (A.Low32 << B) | (A.High32 >>> (32 - B));
            A.High32 = A.High32 << B;
        }
    }
    return A;
    return;
}

/**
 * Performs a logical right shift (unsigned) on a 64-bit value represented by STRUCT_Core.
 *
 * This static operator function shifts the combined 64-bit value (High32:Low32) to the right by B bits,
 * filling with zeros from the left. If B >= 32, the lower 32 bits are shifted into the upper 32 bits,
 * and the lower 32 bits are set to zero. Otherwise, both High32 and Low32 are shifted accordingly.
 *
 * @param A The 64-bit value to shift, represented as a STRUCT_Core struct with High32 and Low32 fields.
 * @param B The number of bits to shift right (logical/unsigned).
 * @return The shifted STRUCT_Core value.
 *
 * @note This operator mimics the behavior of an unsigned right shift (>>>) for 64-bit integers.
 */
static final operator(22) STRUCT_Core right_shift(STRUCT_Core A, coerce int B)
{
    if(B >= 32)
    {
        A.High32 = A.Low32 >>> (B - 32);
        A.Low32 = 0;        
    }
    else
    {
        if(B > 0)
        {
            A.High32 = (A.High32 >>> B) | (A.Low32 << (32 - B));
            A.Low32 = A.Low32 >>> B;
        }
    }
    return A;
    return;
}

/**
 * Bitwise AND operator for STRUCT_Core structure.
 * Performs a bitwise AND on each 32-bit part of the two STRUCT_Core values.
 *
 * @param A The first STRUCT_Core operand.
 * @param B The second STRUCT_Core operand.
 * @return A STRUCT_Core where each field is the bitwise AND of the corresponding fields in A and B.
 */
static final operator(28) STRUCT_Core &bit(STRUCT_Core OperandA, STRUCT_Core OperandB)
{
	local STRUCT_Core Result;

	Result.Low32 = OperandA.Low32 & OperandB.Low32;
	Result.High32 = OperandA.High32 & OperandB.High32;
	return Result;
}
/**
 * Bitwise XOR operator for STRUCT_Core structure.
 * Performs a bitwise XOR on each 32-bit part of the two STRUCT_Core values.
 *
 * @param OperandA The first STRUCT_Core operand.
 * @param OperandB The second STRUCT_Core operand.
 * @return A STRUCT_Core where each field is the bitwise XOR of the corresponding fields in OperandA and OperandB.
 */
static final operator(28) STRUCT_Core XOR(STRUCT_Core OperandA, STRUCT_Core OperandB)
{
	local STRUCT_Core Result;

	Result.Low32 = OperandA.Low32 ^ OperandB.Low32;
	Result.High32 = OperandA.High32 ^ OperandB.High32;
	return Result;
}

/**
 * Bitwise OR operator for STRUCT_Core structure.
 * Performs a bitwise OR on each 32-bit part of the two STRUCT_Core values.
 *
 * @param OperandA The first STRUCT_Core operand.
 * @param OperandB The second STRUCT_Core operand.
 * @return A STRUCT_Core where each field is the bitwise OR of the corresponding fields in OperandA and OperandB.
 */
static final operator(28) STRUCT_Core BitwiseOr(STRUCT_Core OperandA, STRUCT_Core OperandB)
{
	local STRUCT_Core Result;

	Result.Low32 = OperandA.Low32 | OperandB.Low32;
	Result.High32 = OperandA.High32 | OperandB.High32;
	return Result;
}

static final operator(22) int leftrotate(coerce int Value, coerce int Bits)
{
	return (Value << Bits) | (Value >>> (32 - Bits));
	return;
}

static final operator(22) int rightrotate(coerce int Value, coerce int Bits)
{
	return (Value >>> Bits) | (Value << (32 - Bits));
	return;
}

// Computes the MD5 hash of the input string and returns it as a hexadecimal string.
static simulated function string Md5Hash(string Input)
{
	local byte Block[64], LengthBytes[64];
	local int BlockIndex, ByteIndex, MsgIndex, Word[16], A, B, C, D, Temp, F, G, MsgLen, PaddedLen, BitLen, Round, RotateAmount;
	local string Chunk;
	local int AA, BB, CC, DD;
	// MD5 initial values
	A = 1732584193;
	B = -271733879;
	C = -1732584194;
	D = 271733878;

	MsgLen = Len(Input);
	PaddedLen = int(MsgLen + 9 + (64 - ((MsgLen + 9) % 64)));
	BitLen = MsgLen * 8;

	// Store bit length in little-endian
	LengthBytes[0] = byte(BitLen & 255);
	LengthBytes[1] = byte((BitLen >>> 8) & 255);
	LengthBytes[2] = byte((BitLen >>> 16) & 255);
	LengthBytes[3] = byte((BitLen >>> 24) & 255);

	BlockIndex = 0;
	while (BlockIndex < PaddedLen)
	{
		Chunk = Mid(Input, BlockIndex, 64);

		// Fill block with message bytes, padding, and length as needed
		for (ByteIndex = 0; ByteIndex < 64; ByteIndex++)
		{
			MsgIndex = BlockIndex + ByteIndex;
			if (MsgIndex < MsgLen)
			{
				Block[ByteIndex] = byte(Asc(Mid(Chunk, ByteIndex, 1)));
			}
			else if (MsgIndex == MsgLen)
			{
				Block[ByteIndex] = 128;
			}
			else if (MsgIndex > MsgLen && MsgIndex < (PaddedLen - 8))
			{
				Block[ByteIndex] = 0;
			}
			else
			{
				Block[ByteIndex] = LengthBytes[ByteIndex - 56];
			}
		}

		// Convert block to 16 little-endian 32-bit words
		for (ByteIndex = 0; ByteIndex < 16; ByteIndex++)
		{
			Word[ByteIndex] = ((int(Block[(ByteIndex * 4) + 3]) << 24) | (int(Block[(ByteIndex * 4) + 2]) << 16)) | (int(Block[(ByteIndex * 4) + 1]) << 8) | int(Block[ByteIndex * 4]);
		}

		// Main MD5 loop

		AA = A;
		BB = B;
		CC = C;
		DD = D;

		for (Round = 0; Round < 64; Round++)
		{
			if (Round < 16)
			{
				F = (BB & CC) | ((~BB) & DD);
				G = Round;
			}
			else if (Round < 32)
			{
				F = (DD & BB) | ((~DD) & CC);
				G = ((5 * Round) + 1) % 16;
			}
			else if (Round < 48)
			{
				F = BB ^ CC ^ DD;
				G = ((3 * Round) + 5) % 16;
			}
			else
			{
				F = CC ^ (BB | (~DD));
				G = (7 * Round) % 16;
			}

			Temp = DD;
			DD = CC;
			CC = BB;
			RotateAmount = default.G_Byte44[Round];
			BB += (((AA + F + default.G_Intv43[Round] + Word[G]) leftrotate RotateAmount));
			AA = Temp;
		}

		A += AA;
		B += BB;
		C += CC;
		D += DD;

		BlockIndex += 64;
	}

	// Return hash as hex string (little-endian)
	return (((IntToHexString(A, true)) $ (IntToHexString(B, true))) $ (IntToHexString(C, true))) $ (IntToHexString(D, true));
}

static simulated function string eqS_vxv_2626(string Msg)
{
	local int H0, H1, H2, H3, H4;
	local byte Block[64], LengthBytes[8];
	local int i, j, msgLen, paddedLen, bitLen, W[80];
	local int A, B, C, D, E, F, K, temp;
	local string chunk;

	// SHA-1 initial hash values
	H0 = 1732584193;
	H1 = -271733879;
	H2 = -1732584194;
	H3 = 271733878;
	H4 = -1009589776;

	msgLen = Len(Msg);
	paddedLen = msgLen + 9;
	if ((paddedLen % 64) != 0)
		paddedLen += 64 - (paddedLen % 64);
	bitLen = msgLen * 8;

	// Store bit length in big-endian
	LengthBytes[4] = byte((bitLen >>> 24) & 255);
	LengthBytes[5] = byte((bitLen >>> 16) & 255);
	LengthBytes[6] = byte((bitLen >>> 8) & 255);
	LengthBytes[7] = byte(bitLen & 255);

	i = 0;
	while (i < paddedLen)
	{
		chunk = Mid(Msg, i, 64);

		// Fill block with message bytes, padding, and length as needed
		for (j = 0; j < 64; j++)
		{
			if ((i + j) < msgLen)
			{
				Block[j] = byte(Asc(Mid(chunk, j, 1)));
			}
			else if ((i + j) == msgLen)
			{
				Block[j] = 128;
			}
			else if ((i + j) > msgLen && (i + j) < (paddedLen - 8))
			{
				Block[j] = 0;
			}
			else
			{
				Block[j] = LengthBytes[j - 56];
			}
		}

		// Prepare message schedule
		for (j = 0; j < 16; j++)
		{
			W[j] = ((int(Block[j * 4]) << 24) | (int(Block[(j * 4) + 1]) << 16) | (int(Block[(j * 4) + 2]) << 8) | int(Block[(j * 4) + 3]));
		}
		for (j = 16; j < 80; j++)
		{
			W[j] = ((W[j - 3] ^ W[j - 8] ^ W[j - 14] ^ W[j - 16]) leftrotate 1);
		}

		// Initialize working variables
		A = H0;
		B = H1;
		C = H2;
		D = H3;
		E = H4;

		for (j = 0; j < 80; j++)
		{
			if (j < 20)
			{
				F = (B & C) | ((~B) & D);
				K = 1518500249;
			}
			else if (j < 40)
			{
				F = B ^ C ^ D;
				K = 1859775393;
			}
			else if (j < 60)
			{
				F = (B & C) | (B & D) | (C & D);
				K = -1894007588;
			}
			else
			{
				F = B ^ C ^ D;
				K = -899497514;
			}
			temp = ((A leftrotate 5) + F + E + K + W[j]);
			E = D;
			D = C;
			C = B leftrotate 30;
			B = A;
			A = temp;
		}

		H0 += A;
		H1 += B;
		H2 += C;
		H3 += D;
		H4 += E;

		i += 64;
	}

	return ((((IntToHexString(H0)) $ (IntToHexString(H1))) $ (IntToHexString(H2))) $ (IntToHexString(H3))) $ (IntToHexString(H4));
}
// Computes the SHA-256 or SHA-224 hash of the input string and returns it as a hexadecimal string.
// If useSha224 is true, computes SHA-224; otherwise, computes SHA-256.
static simulated function string ComputeSHA256(string Input, optional bool useSha224)
{
	local int H0, H1, H2, H3, H4, H5, H6, H7;
	local byte Block[64], LengthBytes[8];
	local int i, j, inputLen, paddedLen, bitLen, W[64];
	local string chunk, hashHex;
	local int S0, S1, Ch, Maj, T1, T2, A, B, C, D, E, F, G, H;

	// Initialize hash values
	if(useSha224)
	{
		H0 = -1056596264;
		H1 = 914150663;
		H2 = 812702999;
		H3 = -150054599;
		H4 = -4191439;
		H5 = 1750603025;
		H6 = 1694076839;
		H7 = -1090891868;        
	}
	else
	{
		H0 = 1779033703;
		H1 = -1150833019;
		H2 = 1013904242;
		H3 = -1521486534;
		H4 = 1359893119;
		H5 = -1694144372;
		H6 = 528734635;
		H7 = 1541459225;
	}
	inputLen = Len(Input);
	paddedLen = int(inputLen + 9 + (64 - (inputLen + 9) % 64));
	bitLen = inputLen * 8;
	// Store bit length in big-endian
	LengthBytes[4] = byte((bitLen >>> 24) & 255);
	LengthBytes[5] = byte((bitLen >>> 16) & 255);
	LengthBytes[6] = byte((bitLen >>> 8) & 255);
	LengthBytes[7] = byte(bitLen & 255);

	i = 0;
	while(i < paddedLen)
	{
		chunk = Mid(Input, i, 64);
		// Fill block with message bytes, padding, and length as needed
		for(j = 0; j < 64; j++)
		{
			if((i + j) < inputLen)
			{
				Block[j] = byte(Asc(Mid(chunk, j, 1)));
			}
			else if((i + j) == inputLen)
			{
				Block[j] = 128;
			}
			else if((i + j) > inputLen && (i + j) < (paddedLen - 8))
			{
				Block[j] = 0;                    
			}
			else
			{
				Block[j] = LengthBytes[j - 56];
			}
		}
		// Prepare message schedule
		for(j = 0; j < 16; j++)
		{
			W[j] = ((int(Block[j * 4]) << 24) | (int(Block[(j * 4) + 1]) << 16)) | (int(Block[(j * 4) + 2]) << 8) | int(Block[(j * 4) + 3]);
		}
		for(j = 16; j < 64; j++)
		{
			S0 = ((W[j - 15] rightrotate 7) ^ (W[j - 15] rightrotate 18)) ^ (W[j - 15] >>> 3);
			S1 = ((W[j - 2] rightrotate 17) ^ (W[j - 2] rightrotate 19)) ^ (W[j - 2] >>> 10);
			W[j] = ((W[j - 16] + S0) + W[j - 7]) + S1;
		}
		A = H0;
		B = H1;
		C = H2;
		D = H3;
		E = H4;
		F = H5;
		G = H6;
		H = H7;
		for(j = 0; j < 64; j++)
		{
			S1 = ((E rightrotate 6) ^ (E rightrotate 11)) ^ (E rightrotate 25);
			Ch = (E & F) ^ ((~E) & G);
			T1 = (((H + S1) + Ch) + default.G_Int42[j]) + W[j];
			S0 = ((A rightrotate 2) ^ (A rightrotate 13)) ^ (A rightrotate 22);
			Maj = ((A & B) ^ (A & C)) ^ (B & C);
			T2 = S0 + Maj;
			H = G;
			G = F;
			F = E;
			E = D + T1;
			D = C;
			C = B;
			B = A;
			A = T1 + T2;
		}
		H0 += A;
		H1 += B;
		H2 += C;
		H3 += D;
		H4 += E;
		H5 += F;
		H6 += G;
		H7 += H;
		i += 64;
	}
	hashHex = ((((((IntToHexString(H0)) $ (IntToHexString(H1))) $ (IntToHexString(H2))) $ (IntToHexString(H3))) $ (IntToHexString(H4))) $ (IntToHexString(H5))) $ (IntToHexString(H6));
	if(useSha224)
	{
		return hashHex;
	}
	return hashHex $ (IntToHexString(H7));
}

static simulated function string eqS_vxv_2627(string Msg)
{
    return ComputeSHA256(Msg, true);
    return;
}

static simulated function string eqS_vxv_2628(string Msg)
{
    return ComputeSHA256(Msg);
    return;
}
/**
 * Computes the SHA-512 or SHA-384 hash of the input string and returns it as a hexadecimal string.
 * If useSha384 is true, computes SHA-384; otherwise, computes SHA-512.
 *
 * @param Input The input string to hash.
 * @param useSha384 If true, computes SHA-384; otherwise, computes SHA-512.
 * @return The hash as a hexadecimal string.
 */
static simulated function string ComputeSHA512(string Input, optional bool useSha384)
{
	local STRUCT_Core H0, H1, H2, H3, H4, H5, H6, H7;
	local byte Block[128], LengthBytes[16];
	local int i, j, inputLen, paddedLen, bitLen;
	local STRUCT_Core W[80];
	local string chunk, hashHex;
	local STRUCT_Core S0, S1, Ch, Maj, T1, T2, A, B, C, D, E, F, G, H;

	// Initialize hash values for SHA-512 or SHA-384
	if(useSha384)
	{
		H0 = MakeStructCore(-1056596264, -876896931);
		H1 = MakeStructCore(914150663, 1654270250);
		H2 = MakeStructCore(812702999, -1856437926);
		H3 = MakeStructCore(-150054599, 355462360);
		H4 = MakeStructCore(-4191439, 1731405415);
		H5 = MakeStructCore(1750603025, -1900787065);
		H6 = MakeStructCore(1694076839, -619958771);
		H7 = MakeStructCore(-1090891868, 1203062813);
	}
	else
	{
		H0 = MakeStructCore(-205731576, 1779033703);
		H1 = MakeStructCore(-2067093701, -1150833019);
		H2 = MakeStructCore(-23791573, 1013904242);
		H3 = MakeStructCore(1595750129, -1521486534);
		H4 = MakeStructCore(-1377402159, 1359893119);
		H5 = MakeStructCore(725511199, -1694144372);
		H6 = MakeStructCore(-79577749, 528734635);
		H7 = MakeStructCore(327033209, 1541459225);
	}

	inputLen = Len(Input);
	paddedLen = int(float(inputLen + 17) + (float(128) - (float(inputLen + 17) % float(128))));
	bitLen = inputLen * 8;

	// Store bit length in big-endian (last 8 bytes)
	LengthBytes[12] = byte((bitLen >>> 24) & 255);
	LengthBytes[13] = byte((bitLen >>> 16) & 255);
	LengthBytes[14] = byte((bitLen >>> 8) & 255);
	LengthBytes[15] = byte(bitLen & 255);

	i = 0;
	while(i < paddedLen)
	{
		chunk = Mid(Input, i, 128);

		// Fill block with message bytes, padding, and length as needed
		for(j = 0; j < 128; j++)
		{
			if((i + j) < inputLen)
			{
				Block[j] = byte(Asc(Mid(chunk, j, 1)));
			}
			else if((i + j) == inputLen)
			{
				Block[j] = 128;
			}
			else if((i + j) > inputLen && (i + j) < (paddedLen - 16))
			{
				Block[j] = 0;
			}
			else
			{
				Block[j] = LengthBytes[j - 112];
			}
		}

		// Prepare message schedule
		for(j = 0; j < 16; j++)
		{
			W[j] = MakeStructCore(
				((int(Block[(j * 8) + 4]) << 24) | (int(Block[(j * 8) + 5]) << 16) | (int(Block[(j * 8) + 6]) << 8) | int(Block[(j * 8) + 7])),
				((int(Block[j * 8]) << 24) | (int(Block[(j * 8) + 1]) << 16) | (int(Block[(j * 8) + 2]) << 8) | int(Block[(j * 8) + 3]))
			);
		}
		for(j = 16; j < 80; j++)
		{
			S0 = (W[j - 15] rightrotate 1) XOR (W[j - 15] rightrotate 8) XOR (W[j - 15] right_shift 7);
			S1 = (W[j - 2] rightrotate 19) XOR (W[j - 2] rightrotate 61) XOR (W[j - 2] right_shift 6);
			W[j] = W[j - 16] plus_vxv_798 S0 plus_vxv_798 W[j - 7] plus_vxv_798 S1;
		}

		// Initialize working variables
		A = H0;
		B = H1;
		C = H2;
		D = H3;
		E = H4;
		F = H5;
		G = H6;
		H = H7;

		for(j = 0; j < 80; j++)
		{
			S1 = (E rightrotate 14) XOR (E rightrotate 18) XOR (E rightrotate 41);
			Ch = (E &bit F) XOR ((BITNOT E) &bit G);
			T1 = H plus_vxv_798 S1 plus_vxv_798 Ch plus_vxv_798 default.G_StructCore36[j] plus_vxv_798 W[j];
			S0 = (A rightrotate 28) XOR (A rightrotate 34) XOR (A rightrotate 39);
			Maj = (A &bit B) XOR (A &bit C) XOR (B &bit C);
			T2 = S0 plus_vxv_798 Maj;

			H = G;
			G = F;
			F = E;
			E = D plus_vxv_798 T1;
			D = C;
			C = B;
			B = A;
			A = T1 plus_vxv_798 T2;
		}

		H0 AddAssignSTRUCT_Core A;
		H1 AddAssignSTRUCT_Core B;
		H2 AddAssignSTRUCT_Core C;
		H3 AddAssignSTRUCT_Core D;
		H4 AddAssignSTRUCT_Core E;
		H5 AddAssignSTRUCT_Core F;
		H6 AddAssignSTRUCT_Core G;
		H7 AddAssignSTRUCT_Core H;

		i += 128;
	}

	hashHex = StructCoreToHex(H0) $ StructCoreToHex(H1) $ StructCoreToHex(H2) $ StructCoreToHex(H3) $ StructCoreToHex(H4) $ StructCoreToHex(H5);
	if(useSha384)
	{
		return hashHex;
	}
	return hashHex $ StructCoreToHex(H6) $ StructCoreToHex(H7);
}

static simulated function string eqS_vxv_2629(string Msg)
{
    return ComputeSHA512(Msg, true);
    return;
}

static simulated function string eqS_vxv_2630(string Msg)
{
    return ComputeSHA512(Msg);
    return;
}
/**
 * Converts a 32-bit integer to a hexadecimal string representation.
 * Suggested function name: IntToHexString
 *
 * @param Value The 32-bit integer to convert.
 * @param LittleEndian If true, outputs in little-endian byte order; otherwise, big-endian.
 * @return The hexadecimal string (8 characters).
 */
static simulated function string IntToHexString(int Value, optional bool LittleEndian)
{
	local string Result;
	local int ByteValue, Index;

	for (Index = 0; Index < 4; Index++)
	{
		if (LittleEndian)
		{
			ByteValue = Index;
		}
		else
		{
			ByteValue = 3 - Index;
		}
		ByteValue = (Value >>> (ByteValue * 8)) & 255;
		Result = Result $ default.G_String127[(ByteValue & 240) >>> 4] $ default.G_String127[ByteValue & 15];
	}
	return Result;
}
/**
 * Converts a STRUCT_Core (64-bit value) to a hexadecimal string.
 * @param Value The STRUCT_Core value to convert.
 * @param LittleEndian If true, output is little-endian; otherwise, big-endian.
 * @return Hexadecimal string representation of the STRUCT_Core value.
 */
static simulated function string StructCoreToHex(STRUCT_Core Value, optional bool LittleEndian)
{
	local string HexStr;
	local int ByteIndex, ByteValue;

	for (ByteIndex = 0; ByteIndex < 8; ByteIndex++)
	{
		// Determine byte order
		if (LittleEndian)
		{
			ByteValue = ByteIndex;
		}
		else
		{
			ByteValue = 7 - ByteIndex;
		}
		// Extract the byte from the 64-bit value (High32:Low32)
		ByteValue = (GetHigh32(Value right_shift (ByteValue * 8))) & 255;
		HexStr = HexStr $ default.G_String127[(ByteValue & 240) >>> 4] $ default.G_String127[ByteValue & 15];
	}
	return HexStr;
}

defaultproperties
{
    G_Intv43(0)=-680876936
    G_Intv43(1)=-389564586
    G_Intv43(2)=606105819
    G_Intv43(3)=-1044525330
    G_Intv43(4)=-176418897
    G_Intv43(5)=1200080426
    G_Intv43(6)=-1473231341
    G_Intv43(7)=-45705983
    G_Intv43(8)=1770035416
    G_Intv43(9)=-1958414417
    G_Intv43(10)=-42063
    G_Intv43(11)=-1990404162
    G_Intv43(12)=1804603682
    G_Intv43(13)=-40341101
    G_Intv43(14)=-1502002290
    G_Intv43(15)=1236535329
    G_Intv43(16)=-165796510
    G_Intv43(17)=-1069501632
    G_Intv43(18)=643717713
    G_Intv43(19)=-373897302
    G_Intv43(20)=-701558691
    G_Intv43(21)=38016083
    G_Intv43(22)=-660478335
    G_Intv43(23)=-405537848
    G_Intv43(24)=568446438
    G_Intv43(25)=-1019803690
    G_Intv43(26)=-187363961
    G_Intv43(27)=1163531501
    G_Intv43(28)=-1444681467
    G_Intv43(29)=-51403784
    G_Intv43(30)=1735328473
    G_Intv43(31)=-1926607734
    G_Intv43(32)=-378558
    G_Intv43(33)=-2022574463
    G_Intv43(34)=1839030562
    G_Intv43(35)=-35309556
    G_Intv43(36)=-1530992060
    G_Intv43(37)=1272893353
    G_Intv43(38)=-155497632
    G_Intv43(39)=-1094730640
    G_Intv43(40)=681279174
    G_Intv43(41)=-358537222
    G_Intv43(42)=-722521979
    G_Intv43(43)=76029189
    G_Intv43(44)=-640364487
    G_Intv43(45)=-421815835
    G_Intv43(46)=530742520
    G_Intv43(47)=-995338651
    G_Intv43(48)=-198630844
    G_Intv43(49)=1126891415
    G_Intv43(50)=-1416354905
    G_Intv43(51)=-57434055
    G_Intv43(52)=1700485571
    G_Intv43(53)=-1894986606
    G_Intv43(54)=-1051523
    G_Intv43(55)=-2054922799
    G_Intv43(56)=1873313359
    G_Intv43(57)=-30611744
    G_Intv43(58)=-1560198380
    G_Intv43(59)=1309151649
    G_Intv43(60)=-145523070
    G_Intv43(61)=-1120210379
    G_Intv43(62)=718787259
    G_Intv43(63)=-343485551
    G_Byte44(0)=7
    G_Byte44(1)=12
    G_Byte44(2)=17
    G_Byte44(3)=22
    G_Byte44(4)=7
    G_Byte44(5)=12
    G_Byte44(6)=17
    G_Byte44(7)=22
    G_Byte44(8)=7
    G_Byte44(9)=12
    G_Byte44(10)=17
    G_Byte44(11)=22
    G_Byte44(12)=7
    G_Byte44(13)=12
    G_Byte44(14)=17
    G_Byte44(15)=22
    G_Byte44(16)=5
    G_Byte44(17)=9
    G_Byte44(18)=14
    G_Byte44(19)=20
    G_Byte44(20)=5
    G_Byte44(21)=9
    G_Byte44(22)=14
    G_Byte44(23)=20
    G_Byte44(24)=5
    G_Byte44(25)=9
    G_Byte44(26)=14
    G_Byte44(27)=20
    G_Byte44(28)=5
    G_Byte44(29)=9
    G_Byte44(30)=14
    G_Byte44(31)=20
    G_Byte44(32)=4
    G_Byte44(33)=11
    G_Byte44(34)=16
    G_Byte44(35)=23
    G_Byte44(36)=4
    G_Byte44(37)=11
    G_Byte44(38)=16
    G_Byte44(39)=23
    G_Byte44(40)=4
    G_Byte44(41)=11
    G_Byte44(42)=16
    G_Byte44(43)=23
    G_Byte44(44)=4
    G_Byte44(45)=11
    G_Byte44(46)=16
    G_Byte44(47)=23
    G_Byte44(48)=6
    G_Byte44(49)=10
    G_Byte44(50)=15
    G_Byte44(51)=21
    G_Byte44(52)=6
    G_Byte44(53)=10
    G_Byte44(54)=15
    G_Byte44(55)=21
    G_Byte44(56)=6
    G_Byte44(57)=10
    G_Byte44(58)=15
    G_Byte44(59)=21
    G_Byte44(60)=6
    G_Byte44(61)=10
    G_Byte44(62)=15
    G_Byte44(63)=21
    G_String127(0)="0"
    G_String127(1)="1"
    G_String127(2)="2"
    G_String127(3)="3"
    G_String127(4)="4"
    G_String127(5)="5"
    G_String127(6)="6"
    G_String127(7)="7"
    G_String127(8)="8"
    G_String127(9)="9"
    G_String127(10)="a"
    G_String127(11)="b"
    G_String127(12)="c"
    G_String127(13)="d"
    G_String127(14)="e"
    G_String127(15)="f"
    G_Int42(0)=1116352408
    G_Int42(1)=1899447441
    G_Int42(2)=-1245643825
    G_Int42(3)=-373957723
    G_Int42(4)=961987163
    G_Int42(5)=1508970993
    G_Int42(6)=-1841331548
    G_Int42(7)=-1424204075
    G_Int42(8)=-670586216
    G_Int42(9)=310598401
    G_Int42(10)=607225278
    G_Int42(11)=1426881987
    G_Int42(12)=1925078388
    G_Int42(13)=-2132889090
    G_Int42(14)=-1680079193
    G_Int42(15)=-1046744716
    G_Int42(16)=-459576895
    G_Int42(17)=-272742522
    G_Int42(18)=264347078
    G_Int42(19)=604807628
    G_Int42(20)=770255983
    G_Int42(21)=1249150122
    G_Int42(22)=1555081692
    G_Int42(23)=1996064986
    G_Int42(24)=-1740746414
    G_Int42(25)=-1473132947
    G_Int42(26)=-1341970488
    G_Int42(27)=-1084653625
    G_Int42(28)=-958395405
    G_Int42(29)=-710438585
    G_Int42(30)=113926993
    G_Int42(31)=338241895
    G_Int42(32)=666307205
    G_Int42(33)=773529912
    G_Int42(34)=1294757372
    G_Int42(35)=1396182291
    G_Int42(36)=1695183700
    G_Int42(37)=1986661051
    G_Int42(38)=-2117940946
    G_Int42(39)=-1838011259
    G_Int42(40)=-1564481375
    G_Int42(41)=-1474664885
    G_Int42(42)=-1035236496
    G_Int42(43)=-949202525
    G_Int42(44)=-778901479
    G_Int42(45)=-694614492
    G_Int42(46)=-200395387
    G_Int42(47)=275423344
    G_Int42(48)=430227734
    G_Int42(49)=506948616
    G_Int42(50)=659060556
    G_Int42(51)=883997877
    G_Int42(52)=958139571
    G_Int42(53)=1322822218
    G_Int42(54)=1537002063
    G_Int42(55)=1747873779
    G_Int42(56)=1955562222
    G_Int42(57)=2024104815
    G_Int42(58)=-2067236844
    G_Int42(59)=-1933114872
    G_Int42(60)=-1866530822
    G_Int42(61)=-1538233109
    G_Int42(62)=-1090935817
    G_Int42(63)=-965641998
    G_StructCore36(0)=()
    G_StructCore36(1)=()
    G_StructCore36(2)=()
    G_StructCore36(3)=()
    G_StructCore36(4)=()
    G_StructCore36(5)=()
    G_StructCore36(6)=()
    G_StructCore36(7)=()
    G_StructCore36(8)=()
    G_StructCore36(9)=()
    G_StructCore36(10)=()
    G_StructCore36(11)=()
    G_StructCore36(12)=()
    G_StructCore36(13)=()
    G_StructCore36(14)=()
    G_StructCore36(15)=()
    G_StructCore36(16)=()
    G_StructCore36(17)=()
    G_StructCore36(18)=()
    G_StructCore36(19)=()
    G_StructCore36(20)=()
    G_StructCore36(21)=()
    G_StructCore36(22)=()
    G_StructCore36(23)=()
    G_StructCore36(24)=()
    G_StructCore36(25)=()
    G_StructCore36(26)=()
    G_StructCore36(27)=()
    G_StructCore36(28)=()
    G_StructCore36(29)=()
    G_StructCore36(30)=()
    G_StructCore36(31)=()
    G_StructCore36(32)=()
    G_StructCore36(33)=()
    G_StructCore36(34)=()
    G_StructCore36(35)=()
    G_StructCore36(36)=()
    G_StructCore36(37)=()
    G_StructCore36(38)=()
    G_StructCore36(39)=()
    G_StructCore36(40)=()
    G_StructCore36(41)=()
    G_StructCore36(42)=()
    G_StructCore36(43)=()
    G_StructCore36(44)=()
    G_StructCore36(45)=()
    G_StructCore36(46)=()
    G_StructCore36(47)=()
    G_StructCore36(48)=()
    G_StructCore36(49)=()
    G_StructCore36(50)=()
    G_StructCore36(51)=()
    G_StructCore36(52)=()
    G_StructCore36(53)=()
    G_StructCore36(54)=()
    G_StructCore36(55)=()
    G_StructCore36(56)=()
    G_StructCore36(57)=()
    G_StructCore36(58)=()
    G_StructCore36(59)=()
    G_StructCore36(60)=()
    G_StructCore36(61)=()
    G_StructCore36(62)=()
    G_StructCore36(63)=()
    G_StructCore36(64)=()
    G_StructCore36(65)=()
    G_StructCore36(66)=()
    G_StructCore36(67)=()
    G_StructCore36(68)=()
    G_StructCore36(69)=()
    G_StructCore36(70)=()
    G_StructCore36(71)=()
    G_StructCore36(72)=()
    G_StructCore36(73)=()
    G_StructCore36(74)=()
    G_StructCore36(75)=()
    G_StructCore36(76)=()
    G_StructCore36(77)=()
    G_StructCore36(78)=()
    G_StructCore36(79)=()
}