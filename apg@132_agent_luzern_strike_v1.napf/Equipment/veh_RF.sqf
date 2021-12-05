_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "HQ" : { //
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addMagazineCargo ["HandGrenade",5];
		_veh addMagazineCargo ["ACE_RDGM",5];
		_veh addMagazineCargo ["30Rnd_545x39_AK",5];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 5];
		_veh addMagazineCargo ["ACE_Bandage",5];
	};

	case "UAZ" : { //
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addMagazineCargo ["HandGrenade",5];
		_veh addMagazineCargo ["ACE_RDGM",5];
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",4];
		_veh addMagazineCargo ["100Rnd_762x54_PK",4];
		_veh addMagazineCargo ["1Rnd_HE_GP25",20];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 10];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addMagazineCargo ["ACE_OG7_PGO7",3];
		_veh addMagazineCargo ["ACE_PG7VL_PGO7",3];
		_veh addWeaponCargo ["ACE_RPG22",1];
	};
	case "MSV" : { //
		_veh addMagazineCargo ["HandGrenade",10];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",20];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",10];
		_veh addMagazineCargo ["1Rnd_HE_GP25",20];
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 10];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addMagazineCargo ["ACE_OG7_PGO7",3];
		_veh addMagazineCargo ["ACE_PG7VL_PGO7",3];
		_veh addMagazineCargo ["100Rnd_762x54_PK",8];
		_veh addWeaponCargo ["ACE_RPG22",1];
	};

	case "TANK" : { //
		_veh addWeaponCargo ["ACE_P168_RD90",1];
	};
	
	case "MED" : { //
		_veh addMagazineCargo ["ACE_Bandage",20];
		_veh addMagazineCargo ["ACE_Morphine",20];
		_veh addMagazineCargo ["ACE_Epinephrine",20];
		_veh addMagazineCargo ["ACE_LargeBandage",20];
		_veh addMagazineCargo ["ACE_Medkit",10];
		_veh addWeaponCargo ["ACE_Stretcher",2];
		_veh addWeaponCargo ["Makarov",2];
		_veh addMagazineCargo ["8Rnd_9x18_Makarov",10];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};
