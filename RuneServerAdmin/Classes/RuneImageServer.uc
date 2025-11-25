class RuneImageServer expands ImageServer;

event Query(WebRequest Request, WebResponse Response)
{
	local string AdminUsername, AdminPassword, AdminRealm;

	AdminUsername = class'RuneServerAdmin'.default.AdminUsername;
	AdminPassword = class'RuneServerAdmin'.default.AdminPassword;
	AdminRealm    = class'RuneServerAdmin'.default.AdminRealm;

	// Check authentication:
	if ((AdminUsername != "" && Caps(Request.Username) != Caps(AdminUsername)) || (AdminPassword != "" && Caps(Request.Password) != Caps(AdminPassword))) {
		Response.FailAuthentication(AdminRealm);
		return;
	}

	Super.Query(Request, Response);
}

defaultproperties
{
}
