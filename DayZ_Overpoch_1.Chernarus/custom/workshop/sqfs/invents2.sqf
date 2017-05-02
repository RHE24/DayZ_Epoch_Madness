private ["_inventory","_hastool","_brokeChance","_hasEtool","_hasCrow"];
_inventory = items player;
_hastool = "ItemToolbox" in _inventory;
_hasEtool = "ItemEtool" in _inventory;
_hasCrow= "ItemCrowbar" in _inventory;
_brokeChance = round(random 10);


if !(_hastool) exitWith {
	cutText [format["You need to have a toolbox on your inventory."], "PLAIN DOWN"];
};

if !(_hasEtool) exitWith {
	cutText [format["You need to have a ItemEtool on your toolbet."], "PLAIN DOWN"];
};

if !(_hasCrow) exitWith {
	cutText [format["You need to have a Crowbar on your toolbet."], "PLAIN DOWN"];
};

if (_hastool && _hasEtool && _hasCrow) then {
titleText ["You're conjuring up your next invention!", "PLAIN DOWN"];titleFadeOut 3;
player playActionNow "Medic";
if (_brokeChance < 2) exitWith {

	player removeWeapon _weaponremove;
		cutText [format["%1, your tool broke!",name player], "PLAIN DOWN"];
	};
titleText ["You're a Wizard, Harry! Check your inventory!", "PLAIN DOWN"];titleFadeOut 5;
};