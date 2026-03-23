/// @description Insert description here
// You can write your code in this editor
if(obj_fomorian_Foot.image_index == 6){
	gm_fomorian_fight.blue -= 21.25
	gm_fomorian_fight.green -= 21.25
	gm_fomorian_fight.fomorian_health--
	instance_create_layer(x, y, "Foot", obj_Fomorian_trap_destroyed)
	instance_destroy()
}