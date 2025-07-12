-=Regrowth=- +Swiftmend +inCombat Rank в зависимости от уровня играка, его маны, уровня цели и отсутствующего здоровья цели(вне боя). С зажатым Alt используется "Nature's Swiftness"
/script local function GotBuff(name,target) if not target then target="target";end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;local function inCombat() if UnitCanAttack("player","target") then return UnitAffectingCombat("player");else return UnitAffectingCombat("target");end;end;local function canAttack() return UnitCanAttack("player","target");end;local function CastSpels()if UnitLevel("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;local PL=UnitLevel("player");local TL=UnitLevel(UT);local PM=UnitMana("player");local AH=UnitHealthMax(UT)-UnitHealth(UT);local SMB=GotBuff("Spell_Shadow_ManaBurn","player");if IsAltKeyDown() and ActSpell("Nature's Swiftness") then return;end;if GotBuff("Spell_Nature_ResistNature",UT) and ActSpell("Swiftmend") then return;end;if PL>59 and TL>53 and ((PM>879 and (AH>2067 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 9") then return; end;if PL>53 and TL>47 and ((PM>739 and (AH>1670 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 8") then return; end;if PL>47 and TL>41 and ((PM>614 and (AH>1332 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 7") then return; end;if PL>41 and TL>35 and ((PM>509 and (AH>1057 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 6") then return; end;if PL>35 and TL>29 and ((PM>419 and (AH>832 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 5") then return; end;if PL>29 and TL>23 and ((PM>349 and (AH>661 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 4") then return; end;if PL>23 and TL>17 and ((PM>279 and (AH>449 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 3") then return; end;if PL>17 and TL>11 and ((PM>204 and (AH>339 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 2") then return; end;if PL>11 and TL>0 and ((PM>119 and (AH>182 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 1") then return; end;if nil then CastSpellByName("Regrowth");end;end;CastSpels();
-=-
/script 
local function GotBuff(name,target) 
	if not target then target="target";end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff(target,ix);
		if not tex then return; end;
		if strfind(tex,name) then return cnt; end;
	end;
end;
local function ActSpell(spell,rank,sw) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		spellName,spellRank=GetSpellName(ix,"spell");
		if spellName==spell and (spellRank==rank or rank==nil) then 
			if sw==true then return ix;end;
			if sw==0 then return GetSpellCooldown(ix,"spell");end;
			if sw=="self" then 
				if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;
			end;
			if sw==nil then 
				if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;
			end;
		end;
		ix=ix-1;
	end;
end;
local function inCombat() if UnitCanAttack("player","target") then return UnitAffectingCombat("player");else return UnitAffectingCombat("target");end;end;
local function canAttack() return UnitCanAttack("player","target");end;
local function CastSpels()
	if UnitLevel("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
	local PL=UnitLevel("player");local TL=UnitLevel(UT);local PM=UnitMana("player");
	local AH=UnitHealthMax(UT)-UnitHealth(UT);
	local SMB=GotBuff("Spell_Shadow_ManaBurn","player");
	if IsAltKeyDown() and ActSpell("Nature's Swiftness") then return;end;
	if GotBuff("Spell_Nature_ResistNature",UT) and ActSpell("Swiftmend") then return;end;
	if PL>59 and TL>53 and ((PM>879 and (AH>2067 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 9") then return; end;
	if PL>53 and TL>47 and ((PM>739 and (AH>1670 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 8") then return; end;
	if PL>47 and TL>41 and ((PM>614 and (AH>1332 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 7") then return; end;
	if PL>41 and TL>35 and ((PM>509 and (AH>1057 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 6") then return; end;
	if PL>35 and TL>29 and ((PM>419 and (AH>832 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 5") then return; end;
	if PL>29 and TL>23 and ((PM>349 and (AH>661 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 4") then return; end;
	if PL>23 and TL>17 and ((PM>279 and (AH>449 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 3") then return; end;
	if PL>17 and TL>11 and ((PM>204 and (AH>339 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 2") then return; end;
	if PL>11 and TL>0 and ((PM>119 and (AH>182 or inCombat() or canAttack())) or SMB) and ActSpell("Regrowth","Rank 1") then return; end;
	if nil then CastSpellByName("Regrowth");end;
end;
CastSpels();