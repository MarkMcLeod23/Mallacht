// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_interactible(interactible_name){
	switch(interactible_name){
		case "Leprechaun":
		speaking_sprite = spr_leprechaun_speak;
		break
		case "Leprechaun2":
		speaking_sprite = spr_leprechaun_speak;
		break
		case "Leprechaun3":
		speaking_sprite = spr_leprechaun_speak;
		break
		case "fall":
		speaking_sprite = spr_leprechaun_speak;
		break
		case "Shopkeeper":
		speaking_sprite = NPC_1_progess;
		break
		case "Villager1":
		speaking_sprite = NPC_1_progess
		break
		case "Villager2":
		speaking_sprite = NPC_1_progess
		break
		case "Villager3":
		speaking_sprite = NPC_1_progess
		break
		case "Dagda":
		speaking_sprite = Dagda
		break
		case "Dagda_Act_4":
		speaking_sprite = Dagda
		break
		case "False Shopkeep":
		speaking_sprite = NPC_1_progess
		break
		case "Tamed Pooka":
		speaking_sprite = spr_Puca
		break
		case "Fomorian":
		speaking_sprite = noone
		break
		case "Safety":
		speaking_sprite = spr_mom
		break
		case "Mom":
		speaking_sprite = spr_mom
		break
		case "Puca Intro":
		speaking_sprite = spr_Puca
		break
		case "Puca Resume":
		speaking_sprite = spr_Puca
		break
	}
}

function set_sprite_speed(sprite, frame_speed){
	sprite.image_speed = frame_speed
}