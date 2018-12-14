if not instance_exists(target_) exit
x = lerp(x, target_.x, .1)
y = lerp(y, target_.y, .1)

x = clamp(x, width_/2 + CELL_DIMENSION, room_width-width_/2 - CELL_DIMENSION)
y = clamp(y, height_/2 + CELL_DIMENSION, room_height-height_/2 - CELL_DIMENSION)
camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2)