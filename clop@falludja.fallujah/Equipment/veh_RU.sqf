
_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "KAMAZ" : { 
		_veh addMagazineCargo ["HandGrenade_East",100];
		_veh addMagazineCargo ["ACE_RDGM",100];
		_veh addMagazineCargo ["30Rnd_545x39_AK",200];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",100];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",100];
		_veh addMagazineCargo ["100Rnd_762x54_PK",100];
		_veh addMagazineCargo ["1Rnd_HE_GP25",200];
		_veh addMagazineCargo ["ACE_Bandage",50];
		_veh addMagazineCargo ["ACE_Morphine",50];
		_veh addMagazineCargo ["ACE_Medkit",50];
		_veh addMagazineCargo ["ACE_Epinephrine",50];
		_veh addMagazineCargo ["ACE_LargeBandage",50];
		_veh addMagazineCargo ["PG7VL",20];		
		_veh addMagazineCargo ["OG7",20];		
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",20];
	};
    case "BREM" : { //
		_veh addMagazineCargo ["ACE_Bandage",2];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addMagazineCargo ["ACE_Rope_TOW_M_5",1];
		_veh addMagazineCargo ["kik_Material_box",120];
		_veh addMagazineCargo ["kik_Hedgehog",20];
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
	};
	case "BRDM" : { 
		_veh addMagazineCargo ["HandGrenade_East",10];
		_veh addMagazineCargo ["ACE_RDG2",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",20];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_SD_AK47",10];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["pzn_rpg26",2];
	};
	case "KORD" : { //
		_veh addMagazineCargo ["ACE_KORD_CSWDM",6];
		_veh addWeaponCargo ["ACE_Earplugs",6];
	};
	case "BTRK" : { 
		_veh addMagazineCargo ["HandGrenade_East",10];
		_veh addMagazineCargo ["ACE_KonkursM_CSWDM",3];
		_veh addMagazineCargo ["ACE_RDG2",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",30];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",30];
		_veh addMagazineCargo ["ACE_45Rnd_545x39_B_AK",30];
		_veh addMagazineCargo ["1Rnd_HE_GP25",30];
		_veh addMagazineCargo ["FlareRed_M203",50];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
	};

	case "AGSP" : { 
		_veh addMagazineCargo ["ACE_AGS30_CSWDM",10];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addWeaponCargo ["ACE_AGS30TripodProxy",1];
		_veh addWeaponCargo ["ACE_AGS30Proxy",1];
	};

	case "SPGP" : { 
		_veh addMagazineCargo ["TU_PG9V_CSWDM",10];
		_veh addMagazineCargo ["TU_OG9V_CSWDM",10];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addWeaponCargo ["TU_SPG9Proxy",1];
		_veh addWeaponCargo ["TU_SPG9TripodProxy",1];
	};

	case "RPG29" : { 
		_veh addMagazineCargo ["ACE_RPG29_PG29",10];
		_veh addMagazineCargo ["ACE_RPG29_TBG29",10];
		_veh addWeaponCargo ["ACE_RPG29",1];		
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
	};
	
		case "MET" : { 
		_veh addMagazineCargo ["AT13",1];
		_veh addWeaponCargo ["MetisLauncher",1];		
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
	};
	
	case "2B14" : { 
		_veh addMagazineCargo ["ACE_2B14HE_CSWDM",80];
		_veh addMagazineCargo ["ACE_2B14WP_CSWDM",20];
		_veh addMagazineCargo ["ACE_2B14IL_CSWDM",50];
		_veh addWeaponCargo ["ACE_2b14Proxy",1];		
		_veh addWeaponCargo ["ACE_2b14TripodProxy",1];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addWeaponCargo ["ace_arty_rangeTable_2b14",1];
	};
	
	case "KONK" : { 
		_veh addMagazineCargo ["ACE_KonkursM_CSWDM",1];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addWeaponCargo ["ACE_KonkursTripodProxy",1];
	};
	
	case "MI8" : {
	   _veh addWeaponCargo ["ACE_ParachuteRoundPack",16];
	   _veh addWeaponCargo ["ACE_P159_RD90",1];
	};
	case "MI24" : {
	   _veh addWeaponCargo ["ACE_ParachuteRoundPack",8];
	   _veh addWeaponCargo ["ACE_P159_RD90",1];
	};
	
	case "ZERO" : { 
		_veh addWeaponCargo ["ACE_P159_RD90",1];
	};
	
	case "NONA" : { 
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ace_arty_rangeTable_2S9",4];
	};
	
	case "MED" : { 
		_veh addMagazineCargo ["ACE_Bandage",30];
		_veh addMagazineCargo ["ACE_Morphine",30];
		_veh addMagazineCargo ["ACE_Epinephrine",30];
		_veh addMagazineCargo ["ACE_LargeBandage",30];
		_veh addMagazineCargo ["ACE_Tourniquet",10];
		_veh addMagazineCargo ["ACE_Medkit",30];
		_veh addWeaponCargo ["ACE_Stretcher",2];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
	};
	
	case "STRELA" : { 
		_veh addMagazineCargo ["Strela",1];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addWeaponCargo ["Strela",1];
	};
	
	case "KSVK" : { 
		_veh addMagazineCargo ["5Rnd_127x108_KSVK",30];
		_veh addMagazineCargo ["ACE_5Rnd_127x108_T_KSVK",30];		
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addWeaponCargo ["ksvk_Small",1];
	};
	case "IGLA" : { 
		_veh addMagazineCargo ["Igla",1];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addWeaponCargo ["Igla",1];
	};	
	case "SAP" : { 
		_veh addMagazineCargo ["PipeBomb",5];
		_veh addMagazineCargo ["MineE",10];
		_veh addMagazineCargo ["ACE_MON50_M",30];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
	};
		case "FAG" : { 
		_veh addMagazineCargo ["TU_Faktoriya_CSWDM",1];
		_veh addWeaponCargo ["TU_FaktoriyaTripodProxy",1];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
	};
	case "MG" : { 
		_veh addMagazineCargo ["100Rnd_762x54_PK",50];
		_veh addWeaponCargo ["pzn_pkmn_1p29",3];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
	};	
	case "HELI" : { 
		_veh addWeaponCargo ["ACE_ParachuteRoundPack",20];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
	};
	case "MED" : { 
		_veh addMagazineCargo ["ACE_Bandage",50];
		_veh addMagazineCargo ["ACE_Morphine",50];
		_veh addMagazineCargo ["ACE_Medkit",50];
		_veh addMagazineCargo ["ACE_Epinephrine",50];
		_veh addMagazineCargo ["ACE_LargeBandage",50];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
	};
	case "MX" : { 
		_veh addWeaponCargo ["ACE_MX2A",1];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
	};
	case "BER" : {
	    _veh addWeaponCargo ["ACE_Earplugs",2];
	};
	
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};
