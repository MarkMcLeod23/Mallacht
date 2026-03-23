/// @description Insert description here
// You can write your code in this editor
if(fomorian_health < 1){
	alarm[0] = -1
	global.animation = "Wincon"
	instance_create_layer(x, y, "Instances", obj_animation_controller)
}