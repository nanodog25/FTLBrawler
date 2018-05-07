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
_yAcc = 0;
_ySwitch = 0;
_canEverSwitchLane = _canSwitchLane;
_canFire = true;

_onGround = true;
_targetGroundY = global.LaneYs[| _lane];
_currentGroundY = _targetGroundY;
_jumpHeight = 0
_hitDirection = 0;

_action = "";
_weapon = "";
_projectile = obj_proj_bullet;
_moveX = 0;
_moveY = 0;
_moveLane = 0;
_isMoving = false;
_isLaunched = false;
_sideCollision = false;

//create text file for enemy variants