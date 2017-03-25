

private ["_countsurvived"];
_countsurvived = dayz_Survived;

[format["<t size='0.75' color='#FFCC00'>>%2 You have survived %1 days</t>",_countsurvived,(name player)],0,0,2,2] spawn BIS_fnc_dynamicText;
dayz_actionInProgress = false;