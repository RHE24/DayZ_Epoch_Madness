//New Rubbletown for epoch1.6.
//Original for 1.0.5.1 by Caveman.
//Rewrited by Juandayz for 1.6.


private ["_spawnChance","_markerRadius","_debug","_enemytype","_loot_box","_loot_lists","_loot","_loot2","_loot_amount","_wait_time","_start_time","_spawnRadius","_spawnMarker",
"_position","_event_marker","_positionarray","_loot_pos","_vehclass","_debug_marker","_this","_center_1","_group_1","_waypointsrange","_enemy","_enemy1","_enemy2","_enemy3","_enemy4","_xpos",
"_ypos","_waypos1","_waypos2","_waypos3","_waypos4","_waypointend","_box","_baserunover","_baserunover1","_baserunover2","_baserunover3","_baserunover4","_baserunover5","_baserunover6",
"_baserunover7","_baserunover8","_baserunover9","_baserunover10",
"_baserunover11","_baserunover12","_baserunover13","_baserunover14","_baserunover15","_baserunover16","_baserunover17","_baserunover18","_despawn_timer","_missiontimeout","_cleanmission",
"_playerPresent","_starttime","_currenttime"];



_spawnChance =  0.69; // Percentage chance of event happening
_markerRadius = 350; // Radius the loot can spawn and used for the marker
_debug = true; // Puts a marker exactly were the loot spawns

_enemytype = "TK_Commander_EP1";

_loot_box = "USVehicleBox";
_loot_lists = [
[
["BAF_LRR_scoped","DMR_DZ","SCAR_H_LNG_Sniper","M240_DZ"],
["5Rnd_86x70_L115A1","5Rnd_86x70_L115A1","5Rnd_86x70_L115A1","20Rnd_762x51_DMR","20Rnd_762x51_DMR","20Rnd_762x51_B_SCAR","20Rnd_762x51_B_SCAR","100Rnd_762x51_M240","100Rnd_762x51_M240","Skin_TK_INS_Soldier_AR_EP1_DZ","Skin_RUS_Commander_DZ","FoodbaconCooked","FoodGoatCooked","ItemSodaFranka","ItemSodaMzly","PartGeneric"]
],
[
["revolver_gold_EP1"],
["6Rnd_45ACP","6Rnd_45ACP","6Rnd_45ACP","SmokeShellGreen","HandGrenade_west","HandGrenade_west","HandGrenade_east","HandGrenade_east","1Rnd_HE_M203","ItemGoldBar10oz","ItemGoldBar10oz","ItemGoldBar10oz","ItemGoldBar10oz","ItemKiloHemp","ItemKiloHemp","ItemKiloHemp","PipeBomb"]
],
[
["Binocular_Vector","NVGoggles","ItemMatchbox","ItemEtool","ItemHatchet","ItemMachete","ItemPickaxe","ItemSledge"],
["ItemLightBulb","ItemMixOil","plot_pole_kit","ItemGoldBar10oz","ItemGoldBar10oz","ItemGoldBar10oz","ItemGoldBar10oz","ItemGoldBar10oz","ItemGoldBar10oz","ItemGoldBar10oz"]
],
[
["ChainSaw"],
["ItemSandbag","ItemWire","equip_brick","ItemDesertTent","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemComboLock","ItemGenerator"]
],
[
["RPK_DZ","RPK_DZ","PKM_DZ","PKM_DZ"],
["75Rnd_545x39_RPK","75Rnd_545x39_RPK","75Rnd_762x39_RPK","75Rnd_762x39_RPK","100Rnd_762x54_PK","100Rnd_762x54_PK","100Rnd_762x54_PK","100Rnd_762x54_PK","ItemSodaPepsi","ItemSodaPepsi","ItemSodaPepsi","ItemSodaPepsi","ItemSodaPepsi","ItemSodaPepsi","ItemKiloHemp","ItemKiloHemp","ItemKiloHemp","ItemKiloHemp","ItemKiloHemp","ItemKiloHemp","ItemKiloHemp"]
],
[
["L110A1_DZ"],
["ItemAntibiotic","ItemAntibacterialWipe","bloodBagONEG","bloodBagBPOS","transfusionKit","bloodTester","equip_gauze","equip_rag","equip_herb_box","equip_string","ItemMorphine"]
],
[
["Crossbow_DZ","MR43_DZ","RedRyder","Mosin_DZ","LeeEnfield_DZ"],
["12Rnd_Quiver_Wood","1Rnd_Bolt_Tranquilizer","1Rnd_Bolt_Explosive","5Rnd_762x54_Mosin","5Rnd_762x54_Mosin","10Rnd_303British","10Rnd_303British","equip_gauzepackaged","equip_rope","equip_rag","ItemMorphine","ItemMorphine","MortarBucket","MortarBucket","MortarBucket","MortarBucket","MortarBucket","MortarBucket","transfusionKit","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks"]
],
[
["M4SPR","M14_DZ","M24_des_EP1"],
["5Rnd_17HMR","5Rnd_17HMR","5Rnd_762x51_M24","5Rnd_762x51_M24","20Rnd_762x51_DMR","20Rnd_762x51_DMR","10Rnd_762x54_SVD","10Rnd_762x54_SVD","10Rnd_762x54_SVD"]
],

[
["SVD_DZ","SVD_DZ","SVD_des_EP1","SVD_des_EP1"],
["PartWheel","PartWheel","PartWheel","PartGlass","PartGlass","PartGlass","PartEngine","PartEngine","PartVRotor","PartVRotor","PartFueltank","PartFueltank","ItemFuelcan","ItemFuelcan","ItemJerrycan","ItemJerrycan","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks","10Rnd_762x54_SVD","10Rnd_762x54_SVD"]
]

];
_loot = _loot_lists call BIS_fnc_selectRandom;
_loot2 = _loot_lists call BIS_fnc_selectRandom;

