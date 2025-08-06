-=Paladin multi-attack=- v3.4 - Использует различные умения паладина (Holy Strike, Seal, Judgement, Exorcism, Hammer of Wrath, Holy Shock, Shield\Protection, Consecration+ShiftKey,) в зависимости от ситуации и выбранной ауры.

--holy
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function action(name,self) if not GotBuff("Whirlwind") then local ix;for ix=1,200 do if GetSpellName(ix,"spell")==name then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName(name,self) return 1 end;end;end;end;end;local function Aura()local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;return name;end;function Attack_Actions() local mana = UnitMana("player")/UnitManaMax("player") local pHealth = UnitHealth("player")/UnitHealthMax("player") local tHealth = UnitHealth("target")/UnitHealthMax("target") local tType = UnitCreatureType("target") if pHealth<0.1 and action("Lay on Hands",1) then return end;if pHealth<0.2 then if action("Divine Shield",1) then return else if action("Divine Protection",1) then return else if action("Blessing of Protection",1) then return end;end;end;end;if mana>0.2 and pHealth<0.4 and action("Holy Shock",1) then return end;if not GotBuff("FistOfJustice") and not GotBuff("SealOfWisdom") and not GotBuff("SealOfSalvation") and not GotBuff("PrayerOfHealing02") and not GotBuff("LightningShield") and not GotBuff("MageArmor") and not GotBuff("GreaterBlessingofKings") and not GotBuff("GreaterBlessingofWisdom") and not GotBuff("GreaterBlessingofSalvation") and not GotBuff("GreaterBlessingofLight") and not GotBuff("GreaterBlessingofSanctuary") and not GotBuff("GreaterBlessingofKings") then if GotBuff("MindVision") and action("Blessing of Might") then return; else if (GotBuff("DevotionAura") or GotBuff("SealOfKings") or GotBuff("WizardMark") or GotBuff("SealOfFire")) and action("Blessing of Wisdom") then return; else if (GotBuff("MindSooth") or GotBuff("MindVision")) and action("Blessing of Salvation") then return; else action("Blessing of Wisdom");end;end;end;end;if IsShiftKeyDown() then action("Consecration") return end;if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 end;end;if ranged() and tHealth<0.2 and mana>0.2 and action("Hammer of Wrath") then return end;if mana>0.1 and not GotBuff("HolySmite") and not GotBuff("HealingAura") and not GotBuff("RighteousnessAura") and not GotBuff("SealOfWrath") and not GotBuff("InnerRage") and not GotBuff("ThunderBolt") then if Aura()=="Sanctity Aura" then if not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") and action("Seal of Wisdom") then return; else if action("Seal of Command") then return; else if action("Seal of Righteousness") then return; else if action("Seal of the Crusader") then return; end;end;end;end;end;if Aura()=="Retribution Aura" then if not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") and   action("Seal of Light") then return; else if  action("Seal of the Crusader") then return; else if action("Seal of Command") then return; else if action("Seal of the Righteousness") then return; end;end;end;end;end;if Aura()=="Concentration Aura" then if not GotDebuff("RighteousnessAura") and action("Seal of Wisdom") then return; else if action("Seal of Command") then return; else if action("Seal of Righteousness") then return; else if action("Seal of the Crusader") then return; end;end;end;end;end;if (Aura()=="Devotion Aura" or Aura()=="Shadow Resistance Aura" or Aura()=="Frost Resistance Aura" or Aura()=="Fire Resistance Aura") then if not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") and action("Seal of Light") then return; else if action("Seal of Command") then return; else if action("Seal of Righteousness") then return; else if action("Seal of the Crusader") then return; end;end;end;end;end;end;if (tType=="Demon" or tType=="Undead") and mana>0.2 and action("Exorcism") then return; end;if melee() and mana>0.1 then if (not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") and (GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath")) or (GotBuff("InnerRage") or GotBuff("ThunderBolt"))) and action("Judgement") then return; end;end;if melee() and mana>0.1 then local _,_,_,_,VengefulStrikes=GetTalentInfo(3,15);local CS=0;if VengefulStrikes>0 then if GotBuff("CrusaderStrike") then CS=GotBuff("CrusaderStrike");end;if Aura()=="MindVision" then CS=CS+1;end;local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,t6=GetItemInfo(link)if string.find(t6,"Two-Handed") or string.find(t6,"Polearms") then CS=CS-1;end;end;if random(0,2+CS)<=1 then if action("Crusader Strike") then return;end; else if action("Holy Strike") then return;end;end;end;end;Attack_Actions() 
-=-
/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
local function ranged() if UnitExists("target") then return not melee() end;end;
local function inCombat() return UnitAffectingCombat("player") end;
local function GotBuff(name,target) 
	local tex,cnt,ix 
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix) 
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target = "target" end;
	local tex,cnt,ix 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function action(name,self) 
	if not GotBuff("Whirlwind") then 
		local ix;
		for ix=1,200 do if GetSpellName(ix,"spell")==name then 
			if GetSpellCooldown(ix,"spell")==0 then CastSpellByName(name,self) return 1 end;
			end;
		end;
	end;
