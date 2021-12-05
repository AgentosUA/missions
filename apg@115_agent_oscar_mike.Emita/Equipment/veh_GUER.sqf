#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	case "HQ" : { // БРДМ-2 КШМ
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addWeaponCargo ["ACE_VTAC_RUSH72",1];
		_veh addWeaponCargo ["ACE_JerryCan_Dummy_15",30];
		_veh addWeaponCargo ["EvMoney",10];
	};

	case "CAR" : { //
		_veh addMagazineCargo ["HandGrenade_east",15];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",5];
		_veh addMagazineCargo ["100Rnd_762x54_PK",3];
		_veh addMagazineCargo ["1Rnd_HE_GP25",10];
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addWeaponCargo ["RPG18",1];
		_veh addWeaponCargo ["ACE_VTAC_RUSH72",1];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addMagazineCargo ["ACE_Bandage",5];
	};

	case "ARMED" : { //
		_veh addMagazineCargo ["HandGrenade_east",5];
		_veh addMagazineCargo ["ACE_RDGM",5];
		_veh addMagazineCargo ["30Rnd_545x39_AK",5];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",5];
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addWeaponCargo ["ACE_VTAC_RUSH72",1];
		_veh addMagazineCargo ["ACE_Bandage",5];
	};

	case "MED" : { //
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
	
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};
