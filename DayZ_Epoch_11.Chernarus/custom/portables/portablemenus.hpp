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

//SAWMENU
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

//FORGE MENU
class forgemenu
{

    idd = 8002;
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
	text = "MANAGE FORGE";
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
	text = "EXTRACT COOPER";
	x = 0.185 * safezoneW + safezoneX;
	y = 0.166667 * safezoneH + safezoneY;
	w = 0.18525 * safezoneW;
	h = 0.03 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8002);ExecVM 'custom\portables\extractcooper.sqf';";	
};
class cb2: jdzRscButton
{
	idc = 1601;
	text = "FALSIFY ORE";
	x = 0.185 * safezoneW + safezoneX;
	y = 0.251667 * safezoneH + safezoneY;
	w = 0.18525 * safezoneW;
	h = 0.03 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8002);ExecVM 'custom\portables\falsify.sqf';";		
};
class cb3: jdzRscButton
{
	idc = 1602;
	text = "DISMANTLE";
	x = 0.18375 * safezoneW + safezoneX;
	y = 0.336667 * safezoneH + safezoneY;
	w = 0.18525 * safezoneW;
	h = 0.03 * safezoneH;
	colorBackground[] = {0.1,0.1,0.1,0.8};
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8002);ExecVM 'custom\portables\dismantle.sqf';";	
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
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8002);ExecVM 'custom\portables\forgeinfo.sqf';";
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
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 8002);";		
		
};
};
};
