/// @description Insert description here
// You can write your code in this editor
current_speed = string(move_speed)
x_shift = move_speed * movement_x
if(move_speed >= 15){
	limit = true
} else if(move_speed <= 0){
	tamed = true
}
if(!tamed){
	movement_x = 2
	if(keyboard_check_pressed(ord("W"))){
		if(lane < 4){
			lane++
			y -= 192
		}
	} else if(keyboard_check_pressed(ord("S"))){
		if(lane > 1){
			lane--
			y += 192
		}
	}

//else if(keyboard_check(ord("A"))){
//	movement_x = -1
//	movement_y = 0
//	}
//else if(keyboard_check(ord("D"))){
//	movement_x = 1
//	movement_y = 0
//	}
} else {
	image_index = 0
	current_speed = "Tamed!"
	movement_x = 0
	if(!instance_exists(obj_dialogue_box)&&!instance_exists(obj_dialogue_box_Large)){
		create_dialogue("Tamed Pooka", true, true)
	}
}

x += (x_shift)

if(limit){
move_speed -= .01
} else {
	move_speed += .1
}