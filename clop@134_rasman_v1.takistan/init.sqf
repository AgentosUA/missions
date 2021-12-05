c_balca_balca_enabled = false;



// таймер на завершение миссии по времени
if (isServer) then {
  [] spawn {
   waitUntil { sleep 0.3; !isNil "warbegins" && {warbegins == 1} };
   _missionTime = 5400; // время в секундах
   _endMessage = "Время вышло! Победа обороны!";
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

waitUntil{sleep 15;(warbegins==1)};
ing1 setVariable ["builder_timeC", 1];
ing2 setVariable ["builder_timeC", 1];
ing3 setVariable ["builder_timeC", 1];
ing4 setVariable ["builder_timeC", 1];
ing5 setVariable ["builder_timeC", 1];
ing6 setVariable ["builder_timeC", 1];
ing7 setVariable ["builder_timeC", 1];
ing8 setVariable ["builder_timeC", 1];
mq9 enableSimulation true;