-=Rogue multi-attack=- 1.18.0

/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function GotBuff(name,target) if not target then target="player";end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function GotDebuff(name,target) if not target then target="target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return true;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return true;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;end;end;ix=ix-1;end;end;function Attack_ActSpells() local PM=UnitMana("player")local TPoH,TH; if UnitExists("target") then TH=UnitHealth("target");TPoH=UnitHealth("target")/UnitHealthMax("target") else TPoH=0; end;local _,_,_,_,IGhostlyStrike=GetTalentInfo(3,9);if IGhostlyStrike==1 then IGhostlyStrike=3;else if IGhostlyStrike==2 then IGhostlyStrike=6;else if IGhostlyStrike==3 then IGhostlyStrike=10;end;end;end;local _,_,_,_,DirtyDeeds=GetTalentInfo(3,15);local _,_,_,_,BloodyMess=GetTalentInfo(3,18);if BloodyMess==1 then BloodyMess=2;else if BloodyMess==2 then BloodyMess=5;end;end;if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;if ranged() then local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);if itemtype == "Bows" then ActSpell("Shoot Bow");return;end;if itemtype == "Guns" then ActSpell("Shoot Gun");return;end;if itemtype == "Crossbows" then ActSpell("Shoot Crossbow");return;end;if itemtype == "Thrown" then if PM>=40 and ActSpell("Deadly Throw") then return;end;if ActSpell("Throw") then return;end;end;end;if melee() then  for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;if GotBuff("Stealth") then if PM>=60-DirtyDeeds*10 and ActSpell("Cheap Shot") then return;end;else if PM>=35 and GetComboPoints()*20>=math.random(100*TPoH,101) and ActSpell("Eviscerate") then return; end;if PM>=40-IGhostlyStrike and UnitIsUnit("player","targettarget") and ActSpell("Ghostly Strike") then return end;if PM>=40-BloodyMess and (not GotDebuff("Spell_Shadow_LifeDrain") or GotDebuff("Spell_Shadow_LifeDrain")<2) and ActSpell("Hemorrhage") then end;if PM>=40 and ActSpell("Sinister Strike") then return end;if PM>=10 and ActSpell("Riposte") then end;if PM>=10 and ActSpell("Surprise Attack") then end;end;end;end;Attack_ActSpells() 
--
/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
local function ranged() if UnitExists("target") then return not melee() end;end;
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
function Attack_ActSpells() 
	local PM=UnitMana("player")
	local TPoH,TH; if UnitExists("target") then TH=UnitHealth("target");TPoH=UnitHealth("target")/UnitHealthMax("target") else TPoH=0; end;
	local _,_,_,_,IGhostlyStrike=GetTalentInfo(3,9);if IGhostlyStrike==1 then IGhostlyStrike=3;else if IGhostlyStrike==2 then IGhostlyStrike=6;else if IGhostlyStrike==3 then IGhostlyStrike=10;end;end;end;
	local _,_,_,_,DirtyDeeds=GetTalentInfo(3,15);
	local _,_,_,_,BloodyMess=GetTalentInfo(3,18);if BloodyMess==1 then BloodyMess=2;else if BloodyMess==2 then BloodyMess=5;end;end;
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	if ranged() then 
		local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")
		local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);
		if itemtype == "Bows" then ActSpell("Shoot Bow");return;end;
		if itemtype == "Guns" then ActSpell("Shoot Gun");return;end;
		if itemtype == "Crossbows" then ActSpell("Shoot Crossbow");return;end;
		if itemtype == "Thrown" then 
			if PM>=40 and ActSpell("Deadly Throw") then return;end;
			if ActSpell("Throw") then return;end;
		end;
	end;
	if melee() then  
		for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;
		if GotBuff("Stealth") then 
			if PM>=60-DirtyDeeds*10 and ActSpell("Cheap Shot") then return;end;
		else 
			if PM>=35 and GetComboPoints()*20>=math.random(100*TPoH,101) and ActSpell("Eviscerate") then return; end;
			if PM>=40-IGhostlyStrike and UnitIsUnit("player","targettarget") and ActSpell("Ghostly Strike") then return end;
			if PM>=40-BloodyMess and (not GotDebuff("Spell_Shadow_LifeDrain") or GotDebuff("Spell_Shadow_LifeDrain")<2) and ActSpell("Hemorrhage") then end;
			if PM>=40 and ActSpell("Sinister Strike") then return end;
			if PM>=10 and ActSpell("Riposte") then end;
			if PM>=10 and ActSpell("Surprise Attack") then end;
		end;
	end;
end;
Attack_ActSpells() 