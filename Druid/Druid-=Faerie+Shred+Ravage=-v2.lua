Druid-=Faerie+Shred+Ravage+Tiger's Fury=-
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",2) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) if not target then target="player";end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function GotDebuff(name,target) if not target then target="target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;function Attack_Actions() local ix;local PM=UnitMana("player")local OoC=GotBuff("Spell_Shadow_ManaBurn")local _,_,_,_,IShed=GetTalentInfo(2,1);local TPoH,TH; if UnitExists("target") then TH=UnitHealth("target");TPoH=UnitHealth("target")/UnitHealthMax("target") else TPoH=0; end;if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;if GotBuff("Ability_Druid_CatForm") then if GotBuff("Ability_Ambush") then if (PM>=60 or OoC) and ActSpell("Ravage") then return; end;else for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;local _,_,_,_,Omen=GetTalentInfo(1,10);if not GotDebuff("Spell_Nature_FaerieFire") or Omen==1 then if ActSpell("Faerie Fire (Feral)","Rank 4") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; end;end;if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" and PM>=30 and not GotDebuff("Ability_GhoulFrenzy") and GetComboPoints()*20>=math.random(100-(100*TPoH),100) and ActSpell("Rip") then return; end;if GetComboPoints()*20>=math.random(100*TPoH,101) and ActSpell("Ferocious Bite") then return; end;if (PM>=60-IShed*2 or OoC) and ActSpell("Shred") then return; end;if not GotBuff("Ability_Mount_JungleTiger") and PM>=30 and ActSpell("Tiger's Fury") then end;end;end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",2) end;end;
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
function Attack_Actions() 
	local ix;
	local PM=UnitMana("player")
	local OoC=GotBuff("Spell_Shadow_ManaBurn")
	local _,_,_,_,IShed=GetTalentInfo(2,1);
	local TPoH,TH; if UnitExists("target") then TH=UnitHealth("target");TPoH=UnitHealth("target")/UnitHealthMax("target") else TPoH=0; end;
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	if GotBuff("Ability_Druid_CatForm") then 
		if GotBuff("Ability_Ambush") then 
			if (PM>=60 or OoC) and ActSpell("Ravage") then return; end;
		else 
			for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;
			local _,_,_,_,Omen=GetTalentInfo(1,10);
			if not GotDebuff("Spell_Nature_FaerieFire") or Omen==1 then 
				if ActSpell("Faerie Fire (Feral)","Rank 4") then return; 
				elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; 
				elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; 
				elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; 
				end;
			end;
			if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" 
			and PM>=30 and not GotDebuff("Ability_GhoulFrenzy") and GetComboPoints()*20>=math.random(100-(100*TPoH),100) and ActSpell("Rip") then return; end;
			if GetComboPoints()*20>=math.random(100*TPoH,101) and ActSpell("Ferocious Bite") then return; end;
			if (PM>=60-IShed*2 or OoC) and ActSpell("Shred") then return; end;
			if not GotBuff("Ability_Mount_JungleTiger") and PM>=30 and ActSpell("Tiger's Fury") then end;
		end;
	end;
end;
Attack_Actions() 



Druid-=Faerie+Shred+Ravage=-
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",2) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) if not target then target="player";end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function GotDebuff(name,target) if not target then target="target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;function Attack_Actions() local ix;local PM=UnitMana("player")local OoC=GotBuff("Spell_Shadow_ManaBurn")local _,_,_,_,IShed=GetTalentInfo(2,1);local TPoH,TH; if UnitExists("target") then TH=UnitHealth("target");TPoH=UnitHealth("target")/UnitHealthMax("target") else TPoH=0; end;if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;if GotBuff("Ability_Druid_CatForm") then if GotBuff("Ability_Ambush") then if (PM>=60 or OoC) and ActSpell("Ravage") then return; end;else for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;local _,_,_,_,Omen=GetTalentInfo(1,10);if not GotDebuff("Spell_Nature_FaerieFire") or Omen==1 then if ActSpell("Faerie Fire (Feral)","Rank 4") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; end;end;if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" and PM>=30 and not GotDebuff("Ability_GhoulFrenzy") and GetComboPoints()*20>=math.random(100-(100*TPoH),100) and ActSpell("Rip") then return; end;if GetComboPoints()*20>=math.random(100*TPoH,101) and ActSpell("Ferocious Bite") then return; end;if (PM>=60-IShed*2 or OoC) and ActSpell("Shred") then return; end;end;end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",2) end;end;
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
function Attack_Actions() 
	local ix;
	local PM=UnitMana("player")
	local OoC=GotBuff("Spell_Shadow_ManaBurn")
	local _,_,_,_,IShed=GetTalentInfo(2,1);
	local TPoH,TH; if UnitExists("target") then TH=UnitHealth("target");TPoH=UnitHealth("target")/UnitHealthMax("target") else TPoH=0; end;
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	if GotBuff("Ability_Druid_CatForm") then 
		if GotBuff("Ability_Ambush") then 
			if (PM>=60 or OoC) and ActSpell("Ravage") then return; end;
		else 
			for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;
			local _,_,_,_,Omen=GetTalentInfo(1,10);
			if not GotDebuff("Spell_Nature_FaerieFire") or Omen==1 then 
				if ActSpell("Faerie Fire (Feral)","Rank 4") then return; 
				elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; 
				elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; 
				elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; 
				end;
			end;
			if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" 
			and PM>=30 and not GotDebuff("Ability_GhoulFrenzy") and GetComboPoints()*20>=math.random(100-(100*TPoH),100) and ActSpell("Rip") then return; end;
			if GetComboPoints()*20>=math.random(100*TPoH,101) and ActSpell("Ferocious Bite") then return; end;
			if (PM>=60-IShed*2 or OoC) and ActSpell("Shred") then return; end;
		end;
	end;
end;
Attack_Actions() 