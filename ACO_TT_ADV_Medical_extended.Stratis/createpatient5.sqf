{if ((typeOf _x == 'b_survivor_F') && (!isPlayer _x)) then {deleteVehicle _x}} forEach allUnits;
[MedicalData5,3] call BIS_fnc_dataTerminalAnimate;
sleep 5;
_group5=createGroup west;
'b_survivor_F' createUnit [getmarkerPos 'PatientSpawn5', _group5,'pat5=this; dostop pat5'];
[pat5, selectRandom[0.3,0.5,0.7,0.9], "LeftLeg", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat5, selectRandom[0.3,0.5,0.7,0.9], "RightLeg", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat5, selectRandom[0.3,0.5,0.7,0.9], "Body", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat5, selectRandom[0.3,0.5,0.7,0.9], "Head", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat5, selectRandom[0.3,0.5,0.7,0.9], "RightArm", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat5, selectRandom[0.3,0.5,0.7,0.9], "LeftArm", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[MedicalData5,0] call BIS_fnc_dataTerminalAnimate;
hint 'Your patient is ready';


//the first selctrandom chooses a randomish damage from a small one to a large one, the second selectrandom chooses the type of damage.
