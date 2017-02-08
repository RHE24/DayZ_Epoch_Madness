if (isnil "debuginit") then {debuginit = true;};

    if (debuginit) then
    {
        []spawn
        {
            private["_veh", "_idb", "_idb2"];
            _idb = -1;
            while {alive player} do
            {
                if (_idb == -1) then
                {
                    _idb = (vehicle player) addaction [("<t color=""#ff0000"">" + ("Toggle debug") +"</t>"),"custom\others\custom_monitor.sqf","",0,false,true,"",""];
                    _veh = vehicle player;
                };
                if (_veh != vehicle player) then
                {
                    _veh removeAction _idb;
                    _idb = -1;      
                };
                Sleep 2;
            };
        };
        debuginit = false;
    };
    waituntil {!alive player ; sleep 2;};
    debuginit = true;