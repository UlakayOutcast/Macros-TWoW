-=Blessing of Might & Blessing of Wisdom=-BoMW -v4.1- SuperMacro
Благословление в зависимости от уровня и класса цели. также с жататым Alt - "Blessing of Might" на любую цель.

/script local UL=UnitLevel;local T;local LV;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and (spellRank==rank or rank==nill) then return ix;end;end;end;end;if (UnitCanAttack("player","target") or UnitExists("target")==nil or UnitPlayerControlled("target")==nil) then T="player";else T="target";end;if (UnitCreatureType(T)=="Beast" or UnitCreatureFamily(T)=="Voidwalker" or UnitCreatureFamily(T)=="Felhunter" or UnitClass(T)=="Warrior" or UnitClass(T)=="Rogue" or IsAltKeyDown()) then  if UL("player")>51 and UL(T)>41 and GotSpell("Blessing of Might","Rank 6") then LV=6 else if UL("player")>41 and UL(T)>31 and GotSpell("Blessing of Might","Rank 5") then LV=5 else if UL("player")>31 and UL(T)>21 and GotSpell("Blessing of Might","Rank 4") then LV=4 else if UL("player")>21 and UL(T)>11 and GotSpell("Blessing of Might","Rank 3") then LV=3 else if UL("player")>11 and UL(T)>3 and GotSpell("Blessing of Might","Rank 2") then LV=2 else if UL("player")>3 and UL(T)>0 and GotSpell("Blessing of Might","Rank 1") then LV=1 end;end;end;end;end;end; if UL(T)>9 and GotSpell("Blessing of Kings") then CastSpellByName("Blessing of Kings") else if LV then CastSpellByName("Blessing of Might(Rank "..LV..")");end;end;else if UL("player")>53 and UL(T)>43 and GotSpell("Blessing of Wisdom","Rank 5") then LV=5 else if UL("player")>43 and UL(T)>33 and GotSpell("Blessing of Wisdom","Rank 4") then LV=4 else if UL("player")>33 and UL(T)>23 and GotSpell("Blessing of Wisdom","Rank 3") then LV=3 else if UL("player")>23 and UL(T)>13 and GotSpell("Blessing of Wisdom","Rank 2") then LV=2 else if UL("player")>13 and UL(T)>3 and GotSpell("Blessing of Wisdom","Rank 1") then LV=1 end;end;end;end;end;if LV then CastSpellByName("Blessing of Wisdom(Rank "..LV..")");else if GotSpell("Blessing of Might","Rank 2") then CastSpellByName("Blessing of Might(Rank 2)");end;end;end;

/script local UL=UnitLevel;local T;local LV;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell and (spellRank==rank or rank==nill) then return ix;end;
		end;
	end;
end;
if (UnitCanAttack("player","target") or UnitExists("target")==nil or UnitPlayerControlled("target")==nil) then T="player";else T="target";end;
if (UnitCreatureType(T)=="Beast" or UnitCreatureFamily(T)=="Voidwalker" or UnitCreatureFamily(T)=="Felhunter" 
or UnitClass(T)=="Warrior" or UnitClass(T)=="Rogue" or IsAltKeyDown()) 
then  
	if UL("player")>51 and UL(T)>41 and GotSpell("Blessing of Might","Rank 6") then LV=6 else 
	if UL("player")>41 and UL(T)>31 and GotSpell("Blessing of Might","Rank 5") then LV=5 else 
	if UL("player")>31 and UL(T)>21 and GotSpell("Blessing of Might","Rank 4") then LV=4 else 
	if UL("player")>21 and UL(T)>11 and GotSpell("Blessing of Might","Rank 3") then LV=3 else 
	if UL("player")>11 and UL(T)>3 and GotSpell("Blessing of Might","Rank 2") then LV=2 else 
	if UL("player")>3 and UL(T)>0 and GotSpell("Blessing of Might","Rank 1") then LV=1 
	end;end;end;end;end;end; 
	if UL(T)>9 and GotSpell("Blessing of Kings") then CastSpellByName("Blessing of Kings") 
	else 
		if LV then CastSpellByName("Blessing of Might(Rank "..LV..")");end;
	end;
else 
	if UL("player")>53 and UL(T)>43 and GotSpell("Blessing of Wisdom","Rank 5") then LV=5 else 
	if UL("player")>43 and UL(T)>33 and GotSpell("Blessing of Wisdom","Rank 4") then LV=4 else 
	if UL("player")>33 and UL(T)>23 and GotSpell("Blessing of Wisdom","Rank 3") then LV=3 else 
	if UL("player")>23 and UL(T)>13 and GotSpell("Blessing of Wisdom","Rank 2") then LV=2 else 
	if UL("player")>13 and UL(T)>3 and GotSpell("Blessing of Wisdom","Rank 1") then LV=1 
	end;end;end;end;end;
	if LV then CastSpellByName("Blessing of Wisdom(Rank "..LV..")");
	else 
		if GotSpell("Blessing of Might","Rank 2") then CastSpellByName("Blessing of Might(Rank 2)");end;
	end;
end;