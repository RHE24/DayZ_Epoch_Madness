//by juandayz 
//This event was written in the easiest way I found so you can edit/config and rewrite.



private ["_cratetype","_enemytype","_waypointsrange","_statictype","_deltime","_items","_loot","_Packlist","_Gear0","_Gear1","_Gear2","_Gear3",
"_Gear4","_Gear5","_Gear6","_Gear7","_spawnChance","_spawnRadius","_spawnMarker","_position","_positionarray","_mainpos","_precisemarker","_markeronradius","_markerRadius",
"_marker_on_radius","_precisemarker_marker","_this","_center_1","_group_1","_enemy","_enemy1","_enemy2","_enemy3","_enemy4","_enemy5","_enemy6","_enemy7","_objectsm2",
"_group_gunner","_enemygunner","_xpos","_ypos","_waypos1","_waypos2","_waypos3","_waypos4","_wp1","_wp2","_wp3","_wp4","_waypointend","_medicbox","_box","_objectslist00",
"_objectslist01","_objectslist02","_objectslist03","_objectslist04","_objectslist05","_objectslist06","_objectslist07","_missiontimeout","_cleanmission","_playerPresent","_starttime",
"_currenttime"];




/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------General Configs----------------------------------------------------------------//
////////////////////////////////////////////////////////---------------/////////////////////////////////////////////////////////////////



_cratetype = "USVehicleBox";
_enemytype = "RU_Soldier_AR";
_waypointsrange = 20;//range to move ai for waypoints
_statictype = "BAF_L2A1_Tripod_W";
_deltime = 600;//Despawn time for all objets/ai.

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------END General Configs------------------------------------------------------------//
////////////////////////////////////////////////////////---------------/////////////////////////////////////////////////////////////////







/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------If _spawncrates is true then Config the loot-----------------------------------------------//
////////////////////////////////////////////--------------------------------------------/////////////////////////////////////////////////

_items = [
[
["M9SD","FN_FAL","M4A3_CCO_EP1","AKS_74_kobra","Sa58V_RCO_EP1","ItemEtool","ItemCrowbar","ItemKnife","ItemSledge","ItemCompass","Binocular","Binocular_Vector","NVGoggles","ItemGPS"],
["ItemBriefcase100oz","150Rnd_127x107_DSHKM","20Rnd_762x51_FNFAL","20Rnd_762x51_FNFAL","20Rnd_762x51_FNFAL","30Rnd_762x39_SA58","30Rnd_762x39_SA58","30Rnd_762x39_SA58","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_545x39_AK","30Rnd_545x39_AK","30Rnd_545x39_AK","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD"]
]
];

_loot =  _items call BIS_fnc_selectRandom;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------Config loot Ends---------------------------------------------------------------------------//
////////////////////////////////////////////----------------/////////////////////////////////////////////////////////////////////////////





//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////If _aicustomgear = true; customize the gear////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//
_Packlist = [
"DZ_Patrol_Pack_EP1",
"DZ_Assault_Pack_EP1",
"DZ_Czech_Vest_Pouch",
"DZ_ALICE_Pack_EP1",
"DZ_TK_Assault_Pack_EP1",
"DZ_British_ACU",
"DZ_CivilBackpack_EP1",
"DZ_Backpack_EP1"
]call BIS_fnc_selectRandom;

_Gear0 = [
"ItemMorphine",
"ItemBandage",
"ItemBriefcase100oz",
"ItemAntibiotic",
"ItemPainkiller",
"FoodMRE",
"ItemGoldBar",
"ItemCanvas",
"CinderBlocks",
"ItemSodaPepsi",
"MortarBucket"
] call BIS_fnc_selectRandom;

_Gear1 = [
"ItemMorphine",
"ItemBandage",
"ItemBriefcase100oz",
"ItemAntibiotic",
"ItemPainkiller",
"FoodMRE",
"ItemGoldBar",
"ItemCanvas",
"CinderBlocks",
"ItemSodaPepsi",
"MortarBucket"
] call BIS_fnc_selectRandom;

_Gear2 = [
"ItemMorphine",
"ItemBandage",
"ItemBriefcase100oz",
"ItemAntibiotic",
"ItemPainkiller",
"FoodMRE",
"ItemGoldBar",
"ItemCanvas",
"CinderBlocks",
"ItemSodaPepsi",
"MortarBucket"
] call BIS_fnc_selectRandom;

