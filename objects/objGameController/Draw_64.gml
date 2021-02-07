/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 324F90C3
/// @DnDArgument : "code" "// Shows slime sprite in bottom left of screen when caught.$(13_10)if(global.slimeCatchCheck == 1)$(13_10){$(13_10)    draw_sprite_ext(spDummymon, 0, 350, 3235, 2, 2, $(13_10)		image_angle, image_blend, image_alpha);;$(13_10)$(13_10)}$(13_10)$(13_10)if(global.staticSlimeCatchCheck == 1)$(13_10){$(13_10)    draw_sprite_ext(spStaticMon, 0, 150, 3175, 2, 2, $(13_10)		image_angle, image_blend, image_alpha);;$(13_10)$(13_10)}"
// Shows slime sprite in bottom left of screen when caught.
if(global.slimeCatchCheck == 1)
{
    draw_sprite_ext(spDummymon, 0, 350, 3235, 2, 2, 
		image_angle, image_blend, image_alpha);;

}

if(global.staticSlimeCatchCheck == 1)
{
    draw_sprite_ext(spStaticMon, 0, 150, 3175, 2, 2, 
		image_angle, image_blend, image_alpha);;

}