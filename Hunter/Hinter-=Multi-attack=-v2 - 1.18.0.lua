Attak + Mongoose Bite, Raptor Strike, Lacerate. Auto Shot + Arcane Shot, Serpent Sting, Thrown
-=ARMLAAS=- 
-=- Arcane Shot - Serpent Sting
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",2);end;end;local function ranged() if UnitExists("target") then return not melee();end;end;local function inCombat() return UnitAffectingCombat("player");end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==0 then return ix;end;if sw==1 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;end;function Attack_Actions() local PM=UnitMana("player");local _,_,_,_,Resourcefulness=GetTalentInfo(3,2);Resourcefulness=1-Resourcefulness*0.02;local _,_,_,_,Efficiency=GetTalentInfo(2,1);Efficiency=1-Efficiency*0.02;if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;if not UnitExists("pettarget") and UnitAffectingCombat("target") then PetAttack();end;if melee() then for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack");C=96;return;end;end;if not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("RavenForm") and ActSpell("Aspect of the Wolf") then return;end;if PM>=137*Resourcefulness and ActSpell("Lacerate") then return;end;if ActSpell("Raptor Strike",nil,0) then if PM>=100*Resourcefulness and ActSpell("Raptor Strike","Rank 8") then end;if PM>=85*Resourcefulness and ActSpell("Raptor Strike","Rank 7") then end;if PM>=70*Resourcefulness and ActSpell("Raptor Strike","Rank 6") then end;if PM>=55*Resourcefulness and ActSpell("Raptor Strike","Rank 5") then end;if PM>=45*Resourcefulness and ActSpell("Raptor Strike","Rank 4") then end;if PM>=35*Resourcefulness and ActSpell("Raptor Strike","Rank 3") then end;if PM>=25*Resourcefulness and ActSpell("Raptor Strike","Rank 2") then end;if PM>=15*Resourcefulness and ActSpell("Raptor Strike","Rank 1") then end;end;if ActSpell("Mongoose Bite",nil,0) then if PM>=65*Resourcefulness and ActSpell("Mongoose Bite","Rank 4") then return;end;if PM>=50*Resourcefulness and ActSpell("Mongoose Bite","Rank 3") then return;end;if PM>=40*Resourcefulness and ActSpell("Mongoose Bite","Rank 2") then return;end;if PM>=30*Resourcefulness and ActSpell("Mongoose Bite","Rank 1") then return;end;end;if PM>=86 and UnitExists("pettarget") and not GotDebuff("Spell_Shadow_Teleport","player") and ActSpell("Kill Command") then return;end;end;if ranged() then if not GotBuff("RavenForm") and not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("JungleTiger") and ActSpell("Aspect of the Hawk") then return;end;local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);if itemtype == "Bows" or itemtype == "Guns" or itemtype == "Crossbows" then X=1;for C=1,96 do if itemTexture==GetActionTexture(C) then if IsAutoRepeatAction(C) then X=0;end;break;end;end; if X==1 then CastSpellByName("Auto Shot");return;end;if PM>=120 then ActSpell("Baited Shot");end;if ActSpell("Arcane Shot",nil,0) then if PM>=190*Efficiency and ActSpell("Arcane Shot","Rank 8") then return;end;if PM>=160*Efficiency and ActSpell("Arcane Shot","Rank 7") then return;end;if PM>=135*Efficiency and ActSpell("Arcane Shot","Rank 6") then return;end;if PM>=105*Efficiency and ActSpell("Arcane Shot","Rank 5") then return;end;if PM>=80*Efficiency and ActSpell("Arcane Shot","Rank 4") then return;end;if PM>=50*Efficiency and ActSpell("Arcane Shot","Rank 3") then return;end;if PM>=35*Efficiency and ActSpell("Arcane Shot","Rank 2") then return;end;if PM>=25*Efficiency and ActSpell("Arcane Shot","Rank 1") then return;end;end;if not GotDebuff("Ability_Hunter_Quickshot") and not GotDebuff("Ability_Hunter_CriticalShot") and not GotDebuff("Ability_Hunter_AimedShot") and UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" then if ActSpell("Serpent Sting",nil,0) then if PM>=230*Efficiency and ActSpell("Serpent Sting","Rank 8") then return;end;if PM>=190*Efficiency and ActSpell("Serpent Sting","Rank 7") then return;end;if PM>=150*Efficiency and ActSpell("Serpent Sting","Rank 6") then return;end;if PM>=115*Efficiency and ActSpell("Serpent Sting","Rank 5") then return;end;if PM>=80*Efficiency and ActSpell("Serpent Sting","Rank 4") then return;end;if PM>=50*Efficiency and ActSpell("Serpent Sting","Rank 3") then return;end;if PM>=30*Efficiency and ActSpell("Serpent Sting","Rank 2") then return;end;if PM>=15*Efficiency and ActSpell("Serpent Sting","Rank 1") then return;end;end;end;end;if itemtype == "Thrown" then if ActSpell("Throw") then return;end;if UnitPowerType("target")==0 and UnitMana("target")/UnitManaMax("target")>0.1 then if not GotDebuff("Ability_Hunter_AimedShot") then if PM>=215*Efficiency and ActSpell("Viper Sting","Rank 3") then return;end;if PM>=175*Efficiency and ActSpell("Viper Sting","Rank 2") then return;end;if PM>=135*Efficiency and ActSpell("Viper Sting","Rank 1") then return;end;end;else if not GotDebuff("Ability_Hunter_CriticalShot") and PM>=70*Efficiency and ActSpell("Scorpid Sting") then return;end;end;end;if PM>=86 and UnitExists("pettarget") and not GotDebuff("Spell_Shadow_Teleport","player") and ActSpell("Kill Command") then return;end;end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",2);end;end;
local function ranged() if UnitExists("target") then return not melee();end;end;
local function inCombat() return UnitAffectingCombat("player");end;
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target = "target" end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function ActSpell(spell,rank,sw) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		if ix==0 then return nil;
		else 
			spellName,spellRank=GetSpellName(ix,"spell");
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if sw==0 then return ix;end;
				if sw==1 then return GetSpellCooldown(ix,"spell");end;
				if sw==nil then 
					if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;
				end;
			end;
			ix=ix-1;
		end;
	end;
