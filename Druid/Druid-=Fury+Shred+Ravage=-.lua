Druid-=Fury+Shred+Ravage=-
/script local C;if UnitExists("target")==nil then TargetNearestEnemy();end;if buffed("Tiger's Fury")==nil and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Tiger's Fury")end;if buffed("Prowl")==nil then for C=1,99 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;end;for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Shred" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then CastSpellByName("Shred");C=200;end;end;else for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Ravage" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then CastSpellByName("Ravage");C=200;end;end;end 

/script local C;
if UnitExists("target")==nil then TargetNearestEnemy();end;
if buffed("Tiger's Fury")==nil and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Tiger's Fury")end;
if buffed("Prowl")==nil then 
	for C=1,99 do 
		if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;
	end;
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Shred" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then 
			CastSpellByName("Shred");C=200;
		end;
	end;
else 
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Ravage" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then 
			CastSpellByName("Ravage");C=200;
		end;
	end;
end 


Druid-=Shred+Ravage=-
/script local C;if UnitExists("target")==nil then TargetNearestEnemy();end;if buffed("Prowl")==nil then for C=1,99 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;end;for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Shred" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then CastSpellByName("Shred");C=200;end;end;else for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Ravage" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then CastSpellByName("Ravage");C=200;end;end;end 

/script local C;
if UnitExists("target")==nil then TargetNearestEnemy();end;
if buffed("Prowl")==nil then 
	for C=1,99 do 
		if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;
	end;
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Shred" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then 
			CastSpellByName("Shred");C=200;
		end;
	end;
else 
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Ravage" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then 
			CastSpellByName("Ravage");C=200;
		end;
	end;
end 
