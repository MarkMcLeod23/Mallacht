/// @description Displays all the items the player has in their inventory
if(room = rm_player_house_Inside){
	draw_sprite_ext(spr_inv_placeholder, 0, x, y, 0.5, 0.5, 0, c_white, 1);
	for(i = 0; i < global.inventory_iterator; i++){
		draw_sprite_ext(global.inventory[i], 0, (x+16+(90*(i%4))), (y+(90*(i div 4))), 0.5, 0.5, 0, c_white, 1);
	}
}else{
	draw_self()
	for(i = 0; i < global.inventory_iterator; i++){
		draw_sprite(global.inventory[i], -1, (x+16+(90*(i%4))), (y+8+(90*(i div 4)))  );
	}
}
depth = 0
