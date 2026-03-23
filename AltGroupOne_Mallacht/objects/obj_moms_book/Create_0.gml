/// @description resets the book to the first page. Eventually, we'll have this book keep track of creatures.

depth = -9999
#macro cover 0
#macro leprechaun 2
#macro controls_page 1
#macro banshee 3
#macro pookah 4
#macro dagda 5
#macro fomorian 6


page = global.mom_book_pages
page_number = global.openerPage
page_count = array_length(global.mom_book_pages) - 1 //Includes both the front and back covers of the book.
sprite_index = page[page_number]

image_xscale = camera_get_view_width(view_camera[0])/(3*sprite_get_width(page[page_number]))
image_yscale = camera_get_view_height(view_camera[0])/(1.5*sprite_get_height(page[page_number]))
global.openerPage = 0
