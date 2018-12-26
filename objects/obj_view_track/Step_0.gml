x = (mouse_x div CELL_DIMENSION) * CELL_DIMENSION
y = (mouse_y div CELL_DIMENSION) * CELL_DIMENSION

x = clamp(x, obj_player_body.x - 500, obj_player_body.x + 500)
y = clamp(y, obj_player_body.y - 300, obj_player_body.y + 300)