//GLOBAL
	//KEY BINDINGS
	global.KeyLeft = "A";
	global.KeyRight = "D";
	global.KeyUp = "W";
	global.KeyDown = "S";
	global.KeyJump = vk_space;
	global.KeyGrid = "G";

	//CO-ORDINATES
	var firstLaneY = room_height - ((room_height/24)*13);
	var laneWidth = room_height/8;
	global.LaneYs = ds_list_create();
	ds_list_add(global.LaneYs, firstLaneY, firstLaneY+laneWidth, firstLaneY+laneWidth*2, firstLaneY+laneWidth*3, firstLaneY+laneWidth*4);


//ON CREATE
_speed = 12;
_speedMod = 1;
_xSpeed = 0;
_switchSpeed = 12;
_switchSpeedMod = 1;

_isJumping = false;
_jumpHeight = 180;
_jumpSpeed = 12;
_fallSpeed = 15;
_isFalling = false;
 
_isAttacking = false;
_attackType = 0;
_maxHP = 100; 
_currentHP = _maxHP;
_isHit = false;
 
_isSwitchingLane = false;
_canSwitchLane = true;
_lane = 2;

_onGround = true;
_targetGroundY = global.LaneYs[| _lane];
_currentGroundY = _targetGroundY;
y = _targetGroundY;