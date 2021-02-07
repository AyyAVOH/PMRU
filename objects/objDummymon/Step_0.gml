/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 62A4C5B6
/// @DnDArgument : "code" "vsp = grv;$(13_10)$(13_10)$(13_10)//horizontal collision$(13_10)if (place_meeting(x+hsp,y,objSurface))$(13_10){$(13_10)     while (!place_meeting(x+sign(hsp),y,objSurface))$(13_10)	 {$(13_10)		  x = x + sign(hsp);$(13_10)	 }$(13_10)    //hsp = 0;$(13_10)	hsp *= -1;$(13_10)	}$(13_10)	x = x + hsp;$(13_10)$(13_10)//vertical collision$(13_10)if (place_meeting(x,y+vsp,objSurface))$(13_10){$(13_10)      while (!place_meeting(x,y+sign(vsp),objSurface))$(13_10)	  {$(13_10)	  y = y + sign(vsp);$(13_10)  }$(13_10)  $(13_10)      vsp = 0;$(13_10)	  }$(13_10)	  y = y + vsp;$(13_10)	  $(13_10)	  //jump near trigger$(13_10)	if (place_meeting(x+64*sign(hsp), y, objTriggerJump))$(13_10)	{$(13_10)		vsp = -5;$(13_10)	}"
vsp = grv;


//horizontal collision
if (place_meeting(x+hsp,y,objSurface))
{
     while (!place_meeting(x+sign(hsp),y,objSurface))
	 {
		  x = x + sign(hsp);
	 }
    //hsp = 0;
	hsp *= -1;
	}
	x = x + hsp;

//vertical collision
if (place_meeting(x,y+vsp,objSurface))
{
      while (!place_meeting(x,y+sign(vsp),objSurface))
	  {
	  y = y + sign(vsp);
  }
  
      vsp = 0;
	  }
	  y = y + vsp;
	  
	  //jump near trigger
	if (place_meeting(x+64*sign(hsp), y, objTriggerJump))
	{
		vsp = -5;
	}