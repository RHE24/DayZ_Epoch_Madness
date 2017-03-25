private["_time","_hours","_minutes","_restartTime"];
while {debugMonitor} do
{

	_time = (round(360-(serverTime)/60));
	_hours = (floor(_time/60));
	_minutes = (_time - (_hours * 60));
	
	switch(_minutes) do
	{
		case 9: {_minutes = "09"};
		case 8: {_minutes = "08"};
		case 7: {_minutes = "07"};
		case 6: {_minutes = "06"};
		case 5: {_minutes = "05"};
		case 4: {_minutes = "04"};
		case 3: {_minutes = "03"};
		case 2: {_minutes = "02"};
		case 1: {_minutes = "01"};
		case 0: {_minutes = "00"};
};

  
    hintSilent parseText format ["
	<t size='1.2' font='Zeppelin33' align='center' color='#D9FF00'>%9</t>
	<br/>
	<t size='1' font='Zeppelin33' align='center' color='#D9FF00'>Survived %8 dayz </t>
	<br/>
	<br/>
	<t size='1' font='Zeppelin33' align='left' color='#8CFA16'>GPS:</t><t size='1' font='Zeppelin33' align='left' color='#FFFFFF'> %10</t>
	<t size='1' font='Zeppelin33' align='right' color='#8CFA16'>FPS:</t><t size='1' font='Zeppelin33' align='right' color='#FFFFFF'> %11</t>
	<br/>
	<t size='1' font='Zeppelin33' align='left' color='#FA1A16'>Blood:</t><t size='1' font='Zeppelin33' align='left' color='#FFFFFF'> %5</t>
	<t size='1' font='Zeppelin33' align='right' color='#7FBDE3'>Temp:</t><t size='1' font='Zeppelin33' align='right' color='#FFFFFF'> %14</t>
	<br/>
	<t size='1' font='Zeppelin33' align='left' color='#D6A24D'>Food:</t><t size='1' font='Zeppelin33' align='left' color='#FFFFFF'> %12</t>
	<t size='1' font='Zeppelin33' align='right' color='#7FBDE3'>Drink:</t><t size='1' font='Zeppelin33' align='right' color='#FFFFFF'> %13</t>
	<br/>
	<br/>
	<t size='1' font='Zeppelin33' align='left' color='#A23DFF'>Humanity:</t><t size='1' font='Zeppelin33' align='right' color='#FFFFFF'> %6</t>
	<br/>
	<t size='1' font='Zeppelin33' align='left' color='#e5e5e5'>Murders:</t><t size='1' font='Zeppelin33' align='right' color='#FFFFFF'> %3</t>
	<br/>
    <t size='1' font='Zeppelin33' align='left' color='#e5e5e5'>Bandits Killed:</t><t size='1' font='Zeppelin33' align='right' color='#FFFFFF'> %4</t>
	<br/>
   	<t size='1' font='Zeppelin33' align='left' color='#e5e5e5'>Zombies Killed:</t><t size='1' font='Zeppelin33' align='right' color='#FFFFFF'> %2</t>
	<br/>
	<t size='1' font='Zeppelin33' align='left' color='#D0F000'>Wallet: </t><t size='1' font='Zeppelin33' align='right' color='#FFFFFF'>%7</t>
	<br/>	
	<br/>
	<t size='0.9' font='Zeppelin33' align='center' color='#FFFFFF'>Restart in </t><t size='0.9' font='Zeppelin33' align='center' color='#FFFFFF'>%15 hr(s) %16 mins</t>
	",
	
	    (count playableUnits),																									//%1
        (player getVariable['zombieKills', 0]),																			//%2
        (player getVariable['humanKills', 0]),																			//%3
        (player getVariable['banditKills', 0]),																			//%4
        (player getVariable['USEC_BloodQty', r_player_blood]),											//%5
     	(player getVariable['humanity', 0]),																				//%6
		(player getVariable[Z_MoneyVariable,0] call BIS_fnc_numberText),						//%7
		(dayz_Survived),																										//%8
		dayz_playerName,																										//%9					
		(mapGridPosition getPos player),																				//%10
        round diag_FPS,																											//%11	
		ceil ((1 - ((dayz_hunger min SleepWater) / SleepWater)) * 100),								//%12
		ceil ((1 - ((dayz_thirst min SleepFood) / SleepFood)) * 100),										//%13
		(round(dayz_temperatur)),																							//%14
		_hours, 																														//%15
		_minutes 																													//%16
	];
    sleep 1;
};