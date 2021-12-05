#include "macros.hpp"
_unit = _this select 0;
_type = toUpper(_this select 1);
	switch _type do {
    case "OFF" : { // Officer
		addMagazines("ACE_30Rnd_556x45_S_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addMagazines("ACE_1Rnd_HE_M203",2);
		addWeapons ["BAF_L85A2_UGL_ACOG","ACE_P226"];
		addItems ["R","M","G","B","L"];
	};
	case "RAT" : { // Signaller
		addMagazines("ACE_30Rnd_556x45_S_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("HandGrenade_west",2);
		addMagazines("SmokeShell",2);
		addWeapons ["BAF_L85A2_RIS_Holo","ACE_P226","ACE_PRC119"];
		addItems ["R","M","L"];
	};
	case "SL" : { // Section commander Corporal
		addMagazines("ACE_30Rnd_556x45_S_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);

		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("HandGrenade_west",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_1Rnd_HE_M203",2);
		addWeapons ["BAF_L85A2_UGL_ACOG","ACE_P226","ACE_PRC119"];
		addItems ["R","M","G","B","L"];
	};
	case "TL" : { // Section leader Lance Corporal
		addMagazines("ACE_30Rnd_556x45_S_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["BAF_L85A2_RIS_ACOG","ACE_P226","ACE_AssaultPack_BAF"];
		addItems ["R","M","G","L"];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
	case "BR" : {//Section Grenadier Breach
		addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_8Rnd_12Ga_Slug",2);
		addMagazines("ACE_1Rnd_HE_M203",2);
		addWeapons ["BAF_L85A2_UGL_Holo","ACE_P226","ACE_AssaultPack_BAF"];
		addItems ["R","M","L"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_1Rnd_HE_M203",12],["ACE_8Rnd_12Ga_Slug",4]],true];
		_unit setVariable ["ACE_weapononback","M1014",true];
	};
	case "GL" : {//Section Grenadier
		addMagazines("ACE_30Rnd_556x45_S_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addMagazines("ACE_1Rnd_HE_M203",2);
		addWeapons ["BAF_L85A2_UGL_Holo_BAF","ACE_M72A2","ACE_P226","ACE_AssaultPack_BAF"];
		addItems ["R","M","L"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_1Rnd_HE_M203",12]],true];
	};
	case "LMG" : { // Section LMG
		addMagazines("100Rnd_556x45_M249",2);
		addMagazines("100Rnd_556x45_M249",1);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["BAF_L110A1_Aim","ACE_P226","ACE_BackPack_ACR"];
		addItems ["R","M","L","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_556x45_M249",2]],true];
	};
	case "LSW" : { // Section LSW
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_30Rnd_556x45_S_Stanag",6);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["BAF_L86A2_ACOG","ACE_P226","ACE_AssaultPack_BAF"];
		addItems ["R","L","M"];
	};
	case "SS" : { // Section Sharpshooter
		addMagazines("ACE_20Rnd_762x51_T_SCAR",2);
		addMagazines("ACE_20Rnd_762x51_S_SCAR",6);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["L129A1_ACOG_B","ACE_P226","ACE_AssaultPack_BAF"];
		addItems ["R","L","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_20Rnd_762x51_S_SCAR",4]],true];
	};

	case "MED" : { // Medic
		addMagazines("ACE_30Rnd_556x45_S_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",4);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addWeapons ["BAF_L85A2_RIS_Holo","ACE_P226","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","M","G","L"];
	};

	case "CRWSL" : { // CRW SL
		addMagazines("ACE_30Rnd_556x45_S_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["BAF_L85A2_RIS_Holo"];
		addItems ["R","M","G","L","B"];
	};

	case "CRW" : { // CRW
		addMagazines("ACE_30Rnd_556x45_S_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["BAF_L85A2_RIS_Holo"];
		addItems ["R","M","G","L"];
	};

	// SAS

	case "WPL" : {//Patrol Leader FAC
		addMagazines("ACE_30Rnd_556x45_SB_S_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["ACE_M4A1_Aim_SD","ACE_P226","ACE_MX2A","ACE_PRC119"];
		addItems ["R","M","G","L"];
	};
	case "WPR" : {//Patrol Signal
		addMagazines("ACE_30Rnd_556x45_SB_S_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addWeapons ["ACE_M4A1_Aim_SD","ACE_P226","ACE_M72"];
		addItems ["R","L","M","G","N","B"];
	};
	case "WPS" : {//Patrol Demolition
		addMagazines("ACE_30Rnd_556x45_SB_S_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addWeapons ["ACE_M4A1_Aim_SD","ACE_P226","ACE_Coyote_Pack_Wood"];
		addItems ["R","L","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb",2],["ACE_30Rnd_556x45_SB_S_Stanag",6]],true];
	};
	case "WPM" : {//Patrol Medic
		addMagazines("ACE_30Rnd_556x45_SB_S_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("HandGrenade_west",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4A1_Aim_SD","ACE_P226","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","L","M","G","N"];
	};

	case "PL" : {// Pilot
		addMagazines("30Rnd_556x45_Stanag",2);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addWeapons ["BAF_L85A2_RIS_Holo","ACE_P226"];
		addItems ["R","L","M","G","N"];
	};

	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};