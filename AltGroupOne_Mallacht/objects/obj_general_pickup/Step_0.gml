/// @description Checking for changes evey tick of the game.

if(collision_rectangle(x, y, x + 64, y + 64, obj_PlayerCharacter, false, false)){
	show_E = true
	show_debug_message(string_concat("X: ", x + (sprite_get_width(id.sprite_index)/2), ", ", "Y: ", y - 10))
	if(obj_PlayerCharacter.interact){
		if(global.inventory_iterator < 16){
			obj_PlayerCharacter.addToInventory(id)
		}
	}
} else {
	show_E = false
	draw_set_colour(c_yellow)
}
if(collision_rectangle(x, y, x + 64, y + 64, obj_Puca_Tamable, false, false)){
	if(obj_Puca_Tamable.interact){
		if(global.inventory_iterator < 16){
			obj_PlayerCharacter.addToInventory(id)
		}
	}
}