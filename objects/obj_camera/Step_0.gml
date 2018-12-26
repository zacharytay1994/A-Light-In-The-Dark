var _front_cam_y = target_.y - camera_offset_v
var _back_cam_y = target_.y + camera_offset_v
var _left_cam_x = target_.x - camera_offset_h
var _right_cam_x = target_.x + camera_offset_h
if not instance_exists(target_) exit
if !mouse_check_button(mb_right)
{
	switch target_.camera_state_
	{
		case 0:
			x = lerp(x, target_.x, .03)
			y = lerp(y, target_.y, .03)
			break
		case 1:
			x = lerp(x, _right_cam_x, camera_speed_)
			y = lerp(y, target_.y, camera_speed_)
			break
		case 2:
			x = lerp(x, _left_cam_x, camera_speed_)
			y = lerp(y, target_.y, camera_speed_)
			break
		case 3:
			x = lerp(x, target_.x, camera_speed_)
			y = lerp(y, _front_cam_y, camera_speed_)
			break
		case 4:
			x = lerp(x, target_.x, camera_speed_)
			y = lerp(y, _back_cam_y, camera_speed_)
			break
	}
}
else
{
	x = lerp(x, obj_view_track.x + CELL_DIMENSION/2, .05)
	y = lerp(y, obj_view_track.y + CELL_DIMENSION/2, .05)
}

x = clamp(x, width_/2 + CELL_DIMENSION, room_width-width_/2 - CELL_DIMENSION)
y = clamp(y, height_/2 + CELL_DIMENSION, room_height-height_/2 - CELL_DIMENSION)
camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2)