/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 17CA902F
/// @DnDArgument : "code" "//intialize variables$(13_10)grav = 0.3;$(13_10)hsp = 0;$(13_10)hspCarry = 0;$(13_10)vsp = 0;$(13_10)jumpspeed = 8;$(13_10)movespeed = 5;$(13_10)jumps = 0;$(13_10)decel = .5;$(13_10)walldecel = .2$(13_10)jumpsmax = 2;$(13_10)wallInput = 0;$(13_10)global.catchCheck = 0;$(13_10)alarm_set(0,0);$(13_10)$(13_10)// player states$(13_10)enum playerStates $(13_10){$(13_10)	$(13_10)	$(13_10)	idle,$(13_10)	run,$(13_10)	jump,$(13_10)	wallhold,$(13_10)	grab,$(13_10)	$(13_10)}$(13_10)$(13_10)// player facing$(13_10)enum playerFacing$(13_10){$(13_10)	left,$(13_10)	right,$(13_10)}$(13_10)playerFacing = playerFacing.right;$(13_10)"
//intialize variables
grav = 0.3;
hsp = 0;
hspCarry = 0;
vsp = 0;
jumpspeed = 8;
movespeed = 5;
jumps = 0;
decel = .5;
walldecel = .2
jumpsmax = 2;
wallInput = 0;
global.catchCheck = 0;
alarm_set(0,0);

// player states
enum playerStates 
{
	
	
	idle,
	run,
	jump,
	wallhold,
	grab,
	
}

// player facing
enum playerFacing
{
	left,
	right,
}
playerFacing = playerFacing.right;