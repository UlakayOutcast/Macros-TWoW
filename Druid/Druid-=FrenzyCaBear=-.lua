-=Druid FrenzyCatBear=-
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) local tex,cnt for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = 'target' end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return true;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return true;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;end;end;ix=ix-1;end;end;function Attack_Actions() local mana=UnitMana("player")local health=UnitHealth("player");local healthmax=UnitHealthMax("player");local OoC=GotBuff("Spell_Shadow_ManaBurn")local RPoH; if UnitExists("target") then RPoH=UnitHealth("target")/UnitHealthMax("target") else RPoH=0; end;local _,_,_,_,Fer=GetTalentInfo(2,1);local _,_,_,_,Furor=GetTalentInfo(3,2);for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 return; end;end;if not GotBuff("Ability_Racial_BearForm") and not GotBuff("Ability_Druid_CatForm") then if ranged() and (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return; end;if not GotDebuff("Spell_Nature_InsectSwarm") and not OoC and RPoH>0.2 and ActSpell("Insect Swarm") then return; end;if (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return; end;end;if (ranged() or health/healthmax<0.1) and (Furor==5 or ActSpell("Enrage",nil,0)==0) and ActSpell("Feral Charge",nil,0)==0 and not GotBuff("Ability_Racial_BearForm") and ActSpell("Dire Bear Form") then return; end;if GotBuff("Ability_Racial_BearForm") then if ranged() and (mana>=5 or OoC) and ActSpell("Feral Charge") then return; end;if not GotBuff("GhoulFrenzy") and not GotBuff("Druid_Enrage") and ActSpell("Enrage") then return; end;if melee() and (mana>=30-Fer or OoC) and ActSpell("Savage Bite") then end;if melee() and (mana>=20-Fer or OoC) and ActSpell("Swipe") then end;if melee() and (random(0,mana)>=15-Fer+15 or OoC) and ActSpell("Maul") then end;end;if GotBuff("Ability_Racial_BearForm") or GotBuff("Ability_Druid_CatForm") then local _,_,_,_,Omen=GetTalentInfo(1,10);if not GotDebuff("Spell_Nature_FaerieFire") or Omen==1 then if ActSpell("Faerie Fire (Feral)","Rank 4") then return;end;if ActSpell("Faerie Fire (Feral)","Rank 3") then return;end;if ActSpell("Faerie Fire (Feral)","Rank 2") then return;end;if ActSpell("Faerie Fire (Feral)","Rank 1") then return;end;end;end;if melee() and not GotBuff("Ability_Druid_CatForm") and ActSpell("Cat Form") then return; end;if GotBuff("Ability_Druid_CatForm") then if GetComboPoints()*20>=math.random(50,100) and mana>=35 then ActSpell("Ferocious Bite");end;if not GotBuff("Ability_Mount_JungleTiger") and mana>=30 and ActSpell("Tiger's Fury") then end;if melee() and not GotDebuff("Ability_Druid_Disembowel") and mana>=40-Fer and not OoC and UnitCreatureType("target")~='Elemental' and UnitCreatureType("target")~='Mechanical' and UnitCreatureType("target")~='Uncategorized' and UnitCreatureType("target")~='Undead' and ActSpell("Rake") then return; end;if melee() and (mana>=45-Fer or OoC) and ActSpell("Claw") then end;end;end;Attack_Actions() 
--
/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
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
			if sw==true then return true;end;
			if sw==0 then return GetSpellCooldown(ix,"spell");end;
			if sw=="self" then 
				if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return true;
			end;
			if sw==nil then 
				if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;
			end;
		end;
		ix=ix-1;
	end;
end;
function Attack_Actions() 
	local mana=UnitMana("player")
	local health=UnitHealth("player");local healthmax=UnitHealthMax("player");
	local OoC=GotBuff("Spell_Shadow_ManaBurn")
	local RPoH; if UnitExists("target") then RPoH=UnitHealth("target")/UnitHealthMax("target") else RPoH=0; end;
	local _,_,_,_,Fer=GetTalentInfo(2,1);
	local _,_,_,_,Furor=GetTalentInfo(3,2);
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 return; end;end;
	if not GotBuff("Ability_Racial_BearForm") and not GotBuff("Ability_Druid_CatForm") then 
		if ranged() and (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return; end;
		if not GotDebuff("Spell_Nature_InsectSwarm") and not OoC and RPoH>0.2 and ActSpell("Insect Swarm") then return; end;
		if (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return; end;
	end;
	if (ranged() or health/healthmax<0.1) and (Furor==5 or ActSpell("Enrage",nil,0)==0) and ActSpell("Feral Charge",nil,0)==0 and not GotBuff("Ability_Racial_BearForm") and ActSpell("Dire Bear Form") then return; end;
	if GotBuff("Ability_Racial_BearForm") then 
		if ranged() and (mana>=5 or OoC) and ActSpell("Feral Charge") then return; end;
		if not GotBuff("GhoulFrenzy") and not GotBuff("Druid_Enrage") and ActSpell("Enrage") then return; end;
		if melee() and (mana>=30-Fer or OoC) and ActSpell("Savage Bite") then end;
		if melee() and (mana>=20-Fer or OoC) and ActSpell("Swipe") then end;
		if melee() and (random(0,mana)>=15-Fer+15 or OoC) and ActSpell("Maul") then end;
	end;
	if GotBuff("Ability_Racial_BearForm") or GotBuff("Ability_Druid_CatForm") then 
		local _,_,_,_,Omen=GetTalentInfo(1,10);
		if not GotDebuff("Spell_Nature_FaerieFire") or Omen==1 then 
			if ActSpell("Faerie Fire (Feral)","Rank 4") then return;end;
			if ActSpell("Faerie Fire (Feral)","Rank 3") then return;end;
			if ActSpell("Faerie Fire (Feral)","Rank 2") then return;end;
			if ActSpell("Faerie Fire (Feral)","Rank 1") then return;end;
		end;
	end;
	if melee() and not GotBuff("Ability_Druid_CatForm") and ActSpell("Cat Form") then return; end;
	if GotBuff("Ability_Druid_CatForm") then 
		if GetComboPoints()*20>=math.random(50,100) and mana>=35 then ActSpell("Ferocious Bite");end;
		if not GotBuff("Ability_Mount_JungleTiger") and mana>=30 and ActSpell("Tiger's Fury") then end;
		if melee() and not GotDebuff("Ability_Druid_Disembowel") and mana>=40-Fer and not OoC 
			and UnitCreatureType("target")~='Elemental' and UnitCreatureType("target")~='Mechanical' and UnitCreatureType("target")~='Uncategorized' and UnitCreatureType("target")~='Undead' 
			and ActSpell("Rake") then return; end;
		if melee() and (mana>=45-Fer or OoC) and ActSpell("Claw") then end;
	end;
end;
Attack_Actions() 