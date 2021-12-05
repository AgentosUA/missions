RHSDecalsOff = true;

waitUntil{sleep 20;(warbegins==1)};
["ARMAPROJECT"] spawn BIS_fnc_infoText;

waitUntil{sleep 5;(warbegins==1)};
["ЧЕРНОРУССИЯ"] spawn BIS_fnc_infoText;

waitUntil{sleep 5;(warbegins==1)};
["SCARECROW 1982"] spawn BIS_fnc_infoText;

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