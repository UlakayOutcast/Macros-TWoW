-=BlastSurge=-

/script local ix,s1,s2;for ix=1,99 do if GetSpellName(ix,"spell")=="Arcane Surge"then s1=ix;end;if GetSpellName(ix,"spell")=="Fire Blast"then s2=ix;end;end;if s1 or s2 then if GetSpellCooldown(s1,"spell")==0 or GetSpellCooldown(s2,"spell")==0 then if BlastSurge()==0 then CastSpellByName("Fire Blast"); else CastSpellByName("Arcane Surge");end;end;end;

/script 
local ix,s1,s2;
for ix=1,99 do 
	if GetSpellName(ix,"spell")=="Arcane Surge"then s1=ix;end;
	if GetSpellName(ix,"spell")=="Fire Blast"then s2=ix;end;
end;
if s1 or s2 then 
	if GetSpellCooldown(s1,"spell")==0 or GetSpellCooldown(s2,"spell")==0 then 
		if BlastSurge()==0 then CastSpellByName("Fire Blast"); 
		else CastSpellByName("Arcane Surge");end;
	end;
end;

-=-
Для правильной работы необходим аддон Trivia https://github.com/UlakayOutcast/Trivia

/script local ix,sw;for ix=1,99 do if GetSpellName(ix,1)=="Arcane Surge"then if GetSpellCooldown(ix,1)==0 then if BlastSurge()>0 then sw=1;end;end;if sw==nil then CastSpellByName("Fire Blast")else CastSpellByName("Arcane Surge")end;break;end;end;

/script 
local ix,sw;
for ix=1,99 do 
	if GetSpellName(ix,1)=="Arcane Surge"then if GetSpellCooldown(ix,1)==0 then if BlastSurge()>0 then sw=1;end;end;
		if sw==nil then CastSpellByName("Fire Blast")else CastSpellByName("Arcane Surge")end;
		break;
	end;
end;