private ["_spawnRadius","_spawnMarker","_position","_positionarray","_mainpos","_delbox","_markerRadius","_marker_on_radius","_precisemarker_marker",
"_cratetype","_box","_missiontimeout","_playerPresent","_playerPresent2","_missiontimeout2","_starttime","_starttime2","_currenttime","_currenttime2","_deltime",
"_spawnRadius2","_spawnMarker2","_position2","_positionarray2","_mainpos2","_markerRadius2","_marker_on_radius2","_precisemarker_marker2","_priesttype","_priest",
"_objectchurch","_cleanmission2","_deltime2"];





//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////CONFIG THE EVENT SPAWN/////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//

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


//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////////CONFIG MARKERS///////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////one of them: _precisemarker and _markeronradius must be true;////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//
_markerRadius = 350; // Radius  can spawn and used for the marker




_marker_on_radius = createMarker ["craterad",_position];
_marker_on_radius setMarkerShape "ELLIPSE";
_marker_on_radius setMarkerType "Cricle01";
_marker_on_radius setMarkerColor "ColorGreen";
_marker_on_radius setMarkerAlpha 0.8;
_marker_on_radius setMarkerBrush "DiagGrid";
_marker_on_radius setMarkerSize [(_markerRadius + 50), (_markerRadius + 50)];



_precisemarker_marker = createMarker ["HolyBible",_mainpos];
_precisemarker_marker setMarkerText "The Eli´s Book";
_precisemarker_marker setMarkerShape "ICON";
_precisemarker_marker setMarkerType "Strongpoint";
_precisemarker_marker setMarkerColor "ColorBlack";
_precisemarker_marker setMarkerAlpha 1;
_precisemarker_marker setMarkerSize [0.5,0.5];

//------------------------------------------------------------------------------------------------------------------------------------------------------------//
/////////////////////////////////////////////CONFIG MARKERS ENDS///////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------------------------------------------------------------------------------------//

//////////////////////////////////////////////////////////SPAWN CRATE WITH BIBLE
_cratetype = "USVehicleBox";
_box = createVehicle [_cratetype,_mainpos,[], 0, "NONE"];
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
//_box setVariable ["permaLoot",true];
_box addMagazineCargoGlobal ["ItemBookBible", 1];

////////////////////////////////////////////////////////////////

[nil,nil,rTitleText,"Get the Eli´s Book! Check your map!", "PLAIN",10] call RE;



////////INIT OF SECOND FASE
waitUntil{{isPlayer _x && _x distance _box < 10  } count playableunits > 0};

[nil,nil,rTitleText,"Survivors Have the Eli´s Book! Check your map to see where carry it Have 400 seconds to find the priest", "PLAIN",10] call RE;



deleteMarker _precisemarker_marker;
deleteMarker _marker_on_radius;




_spawnRadius2 = 5000;
_spawnMarker2 = 'center';
_position2 = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;
_positionarray2 = [
[(_position2 select 0) - 14.5, (_position2 select 1) - 21,-0.012],
[(_position2 select 0) - 20, (_position2 select 1) - 20,-0.012],
[(_position2 select 0) + 25, (_position2 select 1) + 5,-0.012],
[(_position2 select 0) + 16, (_position2 select 1) - 14,-0.012],
[(_position2 select 0) + 49, (_position2 select 1) + 17.5,-0.012],
[(_position2 select 0) + 38.5, (_position2 select 1) - 16,-0.012]
];
_mainpos2 = _positionarray2 call BIS_fnc_selectRandom;
_markerRadius2 = 150; // Radius  can spawn and used for the marker


_marker_on_radius2 = createMarker ["craterad2",_position2];
_marker_on_radius2 setMarkerShape "ELLIPSE";
_marker_on_radius2 setMarkerType "Cricle01";
_marker_on_radius2 setMarkerColor "ColorBlack";
_marker_on_radius2 setMarkerAlpha 0.8;
_marker_on_radius2 setMarkerBrush "DiagGrid";
_marker_on_radius2 setMarkerSize [(_markerRadius2 + 50), (_markerRadius2 + 50)];



_precisemarker_marker2 = createMarker ["HolyBible2",_mainpos2];
_precisemarker_marker2 setMarkerText "Carry The Eli´s Book";
_precisemarker_marker2 setMarkerShape "ICON";
_precisemarker_marker2 setMarkerType "Strongpoint";
_precisemarker_marker2 setMarkerColor "ColorGreen";
_precisemarker_marker2 setMarkerAlpha 1;
_precisemarker_marker2 setMarkerSize [0.5,0.5];



//define side for ai
_this = createCenter civilian;

_civil = _this;
_civilgroup = createGroup _civil;
//
_priesttype = "RU_Priest";
//spawnai
_priest = objNull;
_priest = _civilgroup createUnit [_priesttype,_mainpos2,[],0,"CAN_COLLIDE"];	
_priest addEventHandler ["handleDamage", {false}];

_objectchurch = createVehicle ["MAP_kostel_trosky", [(_position2 select 0) + 1, (_position2 select 1) - 13,-0.12],[], 0, "CAN_COLLIDE"];
_objectchurch setDir 0;
_objectchurch setVectorUp surfaceNormal position _objectchurch;

_deltime2 = 400;
sleep _deltime2;




[nil,nil,rTitleText,"The priest has gone", "PLAIN",10] call RE;


//start to remove all



deleteMarker _precisemarker_marker2;
deleteMarker _marker_on_radius2;
deleteVehicle _priest ;
deleteVehicle _objectchurch; 
deleteVehicle _box;


