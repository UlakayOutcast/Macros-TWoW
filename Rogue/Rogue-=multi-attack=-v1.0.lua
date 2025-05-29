-=Rogue multi-attack=--=Attack+Swarm+Faerie+Maul+Bite+Charge+Fury+Rake+Claw=-

/script local function melee() if UnitExists('target') then return CheckInteractDistance('target',2) end;end;local function ranged() if UnitExists('target') then return not melee() end;end;local function inCombat() return UnitAffectingCombat('player') end;local function GotBuff(name) local tex,cnt;for ix = 1,32 do tex,cnt = UnitBuff('player',ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function action(name) local ix;for ix=1,200 do if GetSpellName(ix,'spell')==name then if GetSpellCooldown(ix,'spell')==0 then CastSpellByName(name,self); return 1; end;end;end;end;function Attack_Actions() if UnitHealth("target")==0 or UnitIsFriend("target","player") then TargetNearestEnemy();end;local mana=UnitMana('player') local CC=GotBuff('Spell_Shadow_ManaBurn') if GotBuff('Stealth') and mana>59 and action("Cheap Shot") then return end;if not GotBuff('Stealth') then local C for C=1,192 do if IsAttackAction(C) and not IsCurrentAction(C) then action('Attack') C=192 return end;end;if melee() then if mana>39 and action("Ghostly Strike") then return end;if mana>44 and action("Sinister Strike") then return end;if mana>9 and action("Riposte") then return end;end;if ranged() then action("Shoot Bow") action("Shoot Crossbow") action("Shoot Gun") action("Throw") end;end;end;Attack_Actions() 
--
/script 
local function melee() if UnitExists('target') then return CheckInteractDistance('target',2) end;end;
local function ranged() if UnitExists('target') then return not melee() end;end;
local function inCombat() return UnitAffectingCombat('player') end;
local function GotBuff(name) 
	local tex,cnt;
	for ix = 1,32 do 
		tex,cnt = UnitBuff('player',ix);
		if not tex then return; end;
		if strfind(tex,name) then return cnt; end;
	end;
end;
local function action(name) 
	local ix;
	for ix=1,200 do 
		if GetSpellName(ix,'spell')==name then 
			if GetSpellCooldown(ix,'spell')==0 then CastSpellByName(name,self); return 1; end;
		end;
	end;
end;
function Attack_Actions() 
	if UnitHealth("target")==0 or UnitIsFriend("target","player") then TargetNearestEnemy();end;
	local mana=UnitMana('player') 
	local CC=GotBuff('Spell_Shadow_ManaBurn') 
	if GotBuff('Stealth') and mana>59 and action("Cheap Shot") then return end;
	if not GotBuff('Stealth') then 
		local C for C=1,192 do if IsAttackAction(C) and not IsCurrentAction(C) then action('Attack') C=192 return end;end;
		if melee() then 
			if mana>39 and action("Ghostly Strike") then return end;
			if mana>44 and action("Sinister Strike") then return end;
			if mana>9 and action("Riposte") then return end;
		end;
		if ranged() then 
			action("Shoot Bow") action("Shoot Crossbow") action("Shoot Gun") action("Throw") 
		end;
	end;
end;
Attack_Actions() 

-=-
/script local function melee() if UnitExists('target') then return CheckInteractDistance('target',2) end;end;local function ranged() if UnitExists('target') then return not melee() end;end;local function inCombat() return UnitAffectingCombat('player') end;local function GotBuff(name) local tex,cnt;for ix = 1,32 do tex,cnt = UnitBuff('player',ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function action(name) local ix;for ix=1,200 do if GetSpellName(ix,'spell')==name then if GetSpellCooldown(ix,'spell')==0 then CastSpellByName(name,self); return 1; end;end;end;end;function Attack_Actions() if UnitHealth("target")==0 or UnitIsFriend("target","player") then TargetNearestEnemy();end;local mana=UnitMana('player') local CC=GotBuff('Spell_Shadow_ManaBurn') if GotBuff('Stealth') and mana>59 and action("Cheap Shot") then return end;if not GotBuff('Stealth') then local C for C=1,192 do if IsAttackAction(C) and not IsCurrentAction(C) then action('Attack') C=192 return end;end;if melee() then if mana>39 and action("Ghostly Strike") then return end;if mana>39 and action("Sinister Strike") then return end;if mana>9 and action("Riposte") then return end;end;if ranged() then action("Shoot Bow") action("Shoot Crossbow") action("Shoot Gun") action("Throw") end;end;end;Attack_Actions() 
---
/script 
local function melee() if UnitExists('target') then return CheckInteractDistance('target',2) end;end;
local function ranged() if UnitExists('target') then return not melee() end;end;
local function inCombat() return UnitAffectingCombat('player') end;
local function GotBuff(name) 
	local tex,cnt;
	for ix = 1,32 do 
		tex,cnt = UnitBuff('player',ix);
		if not tex then return; end;
		if strfind(tex,name) then return cnt; end;
	end;
end;
local function action(name) 
	local ix;
	for ix=1,200 do 
		if GetSpellName(ix,'spell')==name then 
			if GetSpellCooldown(ix,'spell')==0 then CastSpellByName(name,self); return 1; end;
		end;
	end;
end;
function Attack_Actions() 
	if UnitHealth("target")==0 or UnitIsFriend("target","player") then TargetNearestEnemy();end;
	local mana=UnitMana('player') 
	local CC=GotBuff('Spell_Shadow_ManaBurn') 
	if GotBuff('Stealth') and mana>59 and action("Cheap Shot") then return end;
	if not GotBuff('Stealth') then 
		local C for C=1,192 do if IsAttackAction(C) and not IsCurrentAction(C) then action('Attack') C=192 return end;end;
		if melee() then 
			if mana>39 and action("Ghostly Strike") then return end;
			if mana>39 and action("Sinister Strike") then return end;
			if mana>9 and action("Riposte") then return end;
		end;
		if ranged() then 
			action("Shoot Bow") action("Shoot Crossbow") action("Shoot Gun") action("Throw") 
		end;
	end;
end;
Attack_Actions() 