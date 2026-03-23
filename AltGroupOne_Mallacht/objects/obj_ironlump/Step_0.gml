/// @description Insert description here
// You can write your code in this editor
if(collision_rectangle(x, y, x + 64, y + 64, obj_Puca_Tamable, false, false)){
	if(global.inventory_iterator < 16){
			obj_PlayerCharacter.addToInventory(id)
		}
}
if(collision_rectangle(x, y, x + 64, y + 64, obj_PlayerCharacter, false, false)){
	if(global.inventory_iterator < 16){
			obj_PlayerCharacter.addToInventory(id)
		}
}
