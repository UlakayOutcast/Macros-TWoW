-=Hunter мультиатака=- -=Raptor Strike,Mongoose Bite,Counterattack=-+-=Trueshot/Arcane Shot=-
Выстрел+Aimed Shot,Trueshot/Arcane Shot или Атака+Raptor Strike,Mongoose Bite,Counterattack в зависимости от раcстояния до цели

/script local N,R,C;local UL=UnitLevel;if UnitExists("target")==nil then TargetNearestEnemy();end;if CheckInteractDistance("target",2)==1 then for C=1,200 do if IsAttackAction(C)then if not IsCurrentAction(C)then UseAction(C);end;C=200;end;end;if UL("player")>55 then LV="Rank 8" else if UL("player")>47 then LV="Rank 7" else if UL("player")>39 then LV="Rank 6" else if UL("player")>31 then LV="Rank 5" else if UL("player")>23 then LV="Rank 4" else if UL("player")>15 then LV="Rank 3" else if UL("player")>7 then LV="Rank 2" else if UL("player")>0 then LV="Rank 1" else LV="0" end;end;end;end;end;end;end;end; for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Raptor Strike" and R==LV and GetSpellCooldown(C,"spell")==0 then CastSpellByName("Raptor Strike("..LV..")");C=200;end;end;if UL("player")>57 then LV="Rank 4" else if UL("player")>43 then LV="Rank 3" else if UL("player")>29 then LV="Rank 2" else if UL("player")>15 then LV="Rank 1" else LV="0" end;end;end;end;CastSpellByName("Mongoose Bite("..LV..")");if UL("player")>53 then LV="Rank 3" else if UL("player")>41 then LV="Rank 2" else if UL("player")>30 then LV="Rank 1" else LV="0" end;end;end;CastSpellByName("Counterattack("..LV..")");else if not IsAutoRepeatAction(58)then CastSpellByName("Auto Shot");end;if UL("player")>59 then LV="Rank 6" else if UL("player")>51 then LV="Rank 5" else if UL("player")>43 then LV="Rank 4" else if UL("player")>35 then LV="Rank 3" else if UL("player")>27 then LV="Rank 2" else if UL("player")>19 then LV="Rank 1" else LV="0" end;end;end;end;end;end;for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Aimed Shot" and R==LV and GetSpellCooldown(C,"spell")==0 then CastSpellByName("Aimed Shot("..LV..")");C=200;end;end;for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Trueshot" and GetSpellCooldown(C,"spell")==0 then CastSpellByName("Trueshot");C=200;end;end;if UL("player")>59 then LV="Rank 8" else if UL("player")>51 then LV="Rank 7" else if UL("player")>43 then LV="Rank 6" else if UL("player")>35 then LV="Rank 5" else if UL("player")>27 then LV="Rank 4" else if UL("player")>19 then LV="Rank 3" else if UL("player")>11 then LV="Rank 2" else if UL("player")>5 then LV="Rank 1" else LV="0" end;end;end;end;end;end;end;end; for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Arcane Shot" and R==LV and GetSpellCooldown(C,"spell")==0 then CastSpellByName("Arcane Shot("..LV..")");C=200;end;end;end;

