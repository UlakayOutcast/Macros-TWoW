-=Attack & Holy Strike=- SuperMacro  v2
Автоатака и Holy Strike на 1 кнопку.
Необходимо что бы "Attack" была на любой панели.

/script local N,C;for C=1,80,1 do if GetSpellName(C,"spell")=="Holy Strike" then N=C;C=80;end;end;if GetSpellCooldown(N,"spell")==0 and UnitLevel("player")>5 then if UnitLevel("player")>57 then CastSpellByName("Holy Strike(Rank 8)");else if UnitLevel("player")>51 then CastSpellByName("Holy Strike(Rank 7)");else if UnitLevel("player")>47 then CastSpellByName("Holy Strike(Rank 6)");else if UnitLevel("player")>41 then CastSpellByName("Holy Strike(Rank 5)");else if UnitLevel("player")>33 then CastSpellByName("Holy Strike(Rank 4)");else if UnitLevel("player")>21 then CastSpellByName("Holy Strike(Rank 3)");else if UnitLevel("player")>11 then CastSpellByName("Holy Strike(Rank 2)");else if UnitLevel("player")>5 then CastSpellByName("Holy Strike(Rank 1)");end;end;end;end;end;end;end;end;else for C=1,172 do if IsAttackAction(C)then if not IsCurrentAction(C)then UseAction(C);end;end;end;end;

/script local N,C;
for C=1,80,1 do if GetSpellName(C,"spell")=="Holy Strike" then N=C;C=80;end;end;
if GetSpellCooldown(N,"spell")==0 and UnitLevel("player")>5 then 
	if UnitLevel("player")>57 then CastSpellByName("Holy Strike(Rank 8)");else 
	if UnitLevel("player")>51 then CastSpellByName("Holy Strike(Rank 7)");else 
	if UnitLevel("player")>47 then CastSpellByName("Holy Strike(Rank 6)");else 
	if UnitLevel("player")>41 then CastSpellByName("Holy Strike(Rank 5)");else 
	if UnitLevel("player")>33 then CastSpellByName("Holy Strike(Rank 4)");else 
	if UnitLevel("player")>21 then CastSpellByName("Holy Strike(Rank 3)");else 
	if UnitLevel("player")>11 then CastSpellByName("Holy Strike(Rank 2)");else 
	if UnitLevel("player")>5 then CastSpellByName("Holy Strike(Rank 1)");
	end;end;end;end;end;end;end;end;
else 
	for C=1,172 do if IsAttackAction(C)then if not IsCurrentAction(C)then UseAction(C);end;end;end;
end;

-=Attack & Holy Strike=- v2
Для стандартных макросов. С проверкой отката.
Нужно менять "25" на порядок(место по счёту в книги заклинаний) "Holy Strike". И соответствующий ранг (Rank 2)

/run local C;if GetSpellCooldown(25,"spell")==0 then CastSpellByName("Holy Strike(Rank 2)");else for C=1,172 do if IsAttackAction(C)then if not IsCurrentAction(C)then UseAction(C);end;end;end;end

/run local C;
if GetSpellCooldown(25,"spell")==0 then 
	CastSpellByName("Holy Strike(Rank 2)");
else 
	for C=1,172 do 
		if IsAttackAction(C)then 
			if not IsCurrentAction(C)then UseAction(C);end;
		end;
	end;
end


-=Attack & Holy Strike=-
Для стандартных макросов.
Нужно менять соответствующий ранг (Rank 2)

/run local C;CastSpellByName("Holy Strike(Rank 2)");for C=1,172 do if IsAttackAction(C)then if not IsCurrentAction(C)then UseAction(C);end;end;end;

/run local C;CastSpellByName("Holy Strike(Rank 2)");
for C=1,172 do 
	if IsAttackAction(C)then 
		if not IsCurrentAction(C)then UseAction(C);end;
	end;
end;