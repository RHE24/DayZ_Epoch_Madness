/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/

//Server settings
dayZ_instance = 11; //Instance ID of this server
dayZ_serverName = ""; //Shown to all players in the bottom left of the screen (country code + server number)

//Game settings
dayz_antihack = 0; // DayZ Antihack / 1 = enabled // 0 = disabled
dayz_REsec = 0; // DayZ RE Security / 1 = enabled // 0 = disabled
dayz_enableRules = true; //Enables a nice little news/rules feed on player login (make sure to keep the lists quick).
dayz_quickSwitch = true; //Turns on forced animation for weapon switch. (hotkeys 1,2,3) False = enable animations, True = disable animations
dayz_POIs = false; //Adds Point of Interest map additions (negatively impacts FPS)
dayz_infectiousWaterholes = true; //Randomly adds some bodies, graves and wrecks by ponds (negatively impacts FPS)
dayz_ForcefullmoonNights = true; // Forces night time to be full moon.
dayz_randomMaxFuelAmount = 500; //Puts a random amount of fuel in all fuel stations.

//DayZMod presets
dayz_presets = "Custom"; //"Custom","Classic","Vanilla","Elite"

//Only need to edit if you are running a custom server.
if (dayz_presets == "Custom") then {
	dayz_enableGhosting = false; //Enable disable the ghosting system.
	dayz_ghostTimer = 60; //Sets how long in seconds a player must be disconnected before being able to login again.
	dayz_spawnselection = 0; //(Chernarus only) Turn on spawn selection 0 = random only spawns, 1 = spawn choice based on limits
	dayz_spawncarepkgs_clutterCutter = 0; //0 = loot hidden in grass, 1 = loot lifted, 2 = no grass
	dayz_spawnCrashSite_clutterCutter = 0;	// heli crash options 0 = loot hidden in grass, 1 = loot lifted, 2 = no grass
	dayz_spawnInfectedSite_clutterCutter = 0; // infected base spawn 0 = loot hidden in grass, 1 = loot lifted, 2 = no grass 
	dayz_bleedingeffect = 1; //1 = blood on the ground (negatively impacts FPS), 2 = partical effect, 3 = both
	dayz_OpenTarget_TimerTicks = 60 * 10; //how long can a player be freely attacked for after attacking someone unprovoked
	dayz_nutritionValuesSystem = true; //true, Enables nutrition system, false, disables nutrition system.
	dayz_classicBloodBagSystem = true; // disable blood types system and use the single classic ItemBloodbag
	dayz_enableFlies = false; // Enable flies on dead bodies (negatively impacts FPS).
};

//Temp settings
dayz_DamageMultiplier = 1; //1 - 0 = Disabled, anything over 1 will multiply damage. Damage Multiplier for Zombies.
dayz_maxGlobalZeds = 500; //Limit the total zeds server wide.
dayz_temperature_override = false; // Set to true to disable all temperature changes.

enableRadio true;
enableSentences true;

