{if ((typeOf _x == 'b_g_survivor_F') && (!isPlayer _x)) then {deleteVehicle _x}} forEach allUnits;
[MedicalData3,3] call BIS_fnc_dataTerminalAnimate;
sleep 5;
_group3=createGroup west;
'b_g_survivor_F' createUnit [getmarkerPos 'PatientSpawn3', _group3,'pat3=this; dostop pat3'];
[pat3, selectRandom[0.3,0.5,0.7,0.9], "LeftLeg", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat3, selectRandom[0.3,0.5,0.7,0.9], "RightLeg", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat3, selectRandom[0.3,0.5,0.7,0.9], "Body", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat3, selectRandom[0.3,0.5,0.7,0.9], "Head", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat3, selectRandom[0.3,0.5,0.7,0.9], "RightArm", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat3, selectRandom[0.3,0.5,0.7,0.9], "LeftArm", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[MedicalData3,0] call BIS_fnc_dataTerminalAnimate;
hint 'Your patient is ready';


//the first selctrandom chooses a randomish damage from a small one to a large one, the second selectrandom chooses the type of damage.
