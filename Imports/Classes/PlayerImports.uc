//=============================================================================
// PlayerImports.
//=============================================================================
class PlayerImports expands Imports
	abstract;

#exec SKELETAL IMPORT NAME=Ragnar FILE=..\meshes\players\ragnar.scm PACKAGE=Players
#exec SKELETAL ORIGIN NAME=Ragnar X=0 Y=0 Z=-4 Pitch=0 Yaw=-64 Roll=-64

#exec SKELETAL SAVEPACKAGE PACKAGE=Players FILE=..\meshes\Players.ums

defaultproperties
{
}
