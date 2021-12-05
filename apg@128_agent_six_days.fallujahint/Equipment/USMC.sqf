#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
//Platoon command
	case "OFF": { // Officer
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_ACOG","ACE_PRC119","M9"];
		addItems ["B","M","G","R"];
	};
	case "PSG" : { //Platoon sergant
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_ACOG","M136","M9"];
		addItems ["B","M","G","R"];
	};
//Squad
	case "SL" : { //Squad Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4A1_ACOG","ACE_PRC119"];
		addItems ["B","M","G","R"];
	};
	case "TL" : { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",2);
		addWeapons ["ACE_M4A1_RCO2_GL","ACE_Rucksack_MOLLE_DMARPAT"];
		addItems ["B","M","G","R"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8]], true];
	};
	case "AR" : { // Automatic Rifleman
		addMagazines("200Rnd_556x45_M249",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249"];
		addItems ["M","R","E"];
	};

	case "AAR" : { // Assistant Automatic Rifleman
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M4A1_Eotech","ACE_Rucksack_MOLLE_DMARPAT"];
		addItems ["M","R"];
		_unit setVariable ["ACE_RuckMagContents",[["200Rnd_556x45_M249", 4]], true];
	};

	case "LAT": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M4A1_Eotech","M136"];
		addItems ["M","R"];
	};

	case "DM" : { // Marksman
		addMagazines("20Rnd_762x51_DMR",8);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["DMR"];
		addItems ["B","M","R"];
	};

	case "SL_MED" : { 
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M4A1_Eotech","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["M","G","R"];
	};
	case "MED": { //Medic
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M4A1_Eotech","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["M","G","R"];
	};

	case "CCRW" : { // CRW
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addItems ["M","G"];
		addWeapons ["ACE_M4_C"];
		addItems ["M","G","R"];
	};
	
	case "PL": {};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};