_Gear3 = [
"ItemMorphine",
"ItemBandage",
"ItemBriefcase100oz",
"ItemAntibiotic",
"ItemPainkiller",
"FoodMRE",
"ItemGoldBar",
"ItemCanvas",
"CinderBlocks",
"ItemSodaPepsi",
"MortarBucket"
] call BIS_fnc_selectRandom;

_Gear4 = [
"ItemMorphine",
"ItemBandage",
"ItemBriefcase100oz",
"ItemAntibiotic",
"ItemPainkiller",
"FoodMRE",
"ItemGoldBar",
"ItemCanvas",
"CinderBlocks",
"ItemSodaPepsi",
"MortarBucket"
] call BIS_fnc_selectRandom;

_Gear5 = [
"ItemMorphine",
"ItemBandage",
"ItemBriefcase100oz",
"ItemAntibiotic",
"ItemPainkiller",
"FoodMRE",
"ItemGoldBar",
"ItemCanvas",
"CinderBlocks",
"ItemSodaPepsi",
"MortarBucket"
] call BIS_fnc_selectRandom;

_Gear6 = [
"ItemMorphine",
"ItemBandage",
"ItemBriefcase100oz",
"ItemAntibiotic",
"ItemPainkiller",
"FoodMRE",
"ItemGoldBar",
"ItemCanvas",
"CinderBlocks",
"ItemSodaPepsi",
"MortarBucket"
] call BIS_fnc_selectRandom;

_Gear7 = [
"ItemMorphine",
"ItemBandage",
"ItemBriefcase100oz",
"ItemAntibiotic",
"ItemPainkiller",
"FoodMRE",
"ItemGoldBar",
"ItemCanvas",
"CinderBlocks",
"ItemSodaPepsi",
"MortarBucket"
] call BIS_fnc_selectRandom;




//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////If _aicustomgear = true; customize the gear////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//








//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////CONFIG THE EVENT SPAWN/////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//
_spawnChance =  0.70;
_spawnRadius = 5000;
_spawnMarker = 'center';
_position = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;
_positionarray = [
[(_position select 0) - 14.5, (_position select 1) - 21,-0.012],
[(_position select 0) - 20, (_position select 1) - 20,-0.012],
[(_position select 0) + 25, (_position select 1) + 5,-0.012],
[(_position select 0) + 16, (_position select 1) - 14,-0.012],
[(_position select 0) + 49, (_position select 1) + 17.5,-0.012],
[(_position select 0) + 38.5, (_position select 1) - 16,-0.012]
];
_mainpos = _positionarray call BIS_fnc_selectRandom;


//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////END SPAWN CONFIG///////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//




//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////CONFIG MARKERS///////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////one of them: _precisemarker and _markeronradius must be true;////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//
_precisemarker = true; // Puts a marker exactly were camp  spawns

_markerRadius = 350; // Radius the camp can spawn and used for the marker




_marker_on_radius = createMarker ["armyrad",_position];
_marker_on_radius setMarkerShape "ELLIPSE";
_marker_on_radius setMarkerType "Cricle01";
_marker_on_radius setMarkerColor "ColorYellow";
_marker_on_radius setMarkerAlpha 0.8;
_marker_on_radius setMarkerBrush "DiagGrid";
_marker_on_radius setMarkerSize [(_markerRadius + 50), (_markerRadius + 50)];


if (_precisemarker) then {
_precisemarker_marker = createMarker ["ArmyCamp",_mainpos];
_precisemarker_marker setMarkerText "ArmyCamp";
_precisemarker_marker setMarkerShape "ICON";
_precisemarker_marker setMarkerType "Strongpoint";
_precisemarker_marker setMarkerColor "ColorRed";
_precisemarker_marker setMarkerAlpha 1;
_precisemarker_marker setMarkerSize [0.5,0.5];
};
//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////CONFIG MARKERS ENDS///////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//



///////////////////////##############################END OF CONFIGS##########################################################//////////////////////////////////






//send global text for each player
[nil,nil,rTitleText,"Thers an Army  Camp find it in your map", "PLAIN",10] call RE;

