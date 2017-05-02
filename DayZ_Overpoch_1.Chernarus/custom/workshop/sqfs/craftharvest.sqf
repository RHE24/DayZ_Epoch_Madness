private ["_inventory","_hastool","_playerPos","_nearRestr","_removed","_brokeChance","_vegetables","_plant","_objectID","_objectUID"];

_inventory = items player;
_hastool = "ItemMachete" in _inventory;
_playerPos = getPosATL player;
_nearRestr = count nearestObjects [_playerPos, ["MAP_p_urtica"], 30] > 0;
_plant = nearestObject [player, "MAP_p_urtica"];
_brokeChance = round(random 10);
_vegetables = ["FoodCanCorn","FoodCanCurgon","ItemSodaClays"] call BIS_fnc_selectRandom;

if !(_nearRestr) exitWith {
cutText [format["You need a Plant on your garden"], "PLAIN DOWN"];  
dayz_actionInProgress = false;

	};
	
if !(_hastool) exitWith {
	cutText [format["You need to have a Machete on your toolbet."], "PLAIN DOWN"];
	dayz_actionInProgress = false;

};

if (_nearRestr && _hastool) then {
player playActionNow "Medic";
[player,"repair",0,false,10] call dayz_zombieSpeak;
[player,10,true,(getPosATL player)] spawn player_alertZombies;
sleep 5;
if (_brokeChance < 2) then {r_player_infected = true;
	player removeWeapon "ItemMachete";
		cutText [format["%1, you broke your Machete",name player], "PLAIN DOWN"];
	};
_objectID = _plant getVariable["ObjectID","0"];
_objectUID = _plant getVariable["ObjectUID","0"];
deleteVehicle _plant;
[_objectID,_objectUID] call server_deleteObj;
deleteVehicle _plant;
PVDZ_obj_Destroy = [_objectID,_objectUID,_plant];
publicVariableServer "PVDZ_obj_Destroy";
player addMagazine _vegetables;
player addMagazine _vegetables;
sleep 1;
titleText ["You collected vegetables!!!", "PLAIN DOWN"];titleFadeOut 5;
};
dayz_actionInProgress = false;
