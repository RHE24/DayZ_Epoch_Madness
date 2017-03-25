private ["_inventory","_hashatchet","_hasitems","_playerPos","_nearRestr","_removed"];

_inventory = items player;
_hashatchet = "ItemMatchbox" in _inventory;
_hasitems = "ItemStone" in magazines player;
_playerPos = getPosATL player;
_nearRestr = count nearestObjects [_playerPos, ["Stove"], 5] > 0;

if !(_nearRestr) exitWith {
cutText [format["Needs a portable Cley Kiln less than 5mts"], "PLAIN DOWN"];  
dayz_actionInProgress = false;
	};
	
if !(_hashatchet) exitWith {
	cutText [format["Must be equiped with 1x Matchbox in your toolbet."], "PLAIN DOWN"];
	dayz_actionInProgress = false;
};

if !(_hasitems) exitWith {
	cutText [format["Needs 1xItemStonein  your inventory."], "PLAIN DOWN"];
	dayz_actionInProgress = false;
};

if (_nearRestr && _hashatchet && _hasitems) then {
player playActionNow "Medic";
[player,"repair",0,false,10] call dayz_zombieSpeak;
[player,10,true,(getPosATL player)] spawn player_alertZombies;
player removeMagazine "ItemStone";	
sleep 5;


player addMagazine "equip_brick";





sleep 1;
titleText ["Craft 1xequip_brick!! 1xItemStone was removed!", "PLAIN DOWN"];titleFadeOut 5;
};

dayz_actionInProgress = false;