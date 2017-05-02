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

//workshop
workshop = ["MAP_kulna","Land_Misc_Well_L_EP1","MAP_Misc_Boogieman","MAP_Shed_W01","MAP_P_Stavebni_kozy","MAP_parabola_big","MAP_office_table_a","Loudspeakers_EP1","MAP_Dkamna_bila","MAP_plot_green_draty","GUE_WarfareBFieldhHospital","MAP_bouda2_vnitrek","MAP_deutshe_mini","MAP_Mil_Mil_Guardhouse","MAP_Pristresek_mensi","Land_fort_bagfence_corner","MAP_plot_provizorni","M2StaticMG_US_EP1","DSHKM_Gue","SearchLight_RUS"];
DayZ_SafeObjects = workshop +["Base_Fire_DZ","WoodenGate_1","WoodenGate_2","WoodenGate_3","WoodenGate_4","Land_Fire_DZ","TentStorage","TentStorage0","TentStorage1","TentStorage2","TentStorage3","TentStorage4","StashSmall","StashSmall1","StashSmall2","StashSmall3","StashSmall4","StashMedium","StashMedium1","StashMedium2","StashMedium3","StashMedium4","Wire_cat1","Sandbag1_DZ","Fence_DZ","Generator_DZ","Hedgehog_DZ","BearTrap_DZ","DomeTentStorage","DomeTentStorage0","DomeTentStorage1","DomeTentStorage2","DomeTentStorage3","DomeTentStorage4","CamoNet_DZ","Trap_Cans","TrapTripwireFlare","TrapBearTrapSmoke","TrapTripwireGrenade","TrapTripwireSmoke","TrapBearTrapFlare","TentStorageDomed","VaultStorageLocked","BagFenceRound_DZ","TrapBear","Fort_RazorWire","WoodGate_DZ","Land_HBarrier1_DZ","Land_HBarrier3_DZ","Land_HBarrier5_DZ","Fence_corrugated_DZ","M240Nest_DZ","CanvasHut_DZ","ParkBench_DZ","MetalGate_DZ","OutHouse_DZ","Wooden_shed_DZ","WoodShack_DZ","StorageShed_DZ","Plastic_Pole_EP1_DZ","StickFence_DZ","LightPole_DZ","FuelPump_DZ","DesertCamoNet_DZ","ForestCamoNet_DZ","DesertLargeCamoNet_DZ","ForestLargeCamoNet_DZ","SandNest_DZ","DeerStand_DZ","MetalPanel_DZ","WorkBench_DZ","WoodFloor_DZ","WoodLargeWall_DZ","WoodLargeWallDoor_DZ","WoodLargeWallWin_DZ","WoodSmallWall_DZ","WoodSmallWallWin_DZ","WoodSmallWallDoor_DZ","LockboxStorageLocked","WoodFloorHalf_DZ","WoodFloorQuarter_DZ","WoodStairs_DZ","WoodStairsSans_DZ","WoodStairsRails_DZ","WoodSmallWallThird_DZ","WoodLadder_DZ","Land_DZE_GarageWoodDoor","Land_DZE_LargeWoodDoor","Land_DZE_WoodDoor","Land_DZE_GarageWoodDoorLocked","Land_DZE_LargeWoodDoorLocked","Land_DZE_WoodDoorLocked","CinderWallHalf_DZ","CinderWall_DZ","CinderWallDoorway_DZ","CinderWallDoor_DZ","CinderWallDoorLocked_DZ","CinderWallSmallDoorway_DZ","CinderWallDoorSmall_DZ","CinderWallDoorSmallLocked_DZ","MetalFloor_DZ","WoodRamp_DZ","GunRack_DZ","FireBarrel_DZ","WoodCrate_DZ","Scaffolding_DZ","DesertTentStorage","DesertTentStorage0","DesertTentStorage1","DesertTentStorage2","DesertTentStorage3","DesertTentStorage4"];
DZE_workshop = workshop;
DZE_safeVehicle = workshop + ["ParachuteWest","ParachuteC"];
DZE_maintainClasses = workshop + ["ModularItems","DZE_Housebase","LightPole_DZ","BuiltItems","Generator_DZ","DZ_buildables","Plastic_Pole_EP1_DZ","Fence_corrugated_DZ","CanvasHut_DZ","ParkBench_DZ","MetalGate_DZ","StickFence_DZ","DesertCamoNet_DZ","ForestCamoNet_DZ","DesertLargeCamoNet_DZ","ForestLargeCamoNet_DZ","DeerStand_DZ","Scaffolding_DZ","FireBarrel_DZ","M240Nest_DZ"];

