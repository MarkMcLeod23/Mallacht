animation = noone
frame_snap = false
switch(global.animation){
	
	case "Intro":
	animation = layer_sequence_create("Sequences", 683, 384, sq_Intro)
	break
	
	case "BansheeDeath":
	playBansheeDeath()
	global.animation = noone
	break
	
	case "Leprechaun Death":
	animation = layer_sequence_create("Sequences", 683, 384, sq_Leprechaun_Death)
	break
	
	case "shopkeep_escape":
	animation = layer_sequence_create("Sequences", 683, 580, sq_shopkeeper_escape)
	break
	
	case "Fomorian intro":
	animation = layer_sequence_create("Sequences", 683, 384, sq_Fomorian_Intro)
	break
	
	case "Wincon":
	animation = layer_sequence_create("Sequences", 683, 384, sq_Win_con)
	break
	
	case "Credits":
	animation = layer_sequence_create("Instances", 683, 384, sq_Credits)
	break
	
	
}