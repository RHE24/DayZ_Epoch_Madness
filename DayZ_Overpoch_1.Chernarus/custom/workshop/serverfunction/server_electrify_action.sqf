electrify = true;
 
while {electrify} do {

_changetogetinconscious = round(random 10);

if (_changetogetinconscious < 4) then {
    _nul = [objNull, player, rSAY, "electric"] call RE;
	titleText ["You were electrocuted by the fence!!!", "PLAIN DOWN"];titleFadeOut 5;
    r_player_unconscious = true; 
	r_player_blood = r_player_blood - 10;
	}else{
	_nul = [objNull, player, rSAY, "electric"] call RE;
    titleText ["you were electrocuted by the fence!!!", "WHITE IN"];
	};
 sleep 5;
  

    };
	