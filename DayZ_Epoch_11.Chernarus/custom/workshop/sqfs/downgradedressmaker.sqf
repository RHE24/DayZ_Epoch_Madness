private ["_playerPos","_nearRestr","_delobj","_objectID","_objectUID"];


_playerPos = getPosATL player;
_nearRestr = count nearestObjects [_playerPos, ["MAP_office_table_a"], 25] > 0;

player playActionNow "Medic";
[player,"repair",0,false,10] call dayz_zombieSpeak;
[player,10,true,(getPosATL player)] spawn player_alertZombies;
sleep 2;
_delobj = nearestObject [player, "MAP_office_table_a"];

_objectID = _delobj getVariable["ObjectID","0"];
_objectUID = _delobj getVariable["ObjectUID","0"];
deleteVehicle _delobj;
[_objectID,_objectUID] call server_deleteObj;
deleteVehicle _delobj;
PVDZ_obj_Destroy = [_objectID,_objectUID,_delobj];
publicVariableServer "PVDZ_obj_Destroy";
titleText ["Dresser removed", "PLAIN DOWN"];titleFadeOut 5;