x = camera_get_view_x(view_camera[0]) + 640
y = camera_get_view_y(view_camera[0]) + 405
var num = instance_number(obj_firefly_player)
if open == true && num == 0
{
	instance_create_layer(obj_player_body.x, obj_player_body.y, "Monster", obj_firefly_player)
}