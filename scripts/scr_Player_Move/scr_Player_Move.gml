/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2425C1FC
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_Player_Move"
function scr_Player_Move() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 41C3A613
	/// @DnDParent : 2425C1FC
	/// @DnDArgument : "code" "move = key_left + key_right;$(13_10)$(13_10)if(key_left != 0 || key_right != 0){$(13_10)	if(hsp != movespeed * (key_left + key_right)){$(13_10)			hsp +=  decel*(key_left + key_right);$(13_10)	}$(13_10)$(13_10)}else{$(13_10)	if(hsp < 0){$(13_10)		hsp += decel;	$(13_10)	}else if (hsp > 0){$(13_10)		hsp -= decel;	$(13_10)	}$(13_10)}"
	move = key_left + key_right;
	
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