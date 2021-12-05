c_balca_balca_enabled = false;

waitUntil{sleep 10;(warbegins==1)};

// таймер на завершение миссии по времени
if (isServer) then {
  [] spawn {
   waitUntil { sleep 0.3; !isNil "warbegins" && {warbegins == 1} };
   _missionTime = 5400; // время в секундах
   _endMessage = "Время вышло! Победа армии Эсбекистана!";
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
    // Проверка на захват или же спасение рейнджеров
    while {true} do {
      {
          if ((side _x) == West && ((_x hasWeapon "EvMoscow") && ((_x distance markerpos "crash") >= 5000))
          || (alive ranger1 && ranger1 distance markerpos "crash" >= 5000)
          || (alive ranger2 && ranger2 distance markerpos "crash" >= 5000)
          || (alive ranger3 && ranger3 distance markerpos "crash" >= 5000)
          || (alive ranger4 && ranger4 distance markerpos "crash" >= 5000)
          || (alive ranger5 && ranger5 distance markerpos "crash" >= 5000)
          || (alive ranger6 && ranger6 distance markerpos "crash" >= 5000)
          || (alive ranger7 && ranger7 distance markerpos "crash" >= 5000))

          then
          {
            ["Американцы получили информацию! Победа US Army!"] call MAMaS_endMission;
          };
      } forEach playableUnits;


      // Проверка на пропажу документов (если человек с документами и в транспорте) и гибель рейнджеров

      {
        if((!alive _x && _x hasWeapon "EvMoscow" && vehicle _x != _x) &&
        (!alive ranger1) && (!alive ranger2) && (!alive ranger3) && (!alive ranger4) && (!alive ranger5) && (!alive ranger6) && (!alive ranger7)) then
        {
          ["Информация была утрачена. Победа Армии Эсбекистана!"] call MAMaS_endMission;
        };
      } forEach playableUnits;

      sleep 5;
    };
  };
};