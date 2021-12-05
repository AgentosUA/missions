_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "UAZ" : { //
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",5];
		_veh addMagazineCargo ["ACE_RDGM",5];
		_veh addMagazineCargo ["HandGrenade_East",5];
		_veh addWeaponCargo ["NM_CharliePack_EMR",1];
		_veh addWeaponCargo ["NM_P168_EMR",1];
		_veh addWeaponCargo ["Igla",1];
		_veh addMagazineCargo ["Igla",1]
	};
	case "RECON" : { //
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",5];
		_veh addMagazineCargo ["ACE_RDGM",5];
		_veh addMagazineCargo ["HandGrenade_East",5];
		_veh addWeaponCargo ["NM_CharliePack_EMR",1];
		_veh addWeaponCargo ["NM_P168_EMR",1];
	};
	case "MSV" : { //
		_veh addMagazineCargo ["30Rnd_545x39_AK",20];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",10];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["HandGrenade_East",10];
		_veh addWeaponCargo ["NM_CharliePack_EMR",2];
		_veh addWeaponCargo ["NM_P168_EMR",1];
		_veh addMagazineCargo ["ACE_Rope_TOW_M_5",1];
	};
	case "MED" : { //
		_veh addWeaponCargo ["ACE_P159_RD90",2];
		_veh addMagazineCargo ["ACE_Bandage",20];
		_veh addMagazineCargo ["ACE_Morphine",20];
		_veh addMagazineCargo ["ACE_Epinephrine",20];
		_veh addMagazineCargo ["ACE_LargeBandage",20];
		_veh addMagazineCargo ["ACE_Tourniquet",10];
		_veh addMagazineCargo ["ACE_Medkit",20];
		_veh addWeaponCargo ["ACE_Stretcher",2];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};
