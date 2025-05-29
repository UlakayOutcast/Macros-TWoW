-=Blessing of Protection=-BoP SuperMacro
Использует Blessing of Protection доступную по уровню цели и колличеству доступной маны у игрока.

/script local CS,NS,R,T=CastSpellByName,"Blessing of Protection(Rank ","1";local UL=UnitLevel;local UM=UnitMana;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then return ix;end;end;end;end;if (UnitCanAttack("player","target") or UnitExists("target")==nil) then T="player";else T="target";end;if UL("player")>37 and UL(T)>37 and UM("player")>70 and GotSpell("Blessing of Protection","Rank 3") then CastSpellByName("Blessing of Protection(Rank 3)");else if UL("player")>23 and UL(T)>23 and UM("player")>45 and GotSpell("Blessing of Protection","Rank 2") then CastSpellByName("Blessing of Protection(Rank 2)");else if UL("player")>9 and UL(T)>9  and UM("player")>25 and GotSpell("Blessing of Protection","Rank 1") then CastSpellByName("Blessing of Protection(Rank 1)");end;end;end;

/script local CS,NS,R,T=CastSpellByName,"Blessing of Protection(Rank ","1";local UL=UnitLevel;local UM=UnitMana;/script local CS,NS,R,T=CastSpellByName,"Blessing of Protection(Rank ","1";local UL=UnitLevel;local UM=UnitMana;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell and spellRank==rank then return ix;end;
		end;
	end;
end;
if (UnitCanAttack("player","target") or UnitExists("target")==nil) then T="player";else T="target";end;
if UL("player")>37 and UL(T)>37 and UM("player")>70 and GotSpell("Blessing of Protection","Rank 3") then CastSpellByName("Blessing of Protection(Rank 3)");
else 
	if UL("player")>23 and UL(T)>23 and UM("player")>45 and GotSpell("Blessing of Protection","Rank 2") then CastSpellByName("Blessing of Protection(Rank 2)");
	else 
		if UL("player")>9 and UL(T)>9  and UM("player")>25 and GotSpell("Blessing of Protection","Rank 1") then CastSpellByName("Blessing of Protection(Rank 1)");
		end;
	end;
end;