
_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "MTVR" : { 
		_veh addMagazineCargo ["HandGrenade_west",100];
		_veh addMagazineCargo ["SmokeShell",100];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",200];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",100];
		_veh addMagazineCargo ["ACE_20Rnd_762x51_S_M110",100];
		_veh addMagazineCargo ["ACE_20Rnd_762x51_T_M110",100];
		_veh addMagazineCargo ["ACE_200Rnd_556x45_T_M249",100];
		_veh addMagazineCargo ["200Rnd_556x45_M249",100];
		_veh addMagazineCargo ["1Rnd_HE_M203",200];
		_veh addMagazineCargo ["ACE_Bandage",50];
		_veh addMagazineCargo ["ACE_Morphine",50];
		_veh addMagazineCargo ["ACE_Medkit",50];
		_veh addMagazineCargo ["ACE_Epinephrine",50];
		_veh addMagazineCargo ["ACE_LargeBandage",50];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_CharliePack_Multicam",20];
	};
	case "M88" : { //
		_veh addMagazineCargo ["ACE_Bandage",2];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addMagazineCargo ["ACE_Rope_TOW_M_5",1];
		_veh addMagazineCargo ["kik_Material_box",120];
		_veh addMagazineCargo ["kik_Hedgehog",20];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_VTAC_RUSH72_OD",2];
	};
	case "MED" : { 
		_veh addMagazineCargo ["ACE_Bandage",50];
		_veh addMagazineCargo ["ACE_Morphine",50];
		_veh addMagazineCargo ["ACE_Medkit",50];
		_veh addMagazineCargo ["ACE_Epinephrine",50];
		_veh addMagazineCargo ["ACE_LargeBandage",50];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
	};
	
	case "ZERO" : { 
		_veh addWeaponCargo ["ACE_PRC119",1];
	};
	case "MH60" : { // Сделать 120 ловушек
		_veh addWeaponCargo ["ACE_ParachuteRoundPack",20];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
    };
	case "UH60" : { // Сделать 120 ловушек
		_veh addWeaponCargo ["ACE_ParachuteRoundPack",13];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
	};
	case "UH60MED" : { // 
		_veh addWeaponCargo ["ACE_ParachuteRoundPack",7];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
    };
	case "CH" : {
	    _veh addWeaponCargo ["ACE_ParachuteRoundPack",20];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
	};
	
	case "CMBE" : { 
		_veh addMagazineCargo ["PipeBomb",5];
		_veh addMagazineCargo ["Mine",10];
		_veh addMagazineCargo ["ACE_CLAYMORE_M",30];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",5];		
	};
	
	case "M252" : { 
		_veh addMagazineCargo ["ACE_M252HE_CSWDM",80];
		_veh addMagazineCargo ["ACE_M252WP_CSWDM",20];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_M252Proxy",1];		
		_veh addWeaponCargo ["ACE_M252TripodProxy",1];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
		_veh addWeaponCargo ["ace_arty_rangeTable_m252",1];
	};
	
	case "M224" : { 
		_veh addMagazineCargo ["ACE_M224HE_CSWDM",250];
		_veh addMagazineCargo ["ACE_M224WP_CSWDM",30];
		_veh addMagazineCargo ["ACE_M224IL_CSWDM",100];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_M224Proxy",1];		
		_veh addWeaponCargo ["ACE_M224TripodProxy",1];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
	};
	
	case "SMAW" : { 
		_veh addMagazineCargo ["SMAW_HEAA",10];
		_veh addMagazineCargo ["SMAW_HEDP",10];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["SMAW",1];		
	};
	
	case "TOWP" : { 
		_veh addMagazineCargo ["ACE_TOW_CSWDM",1];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_M220Proxy",1];		
		_veh addWeaponCargo ["ACE_M220TripodProxy",1];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];		
	};

	case "STINGER" : { 
		_veh addMagazineCargo ["Stinger",1];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["Stinger",1];		
	};
	
	case "MK19" : { 
		_veh addMagazineCargo ["ACE_MK19_CSWDM",6];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
		_veh addWeaponCargo ["ACE_PRC119",1];		
	};
	
	case "MYAVS" : { 
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
		_veh addWeaponCargo ["ACE_PRC119",1];		
		_veh addWeaponCargo ["ACE_CarlGustav_M3",1];
		_veh addMagazineCargo ["MAAWS_HEAT",5];
		_veh addMagazineCargo ["ACE_MAAWS_HE",5];
	};
	
	case "MG" : { 
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
		_veh addWeaponCargo ["ACE_PRC119",1];		
		_veh addWeaponCargo ["ACE_M240G_M145",3];
		_veh addMagazineCargo ["100Rnd_762x51_M240",50];
	};


	case "MK19P" : { 
		_veh addMagazineCargo ["ACE_MK19_CSWDM",10];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_MK19MOD3Proxy",1];
		_veh addWeaponCargo ["ACE_M3TripodProxy",1];
	};
	
	case "JAVA" : { 
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["Javelin",1];
		_veh addWeaponCargo ["ACE_Javelin_CLU",1];
	};
	
	case "SOFL" : { 
		_veh addMagazineCargo ["Laserbatteries",10];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["Laserdesignator",1];
	};
	case "TAC" : { 
		_veh addMagazineCargo ["ACE_5Rnd_127x99_S_TAC50",30];
		_veh addMagazineCargo ["ACE_5Rnd_127x99_B_TAC50",30];
		_veh addMagazineCargo ["ACE_5Rnd_127x99_T_TAC50",30];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_TAC50_SD",1];
	};
	
	case "HELI" : { 
		_veh addWeaponCargo ["ACE_ParachuteRoundPack",20];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",2];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};
