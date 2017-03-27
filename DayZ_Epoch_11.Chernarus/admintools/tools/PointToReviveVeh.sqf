private ["_vehicle","_type","_name","_hitpoints","_player"];

_vehicle = cursorTarget;
_type = typeOf _vehicle;
_name = getText(configFile >> "cfgVehicles" >> _type >> "displayName");
_hitpoints = _vehicle call vehicle_getHitpoints;
_player = player;

	{
		private ["_damage","_selection"];
		_damage = [_vehicle,_x] call object_getHit;
		if (_damage > 0) then {
				private "_partName";
				//change "HitPart" to " - Part" rather than complicated string replace
				_partName = toArray _x;
				_partName set [0,20];
				_partName set [1,45];
				_partName set [2,20];
				_partName = toString _partName;
				titleText [format["Repairing%1 ...", _partName], "PLAIN DOWN", _repairTime];
				
				_selection = getText(configFile >> "cfgVehicles" >> _type >> "HitPoints" >> _x >> "name");				
				_strH = "hit_" + (_selection);
				_vehicle setHit[_selection,0];
				_vehicle setVariable [_strH,0,true];				
				sleep _repairTime;
		};
	} forEach _hitpoints;

	_vehicle setDamage 0;
	_vehicle setFuel 1;
	_vehicle setVehicleAmmo 1;
	_vehicle setVelocity [0,0,1];	

titleText [format["%1 repaired. Is available to be drivable Now!", _name], "PLAIN DOWN"]; titleFadeOut 3;

// Tool use logger
if(EAT_logMinorTool) then {
	EAT_PVEH_usageLogger = format["%1 %2 -- has revived a %3",name _player,getPlayerUID _player,_vehicle];
	[] spawn {publicVariable "EAT_PVEH_usageLogger";};
};
