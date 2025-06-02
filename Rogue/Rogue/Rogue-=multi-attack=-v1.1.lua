-=Rogue multi-attack=- 1.17.2(7207)

/script local function melee() if UnitExists('target') then return CheckInteractDistance('target',2) end;end;local function ranged() if UnitExists('target') then return not melee() end;end;local function inCombat() return UnitAffectingCombat('player') end;local function GotBuff(name) local tex,cnt;for ix = 1,32 do tex,cnt = UnitBuff('player',ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function action(name) local ix;for ix=1,200 do if GetSpellName(ix,'spell')==name then if GetSpellCooldown(ix,'spell')==0 then CastSpellByName(name,self); return 1; end;end;end;end;local function HW(slot)local _,_,_,_,_,RT;local _,_,_,_,_,MHT;local _,_,_,_,_,OHT;if GetInventoryItemLink("player", 18)then local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,RT=GetItemInfo(link);else RT=nil;end;if GetInventoryItemLink("player", 16)then local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,MHT=GetItemInfo(link);else MHT=nil;end;if GetInventoryItemLink("player", 17)then local _,_,link=string.find(GetInventoryItemLink("player", 17),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,OHT=GetItemInfo(link);else OHT=nil;end;if slot=="MainH"and not GDebuff("Disarm","player")then return MHT;end;if slot=="OffH"then return OHT;end;if slot==OHT then return OHT;end;if slot==RT then return RT;end;if slot==RT then return RT;end;if slot==RT then return RT;end;if slot==RT then return RT;end;end;function Attack_Actions() if UnitHealth("target")==0 or UnitIsFriend("target","player") then TargetNearestEnemy();end;local mana=UnitMana('player') local CC=GotBuff('Spell_Shadow_ManaBurn') if GotBuff('Stealth') and mana>59 and action("Cheap Shot") then return end;if not GotBuff('Stealth') then local C for C=1,192 do if IsAttackAction(C) and not IsCurrentAction(C) then action('Attack') C=192 return end;end;if ranged() then if HW("Bows")then action("Shoot Bow");return;end;if HW("Guns")then action("Shoot Gun");return;end;if HW("Crossbows")then action("Shoot Crossbow");return;end;if HW("Thrown")then action("Throw");return;end;end;if melee() then if mana>=40 and action("Ghostly Strike") then return end;if mana>=40 and action("Sinister Strike") then return end;if mana>=10 and action("Riposte") then return end;if mana>=10 and action("Surprise Attack") then return end;end;end;end;Attack_Actions() 
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
local function HW(slot)
	local _,_,_,_,_,RT;
	local _,_,_,_,_,MHT;
	local _,_,_,_,_,OHT;
	if GetInventoryItemLink("player", 18)then local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,RT=GetItemInfo(link);else RT=nil;end;
	if GetInventoryItemLink("player", 16)then local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,MHT=GetItemInfo(link);else MHT=nil;end;
	if GetInventoryItemLink("player", 17)then local _,_,link=string.find(GetInventoryItemLink("player", 17),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,OHT=GetItemInfo(link);else OHT=nil;end;
	if slot=="MainH"and not GDebuff("Disarm","player")then return MHT;end;
	if slot=="OffH"then return OHT;end;
	if slot==OHT then return OHT;end;
	if slot==RT then return RT;end;
	if slot==RT then return RT;end;
	if slot==RT then return RT;end;
	if slot==RT then return RT;end;
end;
function Attack_Actions() 
	if UnitHealth("target")==0 or UnitIsFriend("target","player") then TargetNearestEnemy();end;
	local mana=UnitMana('player') 
	local CC=GotBuff('Spell_Shadow_ManaBurn') 
	if GotBuff('Stealth') and mana>59 and action("Cheap Shot") then return end;
	if not GotBuff('Stealth') then 
		local C for C=1,192 do if IsAttackAction(C) and not IsCurrentAction(C) then action('Attack') C=192 return end;end;
		if ranged() then 
			if HW("Bows")then action("Shoot Bow");return;end;
			if HW("Guns")then action("Shoot Gun");return;end;
			if HW("Crossbows")then action("Shoot Crossbow");return;end;
			if HW("Thrown")then action("Throw");return;end;
		end;
		if melee() then 
			if mana>=40 and action("Ghostly Strike") then return end;
			if mana>=40 and action("Sinister Strike") then return end;
			if mana>=10 and action("Riposte") then return end;
			if mana>=10 and action("Surprise Attack") then return end;
		end;
	end;
end;
Attack_Actions() 