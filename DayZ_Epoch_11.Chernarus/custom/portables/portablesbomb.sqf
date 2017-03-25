private ["_position","_earlyObj","_lastObj"];



//DEFINES///

_position = getPosATL player;


//#############################CREATE THE BOMB FUNCTION TO EXPLODE############################//
bombexp = {
_bomb = ["HelicopterExploSmall","HelicopterExploBig","Bo_GBU12_LGB"] call BIS_fnc_selectRandom; 
_dabomb = objNull;
if (true) then
{
_this = createVehicle [_bomb,_earlyObj, [], 2, "CAN_COLLIDE"];
_dabomb = _this;
};
};
//############################EXIT FROM HERE#################################################//





//SPAWN OBJET//

player playActionNow "Medic";
removeBackpack player; 

_earlyObj = "MAP_snowman" createVehicle (_position);
_earlyObj setVariable ["ObjectID", "1", true];
_earlyObj setVariable ["ObjectUID", "1", true];


systemChat("be carefull this gonna explode"); 
/////COUNT//////////////
_countdown = true;
_maxSeconds = 25;
_seconds = 0;






while {true} do {
if(_countdown) then {
    systemChat format["COUNTDOWN: %1",_maxSeconds - _seconds]; //countdown in chat
  };


  
////EXIT FROM LOOP AREA//// 
if (_seconds >= _maxSeconds) exitWith {
    call bombexp;
	deleteVehicle _earlyObj;
	};
/////////////////////



_seconds = _seconds + 1;
  sleep 1;

};









