#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
//Platoon command
	case "OFF": { // Officer
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_ACOG","ACE_PRC119_MAR","M9"];
		addItems ["ACE_MX2A","M","G"];
	};
	case "PSG" : { //Platoon sergant
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_ACOG","M9"];
		addItems ["ACE_MX2A","M","G"];
	};
//Squad
	case "SL" : { //Squad Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4A1_ACOG","ACE_PRC119_MAR"];
		addItems ["ACE_MX2A","M","G"];
	};
	case "TL" : { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",2);
		addWeapons ["ACE_M4A1_RCO_GL","ACE_Rucksack_MOLLE_WMARPAT"];
		addItems ["B","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8],["1Rnd_Smoke_M203",4]], true];
	};
	case "AR" : { // Automatic Rifleman
		addMagazines("200Rnd_556x45_M249",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M249_PIP_ACOG"];
		addItems ["M"];
	};

	case "AAR" : { // Assistant Automatic Rifleman
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M4A1_Eotech","ACE_Rucksack_MOLLE_WMARPAT"];
		addItems ["M"];
		_unit setVariable ["ACE_RuckMagContents",[["200Rnd_556x45_M249", 4]], true];
	};

	case "LAT": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M4A1_Eotech","M136"];
		addItems ["M"];
	};

	case "DM" : { // Marksman
		addMagazines("20Rnd_762x51_DMR",8);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["kuz_M39"];
		addItems ["B","M"];
	};
	case "MED": { //Medic
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",4);
		addWeapons ["ACE_M4A1_Eotech","ACE_Rucksack_MOLLE_WMARPAT_Medic"];
		addItems ["M","G"];
	};
	case "CRW": { // TOW Drivers
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4_C"];
		addItems ["M","G"];
	};
	case "PL": { //Pilot
		addMagazines("30Rnd_9x19_MP5",4);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["MP5A5","M9"];
		addItems ["M","G"];
	};

	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};