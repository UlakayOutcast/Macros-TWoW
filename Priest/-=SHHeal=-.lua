-=Greater Heal + Heal + Lesser Heal + Flash Heal + Shadow Mend=- Ранг в зависимости от уровня игрока, здоровья цели, оставшейся маны и активного Inner Focus

/script local function ActSpell(spell,rank,sw) local ix=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,'spell');return ix;end;end;end;ix=ix-1;end;end;end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function CastSpels()local PM=UnitMana("player");local PL=UnitLevel("player");local IF=GotBuff("Spell_Frost_WindWalkOn");local UT;if UnitLevel("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;local AH=UnitHealthMax(UT)-UnitHealth(UT);if not IsAltKeyDown() or IF then if not GotBuff("Spell_Shadow_Shadowform") or ActSpell("Shadow Mend",nil,0)>0 then if UnitHealth(UT)>(UnitHealthMax(UT)*0.25) then if PL>=60 and (PM>=710 or IF) and AH>1966 and ActSpell("Greater Heal","Rank 5") then return;end;if PL>=58 and (PM>=655 or IF) and AH>1798 and ActSpell("Greater Heal","Rank 4") then return;end;if PL>=52 and (PM>=545 or IF) and AH>1437 and ActSpell("Greater Heal","Rank 3") then return;end;if PL>=46 and (PM>=455 or IF) and AH>1149 and ActSpell("Greater Heal","Rank 2") then return;end;if PL>=40 and (PM>=370 or IF) and AH>899 and ActSpell("Greater Heal","Rank 1") then return;end;if PL>=34 and (PM>=305 or IF) and AH>712 and ActSpell("Heal","Rank 4") then return;end;if PL>=28 and (PM>=255 or IF) and AH>566 and ActSpell("Heal","Rank 3") then return;end;if PL>=22 and (PM>=205 or IF) and AH>429 and ActSpell("Heal","Rank 2") then return;end;if PL>=16 and (PM>=155 or IF) and AH>295 and ActSpell("Heal","Rank 1") then return;end;if PL>=10 and (PM>=75 or IF) and AH>135 and ActSpell("Lesser Heal","Rank 3") then return;end;if PL>=4 and (PM>=45 or IF) and AH>71 and ActSpell("Lesser Heal","Rank 2") then return;end;if PL>=0 and (PM>=30 or IF) and AH>46 and ActSpell("Lesser Heal","Rank 1") then return;end;if nill then CastSpellByName("Greater Heal");end;if nill then CastSpellByName("Heal");end;CastSpellByName("Lesser Heal");else if PL>=56 and (PM>=380 or IF) and AH>812 and ActSpell("Flash Heal","Rank 7") then return;end;if PL>=50 and (PM>=315 or IF) and AH>644 and ActSpell("Flash Heal","Rank 6") then return;end;if PL>=45 and (PM>=265 or IF) and AH>518 and ActSpell("Flash Heal","Rank 5") then return;end;if PL>=38 and (PM>=215 or IF) and AH>400 and ActSpell("Flash Heal","Rank 4") then return;end;if PL>=32 and (PM>=158 or IF) and AH>327 and ActSpell("Flash Heal","Rank 3") then return;end;if PL>=26 and (PM>=155 or IF) and AH>258 and ActSpell("Flash Heal","Rank 2") then return;end;if PL>=20 and (PM>=125 or IF) and AH>193 and ActSpell("Flash Heal","Rank 1") then return;end;end;else CastSpellByName("Shadow Mend");end;else CastSpellByName("Inner Focus");end;end;CastSpels();

/script 
local function ActSpell(spell,rank,sw) 
	local ix=192;
	while(ix>0) do 
		if ix==0 then return nil;
		else 
			spellName,spellRank=GetSpellName(ix,"spell");
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if sw==true then return ix;end;
				if sw==0 then return GetSpellCooldown(ix,"spell");end;
				if sw==nil then 
					if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,'spell');return ix;end;
				end;
			end;
			ix=ix-1;
		end;
	end;
end;
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function CastSpels()
	local PM=UnitMana("player");
	local PL=UnitLevel("player");
	local IF=GotBuff("Spell_Frost_WindWalkOn");
	local UT;if UnitLevel("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
	local AH=UnitHealthMax(UT)-UnitHealth(UT);
	if not IsAltKeyDown() or IF then 
		if not GotBuff("Spell_Shadow_Shadowform") or ActSpell("Shadow Mend",nil,0)>0 then 
			if UnitHealth(UT)>(UnitHealthMax(UT)*0.25) then 
				if PL>=60 and (PM>=710 or IF) and AH>1966 and ActSpell("Greater Heal","Rank 5") then return;end;
				if PL>=58 and (PM>=655 or IF) and AH>1798 and ActSpell("Greater Heal","Rank 4") then return;end;
				if PL>=52 and (PM>=545 or IF) and AH>1437 and ActSpell("Greater Heal","Rank 3") then return;end;
				if PL>=46 and (PM>=455 or IF) and AH>1149 and ActSpell("Greater Heal","Rank 2") then return;end;
				if PL>=40 and (PM>=370 or IF) and AH>899 and ActSpell("Greater Heal","Rank 1") then return;end;
				if PL>=34 and (PM>=305 or IF) and AH>712 and ActSpell("Heal","Rank 4") then return;end;
				if PL>=28 and (PM>=255 or IF) and AH>566 and ActSpell("Heal","Rank 3") then return;end;
				if PL>=22 and (PM>=205 or IF) and AH>429 and ActSpell("Heal","Rank 2") then return;end;
				if PL>=16 and (PM>=155 or IF) and AH>295 and ActSpell("Heal","Rank 1") then return;end;
				if PL>=10 and (PM>=75 or IF) and AH>135 and ActSpell("Lesser Heal","Rank 3") then return;end;
				if PL>=4 and (PM>=45 or IF) and AH>71 and ActSpell("Lesser Heal","Rank 2") then return;end;
				if PL>=0 and (PM>=30 or IF) and AH>46 and ActSpell("Lesser Heal","Rank 1") then return;end;
				if nill then CastSpellByName("Greater Heal");end;
				if nill then CastSpellByName("Heal");end;
				CastSpellByName("Lesser Heal");
			else 
				if PL>=56 and (PM>=380 or IF) and AH>812 and ActSpell("Flash Heal","Rank 7") then return;end;
				if PL>=50 and (PM>=315 or IF) and AH>644 and ActSpell("Flash Heal","Rank 6") then return;end;
				if PL>=45 and (PM>=265 or IF) and AH>518 and ActSpell("Flash Heal","Rank 5") then return;end;
				if PL>=38 and (PM>=215 or IF) and AH>400 and ActSpell("Flash Heal","Rank 4") then return;end;
				if PL>=32 and (PM>=158 or IF) and AH>327 and ActSpell("Flash Heal","Rank 3") then return;end;
				if PL>=26 and (PM>=155 or IF) and AH>258 and ActSpell("Flash Heal","Rank 2") then return;end;
				if PL>=20 and (PM>=125 or IF) and AH>193 and ActSpell("Flash Heal","Rank 1") then return;end;
			end;
		else CastSpellByName("Shadow Mend");
		end;
	else 
		CastSpellByName("Inner Focus");
	end;
end;
CastSpels();