/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4278A789
/// @DnDArgument : "code" "//menu control$(13_10)guiWidth = guiWidth;$(13_10)guiHeight = guiHeight;$(13_10)//Item ease in$(13_10)$(13_10)$(13_10)menuX += (menuX_Target - menuX) / menuSpeed;$(13_10)$(13_10)//keyboard controls$(13_10)$(13_10)if (menuControl)$(13_10){$(13_10)	if (keyboard_check_pressed(vk_up))$(13_10)	{$(13_10)		menuCursor++;$(13_10)		if(menuCursor >= menuItems) menuCursor = 0;$(13_10)	}$(13_10)	if (keyboard_check_pressed(vk_down))$(13_10)	{$(13_10)		menuCursor--;$(13_10)		if(menuCursor < 0) menuCursor = menuItems - 1;$(13_10)	}$(13_10)	if (keyboard_check_pressed(vk_enter))$(13_10)	{$(13_10)		audio_play_sound(sfx_Select,1,false);$(13_10)		menuX_Target = guiWidth+200;$(13_10)		menuCommitted = menuCursor;$(13_10)		menuControl = false;$(13_10)	}$(13_10)	var mouse_y_gui = device_mouse_y_to_gui(0 && 1);$(13_10)		if(mouse_y_gui < menuY) && (mouse_y_gui > menuTop)$(13_10)		{$(13_10)			menuCursor = (menuY - mouse_y_gui) div (menuItemheight * 1.5);$(13_10)			$(13_10)			if(mouse_check_button_pressed(mb_left))$(13_10)			{$(13_10)				audio_play_sound(sfx_Select,1,false);$(13_10)				menuX_Target = guiWidth+200;$(13_10)				menuCommitted = menuCursor;$(13_10)				menuControl = false;	$(13_10)			}$(13_10)		$(13_10)		}$(13_10)$(13_10)}$(13_10)if (menuX > guiWidth+150) && (menuCommitted != -1)$(13_10){$(13_10)	switch (menuCommitted)$(13_10)	{$(13_10)$(13_10)		case 1: default: instance_activate_object(objGameController); instance_destroy(); break;$(13_10)		$(13_10)		case 0: default: room_goto(rmMainMenu); break;$(13_10)		$(13_10)	}	$(13_10)	$(13_10)	$(13_10)}"
//menu control
guiWidth = guiWidth;
guiHeight = guiHeight;
//Item ease in


menuX += (menuX_Target - menuX) / menuSpeed;

//keyboard controls

if (menuControl)
{
	if (keyboard_check_pressed(vk_up))
	{
		menuCursor++;
		if(menuCursor >= menuItems) menuCursor = 0;
	}
	if (keyboard_check_pressed(vk_down))
	{
		menuCursor--;
		if(menuCursor < 0) menuCursor = menuItems - 1;
	}
	if (keyboard_check_pressed(vk_enter))
	{
		audio_play_sound(sfx_Select,1,false);
		menuX_Target = guiWidth+200;
		menuCommitted = menuCursor;
		menuControl = false;
	}
	var mouse_y_gui = device_mouse_y_to_gui(0 && 1);
		if(mouse_y_gui < menuY) && (mouse_y_gui > menuTop)
		{
			menuCursor = (menuY - mouse_y_gui) div (menuItemheight * 1.5);
			
			if(mouse_check_button_pressed(mb_left))
			{
				audio_play_sound(sfx_Select,1,false);
				menuX_Target = guiWidth+200;
				menuCommitted = menuCursor;
				menuControl = false;	
			}
		
		}

}
if (menuX > guiWidth+150) && (menuCommitted != -1)
{
	switch (menuCommitted)
	{

		case 1: default: instance_activate_object(objGameController); instance_destroy(); break;
		
		case 0: default: room_goto(rmMainMenu); break;
		
	}	
	
	
}