-=Insect Swarm=- На всех 
/script local function GotBuff(name,target) if not target then target="player";end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function GotDebuff(name,target) if not target then target="target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;if not UnitExists("target") or not UnitCanAttack("player","target") then TargetNearestEnemy();end;if UnitExists("target")then local OoC=GotBuff("Spell_Shadow_ManaBurn")if ( UnitAffectingCombat("player") and UnitAffectingCombat("target") and (not GotDebuff("Spell_Nature_InsectSwarm") or OoC) ) or not UnitAffectingCombat("player") then local TH=UnitHealth("target");local PM=UnitMana("player")local _,_,_,_,Moonglow=GetTalentInfo(1,13);Moonglow=1-Moonglow*3/100;if (PM>=160*Moonglow or OoC) and TH>=486 and ActSpell("Insect Swarm","Rank 5") then return;end;if (PM>=140*Moonglow or OoC) and TH>=396 and ActSpell("Insect Swarm","Rank 4") then return;end;if (PM>=100*Moonglow or OoC) and TH>=261 and ActSpell("Insect Swarm","Rank 3") then return;end;if (PM>=85*Moonglow or OoC) and TH>=207 and ActSpell("Insect Swarm","Rank 2") then return;end;if (PM>=45*Moonglow or OoC) and TH>=99 and ActSpell("Insect Swarm","Rank 1") then return;end;if nil then CastSpellByName("Insect Swarm");end;else TargetNearestEnemy();end;end;
-=-
/script 
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
			if sw==true then return ix;end;
			if sw==0 then return GetSpellCooldown(ix,"spell");end;
			if sw=="self" then 
				if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;
			end;
			if sw==nil then 
				if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;
			end;
		end;
		ix=ix-1;
	end;
end;
if not UnitExists("target") or not UnitCanAttack("player","target") then TargetNearestEnemy();end;
if UnitExists("target")then 
	if ( UnitAffectingCombat("player") and UnitAffectingCombat("target") and (not GotDebuff("Spell_Nature_InsectSwarm") or OoC) ) or not UnitAffectingCombat("player") then 
		local TH=UnitHealth("target");
		local PM=UnitMana("player")
		local _,_,_,_,Moonglow=GetTalentInfo(1,13);Moonglow=1-Moonglow*3/100;
		local OoC=GotBuff("Spell_Shadow_ManaBurn")
		if (PM>=160*Moonglow or OoC) and TH>=486 and ActSpell("Insect Swarm","Rank 5") then return;end;
		if (PM>=140*Moonglow or OoC) and TH>=396 and ActSpell("Insect Swarm","Rank 4") then return;end;
		if (PM>=100*Moonglow or OoC) and TH>=261 and ActSpell("Insect Swarm","Rank 3") then return;end;
		if (PM>=85*Moonglow or OoC) and TH>=207 and ActSpell("Insect Swarm","Rank 2") then return;end;
		if (PM>=45*Moonglow or OoC) and TH>=99 and ActSpell("Insect Swarm","Rank 1") then return;end;
		if nil then CastSpellByName("Insect Swarm");end;
	else 
		TargetNearestEnemy();
	end;
end;