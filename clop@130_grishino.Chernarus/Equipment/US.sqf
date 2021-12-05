#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
//Platoon command
    case "OFF": { //Platoon commander
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addMagazines("7Rnd_45ACP_1911",2);
		addWeapons ["ACE_M4A1_ACOG","Colt1911","ACE_PRC119"];
		addItems ["M","B","G"];
	};	
//Squad	
	case "SL": { // Squad Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addMagazines("7Rnd_45ACP_1911",2);
		addWeapons ["ACE_M4A1_ACOG","Colt1911","ACE_PRC119"];
		addItems ["M","B","G","L"];
	};
	case "TL": { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4A1_ACOG","ACE_Rucksack_MOLLE_Green"];
		addItems ["M","B","L"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag",6]],true];
	};
	case "GL": { // Grenadier
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_1Rnd_HE_M203",2);
		addWeapons ["ACE_M4A1_AIM_GL_F","ACE_Rucksack_MOLLE_Green"];
		addItems ["M","B","L"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_1Rnd_HE_M203",8],["1Rnd_Smoke_M203",5]],true];
	};
	case "AR" : { // Automatic Rifleman 
		addMagazines("ACE_200Rnd_556x45_T_M249",2);
		addMagazines("200Rnd_556x45_M249",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M249_Small","ACE_Rucksack_MOLLE_Green"];
		addItems ["M","E","L"];
	};
	case "AT": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4A1_Eotech","M136"];
		addItems ["M","L"];
	};
	case "DM": { // Designated Marksman
		addMagazines("ACE_20Rnd_762x51_S_M110",6);
		addMagazines("30Rnd_556x45_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M110","ACE_Rucksack_MOLLE_Green"];
		addItems ["M","G","B","L"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_20Rnd_762x51_T_M110",2],["30Rnd_556x45_Stanag",2]],true];
		_unit setVariable ["ACE_weapononback","ACE_M4A1_Eotech",true];
	};
//Экипаж
	case "CRW": { // Экипажник
		addMagazines("30Rnd_9x19_MP5",8);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_MP5A5"];
		addItems ["M","G","E"];
	};
	case "PL": { // Пилот 
		addMagazines("30Rnd_9x19_MP5",8);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_MP5A5","ACE_ParachuteRoundPack"];
		addItems ["M","G","E"];
	};
	case "MED": { //Medic
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",4);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M4A1_Eotech","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["G","M"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
