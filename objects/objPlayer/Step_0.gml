/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 21CF3957
/// @DnDArgument : "code" "//pause effect$(13_10)if instance_exists(objPauseController) exit;$(13_10)begin if !instance_exists(objPauseController)$(13_10)$(13_10)$(13_10)$(13_10)//Player Key build$(13_10)key_right = keyboard_check(ord("D"));$(13_10)key_left = -keyboard_check(ord("A"));$(13_10)key_jump = keyboard_check_pressed(vk_space);$(13_10)key_grab = mouse_check_button_pressed(mb_left);$(13_10)$(13_10)var move = key_left + key_right;$(13_10)$(13_10)$(13_10)//player state behavior conditions $(13_10)$(13_10)$(13_10)if !place_meeting(x,y,objSurface)$(13_10){$(13_10)	playerStates = playerStates.jump$(13_10)}$(13_10)if (place_meeting(x+1, y, objSurface) || place_meeting(x-1, y, objSurface))$(13_10){$(13_10)	playerStates = playerStates.wallhold$(13_10)}$(13_10)if place_meeting(x,y+1,objSurface)$(13_10){$(13_10)	$(13_10)	playerStates = playerStates.run$(13_10)}$(13_10)$(13_10)//JUMP CODE$(13_10)$(13_10)//jump key action$(13_10)if (place_meeting(x, y+1, objSurface))$(13_10)	{$(13_10)		jumps = jumpsmax;$(13_10)	}$(13_10)	if (key_jump) && (jumps > 0)$(13_10)	{$(13_10)		audio_play_sound(sfx_Jump,1,false)$(13_10)		jumps -= 1;$(13_10)	 vsp = - jumpspeed;$(13_10)	}$(13_10)	$(13_10)//jumping: input verification$(13_10)if (place_meeting(x+1, y, objSurface) || place_meeting(x-1, y, objSurface))$(13_10)$(13_10){$(13_10)	if(key_left)$(13_10)	{$(13_10)		wallInput = -1$(13_10)	}$(13_10)	else if(key_right)$(13_10)	{$(13_10)		wallInput = 1$(13_10)	}$(13_10)	else{$(13_10)		wallInput = 0	$(13_10)	}$(13_10)}$(13_10)$(13_10)//idle$(13_10)$(13_10)//player moving state$(13_10)if playerStates == playerStates.run$(13_10){$(13_10)$(13_10)$(13_10)	if(key_left != 0 || key_right != 0){$(13_10)		if(hsp != movespeed * (key_left + key_right)){$(13_10)				hsp +=  decel*(key_left + key_right);$(13_10)		}$(13_10)$(13_10)	}else{$(13_10)		if(hsp < 0){$(13_10)			hsp += decel;	$(13_10)		}else if (hsp > 0){$(13_10)			hsp -= decel;	$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)//player gravity state$(13_10)if playerStates == playerStates.jump$(13_10){$(13_10)	if (vsp < 10) $(13_10)	{$(13_10)		vsp += grav;$(13_10)	}$(13_10)		$(13_10)		if(key_left != 0 || key_right != 0){$(13_10)		if(hsp != movespeed * (key_left + key_right)){$(13_10)				hsp +=  decel*(key_left + key_right);$(13_10)		}$(13_10)$(13_10)	}else{$(13_10)		if(hsp < 0){$(13_10)			hsp += decel;	$(13_10)		}$(13_10)		if (hsp > 0){$(13_10)			hsp -= decel;	$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)//WALL HOLDING$(13_10)if playerStates == playerStates.wallhold$(13_10){$(13_10)if (place_meeting(x+1, y, objSurface) || place_meeting(x-1, y, objSurface))$(13_10){$(13_10)$(13_10)$(13_10)//wall gravity	$(13_10)	if (move == 0)$(13_10)	{$(13_10)		vsp = vsp + .2;$(13_10)$(13_10)	}$(13_10)	$(13_10)	$(13_10)//wall jump mechanics$(13_10)	if(key_jump) && (move!=0)$(13_10)	{$(13_10)		$(13_10)		if (wallInput == 0 || wallInput == -1)$(13_10)			{$(13_10)				hsp = hsp+5$(13_10)				//x = x+10$(13_10)				playerStates=playerStates.jump$(13_10)				wallInput = 0$(13_10)			$(13_10)			}$(13_10)		if (wallInput == 1)$(13_10)			{$(13_10)				hsp = -5$(13_10)				wallInput = 0$(13_10)			}$(13_10)	$(13_10)	vsp = - jumpspeed $(13_10)$(13_10)$(13_10)		$(13_10)	}$(13_10)	if (vsp != 0)$(13_10)		{$(13_10)			 vsp += walldecel;$(13_10)		$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			walldecel = .2$(13_10)		}$(13_10)	$(13_10)}$(13_10)}$(13_10)$(13_10)//setter for player orientation$(13_10)if(key_left)$(13_10){$(13_10)	playerFacing = playerFacing.left;$(13_10)}else if(key_right)$(13_10){$(13_10)	playerFacing = playerFacing.right;$(13_10)}$(13_10)$(13_10)//player animation$(13_10)$(13_10)//run animation$(13_10)$(13_10)if (move != 0) $(13_10){$(13_10)	//image_xscale = move;$(13_10)	if(move < 0)$(13_10)	{$(13_10)		image_xscale = -3;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		image_xscale = 3;$(13_10)	}$(13_10)}$(13_10)$(13_10)	if place_meeting(x, y+1, objSurface)$(13_10)		{$(13_10)			if (move != 0) sprite_index = spPlayerMove;else sprite_index = spPlayer;		$(13_10)		}$(13_10)		else if (move!= 0) || move = 0$(13_10)			{ $(13_10)//wall climb aimation$(13_10)			if place_meeting(x+1, y, objSurface) || place_meeting(x-1, y, objSurface)$(13_10)			{$(13_10)				$(13_10)				sprite_index = spPlayerMove$(13_10)				if keyboard_check_direct(vk_space) sprite_index = spPlayerMove // change this to climb$(13_10)					if place_meeting(x, y+1, objSurface) && ( place_meeting(x+1, y, objSurface) || place_meeting(x-1, y, objSurface))$(13_10)					{$(13_10)						sprite_index = spPlayer$(13_10)				$(13_10)					}$(13_10)$(13_10)			}$(13_10)//jump animation$(13_10)				else if !place_meeting(x, y+1, objSurface) || ( !place_meeting(x+1, y, objSurface))$(13_10)				{$(13_10)				sprite_index = spPlayer$(13_10)					if keyboard_check_direct(vk_space) sprite_index = spPlayerMove$(13_10)			$(13_10)	$(13_10)				}$(13_10)$(13_10)				else sprite_index = spPlayerMove;$(13_10)			}$(13_10)	$(13_10)$(13_10)$(13_10)//moving platform hsp$(13_10)var hspFinal = hsp + hspCarry$(13_10)hspCarry = 0$(13_10)$(13_10)$(13_10)//Player Collisions$(13_10)$(13_10)	//horizontal collision$(13_10)if (place_meeting(x+hspFinal, y, objSurface))$(13_10){$(13_10)	while(!place_meeting(x+sign(hspFinal), y, objSurface))$(13_10)	{$(13_10)		x += sign(hspFinal);$(13_10)	}$(13_10)		hspFinal = 0;$(13_10)		hsp=0;$(13_10)}$(13_10)	x += hspFinal;$(13_10)$(13_10)	//vertical collision$(13_10)if (place_meeting(x, y+vsp, objSurface))$(13_10){$(13_10)	while(!place_meeting(x,y+sign(vsp), objSurface))$(13_10)	{$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)	$(13_10)}$(13_10)	$(13_10)$(13_10)	y += vsp;$(13_10)	$(13_10)// Capture system$(13_10)if (key_grab && alarm_get(0) <= 0) {$(13_10)	if (playerFacing = playerFacing.left){$(13_10)		var grab = instance_create_layer(x - sprite_width, y, "Instances", objGrab);$(13_10)	}else{$(13_10)		var grab = instance_create_layer(x + sprite_width, y, "Instances", objGrab);$(13_10)	}$(13_10)	alarm_set(1,8);$(13_10)	$(13_10)	playerStates = playerStates.grab;$(13_10)	//sets cooldown timer$(13_10)	alarm_set(0,24);$(13_10)}$(13_10)}$(13_10)/*//code for footsteps$(13_10)if sprite_index = spPlayerMove$(13_10){$(13_10)	if (image_index = 1 )$(13_10)	{$(13_10)		$(13_10)		sound = choose(sfx_footstep1,sfx_footstep2)$(13_10)		audio_play_sound(sound, 1,false)$(13_10)		$(13_10)	}$(13_10)	$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)}$(13_10)*/"
//pause effect
if instance_exists(objPauseController) exit;
begin if !instance_exists(objPauseController)



