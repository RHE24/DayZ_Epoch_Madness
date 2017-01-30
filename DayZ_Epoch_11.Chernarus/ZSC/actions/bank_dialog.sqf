if(DZE_ActionInProgress) exitWith { cutText [(localize "str_epoch_player_10") , "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

private ["_dialog","_playersNearStorage"];
ZSC_CurrentStorage = _this select 3;
_playersNearStorage = {isPlayer _x} count (ZSC_CurrentStorage nearEntities ["CAManBase", 6]);

if(_playersNearStorage == 1) then {
  _dialog = createDialog "BankDialog";
  call BankDialogUpdateAmounts;
} 
else 
{
  cutText [format["Other player is too close to the storage."] , "PLAIN DOWN"];
};

DZE_ActionInProgress = false;
