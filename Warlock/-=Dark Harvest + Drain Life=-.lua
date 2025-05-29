-=Dark Harvest + Drain Life=-

/script local x,s;for x=1,196 do if GetSpellName(x,1)=="Dark Harvest"then s=x;break;end;end;if UnitExists("target")then if GetSpellCooldown(s,1)==0 then CastSpellByName("Dark Harvest")else CastSpellByName("Drain Life")end;end;

/script local x,s;
for x=1,196 do 
	if GetSpellName(x,1)=="Dark Harvest"then s=x;break;end;
end;
if UnitExists("target")then 
	if GetSpellCooldown(s,1)==0 then 
		CastSpellByName("Dark Harvest")
	else 
		CastSpellByName("Drain Life")
	end;
end;