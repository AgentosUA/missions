_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "UAZ" : { //
		_veh addMagazineCargo ["HandGrenade_East",3];
		_veh addMagazineCargo ["ACE_RDGM",3];
		_veh addMagazineCargo ["30Rnd_545x39_AK",3];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 3];
		_veh addMagazineCargo ["ACE_Bandage",3];
		_veh addMagazineCargo ["ACE_Morphine",3];
		_veh addMagazineCargo ["ACE_Epinephrine",3];		
	};
	case "TIGR" : { //
		_veh addMagazineCargo ["HandGrenade_East",3];
		_veh addMagazineCargo ["ACE_RDGM",3];
		_veh addMagazineCargo ["30Rnd_545x39_AK",3];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 3];
		_veh addMagazineCargo ["ACE_20Rnd_9x39_SP6_VSS", 6];
		_veh addMagazineCargo ["ACE_Bandage",3];
		_veh addMagazineCargo ["ACE_Morphine",3];
		_veh addMagazineCargo ["ACE_Epinephrine",3];		
	};
	case "MSV" : { //
		_veh addMagazineCargo ["HandGrenade_East",10];
		_veh addMagazineCargo ["ACE_RDGM",8];
		_veh addMagazineCargo ["30Rnd_545x39_AK",8];
		_veh addMagazineCargo ["1Rnd_HE_GP25",6];
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",1];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",8];
		_veh addMagazineCargo ["ACE_Bandage",8];
		_veh addMagazineCargo ["ACE_Morphine",8];
		_veh addMagazineCargo ["ACE_Epinephrine",8];
        _veh addMagazineCargo ["ACE_Rope_TOW_M_5",1];		
	};
	case "MED" : { //
		_veh addMagazineCargo ["ACE_Bandage",20];
		_veh addMagazineCargo ["ACE_Morphine",20];
		_veh addMagazineCargo ["ACE_Epinephrine",20];
		_veh addMagazineCargo ["ACE_LargeBandage",20];
		_veh addMagazineCargo ["ACE_Tourniquet",20];
		_veh addMagazineCargo ["ACE_Medkit",20];
		_veh addWeaponCargo ["ACE_Stretcher",2];
		_veh addWeaponCargo ["ACE_P168_RD90",1];
	};
	case "IL" : { //
	    _veh addMagazineCargo ["HandGrenade",8];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",20];
		_veh addMagazineCargo ["100Rnd_762x54_PK",5];
		_veh addMagazineCargo ["1Rnd_HE_GP25",20];
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 10];
		_veh addMagazineCargo ["ACE_Bandage",10];
		_veh addMagazineCargo ["ACE_Morphine",10];
		_veh addMagazineCargo ["ACE_Epinephrine",5];
		_veh addWeaponCargo ["ACE_ParachuteRoundPack",30];
	};
};