end;
function Attack_Actions() 
	local PM=UnitMana("player");
	local _,_,_,_,Resourcefulness=GetTalentInfo(3,2);Resourcefulness=1-Resourcefulness*0.02;
	local _,_,_,_,Efficiency=GetTalentInfo(2,1);Efficiency=1-Efficiency*0.02;
	if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;
	if not UnitExists("pettarget") and UnitAffectingCombat("target") then PetAttack();end;
	if melee() then 
		for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack");C=96;return;end;end;
		if not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("RavenForm") and ActSpell("Aspect of the Wolf") then return;end;
		if PM>=137*Resourcefulness and ActSpell("Lacerate") then return;end;
		if ActSpell("Raptor Strike",nil,0) then 
			if PM>=100*Resourcefulness and ActSpell("Raptor Strike","Rank 8") then end;
			if PM>=85*Resourcefulness and ActSpell("Raptor Strike","Rank 7") then end;
			if PM>=70*Resourcefulness and ActSpell("Raptor Strike","Rank 6") then end;
			if PM>=55*Resourcefulness and ActSpell("Raptor Strike","Rank 5") then end;
			if PM>=45*Resourcefulness and ActSpell("Raptor Strike","Rank 4") then end;
			if PM>=35*Resourcefulness and ActSpell("Raptor Strike","Rank 3") then end;
			if PM>=25*Resourcefulness and ActSpell("Raptor Strike","Rank 2") then end;
			if PM>=15*Resourcefulness and ActSpell("Raptor Strike","Rank 1") then end;
		end;
		if ActSpell("Mongoose Bite",nil,0) then 
			if PM>=65*Resourcefulness and ActSpell("Mongoose Bite","Rank 4") then return;end;
			if PM>=50*Resourcefulness and ActSpell("Mongoose Bite","Rank 3") then return;end;
			if PM>=40*Resourcefulness and ActSpell("Mongoose Bite","Rank 2") then return;end;
			if PM>=30*Resourcefulness and ActSpell("Mongoose Bite","Rank 1") then return;end;
		end;
		if PM>=86 and UnitExists("pettarget") and not GotDebuff("Spell_Shadow_Teleport","player") and ActSpell("Kill Command") then return;end;
	end;
	if ranged() then 
		if not GotBuff("RavenForm") and not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("JungleTiger") and ActSpell("Aspect of the Hawk") then return;end;
		local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")
		local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);
		if itemtype == "Bows" or itemtype == "Guns" or itemtype == "Crossbows" then 
			X=1;for C=1,96 do if itemTexture==GetActionTexture(C) then if IsAutoRepeatAction(C) then X=0;end;break;end;end; if X==1 then CastSpellByName("Auto Shot");return;end;
			if PM>=120 then ActSpell("Baited Shot");end;
			if ActSpell("Arcane Shot",nil,0) then 
				if PM>=190*Efficiency and ActSpell("Arcane Shot","Rank 8") then return;end;
				if PM>=160*Efficiency and ActSpell("Arcane Shot","Rank 7") then return;end;
				if PM>=135*Efficiency and ActSpell("Arcane Shot","Rank 6") then return;end;
				if PM>=105*Efficiency and ActSpell("Arcane Shot","Rank 5") then return;end;
				if PM>=80*Efficiency and ActSpell("Arcane Shot","Rank 4") then return;end;
				if PM>=50*Efficiency and ActSpell("Arcane Shot","Rank 3") then return;end;
				if PM>=35*Efficiency and ActSpell("Arcane Shot","Rank 2") then return;end;
				if PM>=25*Efficiency and ActSpell("Arcane Shot","Rank 1") then return;end;
			end;
			if not GotDebuff("Ability_Hunter_Quickshot") and not GotDebuff("Ability_Hunter_CriticalShot") and not GotDebuff("Ability_Hunter_AimedShot") 
			and UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" then 
				if ActSpell("Serpent Sting",nil,0) then 
					if PM>=230*Efficiency and ActSpell("Serpent Sting","Rank 8") then return;end;
					if PM>=190*Efficiency and ActSpell("Serpent Sting","Rank 7") then return;end;
					if PM>=150*Efficiency and ActSpell("Serpent Sting","Rank 6") then return;end;
					if PM>=115*Efficiency and ActSpell("Serpent Sting","Rank 5") then return;end;
					if PM>=80*Efficiency and ActSpell("Serpent Sting","Rank 4") then return;end;
					if PM>=50*Efficiency and ActSpell("Serpent Sting","Rank 3") then return;end;
					if PM>=30*Efficiency and ActSpell("Serpent Sting","Rank 2") then return;end;
					if PM>=15*Efficiency and ActSpell("Serpent Sting","Rank 1") then return;end;
				end;
			end;
		end;
		if itemtype == "Thrown" then 
			if ActSpell("Throw") then return;end;
			if UnitPowerType("target")==0 and UnitMana("target")/UnitManaMax("target")>0.1 then 
				if not GotDebuff("Ability_Hunter_AimedShot") then 
					if PM>=215*Efficiency and ActSpell("Viper Sting","Rank 3") then return;end;
					if PM>=175*Efficiency and ActSpell("Viper Sting","Rank 2") then return;end;
					if PM>=135*Efficiency and ActSpell("Viper Sting","Rank 1") then return;end;
				end;
			else 
				if not GotDebuff("Ability_Hunter_CriticalShot") and PM>=70*Efficiency and ActSpell("Scorpid Sting") then return;end;
			end;
		end;
		if PM>=86 and UnitExists("pettarget") and not GotDebuff("Spell_Shadow_Teleport","player") and ActSpell("Kill Command") then return;end;
	end;