//Player Key build
key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(vk_space);
key_grab = mouse_check_button_pressed(mb_left);

var move = key_left + key_right;


//player state behavior conditions 


if !place_meeting(x,y,objSurface)
{
	playerStates = playerStates.jump
}
if (place_meeting(x+1, y, objSurface) || place_meeting(x-1, y, objSurface))
{
	playerStates = playerStates.wallhold
}
if place_meeting(x,y+1,objSurface)
{
	
	playerStates = playerStates.run
}

//JUMP CODE

//jump key action
if (place_meeting(x, y+1, objSurface))
	{
		jumps = jumpsmax;
	}
	if (key_jump) && (jumps > 0)
	{
		audio_play_sound(sfx_Jump,1,false)
		jumps -= 1;
	 vsp = - jumpspeed;
	}
	
//jumping: input verification
if (place_meeting(x+1, y, objSurface) || place_meeting(x-1, y, objSurface))

{
	if(key_left)
	{
		wallInput = -1
	}
	else if(key_right)
	{
		wallInput = 1
	}
	else{
		wallInput = 0	
	}
}

//idle

//player moving state
if playerStates == playerStates.run
{


	if(key_left != 0 || key_right != 0){
		if(hsp != movespeed * (key_left + key_right)){
				hsp +=  decel*(key_left + key_right);
		}

	}else{
		if(hsp < 0){
			hsp += decel;	
		}else if (hsp > 0){
			hsp -= decel;	
		}
	}
}


