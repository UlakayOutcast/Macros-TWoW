-=Attack & Crusader Strike=- 
Автоатака и Crusader Strike на 1 кнопку.
Для стандартных макросов. С проверкой перезарядки.
Необходимо что бы "Attack" была на любой панели.
-=-
Attack > Crusader Strike
/script local CS,X="Crusader Strike";for X=1,192 do if IsAttackAction(X)then if not IsCurrentAction(X)then UseAction(X)else X=1;while(GetSpellName(X,1)~=(nil or CS))do X=X+1;end;if GetSpellCooldown(X,1)==0 then CastSpellByName(CS)end;end;break;end;end
--
/script local CS,X="Crusader Strike";
for X=1,192 do 
	if IsAttackAction(X)then 
		if not IsCurrentAction(X)then 
			UseAction(X)
		else 
			X=1;while(GetSpellName(X,1)~=(nil or CS))do X=X+1;end;if GetSpellCooldown(X,1)==0 then CastSpellByName(CS)end;
		end;
		break;
	end;
end

-=-
Crusader Strike > Attack
/script local X=1;while(GetSpellName(X,1)~=(nil or"Crusader Strike"))do X=X+1;end;if GetSpellCooldown(X,1)==0 then CastSpellByName("Crusader Strike")else for X=1,192 do if IsAttackAction(X)and not IsCurrentAction(X)then UseAction(X)end;end;end
--
/script local X=1;
while(GetSpellName(X,1)~=(nil or"Crusader Strike"))do X=X+1;end;
if GetSpellCooldown(X,1)==0 then 
	CastSpellByName("Crusader Strike")
else 
	for X=1,192 do 
		if IsAttackAction(X)and not IsCurrentAction(X)then UseAction(X)end;
	end;
end