_loot_amount = 75;
_wait_time = 900;


// Dont mess with theses unless u know what yours doing
_start_time = time;
_spawnRadius = 5000;
_spawnMarker = 'center';




// Random location
_position = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;


diag_log(format["Spawning loot event at %1", _position]);


_event_marker = createMarker [ format ["loot_event_marker_%1", _start_time], _position];
_event_marker setMarkerShape "ELLIPSE";
_event_marker setMarkerType "Cricle01";
_event_marker setMarkerColor "ColorOrange";
_event_marker setMarkerAlpha 0.8;
_event_marker setMarkerBrush "DiagGrid";
_event_marker setMarkerSize [(_markerRadius + 50), (_markerRadius + 50)];





_positionarray = [
[(_position select 0) - 14.5, (_position select 1) - 21,-0.012],
[(_position select 0) - 20, (_position select 1) - 20,-0.012],
[(_position select 0) + 25, (_position select 1) + 5,-0.012],
[(_position select 0) + 16, (_position select 1) - 14,-0.012],
[(_position select 0) + 49, (_position select 1) + 17.5,-0.012],
[(_position select 0) + 38.5, (_position select 1) - 16,-0.012]
];
_loot_pos = _positionarray call BIS_fnc_selectRandom;


_vehclass = cargo_trucks call BIS_fnc_selectRandom;


if (_debug) then {
_debug_marker = createMarker [ format ["loot_event_debug_marker_%1", _start_time], _loot_pos];
_debug_marker setMarkerText "New RubbleTown";
_debug_marker setMarkerShape "ICON";
_debug_marker setMarkerType "SupplyVehicle";
_debug_marker setMarkerColor "ColorRed";
_debug_marker setMarkerAlpha 1;
_debug_marker setMarkerSize [1,1];
};



_this = createCenter east;

_this setFriend [west, 0];

_center_1 = _this;
_group_1 = createGroup _center_1;

_waypointsrange = 20;//range to move ai for waypoints
//

//spawnai
_enemy = objNull;
_enemy = _group_1 createUnit [_enemytype,_loot_pos,[],0,"CAN_COLLIDE"];	
_enemy enableAI "TARGET";
_enemy enableAI "AUTOTARGET";
_enemy enableAI "MOVE";
_enemy enableAI "ANIM";
_enemy enableAI "FSM";
_enemy setCombatMode "YELLOW";
_enemy setBehaviour "COMBAT";




_enemy1 = objNull;
_enemy1 = _group_1 createUnit [_enemytype,_loot_pos,[],0,"CAN_COLLIDE"];
_enemy1 enableAI "TARGET";
_enemy1 enableAI "AUTOTARGET";
_enemy1 enableAI "MOVE";
_enemy1 enableAI "ANIM";
_enemy1 enableAI "FSM";
_enemy1 setCombatMode "YELLOW";
_enemy1 setBehaviour "COMBAT";



_enemy2 = objNull;
_enemy2 = _group_1 createUnit [_enemytype,_loot_pos,[],0,"CAN_COLLIDE"];
_enemy2 enableAI "TARGET";
_enemy2 enableAI "AUTOTARGET";
_enemy2 enableAI "MOVE";
_enemy2 enableAI "ANIM";
_enemy2 enableAI "FSM";
_enemy2 setCombatMode "YELLOW";
_enemy2 setBehaviour "COMBAT";


