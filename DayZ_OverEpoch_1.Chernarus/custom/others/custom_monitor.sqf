

if (isNil "debugMonitor") then { debugMonitor = false; };
        if (debugMonitor) then {
            debugMonitor = false;
            hintSilent "";
        } else {
    debugMonitor = true;
private["_time","_hours","_minutes","_restartTime"];

/************************* CONFIG *************************/
    _restartTime = 360; //total time before server restart (3hrs = 180 minutes)    
/************************* CONFIG *************************/

while {debugMonitor} do {

_time = (round(_restartTime-(serverTime)/60));     //Want it to count up instead of down? use _time = (round serverTime)/60;
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
_pic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture'));
if (player == vehicle player) then
{
_pic = (gettext (configFile >> 'cfgWeapons' >> (currentWeapon player) >> 'picture'));
}else{
_pic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture'));};

hintSilent parseText format ["
    <t size='1' font='Bitstream' align='left' color='#FFCC00'>Mikes Epoch Madness</t>
    <br/>
    <t size='1' font='Bitstream' align='center' color='#ff5200'>%1</t><br/>
    <t color='#009FCF' size='1' font='Bitstream' align='left'>Players Online: </t><t color='#ff5200' size='1' font='Bitstream' align='right'>%2</t><br/>
    <t color='#009FCF' size='1' font='Bitstream' align='left'>FPS: </t><t color='#ff5200' size='1' font='Bitstream' align='right'>%3</t><br/>
    <t color='#009FCF' size='1' font='Bitstream' align='left'>Blood: </t><t color='#ff5200' size='1' font='Bitstream' align='right'>%4</t><br/>
    <t color='#009FCF' size='1' font='Bitstream' align='left'>Humanity: </t><t color='#ff5200' size='1' font='Bitstream' align='right'>%5</t><br/>
    <br/>
    <t color='#009FCF' size='1' font='Bitstream' align='left'>Murders: </t><t color='#ff5200' size='1' font='Bitstream' align='right'>%6</t><br/>
    <t color='#009FCF' size='1' font='Bitstream' align='left'>Bandit Kills:  </t><t color='#ff5200' size='1' font='Bitstream' align='right'>%7</t><br/>
    <t color='#009FCF' size='1' font='Bitstream' align='left'>Zombie Kills: </t><t color='#ff5200' size='1' font='Bitstream' align='right'>%8</t><br/>
    <t color='#FFCC00' size='1' font='Bitstream' align='left'>Restart In: </t><t color='#FFCC00' size='1' font='Bitstream' align='right'>%9Hr(s) %10Min(s)</t><br/>
    <img size='3' image='%11'/><br/>    
    ",

(name player),//1
(count playableUnits),//2
(round diag_fps),//3
(player getVariable['USEC_BloodQty', r_player_blood]),//4
(player getVariable['humanity', 0]),//5
(player getVariable['humanKills', 0]),//6
(player getVariable['banditKills', 0]),//7
(player getVariable['zombieKills', 0]),//8
_hours, // Used on line 52 to display hours //9
_minutes, // Used on line 52 to display minutes //10
_pic//11
];
sleep 2;
};
};
