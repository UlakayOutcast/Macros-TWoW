-=Flash-Holy Light=- Rank и тип в зависимости от уровня игрока, его маны и отсутствующего здоровья цели. При здоровье цели ниже 20% используется Flash of Light.

/script local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;local function CastSpels()if UnitLevel("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;local PL=UnitLevel("player");local TL=UnitLevel(UT);local PM=UnitMana("player");local AH=UnitHealthMax(UT)-UnitHealth(UT);if UnitHealth(UT)>UnitHealthMax(UT)*0.33 then if PL>=60 and (PM>=560 and AH>=15090) and ActSpell("Holy Light","Rank 9") then return; end;if PL>=54 and (PM>=580 and AH>=1246) and ActSpell("Holy Light","Rank 8") then return; end;if PL>=46 and (PM>=465 and AH>=945) and ActSpell("Holy Light","Rank 7") then return; end;if PL>=38 and (PM>=365 and AH>=698) and ActSpell("Holy Light","Rank 6") then return; end;if PL>=30 and (PM>=275 and AH>=491) and ActSpell("Holy Light","Rank 5") then return; end;if PL>=22 and (PM>=190 and AH>=310) and ActSpell("Holy Light","Rank 4") then return; end;if PL>=14 and (PM>=110 and AH>=159) and ActSpell("Holy Light","Rank 3") then return; end;if PL>=6 and (PM>=60 and AH>=76) and ActSpell("Holy Light","Rank 2") then return; end;if PL>=0 and (PM>=34 and AH>=39) and ActSpell("Holy Light","Rank 1") then return; end;if nil then CastSpellByName("Holy Light");end;else if PL>=56 and PM>=485 and ActSpell("Holy Shock","Rank 4") then return; end;if PL>=48 and PM>=410 and ActSpell("Holy Shock","Rank 3") then return; end;if PL>=40 and PM>=335 and ActSpell("Holy Shock","Rank 2") then return; end;if PL>=38 and PM>=280 and ActSpell("Holy Shock","Rank 1") then return; end;if PL>=60 and (PM>=180 and AH>=428) and ActSpell("Flash of Light","Rank 7") then return; end;if PL>=58 and (PM>=140 and AH>=343) and ActSpell("Flash of Light","Rank 6") then return; end;if PL>=50 and (PM>=115 and AH>=267) and ActSpell("Flash of Light","Rank 5") then return; end;if PL>=42 and (PM>=90 and AH>=197) and ActSpell("Flash of Light","Rank 4") then return; end;if PL>=34 and (PM>=70 and AH>=145) and ActSpell("Flash of Light","Rank 3") then return; end;if PL>=26 and (PM>=50 and AH>=96) and ActSpell("Flash of Light","Rank 2") then return; end;if PL>=20 and (PM>=35 and AH>=62) and ActSpell("Flash of Light","Rank 1") then return; end;if nil then CastSpellByName("Flash of Light");end;end;end;CastSpels();

/script 
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
local function CastSpels()
	if UnitLevel("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
	local PL=UnitLevel("player");local TL=UnitLevel(UT);local PM=UnitMana("player");
	local AH=UnitHealthMax(UT)-UnitHealth(UT);
	if UnitHealth(UT)>UnitHealthMax(UT)*0.33 then 
		if PL>=60 and (PM>=560 and AH>=15090) and ActSpell("Holy Light","Rank 9") then return; end;
		if PL>=54 and (PM>=580 and AH>=1246) and ActSpell("Holy Light","Rank 8") then return; end;
		if PL>=46 and (PM>=465 and AH>=945) and ActSpell("Holy Light","Rank 7") then return; end;
		if PL>=38 and (PM>=365 and AH>=698) and ActSpell("Holy Light","Rank 6") then return; end;
		if PL>=30 and (PM>=275 and AH>=491) and ActSpell("Holy Light","Rank 5") then return; end;
		if PL>=22 and (PM>=190 and AH>=310) and ActSpell("Holy Light","Rank 4") then return; end;
		if PL>=14 and (PM>=110 and AH>=159) and ActSpell("Holy Light","Rank 3") then return; end;
		if PL>=6 and (PM>=60 and AH>=76) and ActSpell("Holy Light","Rank 2") then return; end;
		if PL>=0 and (PM>=34 and AH>=39) and ActSpell("Holy Light","Rank 1") then return; end;
		if nil then CastSpellByName("Holy Light");end;
	else 
		if PL>=56 and PM>=485 and ActSpell("Holy Shock","Rank 4") then return; end;
		if PL>=48 and PM>=410 and ActSpell("Holy Shock","Rank 3") then return; end;
		if PL>=40 and PM>=335 and ActSpell("Holy Shock","Rank 2") then return; end;
		if PL>=38 and PM>=280 and ActSpell("Holy Shock","Rank 1") then return; end;
		if PL>=60 and (PM>=180 and AH>=428) and ActSpell("Flash of Light","Rank 7") then return; end;
		if PL>=58 and (PM>=140 and AH>=343) and ActSpell("Flash of Light","Rank 6") then return; end;
		if PL>=50 and (PM>=115 and AH>=267) and ActSpell("Flash of Light","Rank 5") then return; end;
		if PL>=42 and (PM>=90 and AH>=197) and ActSpell("Flash of Light","Rank 4") then return; end;
		if PL>=34 and (PM>=70 and AH>=145) and ActSpell("Flash of Light","Rank 3") then return; end;
		if PL>=26 and (PM>=50 and AH>=96) and ActSpell("Flash of Light","Rank 2") then return; end;
		if PL>=20 and (PM>=35 and AH>=62) and ActSpell("Flash of Light","Rank 1") then return; end;
		if nil then CastSpellByName("Flash of Light");end;
	end;
end;
CastSpels();