-At MuBiCh FuRaCl-
Druid-=Attack+Maul+Bite+Charge+Fury+Rake+Claw=-Bear & Cat -эксперементальный Rake-
/script local N,R,C;for C=1,99 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;end;if buffed("Bear Form")=="buff"or buffed("Dire Bear Form")=="buff"then if CheckInteractDistance("target",2)==1 then for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Savage Bite" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Savage Bite");C=200;end;end;for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Maul" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>9 or buffed("Clearcasting")=="buff") then CastSpellByName("Maul");C=200;end;end;else CastSpellByName("Feral Charge");end;end;if buffed("Cat Form")=="buff"then if buffed("Tiger's Fury")==nil and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Tiger's Fury")end;for C = 1,32 do N,R = UnitDebuff("target",C); if not N then C=32;R=1; else if strfind(N,"Ability_Druid_Disembowel") then C=32;R=0; end; end; end; if R~=0 and (UnitCreatureType("target")~="Elementals" and UnitCreatureType("target")~="Mechanicals" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead") then for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Rake" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>34 or buffed("Clearcasting")=="buff") then CastSpellByName("Rake");C=200;end;end;end;for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Claw" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>39 or buffed("Clearcasting")=="buff") then CastSpellByName("Claw");C=200;end;end;end 

/script local N,R,C;
for C=1,99 do 
	if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;
end;
if buffed("Bear Form")=="buff"or buffed("Dire Bear Form")=="buff"then 
	if CheckInteractDistance("target",2)==1 then 
		for C=1,200 do N,R=GetSpellName(C,"spell");
			if N=="Savage Bite" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then 
				CastSpellByName("Savage Bite");C=200;
			end;
		end;
		for C=1,200 do N,R=GetSpellName(C,"spell");
			if N=="Maul" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>9 or buffed("Clearcasting")=="buff") then 
				CastSpellByName("Maul");C=200;
			end;
		end;
	else 
		CastSpellByName("Feral Charge");
	end;
end;
if buffed("Cat Form")=="buff"then 
	if buffed("Tiger's Fury")==nil and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Tiger's Fury")end;
	for C = 1,32 do 
		N,R = UnitDebuff("target",C); 
		if not N then C=32;R=1; else if strfind(N,"Ability_Druid_Disembowel") then C=32;R=0; end; end; 
	end; 
	if R~=0 and (UnitCreatureType("target")~="Elementals" and UnitCreatureType("target")~="Mechanicals" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead") then 
		for C=1,200 do N,R=GetSpellName(C,"spell");
			if N=="Rake" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>34 or buffed("Clearcasting")=="buff") then 
				CastSpellByName("Rake");C=200;
			end;
		end;
	end;
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Claw" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>39 or buffed("Clearcasting")=="buff") then 
			CastSpellByName("Claw");C=200;
		end;
	end;
end 


Druid-=Attack+Maul+Bite+Charge+Fury+Claw=-Bear & Cat
/script local N,R,C;for C=1,99 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;end;if buffed("Bear Form")=="buff"or buffed("Dire Bear Form")=="buff"then if CheckInteractDistance("target",2)==1 then for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Savage Bite" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Savage Bite");C=200;end;end;for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Maul" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>9 or buffed("Clearcasting")=="buff") then CastSpellByName("Maul");C=200;end;end;else CastSpellByName("Feral Charge");end;end;if buffed("Cat Form")=="buff"then if buffed("Tiger's Fury")==nil and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Tiger's Fury")end;for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Claw" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>39 or buffed("Clearcasting")=="buff") then CastSpellByName("Claw");C=200;end;end;end 

/script local N,R,C;
for C=1,99 do 
	if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;
end;
if buffed("Bear Form")=="buff"or buffed("Dire Bear Form")=="buff"then 
	if CheckInteractDistance("target",2)==1 then 
		for C=1,200 do N,R=GetSpellName(C,"spell");
			if N=="Savage Bite" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then 
				CastSpellByName("Savage Bite");C=200;
			end;
		end;
		for C=1,200 do N,R=GetSpellName(C,"spell");
			if N=="Maul" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>9 or buffed("Clearcasting")=="buff") then 
				CastSpellByName("Maul");C=200;
			end;
		end;
	else 
		CastSpellByName("Feral Charge");
	end;
