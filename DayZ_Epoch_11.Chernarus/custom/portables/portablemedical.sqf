private ["_playerPos","_LastUsedTime","_Time","_crate1"];

_playerPos = getPosATL player;
_LastUsedTime = 3600;
_Time = time - lastuse;





if(_Time < _LastUsedTime) exitWith { 
    cutText [format["wait %1 seconds",(round(_Time - _LastUsedTime))], "PLAIN DOWN"]; 
};
systemChat("warning medicalbox will be deleted after 190 seconds"); 	
removeBackpack player;  
player playActionNow "Medic";
lastuse = time;


sleep 3;

 _crate1 = objNull;
            if (true) then{
               

				_this  = createVehicle ["MedBox1",getpos player,[], 0, ""];
                _crate1 setpos  (player modelToWorld [0,6,0]);
                _crate1 setDir ([_crate1, player] call BIS_fnc_dirTo);	
                _crate1 = _this;  	
 
				
            };
			
			 sleep 190;
				deleteVehicle _crate1;  
	systemChat("medicalbox was deleted"); 	
		