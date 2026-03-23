// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.playerX = -1;

global.playerY = -1;

global.act = 1;

global.playerBack = false;

global.inventory = []
global.inventory_iterator = 0;

global.mom_book_pages = [BookCover_Test, spr_book_controls, spr_leprechaun_page, spr_Banshee_page, spr_dagda_page, spr_Fomorian]
global.force_book = false;
global.openerPage = 1

function player_controls(){
#region Assorted Controls
	//The general interaction key.
	interact = keyboard_check_pressed(ord("E"))

	//Just a button to speed up or skip dialogue.
	progress_dialogue = keyboard_check_pressed(vk_space)

	//Book Controls
	open_book = keyboard_check_pressed(vk_tab)
	
	//Inventory toggle
	toggle_inventory = keyboard_check_pressed(ord("F"))
#endregion
}