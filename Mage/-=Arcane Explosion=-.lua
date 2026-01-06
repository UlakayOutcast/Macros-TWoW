-=Arcane Explosion=-
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and (spellRank==rank or nil) then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local function CastSpels()local PM=UnitMana("player");local PL=UnitLevel("player");local CC=GotBuff("Spell_Shadow_ManaBurn");if PL>=54 and (PM>=390 or CC) and GotSpell("Arcane Explosion","Rank 6") then CastSpellByName("Arcane Explosion(Rank 6)");return;end;if PL>=46 and (PM>=315 or CC) and GotSpell("Arcane Explosion","Rank 5") then CastSpellByName("Arcane Explosion(Rank 5)");return;end;if PL>=38 and (PM>=250 or CC) and GotSpell("Arcane Explosion","Rank 4") then CastSpellByName("Arcane Explosion(Rank 4)");return;end;if PL>=30 and (PM>=185 or CC) and GotSpell("Arcane Explosion","Rank 3") then CastSpellByName("Arcane Explosion(Rank 3)");return;end;if PL>=22 and (PM>=120 or CC) and GotSpell("Arcane Explosion","Rank 2") then CastSpellByName("Arcane Explosion(Rank 2)");return;end;if PL>=14 and (PM>=75 or CC) and GotSpell("Arcane Explosion","Rank 1") then CastSpellByName("Arcane Explosion(Rank 1)");return;end;end;CastSpels();

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
		if PL>=54 and (PM>=390 or CC) and GotSpell("Arcane Explosion","Rank 6") then CastSpellByName("Arcane Explosion(Rank 6)");return;end;
		if PL>=46 and (PM>=315 or CC) and GotSpell("Arcane Explosion","Rank 5") then CastSpellByName("Arcane Explosion(Rank 5)");return;end;
		if PL>=38 and (PM>=250 or CC) and GotSpell("Arcane Explosion","Rank 4") then CastSpellByName("Arcane Explosion(Rank 4)");return;end;
		if PL>=30 and (PM>=185 or CC) and GotSpell("Arcane Explosion","Rank 3") then CastSpellByName("Arcane Explosion(Rank 3)");return;end;
		if PL>=22 and (PM>=120 or CC) and GotSpell("Arcane Explosion","Rank 2") then CastSpellByName("Arcane Explosion(Rank 2)");return;end;
		if PL>=14 and (PM>=75 or CC) and GotSpell("Arcane Explosion","Rank 1") then CastSpellByName("Arcane Explosion(Rank 1)");return;end;
end;
CastSpels();