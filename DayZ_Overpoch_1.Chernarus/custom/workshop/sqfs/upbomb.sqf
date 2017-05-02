//CRAFT A BOMB by juandayz 

private ["_inventory","_hastool","_hastool2","_hastool3","_hastool4","_hasitems","_playerPos","_nearRestr","_removed","_explotechances"];

_inventory = items player;
_hastool = "ItemToolbox" in _inventory;
_hastool2 = "ItemWatch" in _inventory;
_hastool3 = "ItemRadio" in _inventory;
_hastool4 = "ItemGPS" in _inventory;

_hasitems = [["HandGrenade_west",4],"ItemBriefcase_Base"] call player_checkItems;
_playerPos = getPosATL player;
_nearRestr = count nearestObjects [_playerPos, ["MAP_kulna"], 15] > 0;
_explotechances = round(random 10);


explode = {

position = getPosATL player;
_neartarget = count nearestObjects [_position, ["MAP_kulna"], 25] > 0;

_target = nearestObject [player, "MAP_kulna"];
_positionobj = getPosATL _target;

player playActionNow "PutDown";
_cursor_obj = nearestObject getPos cursorTarget;
_smoke = "SmokeShell" createVehicle (getPos _cursor_obj);
sleep 2;
titleText ["Unstable mix! RUN!!!EXPLOSION IMMINENT!!!", "PLAIN DOWN"];titleFadeOut 5;
//////////////////////
sleep 8;




_bomb = ["SH_125_HE","Bo_GBU12_LGB"] call BIS_fnc_selectRandom;	

_dabomb = objNull;
if (true) then
{
  _this = createVehicle [_bomb,_positionobj, [], 2, "CAN_COLLIDE"];
  _dabomb = _this;
};
sleep 2;
deleteVehicle _smoke;
deleteVehicle _dabomb;
};



if !(_nearRestr) exitWith {
cutText [format["You need to be near a Workshop"], "PLAIN DOWN"];
dayz_actionInProgress = false;
  
	};
	
if !(_hastool && _hastool2 && _hastool3 && _hastool4) exitWith {
	cutText [format["You need 1x toolbox + 1xWatch +1xRadio +1xGps."], "PLAIN DOWN"];
dayz_actionInProgress = false;	

};

if !(_hasitems) exitWith {
	cutText [format["You need 4xHandGrenade_west +1xEmptyBriefcase in your inventory."], "PLAIN DOWN"];
dayz_actionInProgress = false;

	
};

if (_nearRestr && _hastool && _hastool2 && _hastool3 && _hastool4  && _hasitems) then {

//////////////ASK FIRST TO PREVENT CRYING PLAYERS

bomb_answer=nil;

craftbomb = 
[
	["Crafting a bomb",true],
	["Sure? You might die in the process", [-1], "", -5, [["expression", ""]], "1", "0"],
	["", [-1], "", -5, 		[["expression", ""]], "1", "0"],
	["No", [2], "", -5, 	[["expression", "bomb_answer=false;"]], "1", "1"],
	["Yes", [3], "", -5, 	[["expression", "bomb_answer=true;"]], "1", "1"],
	["", [-1], "", -5, 		[["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, 	[["expression", "bomb_answer=false;"]], "1", "1"]
];
showCommandingMenu "#USER:craftbomb";

waitUntil {((!isNil 'bomb_answer')||(commandingMenu == ""))};

if (isNil 'bomb_answer') then {bomb_answer=false;};

if (bomb_answer) then {

//////////////////END ASK

//////////////////IF SOMETHING WENT WRONG
if (_explotechances < 6) exitWith {
_removed = [["HandGrenade_west",4],"ItemBriefcase_Base"] call player_removeItems;	
player removeWeapon "ItemGPS";
player removeWeapon "ItemWatch";
player removeWeapon "ItemRadio";
call explode;


};

////////////IF IS NOT SOMETHING WENT WRONG CRAFT THE BOMB

player playActionNow "Medic";
[player,"repair",0,false,10] call dayz_zombieSpeak;
[player,10,true,(getPosATL player)] spawn player_alertZombies;
sleep 5;

_removed = [["HandGrenade_west",4],"ItemBriefcase_Base"] call player_removeItems;	
player removeWeapon "ItemGPS";
player removeWeapon "ItemWatch";
player removeWeapon "ItemRadio";
player addMagazine "PipeBomb";

sleep 1;
titleText ["Well done! You now have home explosive in your inventory!!", "PLAIN DOWN"];titleFadeOut 5;
};
};
dayz_actionInProgress = false;