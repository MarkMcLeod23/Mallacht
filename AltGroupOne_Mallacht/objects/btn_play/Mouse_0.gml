// Inherit the parent event
event_inherited();

//Once we get a proper intro built, the game room can act as a player but for now, just go into the game itself.
global.force_book = true
room_goto(rm_animation_player);
global.animation = "Intro"
