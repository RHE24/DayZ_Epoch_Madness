
 //bombcrate by juandayz with base on rubbletown and 4 sidemissions


private ["_markerRadius","_debug","_loot_box","_loot_lists","_loot","_loot2","_loot_amount","_wait_time","_start_time","_spawnRadius","_spawnMarker","_position",
"_event_marker","_loot_pos","_debug_marker","_box","_timer","_bomb","_dabomb","_this","_positionobj","_mark","_playernear"]; 
 

_markerRadius = 250; // Radius the loot can spawn and used for the marker
_debug = true; // Puts a marker exactly were the loot spawns
 
_loot_box = "USVehicleBox";
_loot_lists = [
[
["M9SD","FN_FAL","M4A3_CCO_EP1","AKS_74_kobra","Sa58V_RCO_EP1","ItemEtool","ItemCrowbar","ItemKnife","ItemSledge","ItemCompass","Binocular","Binocular_Vector","NVGoggles","ItemGPS"],
["ItemBriefcase100oz","150Rnd_127x107_DSHKM","20Rnd_762x51_FNFAL","20Rnd_762x51_FNFAL","20Rnd_762x51_FNFAL","30Rnd_762x39_SA58","30Rnd_762x39_SA58","30Rnd_762x39_SA58","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_545x39_AK","30Rnd_545x39_AK","30Rnd_545x39_AK","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD"]
],
[
["M4A1_HWS_GL_SD_Camo","M16A2GL","M16A4","M16A4_GL","M16A4_ACG_GL","M16A4_ACG","M4A1","M4A1_HWS_GL","M4A1_HWS_GL_camo","M4A1_HWS_GL_SD_Camo","M4A1_RCO_GL","M4A1_Aim","M4A1_Aim_camo","M4A1_AIM_SD_camo"],
["ItemBriefcase100oz","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor"]
],
[
["ItemToolbox","M4A1_HWS_GL_SD_Camo","M16A2GL","M16A4","M16A4_GL","M16A4_ACG_GL","M16A4_ACG","M4A1","M4A1_HWS_GL","M4A1_HWS_GL_camo","M4A1_HWS_GL_SD_Camo","M4A1_RCO_GL","M4A1_Aim","M4A1_Aim_camo","M4A1_AIM_SD_camo"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor"]
],
[
["ChainSaw"],
["ItemBriefcase100oz","ItemBriefcase100oz","ItemCorrugated","ItemCorrugated","ItemCorrugated","ItemCorrugated","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemPole","ItemComboLock","ItemGenerator"]
],
[
["G36C_camo","M240_DZ","RPK_74"],
["ItemBriefcase100oz","100Rnd_762x51_M240","100Rnd_762x51_M240","200Rnd_556x45_M249","100Rnd_556x45_BetaCMag","100Rnd_762x51_M240","200Rnd_556x45_M249","100Rnd_556x45_BetaCMag","100Rnd_762x51_M240","200Rnd_556x45_M249","100Rnd_556x45_BetaCMag","100Rnd_762x51_M240","200Rnd_556x45_M249","100Rnd_556x45_BetaCMag","100Rnd_762x51_M240","200Rnd_556x45_M249","100Rnd_762x51_M240","100Rnd_762x51_M240","200Rnd_556x45_M249","2000Rnd_762x51_M134","2000Rnd_762x51_M134","ItemAVE","ItemLRK","ItemTNK","ItemARM","ItemORP","FishCookedSeaBass","FishCookedSeaBass","FishCookedSeaBass","FishCookedSeaBass","FishCookedSeaBass","FishCookedSeaBass","FishCookedSeaBass","FishCookedSeaBass","FishCookedSeaBass","FishCookedSeaBass"]
],
[
["M4A1_HWS_GL_SD_Camo","M16A2GL","M16A4","M16A4_GL","M16A4_ACG_GL","M16A4_ACG","M4A1","M4A1_HWS_GL","M4A1_HWS_GL_camo","M4A1_HWS_GL_SD_Camo","M4A1_RCO_GL","M4A1_Aim","M4A1_Aim_camo","M4A1_AIM_SD_camo"],
["ItemBriefcase100oz","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","FoodCanFrankBeans","FoodCanFrankBeans","FoodCanBakedBeans","FoodMRE","HandGrenade_east","2000Rnd_762x51_M134","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks"]
],
[
["VSS_vintorez","Saiga12K","M8_compact"],
["ItemBriefcase100oz","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","HandGrenade_east","HandGrenade_east","FoodCanSardines","FoodMRE","FoodPistachio","FoodNutmix","FoodMRE","FoodPistachio","FoodNutmix","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks"]
]
];
_loot = _loot_lists call BIS_fnc_selectRandom;
_loot2 = _loot_lists call BIS_fnc_selectRandom;

_loot_amount = 75;
_wait_time = 600;
 
// Dont mess with theses unless u know what yours doing
_start_time = time;
_spawnRadius = 5000;
_spawnMarker = 'center';
 

 
// Random location
_position = [getMarkerPos _spawnMarker,0,_spawnRadius,10,0,2000,0] call BIS_fnc_findSafePos;
 


_event_marker = createMarker [ format ["loot_event_marker_%1", _start_time], _position];
_event_marker setMarkerShape "ELLIPSE";
_event_marker setMarkerType "Cricle01";
_event_marker setMarkerColor "ColorBlack";
_event_marker setMarkerAlpha 0.8;
_event_marker setMarkerBrush "DiagGrid";
_event_marker setMarkerSize [(_markerRadius + 50), (_markerRadius + 50)];
 
_loot_pos = [_position,0,(_markerRadius - 100),10,0,2000,0] call BIS_fnc_findSafePos;
 
if (_debug) then {
_debug_marker = createMarker [ format ["loot_event_debug_marker_%1", _start_time], _loot_pos];
_debug_marker setMarkerText "BOMBCRATE";
_debug_marker setMarkerShape "ICON";
_debug_marker setMarkerType "SupplyVehicle";
_debug_marker setMarkerColor "ColorRed";
_debug_marker setMarkerAlpha 1;
_debug_marker setMarkerSize [1,1];
};
 

 
// Create ammo box
_box = createVehicle [_loot_box,_loot_pos,[], 0, "NONE"];
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
//_box setVariable ["permaLoot",true];
 

 
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
[nil,nil,rTitleText,"THERS A BOMB CRATE!, Check your Map for the Location!", "PLAIN",10] call RE;


waitUntil{{isPlayer _x && _x distance _box < 10  } count playableunits > 0};
[nil,nil,rTitleText,"BOMBCRATE IS ACTIVE NOW -25 SECONDS BEFORE EXPLODE!", "PLAIN",10] call RE;
_timer = 25;//change me if u want more o less time before bomb explode

 //#############################CREATE THE BOMB FUNCTION TO EXPLODE############################//
bombexp = {

_bomb = ["HelicopterExploSmall","HelicopterExploBig","Bo_GBU12_LGB"] call BIS_fnc_selectRandom;
_dabomb = objNull;

if (true) then
{
	_this = createVehicle [_bomb,_positionobj, [], 2, "CAN_COLLIDE"];
	_dabomb = _this;
};




};
//############################EXIT FROM HERE#################################################//


sleep 1;

 


_mark = "RoadFlare" createVehicle getPosATL _box;
_mark attachTo [_box, [0,0,-1]];
_positionobj = getPosATL _box;    

 

sleep _timer;
_playernear = false;

{
if ((isPlayer _x) && (_x distance _box < 15)) then {																																														
_x setDamage 1;
};
} count playableUnits;	


sleep 1;
call bombexp;

 

 
// Clean up

deleteVehicle _mark;
deleteVehicle _box;
deleteMarker _event_marker;
if (_debug) then {
deleteMarker _debug_marker;
}; 