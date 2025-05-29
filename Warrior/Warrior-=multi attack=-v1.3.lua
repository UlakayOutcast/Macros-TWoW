-=Warrior multi-attack=--=Attack+=-
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged(UI) if not UI then UI="target"end; if UnitExists(UI) then if not CheckInteractDistance(UI,3) and CheckInteractDistance(UI,4) then return true;end;end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GetStance(GS)local N,X=GetNumShapeshiftForms() for X=1,N do local icon,name,activity,hz = GetShapeshiftFormInfo(X);if GS then if GS==name then return activity;end;else if activity==1 then return name;end;end;end;end;local function GBuff(name,target) local tex,cnt for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function GDebuff(name,target) if not target then target="target" end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function Act(spell,sw) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell then if GetSpellCooldown(ix,"spell")>0 then return;end;if sw and sw~=0 then TargetUnit(sw);CastSpell(ix,"spell");TargetLastTarget();return ix;end;if sw==nil then CastSpell(ix,"spell");return ix;end;return true;end;ix=ix-1;end;end;end;local function PoH(tar) return UnitHealth("party1")/UnitHealthMax("party1");end;local function HW(slot)local _,_,_,_,_,RT;local _,_,_,_,_,MHT;local _,_,_,_,_,OHT;if GetInventoryItemLink("player", 18) then local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,RT=GetItemInfo(link);else RT=nil; end;if GetInventoryItemLink("player", 16) then local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,MHT=GetItemInfo(link);else MHT=nil; end;if GetInventoryItemLink("player", 17) then local _,_,link=string.find(GetInventoryItemLink("player", 17),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,OHT=GetItemInfo(link);else OHT=nil; end;if slot=="MainH"and not GDebuff("Disarm","player")then return MHT;end;if slot=="OffH"then return OHT;end;if slot==OHT then return OHT;end;if slot==RT then return RT;end;if slot==RT then return RT;end;if slot==RT then return RT;end;if slot==RT then return RT;end;end;function Attack_Acts() local mana=UnitMana("player");local TPoH; if UnitExists("target") then TPoH=UnitHealth("target")/UnitHealthMax("target"); else TPoH=0; end;local _,_,_,_,TRHS=GetTalentInfo(1,1);local _,_,_,_,TRTM=GetTalentInfo(1,2);local _,_,_,_,TRTC=GetTalentInfo(1,6);local _,_,_,_,TRSlam=GetTalentInfo(1,15);local mainSpeed, offSpeed = UnitAttackSpeed("player");if not offSpeed then offSpeed=mainSpeed;end;local GS=GetStance();if GS=="Defensive Stance" then if UnitExists("party1")then if PoH("party1")<=0.2 and mana>=10 and ranged("party1")and Act("Intervene","party1")then return;end;end;if UnitExists("party2")then if PoH("party2")<=0.2 and mana>=10 and ranged("party2")and Act("Intervene","party2")then return;end;end;if UnitExists("party3")then if PoH("party3")<=0.2 and mana>=10 and ranged("party3")and Act("Intervene","party3")then return;end;end;if UnitExists("party4")then if PoH("party4")<=0.2 and mana>=10 and ranged("party4")and Act("Intervene","party4")then return;end;end;if UnitExists("party5")then if PoH("party5")<=0.2 and mana>=10 and ranged("party5")and Act("Intervene","party5")then return;end;end;end;if UnitHealth("target")/UnitHealthMax("target")<0.2 and Act("Last Stand",0)then if GS~="Defensive Stance"and Act("Defensive Stance")then return;else Act("Last Stand")return;end;end;if (UnitExists("target") and not UnitCanAttack("player","target")) or TPoH==0 then ClearTarget() end;for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack");C=96;return;end;end;if ranged() then if GS=="Berserker Stance" and mana>=10 and Act("Intercept") then return;end;if GS=="Battle Stance" and not inCombat() and Act("Charge") then return;end;if GS=="Defensive Stance" or (GS=="Battle Stance" and (inCombat() or Act("Charge",0)==nil)) or (GS=="Berserker Stance" and (mana<10 or Act("Intercept",0)==nil)) then if HW("Bows") then Act("Shoot Bow");return;end;if HW("Guns") then Act("Shoot Gun");return;end;if HW("Crossbows") then Act("Shoot Crossbow");return;end;if HW("Thrown") then Act("Throw");return;end;end;end;if melee() then if GS=="Berserker Stance"and UnitIsUnit("targettarget","player")and Act("Berserker Rage")then return;end;if (GS=="Battle Stance" or GS=="Berserker Stance")and HW("MainH") and TPoH<=0.2 and mana>=15 and Act("Execute")then return;end;if GS=="Battle Stance"and mana>=5 and HW("MainH") and Act("Overpower") then end;if HW("MainH")and mana>=30 and Act("Mortal Strike") then return;end;if mana>=30 and Act("Bloodthirst") then return;end;if GS=="Defensive Stance"and not UnitIsUnit("targettarget", "player") and Act("Taunt") then return;end;if GS~="Berserker Stance"and (not HW("MainH")or TRTC==3 or not GDebuff("ThunderClap"))and mana>=20-(TRTC*1.5-1) and Act("Thunder Clap") then return;end;if GS=="Defensive Stance"and not GDebuff("Warrior_WarCry") and mana>=10 and Act("Demoralizing Shout") then return;end;if GS=="Defensive Stance"and HW("MainH") and mana>=5 and Act("Revenge") then end;if GS=="Berserker Stance"and UnitIsUnit("targettarget","player")and Act("Berserker Rage")then return;end;if not GBuff("BattleShout")and mana>=10 and Act("Battle Shout")then return;end;if HW("Shields")and mana>=20 and Act("Shield Slam")then return;end;if GS=="Berserker Stance"and HW("MainH")and mana>=25 and Act("Whirlwind")then return;end;if mana>=20 and HW("MainH")and Act("Counterattack") then end;if G~="Berserker Stance"and HW("MainH")then local UCT=UnitCreatureType("target");if UCT~="Elemental"and UCT~="Mechanical"and UCT~="Uncategorized"and UCT~="Undead" and not GDebuff("Ability_Gouge")and TPoH>=random() and mana>=10 and Act("Rend")then return;end;end;if GS=="Defensive Stance"and HW("Shields")and mana>=10 and Act("Shield Block")then return;end;if GS~="Defensive Stance"and HW("MainH")and mainSpeed>=2.4-(TRSlam*0.25)and mainSpeed<=2.6-(TRSlam*0.25)and offSpeed>=2.4-(TRSlam*0.25)and offSpeed<=2.6-(TRSlam*0.25)and mana>=15+(TRTM*5) and Act("Slam")then return;end;if GS=="Defensive Stance"and not HW("MainH")and HW("Shields") and mana>=10+(TRTM*5)and Act("Shield Bash")then return;end;if (GS~="Defensive Stance"and not HW("MainH"))and mana>=10+(TRTM*5)and Act("Pummel")then return;end;if mana>=15-TRHS+(TRTM*5) and HW("MainH")then Act("Heroic Strike");end;end;end;Attack_Acts()
-=-
/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
local function ranged(UI) if not UI then UI="target"end; if UnitExists(UI) then if not CheckInteractDistance(UI,3) and CheckInteractDistance(UI,4) then return true;end;end;end;
local function inCombat() return UnitAffectingCombat("player") end;
local function GetStance(GS)
	local N,X=GetNumShapeshiftForms() 
	for X=1,N do 
		local icon,name,activity,hz = GetShapeshiftFormInfo(X);
		if GS then 
			if GS==name then return activity;end;
		else 
			if activity==1 then return name;end;
		end;
	end;
end;
local function GBuff(name,target) 
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GDebuff(name,target) 
	if not target then target="target" end;
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function Act(spell,sw) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		if ix==0 then return nil;
		else 
			spellName,spellRank=GetSpellName(ix,"spell");
			if spellName==spell then 
				if GetSpellCooldown(ix,"spell")>0 then return;end;
				if sw and sw~=0 then 
					TargetUnit(sw);CastSpell(ix,"spell");TargetLastTarget();return ix;
				end;
				if sw==nil then 
					CastSpell(ix,"spell");return ix;
				end;
				return true;
			end;
			ix=ix-1;
		end;
	end;
end;
local function PoH(tar) return UnitHealth("party1")/UnitHealthMax("party1");end;
local function HW(slot)
	local _,_,_,_,_,RT;
	local _,_,_,_,_,MHT;
	local _,_,_,_,_,OHT;
	if GetInventoryItemLink("player", 18) then local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,RT=GetItemInfo(link);else RT=nil; end;
	if GetInventoryItemLink("player", 16) then local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,MHT=GetItemInfo(link);else MHT=nil; end;
	if GetInventoryItemLink("player", 17) then local _,_,link=string.find(GetInventoryItemLink("player", 17),"(item:%d+:%d+:%d+:%d+)"); _,_,_,_,_,OHT=GetItemInfo(link);else OHT=nil; end;
	if slot=="MainH"and not GDebuff("Disarm","player")then return MHT;end;
	if slot=="OffH"then return OHT;end;
	if slot==OHT then return OHT;end;
	if slot==RT then return RT;end;
	if slot==RT then return RT;end;
	if slot==RT then return RT;end;
	if slot==RT then return RT;end;
end;
function Attack_Acts() 
	local mana=UnitMana("player");
	local TPoH; if UnitExists("target") then TPoH=UnitHealth("target")/UnitHealthMax("target"); else TPoH=0; end;
	local _,_,_,_,TRHS=GetTalentInfo(1,1);
	local _,_,_,_,TRTM=GetTalentInfo(1,2);
	local _,_,_,_,TRTC=GetTalentInfo(1,6);
	local _,_,_,_,TRSlam=GetTalentInfo(1,15);
	local mainSpeed, offSpeed = UnitAttackSpeed("player");if not offSpeed then offSpeed=mainSpeed;end;
	local GS=GetStance();
	if GS=="Defensive Stance" then 
		if UnitExists("party1")then if PoH("party1")<=0.2 and mana>=10 and ranged("party1")and Act("Intervene","party1")then return;end;end;
		if UnitExists("party2")then if PoH("party2")<=0.2 and mana>=10 and ranged("party2")and Act("Intervene","party2")then return;end;end;
		if UnitExists("party3")then if PoH("party3")<=0.2 and mana>=10 and ranged("party3")and Act("Intervene","party3")then return;end;end;
		if UnitExists("party4")then if PoH("party4")<=0.2 and mana>=10 and ranged("party4")and Act("Intervene","party4")then return;end;end;
		if UnitExists("party5")then if PoH("party5")<=0.2 and mana>=10 and ranged("party5")and Act("Intervene","party5")then return;end;end;
	end;
	if UnitHealth("target")/UnitHealthMax("target")<0.2 and Act("Last Stand",0)then if GS~="Defensive Stance"and Act("Defensive Stance")then return;else Act("Last Stand")return;end;end;
	if (UnitExists("target") and not UnitCanAttack("player","target")) or TPoH==0 then ClearTarget() end;
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack");C=96;return;end;end;
	if ranged() then 
		if GS=="Berserker Stance" and mana>=10 and Act("Intercept") then return;end;
		if GS=="Battle Stance" and not inCombat() and Act("Charge") then return;end;
		if GS=="Defensive Stance" or (GS=="Battle Stance" and (inCombat() or Act("Charge",0)==nil)) or (GS=="Berserker Stance" and (mana<10 or Act("Intercept",0)==nil)) then 
			if HW("Bows") then Act("Shoot Bow");return;end;
			if HW("Guns") then Act("Shoot Gun");return;end;
			if HW("Crossbows") then Act("Shoot Crossbow");return;end;
			if HW("Thrown") then Act("Throw");return;end;
		end;
	end;
	if melee() then 
		if GS=="Berserker Stance"and UnitIsUnit("targettarget","player")and Act("Berserker Rage")then return;end;
		if (GS=="Battle Stance" or GS=="Berserker Stance")and HW("MainH") and TPoH<=0.2 and mana>=15 and Act("Execute")then return;end;
		if GS=="Battle Stance"and mana>=5 and HW("MainH") and Act("Overpower") then end;
		if HW("MainH")and mana>=30 and Act("Mortal Strike") then return;end;
		if mana>=30 and Act("Bloodthirst") then return;end;
		if GS=="Defensive Stance"and not UnitIsUnit("targettarget", "player") and Act("Taunt") then return;end;
		if GS~="Berserker Stance"and (not HW("MainH")or TRTC==3 or not GDebuff("ThunderClap"))and mana>=20-(TRTC*1.5-1) and Act("Thunder Clap") then return;end;
		if GS=="Defensive Stance"and not GDebuff("Warrior_WarCry") and mana>=10 and Act("Demoralizing Shout") then return;end;
		if GS=="Defensive Stance"and HW("MainH") and mana>=5 and Act("Revenge") then end;
		if GS=="Berserker Stance"and UnitIsUnit("targettarget","player")and Act("Berserker Rage")then return;end;
		if not GBuff("BattleShout")and mana>=10 and Act("Battle Shout")then return;end;
		if HW("Shields")and mana>=20 and Act("Shield Slam")then return;end;
		if GS=="Berserker Stance"and HW("MainH")and mana>=25 and Act("Whirlwind")then return;end;
		if mana>=20 and HW("MainH")and Act("Counterattack") then end;
		if G~="Berserker Stance"and HW("MainH")then 
			local UCT=UnitCreatureType("target");if UCT~="Elemental"and UCT~="Mechanical"and UCT~="Uncategorized"and UCT~="Undead" 
			and not GDebuff("Ability_Gouge")and TPoH>=random() and mana>=10 and Act("Rend")then return;end;
		end;
		if GS=="Defensive Stance"and HW("Shields")and mana>=10 and Act("Shield Block")then return;end;
		if GS~="Defensive Stance"and HW("MainH")and mainSpeed>=2.4-(TRSlam*0.25)and mainSpeed<=2.6-(TRSlam*0.25)and offSpeed>=2.4-(TRSlam*0.25)and offSpeed<=2.6-(TRSlam*0.25)and mana>=15+(TRTM*5) and Act("Slam")then return;end;
		if GS=="Defensive Stance"and not HW("MainH")and HW("Shields") and mana>=10+(TRTM*5)and Act("Shield Bash")then return;end;
		if (GS~="Defensive Stance"and not HW("MainH"))and mana>=10+(TRTM*5)and Act("Pummel")then return;end;
		if mana>=15-TRHS+(TRTM*5) and HW("MainH")then Act("Heroic Strike");end;
	end;
end;
Attack_Acts()