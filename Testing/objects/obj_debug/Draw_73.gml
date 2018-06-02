if (_loadedObjects || global.isFightInitiated)
{
	for(var i=0; i<5; i++)
	{
		var isPlayerLane = i == global.playerLane;
		var a = isPlayerLane ? 1 : 0.5;
		draw_set_alpha(a);
	
		var c = GetColour(i);
		var floors = GetFloorsInLane(i);
		for(var j=0; j<ds_list_size(floors); j++)
		{
			var flr = floors[| j];
			if (flr != noone)
				draw_line_width_color(flr._xLeft, flr._y, flr._xRight, flr._y, 2, c, c);
		}
		
		var ceilings = global.LaneCeilings[| i];
		for(var j=0; j<ds_list_size(ceilings); j++)
		{
			var flr = ceilings[| j];
			if (flr != noone)
				draw_line_width_color(flr._xLeft, flr._y, flr._xRight, flr._y, 2, c, c);
		}
	
		var lWalls = GetWallsInLane(i, false);
		for(var j=0; j<ds_list_size(lWalls); j++)
		{
			var wall = lWalls[| j];
			if (wall != noone)
				draw_line_width_color(wall._x, wall._yBase, wall._x, wall._yTop, 2, c, c);
		}
	
		//if (i != global.playerLane)
		{
			var rWalls = GetWallsInLane(i, true);
			for(var j=0; j<ds_list_size(rWalls); j++)
			{
				var wall = rWalls[| j];
				if (wall != noone)
					draw_line_width_color(wall._x, wall._yBase, wall._x, wall._yTop, 2, c, c);
			}
		}
	}
	draw_set_alpha(1);
}