end;
Attack_Actions() 

-=-

-=ARMLASA=-
-=- Serpent Sting - Arcane Shot
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",2);end;end;local function ranged() if UnitExists("target") then return not melee();end;end;local function inCombat() return UnitAffectingCombat("player");end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==0 then return ix;end;if sw==1 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;end;function Attack_Actions() local PM=UnitMana("player");local _,_,_,_,Resourcefulness=GetTalentInfo(3,2);Resourcefulness=1-Resourcefulness*0.02;local _,_,_,_,Efficiency=GetTalentInfo(2,1);Efficiency=1-Efficiency*0.02;if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;if not UnitExists("pettarget") and UnitAffectingCombat("target") then PetAttack();end;if melee() then for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack");C=96;return;end;end;if not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("RavenForm") and ActSpell("Aspect of the Wolf") then return;end;if PM>=137*Resourcefulness and ActSpell("Lacerate") then return;end;if ActSpell("Raptor Strike",nil,0) then if PM>=100*Resourcefulness and ActSpell("Raptor Strike","Rank 8") then end;if PM>=85*Resourcefulness and ActSpell("Raptor Strike","Rank 7") then end;if PM>=70*Resourcefulness and ActSpell("Raptor Strike","Rank 6") then end;if PM>=55*Resourcefulness and ActSpell("Raptor Strike","Rank 5") then end;if PM>=45*Resourcefulness and ActSpell("Raptor Strike","Rank 4") then end;if PM>=35*Resourcefulness and ActSpell("Raptor Strike","Rank 3") then end;if PM>=25*Resourcefulness and ActSpell("Raptor Strike","Rank 2") then end;if PM>=15*Resourcefulness and ActSpell("Raptor Strike","Rank 1") then end;end;if ActSpell("Mongoose Bite",nil,0) then if PM>=65*Resourcefulness and ActSpell("Mongoose Bite","Rank 4") then return;end;if PM>=50*Resourcefulness and ActSpell("Mongoose Bite","Rank 3") then return;end;if PM>=40*Resourcefulness and ActSpell("Mongoose Bite","Rank 2") then return;end;if PM>=30*Resourcefulness and ActSpell("Mongoose Bite","Rank 1") then return;end;end;if PM>=86 and UnitExists("pettarget") and not GotDebuff("Spell_Shadow_Teleport","player") and ActSpell("Kill Command") then return;end;end;if ranged() then if not GotBuff("RavenForm") and not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("JungleTiger") and ActSpell("Aspect of the Hawk") then return;end;local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);if itemtype == "Bows" or itemtype == "Guns" or itemtype == "Crossbows" then X=1;for C=1,96 do if itemTexture==GetActionTexture(C) then if IsAutoRepeatAction(C) then X=0;end;break;end;end; if X==1 then CastSpellByName("Auto Shot");return;end;if PM>=120 then ActSpell("Baited Shot");end;if not GotDebuff("Ability_Hunter_Quickshot") and not GotDebuff("Ability_Hunter_CriticalShot") and not GotDebuff("Ability_Hunter_AimedShot") and UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" then if ActSpell("Serpent Sting",nil,0) then if PM>=230*Efficiency and ActSpell("Serpent Sting","Rank 8") then return;end;if PM>=190*Efficiency and ActSpell("Serpent Sting","Rank 7") then return;end;if PM>=150*Efficiency and ActSpell("Serpent Sting","Rank 6") then return;end;if PM>=115*Efficiency and ActSpell("Serpent Sting","Rank 5") then return;end;if PM>=80*Efficiency and ActSpell("Serpent Sting","Rank 4") then return;end;if PM>=50*Efficiency and ActSpell("Serpent Sting","Rank 3") then return;end;if PM>=30*Efficiency and ActSpell("Serpent Sting","Rank 2") then return;end;if PM>=15*Efficiency and ActSpell("Serpent Sting","Rank 1") then return;end;end;end;if ActSpell("Arcane Shot",nil,0) then if PM>=190*Efficiency and ActSpell("Arcane Shot","Rank 8") then return;end;if PM>=160*Efficiency and ActSpell("Arcane Shot","Rank 7") then return;end;if PM>=135*Efficiency and ActSpell("Arcane Shot","Rank 6") then return;end;if PM>=105*Efficiency and ActSpell("Arcane Shot","Rank 5") then return;end;if PM>=80*Efficiency and ActSpell("Arcane Shot","Rank 4") then return;end;if PM>=50*Efficiency and ActSpell("Arcane Shot","Rank 3") then return;end;if PM>=35*Efficiency and ActSpell("Arcane Shot","Rank 2") then return;end;if PM>=25*Efficiency and ActSpell("Arcane Shot","Rank 1") then return;end;end;end;if itemtype == "Thrown" then if ActSpell("Throw") then return;end;if UnitPowerType("target")==0 and UnitMana("target")/UnitManaMax("target")>0.1 then if not GotDebuff("Ability_Hunter_AimedShot") then if PM>=215*Efficiency and ActSpell("Viper Sting","Rank 3") then return;end;if PM>=175*Efficiency and ActSpell("Viper Sting","Rank 2") then return;end;if PM>=135*Efficiency and ActSpell("Viper Sting","Rank 1") then return;end;end;else if not GotDebuff("Ability_Hunter_CriticalShot") and PM>=70*Efficiency and ActSpell("Scorpid Sting") then return;end;end;end;if PM>=86 and UnitExists("pettarget") and not GotDebuff("Spell_Shadow_Teleport","player") and ActSpell("Kill Command") then return;end;end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",2);end;end;
local function ranged() if UnitExists("target") then return not melee();end;end;
local function inCombat() return UnitAffectingCombat("player");end;
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target = "target" end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function ActSpell(spell,rank,sw) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		if ix==0 then return nil;
		else 
			spellName,spellRank=GetSpellName(ix,"spell");
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if sw==0 then return ix;end;
				if sw==1 then return GetSpellCooldown(ix,"spell");end;
				if sw==nil then 
					if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;
				end;
			end;
			ix=ix-1;
		end;
	end;
