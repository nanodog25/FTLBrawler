///@arg ability
///@arg cost

var ability = argument0;
var cost = argument1;

ds_list_add(global.AbilitiesAvailable, ability);
ds_list_add(global.AbilitiesCost, cost);