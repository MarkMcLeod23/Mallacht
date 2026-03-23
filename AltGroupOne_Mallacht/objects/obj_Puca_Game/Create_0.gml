/// @description Building the snake game itself.
speed_count = obj_Puca_Tamable.move_speed
stage = 1
stages_spawned = [false, false, false]
obstacles = []
global.clear = false

//function spawn_Scene_3(){
//	clear_obstacles(obstacles)
//	lastX = 0
//	lastY = 0
//	for(i = 0; i < 7; i++){
//		newX = random_range(0, camera_get_view_width(view_camera[0]))
//		if(newX == lastX)
//			newX = random_range(0, camera_get_view_width(view_camera[0]))
		
//		newY = random_range(0, camera_get_view_height(view_camera[0]))
//		if(newY == lastY){
//			newY = random_range(0, camera_get_view_height(view_camera[0]))
//		}else{
//			newest_tree = spawn_Targets(newX, newY, obj_Tree)
//			obstacles[i] = newest_tree
//		}
//	}
//	stages_spawned[2] = true
//}

///@param {real} xCoord An int for what X to spawn the target at.
///@param {real} yCoord An int for what Y to spawn the target at.
///@param {asset} spawn_Object the object to be spawned when the target is finished.
function spawn_Targets(xCoord, yCoord, spawn_Object){
	newest_Target = instance_create_layer(xCoord, yCoord, "Instances", obj_target)
	newest_Target.object_spawn = spawn_Object
}

///@param {array} array_of_obstacles An array of objects to be destroyed through the function.
function clear_obstacles(array_of_obstacles){
	if(array_length(array_of_obstacles) > 0){
		global.clear = true
	} else {
		global.clear = false
	}
}



