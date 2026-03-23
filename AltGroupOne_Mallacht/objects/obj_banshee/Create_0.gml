/// @description The events for the creation of the Banshee
alarm[0] = 120

scream_emitter = audio_emitter_create()
audio_emitter_position(scream_emitter, x, y, 0)

audio_emitter_falloff(scream_emitter, 300, 100, 1)

banshee_scream = false;
scream_color = c_red
defeated = 0


start_x = x
start_y = y

#macro going_left -1
#macro going_right 1
#macro going_up -2
#macro going_down 2
switch(pattern_style){
	case "Square":
	move_speed = 8

	patrol_line_size = 450
	dir = going_left
	break
	
	case "NS":
	move_speed = 12

	patrol_line_size = 1100
	dir = going_down
	break
	
	default:
	move_speed = 0;
	
	patrol_line_size = 0
}


global.mom_book_pages[3] = spr_Banshee_page