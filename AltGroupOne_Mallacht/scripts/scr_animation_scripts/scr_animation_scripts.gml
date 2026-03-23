// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.animation = noone
function playStartAnimation(){
	room_goto(rm_player_house_Inside)
}
function playBansheeDeath(){
	banshee_animation = instance_create_layer(704, 4000, "Instances", obj_banshee_Stationary)
	
}

function playLeprechaunDeath(){
	layer_sequence_create("Sequences", 683, 384, sq_Leprechaun_Death)
}

function play_shopkeep_escape(){
	runaway = layer_sequence_create("Sequences", 683, 384, sq_shopkeeper_escape)
	}
