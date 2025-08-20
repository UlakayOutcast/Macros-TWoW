-=Attack + Raptor Strike + Mongoose Bite, Lacerate=- v1.18.0
-=ARML=-
/script local function inCombat() return UnitAffectingCombat("player") end;local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==0 then return ix;end;if sw==1 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;end;function Attack_Actions() local PM=UnitMana("player");local _,_,_,_,Resourcefulness=GetTalentInfo(3,2);Resourcefulness=1-Resourcefulness*0.02;if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then UseAction(C);C=96;return;end;end;if not UnitExists("pettarget") and UnitAffectingCombat("target") then PetAttack();end;if PM>=86 and UnitExists("pettarget") and not GotDebuff("Spell_Shadow_Teleport","player") and ActSpell("Kill Command") then return;end;if not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("RavenForm") and ActSpell("Aspect of the Wolf") then return;end;if ActSpell("Raptor Strike",nil,0) then if PM>=100*Resourcefulness and ActSpell("Raptor Strike","Rank 8") then end;if PM>=85*Resourcefulness and ActSpell("Raptor Strike","Rank 7") then end;if PM>=70*Resourcefulness and ActSpell("Raptor Strike","Rank 6") then end;if PM>=55*Resourcefulness and ActSpell("Raptor Strike","Rank 5") then end;if PM>=45*Resourcefulness and ActSpell("Raptor Strike","Rank 4") then end;if PM>=35*Resourcefulness and ActSpell("Raptor Strike","Rank 3") then end;if PM>=25*Resourcefulness and ActSpell("Raptor Strike","Rank 2") then end;if PM>=15*Resourcefulness and ActSpell("Raptor Strike","Rank 1") then end;end;if ActSpell("Mongoose Bite") then return;end;if ActSpell("Mongoose Bite",nil,0) then if PM>=65*Resourcefulness and ActSpell("Mongoose Bite","Rank 4") then return;end;if PM>=50*Resourcefulness and ActSpell("Mongoose Bite","Rank 3") then return;end;if PM>=40*Resourcefulness and ActSpell("Mongoose Bite","Rank 2") then return;end;if PM>=30*Resourcefulness and ActSpell("Mongoose Bite","Rank 1") then return;end;end;if PM>=137*Resourcefulness and ActSpell("Lacerate") then return;end;if nil then CastSpellByName("Raptor Strike");end;end;Attack_Actions() 

/script 
local function inCombat() return UnitAffectingCombat("player") end;
local function GotDebuff(name,target) 
	if not target then target = "target" end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
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
	if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then UseAction(C);C=96;return;end;end;
	if not UnitExists("pettarget") and UnitAffectingCombat("target") then PetAttack();end;
	if PM>=86 and UnitExists("pettarget") and not GotDebuff("Spell_Shadow_Teleport","player") and ActSpell("Kill Command") then return;end;
	if not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("RavenForm") and ActSpell("Aspect of the Wolf") then return;end;
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
	if ActSpell("Mongoose Bite") then return;end;
	if ActSpell("Mongoose Bite",nil,0) then 
		if PM>=65*Resourcefulness and ActSpell("Mongoose Bite","Rank 4") then return;end;
		if PM>=50*Resourcefulness and ActSpell("Mongoose Bite","Rank 3") then return;end;
		if PM>=40*Resourcefulness and ActSpell("Mongoose Bite","Rank 2") then return;end;
		if PM>=30*Resourcefulness and ActSpell("Mongoose Bite","Rank 1") then return;end;
	end;
	if PM>=137*Resourcefulness and ActSpell("Lacerate") then return;end;
	if nil then CastSpellByName("Raptor Strike");end;
end;
Attack_Actions() 