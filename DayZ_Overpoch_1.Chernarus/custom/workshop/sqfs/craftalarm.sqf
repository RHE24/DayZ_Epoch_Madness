private ["_playerPos","_nearRestr"];

_playerPos = getPosATL player;
_nearRestr = count nearestObjects [_playerPos, ["Loudspeakers_EP1"], 45] > 0;
 
if !(_nearRestr) exitWith {
cutText [format["You need a Loudspeaker within plot pole range"], "PLAIN DOWN"];  
dayz_actionInProgress = false;
	};
if (_nearRestr) then {
_nul = [objNull, player, rSAY, "alarm"] call RE;
};