// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Intro text:
function speech_repo(speech){
	switch(speech){
	case "test":
	script_text("This is a test of the dialogue system. Please pick something so I can go to bed.")
	break
	
	case "intro":
	script_text("The veil between the feywild and this world weakens")

	script_text("Consequently, your mother hath been taken by the formidable Fomorians,")

	script_text("Dragged through the mud for her drudic practices done against them")

	script_text("Against her will, she now lies ensnared within the Otherworld.")

	script_text("Find her, make them suffer by my hand, and bring her back…")

	break
	
	#region Leprechaun
	case "Leprechaun":
	script_text("Oh, hello there, little one. What brings you out here? The veil is awfully thin. No child should be around these parts.")
	break
	case "fall":
	script_text("Hahaha what a gullible little cailín you are. I’m sure the Fomorians will reward me for this.")
	break
	#endregion
	
	#region Miscellaneous
	case "Shopkeeper":
	script_text("Greetings friend. What can I do for you this fine day?")
	break
	
	case "Villager1":
	script_text("I was hoping the harvest this year would have been more bountiful.")
	break
	case "Villager2":
	script_text("I’m sorry to hear about yer mother deary. We’ll find her. Half the damn village is worried sick bout her.")
	break
	case "Villager3":
	script_text("We're in for a harsh winter.")
	break
	
	case "Building 1":
	script_text("The shop is closed.")
	break
	
	case "Building 2":
	script_text("No one's home.")
	break
	
	case "Building 3":
	script_text("This building is long abandoned. Weathered from storms.")
	break
	#endregion
	
	#region Dagda
	case "Dagda":
	script_text("Ah, little one. You have finally found me! I believe I have located your mother. I can take you. I don't suppose you have something to fend off the Formorians, do you?")
	break
	
	case "Dagda_Act_4":
	script_text("Alright young one, are you ready for this?")
	break
	#endregion
	
	#region False Shopkeep
	case "False Shopkeep":
	script_text("Welcome back! How go your explorations?")
	break
	#endregion
	
	#region Puca intro:
	case "Puca Intro":
	script_text("Well, I suppose it was only a matter of time.")
	break
	
	case "Puca Resume":
	script_text("So, ready to see your mother?")
	break
	
	case "Tamed Pooka":
	script_text("You've impressed me, I shall assist you little human.")
	break
	
	case "Fomorian":
	script_text("Mother: My child, why have you come?!? You must flee!\nChild: I refuse to leave you!\nFomorian:HAHAHA Little sapling of the druid line… one squeeze, and your mother’s wisdom won’t save you.")
	break
	
	
	
	case "Safety":
	script_text("You’re safe… you’re truly safe. That’s all I prayed for.")
	}
}
//The responses to the player.
function respond(response){
	reset_dialogue()
	show_debug_message(string_concat("Response selected: " + response))
	switch(response){
		#region Leprechaun
		case "I am looking for my mother. She was taken by the Fomorians. Have you seen her?":
		script_text("Sure thing, they took her through the shorter path by the trees.")
		break
		case "Can you help me find her?":
		script_text("Sorry, little cailín, I only help those who have something to offer. Perhaps you can find something nearby? Maybe your village? Maybe then I can help with my feywild knowledge.")
		break
		case "Give gold piece":
		if(obj_PlayerCharacter.giveItem(spr_goldPiece)){
			setState("Leprechaun", "Leprechaun3")
			obj_room_port.alarm[0] = 30
			script_text("How'd a kid like you get so clever? Well, a deals a deal I'll help you in your search! Now that I think about it, I think it was actually the path without the trees they went down.")
		}else{
			script_text("You think I'm a fool? Don't waste my time with your jokes.")
		}
		break
		
		case "Devious creature.":
		script_text("HAHAHA")
		break
		#endregion
		#region Shopkeeper
		case "What do you have in stock?":
		//script_text("For a first time shopper, I got some specials for ya.")
		script_text("I'm sorry cailín, I don't have anything for you at the moment.")
		break
		
		#endregion
		#region Universal Walk Away
		case "Walk away":
		obj_PlayerCharacter.freeze = false
		instance_destroy(obj_dialogue_box)
		break
		#endregion		
		#region Alternate Walk Away (For decision-less dialogue)
		case " ":
		obj_PlayerCharacter.freeze = false
		instance_destroy(obj_dialogue_box)
		break
		#endregion
		#region Death
		case "Close eyes":
		room_goto(rm_player_house_Inside)
		break
		#endregion
		#region Puca
		case "Good, you would be surprised at what I've discovered.":
		script_text("Oh? Care to show off?")
		break
		
		case "First, a question.":
		script_text("If you insist little one.")
		break
		
		case "Show mom's book.":
		script_text("Wonderful wonderful! But, I notice you seem to be missing a few pages no?")
		break
		
		case "No thanks,":
		script_text("Well then, what else can I do for you?")
		break
		
		case "What do you know about the corpse in the woods?":
		obj_PlayerCharacter.freeze = false
		instance_destroy(obj_dialogue_box)
		play_shopkeep_escape()
		break
		
		case "Who- what are you?":
		script_text("I am saddened you don't know.")
		script_text("I jest, I am a Puca, a shapeshifter.")
		break
		
		case "Did you do that to the shopkeeper?":
		script_text("My dear child, of course I might've. You'll never know.")
		script_text("However, I will tell you this,") 
		script_text("I know where you mother went and I can take you.")
		break
		
		case "What's the catch?":
		script_text("No catch, I merely wish to help you.")
		break
		
		case "Really?":
		script_text("So, ready to see your mother?")
		break
		
		case "Thank you! Do I just follow you?":
		show_debug_message("Thank you point reached.")
		script_text("No no child, simply climb on.")
		break
		
		case "*Climb on*":
		script_text("Best of luck to you,")
		break
		
		case "I'm not so sure,":
		setState("Puca", "Puca Resume")
		instance_destroy(obj_dialogue_box_Large)
		draw_book_setPage(3)
		break
		
		case "Wait wha-":
		room_goto(rm_Puca_Game)
		break
		
		
		case "Onwards to Dagda!":
		global.returnRoom = rm_Puca_Game
		global.act++
		room_goto(rm_Dagda)
		break
		#endregion
		
		#region Dagda
		case "Does this piece of iron help? *give iron lump*":
			if(obj_PlayerCharacter.giveItem(spr_iron_lump)){
				script_text("Wonderful! I think I can make something of that!")
			}else{
				script_text("...")
			}
		break
		
		case "Uhhhhh... I do not.":
		script_text("Well then you better get something, lest we face those giant bastards unarmed.")
		break
		
		case "What now?":
		script_text("Now I need some time to get it built. I'll bring you home until I'm all set up.")
		break
		
		case "*Head home*":
		global.act = 4
		var _transition = instance_create_layer(0, 0, "Instances", vfx_transition_pixelate);
		_transition.target_room = rm_player_house_Inside;
		break
		
		case "I want my mother back!":
		script_text("That's the drive I like to hear!\nAlright young one, I was able to prime some traps in the forest but you have to be the one to set them off.")
		break
		
		case "How?":
		script_text("Fomorians are fools, they often lose their money to the leprechauns... So, it's simple, just get that ugly disgrace to step on the iron traps.")
		break
		
		case "I'm ready,":
		global.animation = "Fomorian intro"
		room_goto(rm_Fomorian_Fight)
		break
		
		case "I will follow your lead!":
		room_goto(rm_home)
		break
		#endregion
		
		#region Fomorian
		
		case "At least my mother loves me.":
		script_text("Fomorian: When your breath leaves you, tell the Otherworld who sent you.\nMother: If you touch her, I swear the gods will hear my last breath as a curse upon you.")
		break
		
		case "We'll see whether you still draw breath after me.":
		script_text("Insolent child!")
		break
		
		case "Fight!":
		layer_sequence_destroy(obj_animation_controller.animation)
		instance_destroy(obj_dialogue_box_Large)
		show_debug_message("Instance destroyed")
		break
		
		case "Flight!":
		layer_sequence_destroy(obj_animation_controller.animation)
		room_goto(rm_player_house_Inside)
		break
		#endregion
		#region Mom
		case "Can we go home now?":
		script_text("Of course, I want to hear of all your adventures!")
		break
		case "*Go home*":
		layer_sequence_play(obj_animation_controller.animation)
		instance_destroy(obj_dialogue_box_Large)
		break
		#endregion
	}
}

