-=Arcane Missiles=-
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and (spellRank==rank or nil) then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local function CastSpels()local PM=UnitMana("player");local PL=UnitLevel("player");local CC=GotBuff("Spell_Shadow_ManaBurn");if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;if UnitCanAttack("player","target") and UnitHealth("target")>0 then local AH=UnitHealth("target");if PL>=56 and (PM>=665 or CC) and AH>960 and GotSpell("Arcane Missiles","Rank 8") then CastSpellByName("Arcane Missiles(Rank 8)");return;end;if PL>=56 and (PM>=595 or CC) and AH>755 and GotSpell("Arcane Missiles","Rank 7") then CastSpellByName("Arcane Missiles(Rank 7)");return;end;if PL>=54 and (PM>=500 or CC) and AH>575 and GotSpell("Arcane Missiles","Rank 6") then CastSpellByName("Arcane Missiles(Rank 6)");return;end;if PL>=46 and (PM>=410 or CC) and AH>415 and GotSpell("Arcane Missiles","Rank 5") then CastSpellByName("Arcane Missiles(Rank 5)");return;end;if PL>=38 and (PM>=320 or CC) and AH>280 and GotSpell("Arcane Missiles","Rank 4") then CastSpellByName("Arcane Missiles(Rank 4)");return;end;if PL>=30 and (PM>=235 or CC) and AH>144 and GotSpell("Arcane Missiles","Rank 3") then CastSpellByName("Arcane Missiles(Rank 3)");return;end;if PL>=22 and (PM>=140 or CC) and AH>48 and GotSpell("Arcane Missiles","Rank 2") then CastSpellByName("Arcane Missiles(Rank 2)");return;end;if PL>=14 and (PM>=85 or CC) and AH>0 and GotSpell("Arcane Missiles","Rank 1") then CastSpellByName("Arcane Missiles(Rank 1)");return;end;end;end;CastSpels();

/script 
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell and (spellRank==rank or nil) then 
				if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;
			end;
		end;
	end;
end;
local function CastSpels()
	local PM=UnitMana("player");
	local PL=UnitLevel("player");
	local CC=GotBuff("Spell_Shadow_ManaBurn");
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	if UnitCanAttack("player","target") and UnitHealth("target")>0 then 
		local AH=UnitHealth("target");
		if PL>=56 and (PM>=665 or CC) and AH>960 and GotSpell("Arcane Missiles","Rank 8") then CastSpellByName("Arcane Missiles(Rank 8)");return;end;
		if PL>=56 and (PM>=595 or CC) and AH>755 and GotSpell("Arcane Missiles","Rank 7") then CastSpellByName("Arcane Missiles(Rank 7)");return;end;
		if PL>=54 and (PM>=500 or CC) and AH>575 and GotSpell("Arcane Missiles","Rank 6") then CastSpellByName("Arcane Missiles(Rank 6)");return;end;
		if PL>=46 and (PM>=410 or CC) and AH>415 and GotSpell("Arcane Missiles","Rank 5") then CastSpellByName("Arcane Missiles(Rank 5)");return;end;
		if PL>=38 and (PM>=320 or CC) and AH>280 and GotSpell("Arcane Missiles","Rank 4") then CastSpellByName("Arcane Missiles(Rank 4)");return;end;
		if PL>=30 and (PM>=235 or CC) and AH>144 and GotSpell("Arcane Missiles","Rank 3") then CastSpellByName("Arcane Missiles(Rank 3)");return;end;
		if PL>=22 and (PM>=140 or CC) and AH>48 and GotSpell("Arcane Missiles","Rank 2") then CastSpellByName("Arcane Missiles(Rank 2)");return;end;
		if PL>=14 and (PM>=85 or CC) and AH>0 and GotSpell("Arcane Missiles","Rank 1") then CastSpellByName("Arcane Missiles(Rank 1)");return;end;
	end;
end;
CastSpels();