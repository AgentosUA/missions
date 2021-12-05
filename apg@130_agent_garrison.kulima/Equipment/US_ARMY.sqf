#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//Platoon command
	case "OFF": { // Officer
		addMagazines("ACE_30Rnd_556x45_S_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("7Rnd_45ACP_1911",2);
		addWeapons ["M16A2","Colt1911","usm_pack_st138_prc77"];
		addItems ["R","B","M","L","G"];
	};
	case "PSG" : { //Platoon sergeant
		addMagazines("ACE_30Rnd_556x45_S_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("7Rnd_45ACP_1911",2);
		addWeapons ["M16A2","ACE_M72A2","Colt1911"];
		addItems ["R","B","M","L"];
	};
	case "RATELO": { //RATELO
		addMagazines("ACE_30Rnd_556x45_S_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2","usm_pack_st138_prc77"];
		addItems ["R","M","L"];
	};
	case "MED": { //Medic
		addMagazines("ACE_30Rnd_556x45_S_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",4);
		addWeapons ["M16A2","usm_pack_alice_medic"];
		addItems ["R","M","L"];
	};
//Squad
	case "SL" : { //Squad Leader
		addMagazines("ACE_30Rnd_556x45_S_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2","usm_pack_st138_prc77"];
		addItems ["R","B","M","L","G"];
	};
	case "TL" : { // FT Leader
		addMagazines("ACE_30Rnd_556x45_S_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_m16a2_scope","usm_pack_alice"];
		addItems ["R","B","M","L"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_30Rnd_556x45_S_Stanag",4]],true];
	};
	case "AR" : { // Automatic Rifleman
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249","usm_pack_alice"];
		addItems ["R","E","L","M"];
		_unit setVariable ["ACE_RuckMagContents",[["200Rnd_556x45_M249",2]],true];
	};
	case "GL" : { // Grenadier
		addMagazines("ACE_30Rnd_556x45_S_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("ACE_1Rnd_HE_M203",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2GL","usm_pack_alice"];
		addItems ["R","L","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_1Rnd_HE_M203",8],["FlareWhite_M203",2]],true];
	};
	case "AT": { // Rifleman AT
		addMagazines("ACE_30Rnd_556x45_S_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2","ACE_M72A2"];
		addItems ["R","M","L"];
	};
	case "RF" : { // Rifleman
		addMagazines("ACE_30Rnd_556x45_S_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2"];
		addItems ["R","M","L"];
	};
//weapon squad
	case "DR" : { // Rifleman AT (M47 Dragon)
		addMagazines("ACE_30Rnd_556x45_S_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2","M47Launcher_EP1","ACE_M47_Daysight"];
		addItems ["R","M","L"];
	};
	case "ADR" : { // Assistant dragon
		addMagazines("ACE_30Rnd_556x45_S_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2","M47Launcher_EP1"];
		addItems ["R","B","M","L"];
	};	
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};