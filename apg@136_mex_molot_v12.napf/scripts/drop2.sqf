
_pause = 0.5;
_plane = _this select 0;

if (_plane getVariable "dropped1" == 1) exitWith {["Десант уже сброшен!",[1,0,0,1],true,0] spawn ace_fnc_visual;};
_plane setVariable ["dropped1", 1, true];

[_plane,veh4] execvm "scripts\supplydrop.sqf";
sleep _pause*3;
[_plane,veh5] execvm "scripts\supplydrop.sqf";
sleep _pause*3;
[_plane,veh6] execvm "scripts\supplydrop.sqf";
sleep _pause*3;






_pilot = group (driver _plane) createUnit ["RU_Soldier_Pilot", (position plane1start), [], 0, "FORM"];




[pilot1] spawn {
_pilot = _this select 0;
_dist = 2;
_time = 1;
waitUntil {sleep 1; (position _pilot) select 2 < 0.5};
[_time,["Так-с, так-с, так-с... Што тут у нас?"],false,true,_pilot,true] spawn ace_progressbar;
sleep _time;
_bag = createVehicle ["ace_bag",[((position _pilot) select 0) + (sin (direction _pilot)*_dist), ((position _pilot) select 1) + (cos (direction _pilot)*_dist),0],[], 0, "CAN_COLLIDE"];
_bag setdir (direction _pilot) - 90;
_weapon = ["ACE_AKS74P"] call BIS_fnc_selectRandom;
_magazine = getArray (configFile >> "CfgWeapons" >> _weapon >> "magazines") select 0;
_bag addWeaponCargoGlobal [_weapon,1];
_bag addMagazineCargoGlobal [_magazine,4];
_bag addMagazineCargoGlobal ["HandGrenade_East",2];
};

waitUntil {sleep 2; ([position _plane select 0,position _plane select 1,0] distance (position plane1start)) < 1000};
deleteVehicle _pilot;
deleteVehicle _plane;
