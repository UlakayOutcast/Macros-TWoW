
/script local ix,spellName,spellRank=192;while(ix>0) do spellName=GetSpellName(ix,"spell");if spellName=="Carve" then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");break;end;if nil then CastSpellByName("Carve");end;end;ix=ix-1;end;

/script 
local ix,spellName,spellRank=192;
while(ix>0) do 
	spellName=GetSpellName(ix,"spell");
	if spellName=="Carve" then 
		if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");break;end;
		if nil then CastSpellByName("Carve");end;
	end;
	ix=ix-1;
end;