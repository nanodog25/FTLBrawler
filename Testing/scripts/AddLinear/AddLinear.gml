///@arg weapon
///@arg cost

var weapon = argument0;
var cost = argument1;

ds_list_add(global.LinearAvailable, weapon);
ds_list_add(global.LinearCost, cost);