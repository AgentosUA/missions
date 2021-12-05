#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {

// Rifle squad
	case "SL" : { //Squad Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell", 1);
		addMagazines("IR_Strobe_Marker", 1);
		addMagazines("HandGrenade_West",2);
		addWeapons ["SCAR_L_STD_Mk4CQT", "EvMoscow"];
		addItems ["B","M","G","N"];
	};
	case "TL" : { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell", 1);
		addMagazines("IR_Strobe_Marker", 1);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_SCAR_L_ACOG", "ACE_Rucksack_MOLLE_Green"];
		addItems ["B","M","G","N"];
	};
	case "AR" : { // Automatic Rifleman
		addMagazines("100Rnd_762x51_M240",3);
		addMagazines("SmokeShell",1);
		addMagazines("IR_Strobe_Marker", 1);
		addMagazines("HandGrenade_West",2);
		addWeapons ["Mk_48_DES_EP1_Small", "ACE_Rucksack_MOLLE_Green"];
		addItems ["L","E","M","N"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 2]],true];
	};
	case "AT" : { // Anti-tank
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell", 1);
		addMagazines("IR_Strobe_Marker", 1);
		addMagazines("HandGrenade_West",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["SCAR_L_CQC_Holo", "M136", "M9"];
		addItems ["M","N"];
	};
	case "GL": { // Greanadier
		addMagazines("30Rnd_556x45_Stanag", 6);
		addMagazines("IR_Strobe_Marker", 1);
		addMagazines("1Rnd_Smoke_M203",2);
		addMagazines("1Rnd_HE_M203",4);
		addWeapons ["SCAR_L_CQC_EGLM_Holo","ACE_Rucksack_MOLLE_Green"];
		addItems ["B","M","N"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203", 6], ["1Rnd_Smoke_M203", 6]],true];
	};
	case "DM" : {// Marksman
		addMagazines("ACE_20Rnd_762x51_SB_M110",6);
		addMagazines("ACE_20Rnd_762x51_T_M110",2);
		addMagazines("15Rnd_9x19_M9",2);
		addMagazines("SmokeShell",1);
		addMagazines("IR_Strobe_Marker", 1);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M110", "ACE_Rucksack_MOLLE_Green", "M9"];
		addItems ["M","G","K","N"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_20Rnd_762x51_SB_M110", 4], ["ACE_20Rnd_762x51_T_M110", 2]],true];
	};
	
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
