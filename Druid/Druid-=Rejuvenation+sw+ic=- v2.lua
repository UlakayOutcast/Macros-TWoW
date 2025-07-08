-=Rejuvenation=- +Swiftmend +inCombat Rank в зависимости от уровня играка, его маны, уровня цели и отсутствующего здоровья цели(вне боя).
/script local function GotBuff(name,target) if not target then target="target";end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;end;local function inCombat() return UnitAffectingCombat(UT);end;local function CastSpels()if UnitLevel("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;local PL=UnitLevel("player");local TL=UnitLevel(UT);local PM=UnitMana("player");local AH=UnitHealthMax(UT)-UnitHealth(UT);local SMB=GotBuff("Spell_Shadow_ManaBurn","player");if GotBuff("ResistNature",UT) and ActSpell("Swiftmend") then return;end;if PL>59 and TL>57 and (PM>359 or SMB) and (AH>888 or inCombat()) and ActSpell("Rejuvenation","Rank 11") then return; end;if PL>57 and TL>51 and (PM>334 or SMB) and (AH>756 or inCombat()) and ActSpell("Rejuvenation","Rank 10") then return; end;if PL>51 and TL>45 and (PM>279 or SMB) and (AH>608 or inCombat()) and ActSpell("Rejuvenation","Rank 9") then return; end;if PL>45 and TL>37 and (PM>234 or SMB) and (AH>488 or inCombat()) and ActSpell("Rejuvenation","Rank 8") then return; end;if PL>39 and TL>33 and (PM>194 or SMB) and (AH>388 or inCombat()) and ActSpell("Rejuvenation","Rank 7") then return; end;if PL>33 and TL>27 and (PM>159 or SMB) and (AH>304 or inCombat()) and ActSpell("Rejuvenation","Rank 6") then return; end;if PL>27 and TL>21 and (PM>134 or SMB) and (AH>244 or inCombat()) and ActSpell("Rejuvenation","Rank 5") then return; end;if PL>21 and TL>15 and (PM>104 or SMB) and (AH>180 or inCombat()) and ActSpell("Rejuvenation","Rank 4") then return; end;if PL>15 and TL>9 and (PM>74 or SMB) and (AH>116 or inCombat()) and ActSpell("Rejuvenation","Rank 3") then return; end;if PL>9 and TL>3 and (PM>39 or SMB) and (AH>56 or inCombat()) and ActSpell("Rejuvenation","Rank 2") then return; end;if PL>3 and TL>0 and (PM>24 or SMB) and (AH>32 or inCombat()) and ActSpell("Rejuvenation","Rank 1") then return; end;if UnitCanAttack("player","target") then CastSpellByName("Rejuvenation");end;end;CastSpels();
-=-
/script 
local function GotBuff(name,target) 
	if not target then target="target";end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff(target,ix) 
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
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
					if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;
				end;
			end;
			ix=ix-1;
		end;
	end;
end;
local function inCombat() return UnitAffectingCombat(UT);end;
local function CastSpels()
	if UnitLevel("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
	local PL=UnitLevel("player");local TL=UnitLevel(UT);local PM=UnitMana("player");
	local AH=UnitHealthMax(UT)-UnitHealth(UT);
	local SMB=GotBuff("Spell_Shadow_ManaBurn","player");
	if GotBuff("ResistNature",UT) and ActSpell("Swiftmend") then return;end;
	if PL>59 and TL>57 and (PM>359 or SMB) and (AH>888 or inCombat()) and ActSpell("Rejuvenation","Rank 11") then return; end;
	if PL>57 and TL>51 and (PM>334 or SMB) and (AH>756 or inCombat()) and ActSpell("Rejuvenation","Rank 10") then return; end;
	if PL>51 and TL>45 and (PM>279 or SMB) and (AH>608 or inCombat()) and ActSpell("Rejuvenation","Rank 9") then return; end;
	if PL>45 and TL>37 and (PM>234 or SMB) and (AH>488 or inCombat()) and ActSpell("Rejuvenation","Rank 8") then return; end;
	if PL>39 and TL>33 and (PM>194 or SMB) and (AH>388 or inCombat()) and ActSpell("Rejuvenation","Rank 7") then return; end;
	if PL>33 and TL>27 and (PM>159 or SMB) and (AH>304 or inCombat()) and ActSpell("Rejuvenation","Rank 6") then return; end;
	if PL>27 and TL>21 and (PM>134 or SMB) and (AH>244 or inCombat()) and ActSpell("Rejuvenation","Rank 5") then return; end;
	if PL>21 and TL>15 and (PM>104 or SMB) and (AH>180 or inCombat()) and ActSpell("Rejuvenation","Rank 4") then return; end;
	if PL>15 and TL>9 and (PM>74 or SMB) and (AH>116 or inCombat()) and ActSpell("Rejuvenation","Rank 3") then return; end;
	if PL>9 and TL>3 and (PM>39 or SMB) and (AH>56 or inCombat()) and ActSpell("Rejuvenation","Rank 2") then return; end;
	if PL>3 and TL>0 and (PM>24 or SMB) and (AH>32 or inCombat()) and ActSpell("Rejuvenation","Rank 1") then return; end;
	if UnitCanAttack("player","target") then CastSpellByName("Rejuvenation");end;
end;
CastSpels();