Clothing1 = ["FR_Ohara_DZ","FR_Miles","FR_Cooper","FR_Rodriguez_DZ","FR_Sykes","FR_AC","FR_AR","FR_Assault_GL","FR_Assault_R","FR_Commander"];
Clothing2 = ["Soldier1_DZ","USMC_Soldier","USMC_Soldier2","USMC_SoldierM_Marksman","USMC_SoldierS","USMC_SoldierS_Sniper","USMC_Soldier_AA","USMC_Soldier_Pilot"];
Clothing3 = ["Ins_Soldier_GL_DZ","CDF_Soldier","CDF_Commander","CDF_Soldier_AR","CDF_Soldier_Crew","CDF_Soldier_Light","CDF_Soldier_Pilot"];
Clothing4 = ["GUE_Soldier_Crew_DZ","RU_Soldier","RU_Soldier_Crew","RU_Soldier_Light","RU_Soldier_Pilot","RUS_Commander","RUS_Soldier1","MVD_Soldier_Sniper"];
Clothing5 = ["Graves_Light_DZ","Drake","Graves","Herrera","Pierce","US_Delta_Force_Assault_EP1","US_Soldier_AR_EP1","US_Soldier_AT_EP1","US_Soldier_MG_EP1","US_Pilot_Light_EP1","US_Soldier_SL_EP1"];
Clothing6 = ["CZ_Special_Forces_GL_DES_EP1_DZ","CZ_Soldier_AT_DES_EP1","CZ_Soldier_Light_DES_EP1","CZ_Special_Forces_DES_EP1","CZ_Special_Forces_TL_DES_EP1"];
Clothing7 = ["Bandit2_DZ","MVD_Soldier_Sniper","GER_Soldier_EP1","GER_Soldier_MG_EP1","GER_Soldier_TL_EP1"];
Clothing8 = ["Soldier_Bodyguard_AA12_PMC_DZ","CIV_Contractor2_BAF","BAF_crewman_DDPM","BAF_Soldier_FAC_DDPM","BAF_Soldier_N_DDPM","BAF_Soldier_Marksman_DDPM","BAF_Soldier_Officer_DDPM","BAF_Soldier_L_DDPM"];
Clothing9 = ["TK_INS_Soldier_EP1_DZ","TK_Commander_EP1","TK_Soldier_Crew_EP1","TK_Soldier_MG_EP1","TK_Special_Forces_MG_EP1","TK_INS_Bonesetter_EP1"];
Clothing10 = ["Survivor2_DZ"];
Clothing11 = ["FR_Rodriguez_DZ","FR_Corpsman","FR_GL","FR_Light","FR_Marksman","FR_R","FR_Sapper","FR_TL","Mercenary_Default20b","Mercenary_Default20c","Mercenary_Default20d"]; // Abit of Overpoch in here


// Overwatch


