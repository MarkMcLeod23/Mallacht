/// @description Insert description here
// You can write your code in this editor
global.mom_book_pages[3] = spr_pooka_page
if(!instance_exists(obj_dialogue_box) && !instance_exists(obj_dialogue_box_Large)){
	create_dialogue(creature_name, true, true)
}