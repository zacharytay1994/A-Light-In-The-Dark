event_inherited()

// State event check
switch state_ 
{
	case states.play:
		if !moving_{
			var _rand = irandom(5)
			switch_dest_ = _rand + 1
			while (coords_array_[_rand, 0] == prev_x_
			&& coords_array_[_rand, 1] == prev_y_)
			{
				_rand = irandom(5)
			}
			s_creature_path_to_point(coords_array_[_rand, 0]*CELL_DIMENSION
			, coords_array_[_rand, 1]*CELL_DIMENSION, path_, 4, false)
			image_speed = 0.6
			
			prev_x_ = coords_array_[_rand, 0]
			prev_y_ = coords_array_[_rand, 1]
			
			moving_ = true
		}
	break
	case states.chasing:
		if !moving_
		&& point_distance(x, y, obj_player_body.x, obj_player_body.y) < 128
		{
			var xx = obj_player_body.x div CELL_DIMENSION
			var yy = obj_player_body.y div CELL_DIMENSION
			if (xx != prev_x_ || yy != prev_y_)
			{
				s_creature_path_to_point(obj_player_body.x, obj_player_body.y,
				path_, 4, false)
				image_speed = 0.6
				
				prev_x_ = xx
				prev_y_ = yy
			
				moving_ = true
			}		
		}
		else if !moving_
		&& point_distance(x, y, obj_player_body.x, obj_player_body.y) >= 128
		{
			moving_ = false
			state_ = states.play
		}
	break
	case states.idle:
		if moving_
		{
			path_end()
			image_speed = 0
			image_index = 0
			x = x div CELL_DIMENSION * CELL_DIMENSION + CELL_DIMENSION/2
			y = y div CELL_DIMENSION * CELL_DIMENSION + CELL_DIMENSION/2
			moving_ = false
		}
	break
}

// Change state event
if point_distance(x, y, obj_player_body.x, obj_player_body.y) < 128
&& state_ == states.play
{
	state_ = states.idle
}
else if point_distance(x, y, obj_player_body.x, obj_player_body.y) < 128
&& state_ == states.idle
{
	state_ = states.chasing
}
else if point_distance(x, y, obj_player_body.x, obj_player_body.y) < 128
&& state_ == states.chasing
{
	state_ = state_
}
else
{
	state_ = states.play
}