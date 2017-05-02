// Temporary repair
private["_ct","_player","_name"];

_ct = cursorTarget;
_type = typeOf _ct;
_name = getText(configFile >> "cfgVehicles" >> _type >> "displayName");

if(_ct isNull) exitWith{cutText ["No target", "PLAIN DOWN"];};

_ct setdammage 0;
_ct setvehicleammo 1;
_ct setfuel 1;
_ct setVelocity [0,0,1];
_player = player;

PVDZ_veh_Save = [_ct,"repair"]; 
publicVariableServer "PVDZ_veh_Save";

titleText [format["%1 repaired, refuelled and rearmed.", _name], "PLAIN DOWN"]; titleFadeOut 3;

// Tool use logger
if(EAT_logMinorTool) then {
	EAT_PVEH_usageLogger = format["%1 %2 -- has temporarily repaired/refueld %3",name _player,getPlayerUID _player,_ct];
	[] spawn {publicVariable "EAT_PVEH_usageLogger";};
};
