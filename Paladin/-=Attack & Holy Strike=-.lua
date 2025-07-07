-=Attack & Holy Strike=- 
Автоатака и Holy Strike на 1 кнопку.
Для стандартных макросов. С проверкой перезарядки.
Необходимо что бы "Attack" была на любой панели.
-=-
Attack > Holy Strike
/script local X;for X=1,192 do if IsAttackAction(X)then if not IsCurrentAction(X)then UseAction(X)else X=1;while(GetSpellName(X,1)~=(nil or"Holy Strike"))do X=X+1;end;if GetSpellCooldown(X,1)==0 then CastSpellByName("Holy Strike")end;end;break;end;end
--
/script local X;
for X=1,192 do 
	if IsAttackAction(X)then 
		if not IsCurrentAction(X)then 
			UseAction(X)
		else 
			X=1;while(GetSpellName(X,1)~=(nil or"Holy Strike"))do X=X+1;end;if GetSpellCooldown(X,1)==0 then CastSpellByName("Holy Strike")end;
		end;
		break;
	end;
end

-=-
Holy Strike > Attack
/script local X=1;while(GetSpellName(X,1)~=(nil or"Holy Strike"))do X=X+1;end;if GetSpellCooldown(X,1)==0 then CastSpellByName("Holy Strike")else for X=1,192 do if IsAttackAction(X)and not IsCurrentAction(X)then UseAction(X)end;end;end
--
/script local X=1;
while(GetSpellName(X,1)~=(nil or"Holy Strike"))do X=X+1;end;
if GetSpellCooldown(X,1)==0 then 
	CastSpellByName("Holy Strike")
else 
	for X=1,192 do 
		if IsAttackAction(X)and not IsCurrentAction(X)then UseAction(X)end;
	end;
end

-=-
SuperMacro
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

-=-
