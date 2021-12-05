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
		addWeapons ["AKS_74_pso","ACE_P168_RD90","ACE_SSVZ"];
		addItems ["R","B","M","G"];
	};
	case "TL" : { //Старший стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["pzn_ak_74n_1p29","ACE_RSHG1"];
		addItems ["R","B","M","G"];
	};
	case "MG" : { //Пулеметчик
		addMagazines("100Rnd_762x54_PK",3);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["PK"];
		addItems ["R","M","E"];
	};
	case "AMG" : { //Помошник пулеметчика
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74","ACE_Rucksack_RD90"];
		addItems ["R","B","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]],true];
	};
	case "AT" : { //1й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_PG7VL_PGO7",3);
		addWeapons ["AKS_74","ACE_RPG7V_PGO7"];
		addItems ["R","M","E"];
	};
	case "AAT" : { //2й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74","ACE_Backpack_RPG"];
		addItems ["R","B","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VL_PGO7",4]],true];
	};
	case "GL" : { //Стрелок с ГП
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",8);
		addWeapons ["ACE_AKS74_GP25"];
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
		addWeapons ["ACE_AKS74_GP25","ACE_RPG22"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",6],["ACE_1Rnd_HE_GP25P",4],["1Rnd_SMOKE_GP25",4]],true];
		addItems ["R","M"];
	};
	case "RF" : { // Стрелок
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74"];
		addItems ["R","M"];
	};

//стрелковое отделение
	case "SN" : { //Снайпер
		addMagazines("10Rnd_762x54_SVD",5);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("30Rnd_545x39_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["SVD","ACE_SSVZ","ACE_Rucksack_RD90"];
		addItems ["R","B","M","G"];
		_unit setVariable ["ACE_weapononback","AKS_74",true];
	};
	
//отделение сбора и эвакуации раненых
	case "MED_SL" : { //Командир отделения - санитарный инструктор
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",4);
		addWeapons ["AKS_74","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","M"];
	};
	case "MED" : { //Санитар
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",4);
		addWeapons ["AKS_74","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","M"];
	};
//экипаж
	case "CCRW" : { //Командир экипажа
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U","Makarov"];
		addItems ["R","M","G","B"];
	};
	case "CRW" : { //Экипаж
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U"];
		addItems ["R","M"];
	};

	case "PL" : { //Пилот
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U"];
		addItems ["R","M","G"];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};
