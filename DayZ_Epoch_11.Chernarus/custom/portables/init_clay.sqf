notify = false;
_haspickaxe =  false;

while {true} do {

private["_pos","_canextractclay","_isPond","_pondPos","_objectsPond","_haspickaxe","_haspickaxeinventory","_inventory"]; 



  
_pos = getPosATL player;  


_canextractclay = count nearestObjects [_pos, ["Land_pumpa","Land_water_tank"], 4] > 0;
_isPond = false;
_pondPos = [];


 

 

//////////////////////////////////////////////////
// Checks
if (!_canextractclay) then {
	_objectsPond = nearestObjects [_pos, [], 50];
	{
		//Check for pond
		_isPond = ["pond",str(_x),false] call fnc_inString;	
		
		if (_isPond) then {	
			_pondPos = (_x worldToModel _pos) select 2;
			if (_pondPos < 0) then {
				_canextractclay = true;
			};
		};
	} forEach _objectsPond;
};

if  (_canextractclay) then {
		if (!notify) then {
			systemChat("Use scroll menu to extract some clay");
			notify = true;
		};
	} else { notify = false; };
	
	
if (_canextractclay) then {

_inventory = items player;
_haspickaxeinventory = "ItemPickaxe" in _inventory;

if !(_haspickaxeinventory) then {
systemChat("Extract Clay area you need a pickaxe in your toolbelt");
_haspickaxe =  false;
sleep 20;
}else{
_haspickaxe= true;
};

if (_haspickaxe) then {


if (s_player_clay < 0) then {
s_player_clay = player addaction [("<t color=""#C0A172"">" + ("Extract Clay") +"</t>"),"custom\portables\extractclay.sqf","",5,false,true,"",""]; };	
} else {
		player removeAction s_player_clay;
		s_player_clay = -1;		
	};
	
}else{
player removeAction s_player_clay;
		s_player_clay = -1;	
};
sleep 2;
};