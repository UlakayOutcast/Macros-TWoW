-=Warrior multi-attack=--=Attack+=-
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GetStance(stance)local N,X=GetNumShapeshiftForms() for X=1,N do local icon,name,activity,hz = GetShapeshiftFormInfo(X);if stance then if stance==name then return activity;end;else if activity==1 then return name;end;end;end;end;local function SetStance(stance) N,X=GetNumShapeshiftForms()for X=1,N do if strfind(GetShapeshiftFormInfo(X),stance) then return CastShapeshiftForm(X);end;end;end;local function GotBuff(name,target) local tex,cnt for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target="target" end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function Action(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==0 then return ix;end;if sw==1 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1)else CastSpellByName(spell,1);end;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;end;function Attack_Actions() local mana=UnitMana("player");local RPoH; if UnitExists("target") then RPoH=UnitHealth("target")/UnitHealthMax("target") else RPoH=0; end;local _,_,_,_,TRHS=GetTalentInfo(1,1);local _,_,_,_,TRTC=GetTalentInfo(1,6);local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)") local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);local mainSpeed, offSpeed = UnitAttackSpeed("player");if not offSpeed then offSpeed=2.5;end;for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 return; end;end;if ranged() then if GetStance("Battle Stance") then Action("Charge");end;if not GetStance("Battle Stance") or inCombat() then if itemtype == "Bows" then Action("Shoot Bow");end;if itemtype == "Guns" then Action("Shoot Gun");end;if itemtype == "Crossbows" then Action("Shoot Crossbow");end;if itemtype == "Thrown" then Action("Throw");end;end;end;if melee() then if GetStance("Defensive Stance") and not UnitIsUnit("targettarget", "player") and Action("Taunt") then return;end;if GetStance("Defensive Stance") and mana>=5 and Action("Revenge") then end;if GetStance("Defensive Stance") and not GotDebuff("ThunderClap") and mana>=20-(TRTC*1.5-1) and Action("Thunder Clap") then return;end;if GetStance("Defensive Stance") and not GotDebuff("Warrior_WarCry") and mana>=10 and Action("Demoralizing Shout") then return;end;if GetStance("Battle Stance") and RPoH<=0.2 and Action("Execute") then return;end;end;if not GotBuff("BattleShout") and mana>=10 and Action("Battle Shout") then return;end;if melee() then if mana>=5 and Action("Overpower") then end;if GetStance("Battle Stance") or GetStance("Defensive Stance") then if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" and not GotDebuff("Ability_Gouge") and (100*RPoH)>=math.random(0,100) and mana>=10 and Action("Rend") then return; end;end;if not GetStance("Defensive Stance") and mainSpeed>=2.5 and offSpeed>=2.0 and mana>=15 and Action("Slam") then return;end;if mana>=15-TRHS and Action("Heroic Strike") then end;end;end;Attack_Actions()
---
/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
local function ranged() if UnitExists("target") then return not melee() end;end;
local function inCombat() return UnitAffectingCombat("player") end;
local function GetStance(stance)
	local N,X=GetNumShapeshiftForms() 
	for X=1,N do 
		local icon,name,activity,hz = GetShapeshiftFormInfo(X);
		if stance then 
			if stance==name then return activity;end;
		else 
			if activity==1 then return name;end;
		end;
	end;
end;
local function SetStance(stance) 
	N,X=GetNumShapeshiftForms()
	for X=1,N do 
		if strfind(GetShapeshiftFormInfo(X),stance) then 
			return CastShapeshiftForm(X);
		end;
	end;
end;
local function GotBuff(name,target) 
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target="target" end;
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function Action(spell,rank,sw) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		if ix==0 then return nil;
		else 
			spellName,spellRank=GetSpellName(ix,"spell");
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if sw==0 then return ix;end;
				if sw==1 then return GetSpellCooldown(ix,"spell");end;
				if sw=="self" then 
					if rank then CastSpellByName(spell.."("..rank..")",1)
					else CastSpellByName(spell,1);end;
				end;
				if sw==nil then 
					if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;
				end;
			end;
			ix=ix-1;
		end;
	end;
end;
function Attack_Actions() 
	local mana=UnitMana("player");
	local RPoH; if UnitExists("target") then RPoH=UnitHealth("target")/UnitHealthMax("target") else RPoH=0; end;
	local _,_,_,_,TRHS=GetTalentInfo(1,1);
	local _,_,_,_,TRTC=GetTalentInfo(1,6);
	local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)") local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);
	local mainSpeed, offSpeed = UnitAttackSpeed("player");if not offSpeed then offSpeed=2.5;end;
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 return; end;end;
	if ranged() then 
		if GetStance("Battle Stance") then Action("Charge");end;
		if not GetStance("Battle Stance") or inCombat() then 
			if itemtype == "Bows" then Action("Shoot Bow");end;
			if itemtype == "Guns" then Action("Shoot Gun");end;
			if itemtype == "Crossbows" then Action("Shoot Crossbow");end;
			if itemtype == "Thrown" then Action("Throw");end;
		end;
	end;
	if melee() then 
		if GetStance("Defensive Stance") and not UnitIsUnit("targettarget", "player") and Action("Taunt") then return;end;
		if GetStance("Defensive Stance") and mana>=5 and Action("Revenge") then end;
		if GetStance("Defensive Stance") and not GotDebuff("ThunderClap") and mana>=20-(TRTC*1.5-1) and Action("Thunder Clap") then return;end;
		if GetStance("Defensive Stance") and not GotDebuff("Warrior_WarCry") and mana>=10 and Action("Demoralizing Shout") then return;end;
		if GetStance("Battle Stance") and RPoH<=0.2 and Action("Execute") then return;end;
	end;
	if not GotBuff("BattleShout") and mana>=10 and Action("Battle Shout") then return;end;
	if melee() then 
		if mana>=5 and Action("Overpower") then end;
		if GetStance("Battle Stance") or GetStance("Defensive Stance") then 
			if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" 
			and not GotDebuff("Ability_Gouge") and (100*RPoH)>=math.random(0,100) and mana>=10 and Action("Rend") then return; end;
		end;
		if not GetStance("Defensive Stance") and mainSpeed>=2.5 and offSpeed>=2.0 and mana>=15 and Action("Slam") then return;end;
		if mana>=15-TRHS and Action("Heroic Strike") then end;
	end;
end;
Attack_Actions()