enableSaving [false, false];

waitUntil {!isNull player};

removeAllActions player;
createCenter east;
createCenter west;

TrainingCourse_TargetList = [];
TrainingCourse_BulletPathTracing = false;
TrainingCourse_BulletCamera = false;
TrainingCourse_BulletCameraAbort = false;

TrainingCourse_ShotsFired = 0;
TrainingCourse_TargetsHit = 0;
TrainingCourse_AverageDistance = 0;
TrainingCourse_AverageTargetScore = 0;
TrainingCourse_AverageImpactDeviation = 0;

setWind [random 4, random 4, true];

player addaction [("<t color=""#FF4444"">" + "Open Virtual Arsenal" + "</t>"), {["Open", true] call BIS_fnc_arsenal}, "", 0, false, false];
player addaction [("<t color=""#BBBBBB"">" + "Reset Stats" + "</t>"), "fnc_reset_stats.sqf", "", 0, false, false];
player addaction [("<t color=""#BBBBBB"">" + "Clear Targets" + "</t>"), "fnc_generate_targets.sqf", ["", 0, true, 50, 1500], 0, false, false];
player addaction [("<t color=""#BBBBBB"">" + "Check Impact" + "</t>"), "fnc_check_impact.sqf", "", 0, false, false];

player addaction [("<t color=""#995599"">" + "Add Soldier" + "</t>"), "fnc_create_soldier.sqf", ["O_G_Soldier_F", false, false, false], 0, false, false];
player addaction [("<t color=""#995599"">" + "Add Soldier Patrol" + "</t>"), "fnc_create_soldier.sqf", ["I_G_Soldier_F", false, true, true], 0, false, false];
player addaction [("<t color=""#559999"">" + "Add Steel Target" + "</t>"), "fnc_create_target.sqf", ["TargetP_Inf2_Acc2_NoPop_F", false, false], 0, false, false];
player addaction [("<t color=""#559999"">" + "Add Steel Popup Target" + "</t>"), "fnc_create_target.sqf", ["TargetP_Inf2_Acc2_F", false, false], 0, false, false];
player addaction [("<t color=""#559999"">" + "Add Steel Popup Mover" + "</t>"), "fnc_create_target.sqf", ["TargetP_Inf2_Acc2_F", false, true], 0, false, false];

player addaction [("<t color=""#55CC66"">" + "Add Steel Plate" + "</t>"), "fnc_create_target.sqf", ["Land_Target_Oval_F", false, false], 0, false, false];
player addaction [("<t color=""#55CC66"">" + "Add balloon target" + "</t>"), "fnc_create_balloon_target.sqf", ["Land_Balloon_01_water_F", false, false], 0, false, false];

player addaction [("<t color=""#CCAA44"">" + "Toggle Bullet Path Tracing" + "</t>"), "fnc_toggle_path_tracing.sqf", "", 0, false, false];
player addaction [("<t color=""#CCAA44"">" + "Toggle Bullet Camera" + "</t>"), "fnc_toggle_bullet_camera.sqf", "", 0, false, false];

//player addaction [("<t color=""#AA9977"">" + "King of the hill" + "</t>"), "fnc_king_of_the_hill.sqf", "", 0, false, false];

player addaction [("<t color=""#559999"">" + "Add Tank Target" + "</t>"), "fnc_create_target.sqf", ["O_MBT_02_cannon_F", true, false], 0, false, false];
//player addaction [("<t color=""#559999"">" + "Tank Targets" + "</t>"), "fnc_generate_targets.sqf", ["O_MBT_02_cannon_F", 50, true, 50, 1500], 0, false, false];

player addaction [("<t color=""#999999"">" + "Steel Popup Targets (Short Range)" + "</t>"), "fnc_generate_targets.sqf", ["TargetP_Inf2_Acc2_F", 100, false, 15, 500], 0, false, false];
player addaction [("<t color=""#999999"">" + "Steel Popup Targets (Medium Range)" + "</t>"), "fnc_generate_targets.sqf", ["TargetP_Inf2_Acc2_F", 250, false, 50, 1500], 0, false, false];
player addaction [("<t color=""#999999"">" + "Steel Popup Targets (Long Range)" + "</t>"), "fnc_generate_targets.sqf", ["TargetP_Inf2_Acc2_F", 500, false, 100, 2500], 0, false, false];

player addEventHandler ["fired", {_this execVM "fnc_bullet_trace.sqf"}];
player addEventHandler ["fired", {_this execVM "fnc_bullet_camera.sqf"}];
Projectile_Impact_Aux = "Sign_Sphere10cm_F" createVehicle [0,0,0];



player addEventHandler ["respawn", {_this execVM "onPlayerRespawn.sqf"}];






