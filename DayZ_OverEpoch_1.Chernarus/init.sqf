/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance =	11;					//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio true;
// May prevent "how are you civillian?" messages from NPC
enableSentences true;

// DayZ Epoch config
spawnShoremode = 0; // Default = 1 (on shore)
dayz_paraSpawn = false;
spawnArea= 1500; // Default = 1500

MaxVehicleLimit = 500; // Default = 50
MaxDynamicDebris = 100; // Default = 100
dayz_MapArea = 10000; // Default = 10000
dayz_maxLocalZombies = 30; // Default = 30 

dayz_minpos = -1; 
dayz_maxpos = 15000;
DZE_SelfTransfuse = true; // default value //allow self transufe
DZE_StaticConstructionCount = 1; //reduce time to build only 1 step
DZE_PlayerZed = false; //remove player chance to spawn as zed.
DZE_R3F_WEIGHT = false; //Disable weight system

dayz_sellDistance_vehicle = 20;
dayz_sellDistance_boat = 30;
dayz_sellDistance_air = 40;

dayz_maxAnimals = 5; // Default: 8
dayz_tameDogs = false;
DynamicVehicleDamageLow = 20; // Default: 0
DynamicVehicleDamageHigh = 80; // Default: 100

DZE_BuildOnRoads = false; // Default: False
DZE_noRotate = []; //Objects that cannot be rotated. Ex: DZE_noRotate = ["ItemVault"] (NOTE: The objects magazine classname)
DZE_vectorDegrees = [0.01, 0.1, 1, 5, 15, 45, 90];
DZE_curDegree = 45; //Starting rotation angle. //Prefered any value in array above
DZE_dirWithDegrees = true; //When rotating objects with Q&E, use the custom degrees
ELE_MaxRange = 100; // maximum range the elevator can travel / stop points can be built (in meter)
ELE_Speed = 5; // speed of the elevator (meters per second)
ELE_StopWaitTime = 0; // disable the wait time if you call the elevator
ELE_StopClass = "MetalFloor_Preview_DZ";


/*ZSC*/
DZE_ConfigTrader = true; 
/*ZSC*/
DZE_MissionLootTable = true;
dayz_fullMoonNights = true;
EpochEvents = [["any","any","any","any",30,"crash_spawner"],["any","any","any","any",0,"crash_spawner"],["any","any","any","any",15,"supply_drop"]];

//Load in compiled functions
call compile preprocessFileLineNumbers "custom\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "custom\compiles.sqf";	//Compile regular functions
call compile preprocessFileLineNumbers "overwrites\click_actions\init.sqf";
/*ZSC*/	
call compile preprocessFileLineNumbers "ZSC\gold\ZSCinit.sqf";
/*ZSC*/		
call compile preprocessFileLineNumbers "logistic\init.sqf";	
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "addons\bike\init.sqf";
call compile preprocessFileLineNumbers "addons\suicide\init.sqf"; //Custom Suicide script right click pistol
call compile preprocessFileLineNumbers "server_traders.sqf";				//Compile trader configs
call compile preprocessFileLineNumbers "admintools\config.sqf"; // Epoch admin Tools config file
call compile preprocessFileLineNumbers "admintools\variables.sqf"; // Epoch admin Tools variables
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if (isServer) then {
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\dynamic_vehicle.sqf"; //Compile vehicle configs
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\mission.sqf"; // Add trader citys
	_serverMonitor = 	[] execVM "\z\addons\dayz_server\system\server_monitor.sqf"; /*ZSC*/
};

if (!isDedicated) then {
	//Conduct map operations
	[] execVM "custom\others\debug_init.sqf";
	[] execVM "custom\others\custom_monitor.sqf";
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
		   
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";
	_nil = [] execVM "custom\VehicleKeyChanger\VehicleKeyChanger_init.sqf";
	execVM "spawn\start.sqf";
	execVM "dzgm\init.sqf";
	/// Epoch Admin Tools
if ( !((getPlayerUID player) in EAT_adminList) && !((getPlayerUID player) in EAT_modList)) then 
{
  [] execVM "admintools\antihack\antihack.sqf"; // Epoch Antihack with bypass
};
	//Lights
	//[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";

_nil = [] execVM "custom\JAEM\EvacChopper_init.sqf";
_nil = [] execVM "custom\remote\remote.sqf";
_nil = [] execVM "DZAI_Client\dzai_initclient.sqf";
	   [] execVM "ZSC\compiles\playerHud.sqf";
 	   [] execVM "service_point\service_point.sqf";
["elevator"] execVM "elevator\elevator_init.sqf";
};

//#include "\z\addons\dayz_code\system\REsec.sqf"

//Start Dynamic Weather
execVM "\z\addons\dayz_code\external\DynamicWeatherEffects.sqf";


#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"
[] execVM "admintools\Activate.sqf"; // Epoch admin tools
