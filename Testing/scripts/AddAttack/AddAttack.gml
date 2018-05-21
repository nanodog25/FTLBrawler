///@arg attack
///@arg cost

var attack = argument0;
var cost = argument1;

ds_list_add(global.AttacksAvailable, attack);
ds_list_add(global.AttacksCost, cost);