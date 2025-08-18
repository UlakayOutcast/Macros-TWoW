
-=Serpent Sting=- На всех 
/script local function GDebuff(name,target) if not target then target="target" end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function Act(spell) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell")return ix;end;end;ix=ix-1;end;end;local TH;if UnitExists("target")then TH=UnitHealth("target")/UnitHealthMax("target");else TH=0;end;if not UnitExists("target") or not UnitCanAttack("player","target") or TH==0 then TargetNearestEnemy();end;if UnitAffectingCombat("player") then if UnitAffectingCombat("target") and not GDebuff("Ability_Hunter_Quickshot") then if Act("Serpent Sting") then return;end;else TargetNearestEnemy();end;else CastSpellByName("Serpent Sting");end;

/script 
local function GDebuff(name,target) 
	if not target then target="target" end;
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function Act(spell) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		spellName,spellRank=GetSpellName(ix,"spell");
		if spellName==spell then 
			if GetSpellCooldown(ix,"spell")==0 then 
				CastSpell(ix,"spell")return ix;
			end;
		end;
		ix=ix-1;
	end;
end;
local TH;if UnitExists("target")then TH=UnitHealth("target")/UnitHealthMax("target");else TH=0;end;
if not UnitExists("target") or not UnitCanAttack("player","target") or TH==0 then TargetNearestEnemy();end;
if UnitAffectingCombat("player") then 
	if UnitAffectingCombat("target") and not GDebuff("Ability_Hunter_Quickshot") then 
		if Act("Serpent Sting") then return;end;
	else 
		TargetNearestEnemy();
	end;
else 
	CastSpellByName("Serpent Sting");
end;


-=Viper-Scorpid Sting=- На всех 
/script local function GDebuff(name,target) if not target then target="target" end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function Act(spell) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell")return ix;end;end;ix=ix-1;end;end;local TH;if UnitExists("target")then TH=UnitHealth("target")/UnitHealthMax("target");else TH=0;end;if not UnitExists("target") or not UnitCanAttack("player","target") or TH==0 then TargetNearestEnemy();end;if UnitAffectingCombat("player") then if UnitAffectingCombat("target")then if UnitMana("target")>100 then if not GDebuff("Ability_Hunter_AimedShot") and Act("Viper Sting") then return;else TargetNearestEnemy();end;else if not GDebuff("Ability_Hunter_CriticalShot") and Act("Scorpid Sting") then return;else TargetNearestEnemy();end;end; else TargetNearestEnemy();end;else if UnitMana("target")>100 then CastSpellByName("Viper Sting");else CastSpellByName("Scorpid Sting");end;end;

/script 
local function GDebuff(name,target) 
	if not target then target="target" end;
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function Act(spell) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		spellName,spellRank=GetSpellName(ix,"spell");
		if spellName==spell then 
			if GetSpellCooldown(ix,"spell")==0 then 
				CastSpell(ix,"spell")return ix;
			end;
		end;
		ix=ix-1;
	end;
end;
local TH;if UnitExists("target")then TH=UnitHealth("target")/UnitHealthMax("target");else TH=0;end;
if not UnitExists("target") or not UnitCanAttack("player","target") or TH==0 then TargetNearestEnemy();end;
if UnitAffectingCombat("player") then 
	if UnitAffectingCombat("target")then 
		if UnitMana("target")>100 then 
			if not GDebuff("Ability_Hunter_AimedShot") and Act("Viper Sting") then return;else TargetNearestEnemy();end;
		else 
			if not GDebuff("Ability_Hunter_CriticalShot") and Act("Scorpid Sting") then return;else TargetNearestEnemy();end;
		end; 
	else 
		TargetNearestEnemy();
	end;
else 
	if UnitMana("target")>100 then CastSpellByName("Viper Sting");else CastSpellByName("Scorpid Sting");end;
end;



-=Viper Sting=- На всех 
/script local function GDebuff(name,target) if not target then target="target" end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function Act(spell) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell")return ix;end;end;ix=ix-1;end;end;local TH;if UnitExists("target")then TH=UnitHealth("target")/UnitHealthMax("target");else TH=0;end;if not UnitExists("target") or not UnitCanAttack("player","target") or TH==0 then TargetNearestEnemy();end;if UnitAffectingCombat("player") then if UnitAffectingCombat("target") and not GDebuff("Ability_Hunter_AimedShot") then if Act("Viper Sting") then return;end;else TargetNearestEnemy();end;else CastSpellByName("Viper Sting");end;

/script 
local function GDebuff(name,target) 
	if not target then target="target" end;
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function Act(spell) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		spellName,spellRank=GetSpellName(ix,"spell");
		if spellName==spell then 
			if GetSpellCooldown(ix,"spell")==0 then 
				CastSpell(ix,"spell")return ix;
			end;
		end;
		ix=ix-1;
	end;
end;
local TH;if UnitExists("target")then TH=UnitHealth("target")/UnitHealthMax("target");else TH=0;end;
if not UnitExists("target") or not UnitCanAttack("player","target") or TH==0 then TargetNearestEnemy();end;
if UnitAffectingCombat("player") then 
	if UnitAffectingCombat("target") and not GDebuff("Ability_Hunter_AimedShot") then 
		if Act("Viper Sting") then return;end;
	else 
		TargetNearestEnemy();
	end;
else 
	CastSpellByName("Viper Sting");
end;


-=Scorpid Sting=- На всех 
/script local function GDebuff(name,target) if not target then target="target" end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function Act(spell) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell")return ix;end;end;ix=ix-1;end;end;local TH;if UnitExists("target")then TH=UnitHealth("target")/UnitHealthMax("target");else TH=0;end;if not UnitExists("target") or not UnitCanAttack("player","target") or TH==0 then TargetNearestEnemy();end;if UnitAffectingCombat("player") then if UnitAffectingCombat("target") and not GDebuff("Ability_Hunter_CriticalShot") then if Act("Scorpid Sting") then return;end;else TargetNearestEnemy();end;else CastSpellByName("Scorpid Sting");end;

/script 
local function GDebuff(name,target) 
	if not target then target="target" end;
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function Act(spell) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		spellName,spellRank=GetSpellName(ix,"spell");
		if spellName==spell then 
			if GetSpellCooldown(ix,"spell")==0 then 
				CastSpell(ix,"spell")return ix;
			end;
		end;
		ix=ix-1;
	end;
end;
local TH;if UnitExists("target")then TH=UnitHealth("target")/UnitHealthMax("target");else TH=0;end;
if not UnitExists("target") or not UnitCanAttack("player","target") or TH==0 then TargetNearestEnemy();end;
if UnitAffectingCombat("player") then 
	if UnitAffectingCombat("target") and not GDebuff("Ability_Hunter_CriticalShot") then 
		if Act("Scorpid Sting") then return;end;
	else 
		TargetNearestEnemy();
	end;
else 
	CastSpellByName("Scorpid Sting");
end;