// Inherit the parent event
event_inherited();

if(room == rm_home){
	remember_state(rm_home)
	room_goto(rm_settings)
}else{
	room_goto(rm_settings)
}

