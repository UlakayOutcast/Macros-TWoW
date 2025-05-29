-=Attack & Holy Strike=-
Автоатака и Holy Strike на 1 кнопку.
Для стандартных макросов. С проверкой перезарядки.
Необходимо что бы "Attack" была на любой панели.
-=-
Attack > Holy Strike
/script local C;for C=1,192 do if IsAttackAction(C)then if not IsCurrentAction(C)then UseAction(C);else for C=1,192 do if GetSpellName(C,"spell")=="Holy Strike"then CastSpellByName("Holy Strike");break;end;end;end;end;break;end
--
/script local C;
for C=1,192 do 
	if IsAttackAction(C)then 
		if not IsCurrentAction(C)then 
			UseAction(C);
		else 
			for C=1,192 do if GetSpellName(C,"spell")=="Holy Strike"then CastSpellByName("Holy Strike");break;end;end;
		end;
	end;
	break;
end

-=-
Holy Strike > Attack
/script local C;for C=1,192 do if GetSpellName(C,"spell")=="Holy Strike"then break;end;end;if GetSpellCooldown(C,"spell")==0 then CastSpellByName("Holy Strike");else for C=1,192 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C);end;end;end
--
/script local C;
for C=1,192 do if GetSpellName(C,"spell")=="Holy Strike"then break;end;end;
if GetSpellCooldown(C,"spell")==0 then 
	CastSpellByName("Holy Strike");
else 
	for C=1,192 do 
		if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C);end;
	end;
end


-=Attack & Holy Strike=-
Для стандартных макросов.

/run local C;CastSpellByName("Holy Strikefor C=1,172 do if IsAttackAction(C)then if not IsCurrentAction(C)then UseAction(C);end;end;end;

/run local C;CastSpellByName("Holy Strike");
for C=1,172 do 
	if IsAttackAction(C)then 
		if not IsCurrentAction(C)then UseAction(C);end;
	end;
end;