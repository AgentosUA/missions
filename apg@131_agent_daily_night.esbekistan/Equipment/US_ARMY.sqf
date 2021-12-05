#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	case "OFF": { // Officer
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("7Rnd_45ACP_1911",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);		
		addWeapons ["ACE_M4A1_Eotech","Colt1911","NM_PRC119_MTP"];
		addItems ["R","B","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag",4]],true];
	};
	case "RATELO": { //RATELO
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);		
		addWeapons ["ACE_M4A1_Eotech","NM_PRC119_MTP"];
		addItems ["R","B","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag",4]],true];
	};
	case "SL_MED": { //Medic
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["ACE_SOC_M4A1_ACOG","NM_PRC119_MTP"];
		addItems ["R","B","M","G"];
	};
	case "MED": { //Medic
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);		
		addMagazines("SmokeShell",4);
		addWeapons ["ACE_M4A1_Eotech","ACE_CharliePack_ACU_Medic"];
		addItems ["R","M","G"];
	};
//Rifle squad
	case "SL": { // Squad Lider
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("7Rnd_45ACP_1911",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["ACE_SOC_M4A1_ACOG","Colt1911","NM_PRC119_MTP"];
		addItems ["R","B","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag",6]],true];
	};
	case "TL": { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["ACE_SOC_M4A1_ACOG","ACE_CharliePack_Multicam"];
		addItems ["R","B","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag",10]],true];
	};
	case "GL": { // Greanadier
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_1Rnd_HE_M203",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["M4A1_HWS_GL_camo","ACE_CharliePack_Multicam"];
		addItems ["R","B","M"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag",4],["ACE_1Rnd_HE_M203",10],["1Rnd_Smoke_M203",5]],true];
	};	
	case "AR" : { // Automatic Rifleman
		addMagazines("200Rnd_556x45_M249",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249_EP1","ACE_CharliePack_Multicam"];
		addItems ["R","B","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["200Rnd_556x45_M249",4]],true];
	};
	case "LAT": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("MAAWS_HEAT",2);
		addWeapons ["ACE_M4A1_Eotech","ACE_CarlGustav_M3","ACE_CharliePack_Multicam"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_MAAWS_HE",2]],true];
		addItems ["R","M"];
	};
	case "DM" : { //Designated marksman
		addMagazines("ACE_20Rnd_762x51_S_M110",6);
		addMagazines("ACE_20Rnd_762x51_T_M110",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["ACE_M110","ACE_CharliePack_Multicam"];
		addItems ["R","B","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_20Rnd_762x51_S_M110",4]],true];
	};
//crew
	case "CCRW": { // Crewman COM
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",4);
		addWeapons ["ACE_SOC_M4A1","NM_PRC119_MTP"];
		addItems ["R","B","M","G"];
	};
	case "CRW": { // Crewman
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",4);
		addWeapons ["ACE_SOC_M4A1"];
		addItems ["R","B","M","G"];
	};

	case "PL": { //Pilot
		addMagazines("30Rnd_9x19_MP5",4);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["MP5A5","M9"];
		addItems ["M","G","N"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
