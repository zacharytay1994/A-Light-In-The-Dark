// Location Text Controls
mapname_ = "Hospital"
maparea_ = "Lobby Floor One"
viewwidth_ = view_wport[0] - 150
viewheight_ = view_hport[0]

// Look Tracker
instance_create_layer(obj_player_body.x, obj_player_body.y, "Interface", obj_view_track)

// HeartBeat Controls
image_speed_ = room_speed
image_index_ = 0
resting_heart_rate_ = image_speed_
alarm[0] = image_speed_
heart_rate_ = 10
stam_ = 3
stam_rec_ = 3