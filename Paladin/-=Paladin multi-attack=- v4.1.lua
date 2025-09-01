-=Paladin multi-attack=- v4.1 - 1.18.0 - Использует различные умения паладина (Holy Strike, Seal, Judgement, Exorcism, Hammer of Wrath, Holy Shock, Shield\Protection, Consecration+ShiftKey,) в зависимости от ситуации и выбранной ауры.

--holy
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;end;end;ix=ix-1;end;end;local function Aura(ID)local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;if active then if not ID then return name;else return string.find(name,ID);end;end;end;function Attack_Actions() local mana = UnitMana("player")/UnitManaMax("player") local pHealth = UnitHealth("player")/UnitHealthMax("player") local tHealth = UnitHealth("target")/UnitHealthMax("target") local tType = UnitCreatureType("target") if pHealth<0.1 and ActSpell("Lay on Hands",1) then return end;if pHealth<0.2 and not GotBuff("Holy_RemoveCurse") then if ActSpell("Divine Shield",1) then return; end; if ActSpell("Divine Protection",1) then return; end; if ActSpell("Blessing of Protection",1) then return; end;end;if mana>0.2 and pHealth<0.4 and ActSpell("Holy Shock",1) then return; end;if not GotBuff("FistOfJustice") and not GotBuff("SealOfWisdom") and not GotBuff("SealOfSalvation") and not GotBuff("PrayerOfHealing02") and not GotBuff("LightningShield") and not GotBuff("MageArmor") and not GotBuff("GreaterBlessingofKings") and not GotBuff("GreaterBlessingofWisdom") and not GotBuff("GreaterBlessingofSalvation") and not GotBuff("GreaterBlessingofLight") and not GotBuff("GreaterBlessingofSanctuary") and not GotBuff("GreaterBlessingofKings") then if Aura("Sanctity Aura") and ActSpell("Blessing of Might") then return; end; if (Aura("Devotion Aura") or Aura("Shadow Resistance Aura") or Aura("Frost Resistance Aura") or Aura("Fire Resistance Aura")) and ActSpell("Blessing of Wisdom") then return; end; if Aura("MindSooth") and ActSpell("Blessing of Salvation") then return; end;end;if IsShiftKeyDown() then ActSpell("Consecration") return end;if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 end;end;if ranged() and tHealth<0.2 and mana>0.2 and ActSpell("Hammer of Wrath") then return end;if mana>0.05 and not GotBuff("HolySmite") and not GotBuff("HealingAura") and (mana>0.5 or not GotBuff("RighteousnessAura")) and not GotBuff("SealOfWrath") and not GotBuff("InnerRage") and not GotBuff("ThunderBolt") then if Aura("Sanctity Aura") then if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end;if not GotDebuff("HealingAura") and pHealth<0.5 and ActSpell("Seal of Light") then return; end; if ActSpell("Seal of Command") then return; end; if ActSpell("Seal of Righteousness") then return; end; end;if Aura("Retribution Aura") then if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end;if not GotDebuff("HealingAura") and pHealth<0.5 and ActSpell("Seal of Light") then return; end; if ActSpell("Seal of Command") then return; end; if ActSpell("Seal of the Righteousness") then return; end;end;if Aura("Concentration Aura") then if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end; if not GotDebuff("HealingAura") and pHealth<0.5 and ActSpell("Seal of Light") then return; end; if ActSpell("Seal of Command") then return; end; if ActSpell("Seal of Righteousness") then return; end; end;if (Aura("Devotion Aura") or Aura("Shadow Resistance Aura") or Aura("Frost Resistance Aura") or Aura("Fire Resistance Aura")) then if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end; if not GotDebuff("HealingAura") and ActSpell("Seal of Light") then return; end; if ActSpell("Seal of Command") then return; end; if ActSpell("Seal of Righteousness") then return; end; end;if ActSpell("Seal of the Crusader") then return; end; end;if (tType=="Demon" or tType=="Undead") and mana>0.2 and ActSpell("Exorcism") then return; end;if melee() and mana>0.1 then if (((( (not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("SealOfWrath") ) or mana<0.25) and not GotDebuff("RighteousnessAura") )and (GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath")) )or (GotBuff("InnerRage") or GotBuff("ThunderBolt")))and ActSpell("Judgement") then return; end;end;if melee() and Aura("Retribution Aura") and mana> 0.2 and ActSpell("Consecration") then return; end;if Aura("Sanctity Aura") and mana> 0.2 and ActSpell("Holy Shock") then return; end;if melee() and mana>0.1 then local _,_,_,_,VengefulStrikes=GetTalentInfo(3,15);local _,_,_,_,BlessedStrikes=GetTalentInfo(1,16);local CS=0;if GotBuff("CrusaderStrike") then CS=GotBuff("CrusaderStrike");end;if Aura("Sanctity Aura") then CS=CS+2;end;if BlessedStrikes==5 then CS=CS-1;end;if VengefulStrikes>0 then CS=CS-1;end;local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,t6=GetItemInfo(link)if t6=="Two-Handed Axes" or t6=="Two-Handed Maces" or t6=="Two-Handed Swords" or t6=="Polearms" then CS=CS-1;end;if random(0,3+CS)<=1 then if ActSpell("Crusader Strike") then return;end; else if ActSpell("Holy Strike") then return;end;end;end;end;Attack_Actions() 
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
				if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;
			end;
		end;
		ix=ix-1;
	end;
end;
local function Aura(ID)
	local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()
	while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;
	if active then if not ID then return name;else return string.find(name,ID);end;end;
end;
function Attack_Actions() 
	local mana = UnitMana("player")/UnitManaMax("player") 
	local pHealth = UnitHealth("player")/UnitHealthMax("player") 
	local tHealth = UnitHealth("target")/UnitHealthMax("target") 
	local tType = UnitCreatureType("target") 
	if pHealth<0.1 and ActSpell("Lay on Hands",1) then return end;
	if pHealth<0.2 and not GotBuff("Holy_RemoveCurse") then 
		if ActSpell("Divine Shield",1) then return; end; 
		if ActSpell("Divine Protection",1) then return; end; 
		if ActSpell("Blessing of Protection",1) then return; end;
	end;
	if mana>0.2 and pHealth<0.4 and ActSpell("Holy Shock",1) then return; end;
	if not GotBuff("FistOfJustice") and not GotBuff("SealOfWisdom") and not GotBuff("SealOfSalvation") and not GotBuff("PrayerOfHealing02") and not GotBuff("LightningShield") and not GotBuff("MageArmor") 
	and not GotBuff("GreaterBlessingofKings") and not GotBuff("GreaterBlessingofWisdom") and not GotBuff("GreaterBlessingofSalvation") and not GotBuff("GreaterBlessingofLight") and not GotBuff("GreaterBlessingofSanctuary") and not GotBuff("GreaterBlessingofKings") 
	then 
		if Aura("Sanctity Aura") and ActSpell("Blessing of Might") then return; end; 
		if (Aura("Devotion Aura") or Aura("Shadow Resistance Aura") or Aura("Frost Resistance Aura") or Aura("Fire Resistance Aura")) and ActSpell("Blessing of Wisdom") then return; end; 
		if Aura("MindSooth") and ActSpell("Blessing of Salvation") then return; end;
	end;
	if IsShiftKeyDown() then ActSpell("Consecration") return end;
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 end;end;
	if ranged() and tHealth<0.2 and mana>0.2 and ActSpell("Hammer of Wrath") then return end;
	if mana>0.05 and not GotBuff("HolySmite") and not GotBuff("HealingAura") and (mana>0.5 or not GotBuff("RighteousnessAura")) and not GotBuff("SealOfWrath") and not GotBuff("InnerRage") and not GotBuff("ThunderBolt") then 
		if Aura("Sanctity Aura") then 
			if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end;
			if not GotDebuff("HealingAura") and pHealth<0.5 and ActSpell("Seal of Light") then return; end; 
			if ActSpell("Seal of Command") then return; end; 
			if ActSpell("Seal of Righteousness") then return; end; 
		end;
		if Aura("Retribution Aura") then 
			if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end;
			if not GotDebuff("HealingAura") and pHealth<0.5 and ActSpell("Seal of Light") then return; end; 
			if ActSpell("Seal of Command") then return; end; 
			if ActSpell("Seal of the Righteousness") then return; end;
		end;
		if Aura("Concentration Aura") then 
			if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end; 
			if not GotDebuff("HealingAura") and pHealth<0.5 and ActSpell("Seal of Light") then return; end; 
			if ActSpell("Seal of Command") then return; end; 
			if ActSpell("Seal of Righteousness") then return; end; 
		end;
		if (Aura("Devotion Aura") or Aura("Shadow Resistance Aura") or Aura("Frost Resistance Aura") or Aura("Fire Resistance Aura")) then 
			if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end; 
			if not GotDebuff("HealingAura") and ActSpell("Seal of Light") then return; end; 
			if ActSpell("Seal of Command") then return; end; 
			if ActSpell("Seal of Righteousness") then return; end; 
		end;
		if ActSpell("Seal of the Crusader") then return; end; 
	end;
	if (tType=="Demon" or tType=="Undead") and mana>0.2 and ActSpell("Exorcism") then return; end;
	if melee() and mana>0.1 then 
		if (
				(
					(
						( (not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("SealOfWrath") ) or mana<0.25) 
						and not GotDebuff("RighteousnessAura") 
					)
					and (GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath")) 
				)
				or (GotBuff("InnerRage") or GotBuff("ThunderBolt"))
			)
			and ActSpell("Judgement") then return; end;
	end;
	if melee() and Aura("Retribution Aura") and mana> 0.2 and ActSpell("Consecration") then return; end;
	if Aura("Sanctity Aura") and mana> 0.2 and ActSpell("Holy Shock") then return; end;
	if melee() and mana>0.1 then 
		local _,_,_,_,VengefulStrikes=GetTalentInfo(3,15);
		local _,_,_,_,BlessedStrikes=GetTalentInfo(1,16);
		local CS=0;
		if GotBuff("CrusaderStrike") then CS=GotBuff("CrusaderStrike");end;
		if Aura("Sanctity Aura") then CS=CS+2;end;
		if BlessedStrikes==5 then CS=CS-1;end;
		if VengefulStrikes>0 then CS=CS-1;end;
		local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,t6=GetItemInfo(link)
		if t6=="Two-Handed Axes" or t6=="Two-Handed Maces" or t6=="Two-Handed Swords" or t6=="Polearms" then CS=CS-1;end;
		if random(0,3+CS)<=1 then if ActSpell("Crusader Strike") then return;end; else if ActSpell("Holy Strike") then return;end;end;
	end;
end;
Attack_Actions() 


-=-

--might
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;end;end;ix=ix-1;end;end;local function Aura(ID)local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;if active then if not ID then return name;else return string.find(name,ID);end;end;end;function Attack_Actions() local mana = UnitMana("player")/UnitManaMax("player") local pHealth = UnitHealth("player")/UnitHealthMax("player") local tHealth = UnitHealth("target")/UnitHealthMax("target") local tType = UnitCreatureType("target") if pHealth<0.1 and ActSpell("Lay on Hands",1) then return end;if pHealth<0.2 and not GotBuff("Holy_RemoveCurse") then if ActSpell("Divine Shield",1) then return; end; if ActSpell("Divine Protection",1) then return; end; if ActSpell("Blessing of Protection",1) then return; end;end;if mana>0.2 and pHealth<0.4 and ActSpell("Holy Shock",1) then return; end;if not GotBuff("FistOfJustice") and not GotBuff("SealOfWisdom") and not GotBuff("SealOfSalvation") and not GotBuff("PrayerOfHealing02") and not GotBuff("LightningShield") and not GotBuff("MageArmor") and not GotBuff("GreaterBlessingofKings") and not GotBuff("GreaterBlessingofWisdom") and not GotBuff("GreaterBlessingofSalvation") and not GotBuff("GreaterBlessingofLight") and not GotBuff("GreaterBlessingofSanctuary") and not GotBuff("GreaterBlessingofKings") then if Aura("Sanctity Aura") and ActSpell("Blessing of Might") then return; end; if (Aura("Devotion Aura") or Aura("Shadow Resistance Aura") or Aura("Frost Resistance Aura") or Aura("Fire Resistance Aura")) and ActSpell("Blessing of Wisdom") then return; end; if Aura("MindSooth") and ActSpell("Blessing of Salvation") then return; end;end;if IsShiftKeyDown() then ActSpell("Consecration") return end;if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 end;end;if ranged() and tHealth<0.2 and mana>0.2 and ActSpell("Hammer of Wrath") then return end;if mana>0.05 and not GotBuff("HolySmite") and not GotBuff("HealingAura") and (mana>0.5 or not GotBuff("RighteousnessAura")) and not GotBuff("SealOfWrath") and not GotBuff("InnerRage") and not GotBuff("ThunderBolt") then if Aura("Sanctity Aura") then if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end;if not GotDebuff("HealingAura") and pHealth<0.5 and ActSpell("Seal of Light") then return; end; if ActSpell("Seal of the Crusader") then return; end; end;if Aura("Retribution Aura") then if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end;if not GotDebuff("HealingAura") and pHealth<0.5 and ActSpell("Seal of Light") then return; end; if ActSpell("Seal of the Crusader") then return; end; end;if Aura("Concentration Aura") then if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end; if not GotDebuff("HealingAura") and pHealth<0.5 and ActSpell("Seal of Light") then return; end; if ActSpell("Seal of the Crusader") then return; end; end;if (Aura("Devotion Aura") or Aura("Shadow Resistance Aura") or Aura("Frost Resistance Aura") or Aura("Fire Resistance Aura")) then if not GotDebuff("RighteousnessAura") and ActSpell("Seal of Wisdom") then return; end; if not GotDebuff("HealingAura") and pHealth<0.5 and ActSpell("Seal of Light") then return; end; if ActSpell("Seal of the Crusader") then return; end; end;if ActSpell("Seal of the Crusader") then return; end; end;if (tType=="Demon" or tType=="Undead") and mana>0.2 and ActSpell("Exorcism") then return; end;if melee() and mana>0.1 then if (((( (not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("SealOfWrath") ) or mana<0.25) and not GotDebuff("RighteousnessAura") )and (GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath")) )or (GotBuff("InnerRage") or GotBuff("ThunderBolt")))and ActSpell("Judgement") then return; end;end;if melee() and Aura("Retribution Aura") and mana> 0.2 and ActSpell("Consecration") then return; end;if Aura("Sanctity Aura") and mana> 0.2 and ActSpell("Holy Shock") then return; end;if melee() and mana>0.1 then local _,_,_,_,VengefulStrikes=GetTalentInfo(3,15);local _,_,_,_,BlessedStrikes=GetTalentInfo(1,16);local CS=0;if GotBuff("CrusaderStrike") then CS=GotBuff("CrusaderStrike");end;if Aura("MindVision") then CS=CS+2;end;if BlessedStrikes==5 then CS=CS-1;end;if VengefulStrikes>0 then CS=CS-1;end;local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,t6=GetItemInfo(link)if t6=="Two-Handed Axes" or t6=="Two-Handed Maces" or t6=="Two-Handed Swords" or t6=="Polearms" then CS=CS-1;end;if random(0,3+CS)<=1 then if ActSpell("Crusader Strike") then return;end; else if ActSpell("Holy Strike") then return;end;end;end;end;Attack_Actions()
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
				if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;
			end;
		end;
		ix=ix-1;
	end;
end;
local function Aura(ID)
	local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()
	while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;
	if active then if not ID then return name;else return string.find(name,ID);end;end;
end;
function Attack_Actions() 
	local mana = UnitMana("player")/UnitManaMax("player") 
	local pHealth = UnitHealth("player")/UnitHealthMax("player") 
	local tHealth = UnitHealth("target")/UnitHealthMax("target") 
	local tType = UnitCreatureType("target") 
	if pHealth<0.1 and ActSpell("Lay on Hands",1) then return end;
	if pHealth<0.2 and not GotBuff("Holy_RemoveCurse") then 
		if ActSpell("Divine Shield",1) then return; end; 
		if ActSpell("Divine Protection",1) then return; end; 
		if ActSpell("Blessing of Protection",1) then return; end;
	end;
	if mana>0.2 and pHealth<0.4 and ActSpell("Holy Shock",1) then return; end;
	if not GotBuff("FistOfJustice") and not GotBuff("SealOfWisdom") and not GotBuff("SealOfSalvation") and not GotBuff("PrayerOfHealing02") and not GotBuff("LightningShield") and not GotBuff("MageArmor") 
	and not GotBuff("GreaterBlessingofKings") and not GotBuff("GreaterBlessingofWisdom") and not GotBuff("GreaterBlessingofSalvation") and not GotBuff("GreaterBlessingofLight") and not GotBuff("GreaterBlessingofSanctuary") and not GotBuff("GreaterBlessingofKings") 
	then 
		if Aura("Sanctity Aura") and ActSpell("Blessing of Might") then return; end; 
		if (Aura("Devotion Aura") or Aura("Shadow Resistance Aura") or Aura("Frost Resistance Aura") or Aura("Fire Resistance Aura")) and ActSpell("Blessing of Wisdom") then return; end; 
		if Aura("MindSooth") and ActSpell("Blessing of Salvation") then return; end;
	end;
	if IsShiftKeyDown() then ActSpell("Consecration") return end;
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 end;end;
	if ranged() and tHealth<0.2 and mana>0.2 and ActSpell("Hammer of Wrath") then return end;
	if mana>0.05 and not GotBuff("HolySmite") and not GotBuff("HealingAura") and (mana>0.5 or not GotBuff("RighteousnessAura")) and not GotBuff("SealOfWrath") and not GotBuff("InnerRage") and not GotBuff("ThunderBolt") then 
		if Aura("Sanctity Aura") then 
			if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end;
			if not GotDebuff("HealingAura") and pHealth<0.5 and ActSpell("Seal of Light") then return; end; 
			if ActSpell("Seal of the Crusader") then return; end; 
		end;
		if Aura("Retribution Aura") then 
			if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end;
			if not GotDebuff("HealingAura") and pHealth<0.5 and ActSpell("Seal of Light") then return; end; 
			if ActSpell("Seal of the Crusader") then return; end; 
		end;
		if Aura("Concentration Aura") then 
			if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end; 
			if not GotDebuff("HealingAura") and pHealth<0.5 and ActSpell("Seal of Light") then return; end; 
			if ActSpell("Seal of the Crusader") then return; end; 
		end;
		if (Aura("Devotion Aura") or Aura("Shadow Resistance Aura") or Aura("Frost Resistance Aura") or Aura("Fire Resistance Aura")) then 
			if not GotDebuff("RighteousnessAura") and ActSpell("Seal of Wisdom") then return; end; 
			if not GotDebuff("HealingAura") and pHealth<0.5 and ActSpell("Seal of Light") then return; end; 
			if ActSpell("Seal of the Crusader") then return; end; 
		end;
		if ActSpell("Seal of the Crusader") then return; end; 
	end;
	if (tType=="Demon" or tType=="Undead") and mana>0.2 and ActSpell("Exorcism") then return; end;
	if melee() and mana>0.1 then 
		if (
				(
					(
						( (not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("SealOfWrath") ) or mana<0.25) 
						and not GotDebuff("RighteousnessAura") 
					)
					and (GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath")) 
				)
				or (GotBuff("InnerRage") or GotBuff("ThunderBolt"))
			)
			and ActSpell("Judgement") then return; end;
	end;
	if melee() and Aura("Retribution Aura") and mana> 0.2 and ActSpell("Consecration") then return; end;
	if Aura("Sanctity Aura") and mana> 0.2 and ActSpell("Holy Shock") then return; end;
	if melee() and mana>0.1 then 
		local _,_,_,_,VengefulStrikes=GetTalentInfo(3,15);
		local _,_,_,_,BlessedStrikes=GetTalentInfo(1,16);
		local CS=0;
		if GotBuff("CrusaderStrike") then CS=GotBuff("CrusaderStrike");end;
		if Aura("MindVision") then CS=CS+2;end;
		if BlessedStrikes==5 then CS=CS-1;end;
		if VengefulStrikes>0 then CS=CS-1;end;
		local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,t6=GetItemInfo(link)
		if t6=="Two-Handed Axes" or t6=="Two-Handed Maces" or t6=="Two-Handed Swords" or t6=="Polearms" then CS=CS-1;end;
		if random(0,3+CS)<=1 then if ActSpell("Crusader Strike") then return;end; else if ActSpell("Holy Strike") then return;end;end;
	end;
end;
Attack_Actions()


Без привязки к ауре
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;end;end;ix=ix-1;end;end;function Attack_Actions() local mana = UnitMana("player")/UnitManaMax("player") local pHealth = UnitHealth("player")/UnitHealthMax("player") local tHealth = UnitHealth("target")/UnitHealthMax("target") local tType = UnitCreatureType("target") if pHealth<0.1 and ActSpell("Lay on Hands",1) then return end;if pHealth<0.2 and not GotBuff("Holy_RemoveCurse") then if ActSpell("Divine Shield",1) then return; end; if ActSpell("Divine Protection",1) then return; end; if ActSpell("Blessing of Protection",1) then return; end;end;if mana>0.2 and pHealth<0.4 and ActSpell("Holy Shock",1) then return; end;if not GotBuff("FistOfJustice") and not GotBuff("SealOfWisdom") and not GotBuff("SealOfSalvation") and not GotBuff("PrayerOfHealing02") and not GotBuff("LightningShield") and not GotBuff("MageArmor") and not GotBuff("GreaterBlessingofKings") and not GotBuff("GreaterBlessingofWisdom") and not GotBuff("GreaterBlessingofSalvation") and not GotBuff("GreaterBlessingofLight") and not GotBuff("GreaterBlessingofSanctuary") and not GotBuff("GreaterBlessingofKings") and ActSpell("Blessing of Might") then return; end;if IsShiftKeyDown() then ActSpell("Consecration") return end;if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 end;end;if ranged() and tHealth<0.2 and mana>0.2 and ActSpell("Hammer of Wrath") then return end;if mana>0.05 and not GotBuff("HolySmite") and not GotBuff("HealingAura") and (mana>0.5 or not GotBuff("RighteousnessAura")) and not GotBuff("SealOfWrath") and not GotBuff("InnerRage") and not GotBuff("ThunderBolt") then if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end;if not GotDebuff("HealingAura") and pHealth<0.5 and ActSpell("Seal of Light") then return; end; if ActSpell("Seal of Command") then return; end; if ActSpell("Seal of Righteousness") then return; end; if not GotDebuff("HolySmite") and ActSpell("Seal of the Crusader") then return; end;end; if (tType=="Demon" or tType=="Undead") and mana>0.2 and ActSpell("Exorcism") then return; end;if melee() and mana>0.1 then if (((( (not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("SealOfWrath") ) or mana<0.25) and not GotDebuff("RighteousnessAura") )and (GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath")) )or (GotBuff("InnerRage") or GotBuff("ThunderBolt")))and ActSpell("Judgement") then return; end;end;if melee() and mana>0.1 then local _,_,_,_,VengefulStrikes=GetTalentInfo(3,15);local _,_,_,_,BlessedStrikes=GetTalentInfo(1,16);local CS=0;if GotBuff("CrusaderStrike") then CS=GotBuff("CrusaderStrike");end;if BlessedStrikes==5 then CS=CS-1;end;if VengefulStrikes>0 then CS=CS-1;end;local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,t6=GetItemInfo(link)if t6=="Two-Handed Axes" or t6=="Two-Handed Maces" or t6=="Two-Handed Swords" or t6=="Polearms" then CS=CS-1;end;if random(0,3+CS)<=1 then if ActSpell("Crusader Strike") then return;end; else if ActSpell("Holy Strike") then return;end;end;end;end;Attack_Actions() 

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
				if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;
			end;
		end;
		ix=ix-1;
	end;
end;
function Attack_Actions() 
	local mana = UnitMana("player")/UnitManaMax("player") 
	local pHealth = UnitHealth("player")/UnitHealthMax("player") 
	local tHealth = UnitHealth("target")/UnitHealthMax("target") 
	local tType = UnitCreatureType("target") 
	if pHealth<0.1 and ActSpell("Lay on Hands",1) then return end;
	if pHealth<0.2 and not GotBuff("Holy_RemoveCurse") then 
		if ActSpell("Divine Shield",1) then return; end; 
		if ActSpell("Divine Protection",1) then return; end; 
		if ActSpell("Blessing of Protection",1) then return; end;
	end;
	if mana>0.2 and pHealth<0.4 and ActSpell("Holy Shock",1) then return; end;
	if not GotBuff("FistOfJustice") and not GotBuff("SealOfWisdom") and not GotBuff("SealOfSalvation") and not GotBuff("PrayerOfHealing02") and not GotBuff("LightningShield") and not GotBuff("MageArmor") 
	and not GotBuff("GreaterBlessingofKings") and not GotBuff("GreaterBlessingofWisdom") and not GotBuff("GreaterBlessingofSalvation") and not GotBuff("GreaterBlessingofLight") and not GotBuff("GreaterBlessingofSanctuary") and not GotBuff("GreaterBlessingofKings") 
	and ActSpell("Blessing of Might") then return; end;
	if IsShiftKeyDown() then ActSpell("Consecration") return end;
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 end;end;
	if ranged() and tHealth<0.2 and mana>0.2 and ActSpell("Hammer of Wrath") then return end;
	if mana>0.05 and not GotBuff("HolySmite") and not GotBuff("HealingAura") and (mana>0.5 or not GotBuff("RighteousnessAura")) and not GotBuff("SealOfWrath") and not GotBuff("InnerRage") and not GotBuff("ThunderBolt") then 
		if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end;
		if not GotDebuff("HealingAura") and pHealth<0.5 and ActSpell("Seal of Light") then return; end; 
		if ActSpell("Seal of Command") then return; end; 
		if ActSpell("Seal of Righteousness") then return; end; 
		if not GotDebuff("HolySmite") and ActSpell("Seal of the Crusader") then return; end;
	end; 
	if (tType=="Demon" or tType=="Undead") and mana>0.2 and ActSpell("Exorcism") then return; end;
	if melee() and mana>0.1 then 
		if (
				(
					(
						( (not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("SealOfWrath") ) or mana<0.25) 
						and not GotDebuff("RighteousnessAura") 
					)
					and (GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath")) 
				)
				or (GotBuff("InnerRage") or GotBuff("ThunderBolt"))
			)
			and ActSpell("Judgement") then return; end;
	end;
	if melee() and mana>0.1 then 
		local _,_,_,_,VengefulStrikes=GetTalentInfo(3,15);
		local _,_,_,_,BlessedStrikes=GetTalentInfo(1,16);
		local CS=0;
		if GotBuff("CrusaderStrike") then CS=GotBuff("CrusaderStrike");end;
		if BlessedStrikes==5 then CS=CS-1;end;
		if VengefulStrikes>0 then CS=CS-1;end;
		local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,t6=GetItemInfo(link)
		if t6=="Two-Handed Axes" or t6=="Two-Handed Maces" or t6=="Two-Handed Swords" or t6=="Polearms" then CS=CS-1;end;
		if random(0,3+CS)<=1 then if ActSpell("Crusader Strike") then return;end; else if ActSpell("Holy Strike") then return;end;end;
	end;
end;
Attack_Actions() 


Для целителя
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;end;end;ix=ix-1;end;end;function Attack_Actions() local mana = UnitMana("player")/UnitManaMax("player") local pHealth = UnitHealth("player")/UnitHealthMax("player") local tHealth = UnitHealth("target")/UnitHealthMax("target") local tType = UnitCreatureType("target") if pHealth<0.1 and ActSpell("Lay on Hands",1) then return end;if pHealth<0.2 and not GotBuff("Holy_RemoveCurse") then if ActSpell("Divine Shield",1) then return; end; if ActSpell("Divine Protection",1) then return; end; if ActSpell("Blessing of Protection",1) then return; end;end;if mana>0.2 and pHealth<0.4 and ActSpell("Holy Shock",1) then return; end;if not GotBuff("FistOfJustice") and not GotBuff("SealOfWisdom") and not GotBuff("SealOfSalvation") and not GotBuff("PrayerOfHealing02") and not GotBuff("LightningShield") and not GotBuff("MageArmor") and not GotBuff("GreaterBlessingofKings") and not GotBuff("GreaterBlessingofWisdom") and not GotBuff("GreaterBlessingofSalvation") and not GotBuff("GreaterBlessingofLight") and not GotBuff("GreaterBlessingofSanctuary") and not GotBuff("GreaterBlessingofKings") and ActSpell("Blessing of Might") then return; end;if IsShiftKeyDown() then ActSpell("Consecration") return end;if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 end;end;if ranged() and tHealth<0.2 and mana>0.2 and ActSpell("Hammer of Wrath") then return end;if mana>0.05 and ((not GotBuff("HealingAura") and not GotBuff("HolySmite") and not GotBuff("RighteousnessAura") and not GotBuff("SealOfWrath") and not GotBuff("InnerRage") and not GotBuff("ThunderBolt") ) or (not GotDebuff("HealingAura") and ActSpell("Judgement",nil,0)==0) ) then if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end;if not GotDebuff("HealingAura") and ActSpell("Seal of Light") then return; end; if ActSpell("Seal of Wisdom") then return; end;if ActSpell("Seal of Command") then return; end; if ActSpell("Seal of Righteousness") then return; end; if ActSpell("Seal of the Crusader") then return; end; end;if (tType=="Demon" or tType=="Undead") and mana>0.2 and ActSpell("Exorcism") then return; end;if melee() and mana>0.1 then if (((( (not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("SealOfWrath") ) or mana<0.25) and not GotBuff("RighteousnessAura") )and (GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath")) )or (GotBuff("InnerRage") or GotBuff("ThunderBolt")))and ActSpell("Judgement") then return; end;end;if melee() and mana>0.1 and ActSpell("Holy Strike") then return;end;end;Attack_Actions() 

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
				if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;
			end;
		end;
		ix=ix-1;
	end;
end;
function Attack_Actions() 
	local mana = UnitMana("player")/UnitManaMax("player") 
	local pHealth = UnitHealth("player")/UnitHealthMax("player") 
	local tHealth = UnitHealth("target")/UnitHealthMax("target") 
	local tType = UnitCreatureType("target") 
	if pHealth<0.1 and ActSpell("Lay on Hands",1) then return end;
	if pHealth<0.2 and not GotBuff("Holy_RemoveCurse") then 
		if ActSpell("Divine Shield",1) then return; end; 
		if ActSpell("Divine Protection",1) then return; end; 
		if ActSpell("Blessing of Protection",1) then return; end;
	end;
	if mana>0.2 and pHealth<0.4 and ActSpell("Holy Shock",1) then return; end;
	if not GotBuff("FistOfJustice") and not GotBuff("SealOfWisdom") and not GotBuff("SealOfSalvation") and not GotBuff("PrayerOfHealing02") and not GotBuff("LightningShield") and not GotBuff("MageArmor") 
	and not GotBuff("GreaterBlessingofKings") and not GotBuff("GreaterBlessingofWisdom") and not GotBuff("GreaterBlessingofSalvation") and not GotBuff("GreaterBlessingofLight") and not GotBuff("GreaterBlessingofSanctuary") and not GotBuff("GreaterBlessingofKings") 
	and ActSpell("Blessing of Might") then return; end;
	if IsShiftKeyDown() then ActSpell("Consecration") return end;
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 end;end;
	if ranged() and tHealth<0.2 and mana>0.2 and ActSpell("Hammer of Wrath") then return end;
	if mana>0.05 and 
	(
		(not GotBuff("HealingAura") and not GotBuff("HolySmite") and not GotBuff("RighteousnessAura") and not GotBuff("SealOfWrath") and not GotBuff("InnerRage") and not GotBuff("ThunderBolt") ) 
		or (not GotDebuff("HealingAura") and ActSpell("Judgement",nil,0)==0) 
	) 
	then 
		if not GotDebuff("RighteousnessAura") and mana<0.25 and ActSpell("Seal of Wisdom") then return; end;
		if not GotDebuff("HealingAura") and ActSpell("Seal of Light") then return; end; 
		if ActSpell("Seal of Wisdom") then return; end;
		if ActSpell("Seal of Command") then return; end; 
		if ActSpell("Seal of Righteousness") then return; end; 
		if ActSpell("Seal of the Crusader") then return; end; 
	end;
	if (tType=="Demon" or tType=="Undead") and mana>0.2 and ActSpell("Exorcism") then return; end;
	if melee() and mana>0.1 then 
		if (
				(
					(
						( (not GotDebuff("HolySmite") and not GotDebuff("HealingAura") and not GotDebuff("SealOfWrath") ) or mana<0.25) 
						and not GotBuff("RighteousnessAura") 
					)
					and (GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath")) 
				)
				or (GotBuff("InnerRage") or GotBuff("ThunderBolt"))
			)
			and ActSpell("Judgement") then return; end;
	end;
	if melee() and mana>0.1 and ActSpell("Holy Strike") then return;end;
end;
Attack_Actions() 