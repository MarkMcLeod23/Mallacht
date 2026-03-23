/// @description The receiver node for room navigation.
/// @description Decides which spawner the player instance will be created at, depending on what room they came from.
if(origin && global.returnRoom == rm_home){
	instance_create_layer(x, y, "Instances", obj_PlayerCharacter)
}else if(global.returnRoom == from_room){
	instance_create_layer(x, y, "Instances", obj_PlayerCharacter)
}else if(pause_save_spot && global.returnRoom == room){
	instance_create_layer(global.playerX, global.playerY, "Instances", obj_PlayerCharacter)
} else if (death_spawner){
	alarm[0] = 10
}