/script local N,R,C;local UL=UnitLevel;
if UnitExists("target")==nil then TargetNearestEnemy();end;
if CheckInteractDistance("target",2)==1 then 
	for C=1,200 do 
		if IsAttackAction(C)then 
			if not IsCurrentAction(C)then UseAction(C);end;C=200;
		end;
	end;
	if UL("player")>55 then LV="Rank 8" else 
	if UL("player")>47 then LV="Rank 7" else 
	if UL("player")>39 then LV="Rank 6" else 
	if UL("player")>31 then LV="Rank 5" else 
	if UL("player")>23 then LV="Rank 4" else 
	if UL("player")>15 then LV="Rank 3" else 
	if UL("player")>7 then LV="Rank 2" else 
	if UL("player")>0 then LV="Rank 1" else LV="0" 
	end;end;end;end;end;end;end;end; 
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Raptor Strike" and R==LV and GetSpellCooldown(C,"spell")==0 then 
			CastSpellByName("Raptor Strike("..LV..")");C=200;
		end;
	end;
	if UL("player")>57 then LV="Rank 4" else 
	if UL("player")>43 then LV="Rank 3" else 
	if UL("player")>29 then LV="Rank 2" else 
	if UL("player")>15 then LV="Rank 1" else LV="0" 
	end;end;end;end;
	CastSpellByName("Mongoose Bite("..LV..")");
	if UL("player")>53 then LV="Rank 3" else 
	if UL("player")>41 then LV="Rank 2" else 
	if UL("player")>30 then LV="Rank 1" else LV="0" 
	end;end;end;
	CastSpellByName("Counterattack("..LV..")");
else 
	if not IsAutoRepeatAction(58)then CastSpellByName("Auto Shot");end;
	if UL("player")>59 then LV="Rank 6" else 
	if UL("player")>51 then LV="Rank 5" else 
	if UL("player")>43 then LV="Rank 4" else 
	if UL("player")>35 then LV="Rank 3" else 
	if UL("player")>27 then LV="Rank 2" else 
	if UL("player")>19 then LV="Rank 1" else LV="0" 
	end;end;end;end;end;end;
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Aimed Shot" and R==LV and GetSpellCooldown(C,"spell")==0 then 
			CastSpellByName("Aimed Shot("..LV..")");C=200;
		end;
	end;
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Trueshot" and GetSpellCooldown(C,"spell")==0 then 
			CastSpellByName("Trueshot");C=200;
		end;
	end;
	if UL("player")>59 then LV="Rank 8" else 
	if UL("player")>51 then LV="Rank 7" else 
	if UL("player")>43 then LV="Rank 6" else 
	if UL("player")>35 then LV="Rank 5" else 
	if UL("player")>27 then LV="Rank 4" else 
	if UL("player")>19 then LV="Rank 3" else 
	if UL("player")>11 then LV="Rank 2" else 
	if UL("player")>5 then LV="Rank 1" else LV="0" 
	end;end;end;end;end;end;end;end; 
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Arcane Shot" and R==LV and GetSpellCooldown(C,"spell")==0 then 
			CastSpellByName("Arcane Shot("..LV..")");C=200;
		end;
	end;
end;



-=Hunter мультиатака=- -=Raptor Strike,Mongoose Bite,Counterattack=-+-=Trueshot/Arcane Shot=- вариант 2
Выстрел+Trueshot/Arcane Shot или Атака+Raptor Strike,Mongoose Bite,Counterattack в зависимости от раcстояния до цели

/script local N,R,C;local UL=UnitLevel;if UnitExists("target")==nil then TargetNearestEnemy();end;if CheckInteractDistance("target",2)==1 then for C=1,200 do if IsAttackAction(C)then if not IsCurrentAction(C)then UseAction(C);end;C=200;end;end;if UL("player")>55 then LV="Rank 8" else if UL("player")>47 then LV="Rank 7" else if UL("player")>39 then LV="Rank 6" else if UL("player")>31 then LV="Rank 5" else if UL("player")>23 then LV="Rank 4" else if UL("player")>15 then LV="Rank 3" else if UL("player")>7 then LV="Rank 2" else if UL("player")>0 then LV="Rank 1" else LV="0" end;end;end;end;end;end;end;end; for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Raptor Strike" and R==LV and GetSpellCooldown(C,"spell")==0 then CastSpellByName("Raptor Strike("..LV..")");C=200;end;end;if UL("player")>57 then LV="Rank 4" else if UL("player")>43 then LV="Rank 3" else if UL("player")>29 then LV="Rank 2" else if UL("player")>15 then LV="Rank 1" else LV="0" end;end;end;end;CastSpellByName("Mongoose Bite("..LV..")");if UL("player")>53 then LV="Rank 3" else if UL("player")>41 then LV="Rank 2" else if UL("player")>30 then LV="Rank 1" else LV="0" end;end;end;CastSpellByName("Counterattack("..LV..")");else if not IsAutoRepeatAction(58)then CastSpellByName("Auto Shot");else for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Trueshot" and GetSpellCooldown(C,"spell")==0 then CastSpellByName("Trueshot");C=200;end;end;if UL("player")>59 then LV="Rank 8" else if UL("player")>51 then LV="Rank 7" else if UL("player")>43 then LV="Rank 6" else if UL("player")>35 then LV="Rank 5" else if UL("player")>27 then LV="Rank 4" else if UL("player")>19 then LV="Rank 3" else if UL("player")>11 then LV="Rank 2" else if UL("player")>5 then LV="Rank 1" else LV="0" end;end;end;end;end;end;end;end;for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Arcane Shot" and R==LV and GetSpellCooldown(C,"spell")==0 then CastSpellByName("Arcane Shot("..LV..")");C=200;end;end;end;end;

