
while {true} do {

	waitUntil{(velocity player select 2 < -7) and ((getPosATL player select 2) > 250) and (vehicle player == player)};
	
	_dir = getDir player;
	_vel = velocity player;
	_speed = 100;
	[player, getPosATL player select 2] exec "ca\air2\halo\data\Scripts\HALO_init.sqs";
	sleep 0.5;
	player setdir _dir;
	player setVelocity [
	(_vel select 0) + (sin _dir * _speed), 
	(_vel select 1) + (cos _dir * _speed), 
	(_vel select 2)
];
	_j = 0;
	
	while {(getPosATL player select 2 > 250) and (vehicle player == player)} do {hintSilent format["Ваша высота - %1 м.", round(getPosATL player select 2)];};
	_strTxt = parseText "<t color='#FF0000'>Критичная высота !</t>";
	if (vehicle player == player) then {hint _strTxt} else {hintSilent ""};
	
};