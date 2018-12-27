/// @description Move u @$%*
//var xx = (obj_player_body.x div CELL_DIMENSION) * CELL_DIMENSION
//var yy = (obj_player_body.y div CELL_DIMENSION) * CELL_DIMENSION
var _point = irandom(5)
switch_dest_ = _point + 1
var xx = coords_array_[_point, 0] * CELL_DIMENSION
var yy = coords_array_[_point, 1] * CELL_DIMENSION
s_creature_path_to_point(xx, yy, path_, 4)

image_speed = 0.6