_enemy3 = objNull;
_enemy3 = _group_1 createUnit [_enemytype,_loot_pos,[],0,"CAN_COLLIDE"];
_enemy3 enableAI "TARGET";
_enemy3 enableAI "AUTOTARGET";
_enemy3 enableAI "MOVE";
_enemy3 enableAI "ANIM";
_enemy3 enableAI "FSM";
_enemy3 setCombatMode "YELLOW";
_enemy3 setBehaviour "COMBAT";



_enemy4 = objNull;
_enemy4 = _group_1 createUnit [_enemytype,_loot_pos,[],0,"CAN_COLLIDE"];
_enemy4 enableAI "TARGET";
_enemy4 enableAI "AUTOTARGET";
_enemy4 enableAI "MOVE";
_enemy4 enableAI "ANIM";
_enemy4 enableAI "FSM";
_enemy4 setCombatMode "YELLOW";
_enemy4 setBehaviour "COMBAT";


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




sleep 2;




// Create ammo box
_box = createVehicle [_loot_box,_loot_pos,[], 0, "NONE"];
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
//_box setVariable ["permaLoot",true];
 




// Buildings and Objects
_baserunover = createVehicle ["Land_a_stationhouse_ruins",[(_position select 0) - 5, (_position select 1) + 16,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover setDir 0;
_baserunover setVectorUp surfaceNormal position _baserunover;
_baserunover1 = createVehicle ["Land_kostel_trosky_ruins", [(_position select 0) + 1, (_position select 1) - 13,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover1 setDir 0;
_baserunover1 setVectorUp surfaceNormal position _baserunover1;
_baserunover2 = createVehicle ["Land_ruin_01", [(_position select 0) - 13, (_position select 1) - 3,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover2 setDir 0;
_baserunover2 setVectorUp surfaceNormal position _baserunover2;
_baserunover3 = createVehicle ["Land_ruin_chimney", [(_position select 0) + 14, (_position select 1) - 8,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover3 setDir 0;
_baserunover3 setVectorUp surfaceNormal position _baserunover3;
_baserunover4 = createVehicle ["Land_ruin_corner_2",[(_position select 0) + 17, (_position select 1) - 14,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover4 setDir 0;
_baserunover4 setVectorUp surfaceNormal position _baserunover4;
_baserunover5 = createVehicle ["Land_ruin_walldoor", [(_position select 0) - 12, (_position select 1) - 11,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover5 setDir 0;
_baserunover5 setVectorUp surfaceNormal position _baserunover5;
_baserunover6 = createVehicle ["MAP_rubble_bricks_02", [(_position select 0) + 7, (_position select 1) + 3,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover6 setDir 0;
_baserunover6 setVectorUp surfaceNormal position _baserunover6;
_baserunover7 = createVehicle ["MAP_rubble_wood_03", [(_position select 0) - 19, (_position select 1) - 9,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover7 setDir 0;
_baserunover7 setVectorUp surfaceNormal position _baserunover7;
_baserunover8 = createVehicle ["MAP_T34", [(_position select 0) - 7, (_position select 1) - 1,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover8 setDir 0;
_baserunover8 setVectorUp surfaceNormal position _baserunover8;
_baserunover9 = createVehicle ["MAP_Misc_trunk_water", [(_position select 0) - 9, (_position select 1) - 14,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover9 setDir 0;
_baserunover9 setVectorUp surfaceNormal position _baserunover9;
_baserunover10 = createVehicle ["MAP_HouseBlock_C1_ruins", [(_position select 0) + 30, (_position select 1) + 18,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover10 setDir 0;
_baserunover10 setVectorUp surfaceNormal position _baserunover10;
_baserunover11 = createVehicle ["MAP_HouseBlock_A3_ruins", [(_position select 0) + 41, (_position select 1) - 17,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover11 setDir -183.96;
_baserunover11 setVectorUp surfaceNormal position _baserunover11;
_baserunover12 = createVehicle ["MAP_Ind_Stack_Big_ruins", [(_position select 0) - 30, (_position select 1) - 28,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover12 setDir 0;
_baserunover12 setVectorUp surfaceNormal position _baserunover12;
_baserunover13 = createVehicle ["MAP_dulni_bs",[(_position select 0) + 48, (_position select 1) + 20,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover13 setDir 0;
_baserunover13 setVectorUp surfaceNormal position _baserunover13;
_baserunover14 = createVehicle ["MAP_rubble_rocks_01", [(_position select 0) + 49, (_position select 1) + 5,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover14 setDir -123.02;
_baserunover14 setVectorUp surfaceNormal position _baserunover14;
_baserunover15 = createVehicle ["HMMWVWreck", [(_position select 0) + 22, (_position select 1) + 8,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover15 setDir 0;
_baserunover15 setVectorUp surfaceNormal position _baserunover15;
_baserunover16 = createVehicle ["UralWreck", [(_position select 0) + 27, (_position select 1) + 3,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover16 setDir 33.81;
_baserunover16 setVectorUp surfaceNormal position _baserunover16;
_baserunover17 = createVehicle ["UralWreck", [(_position select 0) - 44, (_position select 1) + 11,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover17 setDir 45.3;
_baserunover17 setVectorUp surfaceNormal position _baserunover17;
_baserunover18 = createVehicle ["UralWreck", [(_position select 0) - 10, (_position select 1) - 23,-0.12],[], 0, "CAN_COLLIDE"];
_baserunover18 setDir 200.2;
_baserunover18 setVectorUp surfaceNormal position _baserunover18;


// Add loot
{
_box addWeaponCargoGlobal [_x,1];
} forEach (_loot select 0);
{
_box addMagazineCargoGlobal [_x,1];
} forEach (_loot select 1);
{
_box addWeaponCargoGlobal [_x,1];
} forEach (_loot2 select 0);
{
_box addMagazineCargoGlobal [_x,1];
} forEach (_loot2 select 1);



// Send center message to users
[nil,nil,rTitleText,"Mercenaries stashed a loot crate in new rubble town]", "PLAIN",10] call RE;




_despawn_timer = 500;
_missiontimeout = true;
_cleanmission = false;
_playerPresent = false;
_starttime = floor(time);
while {_missiontimeout} do {
    sleep 10;
    _currenttime = floor(time);
    {if((isPlayer _x) && (_x distance _loot_pos <= 80)) then {_playerPresent = true};}forEach playableUnits;//check for nearest players
    if (_currenttime - _starttime >= _despawn_timer) then {_cleanmission = true;};
    if ((_playerPresent) || (_cleanmission)) then {_missiontimeout = false;};
};





if (_playerPresent) then {

waitUntil{{isPlayer _x && _x distance _loot_pos > 250  } count playableunits > 0};


// Clean up

deleteVehicle _box;
deleteMarker _event_marker;
if (_debug) then {
deleteMarker _debug_marker;
};

deleteVehicle _enemy;
deleteVehicle _enemy1;
deleteVehicle _enemy2;
deleteVehicle _enemy3;
deleteVehicle _enemy4;
deleteVehicle _baserunover;
deleteVehicle _baserunover1;
deleteVehicle _baserunover2;
deleteVehicle _baserunover3;
deleteVehicle _baserunover4;
deleteVehicle _baserunover5;
deleteVehicle _baserunover6;
deleteVehicle _baserunover7;
deleteVehicle _baserunover8;
deleteVehicle _baserunover9;
deleteVehicle _baserunover10;
deleteVehicle _baserunover11;
deleteVehicle _baserunover12;
deleteVehicle _baserunover13;
deleteVehicle _baserunover14;
deleteVehicle _baserunover15;
deleteVehicle _baserunover16;
deleteVehicle _baserunover17;
deleteVehicle _baserunover18;


// Send center message to users
[nil,nil,rTitleText,"End Mission rubble town", "PLAIN",10] call RE;

} else {

// Wait
sleep _wait_time;


// Clean up

deleteVehicle _box;
deleteMarker _event_marker;
if (_debug) then {
deleteMarker _debug_marker;
};

deleteVehicle _enemy;
deleteVehicle _enemy1;
deleteVehicle _enemy2;
deleteVehicle _enemy3;
deleteVehicle _enemy4;
deleteVehicle _baserunover;
deleteVehicle _baserunover1;
deleteVehicle _baserunover2;
deleteVehicle _baserunover3;
deleteVehicle _baserunover4;
deleteVehicle _baserunover5;
deleteVehicle _baserunover6;
deleteVehicle _baserunover7;
deleteVehicle _baserunover8;
deleteVehicle _baserunover9;
deleteVehicle _baserunover10;
deleteVehicle _baserunover11;
deleteVehicle _baserunover12;
deleteVehicle _baserunover13;
deleteVehicle _baserunover14;
deleteVehicle _baserunover15;
deleteVehicle _baserunover16;
deleteVehicle _baserunover17;
deleteVehicle _baserunover18;
};