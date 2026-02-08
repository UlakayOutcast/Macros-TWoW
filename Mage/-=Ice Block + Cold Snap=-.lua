-=Ice Block + Cold Snap=-

/script local ix;for ix=1,199 do if GetSpellName(ix,"spell")=="Ice Block"then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Ice Block"); else CastSpellByName("Cold Snap");end;break;end;end;

/script 
local ix;
for ix=1,199 do 
	if GetSpellName(ix,"spell")=="Ice Block"then 
		if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Ice Block"); 
		else CastSpellByName("Cold Snap");end;
		break;
	end;
end;