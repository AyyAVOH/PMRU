/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 324F90C3
/// @DnDArgument : "code" "// Shows slime sprite in bottom left of screen when caught.$(13_10)if(global.slimeCatchCheck == 1)$(13_10){$(13_10)    draw_sprite(spDummymon, 0, 190, 1700,);$(13_10)}"
// Shows slime sprite in bottom left of screen when caught.
if(global.slimeCatchCheck == 1)
{
    draw_sprite(spDummymon, 0, 190, 1700,);
}