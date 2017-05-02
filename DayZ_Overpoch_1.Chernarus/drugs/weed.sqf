 private ["_spawnRadius","_spawnMarker","_position","_positionarray","_mainpos","_markerRadius","_marker","_plant01",
"_plant02","_plant03","_plant04","_plant05","_plant06","_plant07","_spawnChance","_spawnRoll"];

_despawn_timer = 500;
_spawnRadius = 5000;
_spawnMarker = 'center';
_position = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;
_positionarray = [
[(_position select 0) - 14.5, (_position select 1) - 21,-0.012],
[(_position select 0) - 20, (_position select 1) - 20,-0.012],
[(_position select 0) + 25, (_position select 1) + 5,-0.012],
[(_position select 0) + 16, (_position select 1) - 14,-0.012],
[(_position select 0) + 49, (_position select 1) + 17.5,-0.012],
[(_position select 0) + 38.5, (_position select 1) - 16,-0.012]
];
_mainpos = _positionarray call BIS_fnc_selectRandom;

_markerRadius = 100; // Radius the camp can spawn and used for the marker

_marker_on_radius = createMarker ["bodycorpse",_position];
_marker_on_radius setMarkerShape "ELLIPSE";
_marker_on_radius setMarkerType "Cricle01";
_marker_on_radius setMarkerColor "ColorBlack";
_marker_on_radius setMarkerAlpha 0.8;
_marker_on_radius setMarkerBrush "Solid";
_marker_on_radius setMarkerSize [(_markerRadius + 50), (_markerRadius + 50)];

_marker = createMarker ["WeedFarm", _mainpos];
_marker setMarkerText "WeedFarm";
_marker setMarkerType "mil_circle";
_marker setMarkerColor "ColorGreen";
_marker setMarkerBrush "Solid";
_marker setMarkerSize [0.1, 0.1];

 

_plant01 = createVehicle ["Fiberplant", [(_position select 0) + 1, (_position select 1) - 13,-0.12],[], 0, "CAN_COLLIDE"];
_plant01 setDir 0;
_plant01 setVectorUp surfaceNormal position _plant01;
_plant02 = createVehicle ["Fiberplant", [(_position select 0) - 13, (_position select 1) - 3,-0.12],[], 0, "CAN_COLLIDE"];
_plant02 setDir 0;
_plant02 setVectorUp surfaceNormal position _plant02;
_plant03 = createVehicle ["Fiberplant", [(_position select 0) + 14, (_position select 1) - 8,-0.12],[], 0, "CAN_COLLIDE"];
_plant03 setDir 0;
_plant03 setVectorUp surfaceNormal position _plant03;
_plant04 = createVehicle ["Fiberplant", [(_position select 0) - 1, (_position select 1) - 11,-0.12],[], 0, "CAN_COLLIDE"];
_plant04 setDir 0;
_plant04 setVectorUp surfaceNormal position _plant04;
_plant05 = createVehicle ["Fiberplant", [(_position select 0) - 10, (_position select 1) - 5,-0.12],[], 0, "CAN_COLLIDE"];
_plant05 setDir 0;
_plant05 setVectorUp surfaceNormal position _plant05;
_plant06 = createVehicle ["Fiberplant", [(_position select 0) - 11, (_position select 1) - 7,-0.12],[], 0, "CAN_COLLIDE"];
_plant06 setDir 0;
_plant06 setVectorUp surfaceNormal position _plant06;
_plant07 = createVehicle ["Fiberplant", [(_position select 0) - 20, (_position select 1) - 9,-0.12],[], 0, "CAN_COLLIDE"];
_plant07 setDir 0;
_plant07 setVectorUp surfaceNormal position _plant07;

 

 


[nil,nil,rTitleText,"THERS A WEED FARM! COLLECT THE DRUGS","PLAIN",7.5] call RE;    

 


sleep _despawn_timer;

deleteVehicle _plant01;
deleteVehicle _plant02;
deleteVehicle _plant03;
deleteVehicle _plant04;
deleteVehicle _plant05;
deleteVehicle _plant06;
deleteVehicle _plant07;
deleteMarker _marker_on_radius;
deleteMarker _marker; 