-=Mind Blast + Pain Spike=-
/script local SE,Rank,spellName,spellRank=0;if nil then CastSpellByName("Mind Blast");end;local function ActSpell(spell,rank,sw) local ix=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,'spell');return ix;end;end;end;ix=ix-1;end;end;end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;function CastSpels()local PM=UnitMana("player");if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;if UnitCanAttack("player","target") and UnitHealth("target")>0 then local TH=UnitHealth("target");if PM>=265 and TH<=378 and ActSpell("Pain Spike","Rank 4",0)==0 then SpellStopCasting(); ActSpell("Pain Spike","Rank 4"); return;end;if PM>=185 and TH<=240 and ActSpell("Pain Spike","Rank 3",0)==0 then SpellStopCasting(); ActSpell("Pain Spike","Rank 3"); return;end;if PM>=140 and TH<=172 and ActSpell("Pain Spike","Rank 2",0)==0 then SpellStopCasting(); ActSpell("Pain Spike","Rank 2"); return;end;if PM>=80 and TH<=85 and ActSpell("Pain Spike","Rank 1",0)==0 then SpellStopCasting(); ActSpell("Pain Spike","Rank 1"); return;end;if PM>=350 and ActSpell("Mind Blast","Rank 9") then return;end;if PM>=310 and ActSpell("Mind Blast","Rank 8") then return;end;if PM>=265 and ActSpell("Mind Blast","Rank 7") then return;end;if PM>=225 and ActSpell("Mind Blast","Rank 6") then return;end;if PM>=185 and ActSpell("Mind Blast","Rank 5") then return;end;if PM>=150 and ActSpell("Mind Blast","Rank 4") then return;end;if PM>=110 and ActSpell("Mind Blast","Rank 3") then return;end;if PM>=80 and ActSpell("Mind Blast","Rank 2") then return;end;if PM>=50 and ActSpell("Mind Blast","Rank 1") then return;end;end;end;CastSpels();

/script local SE,Rank,spellName,spellRank=0;if nil then CastSpellByName("Mind Blast");end;
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
		if PM>=265 and TH<=378 and ActSpell("Pain Spike","Rank 4",0)==0 then SpellStopCasting(); ActSpell("Pain Spike","Rank 4"); return;end;
		if PM>=185 and TH<=240 and ActSpell("Pain Spike","Rank 3",0)==0 then SpellStopCasting(); ActSpell("Pain Spike","Rank 3"); return;end;
		if PM>=140 and TH<=172 and ActSpell("Pain Spike","Rank 2",0)==0 then SpellStopCasting(); ActSpell("Pain Spike","Rank 2"); return;end;
		if PM>=80 and TH<=85 and ActSpell("Pain Spike","Rank 1",0)==0 then SpellStopCasting(); ActSpell("Pain Spike","Rank 1"); return;end;
		if PM>=350 and ActSpell("Mind Blast","Rank 9") then return;end;
		if PM>=310 and ActSpell("Mind Blast","Rank 8") then return;end;
		if PM>=265 and ActSpell("Mind Blast","Rank 7") then return;end;
		if PM>=225 and ActSpell("Mind Blast","Rank 6") then return;end;
		if PM>=185 and ActSpell("Mind Blast","Rank 5") then return;end;
		if PM>=150 and ActSpell("Mind Blast","Rank 4") then return;end;
		if PM>=110 and ActSpell("Mind Blast","Rank 3") then return;end;
		if PM>=80 and ActSpell("Mind Blast","Rank 2") then return;end;
		if PM>=50 and ActSpell("Mind Blast","Rank 1") then return;end;
	end;
end;
CastSpels();