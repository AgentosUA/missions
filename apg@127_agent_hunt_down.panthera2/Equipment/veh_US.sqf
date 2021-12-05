_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "HMMWV" : { //
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",15];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",10];
		_veh addMagazineCargo ["200Rnd_556x45_M249",3];
		_veh addMagazineCargo ["SmokeShell",8];
		_veh addMagazineCargo ["HandGrenade_west",8];
		_veh addMagazineCargo ["ACE_LargeBandage",6];
		_veh addMagazineCargo ["ACE_Bandage",6];
		_veh addMagazineCargo ["ACE_Morphine",4];
		_veh addMagazineCargo ["100Rnd_762x51_M240",3];
		_veh addMagazineCargo ["ACE_20Rnd_762x51_SB_M110",8];
		_veh addMagazineCargo ["ACE_20Rnd_762x51_T_M110",4];
		_veh addMagazineCargo ["PipeBomb",1];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["M136",1];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Green",2];
		
	};

	case "EMPTY" : {
		clearWeaponCargoGlobal _veh;
		clearMagazineCargoGlobal _veh;
		clearBackpackCargoGlobal _veh;
	};

	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};