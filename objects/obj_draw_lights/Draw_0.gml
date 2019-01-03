//draw_sprite(spr_player_illum, 0, obj_player_body.x, obj_player_body.y + 16)
if instance_exists(obj_fireflies)
{
	for (var i = 0; i <instance_number(obj_fireflies); i ++)
	{
		var _id = instance_find(obj_fireflies, i)
		draw_sprite(spr_firefly_light, 0, _id.x, _id.y)
	}
}