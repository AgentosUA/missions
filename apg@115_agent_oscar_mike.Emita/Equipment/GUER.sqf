#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	case "OFF": {// КС
		addMagazines("20Rnd_B_AA12_Pellets",3);
		addMagazines("20Rnd_B_AA12_74Slug",3);
		addMagazines("20Rnd_B_AA12_HE",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AA12_PMC","ACE_P168_RD90"];
		addItems ["R","B","M","G"];
	};
	case "SL" : { // КО
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK105_PSO","ACE_P168_RD90"];
		addItems ["R","B","M","G"];
		_unit setVariable ["ACE_RuckMagContents", [["1Rnd_HE_GP25",8]],true];
	};
	case "TL" : { //Старший стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK105_PSO"];
		addItems ["R","B","M"];
	};
	case "AR": {// Machinehunner
		addMagazines("ACE_45Rnd_545x39_AP_AK",4);
		addMagazines("ACE_45Rnd_545x39_S_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["pzn_RPK74n"];
		addItems ["R","M","E"];
	};
	case "RM": {// Стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AK105_Kobra"];
		addItems ["R","M"];
	};
	case "AT": {//РПГшник
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AK105_Kobra","ACE_RPG22"];
		addItems ["R","M"];
	};
	case "AAT": {// Помошник РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AEK_971_1p63", "ACE_Backpack_RPG"];
		addItems ["R","M","B"];
		_unit setVariable ["ACE_RuckMagContents", [["PG7VL",2]],true];
	};
	case "SN": {// Пехотный снайпер
		addMagazines("10Rnd_762x54_SVD",6);
		addMagazines("ACE_10Rnd_762x54_T_SVD",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_SVD_Bipod"];
		addItems ["R","M","B"];
	};
	case "MED": {//Медик
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addWeapons ["ACE_AK105_Kobra","ACE_VTAC_RUSH72"];
		addItems ["R","M","G"];
	};
	case "GL" : { //Стрелок с ГП
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["TU_AK105_GL_Kobra","ACE_VTAC_RUSH72"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents", [["1Rnd_HE_GP25",12]],true];
	};

	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
