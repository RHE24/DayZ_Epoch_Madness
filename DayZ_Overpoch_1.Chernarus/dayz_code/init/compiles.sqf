if (isServer) then {
	diag_log "Loading custom server compiles";
};

if (!isDedicated) then {
	diag_log "Loading custom client compiles";
	//Patch Entry for default 1.0.6.1A hotfix
	player_humanityMorph = compile preprocessFileLineNumbers "dayz_code\compile\player_humanityMorph.sqf"; // This line can be removed when Epoch 1.0.6.2 comes out.
	//Custom fn_sefactions
	fnc_usec_selfactions = compile preprocessFileLineNumbers "dayz_code\compile\fn_selfActions.sqf";
	//Custom Keyboard commands
	DZ_KeyDown_EH = compile preprocessFileLineNumbers "dayz_code\compile\keyboard.sqf";
	//Custom Player GUI Blood,Temprature,and Medical Icons moved
	player_updateGui = compile preprocessFileLineNumbers "dayz_code\compile\player_updateGui.sqf";
	//Workshop
	player_removeObject = compile preprocessFileLineNumbers "custom\workshop\serverfunction\remove.sqf";
};
fnc_veh_handleDam = compile preprocessFileLineNumbers "dayz_code\compile\veh_handleDam.sqf";