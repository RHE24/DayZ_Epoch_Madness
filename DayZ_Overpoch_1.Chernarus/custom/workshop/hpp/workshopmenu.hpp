class workshopmenu
{

    idd = 7000;
    movingenable=true;
	enableSimulation =false;
	class Controls
	{ 
///////////////////////////////TITLES

class back: jzBack
{
	idc = 1200;
	x = 0.183141 * safezoneW + safezoneX;
	y = 0.0807099 * safezoneH + safezoneY;
	w = 0.633748 * safezoneW;
	h = 0.838945 * safezoneH;
		colorBackground[] = {0,0,0,0.8};
};
class B1: jzRscText
{
	idc = 1000;
	text = "UPGRADES";
	x = 0.202255 * safezoneW + safezoneX;
	y = 0.123681 * safezoneH + safezoneY;
	w = 0.135301 * safezoneW;
	h = 0.0303139 * safezoneH;
};
class B5: jzRscButton
{
	idc = 1600;
	text = "ANTENNA";
	x = 0.202256 * safezoneW + safezoneX;
	y = 0.209623 * safezoneH + safezoneY;
	w = 0.134566 * safezoneW;
	h = 0.0316161 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\upantenna.sqf';";
};
class B7: jzRscButton
{
	idc = 1601;
	text = "LOUDSPEAKER";
	x = 0.203725 * safezoneW + safezoneX;
	y = 0.294261 * safezoneH + safezoneY;
	w = 0.134566 * safezoneW;
	h = 0.0316161 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\uploudspeakers.sqf';";
};
class B8: jzRscButton
{
	idc = 1602;
	text = "ADV WORK BENCH";
	x = 0.202256 * safezoneW + safezoneX;
	y = 0.379005 * safezoneH + safezoneY;
	w = 0.149269 * safezoneW;
	h = 0.0771911 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000); ExecVM 'custom\workshop\sqfs\upcarpenter.sqf';";
};
class B9: jzRscButton
{
	idc = 1603;
	text = "GARDEN";
	x = 0.20299 * safezoneW + safezoneX;
	y = 0.507813 * safezoneH + safezoneY;
	w = 0.131625 * safezoneW;
	h = 0.0745869 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\upgarden.sqf';";
};
class B15: jzRscButton
{
	idc = 1604;
	text = "LUMBER";
	x = 0.382372 * safezoneW + safezoneX;
	y = 0.380203 * safezoneH + safezoneY;
	w = 0.133096 * safezoneW;
	h = 0.0303139 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\craftwoodlumbers.sqf';";	
};
class B16: jzRscButton
{
	idc = 1605;
	text = "PLYWOOD";
	x = 0.383843 * safezoneW + safezoneX;
	y = 0.421871 * safezoneH + safezoneY;
	w = 0.133096 * safezoneW;
	h = 0.0303139 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\craftplywood.sqf';";
};
class B17: jzRscButton
{
	idc = 1606;
	text = "PLANT";
	x = 0.383843 * safezoneW + safezoneX;
	y = 0.507813 * safezoneH + safezoneY;
	w = 0.133096 * safezoneW;
	h = 0.0303139 * safezoneH;
		colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\craftplant.sqf';";
};
class B18: jzRscButton
{
	idc = 1607;
	text = "HARVEST";
	x = 0.383108 * safezoneW + safezoneX;
	y = 0.549481 * safezoneH + safezoneY;
	w = 0.133096 * safezoneW;
	h = 0.0303139 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\craftharvest.sqf';";
};
class B10: jzRscButton
{
	idc = 1608;
	text = "DRESSER";
	x = 0.203726 * safezoneW + safezoneX;
	y = 0.675789 * safezoneH + safezoneY;
	w = 0.133096 * safezoneW;
	h = 0.116255 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\updressmaker.sqf';";
};
class B19: jzRscButton
{
	idc = 1609;
	text = "MILITARY CLOTHING";
	x = 0.383842 * safezoneW + safezoneX;
	y = 0.677091 * safezoneH + safezoneY;
	w = 0.133096 * safezoneW;
	h = 0.0303139 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\craftclothes1.sqf';";
};
class B20: jzRscButton
{
	idc = 1610;
	text = "GUARD CLOTHING";
	x = 0.383842 * safezoneW + safezoneX;
	y = 0.720062 * safezoneH + safezoneY;
	w = 0.133096 * safezoneW;
	h = 0.0303139 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\craftclothes2.sqf';";
};
class B21: jzRscButton
{
	idc = 1611;
	text = "BANDIT CLOTHING";
	x = 0.383843 * safezoneW + safezoneX;
	y = 0.761731 * safezoneH + safezoneY;
	w = 0.133096 * safezoneW;
	h = 0.0303139 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\craftclothes3.sqf';";
};
class B22: jzRscButton
{
	idc = 1612;
	text = "SUMMER CLOTHING";
	x = 0.526465 * safezoneW + safezoneX;
	y = 0.721364 * safezoneH + safezoneY;
	w = 0.133096 * safezoneW;
	h = 0.0303139 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\craftclothes4.sqf';";
};
class B23: jzRscButton
{
	idc = 1613;
	text = "MASKS";
	x = 0.52426 * safezoneW + safezoneX;
	y = 0.763033 * safezoneH + safezoneY;
	w = 0.133096 * safezoneW;
	h = 0.0303139 * safezoneH;
		colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\craftclothes5.sqf';";
};
class B2: jzRscText
{
	idc = 1001;
	text = "CRAFT";
	x = 0.383843 * safezoneW + safezoneX;
	y = 0.124982 * safezoneH + safezoneY;
	w = 0.114716 * safezoneW;
	h = 0.0303139 * safezoneH;
};
class B12: jzRscButton
{
	idc = 1614;
	text = "FREQUENCY";
	x = 0.383843 * safezoneW + safezoneX;
	y = 0.209622 * safezoneH + safezoneY;
	w = 0.133096 * safezoneW;
	h = 0.0303139 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\craftfrecuency.sqf';";
};
class B14: jzRscButton
{
	idc = 1615;
	text = "START ALARM";
	x = 0.383843 * safezoneW + safezoneX;
	y = 0.294261 * safezoneH + safezoneY;
	w = 0.133096 * safezoneW;
	h = 0.0303139 * safezoneH;
		colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\craftalarm.sqf';";
};
class B11: jzRscText
{
	idc = 1002;
	text = "INFO";
	x = 0.20299 * safezoneW + safezoneX;
	y = 0.84637 * safezoneH + safezoneY;
	w = 0.0941312 * safezoneW;
	h = 0.031616 * safezoneH;
};
class B24: jzRscButton
{
	idc = 1616;
	text = "UPGRADE INFO";
	x = 0.30371 * safezoneW + safezoneX;
	y = 0.847672 * safezoneH + safezoneY;
	w = 0.133096 * safezoneW;
	h = 0.0303139 * safezoneH;
		colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\infoupgrades.sqf';";
};
class B25: jzRscButton
{
	idc = 1617;
	text = "MATERIALS INFO";
	x = 0.446332 * safezoneW + safezoneX;
	y = 0.84637 * safezoneH + safezoneY;
	w = 0.133096 * safezoneW;
	h = 0.0303139 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\infomaterials.sqf';";
};
class B26: jzRscButton
{
	idc = 1618;
	text = "OTHER INFO";
	x = 0.588222 * safezoneW + safezoneX;
	y = 0.846371 * safezoneH + safezoneY;
	w = 0.0941317 * safezoneW;
	h = 0.0316158 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\infoothers.sqf';";
};
class B3: jzRscText
{
	idc = 1003;
	text = "DOWNGRADES";
	x = 0.543375 * safezoneW + safezoneX;
	y = 0.123681 * safezoneH + safezoneY;
	w = 0.11251 * safezoneW;
	h = 0.0303139 * safezoneH;
};
class B27: jzRscButton
{
	idc = 1619;
	text = "DEL GARDEN";
	x = 0.543375 * safezoneW + safezoneX;
	y = 0.209622 * safezoneH + safezoneY;
	w = 0.132361 * safezoneW;
	h = 0.0303138 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\downgradegarden.sqf';";
};
class B28: jzRscButton
{
	idc = 1620;
	text = "DEL ANTENNA";
	x = 0.543375 * safezoneW + safezoneX;
	y = 0.294261 * safezoneH + safezoneY;
	w = 0.133832 * safezoneW;
	h = 0.031616 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\downgradeantenna.sqf';";
};
class B29: jzRscButton
{
	idc = 1621;
	text = "DEL LSPEAKER";
	x = 0.543375 * safezoneW + safezoneX;
	y = 0.380203 * safezoneH + safezoneY;
	w = 0.133096 * safezoneW;
	h = 0.0290117 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\downgradeloudspeakers.sqf';";
};
class B30: jzRscButton
{
	idc = 1622;
	text = "DEL BENCH";
	x = 0.542639 * safezoneW + safezoneX;
	y = 0.464842 * safezoneH + safezoneY;
	w = 0.135302 * safezoneW;
	h = 0.0329181 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\downgradecarpenterbench.sqf';";
};
class B31: jzRscButton
{
	idc = 1623;
	text = "DEL DRESSMAKER";
	x = 0.543375 * safezoneW + safezoneX;
	y = 0.54818 * safezoneH + safezoneY;
	w = 0.135302 * safezoneW;
	h = 0.0342203 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\downgradedressmaker.sqf';";
};
class B32: jzRscButton
{
	idc = 1624;
	text = "DEL WORKSHOP";
	x = 0.54264 * safezoneW + safezoneX;
	y = 0.632819 * safezoneH + safezoneY;
	w = 0.132361 * safezoneW;
	h = 0.031616 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\downgradewater.sqf';ExecVM 'custom\workshop\sqfs\downgrade.sqf';";
};
class B4: jzRscButton
{
	onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\hpp\advworkshopmenu.sqf';";
	idc = 1625;
	text = "MORE";
	x = 0.702172 * safezoneW + safezoneX;
	y = 0.12368 * safezoneH + safezoneY;
	w = 0.0919258 * safezoneW;
	h = 0.0723054 * safezoneH;
	colorBackground[] = {0,0,0,0.8};
	colorBackgroundActive[] = {1,1,1,1};


};
class B6: jzRscButton
{
	onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\craftwiring.sqf';";
	idc = 1626;
	text = "WIRING";
	x = 0.203726 * safezoneW + safezoneX;
	y = 0.251499 * safezoneH + safezoneY;
	w = 0.133095 * safezoneW;
	h = 0.0316161 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	
	
};
class B13: jzRscButton
{
	idc = 1627;
	text = "WATER TANK";
	x = 0.383108 * safezoneW + safezoneX;
	y = 0.251291 * safezoneH + safezoneY;
	w = 0.133096 * safezoneW;
	h = 0.0303139 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7000);ExecVM 'custom\workshop\sqfs\upwater.sqf';";
};

};
};
////////////////////////
class wiringmenu
{
    idd = 7001;
    movingenable=true;
	enableSimulation = true;
	class Controls
	{ 
	class B40: jzRscButton
{
	idc = 111111600;
	text = "WIRING FENCE";
	x = 0.183876 * safezoneW + safezoneX;
	y = 0.759126 * safezoneH + safezoneY;
	w = 0.120598 * safezoneW;
	h = 0.0758889 * safezoneH;
	colorBackground[] = {0,0,0,0.8};
	colorBackgroundActive[] = {1,1,1,1};
	OnButtonClick = "ExecVM 'custom\workshop\sqfs\craftwiring.sqf';";
};

	
	
	};
};
////////////////////////////////////////////////////////////////////////
class advworkshopmenu
{

