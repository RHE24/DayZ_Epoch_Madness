private ["_gun","_ammo","_HEammo","_gear","_gunOne","_gunTwo","_player"];
_handGuns = ["UZI_SD_EP1","G17_FL_DZ","Revolver_DZ","revolver_gold_EP1","PDW_DZ","Sa61_EP1","M9_DZ","M9_SD_DZ","M1911_DZ","Makarov_DZ","Makarov_SD_DZ"];
_gun = _this select 0;
_ammo = _this select 1;
_HEammo = _this select 2;
_player = player;

// Get player's weapons
_gunOne = (weapons _player) select 0;
_gunTwo = (weapons _player) select 1;

// Remove the correct player weapon
if(_gun in _handGuns) then {
	if(!isNil _gunOne && _gunOne in _handGuns) then {_player removeWeapon _gunOne;} else {if(!isNil _gunTwo) then {_player removeWeapon _gunTwo;};};
} else {
	if(!isNil _gunTwo && _gunOne in _handGuns) then {_player removeWeapon _gunTwo;} else {if(!isNil _gunOne) then {_player removeWeapon _gunOne;};};
};

// Add Items
_player addMagazine _ammo;
_player addMagazine _ammo;
_player addWeapon _gun;
_player selectWeapon _gun;
if(!(isNil _HEammo)) then {
	_player addMagazine _HEammo;
};