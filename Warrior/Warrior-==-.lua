-=[Attack]+Overpower,Heroic Strike=-
for C=1,96 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C);end;end;CastSpellByName("Overpower");CastSpellByName("Heroic Strike");

/script 
for C=1,96 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C);end;end;
CastSpellByName("Overpower");
CastSpellByName("Heroic Strike");


-=OHS=- С проверкой отката
/script local X;for X=1,192 do if GetSpellName(X,"spell")=="Overpower"then if GetSpellCooldown(X,"spell")==0 then CastSpellByName("Overpower");else CastSpellByName("Heroic Strike");end;break;end;end;

/script local X;
for X=1,192 do 
	if GetSpellName(X,"spell")=="Overpower"then 
		if GetSpellCooldown(X,"spell")==0 then 
			CastSpellByName("Overpower");
		else 
			CastSpellByName("Heroic Strike");
		end;
		break;
	end;
end;