//Hero
Clothing12 = ["Drake_Light_DZ","arma1_us_soldier_sabass","arma1_us_soldier_sabmark","arma1_us_soldier_sabot","frb_tl","frb_tl_mask","frb_gl","frb_gl_mask","frb_mg","frb_mg_mask","frb_mark","frb_mark_mask","frb_stealth_tl","frb_stealth_rifleman","frb_stealth_sabot","frb_stealth_mark"];
Clothing13 = ["Soldier_Sniper_PMC_DZ","SBH_Alpha_Soldier1","SBH_Alpha_Soldier2","SBH_Alpha_Soldier3","SBH_Alpha_Soldier4","SBH_Alpha_Soldier5","SBH_Alpha_Soldier6","SBH_Alpha_Soldier7","SBH_Alpha_Soldier8","SBH_Alpha_Soldier9","SBH_Alpha_Soldier10","SBH_Alpha_Soldier11","SBH_Alpha_Soldier12"];
Clothing14 = ["CZ_Soldier_Sniper_EP1_DZ"];
Clothing15 = ["Camo1_DZ","US_Delta_Force_TL_EP1","US_Delta_Force_EP1","US_Delta_Force_AR_EP1","US_Delta_Force_Medic_EP1","US_Delta_Force_Marksman_EP1","US_Delta_Force_Air_Controller_EP1"];
Clothing16 = ["Rocket_DZ","SFSG_des_tl","SFSG_des_op","SFSG_des_ar","SFSG_des_med","SFSG_des_demo","SFSG_des_mrk","SFSG_des_jtac","SFSG_mtp_tl","SFSG_mtp_op","SFSG_mtp_ar","SFSG_mtp_med","SFSG_mtp_demo","SFSG_mtp_mrk","SFSG_mtp_jtac","SFSG_wdl_tl","SFSG_wdl_op","SFSG_wdl_ar","SFSG_wdl_med","SFSG_wdl_demo","SFSG_wdl_mrk","SFSG_wdl_jtac","SFSG_mtpw_tl","SFSG_mtpw_op","SFSG_mtpw_ar","SFSG_mtpw_med","SFSG_mtpw_demo","SFSG_mtpw_mrk","SFSG_mtpw_jtac"];
Clothing17 = ["Sniper1_DZ","Navy_SEAL_TL","Navy_SEAL_GL","Navy_SEAL_MG","Navy_SEAL_AT","Navy_SEAL_Medic","Navy_SEAL_Marksman","Navy_SEAL_diver","Navy_SEAL_diver_medic","Navy_SEAL_diver_land","Navy_SEAL_AC","Navy_SEAL_ACa","Navy_SEAL_ACb","Navy_SEAL_Shotgun","Navy_SEAL_Sabot","Navy_SEAL_SD"];
Clothing18 = ["Soldier_TL_PMC_DZ","G_WDL_Mercenary_Default0","G_WDL_Mercenary_Default1","G_WDL_Mercenary_Default2","G_WDL_Mercenary_Default3","G_WDL_Mercenary_Default4","G_WDL_Mercenary_Default5","G_WDL_Mercenary_Default6","G_WDL_Mercenary_Default7","G_WDL_Mercenary_Default8","G_WDL_Mercenary_Default9","G_WDL_Mercenary_Default10","G_WDL_Mercenary_Default11","G_WDL_Mercenary_Default12","G_WDL_Mercenary_Default13","G_WDL_Mercenary_Default14","G_WDL_Mercenary_Default15","G_WDL_Mercenary_Default16"];
Clothing19 = ["GUE_Soldier_Sniper_DZ","UKSF_des_tl","UKSF_des_op","UKSF_des_ar","UKSF_des_med","UKSF_des_demo","UKSF_des_mrk","UKSF_des_jtac","UKSF_wdl_tl","UKSF_wdl_op","UKSF_wdl_ar","UKSF_wdl_med","UKSF_wdl_demo","UKSF_wdl_mrk","UKSF_wdl_jtac","UKSF_des_tl_l","UKSF_des_op_l","UKSF_des_ar_l","UKSF_des_med_l","UKSF_des_demo_l","UKSF_des_mrk_l","UKSF_des_jtac_l","UKSF_wdl_tl_l","UKSF_wdl_op_l","UKSF_wdl_ar_l","UKSF_wdl_med_l","UKSF_wdl_demo_l","UKSF_wdl_mrk_l","UKSF_wdl_jtac_l"];
Clothing20 = ["TK_INS_Warlord_EP1_DZ","gsc_military_helmet_wdl","gsc_military_helmet_wdl_AT","gsc_military_helmet_grey_AT","gsc_military_helmet_wdlSNP","gsc_military_helmet_greySNP","gsc_military_helmet_grey","gsc_military_head_grey","gsc_military_head_greySNP","gsc_military_head_wdlSNP","gsc_military_head_wdl","gsc_military_head_wdl_AT","gsc_military_head_grey_AT","gsc_scientist1","gsc_scientist1_head","gsc_scientist2","gsc_scientist2_head","gsc_eco_stalker_mask_fred","gsc_eco_stalker_head_fred","gsc_eco_stalker_mask_camo","gsc_eco_stalker_head_camo1","gsc_cloth_loner_head","gsc_eco_stalker_mask_duty","gsc_eco_stalker_head_duty","gsc_eco_stalker_mask_neutral","gsc_eco_stalker_head_neutral","nof_fsk_tl","nof_fsk_marksman","nof_fsk_grenadier","nof_fsk_heavy","nof_fsk_corpsman","MVD_Soldier"];
//Bandit


