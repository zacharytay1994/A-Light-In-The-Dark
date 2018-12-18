if (event_type == ev_draw) and (event_number == 0)
{
	if (!surface_exists(light.light_surface_))
	{
		light.light_surface_ = surface_create(960, 540)
	}
	
	var _cam = view_camera[view_current]
	
	surface_set_target(light.light_surface_)
	
	camera_apply(_cam)
	
	draw_clear_alpha(c_black, 1.0)
	gpu_set_blendmode(bm_add)
	surface_reset_target();
}