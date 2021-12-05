_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "HQ" : { //
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",10];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",5];
		_veh addMagazineCargo ["SmokeShell",8];
		_veh addMagazineCargo ["HandGrenade_west",8];
		_veh addMagazineCargo ["ACE_LargeBandage",6];
		_veh addMagazineCargo ["ACE_Bandage",6];
		_veh addMagazineCargo ["ACE_Morphine",6];
		_veh addWeaponCargo ["NM_PRC119_MTP",1];
		_veh addWeaponCargo ["ACE_CharliePack_Multicam",2];
	};
	case "HMMW" : { //
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",10];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",5];
		_veh addMagazineCargo ["200Rnd_556x45_M249",6];
		_veh addMagazineCargo ["SmokeShell",8];
		_veh addMagazineCargo ["HandGrenade_west",8];
		_veh addMagazineCargo ["ACE_LargeBandage",6];
		_veh addMagazineCargo ["ACE_Bandage",6];
		_veh addMagazineCargo ["ACE_Morphine",6];
		_veh addMagazineCargo ["MAAWS_HEAT",2];
		_veh addMagazineCargo ["ACE_MAAWS_HE",3];
		_veh addWeaponCargo ["NM_PRC119_MTP",1];
		_veh addWeaponCargo ["M136",1];
		_veh addWeaponCargo ["ACE_CharliePack_Multicam",2];
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
	};

	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};