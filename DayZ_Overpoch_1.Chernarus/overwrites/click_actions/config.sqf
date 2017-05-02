//  DZE_CLICK_ACTIONS
//      This is where you register your right-click actions
//  FORMAT -- (no comma after last array entry)
//      [_classname,_text,_execute,_condition],
//  PARAMETERS
//  _classname  : the name of the class to click on 
//                  (example = "ItemBloodbag")
//  _text       : the text for the option that is displayed when right clicking on the item 
//                  (example = "Self Transfuse")
//  _execute    : compiled code to execute when the option is selected 
//                  (example = "execVM 'my\scripts\self_transfuse.sqf';")
//  _condition  : compiled code evaluated to determine whether or not the option is displayed
//                  (example = {true})
//  EXAMPLE -- see below for some simple examples
DZE_CLICK_ACTIONS = [
    ["ItemGPS","Scan Nearby","if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_ZOMBIE_COUNT = count ((position player) nearEntities ['zZombie_Base',DZE_CLICK_ACTIONS_GPS_RANGE]); DZE_CLICK_ACTIONS_MAN_COUNT = count ((position player) nearEntities ['CAManBase',DZE_CLICK_ACTIONS_GPS_RANGE]);cutText[format['Within %1 Meters: %2 AI/players, %3 zombies, %4 vehicles',DZE_CLICK_ACTIONS_GPS_RANGE,DZE_CLICK_ACTIONS_MAN_COUNT - DZE_CLICK_ACTIONS_ZOMBIE_COUNT,count ((position player) nearEntities ['zZombie_Base',DZE_CLICK_ACTIONS_GPS_RANGE]),count ((position player) nearEntities ['allVehicles',DZE_CLICK_ACTIONS_GPS_RANGE]) - DZE_CLICK_ACTIONS_MAN_COUNT],'PLAIN DOWN'];","true"],
    ["ItemGPS","Range Up"   ,"if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_GPS_RANGE = (DZE_CLICK_ACTIONS_GPS_RANGE + 100) min 2500; cutText[format['GPS RANGE: %1',DZE_CLICK_ACTIONS_GPS_RANGE],'PLAIN DOWN'];","true"],
    ["ItemGPS","Range Down" ,"if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_GPS_RANGE = (DZE_CLICK_ACTIONS_GPS_RANGE - 100) max 1000;  cutText[format['GPS RANGE: %1',DZE_CLICK_ACTIONS_GPS_RANGE],'PLAIN DOWN'];","true"],
    ["ItemGPS","Toggle Map Marker","execVM 'overwrites\click_actions\examples\marker.sqf';","true"],
    ["ItemMap","Toggle Map Marker","execVM 'overwrites\click_actions\examples\marker.sqf';","true"],
    ["ItemRadio","Switch ON/OFF","execVM 'execVM 'custom\remote\switch_on_off.sqf';","true"],
    ["ItemKnife","Harvest the weed","execVM 'drugs\cuthemp.sqf';","true"],
    ["ItemKiloHemp","Smoke that shit","execVM 'custom\smokeweed\smokeweed.sqf';","true"],
	["ItemMachete","Harvest the weed","execVM 'drugs\cuthemp.sqf';","true"],
    ["ItemAmethyst","Start Crafting!","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'Custom\Buildables\Amethyst.sqf';","true"],
    ["ItemCitrine","Start Crafting!","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'Custom\Buildables\Citrine.sqf';","true"],
    ["ItemEmerald","Start Crafting!","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'Custom\Buildables\Emerald.sqf';","true"],
    ["ItemObsidian","Start Crafting!","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'Custom\Buildables\Obsidian.sqf';","true"],
    ["ItemRuby","Start Crafting!","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'Custom\Buildables\Ruby.sqf';","true"],
    ["ItemSapphire","Start Crafting!","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'Custom\Buildables\Sapphire.sqf';","true"],
    ["ItemTopaz","Start Crafting!","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'Custom\Buildables\Topaz.sqf';","true"],
    ["ItemLightbulb","Start Crafting!","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'Custom\Buildables\Lights.sqf';","true"],
    ["ItemMap","Identify Keys","execVM 'scripts\locateVehicle\locateVehicle.sqf';","true"]
];