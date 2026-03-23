// a function triggered when the player activates a talking NPC.
///@param String The name of the instance triggering the text.
///@param boolean True if there is a speaking sprite, false else.
///@param boolean True if the dialog box is meant to be large false else.
///@return an instance of the dialogue box or textbox depending on boolean.
function create_dialogue(object_name, talking, large){
	if(talking){
		if(!large){
	with instance_create_depth(0, 0, -99999, obj_dialogue_box){
		speech_repo(object_name)
		check_interactible(object_name)
		collect_responses(object_name)
		}
	} else {
		with instance_create_depth(0, 0, -99999, obj_dialogue_box_Large){
			speech_repo(object_name)
		check_interactible(object_name)
		collect_responses(object_name)
		}
	}
	} else {
		with instance_create_depth(0,0, -99999, obj_MultiTextBox){
			speech_repo(object_name)
			collect_responses(object_name)
	}
	}
}

function script_text(string_input){
	text[page_number] = string_input;
	page_number ++;

}

function player_response(string_input){
	responses[response_number] = string_input
	show_debug_message(string_concat("Responses: "+ string(responses)))
	response_number++
}

function reset_dialogue(){
	page = 0;
	page_number = 0;
	text = [];
	text[0] = ""
	draw_char = 0;
	text_speed = .85;

	setup = false;
}

function reset_responses(){
	responses = []
	responses[0] = ""
	response_number = 0
	selected = 0;
}
