/// @description Draws the object itself and also an E over the object if they are interactible.
// You can write your code in this editor
draw_self()
if(show_E){
	draw_set_colour(c_red)
	draw_text(x + (sprite_get_width(id.sprite_index)/2), y - 5, "E")
}
