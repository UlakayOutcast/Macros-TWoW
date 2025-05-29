-=pet attack=-
/script local x;if buffed("Eyes of the Beast")~="buff" then CastSpellByName("Disengage")else CastSpellByName("Growl")end;
/script local ix;for ix=1,12 do if GetSpellName(ix,"pet")=="Growl"then if GetSpellCooldown(ix,"pet")==0 then CastSpellByName("Growl","pet");if not 1 then CastSpellByName("Attack")end;end;end;end;
/script local ix;for ix=1,12 do if GetSpellName(ix,"pet")=="Lightning Breath"then if GetSpellCooldown(ix,"pet")==0 then CastSpellByName("Lightning Breath","pet");if not 1 then CastSpellByName("Attack")end;end;end;end;
/script local ix;for ix=1,12 do if GetSpellName(ix,"pet")=="Claw"then if GetSpellCooldown(ix,"pet")==0 then CastSpellByName("Claw","pet");if not 1 then CastSpellByName("Attack")end;end;end;end;
/script local ix;for ix=1,12 do if GetSpellName(ix,"pet")=="Screech"then if GetSpellCooldown(ix,"pet")==0 then CastSpellByName("Screech","pet");if not 1 then CastSpellByName("Attack")end;end;end;end;



-=Call Pet + Revive Pet + PetAttack + Growl=-
/script local Fam,Sp,ix,rnd;if not UnitExists("pet") then CastSpellByName("Call Pet");else if UnitHealth("pet")==0 then CastSpellByName("Revive Pet");else PetAttack();CastSpellByName("Growl");end;end;

/script local Fam,Sp,ix,rnd;
if not UnitExists("pet") then CastSpellByName("Call Pet");
else 
	if UnitHealth("pet")==0 then CastSpellByName("Revive Pet");
	else 
		PetAttack();CastSpellByName("Growl");
	end;
end;



-=pet multi attack=-
/script local Fam,Sp,ix;if not UnitExists("pet") then if not UnitExists("pet") then CastSpellByName("Call Pet");end;else Fam=UnitCreatureFamily("pet");if UnitHealth("pet")<=0 then CastSpellByName("Revive Pet");else PetAttack();if UnitExists("pettarget") and UnitIsUnit("target","pettarget") then CastSpellByName("Growl");end;if Fam=="Wind Serpent" then Sp="Lightning Breath";ix=1;end;if Fam=="Owl" then Sp="Screech";ix=1;end;if Fam=="Wolf" then Sp="Furious Howl";ix=1;end;if ix then for ix=1,12 do if GetSpellName(ix,"pet")==Sp then if GetSpellCooldown(ix,"pet")==0 then CastSpellByName(Sp);end;end;end;end;end;end;

/script local Fam,Sp,ix;
if not UnitExists("pet") then 
	if not UnitExists("pet") then CastSpellByName("Call Pet");end;
else 
	Fam=UnitCreatureFamily("pet");
	if UnitHealth("pet")<=0 then 
		CastSpellByName("Revive Pet");
	else 
		PetAttack();
		if UnitExists("pettarget") and UnitIsUnit("target","pettarget") then CastSpellByName("Growl");end;
		if Fam=="Wind Serpent" then Sp="Lightning Breath";ix=1;end;
		if Fam=="Owl" then Sp="Screech";ix=1;end;
		if Fam=="Wolf" then Sp="Furious Howl";ix=1;end;
		if ix then 
			for ix=1,12 do if GetSpellName(ix,"pet")==Sp then if GetSpellCooldown(ix,"pet")==0 then CastSpellByName(Sp);end;end;end;
		end;
	end;
end;