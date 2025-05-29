/script local mana=UnitMana("player");local _,_,_,_,FC=GetTalentInfo(3,12);FC=FC*0.05;if mana>=555*FC then CastSpellByName("Cone of Cold(Rank 5)")else if mana>=465*FC then CastSpellByName("Cone of Cold(Rank 4)")else if mana>=380*FC then CastSpellByName("Cone of Cold(Rank 3)")else if mana>=290*FC then CastSpellByName("Cone of Cold(Rank 2)")else if mana>=210*FC then CastSpellByName("Cone of Cold(Rank 1)")end;end;end;end;end;

/script 
local mana=UnitMana("player");
local _,_,_,_,FC=GetTalentInfo(3,12);FC=FC*0.05;
if mana>=555*FC then CastSpellByName("Cone of Cold(Rank 5)")
	else 
	if mana>=465*FC then CastSpellByName("Cone of Cold(Rank 4)")
	else 
		if mana>=380*FC then CastSpellByName("Cone of Cold(Rank 3)")
		else 
			if mana>=290*FC then CastSpellByName("Cone of Cold(Rank 2)")
			else 
				if mana>=210*FC then CastSpellByName("Cone of Cold(Rank 1)")end;
			end;
		end;
	end;
end;