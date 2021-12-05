c_balca_balca_enabled = false;


// таймер на завершение миссии по времени
if (isServer) then {
  [] spawn {
   waitUntil { sleep 0.3; !isNil "warbegins" && {warbegins == 1} };
   _missionTime = 7200; // время в секундах
   _endMessage = "К ВС РФ прибыло подкрепление! Победа ВС РФ!";
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

   // Обновление маркера на Скад (спасибо XDred!)

    while {true} do { 
      if(getMarkerColor "docs1" == "ColorBlack") then {
        _r = random 300;
        _theta = (random 720)-360;
        _scad = getPosATL scad_1;
        "scad_1" setmarkerpos [(_scad select 0) + _r * cos _theta, (_scad select 1) + _r * sin _theta];
        sleep 60;
      };
    };
  };
};