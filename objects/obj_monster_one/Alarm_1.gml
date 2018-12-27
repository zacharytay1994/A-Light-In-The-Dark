/// @description Play with switch
if state_ == states.play
{
	if true//tilemap_get(tilemap_control_check_, x div CELL_DIMENSION, y div CELL_DIMENSION) == 1
	{
		switch switch_dest_
		{
			case 1:
				switch_one.flicker_ = true
				switch_one.alarm[0] = 1
				break
			case 2:
				switch_two.flicker_ = true
				switch_two.alarm[0] = 1
				break
			case 3:
				switch_three.flicker_ = true
				switch_three.alarm[0] = 1
				break
			case 4:
				switch_four.flicker_ = true
				switch_four.alarm[0] = 1
				break
			case 5:
				switch_five.flicker_ = true
				switch_five.alarm[0] = 1
				break
			case 6:
				switch_six.flicker_ = true
				switch_six.alarm[0] = 1
				break
		}
	}
}	
