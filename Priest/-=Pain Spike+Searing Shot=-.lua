-=Chastise+Pain Spike=-
/script local UL,UH=UnitLevel;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and (spellRank==rank or rank==nil) then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;if UnitCanAttack("player","target") then UH=UnitHealth("target");if UH>378 and GotSpell("Chastise") then CastSpellByName("Chastise"); else if UH<=378 and GotSpell("Pain Spike","Rank 4") then CastSpellByName("Pain Spike(Rank 4)"); else if UH<=240 and GotSpell("Pain Spike","Rank 3") then CastSpellByName("Pain Spike(Rank 3)"); else if UH<=172 and GotSpell("Pain Spike","Rank 2") then CastSpellByName("Pain Spike(Rank 2)"); else if UH<=85 and GotSpell("Pain Spike","Rank 1") then CastSpellByName("Pain Spike(Rank 1)"); end;end;end;end;end;end;

/script local UL,UH=UnitLevel;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;
			end;
		end;
	end;
end;
if UnitCanAttack("player","target") then UH=UnitHealth("target");
	if UH>378 and GotSpell("Chastise") then CastSpellByName("Chastise"); 
	else 
		if UH<=378 and GotSpell("Pain Spike","Rank 4") then CastSpellByName("Pain Spike(Rank 4)"); 
		else 
			if UH<=240 and GotSpell("Pain Spike","Rank 3") then CastSpellByName("Pain Spike(Rank 3)"); 
			else 
				if UH<=172 and GotSpell("Pain Spike","Rank 2") then CastSpellByName("Pain Spike(Rank 2)"); 
				else 
					if UH<=85 and GotSpell("Pain Spike","Rank 1") then CastSpellByName("Pain Spike(Rank 1)"); 
					end;
				end;
			end;
		end;
	end;
end;