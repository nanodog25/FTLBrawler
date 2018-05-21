global.playerX = x;
global.playerY = y;
global.playerLane = _lane;

_speed = global.playerSpeed;
_switchSpeed = global.playerSwitchSpeed;
_maxJumpHeight = global.playerMaxJumpHeight;
_jumpSpeed = global.playerJumpSpeed;
_fallSpeed = global.playerFallSpeed;

var left = camera_get_view_x(view_camera[0]);
global.roomLeft = left;
global.roomRight = left + view_wview[0];