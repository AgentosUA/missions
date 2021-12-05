#include "Functions\blnd_macros.h"
#include "Scripts\const.h"

["PostInit", ""] call FNC(EventHandlers);

if (isServer) then {
	diag_log "STARTING SERVER MISSION";
	[] call compile preprocessFileLineNumbers "MAMaS\Scripts\srv_RemoveUnassignedVehicles.sqf";
	[] call compile preprocessFilelineNumbers "MAMaS\Scripts\srv_RandomizeSpawn.sqf";
	["PostInit", "server"] call FNC(EventHandlers);
	[] execVM "MAMaS\startmission_server.sqf";
};

if (!isDedicated) then {
	["Loading postInit..."] call FNC(Status);
	["PostInit", "client"] call FNC(EventHandlers);
	
	// CREW CONTROL
	crewIndex = false;
	arrRelCrew = ["pxl_RU_Soldier_Pilot", "CZ_Soldier_Pilot_Wdl_ACR"];
	arrRelCommander = ["pxl_RU_Soldier_Crew", "CZ_Soldier_Crew_Wdl_ACR"];
	if (!isnil{relCrew}) then { arrRelCrew = arrRelCrew + relCrew; };
	if (!isnil{relCommander}) then { arrRelCommander = arrRelCommander + relCommander; };
	// END CREW CONTROL

	[] execVM "MAMaS\startmission_client.sqf";
	
	if (isMultiplayer) then { enableRadio false; };
	[["AllVehicles"], [ace_sys_interaction_key], 2, ["MAMaS\scripts\interactionMenu.sqf", "main"]] call CBA_ui_fnc_add;
	[["player"], [ace_sys_interaction_key_self], 2, ["MAMaS\scripts\selfInteractionMenu.sqf", "main"]] call CBA_ui_fnc_add;

	call compile preprocessFileLineNumbers "MAMaS\scripts\spectator.sqf";
	["Client postInit loaded."] call FNC(Status);
};

//testing
if (isServer && !isDedicated) then {
	[] call compile preprocessFileLineNumbers "MAMaS\scripts\template_test.sqf";
};

[] spawn {
	waitUntil {sleep 0.1; missionNameSpace getVariable ["warbegins", 0] == 1};
	["WarBegins", ""] call FNC(EventHandlers);
};