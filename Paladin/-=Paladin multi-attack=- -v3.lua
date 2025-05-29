-=Paladin multi-attack=- v3 - Использует различные умения паладина (Holy Strike, 6 видов Seal, Judgement, Exorcism, Hammer of Wrath, Holy Shock, Shield\Protection, Consecration+ShiftKey,) в зависимости от ситуации и выбранной ауры.
/script local function melee() if UnitExists("target") then return CheckInteractDistance('target',2) end end local function ranged() if UnitExists("target") then return not melee() end end local function inCombat() return UnitAffectingCombat("player") end local function action(name,self) local ix for ix=1,200 do if GetSpellName(ix,"spell")==name then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName(name,self) return 1 end end end end local function GotBuff(name,target)     local tex,cnt for ix = 1,32 do       tex,cnt = UnitBuff("player",ix)       if not tex then return end       if strfind(tex,name) then return cnt end     end end local function GotDebuff(name,target)     if not target then target = 'target' end     local tex,cnt     for ix = 1,32 do       tex,cnt = UnitDebuff(target,ix)       if not tex then return end       if strfind(tex,name) then return cnt end     end end function Attack_Actions() local mana = UnitMana('player')/UnitManaMax('player')     local pHealth = UnitHealth('player')/UnitHealthMax('player') local tHealth = UnitHealth('target')/UnitHealthMax('target')     local tType = UnitCreatureType('target') if pHealth<0.1 and action("Lay on Hands",1) then return end     if pHealth<0.2 then if action("Divine Shield",1) then return else if action("Divine Protection",1) then return else if action("Blessing of Protection",1) then return end end end end if mana>0.2 and pHealth<0.4 and action("Holy Shock",1) then return end if mana>0.2 and UnitExists("target") and not UnitCanAttack("player","target") then action("Holy Shock") end if not GotBuff('FistOfJustice') and not GotBuff('SealOfWisdom') and not GotBuff('SealOfSalvation') and not GotBuff('PrayerOfHealing02') and not GotBuff('SealOfProtection') and not GotBuff('GreaterBlessingofKings') and not GotBuff('GreaterBlessingofWisdom') and not GotBuff('GreaterBlessingofSalvation') and not GotBuff('GreaterBlessingofLight') and action("Blessing of Might") then return end if IsShiftKeyDown() then action("Consecration") return end if UnitExists("target") and not UnitCanAttack("player","target") then ClearTarget() end for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then UseAction(C) C=96 end end     if (tType=='Demon' or tType=='Undead') and mana>0.2 and action("Exorcism") then return end     if tHealth<0.2 and mana>0.2 and action("Hammer of Wrath") then return end if mana>0.1 and not GotBuff('HolySmite') and not GotBuff('HealingAura') and not GotBuff('RighteousnessAura') and not GotBuff('SealOfWrath') and not GotBuff('InnerRage') and not GotBuff('ThunderBolt') then if (GotBuff('AuraOfLight') or GotBuff('SealOfKings') or GotBuff('WizardMark') or GotBuff('SealOfFire')) then if action("Seal of Command") then return else if action("Seal of Righteousness") then return else if action("Seal of the Crusader") then return else end end end end if GotBuff('MindVision') then if not GotDebuff('HolySmite') and action("Seal of the Crusader") then return else if action("Seal of Command") then return else if action("Seal of Righteousness") then return else if action("Seal of the Crusader") then return end end end end end if GotBuff('MindSooth') then if not GotDebuff('RighteousnessAura') and action("Seal of Wisdom") then return else if action("Seal of Light") then return else if action("Seal of Command") then return else if action("Seal of Righteousness") then return else if action("Seal of the Crusader") then return end end end end end end if GotBuff('DevotionAura') then if not GotDebuff('HealingAura') and action("Seal of Light") then return else if action("Seal of Wisdom") then return else if action("Seal of Command") then return else if action("Seal of Righteousness") then return else if action("Seal of the Crusader") then return end end end end end end end if melee() and mana>0.1 and action("Holy Strike") then return end if melee() and mana>0.1 then if GotBuff('MindVision') and ((not GotDebuff('HolySmite') and GotBuff('HolySmite')) or (GotBuff('InnerRage') or GotBuff('ThunderBolt'))) and action("Judgement") then return end if (GotBuff('AuraOfLight') or GotBuff('SealOfKings') or GotBuff('MindVision') or GotBuff('WizardMark') or GotBuff('SealOfFire')) and (not GotDebuff('HolySmite') and not GotDebuff('HealingAura') and not GotDebuff('RighteousnessAura') and not GotDebuff('SealOfWrath') and (GotBuff('HolySmite') or GotBuff('HealingAura') or GotBuff('RighteousnessAura') or GotBuff('SealOfWrath')) or (GotBuff('InnerRage') or GotBuff('ThunderBolt'))) and action("Judgement") then return end if (GotBuff('MindSooth') or GotBuff('DevotionAura')) and (not GotDebuff('HealingAura') and not GotDebuff('RighteousnessAura') and not GotDebuff('SealOfWrath') and (GotBuff('RighteousnessAura') or GotBuff('HealingAura') or GotBuff('SealOfWrath')) or (GotBuff('InnerRage') or GotBuff('ThunderBolt'))) and action("Judgement") then return end end if ranged() and mana>0.2 and action("Holy Shock") then return end end Attack_Actions() 
-=-
/script 
local function melee() if UnitExists("target") then return CheckInteractDistance('target',2) end end 
local function ranged() if UnitExists("target") then return not melee() end end 
local function inCombat() return UnitAffectingCombat("player") end 
local function action(name,self) 
	local ix 
	for ix=1,200 do if GetSpellName(ix,"spell")==name then 
		if GetSpellCooldown(ix,"spell")==0 then CastSpellByName(name,self) return 1 end 
		end 
	end 
