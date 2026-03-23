/// @description Checking if the player has walked away
if(instance_exists(obj_MultiTextBox) && !collision_circle(x, y , 160, obj_PlayerCharacter, false, false)){
	instance_destroy(obj_MultiTextBox)
}