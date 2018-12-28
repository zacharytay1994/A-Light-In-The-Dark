image_speed = 0
image_index = 0

switch state_
{
	case states.play:
		moving_ = false
		alarm[1] = 1
	break
	case states.chasing:
		moving_ = false
	break
}