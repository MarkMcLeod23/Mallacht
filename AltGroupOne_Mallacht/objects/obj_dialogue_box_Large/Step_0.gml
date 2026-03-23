/// @description Checking for player input to change the selected response.
if(keyboard_check_pressed(ord("S"))&& selected < (response_number - 1))
selected += 1
else if(keyboard_check_pressed(ord("W"))&& selected > 0)
selected -= 1
else if(keyboard_check(ord("P"))){
show_debug_message(string_concat("Text: " + text[page]))
show_debug_message(string_concat("Text Length: " + string(text_length[page])))
show_debug_message(string_concat("Current page: " + string(page)))
}