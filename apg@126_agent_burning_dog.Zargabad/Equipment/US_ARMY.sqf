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
		addWeapons ["M16A2","Colt1911","usm_pack_st138_prc77"];
		addItems ["R","B","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag",4]],true];
	};
	case "RATELO": { //RATELO
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);		
		addWeapons ["M16A2","usm_pack_st138_prc77"];
		addItems ["R","B","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag",4]],true];
	};
	case "MED": { //Medic
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);		
		addMagazines("SmokeShell",4);
		addWeapons ["M16A2","usm_pack_m5_medic"];
		addItems ["R","M","G"];
	};
//Rifle squad
	case "SL": { // Squad Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("7Rnd_45ACP_1911",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["ACE_m16a2_scope","Colt1911","usm_pack_st138_prc77"];
		addItems ["R","B","M","G"];
	};
	case "TL": { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["M16A2"];
		addItems ["R","B","M"];
	};
	case "GL": { // Greanadier
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_1Rnd_HE_M203",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["ACE_M16A2GL_UP","usm_pack_alice"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag",4],["ACE_1Rnd_HE_M203",10],["1Rnd_Smoke_M203",5]],true];
	};	
	case "AR" : { // Automatic Rifleman
		addMagazines("200Rnd_556x45_M249",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249","usm_pack_alice"];
		addItems ["R","B","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["200Rnd_556x45_M249",2]],true];
	};
	case "LAT": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["M16A2","M136"];
		addItems ["R","M"];
	};
	case "DM" : { //Designated marksman
		addMagazines("20Rnd_762x51_DMR",6);
		addMagazines("ACE_20Rnd_762x51_T_DMR",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["ACE_M14_ACOG","usm_pack_alice"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents",[["20Rnd_762x51_DMR",4]],true];
	};

// Sniper team

	case "SN_SL" : { // Sniper team leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);		
		addWeapons ["TU_XM177_Scope","NM_ANPRC77_Black"];
		addItems ["R","B","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag",4]],true];
	};

	case "SN" : { // Sniper
		addMagazines("TU_10Rnd_762x51_LR_M24",6);
		addMagazines("TU_10Rnd_762x51_M24",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);		
		addWeapons ["TU_M24A2_D","ACE_Coyote_Pack_Black"];
		addItems ["R","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["TU_10Rnd_762x51_LR_M24",4]],true];
	};

	case "SN_OB" : { // Observer
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["TU_XM177_AIM","Binocular_Vector", "ACE_Coyote_Pack_Black"];
		addItems ["R","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Battery_Rangefinder",2]],true];
	};
	

	case "PL": { //Pilot
		addMagazines("30Rnd_9x19_MP5",4);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["MP5A5","M9"];
		addItems ["M","G"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
