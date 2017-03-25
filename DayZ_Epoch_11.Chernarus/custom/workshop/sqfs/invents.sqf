private ["_inventory","_hastool","_hastool2","_hasEtool","_brokeChance","_itemsinvented","_weaponremove","_failchance","_LastUsedTime","_Time"];

_inventory = items player;
_hastool = "ItemToolbox" in _inventory;
_hastool2 = "ItemCrowbar" in _inventory;
_hasEtool = "ItemEtool" in _inventory;
_brokeChance = round(random 10);
_failchance = round(random 10);
_LastUsedTime = 360;
_Time = time - lastuse;

_itemsinvented = ["ItemFuelcan","ItemBagScrews","ItemTrapTripwireGrenade","equip_pvc_box","equip_scrapelectronics","equip_duct_tape","Item_Connector_I","Item_Connector_L","equip_rope","ItemFertilizer","ItemAntibacterialWipe","ItemHempPlant","ItemHempSeed","equip_herb_box","equip_string","equip_hobo_fishing_kit","equip_comfreyleafs","equip_hose","ItemPumpkinPlant","ItemPumpkinSeed","equip_woodensplint","equip_tin_powder"] call BIS_fnc_selectRandom;

_weaponremove = ["ItemToolbox","ItemCrowbar","ItemSledge"] call BIS_fnc_selectRandom;

if(_Time < _LastUsedTime) exitWith { 
    cutText [format["wait %1 seconds",(round(_Time - _LastUsedTime))], "PLAIN DOWN"]; 
};


if !(_hastool) exitWith {
	cutText [format["You need to have a toolbox on your inventory."], "PLAIN DOWN"];
};

if !(_hastool2) exitWith {
	cutText [format["You need to have a Crowbar on your toolbet."], "PLAIN DOWN"];
};

if !(_hasEtool) exitWith {
	cutText [format["You need to have an Etool on your toolbet."], "PLAIN DOWN"];
};

if (_hastool && _hastool2 && _hasEtool) then {
lastuse = time;
titleText ["You're conjuring up your next invention!", "PLAIN DOWN"];titleFadeOut 5;
player playActionNow "Medic";
[player,"repair",0,false,10] call dayz_zombieSpeak;
[player,10,true,(getPosATL player)] spawn player_alertZombies;

if (_brokeChance < 2) exitWith {

	player removeWeapon _weaponremove;
		cutText [format["%1, your tool broke!",name player], "PLAIN DOWN"];
	};
	
if (_failchance < 3) exitWith {
        cutText [format["You failed"], "PLAIN DOWN"];};
	
	
titleText ["You're a Wizard, Harry! Check your inventory!", "PLAIN DOWN"];titleFadeOut 3;



player addMagazine _itemsinvented;


};


