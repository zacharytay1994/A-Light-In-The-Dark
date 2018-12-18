light_layer_ = layer_get_id("Light")

surf = surface_create(room_width,room_height);

layer_script_begin(light_layer_, s_light_begin)
layer_script_end(light_layer_, s_light_end)