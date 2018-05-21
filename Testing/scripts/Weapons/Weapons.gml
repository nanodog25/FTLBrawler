global.LobActive = ds_list_create();
global.LobAvailable = ds_list_create();
global.LobCost = ds_list_create();

global.LinearActive = ds_list_create();
global.LinearAvailable = ds_list_create();
global.LinearCost = ds_list_create();

global.LobSplit = "Split";
global.LobSlowSplash = "Slow Splash";
global.LobQuantumTunneling = "Quantum Tunneling";
global.LobWall = "Wall";
global.LobRoll = "Roll";
global.LobSightMount = "Sight Mount";
global.LobExplosive = "Explosive Rounds";

global.LinearShrapnel = "Shrapnel";
global.LinearCrawler = "Crawler";
global.LinearOneShotRocket = "One-shot Rocket";
global.LinearQuantumTunneling = "Quantum Tunneling";
global.LinearExplosive = "Explosive Rounds";
global.LinearTravelSpeed = "Travel Speed";
global.LinearStunRounds = "Stun Rounds";
global.LinearPiercing = "Piercing";

AddLob(global.LobSplit, 3);
AddLob(global.LobSlowSplash, 5);
AddLob(global.LobQuantumTunneling, 2);
AddLob(global.LobWall, 3);
AddLob(global.LobRoll, 2);
AddLob(global.LobSightMount, 1);
AddLob(global.LobExplosive, 3);

AddLinear(global.LinearShrapnel, 1);
AddLinear(global.LinearCrawler, 4);
AddLinear(global.LinearOneShotRocket, 4);
AddLinear(global.LinearQuantumTunneling, 2);
AddLinear(global.LinearExplosive, 3);
AddLinear(global.LinearTravelSpeed, 2);
AddLinear(global.LinearStunRounds, 2);
AddLinear(global.LinearPiercing, 4);
