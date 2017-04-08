



private ["_finishEvent","_waypointsrange","_markerRadius","_followmarker","_loot_lists","_loot","_loot2","_tools","_items","_weapon","_weapon2","_weapon3","_weapon4","_weapon5","_weapon6",
"_giveWep","_giveWep2","_possibleMags","_mag","_crateItems","_var","_spawnChance","_spawnRadius","_spawnMarker","_position","_positionarray","_startingpos","_marker_on_radius","_follow_marker",
"_aiskin","_this","_center_1","_unitGroup","_pilot","_heli_class","_helicopter","_gunner","_gunner2","_xpos","_ypos","_waypos1","_waypos2","_waypos3","_waypos4","_wp1",
"_wp2","_wp3","_wp4","_waypointend","_despawn_timer","_missiontimeout","_cleanmission","_playerPresent","_starttime","_currenttime","_box","_chute","_smoke","_box2","_chute2","_smoke2",
"_boxtype","_getPos","_positiondrop","_positiondrop2","_positiondrop3","_positiondrop4","_box3","_box4","_chute3","_chute4","_smoke3","_smoke4","_objectslist00"];



//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////CONFIGS/////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//

_finishEvent = 400;//duration time
_waypointsrange = 100;//range to move
_markerRadius = 250; //  spawn and used for the marker
_followmarker = true; //spawn marker to follow the heli

//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////CONFIGS/////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//

//Loot for box 3/4

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
["75Rnd_545x39_RPK","75Rnd_545x39_RPK","75Rnd_762x39_RPK","75Rnd_762x39_RPK","100Rnd_762x54_PK","100Rnd_762x54_PK","100Rnd_762x54_PK","100Rnd_762x54_PK","ItemSodaPepsi","ItemSodaPepsi","ItemSodaPepsi","ItemSodaPepsi","ItemSodaPepsi","ItemSodaPepsi","ItemKiloHemp","ItemKiloHemp","ItemKiloHemp","ItemKiloHemp","ItemKiloHemp","ItemKiloHemp","ItemKiloHemp",""]
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

//config loot for box 1-2//
_tools = ["ItemPickaxe","ItemEtool","ItemKnife","ItemFishingPole","ItemHatchet","ItemMatchbox","ItemCrowbar"];
_items = ["ItemSodaPepsi","ItemMorphine","bloodBagONEG","ItemBloodbag","ItemComboLock","ItemKiloHemp","5Rnd_17HMR","5Rnd_17HMR","5Rnd_762x51_M24","5Rnd_762x51_M24","20Rnd_762x51_DMR","20Rnd_762x51_DMR","10Rnd_762x54_SVD","10Rnd_762x54_SVD","10Rnd_762x54_SVD"];


//weapon lists
_weapon = "L110A1_DZ";
_weapon2 = "M4SPR";
_weapon3 = "PKM_DZ";
_weapon4 = "RPK_74";
_weapon5 = "BAF_LRR_scoped";
_weapon6 = "M240_DZ";
_giveWep = [_weapon,_weapon2,_weapon3,_weapon4,_weapon5,_weapon6] call BIS_fnc_selectRandom;
_giveWep2 = [_weapon,_weapon2,_weapon3,_weapon4,_weapon5,_weapon6] call BIS_fnc_selectRandom;
_possibleMags = getArray (configfile >> "cfgWeapons" >> _giveWep >> "magazines");
_mag = _possibleMags select 0;
_crateItems = [_items] call BIS_fnc_selectRandom;

_var = floor((random 2) + 1);
//-----------//





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
_startingpos = _positionarray call BIS_fnc_selectRandom;


//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////END SPAWN CONFIG///////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//






//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////CONFIG MARKERS/////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//

_marker_on_radius = createMarker ["helirad",_position];
_marker_on_radius setMarkerShape "ELLIPSE";
_marker_on_radius setMarkerType "Cricle01";
_marker_on_radius setMarkerColor "ColorRed";
_marker_on_radius setMarkerAlpha 0.8;
_marker_on_radius setMarkerBrush "DiagGrid";
_marker_on_radius setMarkerSize [(_markerRadius + 50), (_markerRadius + 50)];


if (_followmarker) then {
_follow_marker = createMarker ["marker-follow-heli",_startingpos]; 
_follow_marker setMarkerText "Helicopter";
_follow_marker setMarkerShape "ICON";
_follow_marker setMarkerType "mil_triangle";
_follow_marker setMarkerColor "ColorBlue";
_follow_marker setMarkerAlpha 1;
_follow_marker setMarkerSize [0.8,0.8];
};
//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////////////////////SPAWNS/////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//



//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////SPAWN THE HELI AND AI/////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//

	
_aiskin = "TK_Commander_EP1";

