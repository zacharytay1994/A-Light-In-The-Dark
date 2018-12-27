depth = DEPTH - (y-32) div CELL_DIMENSION

switch direction{
	case 0:
		image_xscale = 1
		sprite_index = sprite_array[2]
		break
	case 90:
		sprite_index = sprite_array[1]
		break
	case 180:
		image_xscale = -1
		sprite_index = sprite_array[2]
		break
	case 270:
		sprite_index = sprite_array[0]
		break
}