// EPOCH CONFIG VARIABLES START //
#include "\z\addons\dayz_code\configVariables.sqf" // Don't remove this line
// See the above file for a full list including descriptions and default values
// Uncomment the lines below to change the default loadout
//DefaultMagazines = ["ItemBandage","ItemPainkiller","30Rnd_9x19_UZI","30Rnd_9x19_UZI"];
//DefaultWeapons = ["PDW_DZ","ItemFlashlight","ItemEtool","ItemGPS","ItemMap","ItemKeyKit","ItemToolBox","ItemCrowBar"];
//DefaultBackpack = "DZ_LargeGunBag_EP1";
//DefaultBackpackItems = []; // Can include both weapons and magazines i.e. ["PDW_DZ","30Rnd_9x19_UZI"];
DZE_permanentPlot = true; //Sets Plot poles to remain after death to the owner that ploted them, true = plot4life, false = non plot4life
DZE_PlotManagementAdmins = ["76561197987495141"]; // Array of Admins to any plot pole on the server build remove ect.
DZE_doorManagementAdmins = ["76561197987495141"]; // Array of Admins to any door on the server regarless of plot pole ownership.
dayz_groupSystem = true; // Enable group system
dayz_markGroup = 1; // Players can see their group members on the map 0=never, 1=always, 2=With GPS only
dayz_markSelf = 2; // Players can see their own position on the map 0=never, 1=always, 2=With GPS only
dayz_markBody = 2; // Players can see their corpse position on the map 0=never, 1=always, 2=With GPS only
dayz_requireRadio = true; // Require players to have a radio on their toolbelt to create a group, be in a group and receive invites.
dayz_paraSpawn = false; // Halo spawn
DZE_BackpackAntiTheft = true; // Prevent stealing from backpacks in trader zones
DZE_BuildOnRoads = true; // Allow building on roads
DZE_PlayerZed = false; // Enable spawning as a player zombie when players die with infected status
DZE_R3F_WEIGHT = false; // Enable R3F weight. Players carrying too much will be overburdened and forced to move slowly.
DZE_slowZombies = true; // Force zombies to always walk
DZE_StaticConstructionCount = 0; // Steps required to build. If greater than 0 this applies to all objects.
DZE_GodModeBase = true; // Make player built base objects indestructible
DZE_requireplot = 1; // Require a plot pole to build  0 = Off, 1 = On
DZE_PlotPole = [120,160]; // Radius owned by plot pole [Regular objects,Other plotpoles]. Difference between them is the minimum buffer between bases.
DZE_BuildingLimit = 500; // Max number of built objects allowed in DZE_PlotPole radius
DZE_SelfTransfuse = true; // Allow players to bloodbag themselves
DZE_selfTransfuse_Values = [12000,2,30]; // [blood amount given, infection chance %, cooldown in seconds]
MaxDynamicDebris = 150; // Max number of random road blocks to spawn around the map
MaxVehicleLimit = 250; // Max number of random vehicles to spawn around the map
spawnArea = 1400; // Distance around markers to find a safe spawn position
spawnShoremode = 0; // Random spawn locations  1 = on shores, 0 = inland
EpochUseEvents = true; //Enable event scheduler. Define custom scripts in dayz_server\modules to run on a schedule.
EpochEvents = [["any","any","any","any",10,"weedfarm"],["any","any","any","any",15,"supply_drop"]];
// EPOCH CONFIG VARIABLES END //

diag_log 'dayz_preloadFinished reset';
dayz_preloadFinished=nil;
onPreloadStarted "diag_log [diag_tickTime,'onPreloadStarted']; dayz_preloadFinished = false;";
onPreloadFinished "diag_log [diag_tickTime,'onPreloadFinished']; dayz_preloadFinished = true;";
with uiNameSpace do {RscDMSLoad=nil;}; // autologon at next logon

_verCheck = (getText (configFile >> "CfgMods" >> "DayZ" >> "version") == "DayZ Epoch 1.0.6.1");
if (!isDedicated) then {
	enableSaving [false, false];	startLoadingScreen ["","RscDisplayLoadCustom"];
	progressLoadingScreen 0;
	dayz_loadScreenMsg = localize 'str_login_missionFile';
	if (_verCheck) then {
		progress_monitor = [] execVM "DZE_Hotfix_1.0.6.1A\system\progress_monitor.sqf";
	} else {
		progress_monitor = [] execVM "\z\addons\dayz_code\system\progress_monitor.sqf";
	};
	0 cutText ['','BLACK',0];
	0 fadeSound 0;
	0 fadeMusic 0;
};

