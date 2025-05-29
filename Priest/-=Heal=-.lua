-=Heal=-

/script local UL=UnitLevel;local UM=UnitMana;local CT,AH;if UL("target")==0 or UnitCanAttack("player","target") then CT="player";else CT="target";end;AH=UnitHealthMax(CT)-UnitHealth(CT);local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then return ix;end;end;end;end;if UL("player")>59 and ((UM("player")>709) or (buffed("Inner Focus")=="buff")) and AH>1966 and GotSpell("Greater Heal","Rank 5") then CastSpellByName("Greater Heal(Rank 5)");else if UL("player")>57 and ((UM("player")>654) or (buffed("Inner Focus")=="buff")) and AH>1798 and GotSpell("Greater Heal","Rank 4") then CastSpellByName("Greater Heal(Rank 4)");else if UL("player")>51 and ((UM("player")>544) or (buffed("Inner Focus")=="buff")) and AH>1437 and GotSpell("Greater Heal","Rank 3") then CastSpellByName("Greater Heal(Rank 3)");else if UL("player")>45 and ((UM("player")>454) or (buffed("Inner Focus")=="buff")) and AH>1149 and GotSpell("Greater Heal","Rank 2") then CastSpellByName("Greater Heal(Rank 2)");else if UL("player")>39 and ((UM("player")>369) or (buffed("Inner Focus")=="buff")) and AH>899 and GotSpell("Greater Heal","Rank 1") then CastSpellByName("Greater Heal(Rank 1)");else if UL("player")>33 and ((UM("player")>304) or (buffed("Inner Focus")=="buff")) and AH>712 and GotSpell("Heal","Rank 4") then CastSpellByName("Heal(Rank 4)");else if UL("player")>27 and ((UM("player")>254) or (buffed("Inner Focus")=="buff")) and AH>566 and GotSpell("Heal","Rank 3") then CastSpellByName("Heal(Rank 3)");else if UL("player")>21 and ((UM("player")>204) or (buffed("Inner Focus")=="buff")) and AH>429 and GotSpell("Heal","Rank 2") then CastSpellByName("Heal(Rank 2)");else if UL("player")>15 and ((UM("player")>154) or (buffed("Inner Focus")=="buff")) and AH>295 and GotSpell("Heal","Rank 1") then CastSpellByName("Heal(Rank 1)");else if UL("player")>9 and ((UM("player")>74) or (buffed("Inner Focus")=="buff")) and AH>135 and GotSpell("Lesser Heal","Rank 3") then CastSpellByName("Lesser Heal(Rank 3)");else if UL("player")>3 and ((UM("player")>44) or (buffed("Inner Focus")=="buff")) and AH>71 and GotSpell("Lesser Heal","Rank 2") then CastSpellByName("Lesser Heal(Rank 2)");else if UL("player")>0 and ((UM("player")>29) or (buffed("Inner Focus")=="buff")) and AH>46 and GotSpell("Lesser Heal","Rank 1") then CastSpellByName("Lesser Heal(Rank 1)");else CastSpellByName("Lesser Heal(Rank 1)");end;end;end;end;end;end;end;end;end;end;end;end;
-=-
/script local UL=UnitLevel;local UM=UnitMana;local CT,AH;
if UL("target")==0 or UnitCanAttack("player","target") then CT="player";else CT="target";end;
AH=UnitHealthMax(CT)-UnitHealth(CT);
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell and spellRank==rank then return ix;end;
		end;
	end;
end;
if UL("player")>59 and ((UM("player")>709) or (buffed("Inner Focus")=="buff")) and AH>1966 and GotSpell("Greater Heal","Rank 5") then CastSpellByName("Greater Heal(Rank 5)");
else 
	if UL("player")>57 and ((UM("player")>654) or (buffed("Inner Focus")=="buff")) and AH>1798 and GotSpell("Greater Heal","Rank 4") then CastSpellByName("Greater Heal(Rank 4)");
	else 
		if UL("player")>51 and ((UM("player")>544) or (buffed("Inner Focus")=="buff")) and AH>1437 and GotSpell("Greater Heal","Rank 3") then CastSpellByName("Greater Heal(Rank 3)");
		else 
			if UL("player")>45 and ((UM("player")>454) or (buffed("Inner Focus")=="buff")) and AH>1149 and GotSpell("Greater Heal","Rank 2") then CastSpellByName("Greater Heal(Rank 2)");
			else 
				if UL("player")>39 and ((UM("player")>369) or (buffed("Inner Focus")=="buff")) and AH>899 and GotSpell("Greater Heal","Rank 1") then CastSpellByName("Greater Heal(Rank 1)");
				else 
					if UL("player")>33 and ((UM("player")>304) or (buffed("Inner Focus")=="buff")) and AH>712 and GotSpell("Heal","Rank 4") then CastSpellByName("Heal(Rank 4)");
					else 
						if UL("player")>27 and ((UM("player")>254) or (buffed("Inner Focus")=="buff")) and AH>566 and GotSpell("Heal","Rank 3") then CastSpellByName("Heal(Rank 3)");
						else 
							if UL("player")>21 and ((UM("player")>204) or (buffed("Inner Focus")=="buff")) and AH>429 and GotSpell("Heal","Rank 2") then CastSpellByName("Heal(Rank 2)");
							else 
								if UL("player")>15 and ((UM("player")>154) or (buffed("Inner Focus")=="buff")) and AH>295 and GotSpell("Heal","Rank 1") then CastSpellByName("Heal(Rank 1)");
								else 
									if UL("player")>9 and ((UM("player")>74) or (buffed("Inner Focus")=="buff")) and AH>135 and GotSpell("Lesser Heal","Rank 3") then CastSpellByName("Lesser Heal(Rank 3)");
									else 
										if UL("player")>3 and ((UM("player")>44) or (buffed("Inner Focus")=="buff")) and AH>71 and GotSpell("Lesser Heal","Rank 2") then CastSpellByName("Lesser Heal(Rank 2)");
										else 
											if UL("player")>0 and ((UM("player")>29) or (buffed("Inner Focus")=="buff")) and AH>46 and GotSpell("Lesser Heal","Rank 1") then CastSpellByName("Lesser Heal(Rank 1)");
											else CastSpellByName("Lesser Heal(Rank 1)");
											end;
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end;

-=-=-

/script local UL=UnitLevel;local UM=UnitMana;
if UL("player")>51 and ((UM("player")>468) or (buffed("Inner Focus")=="buff")) then CastSpellByName("Greater Heal(Rank 3)");
else 
	if UL("player")>35 and ((UM("player")>391) or (buffed("Inner Focus")=="buff")) then CastSpellByName("Greater Heal(Rank 2)");
	else 
		if UL("player")>33 and ((UM("player")>318) or (buffed("Inner Focus")=="buff")) then CastSpellByName("Greater Heal(Rank 1)");
		else 
			if UL("player")>31 and ((UM("player")>305) or (buffed("Inner Focus")=="buff")) then CastSpellByName("Heal(Rank 4)");
			else 
				if UL("player")>27 and ((UM("player")>255) or (buffed("Inner Focus")=="buff")) then CastSpellByName("Heal(Rank 3)");
				else 
					if UL("player")>21 and ((UM("player")>205) or (buffed("Inner Focus")=="buff")) then CastSpellByName("Heal(Rank 2)");
					else 
						if UL("player")>15 and ((UM("player")>155) or (buffed("Inner Focus")=="buff")) then CastSpellByName("Heal(Rank 1)");
						end;
					end;
				end;
			end;
		end;
	end;
end;