_this = createCenter west;
_this setFriend [west, 1];
_center_1 = _this;
_unitGroup = createGroup _center_1;
//

//spawnai
_pilot = objNull;
_pilot = _unitGroup createUnit [_aiskin, _startingpos, [], 1, "NONE"];
_pilot addEventHandler ["handleDamage", {false}];
[_pilot] joinSilent _unitGroup;

sleep 1;
_heli_class = ["UH1H_DZE","UH1Y_DZE"] call BIS_fnc_selectRandom;
_helicopter =  createVehicle [_heli_class, [(_position select 0) + 4, (_position select 1) + 100],[], 0, "FLY"];
_helicopter         setVehicleVarName "heli";
_helicopter 		setFuel 1;
_helicopter 		engineOn true;
_helicopter 		setVehicleAmmo 1;
_helicopter 		flyInHeight 150;
_helicopter 		setVehicleLock "LOCKED";
_helicopter 		addEventHandler ["GetOut",{(_this select 0) setFuel 0;(_this select 0) setDamage 1;}];
_helicopter addEventHandler ["handleDamage", {false}];

dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_helicopter];
_pilot 	assignAsDriver _helicopter;
_pilot 	moveInDriver _helicopter;

_gunner = _unitGroup createUnit [_aiskin,_startingpos,[],1,"NONE"];
_gunner assignAsGunner _helicopter;
_gunner addEventHandler ["handleDamage", {false}];
_gunner moveInTurret [_helicopter,[0]];
[_gunner] joinSilent _unitGroup;

_gunner2 = _unitGroup createUnit [_aiskin,_startingpos,[],1,"NONE"];
_gunner2 addEventHandler ["handleDamage", {false}];
_gunner2 assignAsGunner _helicopter;
_gunner2 moveInTurret [_helicopter,[1]];
[_gunner2] joinSilent _unitGroup;


//end of heli


_xpos = _position select 0;
_ypos = _position select 1;
// These are 4 waypoints in a NorthSEW around the center
_waypos1 = [_xpos, _ypos+20, 0];
_waypos2 = [_xpos+20, _ypos, 0];
_waypos3 = [_xpos, _ypos-20, 0];
_waypos4 = [_xpos-20, _ypos, 0];
_wp1 = _unitGroup addWaypoint [_waypos1, _waypointsrange];
_wp1 setWaypointType "MOVE";
_wp2 = _unitGroup addWaypoint [_waypos2, _waypointsrange];
_wp2 setWaypointType "MOVE";
_wp3 = _unitGroup addWaypoint [_waypos3, _waypointsrange];
_wp3 setWaypointType "MOVE";
_wp4 = _unitGroup addWaypoint [_waypos4, _waypointsrange];
_wp4 setWaypointType "MOVE";
_waypointend = _unitGroup addWaypoint [[_xpos,_ypos, 0], _waypointsrange];
_waypointend setWaypointType "CYCLE";

//send global text for each player
[nil,nil,rTitleText,"Thers an Civil Defense Helicopter check your map to get supplys", "PLAIN",10] call RE;


_objectslist00 = createVehicle ["FlagCarrierRU", [(_startingpos select 0) + 1, (_startingpos select 1) - 1,-0.12],[], 0, "CAN_COLLIDE"];
_objectslist00 setDir 0;
_objectslist00 setVectorUp surfaceNormal position _objectslist00;


//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////TIME/PLAYERS MONITOR/////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//
_despawn_timer = 400;
_missiontimeout = true;
_cleanmission = false;
_playerPresent = false;
_starttime = floor(time);
while {_missiontimeout} do {
    sleep 10;
    _currenttime = floor(time);
    {if((isPlayer _x) && (_x distance _startingpos <= 100)) then {_playerPresent = true};}forEach playableUnits;//check for nearest players
    if (_currenttime - _starttime >= _despawn_timer) then {_cleanmission = true;};
    if ((_playerPresent) || (_cleanmission)) then {_missiontimeout = false;};
};

