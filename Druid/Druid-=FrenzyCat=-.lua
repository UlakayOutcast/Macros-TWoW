-=Druid FrenzyCat=-

Используются данные из аддона DruidBar, для отслеживания маны
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged() if UnitExists("target") then return not melee() end;end;local function inCombat() return UnitAffectingCombat("player") end;local function GotBuff(name,target) if not target then target="player";end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function GotDebuff(name,target) if not target then target="target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function ActSpell(spell,rank,self) local ix,spellName,spellRank=192 while(ix>0) do if ix==0 then return nil ;else spellName,spellRank=GetSpellName(ix,"spell") if spellName==spell and (spellRank==rank or rank==nil) then if GetSpellCooldown(ix,"spell")==0 then if self then CastSpellByName(spell.."("..rank..")",self) else CastSpell(ix,"spell") end;return true; end;end;ix=ix-1 end;end;end;local function Aura(ID)local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;if active then if not ID then return name;else return string.find(name,ID);end;end;end;function Attack_Actions() local PM=UnitMana("player")local MaxPM=UnitManaMax("player")local OoC=GotBuff("Spell_Shadow_ManaBurn")local TPoH,TH; if UnitExists("target") then TH=UnitHealth("target");TPoH=UnitHealth("target")/UnitHealthMax("target") else TPoH=0; end;local _,_,_,_,TR=GetTalentInfo(2,1);local _,_,_,_,OpenWound=GetTalentInfo(2,1);local ThePM,TheMaxPM=0,0; if DruidBarKey.keepthemana then ThePM=DruidBarKey.keepthemana;TheMaxPM=DruidBarKey.maxmana; end;if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;if not Aura("Bear Form") then if not GotDebuff("Spell_Nature_StarFall") and (ThePM>TheMaxPM*0.33) then  if Aura("Cat Form") then ActSpell("Cat Form");return;end;if ranged() and (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return;end;if not GotDebuff("Spell_Nature_InsectSwarm") and TPoH>0.2 and ActSpell("Insect Swarm") then return;end;if (not GotDebuff("Spell_Nature_StarFall")) and ActSpell("Moonfire") then return;end;else if MaxPM>100 and PM<MaxPM*0.33 and ActSpell("Innervate") then return;end;if not Aura("Cat Form") then ActSpell("Cat Form");return;end;end;end;if Aura("Cat Form") then if not GotBuff("Ability_Mount_JungleTiger") and PM>=30 and ActSpell("Tiger's Fury") then end;end;if (Aura("Bear Form") or Aura("Cat Form")) and not GotDebuff("Spell_Shadow_ImpPhaseShift","player") and not GotDebuff("Spell_Holy_Silence","player") and not GotDebuff("Spell_Shadow_CallofBone","player") then local _,_,_,_,Omen=GetTalentInfo(1,10);if not GotDebuff("Spell_Nature_FaerieFire") or (Omen==1 and not OoC) then if ActSpell("Faerie Fire (Feral)","Rank 4") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; end;end;end;if Aura("Bear Form") then if ranged() and (PM>=5 or OoC) and ActSpell("Feral Charge") then return; end;if melee() and (PM>=30-TR or OoC) and ActSpell("Savage Bite") then end;if melee() and (PM>=20-TR or OoC) and ActSpell("Swipe") then end;if melee() and (PM>=15-TR+(50-TR*2) or OoC) and ActSpell("Maul") then end;end;if Aura("Cat Form") then if melee() then if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" and PM>=30 and not GotDebuff("Ability_GhoulFrenzy") and (GetComboPoints()*20>=math.random(100-(100*TPoH),100) or (OpenWound>=1 and GetComboPoints()>=1)) and ActSpell("Rip") then return; end;if PM>=35 and GetComboPoints()*20>=math.random(100*TPoH,101) and ActSpell("Ferocious Bite") then return; end;if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" and not GotDebuff("Ability_Druid_Disembowel") and (100*TPoH)>=math.random(0,100) and PM>=40-TR and not OoC and ActSpell("Rake") then return; end;if (PM>=45-TR or OoC) and ActSpell("Claw") then return; end;end;end;end;Attack_Actions()

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
local function ranged() if UnitExists("target") then return not melee() end;end;
local function inCombat() return UnitAffectingCombat("player") end;
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
local function ActSpell(spell,rank,self) 
	local ix,spellName,spellRank=192 
	while(ix>0) do 
		if ix==0 then return nil ;
		else 
			spellName,spellRank=GetSpellName(ix,"spell") 
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if GetSpellCooldown(ix,"spell")==0 then 
					if self then CastSpellByName(spell.."("..rank..")",self) 
					else CastSpell(ix,"spell") end;
					return true; 
				end;
			end;
			ix=ix-1 
		end;
	end;