initialized = false;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";
call compile preprocessFileLineNumbers "dayz_code\init\variables.sqf";
call compile preprocessFileLineNumbers "custom\Buildables\variables.sqf";
progressLoadingScreen 0.05;
//call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";
call compile preprocessFileLineNumbers "dayz_code\init\publicEH.sqf";
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";
progressLoadingScreen 0.15;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";
call compile preprocessFileLineNumbers "dayz_code\init\compiles.sqf";
call compile preprocessFileLineNumbers "custom\Buildables\Crafting_Compiles.sqf";
call compile preprocessFileLineNumbers "addons\bike\init.sqf";
if (_verCheck) then {
	#include "DZE_Hotfix_1.0.6.1A\init\compiles.sqf"
};
progressLoadingScreen 0.25;
call compile preprocessFileLineNumbers "scripts\traders\server_traders.sqf";
call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\mission\chernarus11.sqf"; //Add trader city objects locally on every machine early
call compile preprocessFileLineNumbers "logistic\init.sqf"; 
if (dayz_POIs && (toLower worldName == "chernarus")) then {call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\mission\chernarus\poi\init.sqf";}; //Add POI objects locally on every machine early
call compile preprocessFileLineNumbers "admintools\config.sqf"; // Epoch admin Tools config file
call compile preprocessFileLineNumbers "admintools\variables.sqf"; // Epoch admin Tools variables
initialized = true;

setTerrainGrid 25;
if (dayz_REsec == 1) then {call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\REsec.sqf";};
execVM "\z\addons\dayz_code\system\DynamicWeatherEffects.sqf";

if (isServer) then {
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\system\dynamic_vehicle.sqf";
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\system\server_monitor.sqf";
	//weed
	_weed = [] execVM "drugs\weed.sqf";
	//
	//WORKSHOP SERVER ELECTRIFY FENCES
	[] execVM 'custom\workshop\serverfunction\server_electrify_init.sqf';
	//
	//portables clay	
	[] execVM 'custom\portables\init_clay.sqf';
	//
	execVM "\z\addons\dayz_server\traders\chernarus11.sqf"; //Add trader agents
	execVM "\z\addons\dayz_server\bankTraders\chernarus.sqf"; //Add banking agents
	//Get the server to setup what waterholes are going to be infected and then broadcast to everyone.
	if (dayz_infectiousWaterholes && (toLower worldName == "chernarus")) then {execVM "\z\addons\dayz_code\system\mission\chernarus\infectiousWaterholes\init.sqf";};
	
	// Lootable objects from CfgTownGeneratorDefault.hpp
	if (dayz_townGenerator) then { execVM "\z\addons\dayz_code\system\mission\chernarus\MainLootableObjects.sqf"; };
};

if (!isDedicated) then {
    // Epoch Admin Tools
    [] execVM "admintools\antihack\antihack.sqf"; // Epoch Antihack with bypass
	[] execVM "scripts\service_points\service_point.sqf"; // New Service Points for Epoch1061
	
	
	if (toLower(worldName) == "chernarus") then {
		diag_log "WARNING: Clearing annoying benches from Chernarus";
		([4654,9595,0] nearestObject 145259) setDamage 1;
		([4654,9595,0] nearestObject 145260) setDamage 1;
	};
	
	if (dayz_townGenerator) then { execVM "\z\addons\dayz_code\compile\client_plantSpawner.sqf"; };
	call compile preprocessFileLineNumbers "spawn\init.sqf";
	execFSM "\z\addons\dayz_code\system\player_monitor.fsm";
	//[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
	if (DZE_R3F_WEIGHT) then {execVM "\z\addons\dayz_code\external\R3F_Realism\R3F_Realism_Init.sqf";};
	call compile preprocessFileLineNumbers "scripts\zsc\zscInit.sqf";
	call compile preprocessFileLineNumbers "scripts\zsc\zscATMInit.sqf";
	execVM "scripts\zsc\playerHud.sqf";
	[] execVM "dayz_code\compile\remote_message.sqf";
	waitUntil {scriptDone progress_monitor};
	cutText ["","BLACK IN", 3];
	3 fadeSound 1;
	3 fadeMusic 1;
	endLoadingScreen;
};
[] execVM "admintools\Activate.sqf"; // Epoch admin tools
[] execVM "admineventsclientside\init_adminevents.sqf";