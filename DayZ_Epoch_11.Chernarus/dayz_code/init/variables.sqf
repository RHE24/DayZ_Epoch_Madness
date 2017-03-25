Z_singleCurrency = true;

DZE_maintainCurrencyRate = 1000;

DZE_MoneyStorageClasses = DZE_LockableStorage; // List of classnames that players can bank with. If you want a specific class name added (i.e Plastic_Pole_EP1_DZ) consult the README.md on github.
ZSC_defaultStorageMultiplier = 500; // Default magazine count for banks objects that don't have storage slots (i.e Suitcase, Info_Board_EP1, Plastic_Pole_EP1_DZ)
ZSC_MaxMoneyInStorageMultiplier = 500000; // Multiplier for how much money a bank object can hold, example: 200 magazine slots in the object (or the default value above ^^) multiplied by the 50,000 multiplier is 10 million coin storage. (200*50000=10m coins)

Z_bankVariable = "moneySpecial"; // If using single currency this is the variable name used to store object bank wealth.
Z_globalVariable = "GlobalMoney"; // If using single currency this is the variable name used to store coins globally.
//Z_moneyVariable = "GlobalMoney"; // Uncomment this this to make it so players don't lose coins on death. Will need to disable checkWallet as you can dupe if you have this and check wallet running.

/*
	IMPORTANT: The following 2 variables below are CASE SENSITIVE! If you don't put the object/trader classname EXACTLY how
	they appear in game, THEY WILL NOT WORK!
*/

ZSC_bankObjects = ["Plastic_Pole_EP1_DZ"]; // Array of objects that are available for banking (i.e Suitcase, Info_Board_EP1)
ZSC_bankTraders = ["Functionary1_EP1_DZ"]; // Array of trader classnames that are available for banking (i.e RU_Functionary1)
ZSC_limitOnBank = true; // Have a limit on the bank? (i.e true or false) limits the global banking to the number below.
ZSC_maxBankMoney = 950000000; // Default limit for bank objects.

//portables
portables = ["MAP_AirCondition_A","Stove","MAP_Camo_Box","MAP_tent_small_west","SatPhone","MAP_AirCondition_B"];

//workshop

workshop = ["MAP_kulna","Land_Misc_Well_L_EP1","MAP_Misc_Boogieman","MAP_Shed_W01","MAP_P_Stavebni_kozy","MAP_parabola_big","MAP_office_table_a","Loudspeakers_EP1","MAP_Dkamna_bila","MAP_plot_green_draty","GUE_WarfareBFieldhHospital","MAP_bouda2_vnitrek","MAP_deutshe_mini","MAP_Mil_Mil_Guardhouse","MAP_Pristresek_mensi","Land_fort_bagfence_corner","MAP_plot_provizorni","M2StaticMG_US_EP1","DSHKM_Gue","SearchLight_RUS"];
DayZ_SafeObjects = workshop + portables + ["Base_Fire_DZ","WoodenGate_1","WoodenGate_2","WoodenGate_3","WoodenGate_4","Land_Fire_DZ","TentStorage","TentStorage0","TentStorage1","TentStorage2","TentStorage3","TentStorage4","StashSmall","StashSmall1","StashSmall2","StashSmall3","StashSmall4","StashMedium","StashMedium1","StashMedium2","StashMedium3","StashMedium4","Wire_cat1","Sandbag1_DZ","Fence_DZ","Generator_DZ","Hedgehog_DZ","BearTrap_DZ","DomeTentStorage","DomeTentStorage0","DomeTentStorage1","DomeTentStorage2","DomeTentStorage3","DomeTentStorage4","CamoNet_DZ","Trap_Cans","TrapTripwireFlare","TrapBearTrapSmoke","TrapTripwireGrenade","TrapTripwireSmoke","TrapBearTrapFlare","TentStorageDomed","VaultStorageLocked","BagFenceRound_DZ","TrapBear","Fort_RazorWire","WoodGate_DZ","Land_HBarrier1_DZ","Land_HBarrier3_DZ","Land_HBarrier5_DZ","Fence_corrugated_DZ","M240Nest_DZ","CanvasHut_DZ","ParkBench_DZ","MetalGate_DZ","OutHouse_DZ","Wooden_shed_DZ","WoodShack_DZ","StorageShed_DZ","Plastic_Pole_EP1_DZ","StickFence_DZ","LightPole_DZ","FuelPump_DZ","DesertCamoNet_DZ","ForestCamoNet_DZ","DesertLargeCamoNet_DZ","ForestLargeCamoNet_DZ","SandNest_DZ","DeerStand_DZ","MetalPanel_DZ","WorkBench_DZ","WoodFloor_DZ","WoodLargeWall_DZ","WoodLargeWallDoor_DZ","WoodLargeWallWin_DZ","WoodSmallWall_DZ","WoodSmallWallWin_DZ","WoodSmallWallDoor_DZ","LockboxStorageLocked","WoodFloorHalf_DZ","WoodFloorQuarter_DZ","WoodStairs_DZ","WoodStairsSans_DZ","WoodStairsRails_DZ","WoodSmallWallThird_DZ","WoodLadder_DZ","Land_DZE_GarageWoodDoor","Land_DZE_LargeWoodDoor","Land_DZE_WoodDoor","Land_DZE_GarageWoodDoorLocked","Land_DZE_LargeWoodDoorLocked","Land_DZE_WoodDoorLocked","CinderWallHalf_DZ","CinderWall_DZ","CinderWallDoorway_DZ","CinderWallDoor_DZ","CinderWallDoorLocked_DZ","CinderWallSmallDoorway_DZ","CinderWallDoorSmall_DZ","CinderWallDoorSmallLocked_DZ","MetalFloor_DZ","WoodRamp_DZ","GunRack_DZ","FireBarrel_DZ","WoodCrate_DZ","Scaffolding_DZ","DesertTentStorage","DesertTentStorage0","DesertTentStorage1","DesertTentStorage2","DesertTentStorage3","DesertTentStorage4"];
DZE_workshop = workshop;
DZE_portables = portables;

