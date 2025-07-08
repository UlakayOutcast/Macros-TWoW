-=Wrath+Starfire=-

/script local SE,Rank,spellName,spellRank=0;if nil then CastSpellByName("Wrath");end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,'spell');return ix;end;end;end;ix=ix-1;end;end;end;function CastSpels()if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;if UnitCanAttack("player","target") and UnitHealth("target")>0 then local GB=(GotBuff("Spell_Arcane_StarFire") or GotBuff("Spell_Nature_NaturesBlessing"));local ASF=1;if GotBuff("Spell_Nature_AbolishMagic") then ASF=0.5;end;local PM=UnitMana("player");local TH=UnitHealth("target");if GB and (PM>=340 or OoC) and TH>=496 and ActSpell("Starfire","Rank 7") then return;end;if GB and (PM>=315 or OoC) and TH>=445 and ActSpell("Starfire","Rank 6") then return;end;if GB and (PM>=275 or OoC) and TH>=362 and ActSpell("Starfire","Rank 5") then return;end;if (PM>=210*ASF or OoC) and TH>=292 and ActSpell("Wrath","Rank 9") then return;end;if GB and (PM>=230 or OoC) and TH>=280 and ActSpell("Starfire","Rank 4") then return;end;if (PM>=180*ASF or OoC) and TH>=248 and ActSpell("Wrath","Rank 8") then return;end;if GB and (PM>=180 or OoC) and TH>=201 and ActSpell("Starfire","Rank 3") then return;end;if (PM>=155*ASF or OoC) and TH>=192 and ActSpell("Wrath","Rank 7") then return;end;if (PM>=125*ASF or OoC) and TH>=146 and ActSpell("Wrath","Rank 6") then return;end;if GB and (PM>=135 or OoC) and TH>=137 and ActSpell("Starfire","Rank 2") then return;end;if (PM>=100*ASF or OoC) and TH>=106 and ActSpell("Wrath","Rank 5") then return;end;if GB and (PM>=95 or OoC) and TH>=89 and ActSpell("Starfire","Rank 1") then return;end;if (PM>=70*ASF or OoC) and TH>=66 and ActSpell("Wrath","Rank 4") then return;end;if (PM>=55*ASF or OoC) and TH>=46 and ActSpell("Wrath","Rank 3") then return;end;if (PM>=35*ASF or OoC) and TH>=26 and ActSpell("Wrath","Rank 2") then return;end;if (PM>=20*ASF or OoC) and TH>=13 and ActSpell("Wrath","Rank 1") then return;end;end;end;CastSpels();

/script 
local SE,Rank,spellName,spellRank=0;if nil then CastSpellByName("Wrath");end;
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
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
function CastSpels()
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	if UnitCanAttack("player","target") and UnitHealth("target")>0 then 
		local GB=(GotBuff("Spell_Arcane_StarFire") or GotBuff("Spell_Nature_NaturesBlessing"));
		local ASF=1;if GotBuff("Spell_Nature_AbolishMagic") then ASF=0.5;end;
		local PM=UnitMana("player");local TH=UnitHealth("target");
		local OoC=GotBuff("Spell_Shadow_ManaBurn")
		if GB and (PM>=340 or OoC) and TH>=496 and ActSpell("Starfire","Rank 7") then return;end;
		if GB and (PM>=315 or OoC) and TH>=445 and ActSpell("Starfire","Rank 6") then return;end;
		if GB and (PM>=275 or OoC) and TH>=362 and ActSpell("Starfire","Rank 5") then return;end;
		if (PM>=210*ASF or OoC) and TH>=292 and ActSpell("Wrath","Rank 9") then return;end;
		if GB and (PM>=230 or OoC) and TH>=280 and ActSpell("Starfire","Rank 4") then return;end;
		if (PM>=180*ASF or OoC) and TH>=248 and ActSpell("Wrath","Rank 8") then return;end;
		if GB and (PM>=180 or OoC) and TH>=201 and ActSpell("Starfire","Rank 3") then return;end;
		if (PM>=155*ASF or OoC) and TH>=192 and ActSpell("Wrath","Rank 7") then return;end;
		if (PM>=125*ASF or OoC) and TH>=146 and ActSpell("Wrath","Rank 6") then return;end;
		if GB and (PM>=135 or OoC) and TH>=137 and ActSpell("Starfire","Rank 2") then return;end;
		if (PM>=100*ASF or OoC) and TH>=106 and ActSpell("Wrath","Rank 5") then return;end;
		if GB and (PM>=95 or OoC) and TH>=89 and ActSpell("Starfire","Rank 1") then return;end;
		if (PM>=70*ASF or OoC) and TH>=66 and ActSpell("Wrath","Rank 4") then return;end;
		if (PM>=55*ASF or OoC) and TH>=46 and ActSpell("Wrath","Rank 3") then return;end;
		if (PM>=35*ASF or OoC) and TH>=26 and ActSpell("Wrath","Rank 2") then return;end;
		if (PM>=20*ASF or OoC) and TH>=13 and ActSpell("Wrath","Rank 1") then return;end;
	end;
end;
CastSpels();