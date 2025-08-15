Attak + Lacerate, Mongoose Bite, Raptor Strike. Auto Shot + Arcane Shot, Serpent Sting, Thrown
-=ALMRAAS=- 
-=- Arcane Shot - Serpent Sting
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",2);end;end;local function ranged() if UnitExists("target") then return not melee();end;end;local function inCombat() return UnitAffectingCombat("player");end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==0 then return ix;end;if sw==1 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;end;function Attack_Actions() local mana,X,C=UnitMana("player");if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;if ActSpell("Kill Command") then return;end;if melee() then for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack");C=96;return;end;end;if not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("RavenForm") and ActSpell("Aspect of the Wolf") then return;end;if not GotDebuff("Ability_Hunter_Quickshot") and ActSpell("Lacerate") then return;end;if (StringingNettle==0 or not GotDebuff("spell_lacerate")) and ActSpell("Mongoose Bite") then return;end;if ActSpell("Raptor Strike") then return;end;end;if ranged() then if not GotBuff("RavenForm") and not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("JungleTiger") and ActSpell("Aspect of the Hawk") then return;end;local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);if itemtype == "Bows" or itemtype == "Guns" or itemtype == "Crossbows" then X=1;for C=1,96 do if itemTexture==GetActionTexture(C) then if IsAutoRepeatAction(C) then X=0;end;break;end;end; if X==1 then CastSpellByName("Auto Shot");return;end;if ActSpell("Arcane Shot") then return;end;if not GotDebuff("Quickshot") and not GotDebuff("CriticalShot") and not GotDebuff("AimedShot") and UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" then if ActSpell("Serpent Sting") then return;end;end;end;if itemtype == "Thrown" then if ActSpell("Throw") then return;end;local UC,UT=UnitClass("target"),UnitCreatureType("target");if (not UC or UC=="Warrior"or UC=="Rogue"or UT=="Beast"or UT=="Voidwalker"or UT=="Felhunter") and not GotDebuff("Ability_Hunter_CriticalShot") then CastSpellByName("Scorpid Sting");end;end;end;end;Attack_Actions() 

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
	if ActSpell("Kill Command") then return;end;
	if melee() then 
		for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack");C=96;return;end;end;
		if not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("RavenForm") and ActSpell("Aspect of the Wolf") then return;end;
		if not GotDebuff("Ability_Hunter_Quickshot") and ActSpell("Lacerate") then return;end;
		if (StringingNettle==0 or not GotDebuff("spell_lacerate")) and ActSpell("Mongoose Bite") then return;end;
		if ActSpell("Raptor Strike") then return;end;
	end;
	if ranged() then 
		if not GotBuff("RavenForm") and not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("JungleTiger") and ActSpell("Aspect of the Hawk") then return;end;
		local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")
		local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);
		if itemtype == "Bows" or itemtype == "Guns" or itemtype == "Crossbows" then 
			X=1;for C=1,96 do if itemTexture==GetActionTexture(C) then if IsAutoRepeatAction(C) then X=0;end;break;end;end; if X==1 then CastSpellByName("Auto Shot");return;end;
			if ActSpell("Arcane Shot") then return;end;
			if not GotDebuff("Quickshot") and not GotDebuff("CriticalShot") and not GotDebuff("AimedShot") 
			and UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" then 
				if ActSpell("Serpent Sting") then return;end;
			end;
		end;
		if itemtype == "Thrown" then 
			if ActSpell("Throw") then return;end;
			local UC,UT=UnitClass("target"),UnitCreatureType("target");
			if (not UC or UC=="Warrior"or UC=="Rogue"or UT=="Beast"or UT=="Voidwalker"or UT=="Felhunter") and not GotDebuff("Ability_Hunter_CriticalShot") then 
				CastSpellByName("Scorpid Sting");
			end;
		end;
	end;
end;
Attack_Actions() 

-=-

-=ALMRASA=-
-=- Serpent Sting - Arcane Shot
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",2);end;end;local function ranged() if UnitExists("target") then return not melee();end;end;local function inCombat() return UnitAffectingCombat("player");end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==0 then return ix;end;if sw==1 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;end;function Attack_Actions() local mana,X,C=UnitMana("player");if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;if ActSpell("Kill Command") then return;end;if melee() then for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack");C=96;return;end;end;if not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("RavenForm") and ActSpell("Aspect of the Wolf") then return;end;if not GotDebuff("Ability_Hunter_Quickshot") and ActSpell("Lacerate") then return;end;if (StringingNettle==0 or not GotDebuff("spell_lacerate")) and ActSpell("Mongoose Bite") then return;end;if ActSpell("Raptor Strike") then return;end;end;if ranged() then if not GotBuff("RavenForm") and not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("JungleTiger") and ActSpell("Aspect of the Hawk") then return;end;local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);if itemtype == "Bows" or itemtype == "Guns" or itemtype == "Crossbows" then X=1;for C=1,96 do if itemTexture==GetActionTexture(C) then if IsAutoRepeatAction(C) then X=0;end;break;end;end; if X==1 then CastSpellByName("Auto Shot");return;end;if not GotDebuff("Quickshot") and not GotDebuff("CriticalShot") and not GotDebuff("AimedShot") and UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" then if ActSpell("Serpent Sting") then return;end;end;if ActSpell("Arcane Shot") then return;end;end;if itemtype == "Thrown" then if ActSpell("Throw") then return;end;local UC,UT=UnitClass("target"),UnitCreatureType("target");if (not UC or UC=="Warrior"or UC=="Rogue"or UT=="Beast"or UT=="Voidwalker"or UT=="Felhunter") and not GotDebuff("Ability_Hunter_CriticalShot") then CastSpellByName("Scorpid Sting");end;end;end;end;Attack_Actions() 

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
	if ActSpell("Kill Command") then return;end;
	if melee() then 
		for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack");C=96;return;end;end;
		if not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("RavenForm") and ActSpell("Aspect of the Wolf") then return;end;
		if not GotDebuff("Ability_Hunter_Quickshot") and ActSpell("Lacerate") then return;end;
		if (StringingNettle==0 or not GotDebuff("spell_lacerate")) and ActSpell("Mongoose Bite") then return;end;
		if ActSpell("Raptor Strike") then return;end;
	end;
	if ranged() then 
		if not GotBuff("RavenForm") and not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("JungleTiger") and ActSpell("Aspect of the Hawk") then return;end;
		local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")
		local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);
		if itemtype == "Bows" or itemtype == "Guns" or itemtype == "Crossbows" then 
			X=1;for C=1,96 do if itemTexture==GetActionTexture(C) then if IsAutoRepeatAction(C) then X=0;end;break;end;end; if X==1 then CastSpellByName("Auto Shot");return;end;
			if not GotDebuff("Quickshot") and not GotDebuff("CriticalShot") and not GotDebuff("AimedShot") 
			and UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" then 
				if ActSpell("Serpent Sting") then return;end;
			end;
			if ActSpell("Arcane Shot") then return;end;
		end;
		if itemtype == "Thrown" then 
			if ActSpell("Throw") then return;end;
			local UC,UT=UnitClass("target"),UnitCreatureType("target");
			if (not UC or UC=="Warrior"or UC=="Rogue"or UT=="Beast"or UT=="Voidwalker"or UT=="Felhunter") and not GotDebuff("Ability_Hunter_CriticalShot") then 
				CastSpellByName("Scorpid Sting");
			end;
		end;
	end;
end;
Attack_Actions() 