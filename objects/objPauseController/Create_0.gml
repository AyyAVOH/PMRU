/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6365040A
/// @DnDArgument : "code" "$(13_10)$(13_10)//instance_deactivate_all(true);$(13_10)$(13_10)//Menu Gui$(13_10)$(13_10)guiWidth = display_get_gui_width() ;$(13_10)guiHeight = display_get_gui_height() ;$(13_10)guiMargin = 1990;$(13_10)$(13_10)menuX = guiWidth+200;$(13_10)menuY = guiHeight - guiMargin + 1000;$(13_10)menuX_Target = guiWidth-guiMargin;$(13_10)menuSpeed = 25; //lower is faster$(13_10)menuFont = fMenu;$(13_10)menuItemheight = font_get_size(fMenu);$(13_10)menuCommitted = -1;$(13_10)menuControl = true;$(13_10)$(13_10)menu[1] = "  Continue on";$(13_10)menu[0] = "Quit to Main Menu";$(13_10)$(13_10)menuItems = array_length_1d(menu);$(13_10)menuTop = menuY - ((menuItemheight * 1.5) * menuItems);$(13_10)menuCursor = 1;$(13_10)$(13_10)"


//instance_deactivate_all(true);

//Menu Gui

guiWidth = display_get_gui_width() ;
guiHeight = display_get_gui_height() ;
guiMargin = 1990;

menuX = guiWidth+200;
menuY = guiHeight - guiMargin + 1000;
menuX_Target = guiWidth-guiMargin;
menuSpeed = 25; //lower is faster
menuFont = fMenu;
menuItemheight = font_get_size(fMenu);
menuCommitted = -1;
menuControl = true;

menu[1] = "  Continue on";
menu[0] = "Quit to Main Menu";

menuItems = array_length_1d(menu);
menuTop = menuY - ((menuItemheight * 1.5) * menuItems);
menuCursor = 1;