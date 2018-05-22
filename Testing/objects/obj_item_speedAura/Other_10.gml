/// @description onActivate
_lane = global.playerLane;
_colX = global.playerX;
_colY = global.playerY;
CreateSpeedAura(IsAbilityActive(global.AbilityItemBuff) ? _boosted : _default);