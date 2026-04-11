Druid-=Ravage+Shred + Tiger's Fury+Faerie=-RSTF
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) if not target then target="player";end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function GotDebuff(name,target) if not target then target="target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function ActSpell(spell,rank,sw) local ix=1;local spellName,spellRank=GetSpellName(1,"spell");while spellName do ix=ix+1;spellName=GetSpellName(ix,"spell");end;while ix>0 do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return true;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return true;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;end;end;ix=ix-1;end;return false;end;function Attack_Actions() local ix;local PM=UnitMana("player")local OoC=GotBuff("Spell_Shadow_ManaBurn");local _,_,_,_,TR=GetTalentInfo(2,1);local _,_,_,_,IS=GetTalentInfo(2,13);local _,_,_,_,OW=GetTalentInfo(2,6);local _,_,_,_,AB=GetTalentInfo(2,14);if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;local TPoH,TH; if UnitExists("target") then TH=UnitHealth("target");TPoH=UnitHealth("target")/UnitHealthMax("target") else TPoH=0; end;if GotBuff("Ability_Druid_CatForm") then if not GotBuff("Ability_Mount_JungleTiger") and PM>=30 and ActSpell("Tiger's Fury") then end;if GotBuff("Ability_Ambush") then if (PM>=50 or OoC) and ActSpell("Ravage") then return; end;else for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;if OoC and IsControlKeyDown() then return;end;if (PM>=60-IS*2 or OoC) and ActSpell("Shred") then return; end;local _,_,_,_,Omen=GetTalentInfo(1,10);if not GotDebuff("Shadow_ImpPhaseShift","player") and not GotDebuff("Holy_Silence","player") and not GotDebuff("Shadow_CallofBone","player") and not GotDebuff("Shadow_Teleport","player") and not GotDebuff("Nature_EarthBind","player") then if not GotDebuff("Spell_Nature_FaerieFire") or Omen==1 then if ActSpell("Faerie Fire (Feral)","Rank 4") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; end;end;end;if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" and not GotDebuff("Ability_GhoulFrenzy") and PM>=30 and GetComboPoints()>0 and (GetComboPoints()>=math.random(5*TPoH,5) or OW>0 or AB>0) and ActSpell("Rip") then return; end;if PM>=35 and GetComboPoints()>=math.random(5*TPoH,5) and ActSpell("Ferocious Bite") then return; end;if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" and not GotDebuff("Ability_Druid_Disembowel") and PM>=40-TR and (math.random()<=TPoH or OW>0 or AB>0) and ActSpell("Rake") then return; end;end;end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
local function ranged() if UnitExists("target") then return not melee() end;end;
local function inCombat() return UnitAffectingCombat("player") end;
local function GotBuff(name,target) 
	if not target then target="player";end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff(target,ix);
		if not tex then return; end;
		if strfind(tex,name) then return cnt; end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target="target" end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix);
		if not tex then return; end;
		if strfind(tex,name) then return cnt; end;
	end;
end;
local function ActSpell(spell,rank,sw) 
	local ix=1;
	local spellName,spellRank=GetSpellName(1,"spell");
	while spellName do ix=ix+1;spellName=GetSpellName(ix,"spell");end;
	while ix>0 do 
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
	return false;
end;
function Attack_Actions() 
	local ix;
	local PM=UnitMana("player")
	local OoC=GotBuff("Spell_Shadow_ManaBurn");
	local _,_,_,_,TR=GetTalentInfo(2,1);
	local _,_,_,_,IS=GetTalentInfo(2,13);
	local _,_,_,_,OW=GetTalentInfo(2,6);
	local _,_,_,_,AB=GetTalentInfo(2,14);
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	local TPoH,TH; if UnitExists("target") then TH=UnitHealth("target");TPoH=UnitHealth("target")/UnitHealthMax("target") else TPoH=0; end;
	if GotBuff("Ability_Druid_CatForm") then 
		if not GotBuff("Ability_Mount_JungleTiger") and PM>=30 and ActSpell("Tiger's Fury") then end;
		if GotBuff("Ability_Ambush") then 
			if (PM>=50 or OoC) and ActSpell("Ravage") then return; end;
		else 
			for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;
			if OoC and IsControlKeyDown() then return;end;
			if (PM>=60-IS*2 or OoC) and ActSpell("Shred") then return; end;
			local _,_,_,_,Omen=GetTalentInfo(1,10);
			if not GotDebuff("Shadow_ImpPhaseShift","player") and not GotDebuff("Holy_Silence","player") and not GotDebuff("Shadow_CallofBone","player") and not GotDebuff("Shadow_Teleport","player") and not GotDebuff("Nature_EarthBind","player") then 
				if not GotDebuff("Spell_Nature_FaerieFire") or Omen==1 then 
					if ActSpell("Faerie Fire (Feral)","Rank 4") then return; 
					elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; 
					elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; 
					elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; 
					end;
				end;
			end;
			if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" 
			and not GotDebuff("Ability_GhoulFrenzy") and PM>=30 and GetComboPoints()>0 and (GetComboPoints()>=math.random(5*TPoH,5) or OW>0 or AB>0) and ActSpell("Rip") then return; end;
			if PM>=35 and GetComboPoints()>=math.random(5*TPoH,5) and ActSpell("Ferocious Bite") then return; end;
			if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" 
			and not GotDebuff("Ability_Druid_Disembowel") and PM>=40-TR and (math.random()<=TPoH or OW>0 or AB>0) and ActSpell("Rake") then return; end;
		end;
	end;
end;
Attack_Actions() 




