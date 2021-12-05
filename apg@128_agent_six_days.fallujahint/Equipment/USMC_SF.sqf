#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	case "SL" : { // FR
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_12Rnd_45ACP_USPSD",2);
		addWeapons ["ACE_SOC_M4A1_Eotech_4x_F", "ACE_USPSD","ACE_PRC119"];
		addItems ["M","G","R"];
	};
	case "OP" : { // FR
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_12Rnd_45ACP_USPSD",2);
		addWeapons ["ACE_SOC_M4A1_Eotech_4x_F", "ACE_USPSD"];
		addItems ["M","G","R"];
	};
	case "MED" : { // Medic SF
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_12Rnd_45ACP_USPSD",2);
		addWeapons ["ACE_SOC_M4A1_Eotech_4x_F", "ACE_USPSD","usm_pack_m5_medic"];
		addItems ["M","G","R"];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};