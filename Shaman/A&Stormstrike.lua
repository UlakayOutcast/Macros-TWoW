-=Attack & Stormstrike=-
Автоатака и Holy Strike на 1 кнопку.
Для стандартных макросов. С проверкой перезарядки.
Необходимо что бы "Attack" была на любой панели.
/script local C,N;for C=1,99 do if GetSpellName(C,"spell")=="Stormstrike"then N=C;end;end;if GetSpellCooldown(N,"spell")==0 then CastSpellByName("Stormstrike");else for C=1,99 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C);end;end;end
-
/script local C,N;
for C=1,99 do if GetSpellName(C,"spell")=="Stormstrike"then N=C;end;end;
if GetSpellCooldown(N,"spell")==0 then 
	CastSpellByName("Stormstrike");
else 
	for C=1,99 do 
		if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C);end;
	end;
end

-=-

/script local C;for C=1,99 do if IsAttackAction(C) and not IsCurrentAction(C)then CastSpellByName("Attack");else for C=1,199 do if GetSpellName(C,"spell")=="Stormstrike"and GetSpellCooldown(C,"spell")==0 then CastSpellByName("Stormstrike");end;end;end;end
-
/script local C;
for C=1,99 do 
	if IsAttackAction(C) and not IsCurrentAction(C)then CastSpellByName("Attack");
	else 
		for C=1,199 do 
			if GetSpellName(C,"spell")=="Stormstrike"and GetSpellCooldown(C,"spell")==0 then CastSpellByName("Stormstrike");end;
		end;
	end;
end