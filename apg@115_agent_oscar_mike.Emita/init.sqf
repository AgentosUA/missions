c_balca_balca_enabled = false;

waitUntil{sleep 10;(warbegins==1)};

// таймер на завершение миссии по времени
if (isServer) then {
  [] spawn {
   waitUntil { sleep 0.3; !isNil "warbegins" && {warbegins == 1} };
   _missionTime = 4800; // время в секундах
   _endMessage = "Время вышло! Победа ЧВК!";
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