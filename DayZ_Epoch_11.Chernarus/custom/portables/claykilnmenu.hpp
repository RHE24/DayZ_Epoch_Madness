class claykilnmenu
{

    idd = 8000;
    movingenable=true;
	enableSimulation =false;
	class Controls
	{ 

class back: jdzBack
{
	idc = 1200;
	x = 0.1825 * safezoneW + safezoneX;
	y = 0.08 * safezoneH + safezoneY;
	w = 0.19525 * safezoneW;
	h = 0.413333 * safezoneH;
	colorBackground[] = {0,0,0,0.8};
};

class tx1: jdzRscStructuredText
{
	idc = 1100;
	text = "MANAGE CLAY KILN";
	x = 0.18375 * safezoneW + safezoneX;
	y = 0.0816667 * safezoneH + safezoneY;
	w = 0.194 * safezoneW;
	h = 0.03 * safezoneH;
	colorBackground[] = {0.2,0.38,0.647,0.8};
	colorText[] = {1,1,1,.9};
};
class cb1: jdzRscButton
{
	idc = 1600;
	text = "COOK BRICKS";
	x = 0.185 * safezoneW + safezoneX;
	y = 0.166667 * safezoneH + safezoneY;
	w = 0.18525 * safezoneW;
	h = 0.03 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8000);ExecVM 'custom\portables\cinderblocks.sqf';";	
};
class cb2: jdzRscButton
{
	idc = 1601;
	text = "CRAFT WHETSTONE";
	x = 0.185 * safezoneW + safezoneX;
	y = 0.251667 * safezoneH + safezoneY;
	w = 0.18525 * safezoneW;
	h = 0.03 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8000);ExecVM 'custom\portables\whetstone.sqf';";		
};
class cb3: jdzRscButton
{
	idc = 1602;
	text = "PREPARE MORTAR";
	x = 0.18375 * safezoneW + safezoneX;
	y = 0.336667 * safezoneH + safezoneY;
	w = 0.18525 * safezoneW;
	h = 0.03 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8000);ExecVM 'custom\portables\mortarbucket.sqf';";	
};
class cb4: jdzRscButton
{
	idc = 1603;
	text = "INFO";
	x = 0.18375 * safezoneW + safezoneX;
	y = 0.421667 * safezoneH + safezoneY;
	w = 0.074 * safezoneW;
	h = 0.0316667 * safezoneH;
	colorBackground[] = {0.2,0.38,0.647,0.8};
	colorText[] = {1,1,1,.9};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8000);ExecVM 'custom\portables\portablesinfo.sqf';";
};
class cb5: jdzRscButton
{
	idc = 1604;
	text = "CLOSE";
	x = 0.2975 * safezoneW + safezoneX;
	y = 0.42 * safezoneH + safezoneY;
	w = 0.074 * safezoneW;
	h = 0.0316667 * safezoneH;
	colorBackground[] = {0.2,0.38,0.647,0.8};
	colorText[] = {1,1,1,.9};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8000);";		
		
};
};
};