/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 52AA94DB
/// @DnDArgument : "code" "if file_exists("gamepaused.png")$(13_10){$(13_10)file_delete("gamepaused.png");$(13_10)}"
if file_exists("gamepaused.png")
{
file_delete("gamepaused.png");
}