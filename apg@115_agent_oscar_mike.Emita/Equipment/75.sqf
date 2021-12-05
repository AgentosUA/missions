#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
// HQ
	case "OFF": {
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["SCAR_L_STD_Mk4CQT", "ACE_PRC119", "M9"];
		addItems ["B","M","G"];
	};
	case "PSG" : { //Platoon sergant
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("15Rnd_9x19_M9", 2);
		addWeapons ["SCAR_L_STD_Mk4CQT", "M9", "ACE_PRC119"];
		addItems ["R","B","M","G"];
	};
// Rifle squad
	case "SL" : { //Squad Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell", 2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["SCAR_L_STD_Mk4CQT", "ACE_PRC119"];
		addItems ["B","M","G"];
	};
	case "TL" : { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell", 2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_SCAR_L_ACOG", "ACE_Rucksack_MOLLE_Wood"];
		addItems ["B","M","G"];
	};
	case "AR" : { // Automatic Rifleman
		addMagazines("100Rnd_762x51_M240", 4);
		addMagazines("SmokeShell", 2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["Mk_48_DES_EP1"];
		addItems ["L","E","M"];
	};
	case "AT" : { // AT
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("MAAWS_HEAT",2);
		addWeapons ["SCAR_L_CQC_Holo", "ACE_CarlGustav_M3", "ACE_Rucksack_MOLLE_Wood"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_MAAWS_HE",2], ["HandGrenade_West",2], ["SmokeShell",2]],true];
		addItems ["M"];
	};
	case "GL": { // Greanadier
		addMagazines("30Rnd_556x45_Stanag", 6);
		addMagazines("1Rnd_Smoke_M203",2);
		addMagazines("1Rnd_HE_M203",4);
		addWeapons ["SCAR_L_CQC_EGLM_Holo","ACE_Rucksack_MOLLE_Wood"];
		addItems ["B","M"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203", 6], ["1Rnd_Smoke_M203", 6]],true];
	};
	case "DM" : {// Marksman
		addMagazines("ACE_20Rnd_762x51_SB_M110",6);
		addMagazines("ACE_20Rnd_762x51_T_M110",2);
		addMagazines("15Rnd_9x19_M9",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M110", "ACE_Rucksack_MOLLE_Wood", "M9"];
		addItems ["M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_20Rnd_762x51_SB_M110", 4], ["ACE_20Rnd_762x51_T_M110", 2]],true];
	};
	case "MED": {//Medic
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_LargeBandage",2);
		addMagazines("ACE_Bandage",2);
		addMagazines("ACE_Morphine",2);
		addMagazines("ACE_Epinephrine",2);
		addMagazines("ACE_Medkit",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["SCAR_L_CQC_Holo", "M9", "ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","L","B"];
	};
// Weapon sqaud
	case "MG" : {// Machinegunner
		addMagazines("100Rnd_762x51_M240",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West", 2);
		addWeapons ["m240_scoped_EP1_Small"];
		addItems ["L","E","M"];
	};
	case "PL": { //Pilot
		addMagazines("30Rnd_9x19_MP5",4);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["MP5A5","M9"];
		addItems ["B","M","G"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
