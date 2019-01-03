// Draw Goggles
draw_sprite(spr_screen_design, 0, 0, 0)
// Draw Location Text
draw_text(viewwidth_, 10, mapname_)
draw_text(viewwidth_, 35, maparea_)
// Draw HeartBeat Sprite
draw_sprite(spr_stamina, image_index_, 0, 0)
// Draw Bag Sprite
draw_sprite(spr_inventory_grid, 0, 640, 405)
draw_sprite(spr_inventory_bag, bag_index_, 640 ,405)
draw_sprite(spr_chatbox, 0, 320, 405)
draw_sprite(spr_paperdisplay, 0, 0, 405)