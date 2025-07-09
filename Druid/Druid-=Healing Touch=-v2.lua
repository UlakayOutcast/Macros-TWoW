-=Healing Touch=- Rank в зависимости от уровня играка, его маны, отсутствующего здоровья цели. С зажатым Alt используется "Nature's Swiftness"
/script local function GotBuff(name,target) if not target then target="target";end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;local function CastSpels()if UnitLevel("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;local PL=UnitLevel("player");local TL=UnitLevel(UT);local PM=UnitMana("player");local AH=UnitHealthMax(UT)-UnitHealth(UT);local SMB=GotBuff("Spell_Shadow_ManaBurn","player");if IsAltKeyDown() and ActSpell("Nature's Swiftness") then return;end;if PL>59 and ((PM>799 and AH>2267) or SMB) and ActSpell("Healing Touch","Rank 11") then return; end;if PL>55 and ((PM>719 and AH>1890) or SMB) and ActSpell("Healing Touch","Rank 10") then return; end;if PL>49 and ((PM>599 and AH>1516) or SMB) and ActSpell("Healing Touch","Rank 9") then return; end;if PL>43 and ((PM>494 and AH>1199) or SMB) and ActSpell("Healing Touch","Rank 8") then return; end;if PL>37 and ((PM>404 and AH>936) or SMB) and ActSpell("Healing Touch","Rank 7") then return; end;if PL>31 and ((PM>334 and AH>742) or SMB) and ActSpell("Healing Touch","Rank 6") then return; end;if PL>25 and ((PM>269 and AH>572) or SMB) and ActSpell("Healing Touch","Rank 5") then return; end;if PL>19 and ((PM>184 and AH>363) or SMB) and ActSpell("Healing Touch","Rank 4") then return; end;if PL>13 and ((PM>109 and AH>195) or SMB) and ActSpell("Healing Touch","Rank 3") then return; end;if PL>7 and ((PM>54 and AH>88) or SMB) and ActSpell("Healing Touch","Rank 2") then return; end;if PL>0 and ((PM>24 and AH>37) or SMB) and ActSpell("Healing Touch","Rank 1") then return; end;if UnitCanAttack("player","target") then CastSpellByName("Healing Touch");end;end;CastSpels();
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
local function CastSpels()
	if UnitLevel("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
	local PL=UnitLevel("player");local TL=UnitLevel(UT);local PM=UnitMana("player");
	local AH=UnitHealthMax(UT)-UnitHealth(UT);
	local SMB=GotBuff("Spell_Shadow_ManaBurn","player");
	if IsAltKeyDown() and ActSpell("Nature's Swiftness") then return;end;
	if PL>59 and ((PM>799 and AH>2267) or SMB) and ActSpell("Healing Touch","Rank 11") then return; end;
	if PL>55 and ((PM>719 and AH>1890) or SMB) and ActSpell("Healing Touch","Rank 10") then return; end;
	if PL>49 and ((PM>599 and AH>1516) or SMB) and ActSpell("Healing Touch","Rank 9") then return; end;
	if PL>43 and ((PM>494 and AH>1199) or SMB) and ActSpell("Healing Touch","Rank 8") then return; end;
	if PL>37 and ((PM>404 and AH>936) or SMB) and ActSpell("Healing Touch","Rank 7") then return; end;
	if PL>31 and ((PM>334 and AH>742) or SMB) and ActSpell("Healing Touch","Rank 6") then return; end;
	if PL>25 and ((PM>269 and AH>572) or SMB) and ActSpell("Healing Touch","Rank 5") then return; end;
	if PL>19 and ((PM>184 and AH>363) or SMB) and ActSpell("Healing Touch","Rank 4") then return; end;
	if PL>13 and ((PM>109 and AH>195) or SMB) and ActSpell("Healing Touch","Rank 3") then return; end;
	if PL>7 and ((PM>54 and AH>88) or SMB) and ActSpell("Healing Touch","Rank 2") then return; end;
	if PL>0 and ((PM>24 and AH>37) or SMB) and ActSpell("Healing Touch","Rank 1") then return; end;
	if UnitCanAttack("player","target") then CastSpellByName("Healing Touch");end;
end;
CastSpels();