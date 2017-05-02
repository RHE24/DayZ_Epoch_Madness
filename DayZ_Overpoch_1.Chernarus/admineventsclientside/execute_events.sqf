
adminevents =
    [
        ["",true],
            ["armycamp", [2], "", -5, [["expression", '["armycamp"] call SNDB_CALL']], "1", "1"],
            ["cratebomb", [3], "", -5, [["expression", '["bombcrate"] call SNDB_CALL']], "1", "1"],
            ["elisbook", [4], "", -5, [["expression", '["elisbookevent"] call SNDB_CALL']], "1", "1"],
            ["NewRubbletown", [5], "", -5, [["expression", '["newrubbletown"] call SNDB_CALL']], "1", "1"],
			["player_supply", [6], "", -5, [["expression", '["player_supply"] call SNDB_CALL']], "1", "1"],
			["Supply_from_air", [7], "", -5, [["expression", '["supply_from_air"] call SNDB_CALL']], "1", "1"],
			["Bleeding Heart Disase", [8], "", -5, [["expression", '["BHD"] call SNDB_CALL']], "1", "1"],
            ["weedfarm", [9], "", -5, [["expression", '["weedfarm"] call SNDB_CALL']], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
        ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]        
    ];

showCommandingMenu "#USER:adminevents";

SNDB_CALL =
{    
    DO_THIS = {
        PVDZE_adminevents = [_this select 0];
        publicVariableServer "PVDZE_adminevents";    
    };
    call DO_THIS;
};


