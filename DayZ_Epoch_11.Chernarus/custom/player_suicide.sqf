//-------------------------Choc's-Suicide----------------------------//
private ["_titleColour","_titleCancelColour","_CancelTimeout","_ctPlyrPos","_done","_ctTL","_ctExitW","_warning","_display","_ctWMsg"];
//--------------------------Config------------------------------//
_titleColour = [(153/255),(204/255),0,1];		
_titleCancelColour  = [1,(68/255),(68/255),1];
_CancelTimeout = 05;
//-----------------------------------------------------//
_ctExitW = "nil"; 
_done     = false;
_ctPlyrPos = position player;
_ctTL = _CancelTimeout;
_ctWMsg  = "You will commit suicide in %1 seconds. Move to cancel!";
disableSerialization;
_display = findDisplay 106;
if(!(isNull _display)) then {_display closeDisplay 0;	};
if(_ctTL > 0) then {
    hint format[_ctWMsg,_ctTL];
    taskHint [format[_ctWMsg,_ctTL], _titleCancelColour, "taskNew"];	};
while{!_done} do {
    if(_ctTL > 0) then {
        cutText [format[_ctWMsg,_ctTL], "PLAIN DOWN"];
        sleep 1;
        _ctTL = _ctTL - 1;    };
    if((player distance _ctPlyrPos) > 1) exitWith {_ctExitW = "Suicide Cancelled!";    };	
    _done = _ctTL <= 0;	};
if (_ctExitW == "nil") then {_ctExitW = "Cowards Way Out!";
    taskHint[_ctExitW, _titleColour, "taskDone"];hint _ctExitW;
    cutText[_ctExitW,"PLAIN DOWN"];
    player playMove (["ActsPercMstpSnonWpstDnon_suicide1B","ActsPercMstpSnonWpstDnon_suicide2B"] call BIS_fnc_selectRandom);
    sleep 7.5;sleep 1;
	[player,'suicide'] spawn player_death;
} else {
    taskHint[_ctExitW, _titleCancelColour, "taskFailed"];
    cutText[_ctExitW,"PLAIN DOWN"];	};
//-------------------------Choc's-Suicide----------------------------//