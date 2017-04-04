/*
rewrited by juandayz for epoch 1.6
put together for DayZ Epoch
Credits to Shogun338 from Insurrection gaming
modified for separate "gather weed" script
*/

private ["_inventory","_hastool","_inVehicle","_vehicle","_gearmenu","_playerPos","_nearWeed","_weed","_countplayers","_objectID","_objectUID"];
_playerPos = getPosATL player;
_hempqty = {_x == "ItemKiloHemp"} count magazines player;
_nearWeed = count nearestObjects [_playerPos, ["fiberplant"], 4] > 0;
_weed = nearestObject [player, "fiberplant"];
_countplayers = count nearestObjects [player, ["CAManBase"], 7];
_vehicle = vehicle player;
_inVehicle = (_vehicle != player);
_inventory  = items player;
_hastool	= 	"ItemKnife" in _inventory;

if (!_hastool) exitWith {cutText
[format["Im not getting all those trichomes on my hands! You need a knife!"], "PLAIN DOWN"];
};

if (_inVehicle) exitWith {
 cutText [format["Nah dude, get out and harvest!!"], "PLAIN DOWN"]; 
 };
 
if (_countplayers > 1) exitWith {
 cutText [format["No way dude! Someone is watching us! Player within 5m HIDE THE DEAD"], "PLAIN DOWN"];
 };
 
if !(_nearWeed) exitWith {
 systemChat("Dude you tripping? Theres no plants here?");
};
if (_hempqty > 2) exitWith { 
    systemChat("Oi dude do you smell bud? put some in your bag ay!");
};

	disableSerialization;
	_gearmenu = FindDisplay 106;
	_gearmenu CloseDisplay 106;
	player playActionNow "Medic";
	r_interrupt = false;
	sleep 6;
	_objectID = _weed getVariable["ObjectID","0"];
	_objectUID = _weed getVariable["ObjectUID","0"];
	deleteVehicle _weed;
	PVDZ_obj_Destroy = [_objectID,_objectUID,_weed];
    publicVariableServer "PVDZ_obj_Delete";
	player addMagazine "ItemKiloHemp";
	sleep 2;
	systemChat("Yiew! Right Click it! LETS SMOKE! I hear the Black Market trader buys this stuff too!");