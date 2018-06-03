for(var i=0; i<5;i++)
{
	var floors = GetFloorsInLane(i);
	var ceilings = global.LaneCeilings[| i];
	
	for	(var j = ds_list_size(floors)-1; j >= 0; j--)
	{
		var flr = floors[| j];
		
		for	(var k = ds_list_size(ceilings)-1; k >= 0; k--)
		{
			var ceiling = ceilings[| k];
			
			if (flr._y != ceiling._y)
				continue;
			
			if (flr._xLeft >= ceiling._xLeft && flr._xLeft <= ceiling._xRight)
			{
				ds_list_delete(global.LaneCeilings[| i], k);
				ds_list_delete(global.LanePlatforms[| i], j);
				flr = noone;
				break;
			}
			else if (flr._xLeft <= ceiling._xLeft && flr._xRight >= ceiling._xRight)
			{
				break;
			}
		}
		
		if (flr == noone)
			break;
	}
	
	var rWalls = GetWallsInLane(i, true);
	var lWalls = GetWallsInLane(i, false);
	
	for	(var j = ds_list_size(rWalls)-1; j >= 0; j--)
	{
		var rWall = rWalls[| j];
		
		for	(var k = ds_list_size(lWalls)-1; k >= 0; k--)
		{
			var lWall = lWalls[| k];
			
			if (rWall._x != lWall._x)
				continue;
			
			if (rWall._yTop >= lWall._yTop && rWall._yBase <= lWall._yBase)
			{
				ds_list_delete(global.LaneWallsRight[| i], j);
				rWall = noone;
				break;
			}
			else if (rWall._yTop <= lWall._yTop && rWall._yBase >= lWall._yBase)
			{
				ds_list_delete(global.LaneWallsLeft[| i], k);
				break;
			}
		}
		
		if (rWall == noone)
			break;
	}
}