end;
local function Aura()
	local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()
	while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;
	return name;
end;
function Attack_Actions() 
	local mana = UnitMana("player")/UnitManaMax("player") 
	local pHealth = UnitHealth("player")/UnitHealthMax("player") 
	local tHealth = UnitHealth("target")/UnitHealthMax("target") 
	local tType = UnitCreatureType("target") 
	if pHealth<0.1 and action("Lay on Hands",1) then return end;
	if pHealth<0.2 then 
		if action("Divine Shield",1) then return else 
			if action("Divine Protection",1) then return else 
				if action("Blessing of Protection",1) then return end;
			end;
		end;
	end;
	if mana>0.2 and pHealth<0.4 and action("Holy Shock",1) then return end;
	if not GotBuff("FistOfJustice") and not GotBuff("SealOfWisdom") and not GotBuff("SealOfSalvation") and not GotBuff("PrayerOfHealing02") and not GotBuff("LightningShield") and not GotBuff("MageArmor") 
	and not GotBuff("GreaterBlessingofKings") and not GotBuff("GreaterBlessingofWisdom") and not GotBuff("GreaterBlessingofSalvation") and not GotBuff("GreaterBlessingofLight") and not GotBuff("GreaterBlessingofSanctuary") and not GotBuff("GreaterBlessingofKings") 
	then 
		if GotBuff("MindVision") and action("Blessing of Might") then return; else 
			if (GotBuff("DevotionAura") or GotBuff("SealOfKings") or GotBuff("WizardMark") or GotBuff("SealOfFire")) and action("Blessing of Wisdom") then return; else 
				if (GotBuff("MindSooth") or GotBuff("MindVision")) and action("Blessing of Salvation") then return; else 
					action("Blessing of Wisdom");end;
			end;
		end;
	end;
	if IsShiftKeyDown() then action("Consecration") return end;
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 end;end;
	if ranged() and tHealth<0.2 and mana>0.2 and action("Hammer of Wrath") then return end;
	if mana>0.1 and not GotBuff("HolySmite") and not GotBuff("HealingAura") and not GotBuff("RighteousnessAura") and not GotBuff("SealOfWrath") and not GotBuff("InnerRage") and not GotBuff("ThunderBolt") then 
		if Aura()=="Sanctity Aura" then 
			if not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") and 
			action("Seal of Wisdom") then return; else 
				if action("Seal of Command") then return; else 
					if action("Seal of Righteousness") then return; else 
						if action("Seal of the Crusader") then return; end;
					end;
				end;
			end;
		end;
		if Aura()=="Retribution Aura" then 
			if not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") and   
			action("Seal of Light") then return; else 
				if  action("Seal of the Crusader") then return; else 
					if action("Seal of Command") then return; else 
						if action("Seal of the Righteousness") then return; end;
					end;
				end;
			end;
		end;
		if Aura()=="Concentration Aura" then 
			if not GotDebuff("RighteousnessAura") and 
			action("Seal of Wisdom") then return; else 
				if action("Seal of Command") then return; else 
					if action("Seal of Righteousness") then return; else 
						if action("Seal of the Crusader") then return; end;
					end;
				end;
			end;
		end;
		if (Aura()=="Devotion Aura" or Aura()=="Shadow Resistance Aura" or Aura()=="Frost Resistance Aura" or Aura()=="Fire Resistance Aura") then 
			if not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") and 
			action("Seal of Light") then return; else 
				if action("Seal of Command") then return; else 
					if action("Seal of Righteousness") then return; else 
						if action("Seal of the Crusader") then return; end;
					end;
				end;
			end;
		end;
	end;
	if (tType=="Demon" or tType=="Undead") and mana>0.2 and action("Exorcism") then return; end;
	if melee() and mana>0.1 then 
		if (not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") 
			and (GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath")) 
			or (GotBuff("InnerRage") or GotBuff("ThunderBolt"))) 
			and action("Judgement") then return; end;
	end;
	if melee() and mana>0.1 then 
		local _,_,_,_,VengefulStrikes=GetTalentInfo(3,15);
		local CS=0;
		if VengefulStrikes>0 then 
			if GotBuff("CrusaderStrike") then CS=GotBuff("CrusaderStrike");end;
			if Aura()=="MindVision" then CS=CS+1;end;
			local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,t6=GetItemInfo(link)
			if string.find(t6,"Two-Handed") or string.find(t6,"Polearms") then CS=CS-1;end;
		end;
		if random(0,2+CS)<=1 then if action("Crusader Strike") then return;end; else if action("Holy Strike") then return;end;end;
	end;
end;
Attack_Actions() 


-=-

--might
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function action(name,self) if not GotBuff("Whirlwind") then local ix;for ix=1,200 do if GetSpellName(ix,"spell")==name then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName(name,self) return 1 end;end;end;end;end;local function Aura()local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;return name;end;function Attack_Actions() local mana = UnitMana("player")/UnitManaMax("player") local pHealth = UnitHealth("player")/UnitHealthMax("player") local tHealth = UnitHealth("target")/UnitHealthMax("target") local tType = UnitCreatureType("target") if pHealth<0.1 and action("Lay on Hands",1) then return end;if pHealth<0.2 then if action("Divine Shield",1) then return else if action("Divine Protection",1) then return else if action("Blessing of Protection",1) then return end;end;end;end;if mana>0.2 and pHealth<0.4 and action("Holy Shock",1) then return end;if not GotBuff("FistOfJustice") and not GotBuff("SealOfWisdom") and not GotBuff("SealOfSalvation") and not GotBuff("PrayerOfHealing02") and not GotBuff("LightningShield") and not GotBuff("MageArmor") and not GotBuff("GreaterBlessingofKings") and not GotBuff("GreaterBlessingofWisdom") and not GotBuff("GreaterBlessingofSalvation") and not GotBuff("GreaterBlessingofLight") and not GotBuff("GreaterBlessingofSanctuary") and not GotBuff("GreaterBlessingofKings") then if GotBuff("MindVision") and action("Blessing of Might") then return; else if (GotBuff("DevotionAura") or GotBuff("SealOfKings") or GotBuff("WizardMark") or GotBuff("SealOfFire")) and action("Blessing of Wisdom") then return; else if (GotBuff("MindSooth") or GotBuff("MindVision")) and action("Blessing of Salvation") then return; else action("Blessing of Wisdom");end;end;end;end;if IsShiftKeyDown() then action("Consecration") return end;if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 end;end;if ranged() and tHealth<0.2 and mana>0.2 and action("Hammer of Wrath") then return end;if mana>0.1 and not GotBuff("HolySmite") and not GotBuff("HealingAura") and not GotBuff("RighteousnessAura") and not GotBuff("SealOfWrath") and not GotBuff("InnerRage") and not GotBuff("ThunderBolt") then if Aura()=="Sanctity Aura" then if not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") and action("Seal of Wisdom") then return; else if action("Seal of the Crusader") then return; else if action("Seal of Command") then return; else if action("Seal of Righteousness") then return; end;end;end;end;end;if Aura()=="Retribution Aura" then if not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") and   action("Seal of Light") then return; else if  action("Seal of the Crusader") then return; else if action("Seal of Command") then return; else if action("Seal of the Righteousness") then return; end;end;end;end;end;if Aura()=="Concentration Aura" then if not GotDebuff("RighteousnessAura") and action("Seal of Wisdom") then return; else if action("Seal of Command") then return; else if action("Seal of Righteousness") then return; else if action("Seal of the Crusader") then return; end;end;end;end;end;if (Aura()=="Devotion Aura" or Aura()=="Shadow Resistance Aura" or Aura()=="Frost Resistance Aura" or Aura()=="Fire Resistance Aura") then if not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") and action("Seal of Light") then return; else if action("Seal of the Crusader") then return; else if action("Seal of Command") then return; else if action("Seal of Righteousness") then return; end;end;end;end;end;end;if (tType=="Demon" or tType=="Undead") and mana>0.2 and action("Exorcism") then return; end;if melee() and mana>0.1 then if (not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") and (GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath")) or (GotBuff("InnerRage") or GotBuff("ThunderBolt"))) and action("Judgement") then return; end;end;if melee() and mana>0.1 then local _,_,_,_,VengefulStrikes=GetTalentInfo(3,15);local CS=0;if VengefulStrikes>0 then if GotBuff("CrusaderStrike") then CS=GotBuff("CrusaderStrike");end;if Aura()=="MindVision" then CS=CS+1;end;local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,t6=GetItemInfo(link)if string.find(t6,"Two-Handed") or string.find(t6,"Polearms") then CS=CS-1;end;end;if random(0,2+CS)<=1 then if action("Crusader Strike") then return;end; else if action("Holy Strike") then return;end;end;end;end;Attack_Actions() 
-=-
/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
local function ranged() if UnitExists("target") then return not melee() end;end;
local function inCombat() return UnitAffectingCombat("player") end;
local function GotBuff(name,target) 
	local tex,cnt,ix 
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix) 
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target = "target" end;
	local tex,cnt,ix 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function action(name,self) 
	if not GotBuff("Whirlwind") then 
		local ix;
		for ix=1,200 do if GetSpellName(ix,"spell")==name then 
			if GetSpellCooldown(ix,"spell")==0 then CastSpellByName(name,self) return 1 end;
			end;
		end;
	end;
