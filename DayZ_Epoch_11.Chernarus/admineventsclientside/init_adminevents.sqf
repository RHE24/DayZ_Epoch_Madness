adminsList= ["76561197987495141"];  //An array of adms replace with your admins ids
if((getPlayerUID player) in adminsList) then {
  
waituntil {!isnull (finddisplay 46)};
sleep 15;
executeevents = player addaction [("<t color=""#F7D708"">" + ("AdminEvents") +"</t>"),"admineventsclientside\execute_events.sqf","",5,false,true,"",""]; 

};