-=Flash Heal=-

/script local UL=UnitLevel;local UM=UnitMana;local CT,AH;if UL("target")==0 or UnitCanAttack("player","target") then CT="player";else CT="target";end;AH=UnitHealthMax(CT)-UnitHealth(CT);local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then return ix;end;end;end;end;if UL("player")>55 and ((UM("player")>379) or (buffed("Inner Focus")=="buff")) and AH>812 and GotSpell("Flash Heal","Rank 7") then CastSpellByName("Flash Heal(Rank 7)");else if UL("player")>49 and ((UM("player")>314) or (buffed("Inner Focus")=="buff")) and AH>644 and GotSpell("Flash Heal","Rank 6") then CastSpellByName("Flash Heal(Rank 6)");else if UL("player")>44 and ((UM("player")>264) or (buffed("Inner Focus")=="buff")) and AH>518 and GotSpell("Flash Heal","Rank 5") then CastSpellByName("Flash Heal(Rank 5)");else if UL("player")>37 and ((UM("player")>214) or (buffed("Inner Focus")=="buff")) and AH>400 and GotSpell("Flash Heal","Rank 4") then CastSpellByName("Flash Heal(Rank 4)");else if UL("player")>31 and ((UM("player")>157) or (buffed("Inner Focus")=="buff")) and AH>327 and GotSpell("Flash Heal","Rank 3") then CastSpellByName("Flash Heal(Rank 3)");else if UL("player")>25 and ((UM("player")>154) or (buffed("Inner Focus")=="buff")) and AH>258 and GotSpell("Flash Heal","Rank 2") then CastSpellByName("Flash Heal(Rank 2)");else if UL("player")>19 and ((UM("player")>124) or (buffed("Inner Focus")=="buff")) and AH>193 and GotSpell("Flash Heal","Rank 1") then CastSpellByName("Flash Heal(Rank 1)");else CastSpellByName("Flash Heal(Rank 1)");end;end;end;end;end;end;end;
-=-
/script local UL=UnitLevel;local UM=UnitMana;local CT,AH;
if UL("target")==0 or UnitCanAttack("player","target") then CT="player";else CT="target";end;
AH=UnitHealthMax(CT)-UnitHealth(CT);
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell and spellRank==rank then return ix;end;
		end;
	end;
end;
if UL("player")>55 and ((UM("player")>379) or (buffed("Inner Focus")=="buff")) and AH>812 and GotSpell("Flash Heal","Rank 7") then CastSpellByName("Flash Heal(Rank 7)");
else 
	if UL("player")>49 and ((UM("player")>314) or (buffed("Inner Focus")=="buff")) and AH>644 and GotSpell("Flash Heal","Rank 6") then CastSpellByName("Flash Heal(Rank 6)");
	else 
		if UL("player")>44 and ((UM("player")>264) or (buffed("Inner Focus")=="buff")) and AH>518 and GotSpell("Flash Heal","Rank 5") then CastSpellByName("Flash Heal(Rank 5)");
		else 
			if UL("player")>37 and ((UM("player")>214) or (buffed("Inner Focus")=="buff")) and AH>400 and GotSpell("Flash Heal","Rank 4") then CastSpellByName("Flash Heal(Rank 4)");
			else 
				if UL("player")>31 and ((UM("player")>157) or (buffed("Inner Focus")=="buff")) and AH>327 and GotSpell("Flash Heal","Rank 3") then CastSpellByName("Flash Heal(Rank 3)");
				else 
					if UL("player")>25 and ((UM("player")>154) or (buffed("Inner Focus")=="buff")) and AH>258 and GotSpell("Flash Heal","Rank 2") then CastSpellByName("Flash Heal(Rank 2)");
					else 
						if UL("player")>19 and ((UM("player")>124) or (buffed("Inner Focus")=="buff")) and AH>193 and GotSpell("Flash Heal","Rank 1") then CastSpellByName("Flash Heal(Rank 1)");
						else CastSpellByName("Flash Heal(Rank 1)");
						end;
					end;
				end;
			end;
		end;
	end;
end;