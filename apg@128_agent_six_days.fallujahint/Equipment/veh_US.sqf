_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "HAMMER" : { //
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addMagazineCargo ["PipeBomb",1];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",5];
	};
	case "MRAP" : { //
		_veh addMagazineCargo ["HandGrenade_west",5];
		_veh addMagazineCargo ["SmokeShell",5];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",15];
		_veh addMagazineCargo ["ACE_200Rnd_556x45_T_M249",3];
		_veh addMagazineCargo ["ACE_1Rnd_HE_M203",10];
		_veh addMagazineCargo ["1Rnd_Smoke_M203",5];
		_veh addWeaponCargo ["ACE_PRC119",5];
		_veh addWeaponCargo ["M136",5];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_DMARPAT",2];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag", 8];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["PipeBomb",10];
	};
	
	case "MED" : { //
		_veh addMagazineCargo ["ACE_Bandage",20];
		_veh addMagazineCargo ["ACE_Morphine",20];
		_veh addMagazineCargo ["ACE_Epinephrine",20];
		_veh addMagazineCargo ["ACE_LargeBandage",20];
		_veh addMagazineCargo ["ACE_Medkit",20];
		_veh addMagazineCargo ["ACE_Bodybag",10];
		_veh addWeaponCargo ["ACE_PRC119",1];
	};

	case "EMPTY" : { //
		clearWeaponCargoGlobal _veh;
		clearMagazineCargoGlobal _veh;
		clearBackpackCargoGlobal _veh;
	};
};