end 
local function GotBuff(name,target) 
    local tex,cnt 
	for ix = 1,32 do 
      tex,cnt = UnitBuff("player",ix) 
      if not tex then return end 
      if strfind(tex,name) then return cnt end 
    end 
end 
local function GotDebuff(name,target) 
    if not target then target = 'target' end 
    local tex,cnt 
    for ix = 1,32 do 
      tex,cnt = UnitDebuff(target,ix) 
      if not tex then return end 
      if strfind(tex,name) then return cnt end 
    end 
end 
function Attack_Actions() 
	local mana = UnitMana('player')/UnitManaMax('player') 
    local pHealth = UnitHealth('player')/UnitHealthMax('player') 
	local tHealth = UnitHealth('target')/UnitHealthMax('target') 
    local tType = UnitCreatureType('target') 
	if pHealth<0.1 and action("Lay on Hands",1) then return end 
    if pHealth<0.2 then 
		if action("Divine Shield",1) then return else 
			if action("Divine Protection",1) then return else 
				if action("Blessing of Protection",1) then return end 
			end 
		end 
	end 
	if mana>0.2 and pHealth<0.4 and action("Holy Shock",1) then return end 
	if mana>0.2 and UnitExists("target") and not UnitCanAttack("player","target") then action("Holy Shock") end 
	if not GotBuff('FistOfJustice') and not GotBuff('SealOfWisdom') and not GotBuff('SealOfSalvation') and not GotBuff('PrayerOfHealing02') and not GotBuff('SealOfProtection') 
	and not GotBuff('GreaterBlessingofKings') and not GotBuff('GreaterBlessingofWisdom') and not GotBuff('GreaterBlessingofSalvation') and not GotBuff('GreaterBlessingofLight') 
	and action("Blessing of Might") then return end 
	if IsShiftKeyDown() then action("Consecration") return end 
	if UnitExists("target") and not UnitCanAttack("player","target") then ClearTarget() end 
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then UseAction(C) C=96 end end 
    if (tType=='Demon' or tType=='Undead') and mana>0.2 and action("Exorcism") then return end 
    if tHealth<0.2 and mana>0.2 and action("Hammer of Wrath") then return end 
	if mana>0.1 and not GotBuff('HolySmite') and not GotBuff('HealingAura') and not GotBuff('RighteousnessAura') and not GotBuff('SealOfWrath') and not GotBuff('InnerRage') and not GotBuff('ThunderBolt') then 
		if (GotBuff('AuraOfLight') or GotBuff('SealOfKings') or GotBuff('WizardMark') or GotBuff('SealOfFire')) then 
			if action("Seal of Command") then return else 
				if action("Seal of Righteousness") then return else 
					if action("Seal of the Crusader") then return else end 
				end 
			end 
		end 
		if GotBuff('MindVision') then 
			if not GotDebuff('HolySmite') and action("Seal of the Crusader") then return else 
				if action("Seal of Command") then return else 
					if action("Seal of Righteousness") then return else 
						if action("Seal of the Crusader") then return end 
					end 
				end 
			end 
		end 
		if GotBuff('MindSooth') then 
			if not GotDebuff('RighteousnessAura') and action("Seal of Wisdom") then return else 
				if action("Seal of Light") then return else 
					if action("Seal of Command") then return else 
						if action("Seal of Righteousness") then return else 
							if action("Seal of the Crusader") then return end 
						end 
					end 
				end 
			end 
		end 
		if GotBuff('DevotionAura') then 
			if not GotDebuff('HealingAura') and action("Seal of Light") then return else 
				if action("Seal of Wisdom") then return else 
					if action("Seal of Command") then return else 
						if action("Seal of Righteousness") then return else 
							if action("Seal of the Crusader") then return end 
						end 
					end 
				end 
			end 
		end 
	end 
	if melee() and mana>0.1 and action("Holy Strike") then return end 
	if melee() and mana>0.1 then 
		if GotBuff('MindVision') 
			and ((not GotDebuff('HolySmite') and GotBuff('HolySmite')) 
			or (GotBuff('InnerRage') or GotBuff('ThunderBolt'))) 
			and action("Judgement") then return end 
		if (GotBuff('AuraOfLight') or GotBuff('SealOfKings') or GotBuff('MindVision') or GotBuff('WizardMark') or GotBuff('SealOfFire')) 
			and (not GotDebuff('HolySmite') and not GotDebuff('HealingAura') and not GotDebuff('RighteousnessAura') and not GotDebuff('SealOfWrath') 
			and (GotBuff('HolySmite') or GotBuff('HealingAura') or GotBuff('RighteousnessAura') or GotBuff('SealOfWrath')) 
			or (GotBuff('InnerRage') or GotBuff('ThunderBolt'))) 
			and action("Judgement") then return end 
		if (GotBuff('MindSooth') or GotBuff('DevotionAura')) 
			and (not GotDebuff('HealingAura') and not GotDebuff('RighteousnessAura') and not GotDebuff('SealOfWrath') 
			and (GotBuff('RighteousnessAura') or GotBuff('HealingAura') or GotBuff('SealOfWrath')) 
			or (GotBuff('InnerRage') or GotBuff('ThunderBolt'))) 
			and action("Judgement") then return end 
	end 
	if ranged() and mana>0.2 and action("Holy Shock") then return end 
end 
Attack_Actions() 