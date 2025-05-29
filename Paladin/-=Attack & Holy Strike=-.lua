-=Attack & Holy Strike=- SuperMacro
Автоатака и Holy Strike на 1 кнопку.
Необходимо что бы "Attack" была на любой панели.

/script local N,C;for C=1,200,1 do N=GetSpellName(C,"spell");if N=="Holy Strike" then if GetSpellCooldown(C,"spell")==0 then if UnitLevel("player")>57 then CastSpellByName("Holy Strike(Rank 8)");else if UnitLevel("player")>51 then CastSpellByName("Holy Strike(Rank 7)");else if UnitLevel("player")>47 then CastSpellByName("Holy Strike(Rank 6)");else if UnitLevel("player")>41 then CastSpellByName("Holy Strike(Rank 5)");else if UnitLevel("player")>33 then CastSpellByName("Holy Strike(Rank 4)");else if UnitLevel("player")>21 then CastSpellByName("Holy Strike(Rank 3)");else if UnitLevel("player")>11 then CastSpellByName("Holy Strike(Rank 2)");else if UnitLevel("player")>0 then CastSpellByName("Holy Strike(Rank 1)");end;end;end;end;end;end;end;end;end;C=200;else for C=1,172 do if IsAttackAction(C)then if not IsCurrentAction(C)then UseAction(C);end;end;end;end;end

/script local N,C;
for C=1,200,1 do N=GetSpellName(C,"spell");
	if N=="Holy Strike" then 
		if GetSpellCooldown(C,"spell")==0 then 
			if UnitLevel("player")>57 then CastSpellByName("Holy Strike(Rank 8)");else 
			if UnitLevel("player")>51 then CastSpellByName("Holy Strike(Rank 7)");else 
			if UnitLevel("player")>47 then CastSpellByName("Holy Strike(Rank 6)");else 
			if UnitLevel("player")>41 then CastSpellByName("Holy Strike(Rank 5)");else 
			if UnitLevel("player")>33 then CastSpellByName("Holy Strike(Rank 4)");else 
			if UnitLevel("player")>21 then CastSpellByName("Holy Strike(Rank 3)");else 
			if UnitLevel("player")>11 then CastSpellByName("Holy Strike(Rank 2)");else 
			if UnitLevel("player")>0 then CastSpellByName("Holy Strike(Rank 1)");
			end;end;end;end;end;end;end;end;
		end;C=200;
	else 
		for C=1,172 do if IsAttackAction(C)then if not IsCurrentAction(C)then UseAction(C);end;end;end;
	end;
end

-=Attack & Holy Strike=-
Для стандартных макросов. С проверкой отката.
Нужно менять "25" на порядок(место по счёту в книги заклинаний) "Holy Strike". И соответствующий ранг (Rank 2)

/run local C;if GetSpellCooldown(25,"spell")==0 then CastSpellByName("Holy Strike(Rank 2)");end;for C=1,172 do if IsAttackAction(C)then if not IsCurrentAction(C)then UseAction(C);end;end;end;

/run local C;
if GetSpellCooldown(25,"spell")==0 then 
	CastSpellByName("Holy Strike(Rank 2)");
end;
for C=1,172 do 
	if IsAttackAction(C)then 
		if not IsCurrentAction(C)then UseAction(C);end;
	end;
end;


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