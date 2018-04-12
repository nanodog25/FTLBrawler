///@arg owner
///@arg damage
///@arg attackDuration
///@arg buildUpDuration

_owner = argument0;
_damage = argument1;
_attackDuration = argument2;
_buildUpDuration = argument3;
_stunLength = 4;

alarm_set(0, _buildUpDuration);