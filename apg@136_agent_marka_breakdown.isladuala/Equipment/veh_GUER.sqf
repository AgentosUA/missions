_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "SUV" : { //
		_veh addMagazineCargo ["HandGrenade_East",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_S_AK47",10];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47",5];
		_veh addMagazineCargo ["1Rnd_HE_GP25",5];
		_veh addMagazineCargo ["HandGrenade", 5];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
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
		_veh addWeaponCargo ["ACE_P168_RD90",3];
	};
	
	case "CRATE" : { //
		_veh addWeaponCargo ["ACE_ALICE_Backpack",3];
		_veh addMagazineCargo ["TU_5Rnd_762x54",8];
		_veh addMagazineCargo ["TU_5Rnd_762x54_T",10];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_S_AK47",30];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47",15];
		_veh addMagazineCargo ["1Rnd_HE_GP25",30];
		_veh addMagazineCargo ["BAF_ied_v2",6];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};