DZE_safeVehicle = workshop + portables + ["ParachuteWest","ParachuteC"];

DZE_maintainClasses = workshop +["ModularItems","DZE_Housebase","LightPole_DZ","BuiltItems","Generator_DZ","DZ_buildables","Plastic_Pole_EP1_DZ","Fence_corrugated_DZ","CanvasHut_DZ","ParkBench_DZ","MetalGate_DZ","StickFence_DZ","DesertCamoNet_DZ","ForestCamoNet_DZ","DesertLargeCamoNet_DZ","ForestLargeCamoNet_DZ","DeerStand_DZ","Scaffolding_DZ","FireBarrel_DZ","M240Nest_DZ"];

//Player self-action handles
dayz_resetSelfActions = {
	s_player_equip_carry = -1;
	s_player_fire = -1;
	s_player_cook = -1;
	s_player_boil = -1;
	s_player_fireout = -1;
	s_player_packtent = -1;
	s_player_packtentinfected = -1;
	s_player_fillfuel = -1;
	s_player_grabflare = -1;
	s_player_removeflare = -1;
	s_player_studybody = -1;
	s_player_deleteBuild = -1;
	s_player_flipveh = -1;
	s_player_sleep = -1;
	s_player_fillfuel210 = -1;
	s_player_fillfuel20 = -1;
	s_player_fillfuel5 = -1;
	s_player_siphonfuel = -1;
	s_player_repair_crtl = -1;
	s_player_fishing = -1;
	s_player_fishing_veh = -1;
	s_player_gather = -1;
	s_player_destroytent = -1;
	s_player_attach_bomb = -1;
	s_player_upgradestorage = -1;
	s_player_Drinkfromhands = -1;
	/*s_player_lockhouse = -1; //Vanilla base building currently not used in Epoch
	s_player_unlockhouse = -1;
	s_player_openGate = -1;
	s_player_CloseGate = -1;
	s_player_breakinhouse = -1;
	s_player_setCode = -1;
	s_player_BuildUnLock = -1;
	s_player_BuildLock = -1;*/
	
	// EPOCH ADDITIONS
	s_player_packvault = -1;
	s_player_lockvault = -1;
	s_player_unlockvault = -1;
	s_player_attack = -1;
	s_player_callzombies = -1;
	s_player_showname = -1;
	s_player_pzombiesattack = -1;
	s_player_pzombiesvision = -1;
	s_player_pzombiesfeed = -1;
	s_player_tamedog = -1;
	s_player_parts_crtl = -1;
	s_player_movedog = -1;
	s_player_speeddog = -1;
	s_player_calldog = -1;
	s_player_feeddog = -1;
	s_player_waterdog = -1;
	s_player_staydog = -1;
	s_player_trackdog = -1;
	s_player_barkdog = -1;
	s_player_warndog = -1;
	s_player_followdog = -1;
	s_player_information = -1;
	s_player_fuelauto = -1;
	s_player_fuelauto2 = -1;
	s_player_fillgen = -1;
	s_player_upgrade_build = -1;
	s_player_maint_build = -1;
	s_player_downgrade_build = -1;
	s_player_towing = -1;
	s_halo_action = -1;
	s_player_SurrenderedGear = -1;
	s_player_maintain_area = -1;
	s_player_maintain_area_force = -1;
	s_player_maintain_area_preview = -1;
	s_player_heli_lift = -1;
	s_player_heli_detach = -1;
	s_player_lockUnlock_crtl = -1;
	s_player_lockUnlockInside_ctrl = -1;
	s_player_toggleSnap = -1;
	s_player_toggleSnapSelect = -1;
	s_player_toggleSnapSelectPoint = [];
	snapActions = -1;
	s_player_plot_boundary = -1;
	s_player_plotManagement = -1;
	s_player_toggleDegree = -1;
	s_player_toggleDegrees=[];
	degreeActions = -1;
	s_player_toggleVector = -1;
	s_player_toggleVectors=[];
	vectorActions = -1;
	s_player_manageDoor = -1;
	s_player_clay = -1;
	s_player_clothes = -1; // Zabns take clothes
	s_player_pipe = -1;

	// Custom below
	s_player_copyToKey = -1;
	s_player_claimVehicle = -1;
	s_givemoney_dialog = -1;
	s_bank_dialog = -1;
	s_player_checkWallet = -1;
	s_bank_dialog1 = -1;
	s_bank_dialog2 = -1;
    s_player_ebook = -1;
	s_player_removekiln = -1;
	s_player_managekiln = -1;
	s_player_removesaw = -1;
	s_player_managesaw = -1;
	s_player_removeengineering = -1;
	s_player_manageengineering = -1;
	s_player_removecammo = -1;
	s_player_removemtent = -1;
	s_player_hospitalhero = -1;
	s_player_managework = -1;
};

call dayz_resetSelfActions;
