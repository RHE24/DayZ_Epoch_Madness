msg = false;
electrify = false; 

while {true} do {
	private ["_pos","_allconditions","_inRange","_trigger"];
	
	
	
	_trigger = ["MAP_plot_green_draty"];
	_pos = getPosATL player;
	_allconditions = (nearestObjects [_pos, _trigger, 2]);
	_inRange = count _allconditions > 0;
	
	
	
	if  (_inRange) then {
		if (!msg) then {
			cutText ['ELECTRIC FENCE WARNING', 'PLAIN'];
			msg = true;
			[] execVM 'custom\workshop\serverfunction\server_electrify_action.sqf';
			[] execVM 'custom\workshop\serverfunction\server_electrify_zeds.sqf';
		};
	} else { 
	r_player_unconscious = false; 
	electrify = false; 
	msg = false; 
	};
};


