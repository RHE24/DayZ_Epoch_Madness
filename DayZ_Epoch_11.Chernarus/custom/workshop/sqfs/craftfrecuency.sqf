/* // Original Code
private ["_playerPos","_nearantena","_LastUsedTime","_Time","_rand"];

_playerPos = getPosATL player;
_nearantena = count nearestObjects [_playerPos, ["MAP_parabola_big"], 45] > 0;
_LastUsedTime = 100;
_Time = time - lastpack;


if(_Time < _LastUsedTime) exitWith { // If cooldown is not done then exit script
    cutText [format["wait %1 before you can pickup another frequency!",(round(_Time - _LastUsedTime))], "PLAIN DOWN"]; 
dayz_actionInProgress = false;	
};

if !(_nearantena) exitWith {
	cutText [format["You need to be near an antenna."], "PLAIN DOWN"];
dayz_actionInProgress = false;	
	};
	
 
if (_nearantena) then {
lastpack = time;
_rand = floor(random 200);
			
if (_rand <= 20) then {
										

[format["<t align='center' size='0.75' color='#ff5200'>%1 Successfully picked up a frequency.</t>",(name player)],0,0,2,2] spawn BIS_fnc_dynamicText;
       
private ["_display","_distance","_boxtype","_unit","_getPos","_position","_box","_chute","_smoke","_var","_textt","_tools","_items","_weapon","_weapon2","_weapon3","_weapon4","_weapon5","_weapon6","_giveWep","_possibleMags","_mag","_whichBuild","_crateItems","_text"];



disableSerialization;
_display = findDisplay 24;
(_display) closeDisplay 0;

_distance = 500;
_boxtype = "USVehicleBox_EP1";
_unit = player;
_getPos = getPos _unit;
_position = [_getPos select 0, _getPos select 1, 25];
_box = _boxtype createVehicle _position;
_box setVariable ["Mission",1,true];
_box setVariable ["permaLoot",1,true];
_box setVariable ["ObjectID",""];
_chute = createVehicle ["ParachuteMediumEast", getPos _box, [], 0, "FLY"];
_box attachTo [_chute, [0,0,3]];
_smoke = "SmokeShellBlue" createVehicle (getPos _box);
_smoke attachTo [_box, [0,0,0]];
_var = floor((random 2) + 1);



//display text to alert user
_textt = format ["\nPackage from air!",10];
titleText [_textt,"PLAIN DOWN"];

//define items

_tools = ["ItemEtool","ItemKnife","ItemFishingPole","ItemHatchet_DZE","ItemMatchbox_DZE","ItemCrowbar"];
_items = ["ItemSodaPepsi","ItemMorphine","FoodNutmix","ItemBloodbag","FoodCanSardines","ItemKiloHemp"];


//weapon lists
_weapon = "DMR";
_weapon2 = "AK_47_M";
_weapon3 = "BAF_L85A2_RIS_Holo";
_weapon4 = "RPK_74";
_weapon5 = "M14_EP1";
_weapon6 = "M249_DZ";
_giveWep = [_weapon,_weapon2,_weapon3,_weapon4,_weapon5,_weapon6] call BIS_fnc_selectRandom;
_possibleMags = getArray (configfile >> "cfgWeapons" >> _giveWep >> "magazines");
_mag = _possibleMags select 0;

//select arrays to use
_crateItems = [_items] call BIS_fnc_selectRandom;
uisleep 1;

clearweaponcargoglobal _box;
clearmagazinecargoglobal _box;

uisleep 1;

{_box addMagazineCargoGlobal [_x, _var];} forEach _crateItems;
{_box addWeaponCargoGlobal [_x, 1];} forEach _tools;
_box addMagazineCargoGlobal [_mag, _var];
_box addWeaponCargoGlobal [_giveWep, 1];

uisleep 1;
dayz_actionInProgress = false;
waitUntil {(player distance _box) > _distance};
deleteVehicle _box;
deleteVehicle _chute;


}; 

if (_rand <= 200 && _rand > 21) then {
cutText[format["Thers no frecuency for the moment try later"], "PLAIN DOWN"];
dayz_actionInProgress = false;				
			};
};

	dayz_actionInProgress = false;
*/
// New Code from Forum
private ["_playerPos","_nearantena","_LastUsedTime","_Time","_rand"];

