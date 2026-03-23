/// @description Setting the player_controls()
depth = 1
move_speed = 12
lane = camera_get_view_height(view_camera[0]) / y
movement_x = 0
tamed = false
limit = false
current_speed = string(move_speed)
x_shift = move_speed * movement_x

function end_game(x_coord, y_coord){
	while(x != x_coord){
		x += (x_coord - x)
	}
	while(y != y_coord){
		y += (y_coord - y)
	}
}