end;
local function Aura(ID)
	local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()
	while(ix>0 and active==nill) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;
	if active then if not ID then return name;else return string.find(name,ID);end;end;
end;
function Attack_Actions() 
	local PM=UnitMana("player")
	local MaxPM=UnitManaMax("player")
	local OoC=GotBuff("Spell_Shadow_ManaBurn")
	local TPoH,TH; if UnitExists("target") then TH=UnitHealth("target");TPoH=UnitHealth("target")/UnitHealthMax("target") else TPoH=0; end;
	local _,_,_,_,TR=GetTalentInfo(2,1);
	local _,_,_,_,OpenWound=GetTalentInfo(2,1);
	local ThePM,TheMaxPM=0,0; if DruidBarKey.keepthemana then ThePM=DruidBarKey.keepthemana;TheMaxPM=DruidBarKey.maxmana; end;
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;
	if not Aura("Bear Form") then 
		if not GotDebuff("Spell_Nature_StarFall") and (ThePM>TheMaxPM*0.33) then  
			if Aura("Cat Form") then ActSpell("Cat Form");return;end;
			if ranged() and (not GotDebuff("Spell_Nature_StarFall") or OoC) and ActSpell("Moonfire") then return;end;
			if not GotDebuff("Spell_Nature_InsectSwarm") and TPoH>0.2 and ActSpell("Insect Swarm") then return;end;
			if (not GotDebuff("Spell_Nature_StarFall")) and ActSpell("Moonfire") then return;end;
		else 
			if MaxPM>100 and PM<MaxPM*0.33 and ActSpell("Innervate") then return;end;
			if not Aura("Cat Form") then ActSpell("Cat Form");return;end;
		end;
	end;
	if Aura("Cat Form") then 
		if not GotBuff("Ability_Mount_JungleTiger") and PM>=30 and ActSpell("Tiger's Fury") then end;
	end;
	if (Aura("Bear Form") or Aura("Cat Form")) and not GotDebuff("Spell_Shadow_ImpPhaseShift","player") and not GotDebuff("Spell_Holy_Silence","player") and not GotDebuff("Spell_Shadow_CallofBone","player") then 
		local _,_,_,_,Omen=GetTalentInfo(1,10);
		if not GotDebuff("Spell_Nature_FaerieFire") or (Omen==1 and not OoC) then 
			if ActSpell("Faerie Fire (Feral)","Rank 4") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; 
			elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; 
			end;
		end;
	end;
	if Aura("Bear Form") then 
		if ranged() and (PM>=5 or OoC) and ActSpell("Feral Charge") then return; end;
		if melee() and (PM>=30-TR or OoC) and ActSpell("Savage Bite") then end;
		if melee() and (PM>=20-TR or OoC) and ActSpell("Swipe") then end;
		if melee() and (PM>=15-TR+(50-TR*2) or OoC) and ActSpell("Maul") then end;
	end;
	if Aura("Cat Form") then 
		if melee() then 
			if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" 
			and PM>=30 and not GotDebuff("Ability_GhoulFrenzy") and (GetComboPoints()*20>=math.random(100-(100*TPoH),100) or (OpenWound>=1 and GetComboPoints()>=1)) and ActSpell("Rip") then return; end;
			if PM>=35 and GetComboPoints()*20>=math.random(100*TPoH,101) and ActSpell("Ferocious Bite") then return; end;
			if UnitCreatureType("target")~="Elemental" and UnitCreatureType("target")~="Mechanical" and UnitCreatureType("target")~="Uncategorized" and UnitCreatureType("target")~="Undead" 
			and not GotDebuff("Ability_Druid_Disembowel") and (100*TPoH)>=math.random(0,100) and PM>=40-TR and not OoC and ActSpell("Rake") then return; end;
			if (PM>=45-TR or OoC) and ActSpell("Claw") then return; end;
		end;
	end;
end;
Attack_Actions()