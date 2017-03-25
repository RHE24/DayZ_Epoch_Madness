private ["_playerPos","_nearRestr","_delobj","_objectID","_objectUID","_backpack"];



_playerPos = getPosATL player;
_nearRestr = count nearestObjects [_playerPos, ["MAP_AirCondition_B"], 25] > 0;

player playActionNow "Medic";
[player,"repair",0,false,10] call dayz_zombieSpeak;
[player,10,true,(getPosATL player)] spawn player_alertZombies;
sleep 2;
_delobj = nearestObject [player, "MAP_AirCondition_B"];

_objectID = _delobj getVariable["ObjectID","0"];
_objectUID = _delobj getVariable["ObjectUID","0"];
deleteVehicle _delobj;
[_objectID,_objectUID] call server_deleteObj;
deleteVehicle _delobj;
PVDZ_obj_Destroy = [_objectID,_objectUID,_delobj];
publicVariableServer "PVDZ_obj_Destroy";
titleText ["Portable engineering was removed", "PLAIN DOWN"];titleFadeOut 5;

_backpack  = createVehicle ["DZ_ALICE_Pack_EP1",getpos player,[], 0, ""];
                _backpack setpos  (player modelToWorld [0,3,0]);
                _backpack setDir ([_backpack, player] call BIS_fnc_dirTo);