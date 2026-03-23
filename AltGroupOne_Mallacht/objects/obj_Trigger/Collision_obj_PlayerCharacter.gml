/// @description The initial trigger for a box.
if(!instance_exists(obj_MultiTextBox) && !instance_exists(obj_dialogue_box) && spawnable){
	create_dialogue(sign_name, false)
}