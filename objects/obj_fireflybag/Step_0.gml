if open = true
{
	while(_fireflycount>0)
	{
		instance_create_layer(x, y, "Instances", obj_fireflies)
		_fireflycount--
	}
}