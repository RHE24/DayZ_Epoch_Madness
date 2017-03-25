private ["_inventory","_hastool","_hasitems","_removed"];

_inventory = items player;
_hastool = "ItemToolbox" in _inventory;
_hasitems = [["equip_floppywire",3]] call player_checkItems;


	
if !(_hastool) exitWith {
	cutText [format["Must be equiped with 1x toolbox in your toolbet."], "PLAIN DOWN"];
	dayz_actionInProgress = false;
};

if !(_hasitems) exitWith {
	cutText [format["Needs 3xFloppywire in your inventory."], "PLAIN DOWN"];
	dayz_actionInProgress = false;
};

if (_hastool && _hasitems) then {
player playActionNow "Medic";
[player,"repair",0,false,10] call dayz_zombieSpeak;
[player,10,true,(getPosATL player)] spawn player_alertZombies;
sleep 5;
_removed = [["equip_floppywire",3]] call player_removeItems;	
player addMagazine "ItemCopperBar10oz";

sleep 1;
titleText ["Craft 1xCopperBar10oz!! 3xfloppywire was removed!", "PLAIN DOWN"];titleFadeOut 5;
};