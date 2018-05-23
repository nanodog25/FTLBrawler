///@arg dir
///@arg hp
///@arg knockBack

var dir = argument0;
var hp = argument1;
var knockBack = argument2;

alarm_set(1, InSeconds(.3)/_speedMod);
_isHit = true;
_isInvulnerable = true;
_hitDirection = dir;
_currentHP -= hp;
_knockBack = knockBack;