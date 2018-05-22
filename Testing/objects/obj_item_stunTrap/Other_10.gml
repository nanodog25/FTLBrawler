/// @description onActivate
_lane = global.playerLane;
_colX = global.playerX;
_colY = global.playerTargetGroundY;
CreateStunTrap(IsAbilityActive(global.AbilityItemBuff) ? _boosted : _default);