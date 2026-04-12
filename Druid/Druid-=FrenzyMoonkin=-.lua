-=Druid FrenzyMoonkin=-

/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat(target) if not target then target="player";end;return UnitAffectingCombat(target); end;local function GotBuff(name,target) if not target then target="player";end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function GotDebuff(name,target) if not target then target = 'target' end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix=1;local spellName,spellRank=GetSpellName(1,"spell");while spellName do ix=ix+1;spellName=GetSpellName(ix,"spell");end;while ix>0 do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return true;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return true;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;end;end;ix=ix-1;end;return false;end;local function Aura(ID)local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;if active then if not ID then return name;else return string.find(name,ID);end;end;end;function Attack_Actions() local PM=UnitMana("player")local OoC=GotBuff("Spell_Shadow_ManaBurn")if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;local RPoH; if UnitExists("target") then RPoH=UnitHealth("target")/UnitHealthMax("target") else RPoH=0; end;local _,_,_,_,TR=GetTalentInfo(2,1);for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;if OoC and IsControlKeyDown() then return;end;if (not Aura("Bear Form") and not Aura("Cat Form")) or GotBuff("ForceOfNature") then if melee() then if not GotDebuff("Spell_Nature_InsectSwarm") and not OoC and ActSpell("Insect Swarm") then return; end;if (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return; end;end;if ranged() then if (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return; end;if not GotDebuff("Spell_Nature_InsectSwarm") and not OoC and ActSpell("Insect Swarm") then return; end;end;end;local _,_,_,_,BloodFrenzy=GetTalentInfo(2,12);if BloodFrenzy~=0 then if not GotBuff("GhoulFrenzy") and not Aura("Cat Form") then ActSpell("Cat Form");return;end;if not GotBuff("GhoulFrenzy") and Aura("Cat Form") and PM>=30 then ActSpell("Tiger's Fury");return;end;end;if (Aura("Bear Form") or Aura("Cat Form")) and not GotDebuff("Shadow_ImpPhaseShift","player") and not GotDebuff("Holy_Silence","player") and not GotDebuff("Shadow_CallofBone","player") and not GotDebuff("Shadow_Teleport","player") and not GotDebuff("Nature_EarthBind","player") then local _,_,_,_,Omen=GetTalentInfo(1,10);if not GotDebuff("Spell_Nature_FaerieFire") or (Omen==1 and not OoC) then if ActSpell("Faerie Fire (Feral)","Rank 4") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; end;end;end;if (not Aura("Bear Form") and not Aura("Cat Form")) or GotBuff("ForceOfNature") then if not GotDebuff("Spell_Nature_FaerieFire") and melee() and not GotBuff("ForceOfNature") and ActSpell("Faerie Fire") then return; end;end;if Aura("Dire Bear Form") or Aura("Bear Form") then if ranged() and (PM>=5 or OoC) and ActSpell("Feral Charge") then return; end;if melee() and (PM>=30-TR or OoC) and ActSpell("Savage Bite") then end;if melee() and (PM>=20-TR or OoC) and ActSpell("Swipe") then end;if melee() and (PM>=15-TR+(75-TR*2) or OoC) and ActSpell("Maul") then end;end;if BloodFrenzy~=0 and GotBuff("GhoulFrenzy") and Aura("Cat Form") then if ActSpell("Moonkin Form",1) then  if not GotBuff("ForceOfNature") then ActSpell("Moonkin Form")return;end;else if Aura("Cat Form") then ActSpell("Cat Form");return;end;end;end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
local function ranged() if UnitExists("target") then return not melee() end;end;
local function inCombat(target) if not target then target="player";end;return UnitAffectingCombat(target); end;
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
	if not target then target = 'target' end;
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
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
local function Aura(ID)
	local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()
	while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;
	if active then if not ID then return name;else return string.find(name,ID);end;end;
end;
function Attack_Actions() 
	local PM=UnitMana("player")
	local OoC=GotBuff("Spell_Shadow_ManaBurn")
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	local RPoH; if UnitExists("target") then RPoH=UnitHealth("target")/UnitHealthMax("target") else RPoH=0; end;
	local _,_,_,_,TR=GetTalentInfo(2,1);
	for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;
	if OoC and IsControlKeyDown() then return;end;
	if (not Aura("Bear Form") and not Aura("Cat Form")) or GotBuff("ForceOfNature") then 
		if melee() then 
			if not GotDebuff("Spell_Nature_InsectSwarm") and not OoC and ActSpell("Insect Swarm") then return; end;
			if (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return; end;
		end;
		if ranged() then 
			if (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return; end;
			if not GotDebuff("Spell_Nature_InsectSwarm") and not OoC and ActSpell("Insect Swarm") then return; end;
		end;
	end;
	local _,_,_,_,BloodFrenzy=GetTalentInfo(2,12);
	if BloodFrenzy~=0 then 
		if not GotBuff("GhoulFrenzy") and not Aura("Cat Form") then ActSpell("Cat Form");return;end;
		if not GotBuff("GhoulFrenzy") and Aura("Cat Form") and PM>=30 then ActSpell("Tiger's Fury");return;end;
	end;
	if (Aura("Bear Form") or Aura("Cat Form")) and not GotDebuff("Shadow_ImpPhaseShift","player") and not GotDebuff("Holy_Silence","player") and not GotDebuff("Shadow_CallofBone","player") and not GotDebuff("Shadow_Teleport","player") and not GotDebuff("Nature_EarthBind","player") then 
		local _,_,_,_,Omen=GetTalentInfo(1,10);
		if not GotDebuff("Spell_Nature_FaerieFire") or (Omen==1 and not OoC) then 
			if ActSpell("Faerie Fire (Feral)","Rank 4") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; 
			end;
		end;
	end;
	if (not Aura("Bear Form") and not Aura("Cat Form")) or GotBuff("ForceOfNature") then 
		if not GotDebuff("Spell_Nature_FaerieFire") and melee() and not GotBuff("ForceOfNature") and ActSpell("Faerie Fire") then return; end;
	end;
	if Aura("Dire Bear Form") or Aura("Bear Form") then 
		if ranged() and (PM>=5 or OoC) and ActSpell("Feral Charge") then return; end;
		if melee() and (PM>=30-TR or OoC) and ActSpell("Savage Bite") then end;
		if melee() and (PM>=20-TR or OoC) and ActSpell("Swipe") then end;
		if melee() and (PM>=15-TR+(75-TR*2) or OoC) and ActSpell("Maul") then end;
	end;
	if BloodFrenzy~=0 and GotBuff("GhoulFrenzy") and Aura("Cat Form") then 
		if ActSpell("Moonkin Form",1) then  
			if not GotBuff("ForceOfNature") then ActSpell("Moonkin Form")return;end;
		else 
			if Aura("Cat Form") then ActSpell("Cat Form");return;end;
		end;
	end;
end;
Attack_Actions() 



--безопасный режим
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat(target) if not target then target="player";end;return UnitAffectingCombat(target); end;local function GotBuff(name,target) if not target then target="player";end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function GotDebuff(name,target) if not target then target = 'target' end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix=1;local spellName,spellRank=GetSpellName(1,"spell");while spellName do ix=ix+1;spellName=GetSpellName(ix,"spell");end;while ix>0 do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return true;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return true;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;end;end;ix=ix-1;end;return false;end;local function Aura(ID)local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;if active then if not ID then return name;else return string.find(name,ID);end;end;end;function Attack_Actions() local PM=UnitMana("player")local OoC=GotBuff("Spell_Shadow_ManaBurn")if not UnitCanAttack("player","target") or UnitHealth("target")==0 or (inCombat("player") and not inCombat("target")) then TargetNearestEnemy();end;local RPoH; if UnitExists("target") then RPoH=UnitHealth("target")/UnitHealthMax("target") else RPoH=0; end;local _,_,_,_,TR=GetTalentInfo(2,1);for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;if OoC and IsControlKeyDown() then return;end;if (not Aura("Bear Form") and not Aura("Cat Form")) or GotBuff("ForceOfNature") then if melee() then if not GotDebuff("Spell_Nature_InsectSwarm") and not OoC and ActSpell("Insect Swarm") then return; end;if (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return; end;end;if ranged() then if (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return; end;if not GotDebuff("Spell_Nature_InsectSwarm") and not OoC and ActSpell("Insect Swarm") then return; end;end;end;local _,_,_,_,BloodFrenzy=GetTalentInfo(2,12);if BloodFrenzy~=0 then if not GotBuff("GhoulFrenzy") and not Aura("Cat Form") then ActSpell("Cat Form");return;end;if not GotBuff("GhoulFrenzy") and Aura("Cat Form") and PM>=30 then ActSpell("Tiger's Fury");return;end;end;if (Aura("Bear Form") or Aura("Cat Form")) and not GotDebuff("Shadow_ImpPhaseShift","player") and not GotDebuff("Holy_Silence","player") and not GotDebuff("Shadow_CallofBone","player") and not GotDebuff("Shadow_Teleport","player") and not GotDebuff("Nature_EarthBind","player") then local _,_,_,_,Omen=GetTalentInfo(1,10);if not GotDebuff("Spell_Nature_FaerieFire") or (Omen==1 and not OoC) then if ActSpell("Faerie Fire (Feral)","Rank 4") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; end;end;end;if (not Aura("Bear Form") and not Aura("Cat Form")) or GotBuff("ForceOfNature") then if not GotDebuff("Spell_Nature_FaerieFire") and melee() and not GotBuff("ForceOfNature") and ActSpell("Faerie Fire") then return; end;end;if Aura("Dire Bear Form") or Aura("Bear Form") then if ranged() and (PM>=5 or OoC) and ActSpell("Feral Charge") then return; end;if melee() and (PM>=30-TR or OoC) and ActSpell("Savage Bite") then end;if melee() and (PM>=20-TR or OoC) and ActSpell("Swipe") then end;if melee() and (PM>=15-TR+(75-TR*2) or OoC) and ActSpell("Maul") then end;end;if BloodFrenzy~=0 and GotBuff("GhoulFrenzy") and Aura("Cat Form") then if ActSpell("Moonkin Form",1) then  if not GotBuff("ForceOfNature") then ActSpell("Moonkin Form")return;end;else if Aura("Cat Form") then ActSpell("Cat Form");return;end;end;end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
local function ranged() if UnitExists("target") then return not melee() end;end;
local function inCombat(target) if not target then target="player";end;return UnitAffectingCombat(target); end;
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
	if not target then target = 'target' end;
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
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
local function Aura(ID)
	local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()
	while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;
	if active then if not ID then return name;else return string.find(name,ID);end;end;
end;
function Attack_Actions() 
	local PM=UnitMana("player")
	local OoC=GotBuff("Spell_Shadow_ManaBurn")
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 or (inCombat("player") and not inCombat("target")) then TargetNearestEnemy();end;
	local RPoH; if UnitExists("target") then RPoH=UnitHealth("target")/UnitHealthMax("target") else RPoH=0; end;
	local _,_,_,_,TR=GetTalentInfo(2,1);
	for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;
	if OoC and IsControlKeyDown() then return;end;
	if (not Aura("Bear Form") and not Aura("Cat Form")) or GotBuff("ForceOfNature") then 
		if melee() then 
			if not GotDebuff("Spell_Nature_InsectSwarm") and not OoC and ActSpell("Insect Swarm") then return; end;
			if (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return; end;
		end;
		if ranged() then 
			if (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return; end;
			if not GotDebuff("Spell_Nature_InsectSwarm") and not OoC and ActSpell("Insect Swarm") then return; end;
		end;
	end;
	local _,_,_,_,BloodFrenzy=GetTalentInfo(2,12);
	if BloodFrenzy~=0 then 
		if not GotBuff("GhoulFrenzy") and not Aura("Cat Form") then ActSpell("Cat Form");return;end;
		if not GotBuff("GhoulFrenzy") and Aura("Cat Form") and PM>=30 then ActSpell("Tiger's Fury");return;end;
	end;
	if (Aura("Bear Form") or Aura("Cat Form")) and not GotDebuff("Shadow_ImpPhaseShift","player") and not GotDebuff("Holy_Silence","player") and not GotDebuff("Shadow_CallofBone","player") and not GotDebuff("Shadow_Teleport","player") and not GotDebuff("Nature_EarthBind","player") then 
		local _,_,_,_,Omen=GetTalentInfo(1,10);
		if not GotDebuff("Spell_Nature_FaerieFire") or (Omen==1 and not OoC) then 
			if ActSpell("Faerie Fire (Feral)","Rank 4") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; 
			end;
		end;
	end;
	if (not Aura("Bear Form") and not Aura("Cat Form")) or GotBuff("ForceOfNature") then 
		if not GotDebuff("Spell_Nature_FaerieFire") and melee() and not GotBuff("ForceOfNature") and ActSpell("Faerie Fire") then return; end;
	end;
	if Aura("Dire Bear Form") or Aura("Bear Form") then 
		if ranged() and (PM>=5 or OoC) and ActSpell("Feral Charge") then return; end;
		if melee() and (PM>=30-TR or OoC) and ActSpell("Savage Bite") then end;
		if melee() and (PM>=20-TR or OoC) and ActSpell("Swipe") then end;
		if melee() and (PM>=15-TR+(75-TR*2) or OoC) and ActSpell("Maul") then end;
	end;
	if BloodFrenzy~=0 and GotBuff("GhoulFrenzy") and Aura("Cat Form") then 
		if ActSpell("Moonkin Form",1) then  
			if not GotBuff("ForceOfNature") then ActSpell("Moonkin Form")return;end;
		else 
			if Aura("Cat Form") then ActSpell("Cat Form");return;end;
		end;
	end;
end;
Attack_Actions() 