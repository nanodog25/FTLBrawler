_isSwitchingLane = false;
_isJumping = false;
_isFalling = false;
_isAttacking = false;
_isHit = false;
_isInvulnerable = false;
_isPunching = false;
_currentHP = _maxHP;
_xSpeed = 0;
_ySpeed = 0;
_canEverSwitchLane = _canSwitchLane;
_canFire = true;

_onGround = true;
_targetGroundY = global.LaneYs[| _lane];
_currentGroundY = _targetGroundY;
_jumpHeight = 0
//y = _targetGroundY;
_hitDirection = 0;

_collisionBuffer = 20;
_action = "";
_weapon = "";
_projectile = obj_Bullet;
_moveX = 0;
_moveY = 0;
_moveLane = 0;
_isMoving = false;

//create text file for enemy variants