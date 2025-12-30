-=Druid FrenzyBear=- Рассчитан на совместное использование с талантами [Blood Frenzy] и [Furor]
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) local tex,cnt for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = 'target' end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return true;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return true;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;end;end;ix=ix-1;end;end;local function Aura(ID)local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;if active then if not ID then return name;else return string.find(name,ID);end;end;end;function Attack_Actions() local mana=UnitMana("player")local OoC=GotBuff("Spell_Shadow_ManaBurn")local RPoH; if UnitExists("target") then RPoH=UnitHealth("target")/UnitHealthMax("target") else RPoH=0; end;local _,_,_,_,Fer=GetTalentInfo(2,1);for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 return; end;end;if Aura("Bear Form") or Aura("Cat Form") then local _,_,_,_,Omen=GetTalentInfo(1,10);if not GotDebuff("Spell_Nature_FaerieFire") or (Omen==1 and not GotBuff("Shadow_ManaBurn")) then if ActSpell("Faerie Fire (Feral)","Rank 4") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; end;end;end;if not GotBuff("GhoulFrenzy") then if Aura("Cat Form") and mana>=30 and ActSpell("Tiger's Fury") then return;end;if ActSpell("Enrage",nil,0)==0 then if not Aura("Dire Bear Form") and ActSpell("Dire Bear Form") then return;end;if Aura("Dire Bear Form") and ActSpell("Enrage") then return;end;else if not Aura("Cat Form") and ActSpell("Cat Form") then return;end;end;else if not Aura('Dire Bear Form') and ActSpell("Dire Bear Form") then return;end;end; if Aura('Dire Bear Form') then if (mana<10 and not OoC) and ActSpell("Enrage") then return; end;if ranged() and (mana>=5 or OoC) and ActSpell("Feral Charge") then return; end;if melee() and (mana>=30-Fer or OoC) and ActSpell("Savage Bite") then end;if melee() and (mana>=20-Fer or OoC) and ActSpell("Swipe") then end;if melee() and (random(0,mana)>=15-Fer+30-Fer+20-Fer) and ActSpell("Maul") then end;end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
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
	if not target then target = 'target' end;
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function ActSpell(spell,rank,sw) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
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
end;
local function Aura(ID)
	local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()
	while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;
	if active then if not ID then return name;else return string.find(name,ID);end;end;
end;
function Attack_Actions() 
	local mana=UnitMana("player")
	local OoC=GotBuff("Spell_Shadow_ManaBurn")
	local RPoH; if UnitExists("target") then RPoH=UnitHealth("target")/UnitHealthMax("target") else RPoH=0; end;
	local _,_,_,_,Fer=GetTalentInfo(2,1);
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 return; end;end;
	if Aura("Bear Form") or Aura("Cat Form") then 
		local _,_,_,_,Omen=GetTalentInfo(1,10);
		if not GotDebuff("Spell_Nature_FaerieFire") or (Omen==1 and not GotBuff("Shadow_ManaBurn")) then 
			if ActSpell("Faerie Fire (Feral)","Rank 4") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; 
			end;
		end;
	end;
	if not GotBuff("GhoulFrenzy") then 
		if Aura("Cat Form") and mana>=30 and ActSpell("Tiger's Fury") then return;end;
		if ActSpell("Enrage",nil,0)==0 then 
			if not Aura("Dire Bear Form") and ActSpell("Dire Bear Form") then return;end;
			if Aura("Dire Bear Form") and ActSpell("Enrage") then return;end;
		else 
			if not Aura("Cat Form") and ActSpell("Cat Form") then return;end;
		end;
	else 
		if not Aura('Dire Bear Form') and ActSpell("Dire Bear Form") then return;end;
	end; 
	if Aura('Dire Bear Form') then 
		if (mana<10 and not OoC) and ActSpell("Enrage") then return; end;
		if ranged() and (mana>=5 or OoC) and ActSpell("Feral Charge") then return; end;
		if melee() and (mana>=30-Fer or OoC) and ActSpell("Savage Bite") then end;
		if melee() and (mana>=20-Fer or OoC) and ActSpell("Swipe") then end;
		if melee() and (random(0,mana)>=15-Fer+30-Fer+20-Fer) and ActSpell("Maul") then end;
	end;