end;
local function Aura()
	local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()
	while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;
	return name;
end;
function Attack_Actions() 
	local mana = UnitMana("player")/UnitManaMax("player") 
	local pHealth = UnitHealth("player")/UnitHealthMax("player") 
	local tHealth = UnitHealth("target")/UnitHealthMax("target") 
	local tType = UnitCreatureType("target") 
	if pHealth<0.1 and action("Lay on Hands",1) then return end;
	if pHealth<0.2 then 
		if action("Divine Shield",1) then return else 
			if action("Divine Protection",1) then return else 
				if action("Blessing of Protection",1) then return end;
			end;
		end;
	end;
	if mana>0.2 and pHealth<0.4 and action("Holy Shock",1) then return end;
	if not GotBuff("FistOfJustice") and not GotBuff("SealOfWisdom") and not GotBuff("SealOfSalvation") and not GotBuff("PrayerOfHealing02") and not GotBuff("LightningShield") and not GotBuff("MageArmor") 
	and not GotBuff("GreaterBlessingofKings") and not GotBuff("GreaterBlessingofWisdom") and not GotBuff("GreaterBlessingofSalvation") and not GotBuff("GreaterBlessingofLight") and not GotBuff("GreaterBlessingofSanctuary") and not GotBuff("GreaterBlessingofKings") 
	then 
		if GotBuff("MindVision") and action("Blessing of Might") then return; else 
			if (GotBuff("DevotionAura") or GotBuff("SealOfKings") or GotBuff("WizardMark") or GotBuff("SealOfFire")) and action("Blessing of Wisdom") then return; else 
				if (GotBuff("MindSooth") or GotBuff("MindVision")) and action("Blessing of Salvation") then return; else 
					action("Blessing of Wisdom");end;
			end;
		end;
	end;
	if IsShiftKeyDown() then action("Consecration") return end;
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 end;end;
	if ranged() and tHealth<0.2 and mana>0.2 and action("Hammer of Wrath") then return end;
	if mana>0.1 and not GotBuff("HolySmite") and not GotBuff("HealingAura") and not GotBuff("RighteousnessAura") and not GotBuff("SealOfWrath") and not GotBuff("InnerRage") and not GotBuff("ThunderBolt") then 
		if Aura()=="Sanctity Aura" then 
			if not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") and 
			action("Seal of Wisdom") then return; else 
				if action("Seal of the Crusader") then return; else 
					if action("Seal of Command") then return; else 
						if action("Seal of Righteousness") then return; end;
					end;
				end;
			end;
		end;
		if Aura()=="Retribution Aura" then 
			if not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") and   
			action("Seal of Light") then return; else 
				if  action("Seal of the Crusader") then return; else 
					if action("Seal of Command") then return; else 
						if action("Seal of the Righteousness") then return; end;
					end;
				end;
			end;
		end;
		if Aura()=="Concentration Aura" then 
			if not GotDebuff("RighteousnessAura") and 
			action("Seal of Wisdom") then return; else 
				if action("Seal of Command") then return; else 
					if action("Seal of Righteousness") then return; else 
						if action("Seal of the Crusader") then return; end;
					end;
				end;
			end;
		end;
		if (Aura()=="Devotion Aura" or Aura()=="Shadow Resistance Aura" or Aura()=="Frost Resistance Aura" or Aura()=="Fire Resistance Aura") then 
			if not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") and 
			action("Seal of Light") then return; else 
				if action("Seal of the Crusader") then return; else 
					if action("Seal of Command") then return; else 
						if action("Seal of Righteousness") then return; end;
					end;
				end;
			end;
		end;
	end;
	if (tType=="Demon" or tType=="Undead") and mana>0.2 and action("Exorcism") then return; end;
	if melee() and mana>0.1 then 
		if (not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") 
			and (GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath")) 
			or (GotBuff("InnerRage") or GotBuff("ThunderBolt"))) 
			and action("Judgement") then return; end;
	end;
	if melee() and mana>0.1 then 
		local _,_,_,_,VengefulStrikes=GetTalentInfo(3,15);
		local CS=0;
		if VengefulStrikes>0 then 
			if GotBuff("CrusaderStrike") then CS=GotBuff("CrusaderStrike");end;
			if Aura()=="MindVision" then CS=CS+1;end;
			local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,t6=GetItemInfo(link)
			if string.find(t6,"Two-Handed") or string.find(t6,"Polearms") then CS=CS-1;end;
		end;
		if random(0,2+CS)<=1 then if action("Crusader Strike") then return;end; else if action("Holy Strike") then return;end;end;
	end;
end;
Attack_Actions() 


Без привязки к ауре
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function action(name,self) if not GotBuff("Whirlwind") then local ix;for ix=1,200 do if GetSpellName(ix,"spell")==name then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName(name,self) return 1 end;end;end;end;end;local function Aura()local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;return name;end;function Attack_Actions() local mana = UnitMana("player")/UnitManaMax("player") local pHealth = UnitHealth("player")/UnitHealthMax("player") local tHealth = UnitHealth("target")/UnitHealthMax("target") local tType = UnitCreatureType("target") if pHealth<0.1 and action("Lay on Hands",1) then return end;if pHealth<0.2 then if action("Divine Shield",1) then return else if action("Divine Protection",1) then return else if action("Blessing of Protection",1) then return end;end;end;end;if mana>0.2 and pHealth<0.4 and action("Holy Shock",1) then return end;if not GotBuff("FistOfJustice") and not GotBuff("SealOfWisdom") and not GotBuff("SealOfSalvation") and not GotBuff("PrayerOfHealing02") and not GotBuff("LightningShield") and not GotBuff("MageArmor") and not GotBuff("GreaterBlessingofKings") and not GotBuff("GreaterBlessingofWisdom") and not GotBuff("GreaterBlessingofSalvation") and not GotBuff("GreaterBlessingofLight") and not GotBuff("GreaterBlessingofSanctuary") and not GotBuff("GreaterBlessingofKings") then if GotBuff("MindVision") and action("Blessing of Might") then return; else if (GotBuff("DevotionAura") or GotBuff("SealOfKings") or GotBuff("WizardMark") or GotBuff("SealOfFire")) and action("Blessing of Wisdom") then return; else if (GotBuff("MindSooth") or GotBuff("MindVision")) and action("Blessing of Salvation") then return; else action("Blessing of Wisdom");end;end;end;end;if IsShiftKeyDown() then action("Consecration") return end;if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 end;end;if ranged() and tHealth<0.2 and mana>0.2 and action("Hammer of Wrath") then return end;if mana>0.1 and not GotBuff("HolySmite") and not GotBuff("HealingAura") and not GotBuff("RighteousnessAura") and not GotBuff("SealOfWrath") and not GotBuff("InnerRage") and not GotBuff("ThunderBolt") then if mana<0.25 and not GotDebuff("RighteousnessAura") and action("Seal of Wisdom") then return; else if action("Seal of Command") then return; else if action("Seal of Righteousness") then return; else if action("Seal of the Crusader") then return; end;end;end;end;end;if (tType=="Demon" or tType=="Undead") and mana>0.2 and action("Exorcism") then return; end;if melee() and mana>0.1 then if (not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") and (GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath")) or (GotBuff("InnerRage") or GotBuff("ThunderBolt"))) and action("Judgement") then return; end;end;if melee() and mana>0.1 then local _,_,_,_,VengefulStrikes=GetTalentInfo(3,15);local CS=0;if VengefulStrikes>0 then if GotBuff("CrusaderStrike") then CS=GotBuff("CrusaderStrike");end;if Aura()=="MindVision" then CS=CS+1;end;local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,t6=GetItemInfo(link)if string.find(t6,"Two-Handed") or string.find(t6,"Polearms") then CS=CS-1;end;end;if random(0,2+CS)<=1 then if action("Crusader Strike") then return;end; else if action("Holy Strike") then return;end;end;end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
local function ranged() if UnitExists("target") then return not melee() end;end;
local function inCombat() return UnitAffectingCombat("player") end;
local function GotBuff(name,target) 
	local tex,cnt,ix 
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix) 
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target = "target" end;
	local tex,cnt,ix 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function action(name,self) 
	if not GotBuff("Whirlwind") then 
		local ix;
		for ix=1,200 do if GetSpellName(ix,"spell")==name then 
			if GetSpellCooldown(ix,"spell")==0 then CastSpellByName(name,self) return 1 end;
			end;
		end;
	end;
