_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "MSV" : { //
		_veh addMagazineCargo ["HandGrenade_East",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",10];
		_veh addMagazineCargo ["100Rnd_762x54_PK",10];
		_veh addMagazineCargo ["1Rnd_HE_GP25",20];
		_veh addWeaponCargo ["NM_P168_EMR",1];
		_veh addWeaponCargo ["NM_CharliePack_EMR",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 10];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addMagazineCargo ["ACE_Morphine",9];
		_veh addMagazineCargo ["ACE_Epinephrine",9];
	};

	case "CRATE" : { //
		_veh addMagazineCargo ["HandGrenade",20];
		_veh addMagazineCargo ["HandGrenade_East",30];
		_veh addMagazineCargo ["ACE_RDGM",15];
		_veh addMagazineCargo ["30Rnd_545x39_AK",20];
		_veh addMagazineCargo ["ACE_TRIPFLARE_M",10];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",10];
		_veh addMagazineCargo ["ACE_POMZ_M",2];
	};
	
	case "EMPTY" : { //
		clearWeaponCargoGlobal _veh;
		clearMagazineCargoGlobal _veh;
		clearBackpackCargoGlobal _veh;
	};
};