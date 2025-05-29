-=Warrior multi-attack=--=Attack+=-
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function partydist(p) if UnitExists(p) then if not CheckInteractDistance(p,3) and CheckInteractDistance(p,4) then return true;end;end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GetStance(stance)local N,X=GetNumShapeshiftForms() for X=1,N do local icon,name,activity,hz = GetShapeshiftFormInfo(X);if stance then if stance==name then return activity;end;else if activity==1 then return name;end;end;end;end;local function SetStance(stance) N,X=GetNumShapeshiftForms()for X=1,N do if strfind(GetShapeshiftFormInfo(X),stance) then return CastShapeshiftForm(X);end;end;end;local function GotBuff(name,target) local tex,cnt for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target="target" end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function Action(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==0 then return GetSpellCooldown(ix,"spell");end;if GetSpellCooldown(ix,"spell")>0 then return;end;if sw=="self" then if rank then return CastSpellByName(spell.."("..rank..")",1)else return CastSpellByName(spell,1);end;end;if sw then TargetUnit(sw);CastSpell(ix,"spell");TargetLastTarget();return ix;end;if sw==nil then CastSpell(ix,"spell");return ix;end;end;ix=ix-1;end;end;end;function Attack_Actions() local mana=UnitMana("player");local TPoH; if UnitExists("target") then TPoH=UnitHealth("target")/UnitHealthMax("target"); else TPoH=0; end;local _,_,_,_,TRHS=GetTalentInfo(1,1);local _,_,_,_,TRTM=GetTalentInfo(1,2);local _,_,_,_,TRTC=GetTalentInfo(1,6);local _,_,_,_,TRSlam=GetTalentInfo(1,15);local _,_,_,_,_,RangedT;local _,_,_,_,_,MainHandT;local _,_,_,_,_,OffHandT;if GetInventoryItemLink("player", 18) then local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,RangedT=GetItemInfo(link);else RangedT=nil; end;if GetInventoryItemLink("player", 16) then local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,MainHandT=GetItemInfo(link);else MainHandT=nil; end;if GetInventoryItemLink("player", 17) then local _,_,link=string.find(GetInventoryItemLink("player", 17),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,OffHandT=GetItemInfo(link);else OffHandT=nil; end;local mainSpeed, offSpeed = UnitAttackSpeed("player");if not offSpeed then offSpeed=2.5;end;local stance=GetStance();if stance=="Defensive Stance" then if UnitExists("party1") then if UnitHealth("party1")/UnitHealthMax("party1")<=0.2 and mana>=10 and partydist("party1") and Action("Intervene",nil,"party1") then return;end;end;if UnitExists("party2") then if UnitHealth("party2")/UnitHealthMax("party2")<=0.2 and mana>=10 and partydist("party2") and Action("Intervene",nil,"party2") then return;end;end;if UnitExists("party3") then if UnitHealth("party3")/UnitHealthMax("party3")<=0.2 and mana>=10 and partydist("party3") and Action("Intervene",nil,"party3") then return;end;end;if UnitExists("party4") then if UnitHealth("party4")/UnitHealthMax("party4")<=0.2 and mana>=10 and partydist("party4") and Action("Intervene",nil,"party4") then return;end;end;if UnitExists("party5") then if UnitHealth("party5")/UnitHealthMax("party5")<=0.2 and mana>=10 and partydist("party5") and Action("Intervene",nil,"party5") then return;end;end;end;if (UnitExists("target") and not UnitCanAttack("player","target")) or TPoH==0 then ClearTarget() end;for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack");C=96;return;end;end;if ranged() then if stance=="Berserker Stance" and mana>=10 and Action("Intercept") then return;end;if stance=="Battle Stance" and not inCombat() and Action("Charge") then return;end;if stance=="Defensive Stance" or (stance=="Battle Stance" and (inCombat() or Action("Charge",nil,0)>0)) or (stance=="Berserker Stance" and (mana<10 or Action("Intercept",nil,0)>0)) then if RangedT=="Bows" then Action("Shoot Bow");return;end;if RangedT=="Guns" then Action("Shoot Gun");return;end;if RangedT=="Crossbows" then Action("Shoot Crossbow");return;end;if RangedT=="Thrown" then Action("Throw");return;end;end;end;if melee() then if stance=="Defensive Stance" and MainHandT and not UnitIsUnit("targettarget", "player") and Action("Taunt") then return;end;if stance=="Defensive Stance" and not GotDebuff("ThunderClap") and mana>=20-(TRTC*1.5-1) and Action("Thunder Clap") then return;end;if stance=="Defensive Stance" and not GotDebuff("Warrior_WarCry") and mana>=10 and Action("Demoralizing Shout") then return;end;if stance=="Defensive Stance" and MainHandT and mana>=5 and Action("Revenge") then end;if stance=="Battle Stance" and mana>=5 and MainHandT and Action("Overpower") then end;if mana>=20 and MainHandT and Action("Counterattack") then end;end;if stance~="Defensive Stance" and not GotBuff("BattleShout") and mana>=10 and Action("Battle Shout") then return;end;if melee() then if (stance=="Battle Stance" or stance=="Berserker Stance") and MainHandT and TPoH<=0.2 and mana>=15 and Action("Execute") then return;end;if (stance=="Battle Stance" or stance=="Defensive Stance") and MainHandT then if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" and not GotDebuff("Ability_Gouge") and TPoH>=random() and mana>=10 and Action("Rend") then return;end;end;if OffHandT=="Shields" and mana>=20 and Action("Shield Slam") then return;end;if stance=="Defensive Stance" and OffHandT=="Shields" and mana>=10 and Action("Shield Block") then return;end;if stance=="Berserker Stance"and mana>=25+(TRTM*5)and Action("Whirlwind") then return;end;if (stance~="Berserker Stance"and(not MainHandT or GotDebuff("Disarm","player")or TRTC==3))and mana>=20-(TRTC*1.5-1)+(TRTM*5)and Action("Thunder Clap") then return;end;if stance~="Defensive Stance" and MainHandT and mainSpeed>=2.5-(TRSlam*0.25) and offSpeed>=2.0 and mana>=15 and Action("Slam") then return;end;if stance=="Defensive Stance" and not MainHandT and OffHandT=="Shields" and mana>=10+(TRTM*5) and Action("Shield Bash") then return;end;if (stance~="Defensive Stance" and not MainHandT) and mana>=10+(TRTM*5) and Action("Pummel") then return;end;if mana>=15-TRHS+(TRTM*5)+25 and MainHandT then Action("Heroic Strike");end;end;end;Attack_Actions()
-=-
/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
local function ranged() if UnitExists("target") then return not melee() end;end;
local function partydist(p) if UnitExists(p) then if not CheckInteractDistance(p,3) and CheckInteractDistance(p,4) then return true;end;end;end;
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
				if sw==0 then return GetSpellCooldown(ix,"spell");end;
				if GetSpellCooldown(ix,"spell")>0 then return;end;
				if sw=="self" then 
					if rank then return CastSpellByName(spell.."("..rank..")",1)
					else return CastSpellByName(spell,1);end;
				end;
				if sw then 
					TargetUnit(sw);CastSpell(ix,"spell");TargetLastTarget();return ix;
				end;
				if sw==nil then 
					CastSpell(ix,"spell");return ix;
				end;
			end;
			ix=ix-1;
		end;
	end;
end;
function Attack_Actions() 
	local mana=UnitMana("player");
	local TPoH; if UnitExists("target") then TPoH=UnitHealth("target")/UnitHealthMax("target"); else TPoH=0; end;
	local _,_,_,_,TRHS=GetTalentInfo(1,1);
	local _,_,_,_,TRTM=GetTalentInfo(1,2);
	local _,_,_,_,TRTC=GetTalentInfo(1,6);
	local _,_,_,_,TRSlam=GetTalentInfo(1,15);
	local _,_,_,_,_,RangedT;
	local _,_,_,_,_,MainHandT;
	local _,_,_,_,_,OffHandT;
	if GetInventoryItemLink("player", 18) then local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,RangedT=GetItemInfo(link);else RangedT=nil; end;
	if GetInventoryItemLink("player", 16) then local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,MainHandT=GetItemInfo(link);else MainHandT=nil; end;
	if GetInventoryItemLink("player", 17) then local _,_,link=string.find(GetInventoryItemLink("player", 17),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,OffHandT=GetItemInfo(link);else OffHandT=nil; end;
	local mainSpeed, offSpeed = UnitAttackSpeed("player");if not offSpeed then offSpeed=2.5;end;
	local stance=GetStance();
	if stance=="Defensive Stance" then 
		if UnitExists("party1") then if UnitHealth("party1")/UnitHealthMax("party1")<=0.2 and mana>=10 and partydist("party1") and Action("Intervene",nil,"party1") then return;end;end;
		if UnitExists("party2") then if UnitHealth("party2")/UnitHealthMax("party2")<=0.2 and mana>=10 and partydist("party2") and Action("Intervene",nil,"party2") then return;end;end;
		if UnitExists("party3") then if UnitHealth("party3")/UnitHealthMax("party3")<=0.2 and mana>=10 and partydist("party3") and Action("Intervene",nil,"party3") then return;end;end;
		if UnitExists("party4") then if UnitHealth("party4")/UnitHealthMax("party4")<=0.2 and mana>=10 and partydist("party4") and Action("Intervene",nil,"party4") then return;end;end;
		if UnitExists("party5") then if UnitHealth("party5")/UnitHealthMax("party5")<=0.2 and mana>=10 and partydist("party5") and Action("Intervene",nil,"party5") then return;end;end;
	end;
	if (UnitExists("target") and not UnitCanAttack("player","target")) or TPoH==0 then ClearTarget() end;
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack");C=96;return;end;end;
	if ranged() then 
		if stance=="Berserker Stance" and mana>=10 and Action("Intercept") then return;end;
		if stance=="Battle Stance" and not inCombat() and Action("Charge") then return;end;
		if stance=="Defensive Stance" or (stance=="Battle Stance" and (inCombat() or Action("Charge",nil,0)>0)) or (stance=="Berserker Stance" and (mana<10 or Action("Intercept",nil,0)>0)) then 
			if RangedT=="Bows" then Action("Shoot Bow");return;end;
			if RangedT=="Guns" then Action("Shoot Gun");return;end;
			if RangedT=="Crossbows" then Action("Shoot Crossbow");return;end;
			if RangedT=="Thrown" then Action("Throw");return;end;
		end;
	end;
	if melee() then 
		if stance=="Defensive Stance" and MainHandT and not UnitIsUnit("targettarget", "player") and Action("Taunt") then return;end;
		if stance=="Defensive Stance" and not GotDebuff("ThunderClap") and mana>=20-(TRTC*1.5-1) and Action("Thunder Clap") then return;end;
		if stance=="Defensive Stance" and not GotDebuff("Warrior_WarCry") and mana>=10 and Action("Demoralizing Shout") then return;end;
		if stance=="Defensive Stance" and MainHandT and mana>=5 and Action("Revenge") then end;
		if stance=="Battle Stance" and mana>=5 and MainHandT and Action("Overpower") then end;
		if mana>=20 and MainHandT and Action("Counterattack") then end;
	end;
	if stance~="Defensive Stance" and not GotBuff("BattleShout") and mana>=10 and Action("Battle Shout") then return;end;
	if melee() then 
		if (stance=="Battle Stance" or stance=="Berserker Stance") and MainHandT and TPoH<=0.2 and mana>=15 and Action("Execute") then return;end;
		if (stance=="Battle Stance" or stance=="Defensive Stance") and MainHandT then 
			if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" 
			and not GotDebuff("Ability_Gouge") and TPoH>=random() and mana>=10 and Action("Rend") then return;end;
		end;
		if OffHandT=="Shields" and mana>=20 and Action("Shield Slam") then return;end;
		if stance=="Defensive Stance" and OffHandT=="Shields" and mana>=10 and Action("Shield Block") then return;end;
		if stance=="Berserker Stance"and mana>=25+(TRTM*5)and Action("Whirlwind") then return;end;
		if (stance~="Berserker Stance"and(not MainHandT or GotDebuff("Disarm","player")or TRTC==3))and mana>=20-(TRTC*1.5-1)+(TRTM*5)and Action("Thunder Clap") then return;end;
		if stance~="Defensive Stance" and MainHandT and mainSpeed>=2.5-(TRSlam*0.25) and offSpeed>=2.0 and mana>=15 and Action("Slam") then return;end;
		if stance=="Defensive Stance" and not MainHandT and OffHandT=="Shields" and mana>=10+(TRTM*5) and Action("Shield Bash") then return;end;
		if (stance~="Defensive Stance" and not MainHandT) and mana>=10+(TRTM*5) and Action("Pummel") then return;end;
		if mana>=15-TRHS+(TRTM*5)+25 and MainHandT then Action("Heroic Strike");end;
	end;
end;
Attack_Actions()