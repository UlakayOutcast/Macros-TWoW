-=Icicles + Cold Snap=-

/script local ix;for ix=1,199 do if GetSpellName(ix,"spell")=="Icicles"then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Icicles"); else CastSpellByName("Cold Snap");end;break;end;end;

/script 
local ix;
for ix=1,199 do 
	if GetSpellName(ix,"spell")=="Icicles"then 
		if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Icicles"); 
		else CastSpellByName("Cold Snap");end;
		break;
	end;
end;