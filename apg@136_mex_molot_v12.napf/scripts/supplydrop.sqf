if (isNil  {(_this select 0)}) exitWith {};
if (isNull (_this select 0)) exitWith {};

private ["_side","_paraSize","_paraName","_paraPos","_veh","_dropPos","_dropHeight","_pos","_classNameToDrop","_classNameToDropOrig","_cargoPos","_cargoRelPos","_crate","_para"];

_veh = _this select 0;
_dropPos = position (_this select 0);
sleep 0.02;

 _paraSize = 2; //big chute
 
_paraName = "";
switch (_paraSize) do 
{    
  _side = side _veh;
  if (!(_side in ["East","West"])) then {_side = "East";};
  	case 0: {_paraName = format["Parachute%1",_side],;}; //ParachuteMediumEast or ParachuteMediumWest not "FLY" (that spawns 150 m above ground) }; 
  	case 1: {_paraName = format["ParachuteMedium%1",_side];}; //ParachuteMediumEast or ParachuteMediumWest not "FLY" (that spawns 150 m above ground) }; 
  	case 2: {_paraName = format["ParachuteBig%1",_side];};
  	
	default {textLogFormat ["DROP_ ERROR: Wrong _paraSize"];};
};


_pos = [(_dropPos select 0), (_dropPos select 1), (_dropPos select 2) - 30];

_cargoRelPos = [0,0,0];
_cargoPos = [(_pos select 0) + (_cargoRelPos select 0), (_pos select 1) + (_cargoRelPos select 1), (_pos select 2) + (_cargoRelPos select 2)];

//_crate = createvehicle [_classNameToDrop,_cargoPos,[],0,"NONE"];	
_crate = _this select 1;	
_crate setpos _cargoPos;
_crate setVelocity [(((velocity _veh) select 0) / 2),(((velocity _veh) select 1) / 2),((velocity _veh) select 2)-25];
_crate setDir (direction _veh);

_cratePos = position _crate;

if ((_cratePos select 2)< 0) then {_cratePos = _cargoPos;}; //HACK: ammoboxes are created under ground
_pos = _cratePos;

_paraPos = [(_pos select 0) + (_cargoRelPos select 0), (_pos select 1) + (_cargoRelPos select 1), (_pos select 2) + (_cargoRelPos select 2)];
_para = createvehicle [_paraName, _paraPos ,[],0,"NONE"]; //not "FLY" (that spawns 150 m above ground)
_para setDir (direction _veh);
_para setVelocity [((velocity _crate) select 0),((velocity _crate) select 1) ,((velocity _crate) select 2) ];

_crate attachTo [_para,[0,0,0],"paraEnd"]; 
sleep 1.0;

waitUntil {(position _crate) select 2 < 10};
detach _crate;
_crate setPos [(position _crate) select 0, (position _crate) select 1, 0.6];
deletevehicle _para;

