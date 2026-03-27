/script 
TargetNearestFriend() 
if CheckInteractDistance("target",4)==1 and GetSpellCooldown(21,"spell")==0 then 
	local i,sw=1,0 
	while UnitBuff("target",i) do 
		if UnitBuff("target",i)=="Interface\\Icons\\Spell_Holy_FistOfJustice" then 
			sw=1 
		end 
		i=i+1 
	end 
	if sw==0 then 
		CastSpellByName("Blessing of Might(Rank 2)");
	else 
		i,sw=1,0 
		while UnitBuff("target",i) do 
			if UnitBuff("target",i)=="Interface\\Icons\\Spell_Holy_GreaterBlessingofWisdom" then 
				sw=1 
			end 
			i=i+1 
		end 
		if sw==0 then 
			CastSpellByName("Blessing of Wisdom(Rank 1)");
		end 
	end 
end 