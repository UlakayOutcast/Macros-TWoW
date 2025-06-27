-=Pain Spike + Holy Fire=-
/script local SE,Rank,spellName,spellRank=0;if nil then CastSpellByName("Holy Fire");end;local function ActSpell(spell,rank,sw) local ix=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,'spell');return ix;end;end;end;ix=ix-1;end;end;end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;function CastSpels()local PM=UnitMana("player");if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;if UnitCanAttack("player","target") and UnitHealth("target")>0 then local TH=UnitHealth("target");if PM>=265 and TH<=378 and ActSpell("Pain Spike","Rank 4",true) then SpellStopCasting(); if ActSpell("Pain Spike","Rank 4") then return;end;end;if PM>=185 and TH<=240 and ActSpell("Pain Spike","Rank 3",true) then SpellStopCasting(); if ActSpell("Pain Spike","Rank 3") then return;end;end;if PM>=140 and TH<=172 and ActSpell("Pain Spike","Rank 2",true) then SpellStopCasting(); if ActSpell("Pain Spike","Rank 2") then return;end;end;if PM>=80 and TH<=85 and ActSpell("Pain Spike","Rank 1",true) then SpellStopCasting(); if ActSpell("Pain Spike","Rank 1") then return;end;end;if PM>=229 and ActSpell("Holy Fire","Rank 8") then return;end;if PM>=207 and ActSpell("Holy Fire","Rank 7") then return;end;if PM>=180 and ActSpell("Holy Fire","Rank 6") then return;end;if PM>=153 and ActSpell("Holy Fire","Rank 5") then return;end;if PM>=130 and ActSpell("Holy Fire","Rank 4") then return;end;if PM>=112 and ActSpell("Holy Fire","Rank 3") then return;end;if PM>=85 and ActSpell("Holy Fire","Rank 2") then return;end;if PM>=76 and ActSpell("Holy Fire","Rank 1") then return;end;end;end;CastSpels();

/script local SE,Rank,spellName,spellRank=0;if nil then CastSpellByName("Holy Fire");end;
local function ActSpell(spell,rank,sw) 
	local ix=192;
	while(ix>0) do 
		if ix==0 then return nil;
		else 
			spellName,spellRank=GetSpellName(ix,"spell");
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if sw==true then return ix;end;
				if sw==0 then return GetSpellCooldown(ix,"spell");end;
				if sw==nil then 
					if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,'spell');return ix;end;
				end;
			end;
			ix=ix-1;
		end;
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
function CastSpels()
	local PM=UnitMana("player");
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	if UnitCanAttack("player","target") and UnitHealth("target")>0 then 
		local TH=UnitHealth("target");
		if PM>=265 and TH<=378 and ActSpell("Pain Spike","Rank 4",true) then SpellStopCasting(); if ActSpell("Pain Spike","Rank 4") then return;end;end;
		if PM>=185 and TH<=240 and ActSpell("Pain Spike","Rank 3",true) then SpellStopCasting(); if ActSpell("Pain Spike","Rank 3") then return;end;end;
		if PM>=140 and TH<=172 and ActSpell("Pain Spike","Rank 2",true) then SpellStopCasting(); if ActSpell("Pain Spike","Rank 2") then return;end;end;
		if PM>=80 and TH<=85 and ActSpell("Pain Spike","Rank 1",true) then SpellStopCasting(); if ActSpell("Pain Spike","Rank 1") then return;end;end;
		if PM>=229 and ActSpell("Holy Fire","Rank 8") then return;end;
		if PM>=207 and ActSpell("Holy Fire","Rank 7") then return;end;
		if PM>=180 and ActSpell("Holy Fire","Rank 6") then return;end;
		if PM>=153 and ActSpell("Holy Fire","Rank 5") then return;end;
		if PM>=130 and ActSpell("Holy Fire","Rank 4") then return;end;
		if PM>=112 and ActSpell("Holy Fire","Rank 3") then return;end;
		if PM>=85 and ActSpell("Holy Fire","Rank 2") then return;end;
		if PM>=76 and ActSpell("Holy Fire","Rank 1") then return;end;
	end;
end;
CastSpels();