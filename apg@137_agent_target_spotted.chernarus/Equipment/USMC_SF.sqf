#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	case "SL" : { // 4th Squad Leader SF
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_12Rnd_45ACP_USPSD",2);
		addWeapons ["ACE_SOC_M4A1_AIM_SD", "ACE_USPSD","EvMoscow"];
		addItems ["B", "M", "G"];
	};
	case "TL" : { // FT Leader SF
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("1Rnd_HE_M203",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_SOC_M4A1_GL_EOTECH","ACE_Rucksack_MOLLE_Green"];
		addItems ["H", "M", "G"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag",4],["1Rnd_HE_M203",4],["ACE_HuntIR_M203",3]],true];
	};
	case "AR" : { // Automatic Rifleman SF
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("ACE_12Rnd_45ACP_USPSD",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M249_PIP_ACOG", "ACE_USPSD","ACE_Rucksack_MOLLE_Green"];
		addItems ["E", "M", "G"];
		_unit setVariable ["ACE_RuckMagContents",[["200Rnd_556x45_M249", 2]],true];
	};
	case "SN" : { // Sniper SF M24
		addMagazines("20Rnd_762x51_DMR",8);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_12Rnd_45ACP_USPSD",2);
		addWeapons ["kuz_M39", "ACE_USPSD", "ACE_YardAge450", "ACE_Rucksack_MOLLE_Green"];
		addItems ["B", "M", "G"];
		_unit setVariable ["ACE_RuckMagContents",[["20Rnd_762x51_DMR",5]],true];
	};
	case "MED" : { // Medic SF
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_12Rnd_45ACP_USPSD",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_SOC_M4A1_Eotech", "ACE_USPSD", "ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["B", "M", "G"];
	};
	case "SAB" : { // Saboteur SF
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_12Rnd_45ACP_USPSD",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_SOC_M4A1_SD_9", "ACE_USPSD","ACE_Rucksack_MOLLE_Green"];
		addItems ["M", "G"];
		//_unit setVariable ["ACE_RuckMagContents",[["PipeBomb", 1]],true];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};