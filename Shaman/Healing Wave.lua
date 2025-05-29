-=Healing Wave=- Rank в зависимости от уровня игрока, его маны и отсутствующего здоровья цели. С зажатым Alt используется "Nature's Swiftness"

/script local UL=UnitLevel;local UM=UnitMana;local CT,AH;local SW=1;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then return ix;end;end;end;end;if UL("target")==0 or UnitCanAttack("player","target") then CT="player";else CT="target";end;AH=UnitHealthMax(CT)-UnitHealth(CT);while(SW>0) do if IsAltKeyDown() and SW~=2 then CastSpellByName("Nature's Swiftness");SW=2;else if UL("player")>59 and UM("player")>619 and AH>1850 and GotSpell("Healing Wave","Rank 10") then NS="Healing Wave(Rank 10)";else if UL("player")>55 and UM("player")>559 and AH>1561 and GotSpell("Healing Wave","Rank 9") then NS="Healing Wave(Rank 9)";else if UL("player")>47 and UM("player")>439 and AH>1167 and GotSpell("Healing Wave","Rank 8") then NS="Healing Wave(Rank 8)";else if UL("player")>39 and UM("player")>339 and AH>854 and GotSpell("Healing Wave","Rank 7") then NS="Healing Wave(Rank 7)";else if UL("player")>31 and UM("player")>264 and AH>622 and GotSpell("Healing Wave","Rank 6") then NS="Healing Wave(Rank 6)";else if UL("player")>23 and UM("player")>199 and AH>440 and GotSpell("Healing Wave","Rank 5") then NS="Healing Wave(Rank 5)";else if UL("player")>17 and UM("player")>154 and AH>316 and GotSpell("Healing Wave","Rank 4") then NS="Healing Wave(Rank 4)";else if UL("player")>11 and UM("player")>79 and AH>155 and GotSpell("Healing Wave","Rank 3") then NS="Healing Wave(Rank 3)";else if UL("player")>5 and UM("player")>44 and AH>78 and GotSpell("Healing Wave","Rank 2") then NS="Healing Wave(Rank 2)";else if UL("player")>0 and UM("player")>24 and AH>44 and GotSpell("Healing Wave","Rank 1") then NS="Healing Wave(Rank 1)";end;SW=0;end;end;end;end;end;end;end;end;end;if SW>0 then CastSpellByName(NS);else CastSpellByName("Healing Wave(Rank 1)");end;SW=0;end;end;
-=-
/script local UL=UnitLevel;local UM=UnitMana;local CT,AH;local SW=1;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell and spellRank==rank then return ix;end;
		end;
	end;
end;
if UL("target")==0 or UnitCanAttack("player","target") then CT="player";else CT="target";end;
AH=UnitHealthMax(CT)-UnitHealth(CT);
while(SW>0) do 
	if IsAltKeyDown() and SW~=2 then 
		CastSpellByName("Nature's Swiftness");
		SW=2;
	else 
		if UL("player")>59 and UM("player")>619 and AH>1850 and GotSpell("Healing Wave","Rank 10") then NS="Healing Wave(Rank 10)";
		else 
			if UL("player")>55 and UM("player")>559 and AH>1561 and GotSpell("Healing Wave","Rank 9") then NS="Healing Wave(Rank 9)";
			else 
				if UL("player")>47 and UM("player")>439 and AH>1167 and GotSpell("Healing Wave","Rank 8") then NS="Healing Wave(Rank 8)";
				else 
					if UL("player")>39 and UM("player")>339 and AH>854 and GotSpell("Healing Wave","Rank 7") then NS="Healing Wave(Rank 7)";
					else 
						if UL("player")>31 and UM("player")>264 and AH>622 and GotSpell("Healing Wave","Rank 6") then NS="Healing Wave(Rank 6)";
						else 
							if UL("player")>23 and UM("player")>199 and AH>440 and GotSpell("Healing Wave","Rank 5") then NS="Healing Wave(Rank 5)";
							else 
								if UL("player")>17 and UM("player")>154 and AH>316 and GotSpell("Healing Wave","Rank 4") then NS="Healing Wave(Rank 4)";
								else 
									if UL("player")>11 and UM("player")>79 and AH>155 and GotSpell("Healing Wave","Rank 3") then NS="Healing Wave(Rank 3)";
									else 
										if UL("player")>5 and UM("player")>44 and AH>78 and GotSpell("Healing Wave","Rank 2") then NS="Healing Wave(Rank 2)";
										else 
											if UL("player")>0 and UM("player")>24 and AH>44 and GotSpell("Healing Wave","Rank 1") then NS="Healing Wave(Rank 1)";end;
											SW=0;
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
		if SW>0 then CastSpellByName(NS);else CastSpellByName("Healing Wave(Rank 1)");end;
		SW=0;
	end;
end;