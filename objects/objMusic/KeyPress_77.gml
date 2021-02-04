/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 22EF741B
/// @DnDArgument : "code" "if (audio_is_paused(sfx_MainMusic))$(13_10){$(13_10)audio_resume_sound(sfx_MainMusic)$(13_10)$(13_10)}$(13_10)else$(13_10){$(13_10)	$(13_10)audio_pause_sound(sfx_MainMusic);$(13_10)}$(13_10)$(13_10)"
if (audio_is_paused(sfx_MainMusic))
{
audio_resume_sound(sfx_MainMusic)

}
else
{
	
audio_pause_sound(sfx_MainMusic);
}