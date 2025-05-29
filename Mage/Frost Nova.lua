/script local mana=UnitMana("player");local _,_,_,_,FC=GetTalentInfo(3,12);FC=FC*0.05;if mana>=145*FC then CastSpellByName("Frost Nova(Rank 4)")else if mana>=115*FC then CastSpellByName("Frost Nova(Rank 3)")else if mana>=85*FC then CastSpellByName("Frost Nova(Rank 2)")else if mana>=55*FC then CastSpellByName("Frost Nova(Rank 1)")end;end;end;end;

/script 
local mana=UnitMana("player");
local _,_,_,_,FC=GetTalentInfo(3,12);FC=FC*0.05;
if mana>=145*FC then CastSpellByName("Frost Nova(Rank 4)")
else 
	if mana>=115*FC then CastSpellByName("Frost Nova(Rank 3)")
	else 
		if mana>=85*FC then CastSpellByName("Frost Nova(Rank 2)")
		else 
			if mana>=55*FC then CastSpellByName("Frost Nova(Rank 1)")end;
		end;
	end;
end;