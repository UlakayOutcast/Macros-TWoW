-=Hunter автоатака=-
Выстрел или Атака в зависимости от расстояния до цели

/script if UnitExists("target")==nil then TargetNearestEnemy();end;if CheckInteractDistance("target",2)==1 then CastSpellByName("Attack");else CastSpellByName("Auto Shot");end

/script if UnitExists("target")==nil then TargetNearestEnemy();end;
if CheckInteractDistance("target",2)==1 then 
	CastSpellByName("Attack");
else 
	CastSpellByName("Auto Shot");
end

-=-

Атака питомца, метка, атака или стрельба.

/script local tex,cnt,ix;if UnitExists("target")==nil then TargetNearestEnemy();end;if UnitExists("target") then PetAttack("target");for ix=1,32 do tex,cnt = UnitDebuff("target",ix)if tex then if strfind(tex,"Ability_Hunter_SniperShot")then ix=32;end;else CastSpellByName("Hunter's Mark")ix=32;end;end;if CheckInteractDistance("target",2)==1 then for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName('Attack');C=96;end;end;else if not IsAutoRepeatAction(58) then CastSpellByName("Auto Shot");end;end;end;

/script local tex,cnt,ix;
if UnitExists("target")==nil then TargetNearestEnemy();end;
if UnitExists("target") then 
	PetAttack("target");
	for ix=1,32 do tex,cnt = UnitDebuff("target",ix)if tex then if strfind(tex,"Ability_Hunter_SniperShot")then ix=32;end;else CastSpellByName("Hunter's Mark")ix=32;end;end;
	if CheckInteractDistance("target",2)==1 then 
		for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName('Attack');C=96;end;end;
	else 
		if not IsAutoRepeatAction(58) then CastSpellByName("Auto Shot");end;
	end;
end;