//by juandayz updated 01/10/2017

private ["_rand_player","_waypointsrange","_aiskin","_plane_class","_boxtype","_loot_lists","_loot","_positionp","_this","_center_1","_unitGroup","_pilot","_carrier","_xpos","_ypos",
"_cor_y","_cor_x","_waypos1","_waypos2","_waypos3","_waypos4","_wp1","_wp2","_wp3","_wp4","_waypointend","_positiondrop","_box","_chute","_smoke"];


_rand_player    = playableUnits call BIS_fnc_selectRandom;

_waypointsrange = 50;//range to move
_aiskin = "TK_Commander_EP1";
_plane_class = "AN2_DZ";
_boxtype = "USVehicleBox_EP1";



//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////CONFIG LOOT/////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//



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
//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////CONFIG LOOT/////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//





if((isPlayer _rand_player) && (alive _rand_player)) then {


	
[nil,nil,rTitleText,"Civil Defense Supply Convoy take a look at sky!", "PLAIN",10] call RE;




_positionp = [_rand_player] call FNC_GetPos;


	

_this = createCenter west;
_this setFriend [west, 1];
_center_1 = _this;
_unitGroup = createGroup _center_1;
//

//spawnai
_pilot = objNull;
_pilot = _unitGroup createUnit [_aiskin, [(_positionp select 0) + 90, (_positionp select 1) + 100], [], 1, "NONE"];
_pilot addEventHandler ["handleDamage", {false}];
[_pilot] joinSilent _unitGroup;

sleep 1;

_carrier =  createVehicle [_plane_class, [(_positionp select 0) + 50, (_positionp select 1) + 50],[], 0, "FLY"];
_carrier         setVehicleVarName "heli";
_carrier 		setFuel 1;
_carrier 		engineOn true;
_carrier 		setVehicleAmmo 1;
_carrier 		flyInHeight 150;
_carrier 		setVehicleLock "LOCKED";
_carrier 		addEventHandler ["GetOut",{(_this select 0) setFuel 0;(_this select 0) setDamage 1;}];
_carrier addEventHandler ["handleDamage", {false}];

dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_carrier];
_pilot 	assignAsDriver _carrier;
_pilot 	moveInDriver _carrier;



_xpos = _positionp select 0;
_ypos = _positionp select 1;
_cor_y = -20;
_cor_x = 20;


// These are 4 waypoints in a NorthSEW around the center
_waypos1 = [_xpos, _ypos+20, 0];
_waypos2 = [_xpos+20, _ypos, 0];
_waypos3 = [_xpos, _ypos-20, 0];
_waypos4 = [_xpos-20, _ypos, 0];

_wp1 = _unitGroup addWaypoint [[((_positionp select 0) + _cor_y),((_positionp select 1) + _cor_x),50],0];
_wp1   setWaypointType "MOVE";


_wp2 = _unitGroup addWaypoint [_waypos2, _waypointsrange];
_wp2 setWaypointType "MOVE";
_wp3 = _unitGroup addWaypoint [_waypos3, _waypointsrange];
_wp3 setWaypointType "MOVE";
_wp4 = _unitGroup addWaypoint [_waypos4, _waypointsrange];
_wp4 setWaypointType "MOVE";
_waypointend = _unitGroup addWaypoint [[_xpos,_ypos, 0], _waypointsrange];
_waypointend setWaypointType "CYCLE";





_positionp = [_rand_player] call FNC_GetPos;
_positiondrop = [(_positionp select 0) + 50, (_positionp select 1) + 50,25];
_box = _boxtype createVehicle _positiondrop;
//_box setVariable ["Mission",1,true];
//_box setVariable ["permaLoot",1,true];
//_box setVariable ["ObjectID",""];
clearweaponcargoglobal _box;
clearmagazinecargoglobal _box;

_chute = createVehicle ["ParachuteMediumEast", getPos _box, [], 0, "FLY"];
_box attachTo [_chute, [0,0,3]];
_smoke = "SmokeShellYellow" createVehicle (getPos _box);
_smoke attachTo [_box, [0,0,0]];

//add loot
{
_box addWeaponCargoGlobal [_x,1];
} forEach (_loot select 0);
{
_box addMagazineCargoGlobal [_x,1];
} forEach (_loot select 1);

sleep 60;

deleteVehicle _carrier;
deleteVehicle _pilot;


sleep 300;

deleteVehicle _box;
deleteVehicle _chute;


};