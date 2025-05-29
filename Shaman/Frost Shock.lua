-=Frost Shock=-

/script local UL=UnitLevel; local UM=UnitMana; local UT; local TH=UnitHealth('target'); local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then return ix;end;end;end;end;if UL("player")>57 and TH>345 and UM("player")>429 and GotSpell("Frost Shock","Rank 4") then CastSpellByName("Frost Shock(Rank 4)"); else if UL("player")>45 and TH>215 and UM("player")>324 and GotSpell("Frost Shock","Rank 3") then CastSpellByName("Frost Shock(Rank 3)"); else if UL("player")>33 and TH>95 and UM("player")>224 and GotSpell("Frost Shock","Rank 2") then CastSpellByName("Frost Shock(Rank 2)"); else if UL("player")>19 and TH>0 and UM("player")>114 and GotSpell("Frost Shock","Rank 1") then CastSpellByName("Frost Shock(Rank 1)"); end;end;end;end;
-=-
/script local UL=UnitLevel; local UM=UnitMana; local UT; local TH=UnitHealth('target'); 
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell and spellRank==rank then return ix;end;
		end;
	end;
end;
if UL("player")>57 and TH>345 and UM("player")>429 and GotSpell("Frost Shock","Rank 4") then CastSpellByName("Frost Shock(Rank 4)"); 
else 
	if UL("player")>45 and TH>215 and UM("player")>324 and GotSpell("Frost Shock","Rank 3") then CastSpellByName("Frost Shock(Rank 3)"); 
	else 
		if UL("player")>33 and TH>95 and UM("player")>224 and GotSpell("Frost Shock","Rank 2") then CastSpellByName("Frost Shock(Rank 2)"); 
		else 
			if UL("player")>19 and TH>0 and UM("player")>114 and GotSpell("Frost Shock","Rank 1") then CastSpellByName("Frost Shock(Rank 1)"); 
			end;
		end;
	end;
end;

-=-=-

/script local UL=UnitLevel; local UM=UnitMana; local UT; local TH=UnitHealth('target'); if UL("player")>57 and TH>345 and UM("player")>429 then CastSpellByName("Frost Shock(Rank 4)"); else if UL("player")>45 and TH>215 and UM("player")>324 then CastSpellByName("Frost Shock(Rank 3)"); else if UL("player")>33 and TH>95 and UM("player")>224 then CastSpellByName("Frost Shock(Rank 2)"); else if UL("player")>19 and TH>0 and UM("player")>114 then CastSpellByName("Frost Shock(Rank 1)"); end;end;end;end;
-=-
/script local UL=UnitLevel; local UM=UnitMana; local UT; local TH=UnitHealth('target'); 
if UL("player")>57 and TH>345 and UM("player")>429 then CastSpellByName("Frost Shock(Rank 4)"); 
else 
	if UL("player")>45 and TH>215 and UM("player")>324 then CastSpellByName("Frost Shock(Rank 3)"); 
	else 
		if UL("player")>33 and TH>95 and UM("player")>224 then CastSpellByName("Frost Shock(Rank 2)"); 
		else 
			if UL("player")>19 and TH>0 and UM("player")>114 then CastSpellByName("Frost Shock(Rank 1)"); 
			end;
		end;
	end;
end;