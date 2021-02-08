/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 533456CF
/// @DnDArgument : "code" "image_xscale = 3;$(13_10)$(13_10)if(!audio_is_playing(sfx_Whip))$(13_10){$(13_10)	audio_play_sound(sfx_Whip,1,false);$(13_10)}"
image_xscale = 3;

if(!audio_is_playing(sfx_Whip))
{
	audio_play_sound(sfx_Whip,1,false);
}