//---------------------------------------------------------------------------------------------//
////////////////////////////////////////////////---wait for nearest players before spawn all---//
//--------------------------------------------------------------------------------------------///
waitUntil{{isPlayer _x && _x distance _mainpos > 1000  } count playableunits > 0};
/////////////////////////////////////////////////////////////////////////////////////////////



//------------------------------------------------------------------------------------------------------------------------------------------------------------//
///////////////////////////////////////////////////SPAWN AI/////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//

//define side for ai
_this = createCenter east;

_this setFriend [west, 0];

_center_1 = _this;
_group_1 = createGroup _center_1;
//

//spawnai
_enemy = objNull;
_enemy = _group_1 createUnit [_enemytype,_mainpos,[],0,"CAN_COLLIDE"];	
_enemy enableAI "TARGET";
_enemy enableAI "AUTOTARGET";
_enemy enableAI "MOVE";
_enemy enableAI "ANIM";
_enemy enableAI "FSM";
_enemy setCombatMode "YELLOW";
_enemy setBehaviour "COMBAT";




_enemy1 = objNull;
_enemy1 = _group_1 createUnit [_enemytype,_mainpos,[],0,"CAN_COLLIDE"];
_enemy1 enableAI "TARGET";
_enemy1 enableAI "AUTOTARGET";
_enemy1 enableAI "MOVE";
_enemy1 enableAI "ANIM";
_enemy1 enableAI "FSM";
_enemy1 setCombatMode "YELLOW";
_enemy1 setBehaviour "COMBAT";



_enemy2 = objNull;
_enemy2 = _group_1 createUnit [_enemytype,_mainpos,[],0,"CAN_COLLIDE"];
_enemy2 enableAI "TARGET";
_enemy2 enableAI "AUTOTARGET";
_enemy2 enableAI "MOVE";
_enemy2 enableAI "ANIM";
_enemy2 enableAI "FSM";
_enemy2 setCombatMode "YELLOW";
_enemy2 setBehaviour "COMBAT";



_enemy3 = objNull;
_enemy3 = _group_1 createUnit [_enemytype,_mainpos,[],0,"CAN_COLLIDE"];
_enemy3 enableAI "TARGET";
_enemy3 enableAI "AUTOTARGET";
_enemy3 enableAI "MOVE";
_enemy3 enableAI "ANIM";
_enemy3 enableAI "FSM";
_enemy3 setCombatMode "YELLOW";
_enemy3 setBehaviour "COMBAT";



_enemy4 = objNull;
_enemy4 = _group_1 createUnit [_enemytype,_mainpos,[],0,"CAN_COLLIDE"];
_enemy4 enableAI "TARGET";
_enemy4 enableAI "AUTOTARGET";
_enemy4 enableAI "MOVE";
_enemy4 enableAI "ANIM";
_enemy4 enableAI "FSM";
_enemy4 setCombatMode "YELLOW";
_enemy4 setBehaviour "COMBAT";

	
_enemy5 = objNull;
_enemy5 = _group_1 createUnit [_enemytype,_mainpos,[],0,"CAN_COLLIDE"];
_enemy5 enableAI "TARGET";
_enemy5 enableAI "AUTOTARGET";
_enemy5 enableAI "MOVE";
_enemy5 enableAI "ANIM";
_enemy5 enableAI "FSM";
_enemy5 setCombatMode "YELLOW";
_enemy5 setBehaviour "COMBAT";



_enemy6 = objNull;
_enemy6 = _group_1 createUnit [_enemytype,_mainpos,[],0,"CAN_COLLIDE"];
_enemy6 enableAI "TARGET";
_enemy6 enableAI "AUTOTARGET";
_enemy6 enableAI "MOVE";
_enemy6 enableAI "ANIM";
_enemy6 enableAI "FSM";
_enemy6 setCombatMode "YELLOW";
_enemy6 setBehaviour "COMBAT";


_enemy7 = objNull;
_enemy7 = _group_1 createUnit [_enemytype,_mainpos,[],0,"CAN_COLLIDE"];
_enemy7 enableAI "TARGET";
_enemy7 enableAI "AUTOTARGET";
_enemy7 enableAI "MOVE";
_enemy7 enableAI "ANIM";
_enemy7 enableAI "FSM";
_enemy7 setCombatMode "YELLOW";
_enemy7 setBehaviour "COMBAT";


//spawn gunner if staticsguns is true


