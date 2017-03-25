(FindDisplay 106) closeDisplay 1;

private ["_playerPos","_LastUsedTime","_Time","_crate1","_animals","_hasitem1","_removed","_animal","_objet","_positionobj"];

_playerPos = getPosATL player;
_LastUsedTime = 3600;
_Time = time - lastuse;





if(_Time < _LastUsedTime) exitWith { 
    cutText [format["wait %1 seconds",(round(_Time - _LastUsedTime))], "PLAIN DOWN"]; 
};



systemChat("wait some seconds to try to catch an animal"); 	
removeBackpack player;  
player playActionNow "Medic";
lastuse = time;


sleep 3;

 _crate1 = objNull;
            if (true) then{
               

				_this  = createVehicle ["Land_cages_EP1",getpos player,[], 0, ""];
                _crate1 setpos  (player modelToWorld [0,6,0]);
                _crate1 setDir ([_crate1, player] call BIS_fnc_dirTo);	
                _crate1 = _this;  	
 
				
            };
			
sleep 10;
deleteVehicle _crate1; 
systemChat("animal trap was deleted"); 






_animals = ["Hen","WildBoar"] call BIS_fnc_selectRandom;	
_this = createCenter civilian;
_center_2 = _this;

_group_2 = createGroup _center_2;

_animal = objNull;
if (true) then
{
  _this = _group_2 createUnit [_animals,getpos player, [], 6, "CAN_COLLIDE"] call BIS_fnc_findSafePos;	
  _animal = _this;
  _this setUnitAbility 0.60000002;

};		 
				 
	
	systemChat("you catch an animal"); 
	
		