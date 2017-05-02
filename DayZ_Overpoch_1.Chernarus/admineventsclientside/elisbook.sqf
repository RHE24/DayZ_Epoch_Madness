//eli`s book

private ["_hasitem","_LastUsedTime","_Time"];

_hasitem = "ItemBookBible" in magazines player;
_LastUsedTime = 1200;
_Time = time - lastuse;

 

if(_Time < _LastUsedTime) exitWith {
    cutText [format["you already give the Eli´s Book wait %1",(round(_Time - _LastUsedTime))], "PLAIN DOWN"];
};

if (!_hasitem) exitWith {
systemChat("You dont Have the Eli´s Book");
};

if (_hasitem) then {
systemChat("Tnks for give me Eli´s Book survivor");
lastuse = time;
player playActionNow "PutDown";
player removeMagazine "ItemBookBible";
sleep 1;
systemChat("Take a look on your inventory");
player addMagazine "ItemBriefcase100oz";
player addMagazine "ItemBriefcase100oz";
player addMagazine "ItemBriefcase100oz";
player addMagazine "ItemBriefcase100oz";
};
