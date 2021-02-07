/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0EF13BCE
/// @DnDArgument : "code" "if file_exists("gamepaused.png")$(13_10){$(13_10)file_delete("gamepaused.png");$(13_10)}$(13_10)$(13_10)//instance_activate_all();"
if file_exists("gamepaused.png")
{
file_delete("gamepaused.png");
}

//instance_activate_all();