switch(global.ItemActivated)
{
	case global.ItemSpeedAura:
		_lane = global.playerLane;
		_colX = global.playerX;
		_colY = global.playerY;
		CreateSpeedAura();
		break;
	case global.ItemShield:
		ActivateItem(obj_item_shield);
		break;
	case global.ItemSlowShot:
		break;
	case global.ItemSpeedAura:
		break;
	case global.ItemLaneBarrier:
		break;
	case global.ItemLaunchShot:
		break;
	case global.ItemStunTrap:
		break;
	case global.ItemDownConveyor:
		break;
	case global.ItemUpConveyor:
		break;
}


