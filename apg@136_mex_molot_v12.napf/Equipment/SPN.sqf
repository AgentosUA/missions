#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//Разведотделение
	case "R_SL" : {//Командир отделения разведки
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_20Rnd_9x18_APSB",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_Kobra","ACE_P168_RD90","ACE_APSB"];
		addItems ["B","M","G","B"];
	};
	case "R_TL" : {//Старший разведчик
		addMagazines("ACE_20Rnd_9x39_SP6_VSS",6);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["pzn_val_pso"];
		addItems ["B","M","G","B"];
	};
	case "R_MG" : {//Разведчик - пулеметчик
		addMagazines("100Rnd_762x54_PK",3);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["Pecheneg","ACE_CharliePack"];;
		addItems ["M","B","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",2]],true];
	};
	case "VSS" : { // Разведчик - ВСС
		addMagazines("ACE_10Rnd_9x39_SP6_VSS",8);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["VSS_vintorez"];
		addItems ["M","B"];
	};
	case "R_AT" : { // Разведчик 
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_Kobra","ACE_RPOM"];
		addItems ["M","B"];
	};
	case "R_GL" : {// Разведчик gp
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("1Rnd_HE_GP25",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_GL_Kobra","ACE_CharliePack"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",10]],true];
		addItems ["M","B"];
	};
};