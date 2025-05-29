/script if buffed("Stealth")~="buff" then CastSpellByName("Stealth");end;



-=-



/script local tex,cnt,ix;
for ix=1,32 do 
	tex,cnt = UnitBuff("player",ix)
	if tex then if strfind(tex,"Ability_Stealth")then ix=32;end;
	else 
		CastSpellByName("Stealth")ix=32;
	end;
end;