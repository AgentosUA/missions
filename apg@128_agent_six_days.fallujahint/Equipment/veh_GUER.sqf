#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	case "CAR" : { //
		_veh addMagazineCargo ["HandGrenade_east",15];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_762x39_AK47",10];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47",5];
		_veh addMagazineCargo ["AP_100Rnd_762x39_RPD",3];
		_veh addMagazineCargo ["TU_5Rnd_762x54",5];
		_veh addMagazineCargo ["1Rnd_HE_GP25",10];
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addWeaponCargo ["RPG18",1];
		_veh addWeaponCargo ["ACE_ALICE_Backpack",1];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["PG7VL",2];
	};

	case "ARMED" : { //
		_veh addMagazineCargo ["HandGrenade_east",5];
		_veh addMagazineCargo ["ACE_RDGM",5];
		_veh addMagazineCargo ["30Rnd_762x39_AK47",5];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47",5];
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addWeaponCargo ["ACE_ALICE_Backpack",1];
		_veh addMagazineCargo ["ACE_Bandage",5];
	};

	case "MED" : { //
		_veh addMagazineCargo ["ACE_10Rnd_762x39_B_SKS",10];
		_veh addMagazineCargo ["ACE_10Rnd_762x39_T_SKS",8];
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

	case "CACHE" : { //
		_veh addWeaponCargo ["ACE_P168_RD90",5];
		_veh addWeaponCargo ["ACE_AKM",10];
		_veh addMagazineCargo ["HandGrenade_east",20];
		_veh addMagazineCargo ["ACE_RDGM",15];
		_veh addMagazineCargo ["30Rnd_762x39_AK47",30];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47",30];
		_veh addMagazineCargo ["AP_100Rnd_762x39_RPD",30];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",30];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",20];
		_veh addMagazineCargo ["1Rnd_HE_GP25",30];
		_veh addWeaponCargo ["ACE_ALICE_Backpack",5];
		_veh addMagazineCargo ["PG7VL",15];
		_veh addMagazineCargo ["MineE",20];
	};

	case "EMPTY" : { //
	};
	
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};
