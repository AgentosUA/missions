_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "HQ" : { //
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",15];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",10];
		_veh addMagazineCargo ["100Rnd_556x45_M249",3];
		_veh addMagazineCargo ["SmokeShell",8];
		_veh addMagazineCargo ["HandGrenade_west",8];
		_veh addMagazineCargo ["ACE_LargeBandage",6];
		_veh addMagazineCargo ["ACE_Bandage",6];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_AssaultPack_BAF",2];
	};

	case "HELI" : { //
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",20];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",20];
		_veh addMagazineCargo ["100Rnd_556x45_M249",10];
		_veh addMagazineCargo ["ACE_20Rnd_762x51_T_SCAR",10];
		_veh addMagazineCargo ["ACE_20Rnd_762x51_S_SCAR",10];
		_veh addMagazineCargo ["SmokeShell",10];
		_veh addMagazineCargo ["ACE_LargeBandage",15];
		_veh addMagazineCargo ["ACE_Bandage",20];
		_veh addMagazineCargo ["ACE_Morphine",10];
		_veh addMagazineCargo ["ACE_1Rnd_HE_M203",20];
		_veh addMagazineCargo ["PipeBomb",2];
		_veh addWeaponCargo ["ACE_PRC119",2];
		_veh addWeaponCargo ["ACE_ParachuteRoundPack",30];
		[_veh,"ART_DPICM", 10] call MAMaS_cargoCrateProcessor;
		[_veh,"ART_HE", 10] call MAMaS_cargoCrateProcessor;

	};

	case "JACKAL" : { //
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",1];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",1];
		_veh addMagazineCargo ["100Rnd_556x45_M249",1];
		_veh addMagazineCargo ["SmokeShell",4];
		_veh addMagazineCargo ["ACE_LargeBandage",4];
		_veh addMagazineCargo ["ACE_Bandage",10];
		_veh addMagazineCargo ["ACE_1Rnd_HE_M203",2];
		_veh addMagazineCargo ["PipeBomb",1];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["TU_M72A9",1];
		_veh addWeaponCargo ["ACE_AssaultPack_BAF",2];
	};

	case "CRATE" : {
		_veh addMagazineCargo ["Laserbatteries",2];
		_veh addWeaponCargo ["Laserdesignator",1];
		_veh addMagazineCargo ["AP_MILAN_CSWDM",1];
		_veh addWeaponCargo ["AP_MilanTripodProxy",1];
		_veh addMagazineCargo ["ACE_M2_CSWDM",20];
		_veh addWeaponCargo ["ACE_Earplugs",4];
	};

	case "CRATE_MAIN" : {
		_veh addMagazineCargo ["AP_MILAN_CSWDM",4];
		_veh addWeaponCargo ["AP_MilanTripodProxy",2];
	};

	case "EMPTY" : {
		clearWeaponCargoGlobal _veh;
		clearMagazineCargoGlobal _veh;
		clearBackpackCargoGlobal _veh;
	};

	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};