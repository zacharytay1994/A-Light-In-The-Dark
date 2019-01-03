if instance_number(obj_fireflies) < 100
{
	instance_create_layer(x, y, "Monster", obj_fireflies)
}
alarm[0] = room_speed * 5