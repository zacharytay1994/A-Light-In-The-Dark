/// @description Insert description here
// You can write your code in this editor
var _x = target_.x div CELL_DIMENSION
var _y = target_.y div CELL_DIMENSION

if (tilemap_get(floor_id_, _x, _y) != 0)
{
	default_wall_ = 4
	default_pillar_ = 19
	default_roof_ = 18
}
else
{
	default_wall_ = 1
	default_pillar_ = 14
	default_roof_ = 15
}

var _left_vis = _x-building_visible_
var _right_vis = _x+building_visible_
var _front_vis = _y-building_visible_
var _back_vis = _y+building_visible_

switch target_.camera_state_
{
	case 0:
		var _left_vis = _x-building_visible_
		var _right_vis = _x+building_visible_
		var _front_vis = _y-building_visible_
		var _back_vis = _y+building_visible_
		break
	case 1:
		var _left_vis = _x-3
		var _right_vis = _x+9
		var _front_vis = _y-building_visible_
		var _back_vis = _y+building_visible_
		break
	case 2:
		var _left_vis = _x-9
		var _right_vis = _x+3
		var _front_vis = _y-building_visible_
		var _back_vis = _y+building_visible_
		break
	case 3:
		var _left_vis = _x-building_visible_
		var _right_vis = _x+building_visible_
		var _front_vis = _y-9
		var _back_vis = _y+3
		break
	case 4:
		var _left_vis = _x-building_visible_
		var _right_vis = _x+building_visible_
		var _front_vis = _y-3
		var _back_vis = _y+9
		break	
}

// Faze walls
for (var _i = _x-20; _i <= _x+20; _i++)
{
	for (var _j = _y-15; _j <= _y+15; _j++)
	{
		if (tilemap_get(buildingaes_id_,
		_i, _j) != 0)
		{
			tilemap_set(buildingaes_id_, default_wall_, _i, _j)
		}
	}
}

for (var _i = _left_vis; _i <= _right_vis; _i++)
{
	for (var _j = _front_vis; _j <= _back_vis; _j++)
	{
		if (tilemap_get(buildingaes_id_,
		_i, _j) != 0)
		{
			tilemap_set(buildingaes_id_, 2, _i, _j)
		}
	}
}

// Faze ceiling
for (var _i = _x-20; _i <= _x+20; _i++)
{
	for (var _j = _y-15; _j <= _y+15; _j++)
	{
		if (tilemap_get(roomboundary_id_,
		_i, _j) == 16 || tilemap_get(roomboundary_id_,
		_i, _j) == 15 || tilemap_get(roomboundary_id_,
		_i, _j) == 18)
		{
			tilemap_set(roomboundary_id_, default_roof_, _i, _j)
		}
		else if (tilemap_get(roomboundary_id_,
		_i, _j) == 17 || tilemap_get(roomboundary_id_,
		_i, _j) == 14 || tilemap_get(roomboundary_id_,
		_i, _j) == 19)
		{
			tilemap_set(roomboundary_id_, default_pillar_, _i, _j)
		}
	}
}

for (var _i = _left_vis; _i <= _right_vis; _i++)
{
	for (var _j = _front_vis; _j <= _back_vis; _j++)
	{
		if (tilemap_get(roomboundary_id_,
		_i, _j) == default_roof_)
		{
			tilemap_set(roomboundary_id_, 16, _i, _j)
		}
		else if (tilemap_get(roomboundary_id_,
		_i, _j) == default_pillar_)
		{
			tilemap_set(roomboundary_id_, 17, _i, _j)
		}
	}
}