private ["_inventory","_hashatchet","_hasitems","_playerPos","_nearRestr","_removed","_failChance"];

_inventory = items player;
_hashatchet = "ItemMatchbox" in _inventory;
_hasitems = [["ItemStone",1],["ItemSandbag",1]] call player_checkItems;
_playerPos = getPosATL player;
_nearRestr = count nearestObjects [_playerPos, ["Stove"], 5] > 0;
_failChance = round(random 10);


if !(_nearRestr) exitWith {
cutText [format["Needs a portable Cley Kiln less than 5mts"], "PLAIN DOWN"];  
dayz_actionInProgress = false;
	};
	
if !(_hashatchet) exitWith {
	cutText [format["Must be equiped with 1x Matchbox in your toolbet."], "PLAIN DOWN"];
	dayz_actionInProgress = false;
};

if !(_hasitems) exitWith {
	cutText [format["Needs 1xItemStone + 1xItemSandbag in  your inventory."], "PLAIN DOWN"];
	dayz_actionInProgress = false;
};

if (_nearRestr && _hashatchet && _hasitems) then {
player playActionNow "Medic";
[player,"repair",0,false,10] call dayz_zombieSpeak;
[player,10,true,(getPosATL player)] spawn player_alertZombies;

if (_failChance < 2) then {
	_removed = [["ItemStone",1],["ItemSandbag",1]] call player_removeItems;
		cutText [format["%1, broken clay you fail",name player], "PLAIN DOWN"];
	};

sleep 5;
_removed = [["ItemStone",1],["ItemSandbag",1]] call player_removeItems;	
player addMagazine "MortarBucket";





sleep 1;
titleText ["Craft 1xMortarBucket!! 1xItemStone + 1xItemSandbag was removed!", "PLAIN DOWN"];titleFadeOut 5;
};

dayz_actionInProgress = false;