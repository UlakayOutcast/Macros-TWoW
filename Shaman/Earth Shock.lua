-=Earth Shock=-

/script local UL=UnitLevel; local UM=UnitMana; local UT; local TH=UnitHealth('target'); local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then return ix;end;end;end;end;if UL("player")>59 and TH>372 and UM("player")>449 and GotSpell("Earth Shock","Rank 7") then CastSpellByName("Earth Shock(Rank 7)"); else if UL("player")>47 and TH>235 and UM("player")>344 and GotSpell("Earth Shock","Rank 6") then CastSpellByName("Earth Shock(Rank 6)"); else if UL("player")>35 and TH>166 and UM("player")>239 and GotSpell("Earth Shock","Rank 5") then CastSpellByName("Earth Shock(Rank 5)"); else if UL("player")>23 and TH>65 and UM("player")>144 and GotSpell("Earth Shock","Rank 4") then CastSpellByName("Earth Shock(Rank 4)"); else if UL("player")>13 and TH>35 and UM("player")>84 and GotSpell("Earth Shock","Rank 3") then CastSpellByName("Earth Shock(Rank 3)"); else if UL("player")>7 and TH>19 and UM("player")>49 and GotSpell("Earth Shock","Rank 2") then CastSpellByName("Earth Shock(Rank 2)"); else if UL("player")>3 and TH>0 and UM("player")>29 and GotSpell("Earth Shock","Rank 1") then CastSpellByName("Earth Shock(Rank 1)"); end;end;end;end;end;end;end;
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
if UL("player")>59 and TH>372 and UM("player")>449 and GotSpell("Earth Shock","Rank 7") then CastSpellByName("Earth Shock(Rank 7)"); 
else 
	if UL("player")>47 and TH>235 and UM("player")>344 and GotSpell("Earth Shock","Rank 6") then CastSpellByName("Earth Shock(Rank 6)"); 
	else 
		if UL("player")>35 and TH>166 and UM("player")>239 and GotSpell("Earth Shock","Rank 5") then CastSpellByName("Earth Shock(Rank 5)"); 
		else 
			if UL("player")>23 and TH>65 and UM("player")>144 and GotSpell("Earth Shock","Rank 4") then CastSpellByName("Earth Shock(Rank 4)"); 
			else 
				if UL("player")>13 and TH>35 and UM("player")>84 and GotSpell("Earth Shock","Rank 3") then CastSpellByName("Earth Shock(Rank 3)"); 
				else 
					if UL("player")>7 and TH>19 and UM("player")>49 and GotSpell("Earth Shock","Rank 2") then CastSpellByName("Earth Shock(Rank 2)"); 
					else 
						if UL("player")>3 and TH>0 and UM("player")>29 and GotSpell("Earth Shock","Rank 1") then CastSpellByName("Earth Shock(Rank 1)"); 
						end;
					end;
				end;
			end;
		end;
	end;
end;

-=-=-

/script local UL=UnitLevel; local UM=UnitMana; local UT; local TH=UnitHealth('target'); if UL("player")>59 and TH>372 and UM("player")>449 then CastSpellByName("Earth Shock(Rank 7)"); else if UL("player")>47 and TH>235 and UM("player")>344 then CastSpellByName("Earth Shock(Rank 6)"); else if UL("player")>35 and TH>166 and UM("player")>239 then CastSpellByName("Earth Shock(Rank 5)"); else if UL("player")>23 and TH>65 and UM("player")>144 then CastSpellByName("Earth Shock(Rank 4)"); else if UL("player")>13 and TH>35 and UM("player")>84 then CastSpellByName("Earth Shock(Rank 3)"); else if UL("player")>7 and TH>19 and UM("player")>49 then CastSpellByName("Earth Shock(Rank 2)"); else if UL("player")>3 and TH>0 and UM("player")>29 then CastSpellByName("Earth Shock(Rank 1)"); end;end;end;end;end;end;end;
-=-
/script local UL=UnitLevel; local UM=UnitMana; local UT; local TH=UnitHealth('target'); 
if UL("player")>59 and TH>372 and UM("player")>449 then CastSpellByName("Earth Shock(Rank 7)"); 
else 
	if UL("player")>47 and TH>235 and UM("player")>344 then CastSpellByName("Earth Shock(Rank 6)"); 
	else 
		if UL("player")>35 and TH>166 and UM("player")>239 then CastSpellByName("Earth Shock(Rank 5)"); 
		else 
			if UL("player")>23 and TH>65 and UM("player")>144 then CastSpellByName("Earth Shock(Rank 4)"); 
			else 
				if UL("player")>13 and TH>35 and UM("player")>84 then CastSpellByName("Earth Shock(Rank 3)"); 
				else 
					if UL("player")>7 and TH>19 and UM("player")>49 then CastSpellByName("Earth Shock(Rank 2)"); 
					else 
						if UL("player")>3 and TH>0 and UM("player")>29 then CastSpellByName("Earth Shock(Rank 1)"); 
						end;
					end;
				end;
			end;
		end;
	end;
end;