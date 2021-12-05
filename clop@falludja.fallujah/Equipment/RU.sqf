#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
// Взводный
		case "OFF": { // КС
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addWeapons ["ACE_AK74M_PSO","Makarov","ACE_P159_RD90"];
		addItems ["M","B","G"];
	};
// Отделение
		case "SL": { // Комод
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addWeapons ["ACE_AK74M_PSO","Makarov","ACE_P159_RD90"];
		addItems ["M","B","G"];
	};
	case "TL": { // Старший стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AK74M_1P29"];
		addItems ["M","B","G"];
	};
	case "MG": { // Пулеметчик
		addMagazines("100Rnd_762x54_PK",4);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["PK"];
		addItems ["M","E"];
	};
	case "AMG": { // Помощник пулеметчика
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AK74M","ACE_Rucksack_RD90"];
		addItems ["M","B"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]],true];
	};	
	case "AT": { // 1й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("PG7VL",2);
		addWeapons ["ACE_AK74M","ACE_RPG7V_PGO7"];
		addItems ["M"];
	};
		case "AAT": { //2й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AK74M","pzn_ace_6sh11"];
		addItems ["M","B"];
		_unit setVariable ["ACE_RuckMagContents",[["PG7VL",2],["OG7",2]],true];
	};
	case "GL": { //Стрелок с ГП 
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("1Rnd_HE_GP25",2);
		addWeapons ["ACE_AK74M_GL","ACE_Rucksack_RD90"];
		addItems ["M"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",8],["1Rnd_SMOKE_GP25",5]],true];
	};
	case "DM": { //Снайпер
		addMagazines("10Rnd_762x54_SVD",6);
		addMagazines("30Rnd_545x39_AK",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_SVD_Bipod","ACE_Rucksack_RD90"];
		addItems ["M","G","B"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_10Rnd_762x54_T_SVD",2],["30Rnd_545x39_AK",2]],true];
		_unit setVariable ["ACE_weapononback","ACE_AK74M",true];
	};	
// Экипаж
		case "MED": { //Санитар
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",4);
		addWeapons ["ACE_AK74M","ACE_Rucksack_EAST_Medic"];
		addItems ["M","G"];
	};
		case "CRW": { //Экипаж
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U"];
		addItems ["M","E","G"];
	};
		case "PL": { //Пилот
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U","ACE_ParachuteRoundPack"];
		addItems ["M","E","G"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
