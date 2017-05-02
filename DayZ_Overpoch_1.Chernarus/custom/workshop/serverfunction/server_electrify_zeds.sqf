  // Electrify Zed near the fence

while {true} do {
 sleep 1;

  fence_area = 6;
  _playerPos = getPos player;
  _nearFence = nearestObject [_playerPos, "MAP_plot_green_draty"];
  if (!isNull _nearFence) then {
    _pos2 = getPos _nearFence;
    _findZeds = _pos2 nearEntities ["zZombie_Base", fence_area];
    _contar = count _findZeds;
    for "_i" from 0 to (_contar -1) do
    {
      _zeds = _findZeds select _i;
     _zeds setDamage 1; 
	 sleep 4;
     deletevehicle _zeds; 
    };
  };
};