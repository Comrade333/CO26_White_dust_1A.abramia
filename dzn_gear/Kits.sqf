// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************


/*
 *	PMC Arctic / NATO 4+4+1
 */

#define pmc_u ["CUP_I_B_PMC_Unit_26","CUP_I_B_PMC_Unit_27","CUP_I_B_PMC_Unit_25","CUP_I_B_PMC_Unit_18"]


kit_pmc_ar = [
	["<EQUIPEMENT >>  ",pmc_u,"CUP_V_PMC_CIRAS_Black_Patrol","TRYK_B_Coyotebackpack_BLK","TRYK_H_PASGT_BLK","rhsusf_shemagh_gogg_white"],
	["<PRIMARY WEAPON >>  ","LMG_Mk200_F","200Rnd_65x39_cased_Box",["","","rhsusf_acc_ELCAN",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhsusf_mag_17Rnd_9x19_FMJ",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4]]]
];
kit_pmc_r = [
	["<EQUIPEMENT >>  ",pmc_u,"CUP_V_PMC_CIRAS_Black_Patrol","TRYK_B_Coyotebackpack_BLK","TRYK_H_PASGT_BLK","rhsusf_shemagh2_white"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_CZ805_A1","CUP_30Rnd_556x45_G36",["","","rhsusf_acc_compm4",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",5]]],
	["<BACKPACK ITEMS >> ",[["200Rnd_65x39_cased_Box",4],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",4]]]
];
kit_pmc_gr = [
	["<EQUIPEMENT >>  ",pmc_u,"CUP_V_PMC_CIRAS_Black_Grenadier","TRYK_B_Kitbag_blk","TRYK_H_PASGT_BLK","rhsusf_oakley_goggles_clr"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_CZ805_GL","CUP_30Rnd_556x45_G36",["","","rhsusf_acc_compm4",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",5]]],
	["<BACKPACK ITEMS >> ",[["ACE_30Rnd_556x45_Stanag_M995_AP_mag",4],["1Rnd_HE_Grenade_shell",10],["1Rnd_SmokeRed_Grenade_shell",4],["SmokeShell",2]]]
];
kit_pmc_ftl = [
	["<EQUIPEMENT >>  ",pmc_u,"CUP_V_PMC_CIRAS_Black_Grenadier","TRYK_B_Kitbag_blk","TRYK_H_PASGT_BLK","rhsusf_shemagh_white"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_CZ805_GL","CUP_30Rnd_556x45_G36",["","","rhsusf_acc_SpecterDR_A",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",5]]],
	["<BACKPACK ITEMS >> ",[["ACE_30Rnd_556x45_Stanag_M995_AP_mag",4],["1Rnd_HE_Grenade_shell",10],["1Rnd_SmokeRed_Grenade_shell",4],["SmokeShell",2]]]
];
kit_pmc_sl = [
	["<EQUIPEMENT >>  ",pmc_u,"CUP_V_PMC_CIRAS_Black_Veh","tf_rt1523g_black","TRYK_H_headsetcap_blk","rhsusf_shemagh_white"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_CZ805_A1","CUP_30Rnd_556x45_G36",["","","rhsusf_acc_SpecterDR_A",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",5]]],
	["<BACKPACK ITEMS >> ",[["ACE_30Rnd_556x45_Stanag_M995_AP_mag",4],["SmokeShell",2]]]
];
cargo_kit_pmc_ammo = [
	[["rhs_weap_m72a7",5]],
	[["HandGrenade",10],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],["SmokeShell",10],["200Rnd_65x39_cased_Box",10],["rhsusf_mag_17Rnd_9x19_FMJ",10],["1Rnd_HE_Grenade_shell",10],["1Rnd_SmokeRed_Grenade_shell",10]],
	[["ACE_fieldDressing",1],["ACE_packingBandage",20],["ACE_elasticBandage",20],["ACE_tourniquet",20],["ACE_morphine",20],["ACE_epinephrine",10],["ACE_quikclot",20]],
	[]
];


/*
 *	RU Cobra - Mixed / RuAf 4+3
 */

kit_ru_random = [
	"kit_rus_ftl"
	,"kit_rus_ar"
	,"kit_rus_rpg"
	,"kit_rus_gr"
];

kit_rus_ftl = [
	["<EQUIPEMENT >>  ","TRYK_U_B_PCUHsW4","rhs_6b23_6sh116_od","","rhs_6b47_bala","rhsusf_shemagh_white"],
	["<PRIMARY WEAPON >>  ","arifle_AK12_F","30Rnd_762x39_Mag_F",["","","rhs_acc_1p87",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["rhs_mag_rgd5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_rus_rpg = [
	["<EQUIPEMENT >>  ","TRYK_U_B_PCUHsW4","rhs_6b23_6sh116_od","","rhs_6b47_bala","rhsusf_shemagh_white"],
	["<PRIMARY WEAPON >>  ","arifle_AK12_F","30Rnd_762x39_Mag_F",["","","rhs_acc_1p87",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["rhs_mag_rgd5",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",2],["rhs_rpg7_PG7VL_mag",2]]]
];

kit_rus_ar = [
	["<EQUIPEMENT >>  ","TRYK_U_B_PCUHsW4","rhs_6b23_6sh116_od","rhs_assault_umbts","rhs_6b47","rhsusf_shemagh_white"],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkp","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["1Rnd_HE_Grenade_shell",8],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_rus_gr = [
	["<EQUIPEMENT >>  ","TRYK_U_B_PCUHsW4","rhs_6b23_6sh116_vog_od","","rhs_6b47","rhsusf_shemagh_white"],
	["<PRIMARY WEAPON >>  ","arifle_AK12_GL_F","30Rnd_762x39_Mag_F",["","","rhs_acc_1p87",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["PRIMARY MAG",7],["1Rnd_HE_Grenade_shell",8]]],
	["<BACKPACK ITEMS >> ",[]]
];

