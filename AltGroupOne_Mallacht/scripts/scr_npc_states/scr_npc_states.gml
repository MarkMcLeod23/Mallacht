/// @description Holds information about the iteraction state each NPC should be in

global.state_memory = ["Leprechaun", "Banshee", "Shopkeeper", "Dagda", "Puca Intro"]

/// @param {String} NPC_name The name of the NPC to check
/// @return {String} The state of the NPC: Its normal name indicates state 1, any number after that indicates its state.
function getState(NPC_name)
{
	switch(NPC_name){
		case "Leprechaun":
		return global.state_memory[0]
		
		case "Banshee":
		return global.state_memory[1]
		
		case "Shopkeeper":
		return global.state_memory[2]
		
		case "Dagda":
		return global.state_memory[3]
		
		case "Puca":
		return global.state_memory[4]
		
	}
}

/// @param {String} NPC_name The name of the NPC to check
/// @param {String} new_state The new state for the NPC
function setState(NPC_name, new_state)
{
	switch(NPC_name){
		case "Leprechaun":
		global.state_memory[0] = new_state
		obj_leprechaun.creature_name = new_state
		break
		
		case "Banshee":
		global.state_memory[1] = new_state
		break
		
		case "Shopkeeper":
		global.state_memory[2] = new_state
		obj_shopkeeper.creature_name = new_state
		break
		
		case "Dagda":
		global.state_memory[3] = new_state
		obj_Dagda.creature_name = new_state
		break
		
		case "Puca":
		global.state_memory[4] = new_state
		obj_puca.creature_name = new_state
		break
	}
}