#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	case "OFF": {// КС
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKM","ACE_P168_RD90"];
		addItems ["R","B","M","G"];
	};
	case "SL" : { // КО
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKM","ACE_P168_RD90"];
		addItems ["R","B","M","G"];
	};
	case "TL" : { //Старший стрелок
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKM"];
		addItems ["R","B","M"];
	};
	case "AR": {// Автоматическое оружие РПД
		addMagazines("AP_100Rnd_762x39_RPD",4);
		addMagazines("HandGrenade_East",3);
		addWeapons ["AP_RPD"];
		addItems ["R","M","E"];
	};
	case "RM": {// Стрелок
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AKM"];
		addItems ["R","M"];
	};
	case "AT": {//РПГшник
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("PG7VL",2);
		addWeapons ["ACE_AKM", "RPG7V"];
		addItems ["R","M"];
	};
	case "AAT": {// Помошник РПГ
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AKM", "ACE_Backpack_RPG"];
		addItems ["R","M","B"];
		_unit setVariable ["ACE_RuckMagContents", [["PG7VL",2]],true];
	};
	case "SN": {// Пехотный снайпер
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("10Rnd_762x54_SVD",6);
		addMagazines("ACE_10Rnd_762x54_T_SVD",2);
		addWeapons ["ACE_SVD_Bipod"];
		addItems ["R","M","B"];
	};
	case "MED": {//Медик
		addMagazines("ACE_10Rnd_762x39_B_SKS",6);
		addMagazines("ACE_10Rnd_762x39_T_SKS",2);
		addWeapons ["ACE_SKS","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","M","G"];
		//_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]],true]
	};
	case "GL" : { //Стрелок с ГП
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["ACE_AKM_GL", "ACE_ALICE_Backpack"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents", [["1Rnd_HE_GP25",10]],true];
	};

	case "CRWL" : { // CREW SL
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74_U"];
		addItems ["R","M","B"];
	};

	case "CRW" : { // CREW
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74_U"];
		addItems ["R","M"];
	};

	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
