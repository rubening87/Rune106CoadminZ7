//=============================================================================
// RuneMenuMultiplayerTop
//=============================================================================
class RuneMenuMultiplayerTop extends RuneMenuTopWindow;


var RuneButton ServerButton, PlayerButton, JoinButton, ModButton;
var UWindowWindow ServerWindow, PlayerWindow, JoinWindow, ModConfigWindow;
var RuneMenuTopWindow ModWindow;

var localized string ServerText, PlayerText, JoinText, ModText;
var localized string ServerHelp, PlayerHelp, JoinHelp, ModHelp;

var RMenuModItem RMMITemp;


//=============================================================================
// Class Functions
//=============================================================================

function Created()
{
     Super.Created();

     // 10:     10          150          290
     // 60:          85          225

     ServerButton = RuneButton(CreateControl(class'RuneButton', 0, 0, 130, 30));
     ServerButton.Text=ServerText;
     ServerButton.SetHelpText(ServerHelp);
     ServerButton.WinLeft = 85;
     ServerButton.WinTop = 60;

     JoinButton = RuneButton(CreateControl(class'RuneButton', 0, 0, 130, 30));
     JoinButton.Text=JoinText;
     JoinButton.SetHelpText(JoinHelp);
     JoinButton.WinLeft = 225;
     JoinButton.WinTop = 60;
	 if (IsModInstalled())
	 {
         PlayerButton = RuneButton(CreateControl(class'RuneButton', 0, 0, 130, 30));
	     PlayerButton.Text=PlayerText;
	     PlayerButton.SetHelpText(PlayerHelp);
         PlayerButton.WinLeft = 85;
         PlayerButton.WinTop = 10;

         ModButton = RuneButton(CreateControl(class'RuneButton', 0, 0, 130, 30));
         ModButton.Text=ModText;
         ModButton.SetHelpText(ModHelp);
         ModButton.WinLeft = 225;
         ModButton.WinTop = 10;
	 }
	 else
	 {
	      PlayerButton = RuneButton(CreateControl(class'RuneButton', 0, 0, 130, 30));
	      PlayerButton.Text=PlayerText;
		  PlayerButton.SetHelpText(PlayerHelp);
	      PlayerButton.WinLeft = 150;
	      PlayerButton.WinTop = 10;
	 }

}

function Notify(UWindowDialogControl C, byte E)
{
     if(E == DE_Click)
     {
          switch(C)
          {
               case JoinButton:
                    HideAllWindows();
                    if(JoinWindow == None)
                         JoinWindow = Root.CreateWindow(class'RBrowserMainWindow', 200, 100, 440, 360);
                    if(JoinWindow != None)
                         JoinWindow.ShowWindow();
                    break;
               case ServerButton:
                    HideAllWindows();
                    if(ServerWindow == None)
                         ServerWindow = Root.CreateWindow(class'RuneMenuServerScrollClient', 200, 100, 440, 360);
                    if(ServerWindow != None)
                         ServerWindow.ShowWindow();
                    break;
			   case PlayerButton:
                    HideAllWindows();
					if(PlayerWindow == None)
					     PlayerWindow = Root.CreateWindow(class'RuneMenuPlayerScrollClient', 200, 100, 440, 360);
					if(PlayerWindow != None)
					     PlayerWindow.ShowWindow();
					break;
			   case ModButton:
					HideAllWindows();
					if(ModWindow == None)
					     ModWindow = RuneMenuTopWindow(Root.CreateWindow(class'RMenuModTop', 200, 100, 440, 40));
					ModWindow.ShowWindow();
				    if(ModWindow != None && !ModWindow.bOpen)
					     ModWindow.SlideOpen();
					break;
			}
     }
}

function bool IsModInstalled()
{

    local string NextRModClass;
	local string NextRModDesc;
	
	GetPlayerOwner().GetNextIntDesc("RMenu.RMenuModItem", 0, NextRModClass, NextRModDesc);

    if(NextRModClass != "")
	{
		return True;
	}
	else 
		return False;

}

function HideAllWindows()
{
     if (ServerWindow!=None)
          ServerWindow.HideWindow();
     if (PlayerWindow!=None)
          PlayerWindow.HideWindow();
     if (JoinWindow!=None)
          JoinWindow.HideWindow();
     if (ModWindow!=None)
          ModWindow.HideWindow();
	 if (ModConfigWindow!=None)
          ModConfigWindow.HideWindow();
}

defaultproperties
{
     ServerText="Server"
     PlayerText="Player"
     JoinText="Join"
     ModText="Mods"
     ServerHelp="Start a new multiplayer game"
     PlayerHelp="Setup player options"
     JoinHelp="Join an existing game"
     ModHelp="Configure installed Mods"
}
