/// @arg canSwitchLane
/// @arg speed
/// @arg switchSpeed
/// @arg jumpHeight
/// @arg jumpSpeed
/// @arg fallSpeed
/// @arg attackType
/// @arg maxHP
/// @arg objectType

_canSwitchLane = argument0;
_speed = argument1;
_switchSpeed = argument2;
_maxJumpHeight = argument3;
_jumpSpeed = argument4;
_fallSpeed = argument5;
_attackType = argument6;
_maxHP = argument7;
_objectType = argument8;

_currentHP = _maxHP;
_canEverSwitchLane = _canSwitchLane;
_jumpClearance = _maxJumpHeight - 20;