//player gravity state
if playerStates == playerStates.jump
{
	if (vsp < 10) 
	{
		vsp += grav;
	}
		
		if(key_left != 0 || key_right != 0){
		if(hsp != movespeed * (key_left + key_right)){
				hsp +=  decel*(key_left + key_right);
		}

	}else{
		if(hsp < 0){
			hsp += decel;	
		}
		if (hsp > 0){
			hsp -= decel;	
		}
	}
}

//WALL HOLDING
if playerStates == playerStates.wallhold
{
if (place_meeting(x+1, y, objSurface) || place_meeting(x-1, y, objSurface))
{


//wall gravity	
	if (move == 0)
	{
		vsp = vsp + .2;

	}
	
	
//wall jump mechanics
	if(key_jump) && (move!=0)
	{
		
		if (wallInput == 0 || wallInput == -1)
			{
				hsp = hsp+5
				//x = x+10
				playerStates=playerStates.jump
				wallInput = 0
			
			}
		if (wallInput == 1)
			{
				hsp = -5
				wallInput = 0
			}
	
	vsp = - jumpspeed 


		
	}
	if (vsp != 0)
		{
			 vsp += walldecel;
		
		}
		else
		{
			walldecel = .2
		}
	
}
}

//setter for player orientation
if(key_left)
{
	playerFacing = playerFacing.left;
}else if(key_right)
{
	playerFacing = playerFacing.right;
}

//player animation

//run animation

if (move != 0) 
{
	//image_xscale = move;
	if(move < 0)
	{
		image_xscale = -3;
	}
	else
	{
		image_xscale = 3;
	}
}

	if place_meeting(x, y+1, objSurface)
		{
			if (move != 0) sprite_index = spPlayerMove;else sprite_index = spPlayer;		
		}
		else if (move!= 0) || move = 0
			{ 
//wall climb aimation
			if place_meeting(x+1, y, objSurface) || place_meeting(x-1, y, objSurface)
			{
				
				sprite_index = spPlayerMove
				if keyboard_check_direct(vk_space) sprite_index = spPlayerMove // change this to climb
					if place_meeting(x, y+1, objSurface) && ( place_meeting(x+1, y, objSurface) || place_meeting(x-1, y, objSurface))
					{
						sprite_index = spPlayer
				
					}

			}
//jump animation
				else if !place_meeting(x, y+1, objSurface) || ( !place_meeting(x+1, y, objSurface))
				{
				sprite_index = spPlayer
					if keyboard_check_direct(vk_space) sprite_index = spPlayerMove
			
	
				}

				else sprite_index = spPlayerMove;
			}
	


//moving platform hsp
var hspFinal = hsp + hspCarry
hspCarry = 0


//Player Collisions

	//horizontal collision
if (place_meeting(x+hspFinal, y, objSurface))
{
	while(!place_meeting(x+sign(hspFinal), y, objSurface))
	{
		x += sign(hspFinal);
	}
		hspFinal = 0;
		hsp=0;
}
	x += hspFinal;

	//vertical collision
if (place_meeting(x, y+vsp, objSurface))
{
	while(!place_meeting(x,y+sign(vsp), objSurface))
	{
		y += sign(vsp);
	}
	vsp = 0;
	
}
	

	y += vsp;
	
// Capture system
if (key_grab && alarm_get(0) <= 0) {
	if (playerFacing = playerFacing.left){
		var grab = instance_create_layer(x - sprite_width, y, "Instances", objGrab);
	}else{
		var grab = instance_create_layer(x + sprite_width, y, "Instances", objGrab);
	}
	alarm_set(1,8);
	
	playerStates = playerStates.grab;
	//sets cooldown timer
	alarm_set(0,24);
}
}
/*//code for footsteps
if sprite_index = spPlayerMove
{
	if (image_index = 1 )
	{
		
		sound = choose(sfx_footstep1,sfx_footstep2)
		audio_play_sound(sound, 1,false)
		
	}
	


}


}
*//**/