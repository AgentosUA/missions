
_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "HQ" : { //
		_veh addMagazineCargo ["HandGrenade_west",5];
		_veh addMagazineCargo ["SmokeShell",5];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",4];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addMagazineCargo ["ACE_Morphine",3];
		_veh addMagazineCargo ["ACE_Epinephrine",3];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["Igla",2];
		_veh addWeaponCargo ["Igla",1];
	};

	case "HQ2" : { //
		_veh addMagazineCargo ["HandGrenade_west",5];
		_veh addMagazineCargo ["SmokeShell",5];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",8];
		_veh addMagazineCargo ["1Rnd_HE_M203",5];
		_veh addMagazineCargo ["1Rnd_Smoke_M203",4];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag", 5];
		_veh addMagazineCargo ["ACE_Morphine",3];
		_veh addMagazineCargo ["ACE_Epinephrine",3];
		_veh addMagazineCargo ["ACE_Bandage",5];
	};
	
	case "PANDUR" : { //
		_veh addMagazineCargo ["HandGrenade_west",10];
		_veh addMagazineCargo ["SmokeShell",10];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",20];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag", 10];
		_veh addMagazineCargo ["20Rnd_762x51_B_SCAR", 10];
		_veh addMagazineCargo ["ACE_20Rnd_762x51_T_SCAR", 10];
		_veh addMagazineCargo ["100Rnd_762x51_M240",8];
		_veh addMagazineCargo ["1Rnd_HE_M203",20];
		_veh addMagazineCargo ["1Rnd_Smoke_M203",10];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",8];
		_veh addMagazineCargo ["ACE_10Rnd_762x54_T_SVD",4];
		_veh addWeaponCargo ["ACE_PRC119",2];
		_veh addWeaponCargo ["ACE_BackPack_ACR",3];
		_veh addWeaponCargo ["ACE_RPG22",2];
		_veh addMagazineCargo ["ACE_Morphine",9];
		_veh addMagazineCargo ["ACE_Epinephrine",9];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addMagazineCargo ["PG7VR",2];
		_veh addMagazineCargo ["ACE_LargeBandage",9];
		_veh addMagazineCargo ["ACE_OG7_PGO7",4];
	};
	case "DINGO" : { //
		_veh addMagazineCargo ["HandGrenade_west",5];
		_veh addMagazineCargo ["SmokeShell",10];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",10];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag", 5];
		_veh addMagazineCargo ["20Rnd_762x51_B_SCAR", 5];
		_veh addMagazineCargo ["ACE_20Rnd_762x51_T_SCAR", 5];
		_veh addMagazineCargo ["1Rnd_HE_M203",20];
		_veh addMagazineCargo ["1Rnd_Smoke_M203",10];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",8];
		_veh addMagazineCargo ["100Rnd_762x51_M240",4];
		_veh addMagazineCargo ["ACE_10Rnd_762x54_T_SVD",4];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_BackPack_ACR",2];
		_veh addWeaponCargo ["ACE_RPG22",2];
		_veh addMagazineCargo ["ACE_Morphine",6];
		_veh addMagazineCargo ["ACE_Epinephrine",6];
		_veh addMagazineCargo ["ACE_Bandage",6];
		_veh addMagazineCargo ["ACE_LargeBandage",6];
	};
	case "MED" : { //
		_veh addMagazineCargo ["ACE_Bandage",20];
		_veh addMagazineCargo ["ACE_Morphine",20];
		_veh addMagazineCargo ["ACE_Epinephrine",20];
		_veh addMagazineCargo ["ACE_LargeBandage",20];
		_veh addMagazineCargo ["ACE_Tourniquet",20];
		_veh addMagazineCargo ["ACE_Medkit",20];
		_veh addWeaponCargo ["ACE_Stretcher",2];
		_veh addMagazineCargo ["ACE_Bodybag",10];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addMagazineCargo ["10Rnd_9x19_Compact",10];
		_veh addWeaponCargo ["CZ_75_D_COMPACT",2];
	};

	case "VENOM" : { //
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addMagazineCargo ["ACE_Bandage",5];		
		_veh addMagazineCargo ["ACE_LargeBandage",5];
		_veh addWeaponCargo ["ACE_ParachutePack",4];
		_veh addWeaponCargo ["ACE_PRC119",1];
	};

	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};
