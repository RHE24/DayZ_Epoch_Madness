 you need a custom fn_selfactions.sqf and at very bottom paste:



 //Elis book
	private["_playerPos","_near"];

_playerPos = getPosATL player;
_near = count nearestObjects [_playerPos, ["RU_Priest"], 3] > 0;
 
if (_near) then {
        if (s_player_ebook < 0) then {
            s_player_ebook = player addaction[("<t color=""#F7D708"">" + ("Give Holy Book") +"</t>"),"admineventsclientside\elisbook.sqf"];
        };
    } else {
        player removeAction s_player_ebook;
        s_player_ebook = -1;
    };			
	