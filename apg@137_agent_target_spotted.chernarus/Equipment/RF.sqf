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
		addWeapons ["ACE_AK74M_PSO","ACE_P168_RD90","Makarov"];
		addItems ["B","M","G"];
	};
//МСВ
	case "SL" : { //Комод
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_PSO","ACE_P168_RD90"];
		addItems ["B","M","G"];
	};
	case "TL" : { //Старший стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_1P29"];
		addItems ["B","M"];
	};
	case "MG" : { //Пулеметчик
		addMagazines("100Rnd_762x54_PK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["PK"];
		addItems ["E","M"];
	};
	case "AMG" : { //Помошник пулеметчика
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_Rucksack_RD90"];
		addItems ["B","E","M"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]],true];
	};
	case "AT" : { //1й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_PG7VL_PGO7",2);
        addMagazines("ACE_OG7_PGO7",1); 
		addWeapons ["ACE_AK74M","ACE_RPG7V_PGO7"];
		addItems ["E","M"];
	};
	case "AAT" : { //2й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_Backpack_RPG"];
		addItems ["B","E","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_OG7_PGO7",2],["ACE_PG7VL_PGO7",1]],true];
	};
	case "GLAT" : { //Стрелок с ГП
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",2);
		addWeapons ["ACE_AK74M_GL"];
		addItems ["M"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",6],["ACE_1Rnd_HE_GP25P",4],["1Rnd_SMOKE_GP25",4]],true];
	};
	case "RF" : { // Стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74_U"];
		addItems ["M"];
	};
//разведотделение
	case "R_SL_GP" : { //Командир отделения разведки
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_SD_Kobra","ACE_P168_RD90"];
		addItems ["B","M","G"];
	};
	case "R_TL" : { //Старший разведчик
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_20Rnd_9x18_APSB",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_SD_1P78_F","ACE_APSB"];
		addItems ["B","M","G"];
	};
	case "R_SN" : { //Разведчик - снайпер
		addMagazines("ACE_Battery_Rangefinder", 2);
		addMagazines("vil_10Rnd_SVDK",8);
		addMagazines("ACE_20Rnd_9x18_APSB",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["vil_SVDK","ACE_APSB","ACE_YardAge450"];
		addItems ["M","G"];
	};
	case "R_MG" : { //Разведчик - пулеметчик
		addMagazines("100Rnd_762x54_PK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["Pecheneg"];
		addItems ["E","M","G"];
		//_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];
		//_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]],true];
	};
	case "R_R" : { // Разведчик - гпшник
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("1Rnd_HE_GP25",2);
        addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_GL_Kobra","ACE_RPG22"];
		addItems ["M","G"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];		
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",6],["ACE_1Rnd_HE_GP25P",4],["1Rnd_SMOKE_GP25",4]],true];
        };
	case "R_R1" : { // Разведчик
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
        addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_SD"];
		addItems ["M","G"];
	};
//расчет миномета
	case "MOG" : { //Старший наводчик
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M"];
		addWeapons ["ace_arty_rangeTable_2b14_legacy"];
		addItems ["B","M","G","E"];
	};
	case "MOAB" : { //Номер расчета
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M"];
		addItems ["B","E","M"];
	};
//стрелковое отделение
	case "SN" : { //Снайпер
		addMagazines("10Rnd_762x54_SVD",6);
		addMagazines("ACE_10Rnd_762x54_T_SVD",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["SVD"];
		addItems ["B","M","G"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",4]],true];
	};
	case "HSN" : { //Снайпер КСВК
		addMagazines("5Rnd_127x108_KSVK",4);
		addMagazines("ACE_5Rnd_127x108_T_KSVK",2);		
		addMagazines("ACE_20Rnd_9x18_APSB",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["KSVK","ACE_APSB","ACE_P168_RD90"];
		addItems ["B","M","G"];
	};
	case "AASS" : { //Снайпер-наблюдатель
		addMagazines("vil_10Rnd_SVDK",6);
		addMagazines("ACE_20Rnd_9x18_APSB",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["vil_SVDK","ACE_APSB","Binocular_Vector"];
		addItems ["K","M","G"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];
		_unit setVariable ["ACE_RuckMagContents",[["vil_10Rnd_SVDK",6],["5Rnd_127x108_KSVK",6],["ACE_Battery_Rangefinder",1]],true];		
	};
//отделение сбора и эвакуации раненых
	case "MED_SL" : { //Командир отделения - санитарный инструктор
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AK74M","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["M","G"];
		//_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_LargeBandage",5],["ACE_Tourniquet",3],["ACE_Medkit",10]],true]
	};
	case "MED" : { //Санитар
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",4);
		addWeapons ["ACE_AK74M","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["M"];
		//_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_LargeBandage",5],["ACE_Tourniquet",3],["ACE_Medkit",10]],true]
	};
//экипаж
	case "CRWVC" : { //Командир техники
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U","Makarov"];
		addItems ["M","G"];
	};
	case "CRW" : { //Экипаж
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U"];
		addItems ["M"];
	};
	case "PL" : { //Пилот
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U","Makarov", "ACE_P168_RD90"];
		addItems ["M","G"];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};