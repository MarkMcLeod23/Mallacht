/// @description Insert description here
// You can write your code in this editor
fomorian_health = 12
red = 255
blue = 255
green = 255
if(global.animation == "Fomorian intro"){
alarm[0] = -1
} else {
	alarm[0] = 160
}
function spawn_Targets(xCoord, yCoord, spawn_Object){
	newest_Target = instance_create_layer(xCoord, yCoord, "Foot", obj_target)
	newest_Target.object_spawn = spawn_Object
}