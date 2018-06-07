if (_triggerObj._isTriggered)
{
	var enemy = ds_map_find_first(_enemyFormations);

	for(var i=0; i<ds_map_size(_enemyFormations); i++)
	{
		if (instance_exists(enemy))
		{
			var position = _enemyFormations[? enemy];
			enemy.ai_startFloor = PositionToPlatform(position);
			enemy.ai_moveX = position._x;
			enemy._nextState = "waiting";
		}
		enemy = ds_map_find_next(_enemyFormations, enemy);
	}
	instance_destroy();
}