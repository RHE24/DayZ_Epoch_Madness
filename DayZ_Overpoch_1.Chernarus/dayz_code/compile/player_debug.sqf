private["_pic"];
while {debugMonitor} do
{

  _pic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture'));
if (player == vehicle player) then { 
  _pic = (gettext (configFile >> 'cfgWeapons' >> (currentWeapon player) >> 'picture'));
}else {
  _pic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture')); 
	};


    hintSilent parseText format ["
	<t size='1.2' font='Zeppelin33' align='center' color='#D9FF00'>%11</t>
	<br/>
	<img size='5' align='center' image='%9'/>
	<br/>
	<t size='1' font='Zeppelin33' align='center' color='#8CFA16'>Days Survived: </t><t size='1' font='Zeppelin33' align='right' color='#FAFAFA'> %10</t>
	<br/>
	<t size='1' font='Zeppelin33' align='left' color='#8CFA16'>GPS:</t><t size='1' font='Zeppelin33' align='left' color='#FAFAFA'> %12</t>
	<t size='1' font='Zeppelin33' align='right' color='#8CFA16'>FPS:</t><t size='1' font='Zeppelin33' align='right' color='#FAFAFA'> %13</t>
	<br/>
	<t size='1' font='Zeppelin33' align='left' color='#FA1A16'>Blood:</t><t size='1' font='Zeppelin33' align='left' color='#FAFAFA'> %5</t>
	<t size='1' font='Zeppelin33' align='right' color='#7FBDE3'>Temp:</t><t size='1' font='Zeppelin33' align='right' color='#FAFAFA'> %16</t>
	<br/>
	<t size='1' font='Zeppelin33' align='left' color='#D6A24D'>Food:</t><t size='1' font='Zeppelin33' align='left' color='#FAFAFA'> %14</t>
	<t size='1' font='Zeppelin33' align='right' color='#7FBDE3'>Drink:</t><t size='1' font='Zeppelin33' align='right' color='#FAFAFA'> %15</t>
	<br/>
	<br/>
	<t size='1' font='Zeppelin33' align='left' color='#e5e5e5'>Murders:</t><t size='1' font='Zeppelin33' align='right' color='#FAFAFA'> %3</t>
	<br/>
  <t size='1' font='Zeppelin33' align='left' color='#e5e5e5'>Bandits Killed:</t><t size='1' font='Zeppelin33' align='right' color='#FAFAFA'> %4</t>
	<br/>
  <t size='1' font='Zeppelin33' align='left' color='#e5e5e5'>Zombies Killed:</t><t size='1' font='Zeppelin33' align='right' color='#FAFAFA'> %2</t>
	<br/>
	<br/>
	<t size='0.9' font='Zeppelin33' align='left' color='#D0F000'>Wallet: </t><t size='0.9' font='Zeppelin33' align='right' color='#FAFAFA'> %8</t>
	<br/>
 	<t size='0.9' font='Zeppelin33' align='left' color='#D0F000'>Bank: </t><t size='0.9' font='Zeppelin33' align='right' color='#FAFAFA'> %7</t>",
	    (count playableUnits),													//%1
        (player getVariable['zombieKills', 0]),									//%2
        (player getVariable['humanKills', 0]),									//%3
        (player getVariable['banditKills', 0]),								    //%4
        (player getVariable['USEC_BloodQty', r_player_blood]),					//%5
     	(player getVariable['humanity', 0]),									//%6
		(player getVariable[Z_bankVariable,0] call BIS_fnc_numberText),			//%7
		(player getVariable[Z_MoneyVariable,0] call BIS_fnc_numberText),		//%8
		_pic,					  												//%9
		(dayz_Survived),														//%10
		dayz_playerName,														//%11					
		(mapGridPosition getPos player),										//%12
		round diag_FPS,															//%13
		ceil ((1 - ((dayz_hunger min SleepWater) / SleepWater)) * 100),			//%14
		ceil ((1 - ((dayz_thirst min SleepFood) / SleepFood)) * 100),			//%15
		(round(dayz_temperatur))												//%16
	];
    sleep 1;
};