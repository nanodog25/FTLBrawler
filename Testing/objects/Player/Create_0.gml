st_none = "";
st_waiting = "waiting";

event_inherited();

CreateActorParams(true, 6, 6, 180, 6, 20, 0, 100, "Player");
CreateActor();
UpdatePlayerVariables();
CreatePlayer(1, 1);
alarm_set(11,0);

