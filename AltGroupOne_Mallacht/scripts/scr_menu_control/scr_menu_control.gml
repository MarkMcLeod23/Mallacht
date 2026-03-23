// A script to freeze the player, mark the room, mark the player's coords in that room, and go to the pause menu.
// 

global.returnRoom = rm_home; // moved declaration from obj_PlayerCharacter to avoid scope issues when starting game

function remember_state_with_player(currentRoom){
	global.returnRoom = currentRoom
	global.playerX = obj_PlayerCharacter.x
	global.playerY = obj_PlayerCharacter.y
}

function draw_book(){
	obj_PlayerCharacter.freeze = true
	var book_x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2)
	var book_y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2)
	book = instance_create_layer(book_x, book_y, "Instances", obj_moms_book)
}

function draw_book_setPage(pageNumber){
	obj_PlayerCharacter.freeze = true
	var book_x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2)
	var book_y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2)
	book = instance_create_layer(book_x, book_y, "Instances", obj_moms_book)
	book.page_number = pageNumber
}

function draw_inventory(){
	obj_PlayerCharacter.freeze = true
	if(room = rm_player_house_Inside){
		var inv_x = camera_get_view_x(view_camera[0])  + 64
		var inv_y = camera_get_view_y(view_camera[0])  + 64
	}else{
		var inv_x = camera_get_view_x(view_camera[0])  + (camera_get_view_width(view_camera[0])/4)
		var inv_y = camera_get_view_y(view_camera[0])  + (camera_get_view_height(view_camera[0])/4)
	}
	inventory = instance_create_layer(inv_x, inv_y, "Instances", obj_inventory)
	inventory.image_xscale = ((.43*camera_get_view_width(view_camera[0])/sprite_get_width(inventory.sprite_index)))
	show_debug_message(string(inventory.image_xscale))
	inventory.image_yscale = ((.45*camera_get_view_height(view_camera[0])/sprite_get_height(inventory.sprite_index)))
	show_debug_message(string(inventory.image_yscale))
}

function remember_state(currentRoom){
	global.returnRoom = currentRoom
}