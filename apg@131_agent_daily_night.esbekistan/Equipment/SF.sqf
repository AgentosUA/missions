#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	case "SL" : { // 4th Squad Leader SF
		addMagazines("ACE_20Rnd_762x51_SB_SCAR",6);
		addMagazines("ACE_20Rnd_762x51_T_SCAR",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_12Rnd_45ACP_USPSD",2);
		addWeapons ["ACE_SCAR_H_STD_Spect", "ACE_USPSD","ACE_PRC119"];
		addItems ["M","G"];
	};
	case "TL" : { // FT Leader SF
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("1Rnd_HE_M203",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["SCAR_L_STD_EGLM_RCO","ACE_Rucksack_MOLLE_DMARPAT"];
		addItems ["M","H","G"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag",4],["1Rnd_HE_M203",4],["ACE_HuntIR_M203",5]],true];
	};
	case "AR" : { // Automatic Rifleman SF
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("ACE_12Rnd_45ACP_USPSD",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M249_PIP_ACOG", "ACE_USPSD","ACE_Rucksack_MOLLE_DMARPAT"];
		addItems ["E","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["200Rnd_556x45_M249", 2]],true];
	};
	case "MED" : { // Medic SF
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_12Rnd_45ACP_USPSD",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["SCAR_L_CQC_Holo", "ACE_USPSD", "ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["M","G"];
	};
	case "AT" : { // Saboteur SF
		addMagazines("ACE_20Rnd_762x51_SB_SCAR",6);
		addMagazines("ACE_12Rnd_45ACP_USPSD",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["SCAR_H_CQC_CCO_SD", "ACE_Rucksack_MOLLE_Green", "ACE_USPSD","M136"];
		addItems ["B","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb", 1]],true];
	};

	case "SN": {// Sniper M110
		addMagazines("ACE_20Rnd_762x51_SB_M110",6);
		addMagazines("ACE_20Rnd_762x51_T_M110",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_12Rnd_45ACP_USPSD",2);
		addWeapons ["ACE_M110","ACE_USPSD","ACE_Rucksack_MOLLE_DMARPAT"];
		addItems ["M","G","K"];
		_unit setVariable ["ACE_RuckMagContents", [["ACE_20Rnd_762x51_SB_M110",3]],true];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};