_objectsm2 = createVehicle [_statictype, [(_position select 0) - 5, (_position select 1) - 4,0],[], 0, "CAN_COLLIDE"];
_objectsm2 setDir 0;
_objectsm2 setVectorUp surfaceNormal position _objectsm2;
_objectsm2 setVehicleLock "LOCKED";
_objectsm2 	setVehicleAmmo 1;
dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_objectsm2];

sleep 1;
_group_gunner = createGroup _center_1;
_enemygunner = objNull;
_enemygunner = _group_gunner createUnit [_enemytype,_mainpos,[],0,"CAN_COLLIDE"];
_enemygunner moveingunner _objectsm2;


///////////////////////////////////////remove weapons and magazines
removeAllWeapons _enemy;
removeAllItems _enemy;
removeAllWeapons _enemy1;
removeAllItems _enemy1;
removeAllWeapons _enemy2;
removeAllItems _enemy2;
removeAllWeapons _enemy3;
removeAllItems _enemy3;
removeAllWeapons _enemy4;
removeAllItems _enemy4;
removeAllWeapons _enemy5;
removeAllItems _enemy5;
removeAllWeapons _enemy6;
removeAllItems _enemy6;
removeAllWeapons _enemy7;
removeAllItems _enemy7;


sleep 1;

///////////////////////////////////////add weapons and magazines
_enemy addWeapon "G36C_camo";
_enemy addMagazine "30Rnd_556x45_G36";
_enemy addMagazine "30Rnd_556x45_G36";
_enemy addMagazine "30Rnd_556x45_G36";
_enemy addMagazine "30Rnd_556x45_G36";
_enemy addMagazine "30Rnd_556x45_G36";
_enemy addMagazine "30Rnd_556x45_G36";

_enemy1 addWeapon "G36C_camo";
_enemy1 addMagazine "30Rnd_556x45_G36";
_enemy1 addMagazine "30Rnd_556x45_G36";
_enemy1 addMagazine "30Rnd_556x45_G36";
_enemy1 addMagazine "30Rnd_556x45_G36";
_enemy1 addMagazine "30Rnd_556x45_G36";
_enemy1 addMagazine "30Rnd_556x45_G36";

_enemy2 addWeapon "M4A1_HWS_GL_camo";
_enemy2 addMagazine "30Rnd_556x45_Stanag";
_enemy2 addMagazine "30Rnd_556x45_Stanag";
_enemy2 addMagazine "30Rnd_556x45_Stanag";
_enemy2 addMagazine "30Rnd_556x45_Stanag";
_enemy2 addMagazine "30Rnd_556x45_Stanag";
_enemy2 addMagazine "30Rnd_556x45_Stanag";

_enemy3 addWeapon "M4A1_HWS_GL_camo";
_enemy3 addMagazine "30Rnd_556x45_Stanag";
_enemy3 addMagazine "30Rnd_556x45_Stanag";
_enemy3 addMagazine "30Rnd_556x45_Stanag";
_enemy3 addMagazine "30Rnd_556x45_Stanag";
_enemy3 addMagazine "30Rnd_556x45_Stanag";
_enemy3 addMagazine "30Rnd_556x45_Stanag";

_enemy4 addWeapon "AKS74U_DZ";
_enemy4 addMagazine "30Rnd_545x39_AK";
_enemy4 addMagazine "30Rnd_545x39_AK";
_enemy4 addMagazine "30Rnd_545x39_AK";
_enemy4 addMagazine "30Rnd_545x39_AK";
_enemy4 addMagazine "30Rnd_545x39_AK";
_enemy4 addMagazine "30Rnd_545x39_AK";

_enemy5 addWeapon "FNFAL_DZ";
_enemy5 addMagazine "20Rnd_762x51_FNFAL";
_enemy5 addMagazine "20Rnd_762x51_FNFAL";
_enemy5 addMagazine "20Rnd_762x51_FNFAL";
_enemy5 addMagazine "20Rnd_762x51_FNFAL";
_enemy5 addMagazine "20Rnd_762x51_FNFAL";
_enemy5 addMagazine "20Rnd_762x51_FNFAL";

_enemy6 addWeapon "M249_DZ";
_enemy6 addMagazine "100Rnd_556x45_M249";
_enemy6 addMagazine "100Rnd_556x45_M249";
_enemy6 addMagazine "100Rnd_556x45_M249";
_enemy6 addMagazine "100Rnd_556x45_M249";

