private ["_inventory","_hastool","_hasitems","_removed","_randomNumbers"];

_inventory = items player;
_hastool = "ItemToolbox" in _inventory;
_hasitems = [["equip_scrapelectronics",3]] call player_checkItems;


	
if !(_hastool) exitWith {
	cutText [format["Must be equiped with 1x toolbox in your toolbet."], "PLAIN DOWN"];
	dayz_actionInProgress = false;
};

if !(_hasitems) exitWith {
	cutText [format["Needs 3xscrapelectronics in your inventory."], "PLAIN DOWN"];
	dayz_actionInProgress = false;
};

if (_hastool && _hasitems) then {
player playActionNow "Medic";
[player,"repair",0,false,10] call dayz_zombieSpeak;
[player,10,true,(getPosATL player)] spawn player_alertZombies;
sleep 5;
_removed = [["equip_scrapelectronics",3]] call player_removeItems;	

_randomNumbers = floor(random 50);

if (_randomNumbers <= 30) exitwith { 
systemChat("you get floppy wire"); 
player addMagazine "equip_floppywire";
player addMagazine "equip_floppywire";
player addMagazine "equip_floppywire";
};
if (_randomNumbers <= 50 && _randomNumbers > 31) exitwith { 
systemChat("you get aluminium");
player addMagazine "ItemAluminumBar10oz";
};
};