if (_playerPresent) then {
waitUntil{{isPlayer _x && _x distance _startingpos < 50  } count playableunits > 0};

sleep 3;

//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////SPAWN CRATES/////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//


_boxtype = "USVehicleBox_EP1";
_getPos = getPos _helicopter;
_positiondrop = [(_getPos select 0)-5, (_getPos select 1)-4, 25];
_positiondrop2 = [(_getPos select 0)+7, (_getPos select 1)-7, 50];
_positiondrop3 = [(_getPos select 0)+5, (_getPos select 1)-3, 40];
_positiondrop4 = [(_getPos select 0)-10, (_getPos select 1)-5, 30];
//


[nil,nil,rTitleText,"supply from above", "PLAIN",10] call RE;


_box = _boxtype createVehicle _positiondrop;
//_box setVariable ["Mission",1,true];
//_box setVariable ["permaLoot",1,true];
//_box setVariable ["ObjectID",""];
clearweaponcargoglobal _box;
clearmagazinecargoglobal _box;
_chute = createVehicle ["ParachuteMediumEast", getPos _box, [], 0, "FLY"];
_box attachTo [_chute, [0,0,3]];
_smoke = "SmokeShellBlue" createVehicle (getPos _box);
_smoke attachTo [_box, [0,0,0]];

//add loot
{_box addMagazineCargoGlobal [_x, _var];} forEach _crateItems;
{_box addWeaponCargoGlobal [_x, 1];} forEach _tools;
_box addMagazineCargoGlobal [_mag, _var];
_box addWeaponCargoGlobal [_giveWep, 1];


sleep 3;


_box2 = _boxtype createVehicle _positiondrop2;
//_box2 setVariable ["Mission",1,true];
//_box2 setVariable ["permaLoot",1,true];
//_box2 setVariable ["ObjectID",""];
clearweaponcargoglobal _box2;
clearmagazinecargoglobal _box2;
_chute2 = createVehicle ["ParachuteMediumEast", getPos _box2, [], 0, "FLY"];
_box2 attachTo [_chute2, [0,0,3]];
_smoke2 = "SmokeShellRed" createVehicle (getPos _box2);
_smoke2 attachTo [_box2, [0,0,0]];

//add loot
{_box2 addMagazineCargoGlobal [_x, _var];} forEach _crateItems;
{_box2 addWeaponCargoGlobal [_x, 1];} forEach _tools;
_box2 addMagazineCargoGlobal [_mag, _var];
_box2 addWeaponCargoGlobal [_giveWep, 1];


sleep 3;



_box3 = _boxtype createVehicle _positiondrop3;
//_box3 setVariable ["Mission",1,true];
//_box3 setVariable ["permaLoot",1,true];
//_box3 setVariable ["ObjectID",""];
clearweaponcargoglobal _box3;
clearmagazinecargoglobal _box3;

_chute3 = createVehicle ["ParachuteMediumEast", getPos _box3, [], 0, "FLY"];
_box3 attachTo [_chute3, [0,0,3]];
_smoke3 = "SmokeShellYellow" createVehicle (getPos _box3);
_smoke3 attachTo [_box3, [0,0,0]];

//add loot
{
_box3 addWeaponCargoGlobal [_x,1];
} forEach (_loot select 0);
{
_box3 addMagazineCargoGlobal [_x,1];
} forEach (_loot select 1);


sleep 3;



_box4 = _boxtype createVehicle _positiondrop4;
//_box4 setVariable ["Mission",1,true];
//_box4 setVariable ["permaLoot",1,true];
//_box4 setVariable ["ObjectID",""];
clearweaponcargoglobal _box4;
clearmagazinecargoglobal _box4;
_chute4 = createVehicle ["ParachuteMediumEast", getPos _box4, [], 0, "FLY"];
_box4 attachTo [_chute4, [0,0,3]];
_smoke4 = "SmokeShellGreen" createVehicle (getPos _box4);
_smoke4 attachTo [_box4, [0,0,0]];

//add loot
{
_box4 addWeaponCargoGlobal [_x,1];
} forEach (_loot2 select 0);
{
_box4 addMagazineCargoGlobal [_x,1];
} forEach (_loot2 select 1);



sleep 5;




//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////DESPAWNS/////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//


waitUntil{{isPlayer _x && _x distance _startingpos > 250  } count playableunits > 0};




//start to remove all



if (_followmarker) then {
deleteMarker _follow_marker;
};

deleteMarker _marker_on_radius;


deleteVehicle _helicopter;
deleteVehicle _pilot;
deleteVehicle _gunner;
deleteVehicle _gunner2;
deleteVehicle _objectslist00;
deleteVehicle _box;
deleteVehicle _chute;
deleteVehicle _box2;
deleteVehicle _chute2;
deleteVehicle _box3;
deleteVehicle _chute3;
deleteVehicle _box4;
deleteVehicle _chute4;
[nil,nil,rTitleText,"Helicopter has lost", "PLAIN",10] call RE;

}else{
sleep _finishEvent;

if (_followmarker) then {
deleteMarker _follow_marker;
};

deleteMarker _marker_on_radius;
deleteVehicle _helicopter;
deleteVehicle _pilot;
deleteVehicle _gunner1;
deleteVehicle _gunner2;
deleteVehicle _objectslist00;
deleteVehicle _box;
deleteVehicle _chute;
deleteVehicle _box2;
deleteVehicle _chute2;
deleteVehicle _box3;
deleteVehicle _chute3;
deleteVehicle _box4;
deleteVehicle _chute4;
[nil,nil,rTitleText,"Helicopter has lost", "PLAIN",10] call RE;
};
