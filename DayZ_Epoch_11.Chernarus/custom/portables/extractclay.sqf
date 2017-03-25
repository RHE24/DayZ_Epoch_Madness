private ["_Extracting"];
_Extracting = true;

while {_Extracting} do {
player removeAction s_player_clay;
s_player_clay = -1;
systemChat("LOOKING FOR SOME CLAY");

player playActionNow "Medic";
sleep 5;
private ["_randomNumbers"];



_randomNumbers = floor(random 100);

if (_randomNumbers <= 30) exitwith { 
_Extracting = false;
systemChat("thers no clay here"); 
};
if (_randomNumbers <= 50 && _randomNumbers > 31) exitwith { 
_Extracting = false;
systemChat("Try more deep thers no clay here");
};
if (_randomNumbers <= 70 && _randomNumbers > 51) exitwith { 
_Extracting = false;
systemChat("you find some clay ITEMSTONE use it in portable Clay Kiln to craft bricks");
player addMagazine "ItemStone";
};
if (_randomNumbers <= 90 && _randomNumbers > 81) exitwith {
 _Extracting = false;
systemChat("its not clay...you find some hemp seeds");
player addMagazine "ItemHempSeed";
};
if (_randomNumbers <= 100 && _randomNumbers > 91) exitwith {
_Extracting = false;
systemChat("its not clay ...you find some leaves");
player addMagazine "equip_comfreyleafs";
};

};
