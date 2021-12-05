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
		addWeapons ["AKS_74_pso","ACE_P168_RD90","Makarov"];
		addItems ["R","B","M","G"];
	};
//МСВ
	case "SL" : { //Комод
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74_pso","ACE_P168_RD90"];
		addItems ["R","B","M","G"];
	};
	case "TL" : { //Старший стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKS74P_PSO","ACE_RPG22"];
		addItems ["R","B","M","G"];
	};
	case "MG" : { //Пулеметчик
		addMagazines("100Rnd_762x54_PK",3);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["Pecheneg"];
		addItems ["R","M","E"];
	};
	case "AMG" : { //Помошник пулеметчика
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKS74P","ACE_Rucksack_RD90"];
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
		addWeapons ["ACE_AKS74P","ACE_RPG7V_PGO7"];
		addItems ["R","M","E"];
	};
	case "AAT" : { //2й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKS74P","ACE_Backpack_RPG"];
		addItems ["R","B","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VL_PGO7",4]],true];
	};
	case "GL" : { //Стрелок с ГП
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",8);
		addWeapons ["ACE_AKS74P_GL"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",6],["ACE_1Rnd_HE_GP25P",4],["1Rnd_SMOKE_GP25",4]],true];
		addItems ["R","M"];
	};
	case "GLAT" : { //Стрелок с ГП РПГ27
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["ACE_AKS74P_GL","ACE_RPG22"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",6],["ACE_1Rnd_HE_GP25P",4],["1Rnd_SMOKE_GP25",4]],true];
		addItems ["R","M"];
	};
	case "LAT" : { // Стрелок РПГ-27
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKS74P","ACE_RPG22"];
		addItems ["R","M"];
	};
	case "RF" : { // Стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKS74P"];
		addItems ["R","M"];
	};

//стрелковое отделение
	case "SN" : { //Снайпер
		addMagazines("10Rnd_762x54_SVD",5);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("30Rnd_545x39_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["pzn_svd_p","ACE_Rucksack_RD90"];
		addItems ["R","B","M","G"];
		_unit setVariable ["ACE_weapononback","ACE_AKS74P",true];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",4],["ACE_10Rnd_762x54_T_SVD",2],["30Rnd_545x39_AK",2]],true];
	};

	// AT-group

	case "ATG" : { //1й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_RPG29_PG29",3);
		addMagazines("ACE_RDGM",1);
		addMagazines("HandGrenade_East",1);
		addWeapons ["ACE_AKS74P","ACE_RPG29"];
		addItems ["R","M","E"];
	};
	case "AATG" : { //2й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("pzn_f1",2);
		addWeapons ["ACE_AKS74P","ACE_Backpack_RPG"];
		addItems ["R","B","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_RPG29_TBG29",2],["ACE_RPG29_PG29",1]],true];
	};
	
//отделение сбора и эвакуации раненых
	case "MED_SL" : { //Командир отделения - санитарный инструктор
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",4);
		addWeapons ["ACE_AK74M","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","M"];
	};
	case "MED" : { //Санитар
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",4);
		addWeapons ["ACE_AK74M","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","M"];
	};
	case "MED_CRW" : { //Санитар
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R"];
	};
//экипаж
	case "CCRW" : { //Командир экипажа
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U","Makarov"];
		addItems ["R","M","G"];
	};
	case "CRW" : { //Экипаж
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U"];
		addItems ["R","M","G"];
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
