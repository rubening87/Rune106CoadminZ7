// Descend from this class to add an item to the Mod menu.
// Be sure to put a line in your Mod's .int file to specify this class
// eg: 
// Object=(Name=MyModPkg.MyModMenuItem,Class=Class,MetaClass=RMenu.RMenuModItem,Description="Combo Menu Label")
//
// Thanks to Rus 'Nurail' Clark for integrating this code
//

class RMenuModItem expands UWindowList;

var class<UWindowWindow> ModPageWindowClass;
var string MenuCaption;
var int MenuWidth;
var int MenuHeight;
var int MenuWidthStartOffset;

defaultproperties
{
     MenuCaption="Mod"
     MenuWidth=440
     MenuHeight=320
}
