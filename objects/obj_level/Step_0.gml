/// @description Insert description here
// You can write your code in this editor
var _x = obj_player.x div CELL_DIMENSION
var _y = obj_player.y div CELL_DIMENSION

// Faze walls
for (var _i = _x-building_visible_clear_; _i <= _x+building_visible_clear_; _i++)
{
	for (var _j = _y-building_visible_clear_; _j <= _y+building_visible_clear_; _j++)
	{
		if (tilemap_get(buildingaes_id_,
		_i, _j) != 0)
		{
			tilemap_set(buildingaes_id_, 1, _i, _j)
		}
	}
}

for (var _i = _x-building_visible_; _i <= _x+building_visible_; _i++)
{
	for (var _j = _y-building_visible_; _j <= _y+building_visible_; _j++)
	{
		if (tilemap_get(buildingaes_id_,
		_i, _j) != 0)
		{
			tilemap_set(buildingaes_id_, 2, _i, _j)
		}
	}
}

// Faze ceiling
for (var _i = _x-building_visible_clear_; _i <= _x+building_visible_clear_; _i++)
{
	for (var _j = _y-building_visible_clear_; _j <= _y+building_visible_clear_; _j++)
	{
		if (tilemap_get(roomboundary_id_,
		_i, _j) == 16)
		{
			tilemap_set(roomboundary_id_, 15, _i, _j)
		}
		else if (tilemap_get(roomboundary_id_,
		_i, _j) == 17)
		{
			tilemap_set(roomboundary_id_, 14, _i, _j)
		}
	}
}

for (var _i = _x-building_visible_; _i <= _x+building_visible_; _i++)
{
	for (var _j = _y-building_visible_; _j <= _y+building_visible_; _j++)
	{
		if (tilemap_get(roomboundary_id_,
		_i, _j) == 15)
		{
			tilemap_set(roomboundary_id_, 16, _i, _j)
		}
		else if (tilemap_get(roomboundary_id_,
		_i, _j) == 14)
		{
			tilemap_set(roomboundary_id_, 17, _i, _j)
		}
	}
}