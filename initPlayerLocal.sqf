if ("par_snow" call BIS_fnc_getParamValue == 1) then {
	// Snowflakes
		[] execVM "goon_snowstorm.sqf";
	// Play snowflake	
		0 = [] spawn { while{true} do { playmusic "snowfall_music"; sleep 190; }; };
};




