/// @description Effects of touching the player

if( (linked_room == rm_Banshee) && (getState("Leprechaun") != "Leprechaun3") ){instance_deactivate_object(id)}
else{
	remember_state_with_player(room)
	room_goto(linked_room)
}
//if(Final){
//	global.story_linked_room = rm_Banshee
//}