    idd = 7002;
    movingenable=true;
	enableSimulation =false;
	class Controls
	{ 

class back: jzBack
{
	idc = 1200;
	x = 0.182406 * safezoneW + safezoneX;
	y = 0.08071 * safezoneH + safezoneY;
	w = 0.318359 * safezoneW;
	h = 0.676177 * safezoneH;
	colorBackground[] = {0,0,0,0.8};
};

class AVRscText_1000: jzRscText
{
	idc = 1000;
	text = "ADVANCED WORKSHOP";
	x = 0.18314 * safezoneW + safezoneX;
	y = 0.0820121 * safezoneH + safezoneY;
	w = 0.313948 * safezoneW;
	h = 0.031616 * safezoneH;
};
class AVRscButton_1600: jzRscButton
{
	idc = 1600;
	text = "KITCHEN";
	x = 0.183141 * safezoneW + safezoneX;
	y = 0.124984 * safezoneH + safezoneY;
	w = 0.134567 * safezoneW;
	h = 0.0758885 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\upkitchen.sqf';";
};
class AVRscButton_1601: jzRscButton
{
	idc = 1601;
	text = "COOK";
	x = 0.323558 * safezoneW + safezoneX;
	y = 0.12368 * safezoneH + safezoneY;
	w = 0.152945 * safezoneW;
	h = 0.0316161 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\cook.sqf';";
};
class AVRscButton_1602: jzRscButton
{
	idc = 1602;
	text = "REMOVE";
	x = 0.323557 * safezoneW + safezoneX;
	y = 0.166651 * safezoneH + safezoneY;
	w = 0.152946 * safezoneW;
	h = 0.0303139 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\downgradekitchen.sqf';";
};
class AVRscButton_1603: jzRscButton
{
	idc = 1603;
	text = "MOUNTED LANTERN";
	x = 0.223576 * safezoneW + safezoneX;
	y = 0.42057 * safezoneH + safezoneY;
	w = 0.23308 * safezoneW;
	h = 0.0316161 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\uplight.sqf';";
};
class AVRscButton_1604: jzRscButton
{
	idc = 1604;
	text = "MOUNTED DSHKM";
	x = 0.183875 * safezoneW + safezoneX;
	y = 0.378902 * safezoneH + safezoneY;
	w = 0.15368 * safezoneW;
	h = 0.0303139 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\updshkm.sqf';";
};
class AVRscButton_1605: jzRscButton
{
	idc = 1605;
	text = "MOUNTED M2";
	x = 0.343407 * safezoneW + safezoneX;
	y = 0.380204 * safezoneH + safezoneY;
	w = 0.152945 * safezoneW;
	h = 0.030314 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\upm2.sqf';";
};
class AVRscButton_1606: jzRscButton
{
	idc = 1606;
	text = "SMALL NEST";
	x = 0.18461 * safezoneW + safezoneX;
	y = 0.507813 * safezoneH + safezoneY;
	w = 0.152945 * safezoneW;
	h = 0.0280326 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\upsmallnest.sqf';";
};
class AVRscButton_1607: jzRscButton
{
	idc = 1607;
	text = "LARGE SANDBAGS";
	x = 0.344144 * safezoneW + safezoneX;
	y = 0.507814 * safezoneH + safezoneY;
	w = 0.15221 * safezoneW;
	h = 0.0293348 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\upsand.sqf';";
};
class AVRscButton_1608: jzRscButton
{
	idc = 1608;
	text = "BARBED WIRE FENCE";
	x = 0.20299 * safezoneW + safezoneX;
	y = 0.464844 * safezoneH + safezoneY;
	w = 0.273513 * safezoneW;
	h = 0.0303139 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\upbarbedwire.sqf';";
};
class AVRscButton_1609: jzRscButton
{
	idc = 1609;
	text = "CRAFT BOMB";
	x = 0.185347 * safezoneW + safezoneX;
	y = 0.335931 * safezoneH + safezoneY;
	w = 0.129419 * safezoneW;
	h = 0.031616 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\upbomb.sqf';";
};
class AVRscText_1001: jzRscText
{
	idc = 1001;
	text = "HOUSES BASED ON SURVIVED TIME";
	x = 0.183877 * safezoneW + safezoneX;
	y = 0.549481 * safezoneH + safezoneY;
	w = 0.312477 * safezoneW;
	h = 0.031616 * safezoneH;
	
};
class AVRscButton_1610: jzRscButton
{
	idc = 1610;
	text = "SMALL HOUSE";
	x = 0.18314 * safezoneW + safezoneX;
	y = 0.592452 * safezoneH + safezoneY;
	w = 0.113245 * safezoneW;
	h = 0.0316161 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\upsmallhouse.sqf';";
};
class AVRscButton_1611: jzRscButton
{
	idc = 1611;
	text = "MIDDLE HOUSE";
	x = 0.383108 * safezoneW + safezoneX;
	y = 0.59115 * safezoneH + safezoneY;
	w = 0.113245 * safezoneW;
	h = 0.0316161 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\upmiddlehouse.sqf';";
};
class AVRscButton_1612: jzRscButton
{
	idc = 1612;
	text = "LARGE HOUSE";
	x = 0.182994 * safezoneW + safezoneX;
	y = 0.632715 * safezoneH + safezoneY;
	w = 0.113245 * safezoneW;
	h = 0.0316161 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\uplargehouse.sqf';";
};
class AVRscButton_1613: jzRscButton
{
	idc = 1613;
	text = "COUNT";
	x = 0.303708 * safezoneW + safezoneX;
	y = 0.591149 * safezoneH + safezoneY;
	w = 0.0720762 * safezoneW;
	h = 0.0732846 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\count.sqf';";
};
class AVRscButton_1615: jzRscButton
{
	idc = 1615;
	text = "BACK";
	x = 0.423542 * safezoneW + safezoneX;
	y = 0.707041 * safezoneH + safezoneY;
	w = 0.0735466 * safezoneW;
	h = 0.0433353 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\hpp\workshopmenu.sqf';";
};
class AVRscButton_1616: jzRscButton
{
	idc = 1616;
	text = "INFO";
	x = 0.302238 * safezoneW + safezoneX;
	y = 0.70704 * safezoneH + safezoneY;
	w = 0.0735466 * safezoneW;
	h = 0.0433353 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\advinfo.sqf';";
};
class AVRscButton_1614: jzRscButton
{
	idc = 1614;
	text = "CLOSE";
	x = 0.183876 * safezoneW + safezoneX;
	y = 0.705739 * safezoneH + safezoneY;
	w = 0.0735466 * safezoneW;
	h = 0.0433353 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);";
};
class AVRscButton_1617: jzRscButton
{
	idc = 1617;
	text = "HERO HOSP";
	x = 0.383842 * safezoneW + safezoneX;
	y = 0.634121 * safezoneH + safezoneY;
	w = 0.113245 * safezoneW;
	h = 0.0316161 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\upherohospital.sqf';";
};
class AVRscButton_1618: jzRscButton
{
	idc = 1618;
	text = "ANIMAL HOUSE";
	x = 0.183876 * safezoneW + safezoneX;
	y = 0.23306 * safezoneH + safezoneY;
	w = 0.133831 * safezoneW;
	h = 0.0719825 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\upanimalhouse.sqf';";
};
class AVRscButton_1619: jzRscButton
{
	idc = 1619;
	text = "REMOVE";
	x = 0.324293 * safezoneW + safezoneX;
	y = 0.277333 * safezoneH + safezoneY;
	w = 0.152946 * safezoneW;
	h = 0.0303139 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\downgradeanimalhouse.sqf';";
};
class AVRscButton_1620: jzRscButton
{
	idc = 1620;
	text = "BREEDING";
	x = 0.323559 * safezoneW + safezoneX;
	y = 0.230457 * safezoneH + safezoneY;
	w = 0.152946 * safezoneW;
	h = 0.0303139 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\breeding.sqf';";
};
class AVRscButton_1621: jzRscButton
{
	idc = 1621;
	text = "INVENTIONS";
	x = 0.322088 * safezoneW + safezoneX;
	y = 0.33593 * safezoneH + safezoneY;
	w = 0.174266 * safezoneW;
	h = 0.0316161 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 7002);ExecVM 'custom\workshop\sqfs\invents.sqf';";
};
};
};

///////////////////////////////////////////////////////////
class barbedwiremenu
{
    idd = 7003;
    movingenable=true;
	enableSimulation = true;
	class Controls
	{ 
	class BW1: jzRscButton
{
	idc = 111111600;
	text = "BARBEDWIRE";
	x = 0.183876 * safezoneW + safezoneX;
	y = 0.759126 * safezoneH + safezoneY;
	w = 0.120598 * safezoneW;
	h = 0.0758889 * safezoneH;
	colorBackground[] = {0,0,0,0.8};
	colorBackgroundActive[] = {1,1,1,1};
	OnButtonClick = "ExecVM 'custom\workshop\sqfs\upbarbedwire.sqf';";
};



};
};