/// @description Insert description here
// You can write your code in this editor
if(animation != noone){
switch(global.animation){
	
	case "Intro":
	if(layer_sequence_get_headpos(animation) == 500){
		layer_sequence_destroy(animation)
		room_goto(rm_player_house_Inside)
		global.animation = noone
		
	}
	break
	
	case "Leprechaun Death":
	if(layer_sequence_get_headpos(animation) == 120){
		layer_sequence_destroy(animation)
		room_goto(rm_player_house_Inside)
	}
	break
	
	case "shopkeep_escape":
	if(layer_sequence_get_headpos(animation) == 80){
		layer_sequence_destroy(animation)
		}
	break
	
	case "Fomorian intro":
	if(layer_sequence_get_headpos(animation) >= 55){
		if(!instance_exists(obj_dialogue_box))
		create_dialogue("Fomorian", true, true)
	}
	break
	
	case "Wincon":
	if(layer_sequence_get_headpos(animation) == 39 && !instance_exists(obj_dialogue_box_Large) && !frame_snap){
		frame_snap = true
		show_debug_message("Iterated")
		layer_sequence_pause(animation)
		create_dialogue("Safety", true, true)
	}
	if(layer_sequence_get_headpos(animation) == 140){
		global.animation = "Credits"
		room_goto(rm_credits)
	}
	break
	
	case "Credits":
	if(layer_sequence_get_headpos(animation) == 360){
		instance_create_layer(504, 704, "Instances", btn_quit)
	}
	break
}
}