#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//командование взвода
	case "OFF" : { //Командир взвода
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_PSO","NM_P168_EMR","Makarov"];
		addItems ["R","B","M","G"];
	};
//МСВ
	case "SL" : { //Комод
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_PSO","NM_P168_EMR"];
		addItems ["R","B","M","G"];
	};
	case "SL_GP" : { //Комод с ГП
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["ACE_AK74M_GL","NM_P168_EMR"];
		addItems ["R","B","M","G"];
	};
	case "TL" : { //Старший стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_1P29","ACE_RPG22"];
		addItems ["R","B","M","G"];
	};
	case "MG" : { //Пулеметчик
		addMagazines("100Rnd_762x54_PK",3);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["pzn_pkp"];
		addItems ["R","M","E"];
	};
	case "AMG" : { //Помошник пулеметчика
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_Rucksack_RD90"];
		addItems ["R","B","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]],true];
	};
	case "AR" : { //Пулеметчик РПК
		addMagazines("ACE_75Rnd_545x39_T_RPK",6);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_RPK74M_1P29"];
		addItems ["R","M","E"];
	};
	case "AT" : { //1й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_PG7VL_PGO7",3);
		addWeapons ["ACE_AK74M","ACE_RPG7V_PGO7"];
		addItems ["R","M","E"];
	};
	case "AAT" : { //2й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_Backpack_RPG"];
		addItems ["R","B","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VL_PGO7",2],["ACE_OG7_PGO7",2]],true];
	};
	case "GL" : { //Стрелок с ГП
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",8);
		addWeapons ["ACE_AK74M_GL"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",6],["ACE_1Rnd_HE_GP25P",4],["1Rnd_SMOKE_GP25",4]],true];
		addItems ["R","M"];
	};
	case "GLAT" : { //Стрелок с ГП РПГ27
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["ACE_AK74M_GL","ACE_RPG22"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",6],["ACE_1Rnd_HE_GP25P",4],["1Rnd_SMOKE_GP25",4]],true];
		addItems ["R","M"];
	};
	case "LAT" : { // Стрелок РПГ-27
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_RPG22"];
		addItems ["R","M"];
	};
	case "RF" : { // Стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M"];
		addItems ["R","M"];
	};

//стрелковое отделение
	case "SN" : { //Снайпер
		addMagazines("10Rnd_762x54_SVD",5);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("30Rnd_545x39_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["pzn_svd_p","ACE_Rucksack_RD90"];
		addItems ["R","B","M","G"];
		_unit setVariable ["ACE_weapononback","ACE_AK74M",true];
	};
	
//отделение сбора и эвакуации раненых
	case "MED_SL" : { //Командир отделения - санитарный инструктор
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",4);
		addMagazines("8Rnd_9x18_Makarov",2);
		addWeapons ["ACE_AK74M","Makarov","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","M","G"];
	};
	case "MED" : { //Санитар
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",4);
		addMagazines("8Rnd_9x18_Makarov",2);
		addWeapons ["ACE_AK74M","Makarov","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","M","G"];
	};
	case "MED_CRW" : { //Санитар
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",4);
		addMagazines("8Rnd_9x18_Makarov",2);
		addWeapons ["ACE_AK74M","Makarov","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","M","G"];
	};
//экипаж
	case "CCRW" : { //Командир экипажа
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDGM",4);
		addWeapons ["ACE_AK74M","Makarov"];
		addItems ["R","M","G","B"];
	};
	case "CRW" : { //Экипаж
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M"];
		addItems ["R","M"];
	};
	case "PL" : { //Пилот
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U","Makarov"];
		addItems ["R","M","G"];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};
