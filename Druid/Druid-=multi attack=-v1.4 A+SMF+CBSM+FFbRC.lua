-=A+SMFSW+CBSM+RFFbRC=-v1.4
-=Druid multi-attack=--=Attack+Swarm+Moonfire+Faerie+StarFire+Wrath+Charge+Bite+Swipe+Maul+Rip+Fury+Ferocious Bite+Rake+Claw=-
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",2) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) local tex,cnt for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target="target" end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,self) local ix,spellName,spellRank=192 while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell") if spellName==spell and (spellRank==rank or rank==nil) then if GetSpellCooldown(ix,"spell")==0 then if self then CastSpellByName(spell.."("..rank..")",self) else CastSpell(ix,"spell") end;return true;end;end;ix=ix-1 end;end;end;function Attack_Actions() local mana=UnitMana("player")local OoC=GotBuff("Spell_Shadow_ManaBurn")local TPoH,TH; if UnitExists("target") then TH=UnitHealth("target");TPoH=UnitHealth("target")/UnitHealthMax("target") else TPoH=0; end;local _,_,_,_,TR=GetTalentInfo(2,1);if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;local ix;for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;if not GotBuff("Ability_Racial_BearForm") and not GotBuff("Ability_Druid_CatForm") then if melee() then if not GotDebuff("Spell_Nature_InsectSwarm") and not OoC and TPoH>0.2 and ActSpell("Insect Swarm") then return; end;if (not GotDebuff("Spell_Nature_StarFall") or OoC or (not GotBuff("ForceOfNature") and TPoH<0.2)) and ActSpell("Moonfire") then return; end;end;if ranged() then if (not GotDebuff("Spell_Nature_StarFall") or OoC or (not GotBuff("ForceOfNature") and TPoH<0.2)) and ActSpell("Moonfire") then return; end;if not GotDebuff("Spell_Nature_InsectSwarm") and not OoC and TPoH>0.2 and ActSpell("Insect Swarm") then return; end;end;if not GotDebuff("Spell_Nature_FaerieFire") and TPoH>0.1 and melee() and not GotBuff("ForceOfNature") and ActSpell("Faerie Fire") then return; end;end;if (not GotBuff("Ability_Racial_BearForm") and not GotBuff("Ability_Druid_CatForm")) or GotBuff("ForceOfNature") then local GB=(GotBuff("Spell_Arcane_StarFire") or GotBuff("Spell_Nature_NaturesBlessing"));local ASF=1;if GotBuff("Spell_Nature_AbolishMagic") then ASF=0.5;end;if GB and (mana>=340 or OoC) and TH>=496 and ActSpell("Starfire","Rank 7") then return;end;if GB and (mana>=315 or OoC) and TH>=445 and ActSpell("Starfire","Rank 6") then return;end;if GB and (mana>=275 or OoC) and TH>=362 and ActSpell("Starfire","Rank 5") then return;end;if (mana>=210*ASF or OoC) and TH>=292 and ActSpell("Wrath","Rank 9") then return;end;if GB and (mana>=230 or OoC) and TH>=280 and ActSpell("Starfire","Rank 4") then return;end;if (mana>=180*ASF or OoC) and TH>=248 and ActSpell("Wrath","Rank 8") then return;end;if GB and (mana>=180 or OoC) and TH>=201 and ActSpell("Starfire","Rank 3") then return;end;if (mana>=155*ASF or OoC) and TH>=192 and ActSpell("Wrath","Rank 7") then return;end;if (mana>=125*ASF or OoC) and TH>=146 and ActSpell("Wrath","Rank 6") then return;end;if GB and (mana>=135 or OoC) and TH>=137 and ActSpell("Starfire","Rank 2") then return;end;if (mana>=100*ASF or OoC) and TH>=106 and ActSpell("Wrath","Rank 5") then return;end;if GB and (mana>=95 or OoC) and TH>=89 and ActSpell("Starfire","Rank 1") then return;end;if (mana>=70*ASF or OoC) and TH>=66 and ActSpell("Wrath","Rank 4") then return;end;if (mana>=55*ASF or OoC) and TH>=46 and ActSpell("Wrath","Rank 3") then return;end;if (mana>=35*ASF or OoC) and TH>=26 and ActSpell("Wrath","Rank 2") then return;end;if (mana>=20*ASF or OoC) and TH>=13 and ActSpell("Wrath","Rank 1") then return;end;end;if GotBuff("Ability_Racial_BearForm") or GotBuff("Ability_Druid_CatForm") then local _,_,_,_,Omen=GetTalentInfo(1,10);if not GotDebuff("Spell_Nature_FaerieFire") or Omen==1 then if ActSpell("Faerie Fire (Feral)","Rank 4") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; end;end;if GotBuff("Ability_Racial_BearForm") then ActSpell("Enrage")if ranged() and (mana>=5 or OoC) and ActSpell("Feral Charge") then return; end;if melee() and (mana>=30-TR or OoC) and ActSpell("Savage Bite") then return; end;if melee() and (mana>=15 or OoC) and ActSpell("Swipe") then end;if melee() and (mana>=80-TR or OoC) and ActSpell("Maul") then end;end;if GotBuff("Ability_Druid_CatForm") then if not GotBuff("Ability_Mount_JungleTiger") and mana>=30 and ActSpell("Tiger's Fury") then end;if melee() then if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" and GetComboPoints()*20>=math.random(100-(100*TPoH),100) and not GotDebuff("GhoulFrenzy") and ActSpell("Rip") then return; end;if GetComboPoints()*20>=math.random(100*TPoH,101) and ActSpell("Ferocious Bite") then return; end;if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" and not GotDebuff("Ability_Druid_Disembowel") and (100*TPoH)>=math.random(0,100) and mana>=40-TR and not OoC and ActSpell("Rake") then return; end;if (mana>=45-TR or OoC) and ActSpell("Claw") then return; end;end;end;end;end;Attack_Actions() 
---
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
	if not target then target="target" end;
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function ActSpell(spell,rank,self) 
	local ix,spellName,spellRank=192 
	while(ix>0) do 
		if ix==0 then return nil;
		else 
			spellName,spellRank=GetSpellName(ix,"spell") 
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if GetSpellCooldown(ix,"spell")==0 then 
					if self then CastSpellByName(spell.."("..rank..")",self) 
					else CastSpell(ix,"spell") end;
					return true;
				end;
			end;
			ix=ix-1 
		end;
	end;