--безопасный режим
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) if not target then target="player";end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function GotDebuff(name,target) if not target then target="target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function ActSpell(spell,rank,sw) local ix=1;local spellName,spellRank=GetSpellName(1,"spell");while spellName do ix=ix+1;spellName=GetSpellName(ix,"spell");end;while ix>0 do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return true;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return true;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;end;end;ix=ix-1;end;return false;end;function Attack_Actions() local ix;local PM=UnitMana("player")local OoC=GotBuff("Spell_Shadow_ManaBurn");local _,_,_,_,TR=GetTalentInfo(2,1);local _,_,_,_,IS=GetTalentInfo(2,13);local _,_,_,_,OW=GetTalentInfo(2,6);local _,_,_,_,AB=GetTalentInfo(2,14);if not UnitCanAttack("player","target") or UnitHealth("target")==0 or (inCombat("player") and not inCombat("target")) then TargetNearestEnemy();end;local TPoH,TH; if UnitExists("target") then TH=UnitHealth("target");TPoH=UnitHealth("target")/UnitHealthMax("target") else TPoH=0; end;if GotBuff("Ability_Druid_CatForm") then if not GotBuff("Ability_Mount_JungleTiger") and PM>=30 and ActSpell("Tiger's Fury") then end;if GotBuff("Ability_Ambush") then if (PM>=50 or OoC) and ActSpell("Ravage") then return; end;else for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;if OoC and IsControlKeyDown() then return;end;if (PM>=60-IS*2 or OoC) and ActSpell("Shred") then return; end;local _,_,_,_,Omen=GetTalentInfo(1,10);if not GotDebuff("Shadow_ImpPhaseShift","player") and not GotDebuff("Holy_Silence","player") and not GotDebuff("Shadow_CallofBone","player") and not GotDebuff("Shadow_Teleport","player") and not GotDebuff("Nature_EarthBind","player") then if not GotDebuff("Spell_Nature_FaerieFire") or Omen==1 then if ActSpell("Faerie Fire (Feral)","Rank 4") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; end;end;end;if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" and not GotDebuff("Ability_GhoulFrenzy") and PM>=30 and GetComboPoints()>0 and (GetComboPoints()>=math.random(5*TPoH,5) or OW>0 or AB>0) and ActSpell("Rip") then return; end;if PM>=35 and GetComboPoints()>=math.random(5*TPoH,5) and ActSpell("Ferocious Bite") then return; end;if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" and not GotDebuff("Ability_Druid_Disembowel") and PM>=40-TR and (math.random()<=TPoH or OW>0 or AB>0) and ActSpell("Rake") then return; end;end;end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
local function ranged() if UnitExists("target") then return not melee() end;end;
local function inCombat() return UnitAffectingCombat("player") end;
local function GotBuff(name,target) 
	if not target then target="player";end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff(target,ix);
		if not tex then return; end;
		if strfind(tex,name) then return cnt; end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target="target" end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix);
		if not tex then return; end;
		if strfind(tex,name) then return cnt; end;
	end;
end;
local function ActSpell(spell,rank,sw) 
	local ix=1;
	local spellName,spellRank=GetSpellName(1,"spell");
	while spellName do ix=ix+1;spellName=GetSpellName(ix,"spell");end;
	while ix>0 do 
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
	return false;
end;
function Attack_Actions() 
	local ix;
	local PM=UnitMana("player")
	local OoC=GotBuff("Spell_Shadow_ManaBurn");
	local _,_,_,_,TR=GetTalentInfo(2,1);
	local _,_,_,_,IS=GetTalentInfo(2,13);
	local _,_,_,_,OW=GetTalentInfo(2,6);
	local _,_,_,_,AB=GetTalentInfo(2,14);
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 or (inCombat("player") and not inCombat("target")) then TargetNearestEnemy();end;
	local TPoH,TH; if UnitExists("target") then TH=UnitHealth("target");TPoH=UnitHealth("target")/UnitHealthMax("target") else TPoH=0; end;
	if GotBuff("Ability_Druid_CatForm") then 
		if not GotBuff("Ability_Mount_JungleTiger") and PM>=30 and ActSpell("Tiger's Fury") then end;
		if GotBuff("Ability_Ambush") then 
			if (PM>=50 or OoC) and ActSpell("Ravage") then return; end;
		else 
			for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;
			if OoC and IsControlKeyDown() then return;end;
			if (PM>=60-IS*2 or OoC) and ActSpell("Shred") then return; end;
			local _,_,_,_,Omen=GetTalentInfo(1,10);
			if not GotDebuff("Shadow_ImpPhaseShift","player") and not GotDebuff("Holy_Silence","player") and not GotDebuff("Shadow_CallofBone","player") and not GotDebuff("Shadow_Teleport","player") and not GotDebuff("Nature_EarthBind","player") then 
				if not GotDebuff("Spell_Nature_FaerieFire") or Omen==1 then 
					if ActSpell("Faerie Fire (Feral)","Rank 4") then return; 
					elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; 
					elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; 
					elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; 
					end;
				end;
			end;
			if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" 
			and not GotDebuff("Ability_GhoulFrenzy") and PM>=30 and GetComboPoints()>0 and (GetComboPoints()>=math.random(5*TPoH,5) or OW>0 or AB>0) and ActSpell("Rip") then return; end;
			if PM>=35 and GetComboPoints()>=math.random(5*TPoH,5) and ActSpell("Ferocious Bite") then return; end;
			if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" 
			and not GotDebuff("Ability_Druid_Disembowel") and PM>=40-TR and (math.random()<=TPoH or OW>0 or AB>0) and ActSpell("Rake") then return; end;
		end;
	end;
end;
Attack_Actions() 