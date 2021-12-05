_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "HQ" : { //
		_veh addMagazineCargo ["HandGrenade_East",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 10];
		_veh addMagazineCargo ["HandGrenade", 5];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
	};

	case "MSV" : { //
		_veh addMagazineCargo ["HandGrenade",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",10];
		_veh addMagazineCargo ["100Rnd_762x54_PK",10];
		_veh addMagazineCargo ["1Rnd_HE_GP25",20];
		_veh addWeaponCargo ["ACE_P168_RD90",2];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 10];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addMagazineCargo ["ACE_Morphine",9];
		_veh addMagazineCargo ["ACE_Epinephrine",9];
	};

	case "ATG" : { //
		_veh addMagazineCargo ["HandGrenade",5];
		_veh addMagazineCargo ["ACE_RDGM",5];
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addMagazineCargo ["ACE_RPG29_PG29",6];
		_veh addMagazineCargo ["ACE_RPG29_TBG29",6];
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 10];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addMagazineCargo ["ACE_Morphine",6];
		_veh addMagazineCargo ["ACE_Epinephrine",9];
	};
	
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};
