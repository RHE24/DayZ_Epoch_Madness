class sawmenu
{

    idd = 8001;
    movingenable=true;
	enableSimulation =false;
	class Controls
	{ 
	
	


class back: jdzBack
{
	idc = 1200;
	x = 0.18375 * safezoneW + safezoneX;
	y = 0.0800004 * safezoneH + safezoneY;
	w = 0.194 * safezoneW;
	h = 0.418333 * safezoneH;
	colorBackground[] = {0,0,0,0.8};
};


class tx2: jdzRscStructuredText
{
	idc = 1100;
	text = "MANAGE TABLE SAW";
	x = 0.18375 * safezoneW + safezoneX;
	y = 0.0816667 * safezoneH + safezoneY;
	w = 0.194 * safezoneW;
	h = 0.03 * safezoneH;
	colorBackground[] = {0.2,0.38,0.647,0.8};
	colorText[] = {1,1,1,.9};
};
class sb1: jdzRscButton
{
	idc = 1600;
	text = "LUMBERS";
	x = 0.185 * safezoneW + safezoneX;
	y = 0.166667 * safezoneH + safezoneY;
	w = 0.18525 * safezoneW;
	h = 0.03 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8001);ExecVM 'custom\portables\lumbers.sqf';";	
	
	
};
class sb2: jdzRscButton
{
	idc = 1601;
	text = "LOGS";
	x = 0.185 * safezoneW + safezoneX;
	y = 0.125 * safezoneH + safezoneY;
	w = 0.19025 * safezoneW;
	h = 0.0316667 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8001);ExecVM 'custom\portables\logs.sqf';";
	
	
};
class sb3: jdzRscButton
{
	idc = 1602;
	text = "LUMBERPACKS";
	x = 0.18375 * safezoneW + safezoneX;
	y = 0.208334 * safezoneH + safezoneY;
	w = 0.18525 * safezoneW;
	h = 0.03 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8001);ExecVM 'custom\portables\lumberpacks.sqf';";	
};
class sb10: jdzRscButton
{
	idc = 1603;
	text = "INFO";
	x = 0.185 * safezoneW + safezoneX;
	y = 0.463334 * safezoneH + safezoneY;
	w = 0.074 * safezoneW;
	h = 0.0316667 * safezoneH;
	colorBackground[] = {0.2,0.38,0.647,0.8};
	colorText[] = {1,1,1,.9};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8001);ExecVM 'custom\portables\infosaw.sqf';";	
	
};
class sb11: jdzRscButton
{
	idc = 1604;
	text = "CLOSE";
	x = 0.29625 * safezoneW + safezoneX;
	y = 0.465 * safezoneH + safezoneY;
	w = 0.074 * safezoneW;
	h = 0.0316667 * safezoneH;
		colorBackground[] = {0.2,0.38,0.647,0.8};
	colorText[] = {1,1,1,.9};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8001);";		
};
class sb4: jdzRscButton
{
	idc = 1605;
	text = "PLYWOODS";
	x = 0.18375 * safezoneW + safezoneX;
	y = 0.251666 * safezoneH + safezoneY;
	w = 0.18525 * safezoneW;
	h = 0.03 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8001);ExecVM 'custom\portables\plywoods.sqf';";
};
class sb5: jdzRscButton
{
	idc = 1606;
	text = "PLYWOODPACKS";
	x = 0.185 * safezoneW + safezoneX;
	y = 0.293333 * safezoneH + safezoneY;
	w = 0.18525 * safezoneW;
	h = 0.03 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8001);ExecVM 'custom\portables\plywoodpack.sqf';";	
};



class sb6: jdzRscButton
{
	idc = 1607;
	text = "STICK FENCE";
	x = 0.18375 * safezoneW + safezoneX;
	y = 0.336667 * safezoneH + safezoneY;
	w = 0.18525 * safezoneW;
	h = 0.03 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8001);ExecVM 'custom\portables\stickfence.sqf';";	
};
class sb7: jdzRscButton
{
	idc = 1608;
	text = "WOODWALL";
	x = 0.185 * safezoneW + safezoneX;
	y = 0.378333 * safezoneH + safezoneY;
	w = 0.18525 * safezoneW;
	h = 0.03 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8001);ExecVM 'custom\portables\woodwall.sqf';";	
};
class sb8: jdzRscButton
{
	idc = 1609;
	text = "WOODFLOOR";
	x = 0.18375 * safezoneW + safezoneX;
	y = 0.421666 * safezoneH + safezoneY;
	w = 0.18525 * safezoneW;
	h = 0.03 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8001);ExecVM 'custom\portables\woodfloor.sqf';";	
};
};
};