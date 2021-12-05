#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//командование взвода
	case "OFF" : { //Командир взвода
		addMagazines("ACE_30Rnd_545x39_S_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",3);
		addMagazines("ACE_SSRed_FG",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74","ACE_P159_RD54","ACE_Flaregun"];
		addItems ["R","B","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_SSRed_FG",2]],true];
	};
//МСВ
	case "SL" : { //Комод
		addMagazines("ACE_30Rnd_545x39_S_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",3);
		addMagazines("ACE_SSRed_FG",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74_pso","ACE_P159_RD54","ACE_Flaregun"];
		addItems ["R","B","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_SSRed_FG",2]],true];
	};
	case "TL" : { //Старший стрелок
		addMagazines("ACE_30Rnd_545x39_S_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",3);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",2);
		addWeapons ["pzn_ak_74n_gp_1p29","pzn_ace_rd54"];
		addItems ["R","B","M"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",8],["FlareWhite_GP25",3]],true];
	};
	case "AR" : { //Пулеметчик РПК
		addMagazines("ACE_75Rnd_545x39_S_RPK",5);
		addMagazines("ACE_75Rnd_545x39_T_RPK",3);
		addMagazines("HandGrenade_East",2);
		addWeapons ["RPK_74"];
		addItems ["R","E","M"];
	};
	case "AT" : { //Гранатомётчик
		addMagazines("ACE_30Rnd_545x39_S_AK",3);
		addMagazines("ACE_30Rnd_545x39_T_AK",3);
		addMagazines("ACE_PG7VL_PGO7",3);
		addWeapons ["AKS_74_U","RPG7V"];
		addItems ["R","E","M"];
	};
	case "AAT" : { //Помощник гранатометчика
		addMagazines("ACE_30Rnd_545x39_S_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",3);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74","ACE_Backpack_RPG"];
		addItems ["R","B","E","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VL_PGO7",2]],true];
	};
	case "RF" : { //Стрелок
		addMagazines("ACE_30Rnd_545x39_S_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",3);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74","RPG18"];
		addItems ["R","M"];
	};
	case "MR" : { // Снайпер
		addMagazines("10Rnd_762x54_SVD",5);
		addMagazines("ACE_10Rnd_762x54_T_SVD",3);
		addMagazines("ACE_RDGM",4);
		addWeapons ["SVD"];
		addItems ["R","M"];
	};
	case "GL" : { //Стрелок ГП
		addMagazines("ACE_30Rnd_545x39_S_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",3);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",2);
		addWeapons ["AK_74_GL","pzn_ace_rd54"];
		addItems ["R","B","M"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",10],["FlareWhite_GP25",3]],true];
	};
//Медики	
	case "MED" : { //Санитар
		addMagazines("ACE_30Rnd_545x39_S_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",3);
		addMagazines("ACE_RDGM",4);
		addWeapons ["AKS_74_U","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","M"];
	};
//экипаж
	case "CRW" : { //Экипаж
		addMagazines("ACE_30Rnd_545x39_S_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",3);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U"];
		addItems ["R","M"];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};