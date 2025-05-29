-=RGS=-
/script local C,N;for C=1,99 do if GetSpellName(C,"spell")=="Ghostly Strike"then N=C;C=99;end;end;if GetSpellCooldown(N,"spell")==0 and UnitMana("player")>39 then CastSpellByName("Ghostly Strike");else for C=1,99 do if GetSpellName(C,"spell")=="Sinister Strike"then N=C;C=99;end;end;if GetSpellCooldown(N,"spell")==0 and UnitMana("player")>44 then CastSpellByName("Sinister Strike");else for C=1,99 do if GetSpellName(C,"spell")=="Riposte"then N=C;C=99;end;end;if GetSpellCooldown(N,"spell")==0 and UnitMana("player")>9 then CastSpellByName("Riposte");end end end

/script local C,N;
for C=1,99 do if GetSpellName(C,"spell")=="Ghostly Strike"then N=C;C=99;end;end;
if GetSpellCooldown(N,"spell")==0 and UnitMana("player")>39 then 
	CastSpellByName("Ghostly Strike");
else 
	for C=1,99 do if GetSpellName(C,"spell")=="Sinister Strike"then N=C;C=99;end;end;
	if GetSpellCooldown(N,"spell")==0 and UnitMana("player")>44 then 
		CastSpellByName("Sinister Strike");
	else 
		for C=1,99 do if GetSpellName(C,"spell")=="Riposte"then N=C;C=99;end;end;
		if GetSpellCooldown(N,"spell")==0 and UnitMana("player")>9 then 
			CastSpellByName("Riposte");
		end 
	end 
end 