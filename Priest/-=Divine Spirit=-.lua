-=Divine Spirit=-

/script local UL=UnitLevel;local UM=UnitMana;local UT;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then return ix;end;end;end;end;if UnitExists("target")==nil or UnitCanAttack("player","target") then UT="player";else UT="target";end;if UL("player")>59 and UL(UT)>49 then if UM("player")>970 and GotSpell("Divine Spirit","Rank 4") then CastSpellByName("Divine Spirit(Rank 4)");end;else if UL("player")>49 and UL(UT)>39 then if UM("player")>785 and GotSpell("Divine Spirit","Rank 3") then CastSpellByName("Divine Spirit(Rank 3)");end;else if UL("player")>39 and UL(UT)>29 then if UM("player")>420 and GotSpell("Divine Spirit","Rank 2") then CastSpellByName("Divine Spirit(Rank 2)");end;else if UL("player")>29 and UL(UT)>19 then if UM("player")>258 and GotSpell("Divine Spirit","Rank 1") then CastSpellByName("Divine Spirit(Rank 1)");end;end;end;end;end;
-=-
/script local UL=UnitLevel;local UM=UnitMana;local UT;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell and spellRank==rank then return ix;end;
		end;
	end;
end;
if UnitExists("target")==nil or UnitCanAttack("player","target") then UT="player";else UT="target";end;
if UL("player")>59 and UL(UT)>49 then if UM("player")>970 and GotSpell("Divine Spirit","Rank 4") then CastSpellByName("Divine Spirit(Rank 4)");end;
else 
	if UL("player")>49 and UL(UT)>39 then if UM("player")>785 and GotSpell("Divine Spirit","Rank 3") then CastSpellByName("Divine Spirit(Rank 3)");end;
	else 
		if UL("player")>39 and UL(UT)>29 then if UM("player")>420 and GotSpell("Divine Spirit","Rank 2") then CastSpellByName("Divine Spirit(Rank 2)");end;
		else 
			if UL("player")>29 and UL(UT)>19 then if UM("player")>258 and GotSpell("Divine Spirit","Rank 1") then CastSpellByName("Divine Spirit(Rank 1)");end;
			end;
		end;
	end;
end;