_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "MSV" : { //
		_veh addMagazineCargo ["HandGrenade_East",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_762x39_AK47",10];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",10];
		_veh addMagazineCargo ["100Rnd_762x54_PK",10];
		_veh addMagazineCargo ["1Rnd_HE_GP25",20];
		_veh addWeaponCargo ["ACE_P159_RD54",1];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47", 10];
		_veh addMagazineCargo ["ACE_75Rnd_762x39_B_AK47", 8];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addMagazineCargo ["ACE_Morphine",9];
		_veh addMagazineCargo ["ACE_Epinephrine",9];
	};

	case "UAZ-MAIN" : { //
		_veh addWeaponCargo ["ACE_P159_RD54",1];
		_veh addMagazineCargo ["HandGrenade_East",5];
		_veh addMagazineCargo ["ACE_RDGM",5];
		_veh addMagazineCargo ["30Rnd_762x39_AK47",10];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47", 5];
		_veh addMagazineCargo ["ACE_Bandage",10];
		_veh addMagazineCargo ["ACE_Morphine",4];
		_veh addMagazineCargo ["ACE_Epinephrine",4];
		_veh addWeaponCargo ["Igla",1];
		_veh addMagazineCargo ["Igla",1];
	};
	
	case "EMPTY" : { //
		clearWeaponCargoGlobal _veh;
		clearMagazineCargoGlobal _veh;
		clearBackpackCargoGlobal _veh;
	};
};