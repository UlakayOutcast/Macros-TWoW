/script local X,T;for X = 1,32 do T=UnitBuff("player",X);if not T then X=32;else if strfind(T,"Ability_Ambush")then X=32;end;end;end;if T then CastSpellByName("Pounce");else CastSpellByName("Shred");end;

/script local X,T;
for X = 1,32 do 
	T=UnitBuff("player",X);
	if not T then X=32;
	else 
		if strfind(T,"Ability_Ambush")then X=32;end;
	end;
end;
if T then 
	CastSpellByName("Pounce");
else 
	CastSpellByName("Shred");
end;