end;
function Attack_Actions() 
	local PM=UnitMana("player");
	local _,_,_,_,Resourcefulness=GetTalentInfo(3,2);Resourcefulness=1-Resourcefulness*0.02;
	local _,_,_,_,Efficiency=GetTalentInfo(2,1);Efficiency=1-Efficiency*0.02;
	if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;
	if not UnitExists("pettarget") and UnitAffectingCombat("target") then PetAttack();end;
	if melee() then 
		for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack");C=96;return;end;end;
		if not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("RavenForm") and ActSpell("Aspect of the Wolf") then return;end;
		if PM>=137*Resourcefulness and ActSpell("Lacerate") then return;end;
		if ActSpell("Raptor Strike",nil,0) then 
			if PM>=100*Resourcefulness and ActSpell("Raptor Strike","Rank 8") then end;
			if PM>=85*Resourcefulness and ActSpell("Raptor Strike","Rank 7") then end;
			if PM>=70*Resourcefulness and ActSpell("Raptor Strike","Rank 6") then end;
			if PM>=55*Resourcefulness and ActSpell("Raptor Strike","Rank 5") then end;
			if PM>=45*Resourcefulness and ActSpell("Raptor Strike","Rank 4") then end;
			if PM>=35*Resourcefulness and ActSpell("Raptor Strike","Rank 3") then end;
			if PM>=25*Resourcefulness and ActSpell("Raptor Strike","Rank 2") then end;
			if PM>=15*Resourcefulness and ActSpell("Raptor Strike","Rank 1") then end;
		end;
		if ActSpell("Mongoose Bite",nil,0) then 
			if PM>=65*Resourcefulness and ActSpell("Mongoose Bite","Rank 4") then return;end;
			if PM>=50*Resourcefulness and ActSpell("Mongoose Bite","Rank 3") then return;end;
			if PM>=40*Resourcefulness and ActSpell("Mongoose Bite","Rank 2") then return;end;
			if PM>=30*Resourcefulness and ActSpell("Mongoose Bite","Rank 1") then return;end;
		end;
		if PM>=86 and UnitExists("pettarget") and not GotDebuff("Spell_Shadow_Teleport","player") and ActSpell("Kill Command") then return;end;
	end;
	if ranged() then 
		if not GotBuff("RavenForm") and not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("JungleTiger") and ActSpell("Aspect of the Hawk") then return;end;
		local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")
		local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);
		if itemtype == "Bows" or itemtype == "Guns" or itemtype == "Crossbows" then 
			X=1;for C=1,96 do if itemTexture==GetActionTexture(C) then if IsAutoRepeatAction(C) then X=0;end;break;end;end; if X==1 then CastSpellByName("Auto Shot");return;end;
			if PM>=120 then ActSpell("Baited Shot");end;
			if not GotDebuff("Ability_Hunter_Quickshot") and not GotDebuff("Ability_Hunter_CriticalShot") and not GotDebuff("Ability_Hunter_AimedShot") 
			and UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" then 
				if ActSpell("Serpent Sting",nil,0) then 
					if PM>=230*Efficiency and ActSpell("Serpent Sting","Rank 8") then return;end;
					if PM>=190*Efficiency and ActSpell("Serpent Sting","Rank 7") then return;end;
					if PM>=150*Efficiency and ActSpell("Serpent Sting","Rank 6") then return;end;
					if PM>=115*Efficiency and ActSpell("Serpent Sting","Rank 5") then return;end;
					if PM>=80*Efficiency and ActSpell("Serpent Sting","Rank 4") then return;end;
					if PM>=50*Efficiency and ActSpell("Serpent Sting","Rank 3") then return;end;
					if PM>=30*Efficiency and ActSpell("Serpent Sting","Rank 2") then return;end;
					if PM>=15*Efficiency and ActSpell("Serpent Sting","Rank 1") then return;end;
				end;
			end;
			if ActSpell("Arcane Shot",nil,0) then 
				if PM>=190*Efficiency and ActSpell("Arcane Shot","Rank 8") then return;end;
				if PM>=160*Efficiency and ActSpell("Arcane Shot","Rank 7") then return;end;
				if PM>=135*Efficiency and ActSpell("Arcane Shot","Rank 6") then return;end;
				if PM>=105*Efficiency and ActSpell("Arcane Shot","Rank 5") then return;end;
				if PM>=80*Efficiency and ActSpell("Arcane Shot","Rank 4") then return;end;
				if PM>=50*Efficiency and ActSpell("Arcane Shot","Rank 3") then return;end;
				if PM>=35*Efficiency and ActSpell("Arcane Shot","Rank 2") then return;end;
				if PM>=25*Efficiency and ActSpell("Arcane Shot","Rank 1") then return;end;
			end;
		end;
		if itemtype == "Thrown" then 
			if ActSpell("Throw") then return;end;
			if UnitPowerType("target")==0 and UnitMana("target")/UnitManaMax("target")>0.1 then 
				if not GotDebuff("Ability_Hunter_AimedShot") then 
					if PM>=215*Efficiency and ActSpell("Viper Sting","Rank 3") then return;end;
					if PM>=175*Efficiency and ActSpell("Viper Sting","Rank 2") then return;end;
					if PM>=135*Efficiency and ActSpell("Viper Sting","Rank 1") then return;end;
				end;
			else 
				if not GotDebuff("Ability_Hunter_CriticalShot") and PM>=70*Efficiency and ActSpell("Scorpid Sting") then return;end;
			end;
		end;
		if PM>=86 and UnitExists("pettarget") and not GotDebuff("Spell_Shadow_Teleport","player") and ActSpell("Kill Command") then return;end;
	end;
end;
Attack_Actions() 