_enemy7 addWeapon "M24_DZ";
_enemy7 addMagazine "5Rnd_762x51_M24";
_enemy7 addMagazine "5Rnd_762x51_M24";
_enemy7 addMagazine "5Rnd_762x51_M24";
_enemy7 addMagazine "5Rnd_762x51_M24";
_enemy7 addMagazine "5Rnd_762x51_M24";
_enemy7 addMagazine "5Rnd_762x51_M24";
//////////////////////////////////////////////

//add items
_enemy addMagazine _Gear0;
_enemy addMagazine _Gear1;
_enemy1 addMagazine _Gear1;
_enemy1 addMagazine _Gear2;
_enemy2 addMagazine _Gear2;
_enemy2 addMagazine _Gear3;
_enemy3 addMagazine _Gear3;
_enemy3 addMagazine _Gear4;
_enemy4 addMagazine _Gear4;
_enemy4 addMagazine _Gear5;
_enemy5 addMagazine _Gear5;
_enemy5 addMagazine _Gear6;
_enemy6 addMagazine _Gear6;
_enemy6 addMagazine _Gear7;
_enemy7 addMagazine _Gear7;
_enemy7 addMagazine _Gear0;


//add backpacks
_enemy addBackpack _Packlist;
_enemy1 addBackpack _Packlist;
_enemy2 addBackpack _Packlist;
_enemy3 addBackpack _Packlist;
_enemy4 addBackpack _Packlist;
_enemy5 addBackpack _Packlist;
_enemy6 addBackpack _Packlist;
_enemy7 addBackpack _Packlist;




_xpos = _position select 0;
_ypos = _position select 1;

// These are 4 waypoints in a NorthSEW around the center
_waypos1 = [_xpos, _ypos+20, 0];
_waypos2 = [_xpos+20, _ypos, 0];
_waypos3 = [_xpos, _ypos-20, 0];
_waypos4 = [_xpos-20, _ypos, 0];


_wp1 = _group_1 addWaypoint [_waypos1, _waypointsrange];
_wp1 setWaypointType "MOVE";
_wp2 = _group_1 addWaypoint [_waypos2, _waypointsrange];
_wp2 setWaypointType "MOVE";
_wp3 = _group_1 addWaypoint [_waypos3, _waypointsrange];
_wp3 setWaypointType "MOVE";
_wp4 = _group_1 addWaypoint [_waypos4, _waypointsrange];
_wp4 setWaypointType "MOVE";


_waypointend = _group_1 addWaypoint [[_xpos,_ypos, 0], _waypointsrange];
_waypointend setWaypointType "CYCLE";


sleep 1;

//spawn medic box if spawnmedical is true

_medicbox = createVehicle ["MedBox1", [(_position select 0) + 1, (_position select 1) - 1,-0.12],[], 0, "CAN_COLLIDE"];


//If is spawncrate true then Spawn crate

_box = createVehicle [_cratetype,_mainpos,[], 0, "NONE"];
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;

// Add loot to the crate
{
_box addWeaponCargoGlobal [_x,1];
} forEach (_loot select 0);


{
_box addMagazineCargoGlobal [_x,1];
} forEach (_loot select 1);



//spawn artillery if is true

_objectslist00 = createVehicle ["M119_US_EP1", [(_position select 0) + 4, (_position select 1) - 7,-0.12],[], 0, "CAN_COLLIDE"];
_objectslist00 setDir 0;
_objectslist00 setVectorUp surfaceNormal position _objectslist00;
_objectslist00 setVehicleLock "LOCKED";


sleep 1;

//if is true spawn Buildings and Objects

_objectslist01 = createVehicle ["ACamp_EP1", [(_position select 0) + 1, (_position select 1) - 13,-0.12],[], 0, "CAN_COLLIDE"];
_objectslist01 setDir 0;
_objectslist01 setVectorUp surfaceNormal position _objectslist01;
_objectslist02 = createVehicle ["MAP_misc_FallenTree1", [(_position select 0) - 13, (_position select 1) - 3,-0.12],[], 0, "CAN_COLLIDE"];
_objectslist02 setDir 0;
_objectslist02 setVectorUp surfaceNormal position _objectslist02;
_objectslist03 = createVehicle ["MAP_misc_FallenTree2", [(_position select 0) + 14, (_position select 1) - 8,-0.12],[], 0, "CAN_COLLIDE"];
_objectslist03 setDir 0;
_objectslist03 setVectorUp surfaceNormal position _objectslist03;

