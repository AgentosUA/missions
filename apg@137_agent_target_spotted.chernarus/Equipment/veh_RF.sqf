_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "UAZ-MAIN" : { //
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addMagazineCargo ["30Rnd_545x39_AK",5];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",5];
		_veh addMagazineCargo ["HandGrenade_East",5];
		_veh addMagazineCargo ["ACE_RDGM",5];
	};
	case "MSV" : { //
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addMagazineCargo ["30Rnd_545x39_AK",20];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",10];
		_veh addMagazineCargo ["1Rnd_HE_GP25",30];
		_veh addMagazineCargo ["HandGrenade_East",10];
		_veh addMagazineCargo ["100Rnd_762x54_PK",10];
	};
	case "RECON" : { // Тигр
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",10];
		_veh addMagazineCargo ["1Rnd_HE_GP25",15];
		_veh addMagazineCargo ["HandGrenade_East",10];
		_veh addMagazineCargo ["100Rnd_762x54_PK",10];
	};
	case "MED" : { //
		_veh addWeaponCargo ["ACE_P159_RD90",2];
		_veh addMagazineCargo ["ACE_Bandage",20];
		_veh addMagazineCargo ["ACE_Morphine",20];
		_veh addMagazineCargo ["ACE_Epinephrine",20];
		_veh addMagazineCargo ["ACE_LargeBandage",20];
		_veh addMagazineCargo ["ACE_Tourniquet",10];
		_veh addMagazineCargo ["ACE_Medkit",20];
		_veh addWeaponCargo ["ACE_Stretcher",2];
	};
	case "EMPTY" : { //
		clearWeaponCargoGlobal _veh;
		clearMagazineCargoGlobal _veh;
		clearBackpackCargoGlobal _veh;
	};
};