_playerPos = getPosATL player;
_nearantena = count nearestObjects [_playerPos, ["MAP_parabola_big"], 45] > 0;
_LastUsedTime = 100;
_Time = time - lastpack;


if(_Time < _LastUsedTime) exitWith { // If cooldown is not done then exit script
    cutText [format["wait %1 before you can pickup another frequency!",(round(_Time - _LastUsedTime))], "PLAIN DOWN"]; 
dayz_actionInProgress = false;	
};

if !(_nearantena) exitWith {
	cutText [format["You need to be near an antenna."], "PLAIN DOWN"];
dayz_actionInProgress = false;	
	};
	
 
if (_nearantena) then {
lastpack = time;
_rand = floor(random 200);
			
if (_rand <= 20) then {
										

[format["<t align='center' size='0.75' color='#ff5200'>%1 Successfully picked up a frequency.</t>",(name player)],0,0,2,2] spawn BIS_fnc_dynamicText;
       
private ["_display","_distance","_boxtype","_unit","_getPos","_position","_box","_chute","_smoke","_var","_textt","_tools","_items","_weapon","_weapon2","_weapon3","_weapon4","_weapon5","_weapon6","_giveWep","_possibleMags","_mag","_whichBuild","_crateItems","_text"];



disableSerialization;
_display = findDisplay 24;
(_display) closeDisplay 0;

_distance = 500;
_boxtype = "USVehicleBox_EP1";
_unit = player;
_getPos = getPos _unit;
_position = [_getPos select 0, _getPos select 1, 25];
_box = _boxtype createVehicle _position;
_box setVariable ["Mission",1,true];
_box setVariable ["permaLoot",1,true];
_box setVariable ["ObjectID",""];
_chute = createVehicle ["ParachuteMediumEast", getPos _box, [], 0, "FLY"];
_box attachTo [_chute, [0,0,3]];
_smoke = "SmokeShellBlue" createVehicle (getPos _box);
_smoke attachTo [_box, [0,0,0]];
_var = floor((random 2) + 1);



//display text to alert user
_textt = format ["\nPackage from air!",10];
titleText [_textt,"PLAIN DOWN"];

//define items

_tools = ["ItemEtool","ItemKnife","ItemFishingPole","ItemHatchet_DZE","ItemMatchbox_DZE","ItemCrowbar"];
_items = ["ItemSodaPepsi","ItemMorphine","FoodNutmix","ItemBloodbag","FoodCanSardines","ItemKiloHemp"];


//weapon lists
_weapon = "DMR_DZ";
_weapon2 = "AK74_DZ";
_weapon3 = "L85_Holo_DZ";
_weapon4 = "RPK74_DZ";
_weapon5 = "M14_DZ";
_weapon6 = "M249_DZ";
_giveWep = [_weapon,_weapon2,_weapon3,_weapon4,_weapon5,_weapon6] call BIS_fnc_selectRandom;
_possibleMags = getArray (configfile >> "cfgWeapons" >> _giveWep >> "magazines");
_mag = _possibleMags select 0;

//select arrays to use
_crateItems = [_items] call BIS_fnc_selectRandom;
uisleep 1;

clearweaponcargoglobal _box;
clearmagazinecargoglobal _box;

uisleep 1;

{_box addMagazineCargoGlobal [_x, _var];} forEach _crateItems;
{_box addWeaponCargoGlobal [_x, 1];} forEach _tools;
_box addMagazineCargoGlobal [_mag, _var];
_box addWeaponCargoGlobal [_giveWep, 1];

uisleep 1;
dayz_actionInProgress = false;
waitUntil {(player distance _box) > _distance};
deleteVehicle _box;
deleteVehicle _chute;


}; 

if (_rand <= 200 && _rand > 21) then {
cutText[format["Thers no frecuency for the moment try later"], "PLAIN DOWN"];
dayz_actionInProgress = false;				
			};
};

	dayz_actionInProgress = false;	