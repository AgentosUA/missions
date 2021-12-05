#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//командование взвода
	case "OFF" : { //Комрот, комвзвод, замкомрот, зампол
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("TU_17Rnd_9x19_PYA",2);
		addWeapons ["ACE_AK74M","TU_PYA","NM_P168_Flora"];
		addItems ["R","B","M","G"];
	};
//МСВ
	case "SL" : { //Комод
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKS74P_PSO","NM_P168_Flora"];
		addItems ["R","B","M","G"];
	};
	case "TL" : { //Старший стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",2);
		addWeapons ["ACE_AK74M_1P78"];
		addItems ["R","M","B"];
	};
	case "MG" : { //Пулеметчик
		addMagazines("100Rnd_762x54_PK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["pzn_pkp"];
		addItems ["R","E","M"];
	};
	case "AMG" : { //Помощник пулеметчика
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKS74P","ACE_Rucksack_EAST"];
		addItems ["R","B","E","M"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",2]],true];
	};
	case "AT" : { //1й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_OG7_PGO7",1);
		addMagazines("ACE_PG7VL_PGO7",2);
		addWeapons ["ACE_AKS74P","ACE_RPG7V_PGO7"];
		addItems ["R","E","M"];
	};
	case "AAT" : { //2й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKS74P","pzn_ace_6sh11"];
		addItems ["R","E","M","B"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VL_PGO7",1],["ACE_OG7_PGO7",2]],true];
	};
	case "GL" : {
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKS74P_GL","ACE_Rucksack_EAST"];
		addItems ["R","M"];
		_unit setVariable ["ACE_weapononback","pzn_rpg26", true];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",8],["1Rnd_SMOKE_GP25",4]],true];
	};
	case "SN" : { // Sniper
		addMagazines("10Rnd_762x54_SVD",6);
		addMagazines("ACE_10Rnd_762x54_T_SVD",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["SVD"];
		addItems ["R","M"];
	};
	case "CRW" : { //Наводчики
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74_U"];
		addItems ["R","M"];
	};
	case "CRWT" : { //Наводчики
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74_U"];
		addItems ["R","M", "B"];
	};
	case "MED_SL" : { //Санитар КО
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",4);
		addWeapons ["ACE_AKS74P","NM_P168_Flora"];
		addItems ["R","M","G"];
	};
	case "MED" : { //Санитар
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",4);
		addWeapons ["ACE_AKS74P","ACE_Rucksack_EAST_Medic"];
		addItems ["R","M","G"];
	};

	case "PL" : { //Пилот
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U","Makarov"];
		addItems ["R","M","G"];
	};

	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};
