-=Corruption=- На всех 
/script local function GDebuff(name,target) if not target then target="target" end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function Act(spell) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell")return ix;end;end;ix=ix-1;end;end;local TH;if UnitExists("target")then TH=UnitHealth("target")/UnitHealthMax("target");else TH=0;end;if not UnitExists("target") or not UnitCanAttack("player","target") or TH==0 then TargetNearestEnemy();end;if UnitAffectingCombat("player") then if UnitAffectingCombat("target") and not GDebuff("Spell_Shadow_AbominationExplosion") then if Act("Corruption") then TargetNearestEnemy();end;else TargetNearestEnemy();end;else CastSpellByName("Corruption");end;
-=-
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
	if UnitAffectingCombat("target") and not GDebuff("Spell_Shadow_AbominationExplosion") then 
		if Act("Corruption") then TargetNearestEnemy();end;
	else 
		TargetNearestEnemy();
	end;
else 
	CastSpellByName("Corruption");
end;