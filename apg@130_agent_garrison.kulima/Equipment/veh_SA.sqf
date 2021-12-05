_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "HQ" : { //
		_veh addMagazineCargo ["HandGrenade_East",6];
		_veh addMagazineCargo ["ACE_RDGM",6];
		_veh addMagazineCargo ["1Rnd_HE_GP25",10];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_S_AK",12];
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addWeaponCargo ["pzn_ace_rd54",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",6];
		_veh addMagazineCargo ["ACE_Bandage",10];
		_veh addMagazineCargo ["ACE_Medkit",10];
		_veh addMagazineCargo ["ACE_LargeBandage",10];
		_veh addMagazineCargo ["ACE_Morphine",10];
		_veh addMagazineCargo ["ACE_Epinephrine",10];
		_veh addMagazineCargo ["ACE_Rope_TOW_M_5",1];
	};
	case "MSVB" : { //
		_veh addMagazineCargo ["HandGrenade_East",8];
		_veh addMagazineCargo ["ACE_RDGM",8];
		_veh addMagazineCargo ["1Rnd_HE_GP25",10];
		_veh addMagazineCargo ["ACE_75Rnd_545x39_S_RPK",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_S_AK",16];
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addWeaponCargo ["pzn_ace_rd54",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",8];
		_veh addMagazineCargo ["ACE_Bandage",10];
		_veh addMagazineCargo ["ACE_Morphine",10];
		_veh addMagazineCargo ["ACE_Rope_TOW_M_5",1];
	};
	case "MSV" : { //
		_veh addMagazineCargo ["HandGrenade_East",8];
		_veh addMagazineCargo ["ACE_RDGM",8];
		_veh addMagazineCargo ["1Rnd_HE_GP25",10];
		_veh addMagazineCargo ["ACE_75Rnd_545x39_S_RPK",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_S_AK",16];
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addWeaponCargo ["pzn_ace_rd54",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",8];
		_veh addMagazineCargo ["ACE_Bandage",10];
		_veh addMagazineCargo ["ACE_Morphine",10];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};