end;
function Attack_Actions() 
	local mana=UnitMana("player")
	local OoC=GotBuff("Spell_Shadow_ManaBurn")
	local TPoH,TH; if UnitExists("target") then TH=UnitHealth("target");TPoH=UnitHealth("target")/UnitHealthMax("target") else TPoH=0; end;
	local _,_,_,_,TR=GetTalentInfo(2,1);
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	local ix;
	for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;
	if not GotBuff("Ability_Racial_BearForm") and not GotBuff("Ability_Druid_CatForm") then 
		if melee() then 
			if not GotDebuff("Spell_Nature_InsectSwarm") and not OoC and TPoH>0.2 and ActSpell("Insect Swarm") then return; end;
			if (not GotDebuff("Spell_Nature_StarFall") or OoC or (not GotBuff("ForceOfNature") and TPoH<0.2)) and ActSpell("Moonfire") then return; end;
		end;
		if ranged() then 
			if (not GotDebuff("Spell_Nature_StarFall") or OoC or (not GotBuff("ForceOfNature") and TPoH<0.2)) and ActSpell("Moonfire") then return; end;
			if not GotDebuff("Spell_Nature_InsectSwarm") and not OoC and TPoH>0.2 and ActSpell("Insect Swarm") then return; end;
		end;
		if not GotDebuff("Spell_Nature_FaerieFire") and TPoH>0.1 and melee() and not GotBuff("ForceOfNature") and ActSpell("Faerie Fire") then return; end;
	end;
	if (not GotBuff("Ability_Racial_BearForm") and not GotBuff("Ability_Druid_CatForm")) or GotBuff("ForceOfNature") then 
		local GB=(GotBuff("Spell_Arcane_StarFire") or GotBuff("Spell_Nature_NaturesBlessing"));
		local ASF=1;if GotBuff("Spell_Nature_AbolishMagic") then ASF=0.5;end;
		if GB and (mana>=340 or OoC) and TH>=496 and ActSpell("Starfire","Rank 7") then return;end;
		if GB and (mana>=315 or OoC) and TH>=445 and ActSpell("Starfire","Rank 6") then return;end;
		if GB and (mana>=275 or OoC) and TH>=362 and ActSpell("Starfire","Rank 5") then return;end;
		if (mana>=210*ASF or OoC) and TH>=292 and ActSpell("Wrath","Rank 9") then return;end;
		if GB and (mana>=230 or OoC) and TH>=280 and ActSpell("Starfire","Rank 4") then return;end;
		if (mana>=180*ASF or OoC) and TH>=248 and ActSpell("Wrath","Rank 8") then return;end;
		if GB and (mana>=180 or OoC) and TH>=201 and ActSpell("Starfire","Rank 3") then return;end;
		if (mana>=155*ASF or OoC) and TH>=192 and ActSpell("Wrath","Rank 7") then return;end;
		if (mana>=125*ASF or OoC) and TH>=146 and ActSpell("Wrath","Rank 6") then return;end;
		if GB and (mana>=135 or OoC) and TH>=137 and ActSpell("Starfire","Rank 2") then return;end;
		if (mana>=100*ASF or OoC) and TH>=106 and ActSpell("Wrath","Rank 5") then return;end;
		if GB and (mana>=95 or OoC) and TH>=89 and ActSpell("Starfire","Rank 1") then return;end;
		if (mana>=70*ASF or OoC) and TH>=66 and ActSpell("Wrath","Rank 4") then return;end;
		if (mana>=55*ASF or OoC) and TH>=46 and ActSpell("Wrath","Rank 3") then return;end;
		if (mana>=35*ASF or OoC) and TH>=26 and ActSpell("Wrath","Rank 2") then return;end;
		if (mana>=20*ASF or OoC) and TH>=13 and ActSpell("Wrath","Rank 1") then return;end;
	end;
	if GotBuff("Ability_Racial_BearForm") or GotBuff("Ability_Druid_CatForm") then 
		local _,_,_,_,Omen=GetTalentInfo(1,10);
		if not GotDebuff("Spell_Nature_FaerieFire") or Omen==1 then 
			if ActSpell("Faerie Fire (Feral)","Rank 4") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; 
			end;
		end;
		if GotBuff("Ability_Racial_BearForm") then 
			ActSpell("Enrage")
			if ranged() and (mana>=5 or OoC) and ActSpell("Feral Charge") then return; end;
			if melee() and (mana>=30-TR or OoC) and ActSpell("Savage Bite") then return; end;
			if melee() and (mana>=15 or OoC) and ActSpell("Swipe") then end;
			if melee() and (mana>=80-TR or OoC) and ActSpell("Maul") then end;
		end;
		if GotBuff("Ability_Druid_CatForm") then 
			if not GotBuff("Ability_Mount_JungleTiger") and mana>=30 and ActSpell("Tiger's Fury") then end;
			if melee() then 
				if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" 
				and GetComboPoints()*20>=math.random(100-(100*TPoH),100) and not GotDebuff("GhoulFrenzy") and ActSpell("Rip") then return; end;
				if GetComboPoints()*20>=math.random(100*TPoH,101) and ActSpell("Ferocious Bite") then return; end;
				if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" 
				and not GotDebuff("Ability_Druid_Disembowel") and (100*TPoH)>=math.random(0,100) and mana>=40-TR and not OoC and ActSpell("Rake") then return; end;
				if (mana>=45-TR or OoC) and ActSpell("Claw") then return; end;
			end;
		end;
	end;
end;
Attack_Actions() 