end;
Attack_Actions() 


без Savage Bite
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) local tex,cnt for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = 'target' end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return true;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return true;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;end;end;ix=ix-1;end;end;local function Aura(ID)local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;if active then if not ID then return name;else return string.find(name,ID);end;end;end;function Attack_Actions() local mana=UnitMana("player")local OoC=GotBuff("Spell_Shadow_ManaBurn")local RPoH; if UnitExists("target") then RPoH=UnitHealth("target")/UnitHealthMax("target") else RPoH=0; end;local _,_,_,_,Fer=GetTalentInfo(2,1);for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 return; end;end;if Aura("Bear Form") or Aura("Cat Form") then local _,_,_,_,Omen=GetTalentInfo(1,10);if not GotDebuff("Spell_Nature_FaerieFire") or (Omen==1 and not GotBuff("Shadow_ManaBurn")) then if ActSpell("Faerie Fire (Feral)","Rank 4") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; end;end;end;if not GotBuff("GhoulFrenzy") then if Aura("Cat Form") and mana>=30 and ActSpell("Tiger's Fury") then return;end;if ActSpell("Enrage",nil,0)==0 then if not Aura("Dire Bear Form") and ActSpell("Dire Bear Form") then return;end;if Aura("Dire Bear Form") and ActSpell("Enrage") then return;end;else if not Aura("Cat Form") and ActSpell("Cat Form") then return;end;end;else if not Aura('Dire Bear Form') and ActSpell("Dire Bear Form") then return;end;end; if Aura('Dire Bear Form') then if (mana<10 and not OoC) and ActSpell("Enrage") then return; end;if ranged() and (mana>=5 or OoC) and ActSpell("Feral Charge") then return; end;if melee() and (mana>=20-Fer or OoC) and ActSpell("Swipe") then end;if melee() and (random(0,mana)>=15-Fer+30-Fer+20-Fer) and ActSpell("Maul") then end;end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
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
	if not target then target = 'target' end;
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function ActSpell(spell,rank,sw) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
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
end;
local function Aura(ID)
	local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()
	while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;
	if active then if not ID then return name;else return string.find(name,ID);end;end;
	
end;
function Attack_Actions() 
	local mana=UnitMana("player")
	local OoC=GotBuff("Spell_Shadow_ManaBurn")
	local RPoH; if UnitExists("target") then RPoH=UnitHealth("target")/UnitHealthMax("target") else RPoH=0; end;
	local _,_,_,_,Fer=GetTalentInfo(2,1);
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 return; end;end;
	if Aura("Bear Form") or Aura("Cat Form") then 
		local _,_,_,_,Omen=GetTalentInfo(1,10);
		if not GotDebuff("Spell_Nature_FaerieFire") or (Omen==1 and not GotBuff("Shadow_ManaBurn")) then 
			if ActSpell("Faerie Fire (Feral)","Rank 4") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; 
			end;
		end;
	end;
	if not GotBuff("GhoulFrenzy") then 
		if Aura("Cat Form") and mana>=30 and ActSpell("Tiger's Fury") then return;end;
		if ActSpell("Enrage",nil,0)==0 then 
			if not Aura("Dire Bear Form") and ActSpell("Dire Bear Form") then return;end;
			if Aura("Dire Bear Form") and ActSpell("Enrage") then return;end;
		else 
			if not Aura("Cat Form") and ActSpell("Cat Form") then return;end;
		end;
	else 
		if not Aura('Dire Bear Form') and ActSpell("Dire Bear Form") then return;end;
	end; 
	if Aura('Dire Bear Form') then 
		if (mana<10 and not OoC) and ActSpell("Enrage") then return; end;
		if ranged() and (mana>=5 or OoC) and ActSpell("Feral Charge") then return; end;
		if melee() and (mana>=20-Fer or OoC) and ActSpell("Swipe") then end;
		if melee() and (random(0,mana)>=15-Fer+30-Fer+20-Fer) and ActSpell("Maul") then end;
	end;
end;
Attack_Actions() 