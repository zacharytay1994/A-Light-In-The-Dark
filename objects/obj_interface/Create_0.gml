// Location Text Controls
mapname_ = "Hospital"
maparea_ = "Lobby Floor One"
viewwidth_ = view_wport[0] - 150
viewheight_ = view_hport[0]

// Look Tracker
instance_create_layer(obj_player_body.x, obj_player_body.y, "Interface", obj_view_track)
instance_create_layer(camera_get_view_x(view_camera[0]) + 640, camera_get_view_y(view_camera[0]) + 405, "Interface", obj_bag_interface)
// HeartBeat Controls
image_speed_ = room_speed
image_index_ = 0
resting_heart_rate_ = image_speed_
alarm[0] = image_speed_
heart_rate_ = 10
stam_ = 3
stam_rec_ = 3
bag_index_ = 0