end;
if buffed("Cat Form")=="buff"then 
	if buffed("Tiger's Fury")==nil and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Tiger's Fury")end;
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Claw" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>39 or buffed("Clearcasting")=="buff") then 
			CastSpellByName("Claw");C=200;
		end;
	end;
end 


Druid-=Attack+Maul+Bite+Charge=-Bear
/script local N,R,C;for C=1,99 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;end;if buffed("Bear Form")=="buff"or buffed("Dire Bear Form")=="buff"then if CheckInteractDistance("target",2)==1 then for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Savage Bite" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Savage Bite");C=200;end;end;for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Maul" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>9 or buffed("Clearcasting")=="buff") then CastSpellByName("Maul");C=200;end;end;else CastSpellByName("Feral Charge");end;end

/script local N,R,C;
for C=1,99 do 
	if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;
end;
if buffed("Bear Form")=="buff"or buffed("Dire Bear Form")=="buff"then 
	if CheckInteractDistance("target",2)==1 then 
		for C=1,200 do N,R=GetSpellName(C,"spell");
			if N=="Savage Bite" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then 
				CastSpellByName("Savage Bite");C=200;
			end;
		end;
		for C=1,200 do N,R=GetSpellName(C,"spell");
			if N=="Maul" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>9 or buffed("Clearcasting")=="buff") then 
				CastSpellByName("Maul");C=200;
			end;
		end;
	else 
		CastSpellByName("Feral Charge");
	end;
end


Druid-=Attack+Fury+Rake+Claw=-Cat
/script local N,R,C;for C=1,99 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;end;if buffed("Cat Form")=="buff"then if buffed("Tiger's Fury")==nil and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Tiger's Fury")end;for C = 1,32 do N,R = UnitDebuff("target",C); if not N then C=32;R=1; else if strfind(N,"Ability_Druid_Disembowel") then C=32;R=0; end; end; end; if R~=0 and (UnitCreatureType("target")~="Elementals" and UnitCreatureType("target")~="Mechanicals" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead") then for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Rake" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>34 or buffed("Clearcasting")=="buff") then CastSpellByName("Rake");C=200;end;end;end;for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Claw" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>39 or buffed("Clearcasting")=="buff") then CastSpellByName("Claw");C=200;end;end;end 

/script local N,R,C;
for C=1,99 do 
	if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;
end;
if buffed("Cat Form")=="buff"then 
	if buffed("Tiger's Fury")==nil and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Tiger's Fury")end;
	for C = 1,32 do 
		N,R = UnitDebuff("target",C); 
		if not N then C=32;R=1; else if strfind(N,"Ability_Druid_Disembowel") then C=32;R=0; end; end; 
	end; 
	if R~=0 and (UnitCreatureType("target")~="Elementals" and UnitCreatureType("target")~="Mechanicals" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead") then 
		for C=1,200 do N,R=GetSpellName(C,"spell");
			if N=="Rake" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>34 or buffed("Clearcasting")=="buff") then 
				CastSpellByName("Rake");C=200;
			end;
		end;
	end;
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Claw" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>39 or buffed("Clearcasting")=="buff") then 
			CastSpellByName("Claw");C=200;
		end;
	end;
end 


Druid-=Attack+Fury+Claw=-Cat
/script local N,R,C;for C=1,99 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;end;if buffed("Cat Form")=="buff"then if buffed("Tiger's Fury")==nil and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Tiger's Fury")end;for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Claw" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>39 or buffed("Clearcasting")=="buff") then CastSpellByName("Claw");C=200;end;end;end 

/script local N,R,C;
for C=1,99 do 
	if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;
end;
if buffed("Cat Form")=="buff"then 
	if buffed("Tiger's Fury")==nil and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Tiger's Fury")end;
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Claw" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>39 or buffed("Clearcasting")=="buff") then 
			CastSpellByName("Claw");C=200;
		end;
	end;
end 
