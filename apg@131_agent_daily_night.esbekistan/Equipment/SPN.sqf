#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//разведотделение
	case "SN_SL" : { //Командир отделения разведки
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_20Rnd_9x18_APS",2);
		addWeapons ["AK_107_pso","ACE_APSB","ACE_P168_RD90"];
		addItems ["B","M","G"];
	};
	case "SN" : { // Sniper
		addMagazines("ACE_5Rnd_127x99_B_TAC50",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_west",2);
		addMagazines("ACE_20Rnd_9x18_APS",2);
		addWeapons ["ACE_TAC50","ACE_APSB","ACE_ALICE_Backpack"];
		addItems ["R","M","G","K"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_5Rnd_127x99_B_TAC50",4]],true];
	};

	case "SN_OB" : { // Observer
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_20Rnd_9x18_APS",2);
		addMagazines("HandGrenade_west",2);
		addWeapons ["AK_107_CP","ACE_APSB","Binocular_Vector", "ACE_ALICE_Backpack"];
		addItems ["R","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Battery_Rangefinder",2],["ACE_POMZ_M",4]],true];
	};

	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};