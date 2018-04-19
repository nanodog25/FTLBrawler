KeyBindings();
Layout();

CreateActorParams(2, true, 12, 12, 180, 12, 15, 0, 100, "Player");
CreateActor();
CreatePlayer(1, 1);
UpdatePlayerVariables();
alarm_set(11,0);