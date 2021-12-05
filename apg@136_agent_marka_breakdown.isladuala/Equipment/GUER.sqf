#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	case "OFF": {// КС
		addMagazines("ACE_30Rnd_762x39_S_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKM","ACE_P168_RD90"];
		addItems ["R","B","M","G"];
	};
	case "SL" : { // КО
		addMagazines("ACE_30Rnd_762x39_S_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKM","ACE_P168_RD90"];
		addItems ["R","B","M","G"];
	};
	case "TL" : { //Старший стрелок
		addMagazines("ACE_30Rnd_762x39_S_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKM"];
		addItems ["R","B","M"];
	};
	case "AR": {// ПКМ
		addMagazines("AP_100Rnd_762x39_RPD",4);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AP_RPD"];
		addItems ["R","M","E"];
	};
	case "AAR": {// Помощник ПКМ
		addMagazines("ACE_30Rnd_762x39_S_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AKM", "ACE_ALICE_Backpack"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents", [["AP_100Rnd_762x39_RPD",3]],true];
	};
	case "AT": {//РПГшник
		addMagazines("ACE_30Rnd_762x39_S_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("PG7VL",2);
		addWeapons ["ACE_AKM", "RPG7V"];
		addItems ["R","M"];
	};
	case "AAT": {// Помошник РПГ
		addMagazines("ACE_30Rnd_762x39_S_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AKM", "ACE_ALICE_Backpack"];
		addItems ["R","M","B"];
		_unit setVariable ["ACE_RuckMagContents", [["PG7VL",2]],true];
	};
	case "SN": {// Пехотный снайпер
		addMagazines("TU_5Rnd_762x54",6);
		addMagazines("TU_5Rnd_762x54_T",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["TU_MOSIN_PU"];
		addItems ["R","M","B"];
	};
	case "MED": {//Медик
		addMagazines("ACE_30Rnd_762x39_S_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKMS","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","M","G"];
		//_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]],true]
	};
	case "GL" : { //Стрелок с ГП
		addMagazines("ACE_30Rnd_762x39_S_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["ACE_AKM_GL", "ACE_ALICE_Backpack"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents", [["1Rnd_HE_GP25",10]],true];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
