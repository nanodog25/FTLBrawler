var enemyFormations = ds_map_create();
var lane = 0;

with(Enemy)
{
	var position = instance_create_layer(0,0,"Structs",PositionStruct);
	position._y = global.LaneYs[| lane];
	position._lane = lane++;
	position._x = 1480;
	
	ds_map_add(enemyFormations, self, position);
}

var zone = CreateZoneTrigger(390, 1536, 420, 1536, 450, 1536, 480, 1536, 510, 1536, self);
CreateFormationTrigger(zone, enemyFormations);