_objectslist04 = createVehicle ["ACamp_EP1", [(_position select 0) - 1, (_position select 1) - 11,-0.12],[], 0, "CAN_COLLIDE"];
_objectslist04 setDir 0;
_objectslist04 setVectorUp surfaceNormal position _objectslist04;
_objectslist05 = createVehicle ["ACamp_EP1", [(_position select 0) - 10, (_position select 1) - 5,-0.12],[], 0, "CAN_COLLIDE"];
_objectslist05 setDir 0;
_objectslist05 setVectorUp surfaceNormal position _objectslist05;
_objectslist06 = createVehicle ["ACamp_EP1", [(_position select 0) - 11, (_position select 1) - 7,-0.12],[], 0, "CAN_COLLIDE"];
_objectslist06 setDir 0;
_objectslist06 setVectorUp surfaceNormal position _objectslist06;

_objectslist07 = createVehicle ["MAP_Pristresek_mensi", [(_position select 0) - 20, (_position select 1) - 9,-0.12],[], 0, "CAN_COLLIDE"];
_objectslist07 setDir 0;
_objectslist07 setVectorUp surfaceNormal position _objectslist07;







sleep 1;






//////////////////////////check for players to start despawn
_missiontimeout = true;
_cleanmission = false;
_playerPresent = false;
_starttime = floor(time);
while {_missiontimeout} do {
    sleep 10;
    _currenttime = floor(time);
    {
	if((isPlayer _x) && (_x distance _box <= 100)) then {
	_playerPresent = true;
	};
	}forEach playableUnits;//check for nearest players
    
	if (_currenttime - _starttime >= _deltime) then {
	_cleanmission = true;
	};
    if ((_playerPresent) || (_cleanmission)) then {
	_missiontimeout = false;
	};
};

if (_playerPresent) then {





///////wait players distance from crates must be higer than 300mts to start to remove
waitUntil{{isPlayer _x && _x distance _box > 300  } count playableunits > 0};

[nil,nil,rTitleText,"Army Camp has lost", "PLAIN",10] call RE;


if (_precisemarker) then {
deleteMarker _precisemarker_marker;
};

deleteMarker _marker_on_radius;
deleteVehicle _medicbox ;
deleteVehicle _box; 
deleteVehicle _objectslist00;
deleteVehicle _objectslist01;
deleteVehicle _objectslist02;
deleteVehicle _objectslist03;
deleteVehicle _objectslist04;
deleteVehicle _objectslist05;
deleteVehicle _objectslist06;
deleteVehicle _objectslist07;
deleteVehicle _objectsm2;
deleteVehicle _enemygunner;
deleteVehicle _enemy;
deleteVehicle _enemy1;
deleteVehicle _enemy2;
deleteVehicle _enemy3;
deleteVehicle _enemy4;
deleteVehicle _enemy5;
deleteVehicle _enemy6;
deleteVehicle _enemy7;


//if noone comes to the mission proceed to sleep the _deltime variable and remove all
}else{
sleep _deltime;
[nil,nil,rTitleText,"Army Camp has lost", "PLAIN",10] call RE;

if (_precisemarker) then {
deleteMarker _precisemarker_marker;
};

deleteMarker _marker_on_radius;
deleteVehicle _medicbox ;
deleteVehicle _box; 
deleteVehicle _objectslist00;
deleteVehicle _objectslist01;
deleteVehicle _objectslist02;
deleteVehicle _objectslist03;
deleteVehicle _objectslist04;
deleteVehicle _objectslist05;
deleteVehicle _objectslist06;
deleteVehicle _objectslist07;
deleteVehicle _objectsm2;
deleteVehicle _enemygunner;
deleteVehicle _enemy;
deleteVehicle _enemy1;
deleteVehicle _enemy2;
deleteVehicle _enemy3;
deleteVehicle _enemy4;
deleteVehicle _enemy5;
deleteVehicle _enemy6;
deleteVehicle _enemy7;

};
//12/23/16. Buenos Aires Argentina. free for epoch community