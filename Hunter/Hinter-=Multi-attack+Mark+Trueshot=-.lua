-=AWCMR=- SuperMacro
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",2);end;end;local function ranged() if UnitExists("target") then return not melee();end;end;local function inCombat() return UnitAffectingCombat("player");end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==0 then return ix;end;if sw==1 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;end;function Attack_Actions() local mana,X,C=UnitMana("player");if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;if melee() then if GotBuff("Spell_Nature_RavenForm") then ActSpell("Aspect of the Hawk") end;if UnitCanAttack("player","target") and not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("JungleTiger") then if not ActSpell("Aspect of the Wolf") then ActSpell("Aspect of the Monkey"); end; end;for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack");C=96;end;end;ActSpell("Raptor Strike");ActSpell("Counterattack");ActSpell("Mongoose Bite");return;end if ranged() then if UnitCanAttack("player","target") and GotBuff("Ability_Mount_WhiteDireWolf") then ActSpell("Aspect of the Wolf")end;if not GotDebuff("Ability_Hunter_SniperShot") and (UnitHealth("target")/UnitHealthMax("target"))>0.50 then ActSpell("Hunter's Mark")end;if not inCombat() and ActSpell("Aimed Shot") then return;end;local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);if itemtype == "Bows" or itemtype == "Guns" or itemtype == "Crossbows" then X=1;for C=1,96 do if itemTexture==GetActionTexture(C) then if IsAutoRepeatAction(C) then X=0;end;break;end;end; if X==1 then CastSpellByName("Auto Shot");return;end;if not GotDebuff("Quickshot") and not GotDebuff("CriticalShot") and not GotDebuff("AimedShot") and UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" then if ActSpell("Serpent Sting") then return;end;end;if ActSpell("Arcane Shot") then return;end;if UnitCanAttack("player","target") and not GotBuff("RavenForm") and not GotBuff("AspectOfTheMonkey") and not GotBuff("JungleTiger") then ActSpell("Aspect of the Hawk") end;if ActSpell("Trueshot") then return;end;end;if itemtype == "Thrown" then if ActSpell("Throw") then return;end;end;end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",2);end;end;
local function ranged() if UnitExists("target") then return not melee();end;end;
local function inCombat() return UnitAffectingCombat("player");end;
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target = "target" end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function ActSpell(spell,rank,sw) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		if ix==0 then return nil;
		else 
			spellName,spellRank=GetSpellName(ix,"spell");
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if sw==0 then return ix;end;
				if sw==1 then return GetSpellCooldown(ix,"spell");end;
				if sw==nil then 
					if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;
				end;
			end;
			ix=ix-1;
		end;
	end;
end;
function Attack_Actions() 
	local mana,X,C=UnitMana("player");
	if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;
	if melee() then 
		if GotBuff("Spell_Nature_RavenForm") then ActSpell("Aspect of the Hawk") end;
		if UnitCanAttack("player","target") and not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("JungleTiger") then if not ActSpell("Aspect of the Wolf") then ActSpell("Aspect of the Monkey"); end; end;
		for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack");C=96;end;end;
		ActSpell("Raptor Strike");ActSpell("Counterattack");ActSpell("Mongoose Bite");return;
	end 
	if ranged() then 
		if UnitCanAttack("player","target") and GotBuff("Ability_Mount_WhiteDireWolf") then ActSpell("Aspect of the Wolf")end;
		if not GotDebuff("Ability_Hunter_SniperShot") and (UnitHealth("target")/UnitHealthMax("target"))>0.50 then ActSpell("Hunter's Mark")end;
		if not inCombat() and ActSpell("Aimed Shot") then return;end;
		local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")
		local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);
		if itemtype == "Bows" or itemtype == "Guns" or itemtype == "Crossbows" then 
			X=1;for C=1,96 do if itemTexture==GetActionTexture(C) then if IsAutoRepeatAction(C) then X=0;end;break;end;end; if X==1 then CastSpellByName("Auto Shot");return;end;
			if not GotDebuff("Quickshot") and not GotDebuff("CriticalShot") and not GotDebuff("AimedShot") 
			and UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" then 
				if ActSpell("Serpent Sting") then return;end;
			end;
			if ActSpell("Arcane Shot") then return;end;
			if UnitCanAttack("player","target") and not GotBuff("RavenForm") and not GotBuff("AspectOfTheMonkey") and not GotBuff("JungleTiger") then ActSpell("Aspect of the Hawk") end;
			if ActSpell("Trueshot") then return;end;
		end;
		if itemtype == "Thrown" then 
			if ActSpell("Throw") then return;end;
		end;
	end;
end;
Attack_Actions() 