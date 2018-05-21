global.AttacksActive = ds_list_create();
global.AttacksAvailable = ds_list_create();
global.AttacksCost = ds_list_create();
global.AttackThrow = "Throw";
global.AttackNervePinch = "Nerve Pinch";
global.AttackParallelPull = "Parallel Pull";

AddAttack(global.AttackThrow, 3);
AddAttack(global.AttackNervePinch, 3);
AddAttack(global.AttackParallelPull, 3);
