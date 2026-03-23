/// @description The code being run every tick within the game.
player_controls()
#region Movement
//If we want to do WASD controls
if(!freeze){
	image_speed = 1
	h_movement = ( (move_speed + sprint*keyboard_check(vk_shift)) * (keyboard_check(ord("D")) - keyboard_check(ord("A"))));
	v_movement = ((move_speed + sprint*keyboard_check(vk_shift)) * (keyboard_check(ord("S")) - keyboard_check(ord("W"))));
	
	global.pastX = x
	global.pastY = y
	
	x += h_movement
	y += v_movement
}

//Stopping at borders
if(x < 0) {x = 0}
else if((x + 64) > room_width) {x = room_width - 64}

if(y < 0) {y = 0}
else if((y + 64) > room_height) {y = room_height - 64}
#endregion

#region ControlPanel
if(keyboard_check(vk_escape)){
	remember_state_with_player(room)
	room_goto(rm_pause_menu)
}

if(open_book && !instance_exists(obj_moms_book)){
	draw_book()
} else if(open_book){
	instance_destroy(obj_moms_book)
	obj_PlayerCharacter.freeze = false
}

if(toggle_inventory && !instance_exists(obj_inventory) && array_length(global.inventory)!=0){
	draw_inventory()
} else if(toggle_inventory){
	instance_destroy(obj_inventory)
	obj_PlayerCharacter.freeze = false
}

#endregion

#region Sprite Changing
image_xscale = 1.25 * (camera_get_view_width(view_camera[0])/1366)
image_yscale = 1.25 * (camera_get_view_height(view_camera[0])/768)
if(freeze){
	image_speed = 0
	image_index = 0
}
sprite_index = sprite[current_Sprite];
if(h_movement == 0 && v_movement == 0)
{current_Sprite = player_flat}

if(h_movement > 0){current_Sprite = player_right;}
else if(h_movement < 0){current_Sprite = player_left;}

if(v_movement > 0){current_Sprite = player_down;}
else if(v_movement < 0){current_Sprite = player_up;}
#endregion

#region Moving Audio
audio_listener_orientation(0, 0, 1, lengthdir_x(1, direction), lengthdir_y(1, direction), 0);
#endregion


////player wall

//moveXDir = h_movement;
//moveYDir = v_movement;

//xspd = moveXDir * move_speed;
//yspd = moveYDir * move_speed;


//var _subPixel = .5;

//if place_meeting( h_movement+xspd, v_movement, obj_wall){
//	var _pixelCheck = _subPixel * sign (xspd);
//	while !place_meeting(h_movement + _pixelCheck, v_movement, obj_wall){
//		h_movement+= _pixelCheck;
//	}
//	xspd = 0;
//}
// h_movement += xspd;

//if place_meeting(h_movement, v_movement+yspd, obj_wall){
//	var _pixelCheck = _subPixel * sign (yspd);
//	while !place_meeting(h_movement, v_movement+ _pixelCheck, obj_wall){
//		v_movement+= _pixelCheck;
//	}
//	yspd = 0;
//}

//h_movement += xspd;
//v_movement += yspd;