-=BlastSurge=- Использует Arcane Surge, если активно, иначе Fire Blast
Для правильной работы необходим аддон Trivia https://github.com/UlakayOutcast/Trivia

-=-

/script local ix,sw;for ix=1,99 do if GetSpellName(ix,1)=="Arcane Surge"then if GetSpellCooldown(ix,1)>0 or ArcaneSurg==0 then CastSpellByName("Fire Blast");else CastSpellByName("Arcane Surge");ArcaneSurg=0;end;break;end;end;

/script 
local ix,sw;
for ix=1,99 do 
	if GetSpellName(ix,1)=="Arcane Surge"then 
		if GetSpellCooldown(ix,1)>0 or ArcaneSurg==0 then 
			CastSpellByName("Fire Blast");
		else 
			CastSpellByName("Arcane Surge");
			ArcaneSurg=0;
		end;
		break;
	end;
end;

-=-

/script local ix,iy=0,1;while(ArcaneSurg>0 and iy)do ix=ix+1;iy=GetSpellName(ix,1)if iy=="Arcane Surge"then if GetSpellCooldown(ix,1)==0 then iy=nil;end;end;end;if iy then CastSpellByName("Fire Blast")else CastSpellByName("Arcane Surge")ArcaneSurg=0;end

/script 
local ix,iy=0,1;
while(ArcaneSurg>0 and iy)do 
	ix=ix+1;
	iy=GetSpellName(ix,1)
	if iy=="Arcane Surge"then if GetSpellCooldown(ix,1)==0 then iy=nil;end;end;
end;
if iy then CastSpellByName("Fire Blast")else CastSpellByName("Arcane Surge")ArcaneSurg=0;end

-=-

/script local function GotBuff(name) local ix,tex,cnt=0,UnitBuff("player",1);while(tex) do ix=ix+1;tex,cnt = UnitBuff("player",ix);if tex then if strfind(tex,name) then return cnt end;end;end;end;local function GotSpell(spell,rank) local ix,spellName,spellRank=0,GetSpellName(1,"spell");while(spellName) do ix=ix+1;spellName,spellRank=GetSpellName(ix,"spell") if spellName==spell and (spellRank==rank or spellRank==nil) then return GetSpellCooldown(ix,"spell");end;end;end;local function CastSpels()local PM=UnitMana("player");local PL=UnitLevel("player");local CC=GotBuff("Spell_Shadow_ManaBurn");if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;if UnitCanAttack("player","target") and UnitHealth("target")>0 then local AH=UnitHealth("target");if GotSpell("Arcane Surge")==0 and ArcaneSurg>0 then if PL>=56 and (PM>=170 or CC) and AH>613 and GotSpell("Arcane Surge","Rank 4") then CastSpellByName("Arcane Surge(Rank 4)");return;end;if PL>=48 and (PM>=140 or CC) and AH>475 and GotSpell("Arcane Surge","Rank 3") then CastSpellByName("Arcane Surge(Rank 3)");return;end;if PL>=40 and (PM>=110 or CC) and AH>350 and GotSpell("Arcane Surge","Rank 2") then CastSpellByName("Arcane Surge(Rank 2)");return;end;if PL>=32 and (PM>=85 or CC) and AH>245 and GotSpell("Arcane Surge","Rank 1") then CastSpellByName("Arcane Surge(Rank 1)");return;end;ArcaneSurg=0;else if PL>=54 and (PM>=340 or CC) and AH>431 and GotSpell("Fire Blast","Rank 7") then CastSpellByName("Fire Blast(Rank 7)");return;end;if PL>=46 and (PM>=280 or CC) and AH>332 and GotSpell("Fire Blast","Rank 6") then CastSpellByName("Fire Blast(Rank 6)");return;end;if PL>=38 and (PM>=220 or CC) and AH>242 and GotSpell("Fire Blast","Rank 5") then CastSpellByName("Fire Blast(Rank 5)");return;end;if PL>=30 and (PM>=165 or CC) and AH>168 and GotSpell("Fire Blast","Rank 4") then CastSpellByName("Fire Blast(Rank 4)");return;end;if PL>=22 and (PM>=115 or CC) and AH>103 and GotSpell("Fire Blast","Rank 3") then CastSpellByName("Fire Blast(Rank 3)");return;end;if PL>=14 and (PM>=75 or CC) and AH>57 and GotSpell("Fire Blast","Rank 2") then CastSpellByName("Fire Blast(Rank 2)");return;end;if PL>=6 and (PM>=40 or CC) and AH>24 and GotSpell("Fire Blast","Rank 1") then CastSpellByName("Fire Blast(Rank 1)");return;end;end;end;end;CastSpels();

/script 
local function GotBuff(name) 
	local ix,tex,cnt=0,UnitBuff("player",1);
	while(tex) do ix=ix+1;
		tex,cnt = UnitBuff("player",ix);
		if tex then if strfind(tex,name) then return cnt end;end;
	end;
end;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank=0,GetSpellName(1,"spell");
	while(spellName) do ix=ix+1;
		spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==spell and (spellRank==rank or spellRank==nil) then 
			return GetSpellCooldown(ix,"spell");
		end;
	end;
end;
local function CastSpels()
	local PM=UnitMana("player");
	local PL=UnitLevel("player");
	local CC=GotBuff("Spell_Shadow_ManaBurn");
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	if UnitCanAttack("player","target") and UnitHealth("target")>0 then 
		local AH=UnitHealth("target");
		if GotSpell("Arcane Surge")==0 and ArcaneSurg>0 then 
			if PL>=56 and (PM>=170 or CC) and AH>613 and GotSpell("Arcane Surge","Rank 4") then CastSpellByName("Arcane Surge(Rank 4)");return;end;
			if PL>=48 and (PM>=140 or CC) and AH>475 and GotSpell("Arcane Surge","Rank 3") then CastSpellByName("Arcane Surge(Rank 3)");return;end;
			if PL>=40 and (PM>=110 or CC) and AH>350 and GotSpell("Arcane Surge","Rank 2") then CastSpellByName("Arcane Surge(Rank 2)");return;end;
			if PL>=32 and (PM>=85 or CC) and AH>245 and GotSpell("Arcane Surge","Rank 1") then CastSpellByName("Arcane Surge(Rank 1)");return;end;
			ArcaneSurg=0;
		else 
			if PL>=54 and (PM>=340 or CC) and AH>431 and GotSpell("Fire Blast","Rank 7") then CastSpellByName("Fire Blast(Rank 7)");return;end;
			if PL>=46 and (PM>=280 or CC) and AH>332 and GotSpell("Fire Blast","Rank 6") then CastSpellByName("Fire Blast(Rank 6)");return;end;
			if PL>=38 and (PM>=220 or CC) and AH>242 and GotSpell("Fire Blast","Rank 5") then CastSpellByName("Fire Blast(Rank 5)");return;end;
			if PL>=30 and (PM>=165 or CC) and AH>168 and GotSpell("Fire Blast","Rank 4") then CastSpellByName("Fire Blast(Rank 4)");return;end;
			if PL>=22 and (PM>=115 or CC) and AH>103 and GotSpell("Fire Blast","Rank 3") then CastSpellByName("Fire Blast(Rank 3)");return;end;
			if PL>=14 and (PM>=75 or CC) and AH>57 and GotSpell("Fire Blast","Rank 2") then CastSpellByName("Fire Blast(Rank 2)");return;end;
			if PL>=6 and (PM>=40 or CC) and AH>24 and GotSpell("Fire Blast","Rank 1") then CastSpellByName("Fire Blast(Rank 1)");return;end;
		end;
	end;
end;
CastSpels();