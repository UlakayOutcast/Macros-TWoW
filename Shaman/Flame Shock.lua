-=Flame Shock=-
/script local UL=UnitLevel; local UM=UnitMana; local UT; local TH=UnitHealth('target'); local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then return ix;end;end;end;end;if UL("player")>59 and TH>501 and UM("player")>409 and GotSpell("Flame Shock","Rank 6") then CastSpellByName("Flame Shock(Rank 6)"); else if UL("player")>51 and TH>332 and UM("player")>344 and GotSpell("Flame Shock","Rank 5") then CastSpellByName("Flame Shock(Rank 5)"); else if UL("player")>39 and TH>191 and UM("player")>249 and GotSpell("Flame Shock","Rank 4") then CastSpellByName("Flame Shock(Rank 4)"); else if UL("player")>27 and TH>99 and UM("player")>159 and GotSpell("Flame Shock","Rank 3") then CastSpellByName("Flame Shock(Rank 3)"); else if UL("player")>17 and TH>53 and UM("player")>94 and GotSpell("Flame Shock","Rank 2") then CastSpellByName("Flame Shock(Rank 2)"); else if UL("player")>9 and TH>0 and UM("player")>54 and GotSpell("Flame Shock","Rank 1") then CastSpellByName("Flame Shock(Rank 1)"); end;end;end;end;end;end;
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
if UL("player")>59 and TH>501 and UM("player")>409 and GotSpell("Flame Shock","Rank 6") then CastSpellByName("Flame Shock(Rank 6)"); 
else 
	if UL("player")>51 and TH>332 and UM("player")>344 and GotSpell("Flame Shock","Rank 5") then CastSpellByName("Flame Shock(Rank 5)"); 
	else 
		if UL("player")>39 and TH>191 and UM("player")>249 and GotSpell("Flame Shock","Rank 4") then CastSpellByName("Flame Shock(Rank 4)"); 
		else 
			if UL("player")>27 and TH>99 and UM("player")>159 and GotSpell("Flame Shock","Rank 3") then CastSpellByName("Flame Shock(Rank 3)"); 
			else 
				if UL("player")>17 and TH>53 and UM("player")>94 and GotSpell("Flame Shock","Rank 2") then CastSpellByName("Flame Shock(Rank 2)"); 
				else 
					if UL("player")>9 and TH>0 and UM("player")>54 and GotSpell("Flame Shock","Rank 1") then CastSpellByName("Flame Shock(Rank 1)"); 
					end;
				end;
			end;
		end;
	end;
end;