Clothing21 = ["Bandit1_DZ","Winter_SOF_Sabot","Winter_SOF_MG","Winter_SOF_TL","Winter_SOF_Medic","Winter_SOF_Marksman","Winter_SOF_GL","Winter_SOF_AT","Winter_SOF_AC","Winter_SOF_DA1","Winter_SOF_DA1a","Winter_SOF_DA1b","Winter_SOF_DA1c","Winter_OPFOR1","Winter_OPFOR2","Winter_OPFOR3","Winter_OPFOR4","Winter_OPFOR5","Winter_OPFOR6","Winter_OPFOR7","Winter_OPFOR8","Winter_OPFOR9","Winter_OPFOR10","EWinter_OPFOR1","EWinter_OPFOR2","EWinter_OPFOR3","EWinter_OPFOR4","EWinter_OPFOR5","EWinter_OPFOR6","EWinter_OPFOR7","EWinter_OPFOR8","EWinter_OPFOR9","EWinter_OPFOR10"];
Clothing22 = ["Bandit2_DZ","Gangsta_merc1","Gangsta_merc2","Gangsta_merc3","Gangsta_merc4","Gangsta_merc5","Gangsta_merc6","Gangsta_merc7","Gangsta_merc8","Gangsta_merc9","Gangsta_merc10","EGangsta_merc1","EGangsta_merc2","EGangsta_merc3","EGangsta_merc4","EGangsta_merc5","EGangsta_merc6","EGangsta_merc7","EGangsta_merc8","EGangsta_merc9","EGangsta_merc10","Taliban1","Taliban2","Taliban3","Taliban4","Taliban5","Taliban6","Taliban7","Taliban8","Taliban9","Taliban10","Taliban11","Taliban12","ETaliban1","ETaliban2","ETaliban3","ETaliban4","ETaliban5","ETaliban6","ETaliban7","ETaliban8","ETaliban9","ETaliban10","ETaliban11","ETaliban12","Terrorist1","Terrorist2","Terrorist3","Terrorist4","Terrorist5","Terrorist6","Terrorist7","Terrorist8","Terrorist9","Terrorist10","Terrorist11","Terrorist12","ETerrorist1","ETerrorist2","ETerrorist3","ETerrorist4","ETerrorist5","ETerrorist6","ETerrorist7","ETerrorist8","ETerrorist9","ETerrorist10","ETerrorist11","ETerrorist12"];
Clothing23 = ["BanditW1_DZ"]; // DIrty Women
Clothing24 = ["BanditW2_DZ"]; // DIrty Women
Clothing25 = ["GUE_Commander_DZ","US_Army_Soldier_Light","US_Army_Soldier_GL","US_Army_Soldier2","US_Army_Soldier_Officer","US_Army_Soldier_SL","US_Army_Soldier_TL","US_Army_Soldier_LAT","US_Army_Soldier_AT","US_Army_Soldier_HAT","US_Army_Soldier_AA","US_Army_Soldier_Medic","US_Army_Soldier_AR","US_Army_Soldier_MG","US_Army_SoldierS_SniperH","US_Army_SoldierM_Marksman","US_Army_SoldierS"];
Clothing26 = ["GUE_Soldier_2_DZ","Desert_SOF_TL","Desert_SOF_GL","Desert_SOF_MG","Desert_SOF_AT","Desert_SOF_Medic","Desert_SOF_Marksman","Desert_SOF_AC","Desert_SOF_Shotgun","Desert_SOF_Sabot","Desert_SOF_DA1","Desert_SOF_DA1a","Desert_SOF_DA1b","Desert_SOF_DA2","WDL_Mercenary_Default0","WDL_Mercenary_Default1","WDL_Mercenary_Default2","WDL_Mercenary_Default3","WDL_Mercenary_Default4","WDL_Mercenary_Default5","WDL_Mercenary_Default5a","G_WDL_Mercenary_Default5a","WDL_Mercenary_Default6","WDL_Mercenary_Default7","WDL_Mercenary_Default8","WDL_Mercenary_Default9","WDL_Mercenary_Default10","WDL_Mercenary_Default11","WDL_Mercenary_Default12","WDL_Mercenary_Default13","WDL_Mercenary_Default14","WDL_Mercenary_Default15","WDL_Mercenary_Default16"];
Clothing27 = ["GUE_Soldier_CO_DZ","G_Mercenary_Default9a","G_Mercenary_Default9b","Mercenary_Default10","Mercenary_Default11","Mercenary_Default12","Mercenary_Default13","Mercenary_Default14","Mercenary_Default15","Mercenary_Default16","Mercenary_Default17","Mercenary_Default18","Mercenary_Default19","Mercenary_Default19a","G_Mercenary_Default19a","Mercenary_Default20","Mercenary_Default22","Mercenary_Default23","Mercenary_Default24","Mercenary_Default25","Mercenary_Default26","Mercenary_Default27","Mercenary_Default28","G_Mercenary_Default0","G_Mercenary_Default1","G_Mercenary_Default2","G_Mercenary_Default3","G_Mercenary_Default4","G_Mercenary_Default5","G_Mercenary_Default6","G_Mercenary_Default7","G_Mercenary_Default8","G_Mercenary_Default9","G_Mercenary_Default10","G_Mercenary_Default11","G_Mercenary_Default12","G_Mercenary_Default13","G_Mercenary_Default14","G_Mercenary_Default15","G_Mercenary_Default16","G_Mercenary_Default17","G_Mercenary_Default18","G_Mercenary_Default19","G_Mercenary_Default20","G_Mercenary_Default20b","G_Mercenary_Default21","G_Mercenary_Default22","G_Mercenary_Default23","G_Mercenary_Default24","G_Mercenary_Default25","G_Mercenary_Default26","G_Mercenary_Default27","G_Mercenary_Default28"];


AllPlayers = AllPlayers + Clothing1 + Clothing2 + Clothing3 + Clothing4 + Clothing5 + Clothing6 + Clothing7 + Clothing8 + Clothing9 + Clothing10 + Clothing11  + Clothing12  + Clothing13  + Clothing14  + Clothing15  + Clothing16  + Clothing17  + Clothing18  + Clothing19 + Clothing20 + Clothing21+ Clothing22+ Clothing23+ Clothing24+ Clothing25+ Clothing26+ Clothing27 ;


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
	s_player_clothes = -1;
	s_clothes = -1;
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
	s_player_workshop = -1;
};

call dayz_resetSelfActions;
