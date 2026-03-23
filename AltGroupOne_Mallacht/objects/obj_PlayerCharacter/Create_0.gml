/// @description The main variables and values created during an instance of the player character.

player_controls()
#region Setup for Player Character
freeze = false;
room_mark = room;
if(global.force_book){
	draw_book()
	global.force_book = false
}
depth = 5
#endregion

#region Basic Stats
move_speed = 4;
sprint = 2.15;
h_movement = 0;
v_movement = 0;
#endregion
#region Sprite Configs
sprite[player_flat] = Character_sprite;
sprite[player_left] = Walk_left;
sprite[player_right] = Walk_right;
sprite[player_down] = Front_walk;
sprite[player_up] = Walking_back;
current_Sprite = player_flat
sprite_index = sprite[current_Sprite];
image_xscale = (camera_get_view_width(view_camera[0])/683)
image_yscale = (camera_get_view_height(view_camera[0])/384)
show_debug_message(string(image_xscale))
show_debug_message(string(image_yscale))
#endregion
#region Macros
#macro  player_flat 0
#macro  player_left 1
#macro  player_right 2
#macro  player_down 3
#macro player_up 4
#endregion
#region Inventory
function addToInventory(item_id){
	global.inventory[global.inventory_iterator] = item_id.sprite_index
	global.inventory_iterator++;
	instance_destroy(item_id)
}

/// @param {Asset.GMSprite} sprite_of_item The sprite
/// @return {Bool} True if the player has the item, false otherwise
function checkInventory(sprite_of_item){
	target = sprite_of_item
	has_it = array_get_index(global.inventory, target) // if the item isn't in the array, this will be -1.
	if(has_it != -1)
	{
		return true
	}else return false
}
	
/// @param {Asset.GMSprite} sprite_of_item The sprite
/// @return {Bool} True if the player has the item, false otherwise
function giveItem(sprite_of_item){
	target = sprite_of_item
	has_it = array_get_index(global.inventory, target) // if the item isn't in the array, this will be -1.
	if(has_it != -1)
	{
		for(i = has_it; i < global.inventory_iterator-1; i++) // shift all other items down, replacing the found item.
		{
			global.inventory[i] = global.inventory[i+1]
		}
		array_delete(global.inventory, -1, 1) // delete the last item to avoid duplicates.
		global.inventory_iterator--;
		return true
	}else return false
}
#endregion
#region Audio
audio_listener_orientation(0, 0, 1, 0, -1, 0);
#endregion

// Wall
xspd = 0;
yspd = 0;