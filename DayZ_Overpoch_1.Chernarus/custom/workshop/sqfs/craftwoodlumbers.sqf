private ["_inventory","_hasknife","_hasitems","_playerPos","_nearRestr","_removed"];

_inventory = items player;
_hasknife = "ItemKnife" in _inventory;
_hasitems = [["PartWoodPile",12]] call player_checkItems;
_playerPos = getPosATL player;
_nearRestr = count nearestObjects [_playerPos, ["MAP_P_Stavebni_kozy"], 15] > 0;

if !(_nearRestr) exitWith {
cutText [format["You need to be near an Advanced Work Bench"], "PLAIN DOWN"]; 
 dayz_actionInProgress = false;
	};
	
if !(_hasknife) exitWith {
	cutText [format["You need to have a knife on your toolbet."], "PLAIN DOWN"];
	dayz_actionInProgress = false;
};

if !(_hasitems) exitWith {
	cutText [format["You need 12xWoodPiles in your inventory."], "PLAIN DOWN"];
	dayz_actionInProgress = false;
};

if (_nearRestr && _hasknife && _hasitems) then {
player playActionNow "Medic";
[player,"repair",0,false,10] call dayz_zombieSpeak;
[player,10,true,(getPosATL player)] spawn player_alertZombies;
sleep 5;
_removed = [["PartWoodPile",12]] call player_removeItems;	
player addMagazine "PartWoodLumber";
player addMagazine "PartWoodLumber";
player addMagazine "PartWoodLumber";
player addMagazine "PartWoodLumber";
player addMagazine "PartWoodLumber";
player addMagazine "PartWoodLumber";
player addMagazine "PartWoodLumber";
player addMagazine "PartWoodLumber";
player addMagazine "PartWoodLumber";
player addMagazine "PartWoodLumber";
sleep 1;
titleText ["Crafted 10xLumber!! 12xWoodpiles removed!", "PLAIN DOWN"];titleFadeOut 5;
};