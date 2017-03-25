private ["_inventory","_hashatchet","_hasitems","_playerPos","_nearRestr","_removed"];

_inventory = items player;
_hashatchet = "ItemHatchet" in _inventory;
_hasitems = [["PartWoodLumber",12]] call player_checkItems;
_playerPos = getPosATL player;
_nearRestr = count nearestObjects [_playerPos, ["MAP_AirCondition_A"], 5] > 0;

if !(_nearRestr) exitWith {
cutText [format["Needs a portable sawmill less than 5mts"], "PLAIN DOWN"];  
dayz_actionInProgress = false;
	};
	
if !(_hashatchet) exitWith {
	cutText [format["Must be equiped with 1x hatchet in your toolbet."], "PLAIN DOWN"];
	dayz_actionInProgress = false;
};

if !(_hasitems) exitWith {
	cutText [format["Needs 12xWoodLumbers in your inventory."], "PLAIN DOWN"];
	dayz_actionInProgress = false;
};

if (_nearRestr && _hashatchet && _hasitems) then {
player playActionNow "Medic";
[player,"repair",0,false,10] call dayz_zombieSpeak;
[player,10,true,(getPosATL player)] spawn player_alertZombies;
sleep 5;
_removed = [["PartWoodLumber",12]] call player_removeItems;	
player addMagazine "PartPlankPack";
player addMagazine "PartPlankPack";
player addMagazine "PartPlankPack";
player addMagazine "PartPlankPack";
player addMagazine "PartPlankPack";
player addMagazine "PartPlankPack";



sleep 1;
titleText ["Craft 6xLumberPacks!! 12xLumbers was removed!", "PLAIN DOWN"];titleFadeOut 5;
};

dayz_actionInProgress = false;