/script local N,R,C;local UL=UnitLevel;
if UnitExists("target")==nil then TargetNearestEnemy();end;
if CheckInteractDistance("target",2)==1 then 
	for C=1,200 do 
		if IsAttackAction(C)then 
			if not IsCurrentAction(C)then UseAction(C);end;C=200;
		end;
	end;
	if UL("player")>55 then LV="Rank 8" else 
	if UL("player")>47 then LV="Rank 7" else 
	if UL("player")>39 then LV="Rank 6" else 
	if UL("player")>31 then LV="Rank 5" else 
	if UL("player")>23 then LV="Rank 4" else 
	if UL("player")>15 then LV="Rank 3" else 
	if UL("player")>7 then LV="Rank 2" else 
	if UL("player")>0 then LV="Rank 1" else LV="0" 
	end;end;end;end;end;end;end;end; 
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Raptor Strike" and R==LV and GetSpellCooldown(C,"spell")==0 then 
			CastSpellByName("Raptor Strike("..LV..")");C=200;
		end;
	end;
	if UL("player")>57 then LV="Rank 4" else 
	if UL("player")>43 then LV="Rank 3" else 
	if UL("player")>29 then LV="Rank 2" else 
	if UL("player")>15 then LV="Rank 1" else LV="0" 
	end;end;end;end;
	CastSpellByName("Mongoose Bite("..LV..")");
	if UL("player")>53 then LV="Rank 3" else 
	if UL("player")>41 then LV="Rank 2" else 
	if UL("player")>30 then LV="Rank 1" else LV="0" 
	end;end;end;
	CastSpellByName("Counterattack("..LV..")");
else 
	if not IsAutoRepeatAction(58)then CastSpellByName("Auto Shot");
	else 
		for C=1,200 do N,R=GetSpellName(C,"spell");
			if N=="Trueshot" and GetSpellCooldown(C,"spell")==0 then 
				CastSpellByName("Trueshot");C=200;
			end;
		end;
		if UL("player")>59 then LV="Rank 8" else 
		if UL("player")>51 then LV="Rank 7" else 
		if UL("player")>43 then LV="Rank 6" else 
		if UL("player")>35 then LV="Rank 5" else 
		if UL("player")>27 then LV="Rank 4" else 
		if UL("player")>19 then LV="Rank 3" else 
		if UL("player")>11 then LV="Rank 2" else 
		if UL("player")>5 then LV="Rank 1" else LV="0" 
		end;end;end;end;end;end;end;end;
		for C=1,200 do N,R=GetSpellName(C,"spell");
			if N=="Arcane Shot" and R==LV and GetSpellCooldown(C,"spell")==0 then 
				CastSpellByName("Arcane Shot("..LV..")");C=200;
			end;
		end;
	end;
end;