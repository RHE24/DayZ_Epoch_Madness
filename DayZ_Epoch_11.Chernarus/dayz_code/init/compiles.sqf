if (isServer) then {
	diag_log "Loading custom server compiles";	
};

if (!isDedicated) then {
	diag_log "Loading custom client compiles";
	
	fnc_usec_selfactions = compile preprocessFileLineNumbers "dayz_code\compile\fn_selfActions.sqf";
	player_humanityMorph = compile preprocessFileLineNumbers "dayz_code\compile\player_humanityMorph.sqf"; // This line can be removed when Epoch 1.0.6.2 comes out.
	DZ_KeyDown_EH = compile preprocessFileLineNumbers "dayz_code\compile\keyboard.sqf"; 	//ChangePathToSuitYourServer
	player_updateGui  = 	compile preprocessFileLineNumbers "dayz_code\compile\player_updateGui.sqf";
	//Workshop
	player_removeObject = compile preprocessFileLineNumbers "custom\workshop\serverfunction\remove.sqf";
	//Locked vehicles take no damage
	fnc_veh_handleDam = compile preprocessFileLineNumbers "dayz_code\compile\veh_handleDam.sqf";
};
