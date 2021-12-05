_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "UAZ-MAIN" : { //
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",10];
		_veh addMagazineCargo ["HandGrenade_East",10];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addMagazineCargo ["ACE_Bandage",5];
	};
	case "MSV" : { //
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",10];
		_veh addMagazineCargo ["1Rnd_HE_GP25",15];
		_veh addMagazineCargo ["HandGrenade_East",10];
		_veh addMagazineCargo ["100Rnd_762x54_PK",5];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",5];
		_veh addMagazineCargo ["ACE_10Rnd_762x54_T_SVD",5];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addMagazineCargo ["ACE_Bandage",5];
	};
	case "MED" : { //
		_veh addWeaponCargo ["ACE_P168_RD90",2];
		_veh addMagazineCargo ["ACE_Bandage",20];
		_veh addMagazineCargo ["ACE_Morphine",20];
		_veh addMagazineCargo ["ACE_Epinephrine",20];
		_veh addMagazineCargo ["ACE_LargeBandage",20];
		_veh addMagazineCargo ["ACE_Tourniquet",10];
		_veh addMagazineCargo ["ACE_Medkit",20];
		_veh addMagazineCargo ["ACE_Bodybag",10];
		_veh addWeaponCargo ["ACE_Stretcher",2];
	};

	case "URAL_ZU" : { //
		_veh addWeaponCargo ["ACE_P168_RD90",1];
	};	

	case "BMD" : { //
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",10];
		_veh addMagazineCargo ["1Rnd_HE_GP25",15];
		_veh addMagazineCargo ["HandGrenade_East",10];
		_veh addMagazineCargo ["100Rnd_762x54_PK",5];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",5];
		_veh addMagazineCargo ["ACE_10Rnd_762x54_T_SVD",5];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["ACE_KonkursM_CSWDM",2];
	};
	case "EMPTY" : { //
		clearWeaponCargoGlobal _veh;
		clearMagazineCargoGlobal _veh;
		clearBackpackCargoGlobal _veh;
	};
};