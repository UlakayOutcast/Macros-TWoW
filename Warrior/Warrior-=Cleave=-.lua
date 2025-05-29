-=[Attack]+Overpower,Heroic Strike=-

-=OHS=- С проверкой отката
/script local ix;if UnitMana("player")>=20 then for ix=1,192 do if GetSpellName(ix,"spell")=="Cleave"then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Cleave");break;end;end;end;end;

/script local ix;
if UnitMana("player")>=20 then 
	for ix=1,192 do 
		if GetSpellName(ix,"spell")=="Cleave"then 
			if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Cleave");break;end;
		end;
	end;
end;