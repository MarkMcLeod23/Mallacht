///@description The events that occur every tick.

audio_emitter_position(scream_emitter, x, y, 0)

#region Patrol
switch(pattern_style){
	case "Square":
		switch(dir){
			case going_right:
			if(x < (start_x + patrol_line_size)){
				x += move_speed
			} else {
				dir = going_down
			}
			break
	
			case going_down:
			if(y < (start_y + patrol_line_size)){
				y += move_speed
			} else {
				dir = going_left
			}
			break
	
			case going_left:
			if(x > start_x){
				x -= move_speed
			} else {
				dir = going_up
			}
			break
	
			case going_up:
			if(y > start_y){
				y -= move_speed
			} else {
				dir = going_right
			}
			break
		}
	break
	case "NS":
		switch(dir){
	
		case going_down:
		if(y < (start_y + patrol_line_size)){
			y += move_speed
		} else {
			dir = going_up
		}
		break
	
		case going_up:
		if(y > start_y){
			y -= move_speed
		} else {
			dir = going_down
		}
		break
	}
	break
}
if(banshee_scream){
	collider = collision_circle((x + 55),(y+50), 150, obj_PlayerCharacter, false, true)
	if(collider&&!(obj_PlayerCharacter.checkInventory(spr_earPlugs))){
		global.animation = "BansheeDeath"
		room_goto(rm_animation_player)
	} else if (collider&&(obj_PlayerCharacter.checkInventory(spr_earPlugs))){
		start_x = x
		start_y = y
		patrol_line_size = 0
		defeated++
		if(defeated >= 1)
		alarm[2] = 20
		alarm[0] = -1
	}
if(obj_PlayerCharacter.checkInventory(spr_earPlugs)){
	scream_color = c_blue
}
}