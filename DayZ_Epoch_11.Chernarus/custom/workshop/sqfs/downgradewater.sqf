private ["_playerPos","_nearRestr","_delobj","_objectID","_objectUID"];



_playerPos = getPosATL player;
_nearRestr = count nearestObjects [_playerPos, ["Land_Misc_Well_L_EP1"], 15] > 0;

sleep 2;


_delobj = nearestObject [player, "Land_Misc_Well_L_EP1"];


_objectID = _delobj getVariable["ObjectID","0"];
_objectUID = _delobj getVariable["ObjectUID","0"];


deleteVehicle _delobj;

[_objectID,_objectUID] call server_deleteObj;


deleteVehicle _delobj;


PVDZ_obj_Destroy = [_objectID,_objectUID,_delobj];


publicVariableServer "PVDZ_obj_Destroy";



titleText ["Workshop and watertank were removed", "PLAIN DOWN"];titleFadeOut 5;

