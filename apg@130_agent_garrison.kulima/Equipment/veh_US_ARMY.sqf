_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "HMWHQ" : { //
		_veh addMagazineCargo ["HandGrenade_west",3];
		_veh addMagazineCargo ["SmokeShell",3];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_S_Stanag",6];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",6];
		_veh addMagazineCargo ["Mine",2];
		_veh addMagazineCargo ["ACE_CLAYMORE_M",2];
		_veh addWeaponCargo ["usm_pack_st138_prc77",1];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Bandage",2];
		_veh addMagazineCargo ["ACE_Medkit",5];
		_veh addWeaponCargo ["ACE_M72A2",1];
	};
	case "TRUCK" : { //
		_veh addMagazineCargo ["HandGrenade_west",9];
		_veh addMagazineCargo ["SmokeShell",9];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_S_Stanag",18];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",9];
		_veh addMagazineCargo ["ACE_1Rnd_HE_M203",10];
		_veh addMagazineCargo ["Mine",2];
		_veh addWeaponCargo ["usm_pack_st138_prc77",1];
		_veh addWeaponCargo ["usm_pack_alice",2];
		_veh addMagazineCargo ["200Rnd_556x45_M249",4];
		_veh addMagazineCargo ["ACE_Morphine",9];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addWeaponCargo ["ACE_M72A2",1];
	};
	case "HMWDR" : { //
		_veh addMagazineCargo ["ACE_30Rnd_556x45_S_Stanag",8];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",4];
		_veh addWeaponCargo ["usm_pack_st138_prc77",1];
		_veh addMagazineCargo ["ACE_Morphine",4];
		_veh addMagazineCargo ["ACE_Bandage",4];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};