c_balca_balca_enabled = false;

waitUntil{sleep 10;(warbegins==1)};

// таймер на завершение миссии по времени
if (isServer) then {
  [] spawn {
   waitUntil { sleep 0.3; !isNil "warbegins" && {warbegins == 1} };
   _missionTime = 5400; // время в секундах
   _endMessage = "Время вышло! Победа 75th рейнжеров!";
   _srv_gameStart = diag_tickTime;

   while {isNil "srv_missionFinished"} do {
    if (((diag_tickTime - _srv_gameStart) > _missionTime)) then {
     srv_missionFinished = true;
     [_endMessage] call MAMaS_endMission;
    };
    sleep 3.123;
   };
  };

  [] spawn {
    waitUntil { sleep 0.3; !isNil "warbegins" && {warbegins == 1} };
    while {true} do {
        _r = random 500;
        _theta = (random 720)-360;
        _target = getPosATL baron;
        "target_marker" setmarkerpos [(_target select 0) + _r * cos _theta, (_target select 1) + _r * sin _theta];
        sleep 300;
    };
  };

};