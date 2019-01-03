/// @description init shadow casting
vertex_format_begin();
vertex_format_add_position();
vertex_format_add_color();
VertexFormat = vertex_format_end();

VBuffer = vertex_create_buffer();

surf = -1

LightPosRadius = shader_get_uniform(sh_lighting,"u_fLightPositionRadius");

target_ = obj_player_body

tilemap_ = layer_tilemap_get_id("BuildingWalls");
tilemap_doors_ = layer_tilemap_get_id("Doors");
tilemap_shadow_ = layer_tilemap_get_id("ShadowCollision");

lights_on_ = false
color_ = c_white
intensity_ = 0.8