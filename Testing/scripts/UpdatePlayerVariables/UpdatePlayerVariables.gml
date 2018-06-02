global.playerX = x;
global.playerY = y;
global.playerTargetGroundY = _targetGroundY;
global.playerLane = _lane;
global.playerInstance = id;
global.playerIsSwitching = _isSwitchingLane;

_speed = global.playerSpeed * (IsAbilityActive(global.AbilityMovementSpeed) ? 2 : 1);
_switchSpeed = global.playerSwitchSpeed;
_maxJumpHeight = global.playerMaxJumpHeight * (IsAbilityActive(global.AbilityJumpHeight) ? 2 : 1);
_jumpSpeed = global.playerJumpSpeed * (IsAbilityActive(global.AbilityJumpHeight) ? 2 : 1);
_fallSpeed = global.playerFallSpeed;

var left = camera_get_view_x(view_camera[0]);
global.roomLeft = left;
global.roomRight = left + view_wview[0];