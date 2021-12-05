_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "M2A3" : { //
		_veh addMagazineCargo ["ACE_Rope_TOW_M_5",1];
		_veh removeMagazinesTurret ["2Rnd_TOW2",[0]];
        _veh addMagazine ["2Rnd_TOW2",2];
		_veh addWeaponCargo ["NM_PRC119_MTP",1];
	};
	case "HMMWV_HQ" : { //
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",10];
		_veh addMagazineCargo ["SmokeShell",3];
		_veh addMagazineCargo ["ACE_Rope_TOW_M_5",1];
		_veh addWeaponCargo ["NM_PRC119_MTP",1];
	};
	case "HMMWV_S" : { //
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",10];
		_veh addMagazineCargo ["SmokeShell",3];
		_veh addMagazineCargo ["ACE_Rope_TOW_M_5",1];
		_veh addMagazineCargo ["TU_10Rnd_762x51_M24",4];
		_veh addMagazineCargo ["20Rnd_762x51_B_SCAR",6];
		_veh addWeaponCargo ["NM_PRC119_MTP",1];
	};
	case "HMMWV_5" : { //
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",20];
		_veh addMagazineCargo ["SmokeShell",4];
		_veh addMagazineCargo ["1Rnd_HE_M203",12];
		_veh addMagazineCargo ["200Rnd_556x45_M249",3];
		_veh addMagazineCargo ["ACE_Rope_TOW_M_5",1];
		_veh addWeaponCargo ["NM_PRC119_MTP",1];
	};
	case "HMMWV_M2" : { //
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",8];
		_veh addMagazineCargo ["SmokeShell",4];
		_veh addMagazineCargo ["1Rnd_HE_M203",12];
		_veh addMagazineCargo ["200Rnd_556x45_M249",3];
		_veh addMagazineCargo ["ACE_20Rnd_762x51_T_SCAR",8];
		_veh addMagazineCargo ["ACE_Rope_TOW_M_5",1];
		_veh addWeaponCargo ["ACE_M136_CSRS",1];
		_veh addWeaponCargo ["NM_PRC119_MTP",1];
	};
	case "HMMWV_MED" : { //
		_veh addMagazineCargo ["ACE_Bandage",10];
        _veh addMagazineCargo ["ACE_Morphine",10];
        _veh addMagazineCargo ["ACE_Epinephrine",10];
        _veh addMagazineCargo ["ACE_LargeBandage",10];
        _veh addMagazineCargo ["ACE_Medkit",5];
        _veh addMagazineCargo ["SmokeShell",4];
		_veh addWeaponCargo ["NM_PRC119_MTP",1];
	};
};