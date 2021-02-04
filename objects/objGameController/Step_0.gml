/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1FC4BEB4
/// @DnDArgument : "code" "//For using 'ESC' Key to pause game$(13_10)$(13_10)if keyboard_check_pressed(vk_escape)$(13_10){$(13_10)	$(13_10)instance_create_depth(x,y,1,objPauseController);$(13_10)$(13_10)instance_deactivate_object(objGameController);$(13_10)$(13_10)}$(13_10)$(13_10)"
//For using 'ESC' Key to pause game

if keyboard_check_pressed(vk_escape)
{
	
instance_create_depth(x,y,1,objPauseController);

instance_deactivate_object(objGameController);

}