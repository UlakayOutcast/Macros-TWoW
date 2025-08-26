-=Rejuvenation=- +Swiftmend +inCombat 1.18.0 |  Rank в зависимости от уровня играка, его маны (талантов), уровня цели и отсутствующего здоровья (талантов) цели(вне боя).
/script local function GotBuff(name,target) if not target then target="target";end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;local function inCombat() if UnitCanAttack("player","target") then return UnitAffectingCombat("player");else return UnitAffectingCombat("target");end;end;local function canAttack() return UnitCanAttack("player","target");end;local function CastSpels()if UnitLevel("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;local PL=UnitLevel("player");local TL=UnitLevel(UT);local PM=UnitMana("player");local AH=UnitHealthMax(UT)-UnitHealth(UT);local SMB=GotBuff("Spell_Shadow_ManaBurn","player");local MSM=1;local _,_,_,_,Moonglow=GetTalentInfo(1,13);MSM=MSM-Moonglow*3/100;if GotBuff("Ability_Druid_TreeofLife","player")then MSM=MSM-0.2;end;local MSP=1;local _,_,_,_,GiftOfNature=GetTalentInfo(3,9);MSP=MSP+GiftOfNature*2/100;if IsAltKeyDown() and ActSpell("Nature's Swiftness") then return;end;if GotBuff("Spell_Nature_Rejuvenation",UT) and ActSpell("Swiftmend") then return;end;if PL>59 and TL>57 and ((PM>359*MSM and (AH>888*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 11") then return; end;if PL>57 and TL>51 and ((PM>334*MSM and (AH>756*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 10") then return; end;if PL>51 and TL>45 and ((PM>279*MSM and (AH>608*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 9") then return; end;if PL>45 and TL>37 and ((PM>234*MSM and (AH>488*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 8") then return; end;if PL>39 and TL>33 and ((PM>194*MSM and (AH>388*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 7") then return; end;if PL>33 and TL>27 and ((PM>159*MSM and (AH>304*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 6") then return; end;if PL>27 and TL>21 and ((PM>134*MSM and (AH>244*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 5") then return; end;if PL>21 and TL>15 and ((PM>104*MSM and (AH>180*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 4") then return; end;if PL>15 and TL>9 and ((PM>74*MSM and (AH>116*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 3") then return; end;if PL>9 and TL>3 and ((PM>39*MSM and (AH>56*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 2") then return; end;if PL>3 and TL>0 and ((PM>24*MSM and (AH>32*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 1") then return; end;if nil then CastSpellByName("Rejuvenation");end;end;CastSpels();
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
	local MSM=1;
	local _,_,_,_,Moonglow=GetTalentInfo(1,13);MSM=MSM-Moonglow*3/100;
	if GotBuff("Ability_Druid_TreeofLife","player")then MSM=MSM-0.2;end;
	local MSP=1;
	local _,_,_,_,GiftOfNature=GetTalentInfo(3,9);MSP=MSP+GiftOfNature*2/100;
	if IsAltKeyDown() and ActSpell("Nature's Swiftness") then return;end;
	if GotBuff("Spell_Nature_Rejuvenation",UT) and ActSpell("Swiftmend") then return;end;
	if PL>59 and TL>57 and ((PM>359*MSM and (AH>888*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 11") then return; end;
	if PL>57 and TL>51 and ((PM>334*MSM and (AH>756*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 10") then return; end;
	if PL>51 and TL>45 and ((PM>279*MSM and (AH>608*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 9") then return; end;
	if PL>45 and TL>37 and ((PM>234*MSM and (AH>488*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 8") then return; end;
	if PL>39 and TL>33 and ((PM>194*MSM and (AH>388*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 7") then return; end;
	if PL>33 and TL>27 and ((PM>159*MSM and (AH>304*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 6") then return; end;
	if PL>27 and TL>21 and ((PM>134*MSM and (AH>244*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 5") then return; end;
	if PL>21 and TL>15 and ((PM>104*MSM and (AH>180*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 4") then return; end;
	if PL>15 and TL>9 and ((PM>74*MSM and (AH>116*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 3") then return; end;
	if PL>9 and TL>3 and ((PM>39*MSM and (AH>56*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 2") then return; end;
	if PL>3 and TL>0 and ((PM>24*MSM and (AH>32*MSP or inCombat() or canAttack())) or SMB) and ActSpell("Rejuvenation","Rank 1") then return; end;
	if nil then CastSpellByName("Rejuvenation");end;
end;
CastSpels();