#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
//Platoon command
	case "OFF": { // Officer
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["CZ805_A1_ACR","ACE_PRC119"];
		addItems ["R","B","M","G"];
	};
	case "PSG" : { //Platoon sergant
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["CZ805_A1_ACR","ACE_PRC119","M9"];
		addItems ["B","M","G"];
	};
	case "RATELO": { //RATELO
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["CZ805_A1_ACR","ACE_PRC119"];
		addItems ["R"];
	};
//Squad
	case "SL" : { //Squad Leader
		addMagazines("20Rnd_762x51_B_SCAR",6);
		addMagazines("ACE_20Rnd_762x51_T_SCAR",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["CZ805_B_GL_ACR","ACE_PRC119"];
		addItems ["R","B","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8],["1Rnd_SmokeGreen_M203",4]],true];
	};
	case "ISR" : { //Squad Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["CZ805_A1_ACR","ACE_MX2A"];
		addItems ["R","M","G"];
		_unit addBackpack "MAV_RAVEN_BACKPACK";
	};
	case "ISRS" : { //Squad Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["CZ805_A1_GL_ACR","ACE_MX2A","ACE_HuntIR_monitor","ACE_Coyote_Pack_Wood"];
		addItems ["R","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8],["1Rnd_SmokeGreen_M203",4], ["ACE_HuntIR_M203", 5]],true];
	};
	case "TL" : { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",2);
		addWeapons ["CZ805_A1_ACR","ACE_Coyote_Pack_Wood"];
		addItems ["R","B","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8],["ACE_SSWhite_M203",4]],true];
	};
	case "RF" : { // Rifleman
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["CZ805_A1_ACR"];
		addItems ["R","B","M"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8],["ACE_SSWhite_M203",4]],true];
	};
	case "GL": { // Greanadier
		addMagazines("20Rnd_762x51_B_SCAR",6);
		addMagazines("ACE_20Rnd_762x51_T_SCAR",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",2);
		addWeapons ["CZ805_B_GL_ACR","ACE_Coyote_Pack_Wood"];
		addItems ["R", "M"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8],["ACE_SSWhite_M203",4]],true];
	};
	case "AR" : { // Automatic Rifleman
		addMagazines("100Rnd_762x51_M240",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["BAF_L7A2_GPMG_Small"];
		addItems ["R","E","M"];
	};
	case "AT": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_PG7VL_PGO7",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["CZ805_A1_ACR","ACE_RPG7V_PGO7"];
		addItems ["R", "M"];
		_unit setVariable ["ACE_weapononback", "ACE_BackPack_ACR",true];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VL_PGO7",2],["ACE_OG7_PGO7",2]],true];
	};
	case "DM" : { // Marksman
		addMagazines("10Rnd_762x54_SVD",6);
		addMagazines("ACE_10Rnd_762x54_T_SVD",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["SVD"];
		addItems ["R", "M"];
	};
	case "MED": { //Medic
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("10Rnd_9x19_Compact",2);
		addMagazines("SmokeShell",4);
		addWeapons ["CZ805_A1_ACR","CZ_75_D_COMPACT", "ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","G","M"];
	};
//crew
	case "CRWL": { // Crewman
		addMagazines("ACE_30Rnd_9x19_S_EVO",4);
		addWeapons ["Evo_mrad_ACR", "ACE_PRC119"];
		addItems ["R","B","G"];
	};

	case "CRW": { // Crewman
		addMagazines("ACE_30Rnd_9x19_S_EVO",4);
		addWeapons ["Evo_mrad_ACR"];
		addItems ["R", "M","G"];
	};
	case "PL": { //Pilot
		addMagazines("ACE_30Rnd_9x19_S_EVO",4);
		addWeapons ["Evo_mrad_ACR"];
		addItems ["R","M","G"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
