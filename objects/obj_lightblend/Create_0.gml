light_layer_ = layer_get_id("Light")

light_surface_ = surface_create(960, 540)

layer_script_begin(light_layer_, s_light_begin)
layer_script_end(light_layer_, s_light_end)