function collect_responses(npc_name){
	reset_responses()
	switch(npc_name){
		#region Leprechaun
		case "Leprechaun":
		player_response("I am looking for my mother. She was taken by the Fomorians. Have you seen her?")
		player_response("Walk away")
		break
		
		case "Sure thing, they took her through the shorter path by the trees.":
		player_response("Can you help me find her?")
		player_response("Walk away")
		break
		
		case "Sorry, little cailín, I only help those who have something to offer. Perhaps you can find something nearby? Maybe your village? Maybe then I can help with my feywild knowledge.":
		setState("Leprechaun", "Leprechaun2")
		obj_leprechaun.alarm[2] = 30;
		if(obj_PlayerCharacter.checkInventory(spr_goldPiece)){
			player_response("Give gold piece")
		}
		player_response("Walk away")
		break
		
		case "Leprechaun2":
		if(obj_PlayerCharacter.checkInventory(spr_goldPiece)){
			player_response("Give gold piece")
		}
		player_response("Walk away")
		break
		
		case "Leprechaun3":
		player_response("Walk away")
		break
		
		case "fall":
		player_response("Devious creature.")
		player_response("Close eyes")
		break
		
		case "HAHAHA":
		player_response("Close eyes")
		break
		
		case "How'd a kid like you get so clever? Well, a deals a deal I'll help you in your search! Now that I think about it, I think it was actually the path without the trees they went down.":
		player_response("Walk away")
		break
		
		#endregion
		#region Shopkeeper
		case "Shopkeeper":
		player_response("What do you have in stock?")
		player_response("Walk away")
		break
		
		case "I'm sorry cailín, I don't have anything for you at the moment.":
		player_response("Walk away") // Placeholder until we figure out what he offers.
		break
		
		#endregion
		#region Villagers
		case "Villager1":
		player_response("Walk away")
		break
		case "Villager2":
		player_response("Walk away")
		break
		case "Villager3":
		player_response("Walk away")
		break
		#endregion
		#region Dagda
		case "Dagda":
		if(obj_PlayerCharacter.checkInventory(spr_iron_lump)){
		player_response("Does this piece of iron help? *give iron lump*")
		}else{
		player_response("Uhhhhh... I do not.")
		}
		break
		
		case "Well then you better get something, lest we face those giant bastards unarmed.":
		player_response("Walk away")
		break
		
		case "Wonderful! I think I can make something of that!":
		player_response("What now?")
		break
		
		case "Now I need some time to get it built. I'll bring you home until I'm all set up.":
		player_response("*Head home*")
		break
		
		case "Dagda_Act_4":
		player_response("I want my mother back!")
		player_response("Not quite yet.")
		break
		
		case "That's the drive I like to hear!\nAlright young one, I was able to prime some traps in the forest but you have to be the one to set them off.":
		player_response("How?")
		break
		
		case "Fomorians are fools, they often lose their money to the leprechauns... So, it's simple, just get that ugly disgrace to step on the iron traps.":
		player_response("I'm ready,")
		player_response("Not quite yet.")
		break
		
		#endregion
		#region Banshees
		case "Dead Shopkeep":
		player_response("This is the body of the shopkeeper, didn't I just see him?")
		global.act = 2
		obj_Trigger.alarm[1] = 180
		break
		#endregion
		#region Puca
		case "Puca Intro":
		player_response("Who- what are you?")
		break
		
		case "Puca Resume":
		player_response("Thank you! Do I just follow you?")
		break
		
		case "Welcome back! How go your explorations?":
		player_response("Good, you would be surprised at what I've discovered.")
		break
		
		case "Oh? Care to show off?":
		player_response("First, a question.")
		break
		
		case "If you insist little one.":
		player_response("What do you know about the corpse in the woods?")
		break
		
		case "Well, I suppose it was only a matter of time.":
		player_response("Who- what are you?")
		break
		
		case "I jest, I am a Puca, a shapeshifter.":
		player_response("Did you do that to the shopkeeper?")
		break
		
		case "I know where you mother went and I can take you.":
		player_response("What's the catch?")
		player_response("Really?")
		break
		
		case "No catch, I merely wish to help you.":
		player_response("Thank you! Do I just follow you?")
		break
		
		case "So, ready to see your mother?":
		player_response("Thank you! Do I just follow you?")
		break
		
		case "No no child, simply climb on.":
		player_response("*Climb on*")
		player_response("I'm not so sure,")
		break
		
		case "Best of luck to you,":
		player_response("Wait wha-")
		break
		
		case "Tamed Pooka":
		player_response("Onwards to Dagda!")
		break
		//player_response("Show mom's book.")
		//player_response("No thanks,")
		
		case "We must go quickly if we are to save your mother.":
		player_response("I will follow your lead!")
		break
		
		
		#endregion
		#region Fomorian
		case "Fomorian":
		player_response("At least my mother loves me.")
		break
		
		case "Fomorian: When your breath leaves you, tell the Otherworld who sent you.\nMother: If you touch her, I swear the gods will hear my last breath as a curse upon you.":
		player_response("We'll see whether you still draw breath after me.")
		break
		
		case "Insolent child!":
		player_response("Fight!")
		player_response("Flight!")
		break
		#endregion
		#region Mom
		case "Safety":
		player_response("Can we go home now?")
		break
		case "Of course, I want to hear of all your adventures!":
		player_response("*Go home*")
		break
		#endregion
	}
}
/*
}
//Leprechaun text:

Intro: "Oh, hello there, little one. What brings you out here? The veil is awfully thin. No child should be around these parts."

Player Response: "I am looking for my mother. She was taken by the Fomorians. Have you seen her?"

Lep (Deciteful): "Sure thing, they took her through the shorter path by the trees."

Player Response: "Ok, thank you! OR Can you help me find her?"

"If can you help me find her?" = Lep response: "Sorry, little cailín, I only help those who have something to offer. Perhaps you can find something nearby? Maybe then I can help with my Otherworld knowledge."

If the player falls into the trap: "Hahaha what a gullible little cailín you are. I’m sure the Fomorians will reward me for this."

Player presents gold to Lep: "How’d a kid like you get so clever? Well, a deals a deal I’ll help you in your search!"
*/