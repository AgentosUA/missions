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
		addWeapons ["ACE_AK74M","ACE_P168_RD90","Makarov"];
		addItems ["R","B","M","G"];
	};
	case "RD" : { //Радист
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_P168_RD90"];
		addItems ["R","B","M","G"];
	};
//МСВ
	case "SL" : { //Комод
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",2);
		addWeapons ["ACE_AK74M_GL","ACE_P168_RD90"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",6]],true];
		addItems ["R","B","M","G"];
	};
	case "TL" : { //Старший стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_1P29"];
		addItems ["R","B","M"];
	};
	case "MG" : { //Пулеметчик
		addMagazines("100Rnd_762x54_PK",3);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["pzn_pkp","ACE_Rucksack_RD90"];
		addItems ["R","E","M","B"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]],true];
	};
	case "AT" : { //Стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","pzn_rpg26"];
		addItems ["R","E","M","B"];
	};
	case "GL" : { //Стрелок с ГП РПГ26
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",2);
		addWeapons ["ACE_AK74M_GL","pzn_ace_6sh11"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",10]],true];
	};
//стрелковое отделение
	case "SN" : { //Снайпер
		addMagazines("10Rnd_762x54_SVD",7);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["pzn_svd_p"];
		addItems ["R","B","M"];
	};
//отделение сбора и эвакуации раненых
	case "MED_SL" : { //Командир отделения - санитарный инструктор
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",4);
		addWeapons ["ACE_AK74M","ACE_Rucksack_EAST_Medic"];
		addItems ["R","M","G"];
	};
	case "MED" : { //Санитар
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",4);
		addWeapons ["ACE_AK74M","ACE_Rucksack_EAST_Medic"];
		addItems ["R","M"];
	};
//Снайперская пара
	case "HSN" : { //Снайпер КСВК
		addMagazines("5Rnd_127x108_KSVK",5);
		addMagazines("30Rnd_545x39_AK",2);
		addMagazines("ACE_RDGM",1);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["KSVK","ACE_SSVZ","Binocular_Vector","ACE_Rucksack_RD90"];
		addItems ["R","N","B","M","G","K"];
		_unit setVariable ["ACE_weapononback","ACE_AK74M",true];
		_unit setVariable ["ACE_RuckMagContents",[["5Rnd_127x108_KSVK",8]],true];
	};
	case "ASN" : { //Снайпер-наблюдатель
		addMagazines("10Rnd_762x54_SVD",5);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("30Rnd_545x39_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["SVD_des_EP1","ACE_SSVZ","Binocular_Vector","ACE_P168_RD90"];
		addItems ["R","N","K","G"];
		_unit setVariable ["ACE_weapononback","ACE_AK74M",true];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",10]],true];
	};
//экипаж
	case "CRW" : { //Экипаж
		addMagazines("30Rnd_545x39_AK",3);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U"];
		addItems ["R","M"];
	};
	case "CCRW" : { //Экипаж
		addMagazines("30Rnd_545x39_AK",3);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U"];
		addItems ["R","M","G","B"];
	};
	case "PL" : { //Пилот
		addMagazines("30Rnd_545x39_AK",3);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U"];
		addItems ["R","M"];
	};
};