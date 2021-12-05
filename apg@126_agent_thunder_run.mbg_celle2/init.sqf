c_balca_balca_enabled = false;

//Добавление дополнительных классов экипажников
if (!isDedicated) then {
	relCrew = [];
	relCommander = [];
	relPilot = [];
};	

if (isServer) then {
  [] spawn {
   waitUntil { sleep 0.3; !isNil "warbegins" && {warbegins == 1} };
   _missionTime = 10; // время в секундах
   _endMessage = "К ВДВ РФ прибыло подкрепление! Победа ВДВ РФ!";
   _srv_gameStart = diag_tickTime;
   while {isNil "srv_missionFinished"} do {
    if (((diag_tickTime - _srv_gameStart) > _missionTime)) then {
     srv_missionFinished = true;
     [_endMessage] call MAMaS_endMission;
    };
    sleep 3.123;
   };
  };
};