end;
local function Aura()
	local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()
	while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;
	return name;
end;
function Attack_Actions() 
	local mana = UnitMana("player")/UnitManaMax("player") 
	local pHealth = UnitHealth("player")/UnitHealthMax("player") 
	local tHealth = UnitHealth("target")/UnitHealthMax("target") 
	local tType = UnitCreatureType("target") 
	if pHealth<0.1 and action("Lay on Hands",1) then return end;
	if pHealth<0.2 then 
		if action("Divine Shield",1) then return else 
			if action("Divine Protection",1) then return else 
				if action("Blessing of Protection",1) then return end;
			end;
		end;
	end;
	if mana>0.2 and pHealth<0.4 and action("Holy Shock",1) then return end;
	if not GotBuff("FistOfJustice") and not GotBuff("SealOfWisdom") and not GotBuff("SealOfSalvation") and not GotBuff("PrayerOfHealing02") and not GotBuff("LightningShield") and not GotBuff("MageArmor") 
	and not GotBuff("GreaterBlessingofKings") and not GotBuff("GreaterBlessingofWisdom") and not GotBuff("GreaterBlessingofSalvation") and not GotBuff("GreaterBlessingofLight") and not GotBuff("GreaterBlessingofSanctuary") and not GotBuff("GreaterBlessingofKings") 
	then 
		if GotBuff("MindVision") and action("Blessing of Might") then return; else 
			if (GotBuff("DevotionAura") or GotBuff("SealOfKings") or GotBuff("WizardMark") or GotBuff("SealOfFire")) and action("Blessing of Wisdom") then return; else 
				if (GotBuff("MindSooth") or GotBuff("MindVision")) and action("Blessing of Salvation") then return; else 
					action("Blessing of Wisdom");end;
			end;
		end;
	end;
	if IsShiftKeyDown() then action("Consecration") return end;
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 end;end;
	if ranged() and tHealth<0.2 and mana>0.2 and action("Hammer of Wrath") then return end;
	if mana>0.1 and not GotBuff("HolySmite") and not GotBuff("HealingAura") and not GotBuff("RighteousnessAura") and not GotBuff("SealOfWrath") and not GotBuff("InnerRage") and not GotBuff("ThunderBolt") then 
		if mana<0.25 and not GotDebuff("RighteousnessAura") and 
		action("Seal of Wisdom") then return; else 
			if action("Seal of Command") then return; else 
				if action("Seal of Righteousness") then return; else 
					if action("Seal of the Crusader") then return; end;
				end;
			end;
		end;
	end;
	if (tType=="Demon" or tType=="Undead") and mana>0.2 and action("Exorcism") then return; end;
	if melee() and mana>0.1 then 
		if (not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("RighteousnessAura") and not GotDebuff("SealOfWrath") 
			and (GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath")) 
			or (GotBuff("InnerRage") or GotBuff("ThunderBolt"))) 
			and action("Judgement") then return; end;
	end;
	if melee() and mana>0.1 then 
		local _,_,_,_,VengefulStrikes=GetTalentInfo(3,15);
		local CS=0;
		if VengefulStrikes>0 then 
			if GotBuff("CrusaderStrike") then CS=GotBuff("CrusaderStrike");end;
			if Aura()=="MindVision" then CS=CS+1;end;
			local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,t6=GetItemInfo(link)
			if string.find(t6,"Two-Handed") or string.find(t6,"Polearms") then CS=CS-1;end;
		end;
		if random(0,2+CS)<=1 then if action("Crusader Strike") then return;end; else if action("Holy Strike") then return;end;end;
	end;
end;
Attack_Actions() 


Для целителя
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function action(name,SW) if not GotBuff("Whirlwind") then local ix;for ix=1,200 do if GetSpellName(ix,"spell")==name then if SW==0 then return GetSpellCooldown(ix,"spell");end;if GetSpellCooldown(ix,"spell")==0 then CastSpellByName(name,self) return GetSpellCooldown(ix,"spell");end;end;end;end;end;local function Aura()local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;return name;end;function Attack_Actions() local mana = UnitMana("player")/UnitManaMax("player") local pHealth = UnitHealth("player")/UnitHealthMax("player") local tHealth = UnitHealth("target")/UnitHealthMax("target") local tType = UnitCreatureType("target") if pHealth<0.1 and action("Lay on Hands",1) then return end;if pHealth<0.2 then if action("Divine Shield",1) then return else if action("Divine Protection",1) then return else if action("Blessing of Protection",1) then return end;end;end;end;if mana>0.2 and pHealth<0.4 and action("Holy Shock",1) then return end;if not GotBuff("FistOfJustice") and not GotBuff("SealOfWisdom") and not GotBuff("SealOfSalvation") and not GotBuff("PrayerOfHealing02") and not GotBuff("LightningShield") and not GotBuff("MageArmor") and not GotBuff("GreaterBlessingofKings") and not GotBuff("GreaterBlessingofWisdom") and not GotBuff("GreaterBlessingofSalvation") and not GotBuff("GreaterBlessingofLight") and not GotBuff("GreaterBlessingofSanctuary") and not GotBuff("GreaterBlessingofKings") then if GotBuff("MindVision") and action("Blessing of Might") then return; else if (GotBuff("DevotionAura") or GotBuff("SealOfKings") or GotBuff("WizardMark") or GotBuff("SealOfFire")) and action("Blessing of Wisdom") then return; else if (GotBuff("MindSooth") or GotBuff("MindVision")) and action("Blessing of Salvation") then return; else action("Blessing of Wisdom");end;end;end;end;if IsShiftKeyDown() then action("Consecration") return end;if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 end;end;if ranged() and tHealth<0.2 and mana>0.2 and action("Hammer of Wrath") then return end;if mana>0.1 and not GotBuff("HealingAura") and not GotDebuff("HealingAura") and action("Judgement",0)==0 and action("Seal of Light") then return; else if not GotBuff("HolySmite") and not GotBuff("HealingAura") and not GotBuff("RighteousnessAura") and not GotBuff("SealOfWrath") and not GotBuff("InnerRage") and not GotBuff("ThunderBolt") then if mana<0.5 and action("Seal of Wisdom") then return; else if action("Seal of Command") then return; else if action("Seal of Righteousness") then return; end;end;end;end;end;if (tType=="Demon" or tType=="Undead") and mana>0.2 and action("Exorcism") then return; end;if melee() and mana>0.1 then if (not GotDebuff("HealingAura")and (GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath")) or (GotBuff("InnerRage") or GotBuff("ThunderBolt"))) and action("Judgement") then return; end;end;if melee() and mana>0.1 and action("Holy Strike") then return;end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
local function ranged() if UnitExists("target") then return not melee() end;end;
local function inCombat() return UnitAffectingCombat("player") end;
local function GotBuff(name,target) 
	local tex,cnt,ix 
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix) 
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target = "target" end;
	local tex,cnt,ix 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function action(name,SW) 
	if not GotBuff("Whirlwind") then 
		local ix;
		for ix=1,200 do if GetSpellName(ix,"spell")==name then 
			if SW==0 then return GetSpellCooldown(ix,"spell");end;
			if GetSpellCooldown(ix,"spell")==0 then CastSpellByName(name,self) return GetSpellCooldown(ix,"spell");end;
			end;
		end;
	end;
end;
local function Aura()
	local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()
	while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;
	return name;
end;
function Attack_Actions() 
	local mana = UnitMana("player")/UnitManaMax("player") 
	local pHealth = UnitHealth("player")/UnitHealthMax("player") 
	local tHealth = UnitHealth("target")/UnitHealthMax("target") 
	local tType = UnitCreatureType("target") 
	if pHealth<0.1 and action("Lay on Hands",1) then return end;
	if pHealth<0.2 then 
		if action("Divine Shield",1) then return else 
			if action("Divine Protection",1) then return else 
				if action("Blessing of Protection",1) then return end;
			end;
		end;
	end;
	if mana>0.2 and pHealth<0.4 and action("Holy Shock",1) then return end;
	if not GotBuff("FistOfJustice") and not GotBuff("SealOfWisdom") and not GotBuff("SealOfSalvation") and not GotBuff("PrayerOfHealing02") and not GotBuff("LightningShield") and not GotBuff("MageArmor") 
	and not GotBuff("GreaterBlessingofKings") and not GotBuff("GreaterBlessingofWisdom") and not GotBuff("GreaterBlessingofSalvation") and not GotBuff("GreaterBlessingofLight") and not GotBuff("GreaterBlessingofSanctuary") and not GotBuff("GreaterBlessingofKings") 
	then 
		if GotBuff("MindVision") and action("Blessing of Might") then return; else 
			if (GotBuff("DevotionAura") or GotBuff("SealOfKings") or GotBuff("WizardMark") or GotBuff("SealOfFire")) and action("Blessing of Wisdom") then return; else 
				if (GotBuff("MindSooth") or GotBuff("MindVision")) and action("Blessing of Salvation") then return; else 
					action("Blessing of Wisdom");end;
			end;
		end;
	end;
	if IsShiftKeyDown() then action("Consecration") return end;
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 end;end;
	if ranged() and tHealth<0.2 and mana>0.2 and action("Hammer of Wrath") then return end;
	if mana>0.1 and not GotBuff("HealingAura") and not GotDebuff("HealingAura") and action("Judgement",0)==0 and action("Seal of Light") then return; else 
		if not GotBuff("HolySmite") and not GotBuff("HealingAura") and not GotBuff("RighteousnessAura") and not GotBuff("SealOfWrath") and not GotBuff("InnerRage") and not GotBuff("ThunderBolt") then 
			if mana<0.5 and action("Seal of Wisdom") then return; else 
				if action("Seal of Command") then return; else 
					if action("Seal of Righteousness") then return; end;
				end;
			end;
		end;
	end;
	if (tType=="Demon" or tType=="Undead") and mana>0.2 and action("Exorcism") then return; end;
	if melee() and mana>0.1 then 
		if (not GotDebuff("HealingAura")
			and (GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath")) 
			or (GotBuff("InnerRage") or GotBuff("ThunderBolt"))) 
			and action("Judgement") then return; end;
	end;
	if melee() and mana>0.1 and action("Holy Strike") then return;end;
end;
Attack_Actions() 