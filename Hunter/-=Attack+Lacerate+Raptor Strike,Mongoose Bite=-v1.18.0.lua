-=Attack+Lacerate+Raptor Strike,Mongoose Bite=-v1.18.0
-=ALRM=-
/script local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==0 then return ix;end;if sw==1 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;end;function Attack_Actions() local mana,X,C=UnitMana("player");local _,_,_,_,StringingNettle=GetTalentInfo(3,11);if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;if UnitExists("pettarget") and ActSpell("Kill Command") then return;end;for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then UseAction(C);C=96;return;end;end;if not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("RavenForm") and ActSpell("Aspect of the Wolf") then return;end;if not GotDebuff("Ability_Hunter_Quickshot") and ActSpell("Lacerate") then return;end;if (StringingNettle==0 or not GotDebuff("spell_lacerate")) and ActSpell("Mongoose Bite") then return;end;ActSpell("Raptor Strike"); if nil then CastSpellByName("Raptor Strike");end;end;Attack_Actions() 

/script 
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
	local mana,X,C=UnitMana("player");
	local _,_,_,_,StringingNettle=GetTalentInfo(3,11);
	if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;
	if UnitExists("pettarget") and ActSpell("Kill Command") then return;end;
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then UseAction(C);C=96;return;end;end;
	if not GotBuff("WhiteDireWolf") and not GotBuff("AspectOfTheMonkey") and not GotBuff("RavenForm") and ActSpell("Aspect of the Wolf") then return;end;
	if not GotDebuff("Ability_Hunter_Quickshot") and ActSpell("Lacerate") then return;end;
	if (StringingNettle==0 or not GotDebuff("spell_lacerate")) and ActSpell("Mongoose Bite") then return;end;
	ActSpell("Raptor Strike"); if nil then CastSpellByName("Raptor Strike");end;
end;
Attack_Actions() 