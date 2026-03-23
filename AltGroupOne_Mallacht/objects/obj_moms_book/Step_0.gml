/// @description Insert description here
// You can write your code in this editor
sprite_index = page[page_number]
image_xscale = camera_get_view_width(view_camera[0])/(3*sprite_get_width(page[page_number]))
image_yscale = camera_get_view_height(view_camera[0])/(1.5*sprite_get_height(page[page_number]))
if(keyboard_check_pressed(ord("A")) && page_number > 0) {page_number--}
else if(keyboard_check_pressed(ord("D")) && page_number < page_count) {page_number++}