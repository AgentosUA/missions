#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//командование взвода
	case "OFF" : { //Командир взвода
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK103_PSO","ACE_P159_RD54","Makarov"];
		addItems ["R","B","M","G"];
	};
//МСВ
	case "SL" : { //Комод
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK103_PSO","ACE_P159_RD54"];
		addItems ["R","B","M","G"];
	};
	case "TL" : { //Старший стрелок
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK103_PSO"];
		addItems ["B","M"];
	};
	case "MG" : { //Пулеметчик
		addMagazines("100Rnd_762x54_PK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["Pecheneg"];
		addItems ["R","E","M"];
	};
	case "AMG" : { //Помошник пулеметчика
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK103","ACE_Backpack_CivAssault"];
		addItems ["B","E","M"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]],true];
	};
	case "AT" : { //1й номер расчета РПГ
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_PG7VL_PGO7",2);
        addMagazines("ACE_OG7_PGO7",1); 
		addWeapons ["ACE_AK103","pzn_RPG7V_1pn51"];
		addItems ["R","E","M"];
	};
	case "AAT" : { //2й номер расчета РПГ
		addMagazines("30Rnd_762x39_AK47",7);
		addMagazines("ACE_30Rnd_762x39_T_AK47",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK103","pzn_ace_6sh11"];
		addItems ["R","B","E","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_OG7_PGO7",2],["ACE_PG7VL_PGO7",1]],true];
	};
	case "GLAT" : { //Стрелок с ГП
		addMagazines("30Rnd_762x39_AK47",7);
		addMagazines("ACE_30Rnd_762x39_T_AK47",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",2);
		addWeapons ["ACE_AK103_GL"];
		addItems ["R","M"];
		_unit setVariable ["ACE_weapononback","ACE_Backpack_CivAssault",true];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",6],["ACE_1Rnd_HE_GP25P",4],["1Rnd_SMOKE_GP25",4]],true];
	};
	case "RF" : { // Стрелок
		addMagazines("30Rnd_762x39_AK47",7);
		addMagazines("ACE_30Rnd_762x39_T_AK47",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK103"];
		addItems ["M","R"];
	};

	case "SN" : { //Снайпер
		addMagazines("10Rnd_762x54_SVD",6);
		addMagazines("ACE_10Rnd_762x54_T_SVD",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["pzn_svds"];
		addItems ["B","M","G","R"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",4]],true];
	};
//отделение сбора и эвакуации раненых
	case "MED_SL" : { //Командир отделения - санитарный инструктор
		addMagazines("30Rnd_762x39_AK47",5);
		addMagazines("ACE_30Rnd_762x39_T_AK47",1);
		addMagazines("ACE_RDGM",4);
		addWeapons ["ACE_AK103","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["M","G","R"];
		//_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_LargeBandage",5],["ACE_Tourniquet",3],["ACE_Medkit",10]],true]
	};
	case "MED" : { //Санитар
		addMagazines("30Rnd_762x39_AK47",5);
		addMagazines("ACE_30Rnd_762x39_T_AK47",1);
		addMagazines("ACE_RDGM",4);
		addWeapons ["ACE_AK103","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["M","R"];
		//_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_LargeBandage",5],["ACE_Tourniquet",3],["ACE_Medkit",10]],true]
	};
//экипаж
	case "CCRW" : { //Командир техники
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AK103","Makarov"];
		addItems ["M","G","R","B"];
	};
	case "CRW" : { //Экипаж
		addMagazines("30Rnd_762x39_AK47",5);
		addMagazines("ACE_30Rnd_762x39_T_AK47",1);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AK103"];
		addItems ["M","R"];
	};
	case "PL" : { //Пилот
		addMagazines("30Rnd_762x39_AK47",5);
		addMagazines("ACE_30Rnd_762x39_T_AK47",1);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U","ACE_ParachuteRoundPack","Makarov"];
		addItems ["M","G","R"];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};