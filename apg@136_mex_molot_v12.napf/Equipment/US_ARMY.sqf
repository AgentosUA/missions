#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
//Platoon command
	case "OFF" : {
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M4A1_ACOG","NM_PRC119_MTP"];
		addItems ["R","M","G","B"];
	};
	case "SL" : {
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M4A1_ACOG","NM_PRC119_MTP"];
		addItems ["R","M","G","B"];
		};
	case "TL" : {
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M4A1_ACOG"];
		addItems ["R","M","G","B"];
		};
	case "GL": {
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",2);
		addWeapons ["ACE_M4A1_GL","ACE_CharliePack_Multicam"];
		addItems ["R","M","B"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",10]], true];
	};
	case "AR" : {
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249"];
		addItems ["R","E","M","B"];
	};
	case "HAT": {
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M4A1_Eotech","ACE_M136_CSRS"];
		addItems ["R","M","B"];
	};
	case "AA": {
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M4A1_Eotech"];
		addItems ["R","M"];
	};
	case "DM" : {
		addMagazines("20Rnd_762x51_B_SCAR",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M110"];
		addItems ["R","M"];
	};
		case "SL_MED" : { // Начальник медицинского пункта
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M4A1_Eotech","NM_PRC119_MTP"];
		addItems ["R","M","G"];
	};
		case "MED": {
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",4);
		addWeapons ["ACE_M4A1_Eotech","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","M"];
	};
	case "CCRW" : {
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",1);
		addMagazines("HandGrenade_West",1);
		addWeapons ["ACE_M4A1_F"];
		addItems ["R","M","G","B"];
	};
	case "CRW" : {
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",1);
		addMagazines("HandGrenade_West",1);
		addWeapons ["ACE_M4A1_F"];
		addItems ["R","M","G"];
	};
	case "PL": {
		addMagazines("30Rnd_9x19_MP5",4);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["MP5A5","M9"];
		addItems ["R","M","G"];
	};
//75th Renger
	case "R_SL" : {
		addMagazines("20Rnd_762x51_B_SCAR",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_SCAR_H_STD_Spect","NM_PRC119_MTP"];
		addItems ["R","M","G","B"];
	};
	case "R_TL" : {
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("1Rnd_HE_M203",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["SCAR_L_STD_EGLM_RCO","ACE_Rucksack_MOLLE_WMARPAT"];
		addItems ["R","M","G","B"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8],["ACE_1Rnd_HE_M203",4],["1Rnd_SmokeGreen_M203",4]], true];
	};
	case "R_AT" : {
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["SCAR_L_CQC_CCO_SD","ACE_M136_CSRS"];
		addItems ["R","M","G"];
	};
	case "R_SN" : {
		addMagazines("TU_10Rnd_762x51_M24",6);
		addMagazines("30Rnd_9x19_MP5",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["TU_M40A5","ACE_Rucksack_MOLLE_WMARPAT"];
		addItems ["R","M","G","B"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_9x19_MP5",4]], true];
		_unit setVariable ["ACE_weapononback","MP5SD",true];
	};
	case "R_AR" : {
		addMagazines("100Rnd_762x51_M240",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["Mk_48"];
		addItems ["R","M","G","B"];
	};
	case "R_MED" : {
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("15Rnd_9x19_M9",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["SCAR_L_CQC_CCO_SD","M9","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","M","G"];
	};
		case "R_SPOT" : {
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_SOC_M4A1_SHORTDOT","NM_PRC119_MTP"];
		addItems ["R","M","G"];
	};
};
