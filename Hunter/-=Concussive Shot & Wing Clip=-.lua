-=Concussive Shot & Wing Clip=-
Concussive Shot или Wing Clip в зависимости от расcтояния до цели
/script local x;if CheckInteractDistance("target",2)~=1 then CastSpellByName("Concussive Shot");else for x=1,196 do if GetSpellName(x,"spell")=="Wing Clip"then if GetSpellCooldown(x,"spell")==0 then CastSpellByName("Wing Clip")end;end;end;end;

/script local x;
if CheckInteractDistance("target",2)~=1 then CastSpellByName("Concussive Shot");
else 
	for x=1,196 do 
		if GetSpellName(x,"spell")=="Wing Clip"then if GetSpellCooldown(x,"spell")==0 then CastSpellByName("Wing Clip")end;end;
	end;
end;


-=-s
/script local x,c,w;for x=1,196 do if GetSpellName(x,"spell")=="Concussive Shot"then c=x;end;if GetSpellName(x,"spell")=="Wing Clip"then w=x;end;end;if CheckInteractDistance("target",2)~=1 then if GetSpellCooldown(c,"spell")==0 then CastSpellByName("Concussive Shot")end;else if GetSpellCooldown(w,"spell")==0 then CastSpellByName("Wing Clip")end;end;

/script local x,c,w;
for x=1,196 do 
	if GetSpellName(x,"spell")=="Concussive Shot"then c=x;end;
	if GetSpellName(x,"spell")=="Wing Clip"then w=x;end;
end;
if CheckInteractDistance("target",2)~=1 then 
	if GetSpellCooldown(c,"spell")==0 then CastSpellByName("Concussive Shot")end;
else 
	if GetSpellCooldown(w,"spell")==0 then CastSpellByName("Wing Clip")end;
end;