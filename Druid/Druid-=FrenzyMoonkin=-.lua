-=Druid FrenzyMoonkin=-
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",2) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) local tex,cnt for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = 'target' end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw)local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then local St,Du=GetSpellCooldown(ix,"spell");if sw=="self" and St==0  then if rank then CastSpellByName(spell.."("..rank..")",1)else CastSpellByName(spell,1);end;return ix;end;if sw==nil and St==0 then if rank then CastSpellByName(spell.."("..rank..")")else CastSpell(ix,"spell");end;return ix;end;if sw==0 then Du=St+Du-GetTime();if Du<=0 then Du=0;end;return Du;end;end;ix=ix-1;end;if sw==0 then return 99;end;end;function Attack_Actions() local mana=UnitMana("player")local OoC=GotBuff("Spell_Shadow_ManaBurn")local RPoH; if UnitExists("target") then RPoH=UnitHealth("target")/UnitHealthMax("target") else RPoH=0; end;local _,_,_,_,Fer=GetTalentInfo(2,1);for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 return; end;end;if (not GotBuff("Ability_Racial_BearForm") and not GotBuff("Ability_Druid_CatForm")) or GotBuff("ForceOfNature") then if ranged() and (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return; end;if not GotDebuff("Spell_Nature_InsectSwarm") and not OoC and RPoH>0.2 and ActSpell("Insect Swarm") then return; end;if (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return; end;if not GotDebuff("Spell_Nature_FaerieFire") and RPoH>0.1 and melee() and not GotBuff("ForceOfNature") and ActSpell("Faerie Fire") then return; end;end;local _,_,_,_,BloodFrenzy=GetTalentInfo(3,15);if BloodFrenzy~=0 and not GotBuff("GhoulFrenzy") and not ActSpell("Enrage") then if GotBuff("Ability_Druid_CatForm") and mana>=30 then ActSpell("Tiger's Fury") return;else CastSpellByName("Cat Form");end;end;if GotBuff("Ability_Racial_BearForm") or GotBuff("Ability_Druid_CatForm") then if not GotDebuff("Spell_Nature_FaerieFire") then if ActSpell("Faerie Fire (Feral)","Rank 4") then return;elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return;elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return;elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return;end;end;end;if GotBuff("Ability_Racial_BearForm") then if ranged() and (mana>=5 or OoC) and ActSpell("Feral Charge") then return; end;if melee() and (mana>=30-Fer or OoC) and ActSpell("Savage Bite") then end;if melee() and (mana>=15-Fer or OoC) and ActSpell("Swipe") then end;if melee() and (random(0,mana)>=15-Fer+15 or OoC) and ActSpell("Maul") then end;end;if GotBuff("GhoulFrenzy") and not GotBuff("ForceOfNature") then CastSpellByName("Moonkin Form"); end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",2) end;end;
local function ranged() if UnitExists("target") then return not melee() end;end;
local function inCombat() return UnitAffectingCombat("player") end;
local function GotBuff(name,target) 
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target = 'target' end;
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function ActSpell(spell,rank,sw)
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		spellName,spellRank=GetSpellName(ix,"spell");
		if spellName==spell and (spellRank==rank or rank==nil) then 
			local St,Du=GetSpellCooldown(ix,"spell");
			if sw=="self" and St==0  then 
				if rank then CastSpellByName(spell.."("..rank..")",1)
				else CastSpellByName(spell,1);end;
				return ix;
			end;
			if sw==nil and St==0 then 
				if rank then CastSpellByName(spell.."("..rank..")")
				else CastSpell(ix,"spell");end;
				return ix;
			end;
			if sw==0 then 
				Du=St+Du-GetTime();
				if Du<=0 then Du=0;end;
				return Du;
			end;
		end;
		ix=ix-1;
	end;
	if sw==0 then return 99;end;
end;
function Attack_Actions() 
	local mana=UnitMana("player")
	local OoC=GotBuff("Spell_Shadow_ManaBurn")
	local RPoH; if UnitExists("target") then RPoH=UnitHealth("target")/UnitHealthMax("target") else RPoH=0; end;
	local _,_,_,_,Fer=GetTalentInfo(2,1);
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 return; end;end;
	if (not GotBuff("Ability_Racial_BearForm") and not GotBuff("Ability_Druid_CatForm")) or GotBuff("ForceOfNature") then 
		if ranged() and (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return; end;
		if not GotDebuff("Spell_Nature_InsectSwarm") and not OoC and RPoH>0.2 and ActSpell("Insect Swarm") then return; end;
		if (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return; end;
		if not GotDebuff("Spell_Nature_FaerieFire") and RPoH>0.1 and melee() and not GotBuff("ForceOfNature") and ActSpell("Faerie Fire") then return; end;
	end;
	local _,_,_,_,BloodFrenzy=GetTalentInfo(3,15);
	if BloodFrenzy~=0 and not GotBuff("GhoulFrenzy") and not ActSpell("Enrage") then 
		if GotBuff("Ability_Druid_CatForm") and mana>=30 then ActSpell("Tiger's Fury") return;
		else CastSpellByName("Cat Form");end;
	end;
	if GotBuff("Ability_Racial_BearForm") or GotBuff("Ability_Druid_CatForm") then 
		if not GotDebuff("Spell_Nature_FaerieFire") then 
			if ActSpell("Faerie Fire (Feral)","Rank 4") then return;
			elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return;
			elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return;
			elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return;
			end;
		end;
	end;
	if GotBuff("Ability_Racial_BearForm") then 
		if ranged() and (mana>=5 or OoC) and ActSpell("Feral Charge") then return; end;
		if melee() and (mana>=30-Fer or OoC) and ActSpell("Savage Bite") then end;
		if melee() and (mana>=15-Fer or OoC) and ActSpell("Swipe") then end;
		if melee() and (random(0,mana)>=15-Fer+15 or OoC) and ActSpell("Maul") then end;
	end;
	if GotBuff("GhoulFrenzy") and not GotBuff("ForceOfNature") then CastSpellByName("Moonkin Form"); end;
end;
Attack_Actions() 