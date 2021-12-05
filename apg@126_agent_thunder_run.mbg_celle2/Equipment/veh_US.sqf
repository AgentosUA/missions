_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "HAMMER" : { //
		_veh addWeaponCargo ["ACE_PRC119_MAR",1];
	};
	case "MRAP" : { //
		_veh addMagazineCargo ["HandGrenade_west",10];
		_veh addMagazineCargo ["SmokeShell",10];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",15];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag", 6];
		_veh addMagazineCargo ["20Rnd_762x51_DMR",10];
		_veh addMagazineCargo ["ACE_200Rnd_556x45_T_M249",3];
		_veh addMagazineCargo ["ACE_1Rnd_HE_M203",5];
		_veh addMagazineCargo ["1Rnd_Smoke_M203",4];
		_veh addWeaponCargo ["ACE_PRC119_MAR",1];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Green",4];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addMagazineCargo ["ACE_Bandage",5];
	};
	case "MED" : { //
		_veh addMagazineCargo ["ACE_Bandage",20];
		_veh addMagazineCargo ["ACE_Morphine",20];
		_veh addMagazineCargo ["ACE_Epinephrine",20];
		_veh addMagazineCargo ["ACE_LargeBandage",20];
		_veh addMagazineCargo ["ACE_Medkit",20];
		_veh addWeaponCargo ["ACE_PRC119_MAR",1];
	};
	case "UH" : {
		_veh addMagazineCargo ["ACE_Morphine",6];
		_veh addMagazineCargo ["ACE_Epinephrine",6];
		_veh addMagazineCargo ["ACE_Bandage",6];
		_veh addMagazineCargo ["HandGrenade_west",15];
		_veh addMagazineCargo ["SmokeShell",10];
		_veh addWeaponCargo ["ACE_PRC119_MAR",1];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Green",3];
		_veh addWeaponCargo ["ACE_ParachuteRoundPack",13];
	};
	case "TOW" : {
		_veh disableTIEquipment true;
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh removeMagazineTurret ["ACE_TOW2",[0]];
		_veh addMagazineTurret ["ACE_TOW2",[0]];
		_veh addMagazineTurret ["ACE_TOW2",[0]];
	};
	case "SPN_HAMMER" : {
		_veh addMagazineCargo ["HandGrenade_west",8];
		_veh addMagazineCargo ["SmokeShell",8];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",15];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag", 10];
		_veh addMagazineCargo ["5Rnd_762x51_M24", 10];
		_veh addMagazineCargo ["ACE_5Rnd_762x51_T_M24", 5];
		_veh addMagazineCargo ["ACE_200Rnd_556x45_T_M249",3];
		_veh addMagazineCargo ["ACE_1Rnd_HE_M203",10];
		_veh addMagazineCargo ["1Rnd_Smoke_M203",10];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Green",2];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addMagazineCargo ["ACE_Bandage",5];
	};
	case "CRATE" : {
		_veh addWeaponCargo ["AK_74",2];
		_veh addWeaponCargo ["AK_74_GL",1];
		_veh addWeaponCargo ["SVD",1];
		_veh addWeaponCargo ["ACE_ALICE_Backpack",3];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",8];
		_veh addMagazineCargo ["ACE_10Rnd_762x54_T_SVD",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",30];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",20];
		_veh addMagazineCargo ["1Rnd_HE_GP25",30];
		_veh addMagazineCargo ["HandGrenade_East",10];
		_veh addMagazineCargo ["MineE",5];
	};
	case "CRATE_E" : {
		_veh addWeaponCargo ["EvMoscow",2];
	};
	
	case "EMPTY" : {
		clearWeaponCargoGlobal _veh;
		clearMagazineCargoGlobal _veh;
		clearBackpackCargoGlobal _veh;
	};
};