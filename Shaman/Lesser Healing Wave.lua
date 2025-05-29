-=Lesser Healing Wave=- Rank в зависимости от уровня игрока, его маны и отсутствующего здоровья цели. С зажатым Alt используется "Nature's Swiftness"

/script local UL=UnitLevel;local UM=UnitMana;local CT,AH;local SW=1;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then return ix;end;end;end;end;if UL("target")==0 or UnitCanAttack("player","target") then CT="player";else CT="target";end;AH=UnitHealthMax(CT)-UnitHealth(CT);while(SW>0) do if IsAltKeyDown() and SW~=2 then CastSpellByName("Nature's Swiftness");SW=2;else if UL("player")>59 and UM("player")>379 and AH>929 and GotSpell("Lesser Healing Wave","Rank 6") then NS="Lesser Healing Wave(Rank 6)";else if UL("player")>52 and UM("player")>304 and AH>706 and GotSpell("Lesser Healing Wave","Rank 5") then NS="Lesser Healing Wave(Rank 5)";else if UL("player")>43 and UM("player")>235 and AH>515 and GotSpell("Lesser Healing Wave","Rank 4") then NS="Lesser Healing Wave(Rank 4)";else if UL("player")>35 and UM("player")>184 and AH>382 and GotSpell("Lesser Healing Wave","Rank 3") then NS="Lesser Healing Wave(Rank 3)";else if UL("player")>27 and UM("player")>144 and AH>282 and GotSpell("Lesser Healing Wave","Rank 2") then NS="Lesser Healing Wave(Rank 2)";else if UL("player")>19 and UM("player")>104 and AH>187 and GotSpell("Lesser Healing Wave","Rank 1") then NS="Lesser Healing Wave(Rank 1)";else SW=0;end;end;end;end;end;end;if SW>0 then CastSpellByName(NS);else CastSpellByName("Healing Wave(Rank 1)");end;SW=0;end;end;
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
		if UL("player")>59 and UM("player")>379 and AH>929 and GotSpell("Lesser Healing Wave","Rank 6") then NS="Lesser Healing Wave(Rank 6)";
		else 
			if UL("player")>52 and UM("player")>304 and AH>706 and GotSpell("Lesser Healing Wave","Rank 5") then NS="Lesser Healing Wave(Rank 5)";
			else 
				if UL("player")>43 and UM("player")>234 and AH>515 and GotSpell("Lesser Healing Wave","Rank 4") then NS="Lesser Healing Wave(Rank 4)";
				else 
					if UL("player")>35 and UM("player")>184 and AH>382 and GotSpell("Lesser Healing Wave","Rank 3") then NS="Lesser Healing Wave(Rank 3)";
					else 
						if UL("player")>27 and UM("player")>144 and AH>282 and GotSpell("Lesser Healing Wave","Rank 2") then NS="Lesser Healing Wave(Rank 2)";
						else 
							if UL("player")>19 and UM("player")>104 and AH>187 and GotSpell("Lesser Healing Wave","Rank 1") then NS="Lesser Healing Wave(Rank 1)";
							else 
								SW=0;
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

-=-=-

/script local UL=UnitLevel;local UM=UnitMana;local CT,AH;local SW=1;if UL("target")==0 or UnitCanAttack("player","target") then CT="player";else CT="target";end;AH=UnitHealthMax(CT)-UnitHealth(CT);while(SW>0) do if IsAltKeyDown() and SW~=2 then CastSpellByName("Nature's Swiftness");SW=2;else if UL("player")>59 and UM("player")>379 and AH>832 then NS="Lesser Healing Wave(Rank 6)";else if UL("player")>52 and UM("player")>304 and AH>631 then NS="Lesser Healing Wave(Rank 5)";else if UL("player")>43 and UM("player")>235 and AH>458 then NS="Lesser Healing Wave(Rank 4)";else if UL("player")>35 and UM("player")>184 and AH>338 then NS="Lesser Healing Wave(Rank 3)";else if UL("player")>27 and UM("player")>144 and AH>247 then NS="Lesser Healing Wave(Rank 2)";else if UL("player")>19 and UM("player")>104 and AH>162 then NS="Lesser Healing Wave(Rank 1)";else SW=0;end;end;end;end;end;end;if SW>0 then CastSpellByName(NS);else CastSpellByName("Healing Wave(Rank 1)");end;SW=0;end;end;
-=-
/script local UL=UnitLevel;local UM=UnitMana;local CT,AH;local SW=1;
if UL("target")==0 or UnitCanAttack("player","target") then CT="player";else CT="target";end;
AH=UnitHealthMax(CT)-UnitHealth(CT);
while(SW>0) do 
	if IsAltKeyDown() and SW~=2 then 
		CastSpellByName("Nature's Swiftness");
		SW=2;
	else 
		if UL("player")>59 and UM("player")>379 and AH>832 then NS="Lesser Healing Wave(Rank 6)";
		else 
			if UL("player")>52 and UM("player")>304 and AH>631 then NS="Lesser Healing Wave(Rank 5)";
			else 
				if UL("player")>43 and UM("player")>235 and AH>458 then NS="Lesser Healing Wave(Rank 4)";
				else 
					if UL("player")>35 and UM("player")>184 and AH>338 then NS="Lesser Healing Wave(Rank 3)";
					else 
						if UL("player")>27 and UM("player")>144 and AH>247 then NS="Lesser Healing Wave(Rank 2)";
						else 
							if UL("player")>19 and UM("player")>104 and AH>162 then NS="Lesser Healing Wave(Rank 1)";
							else 
								SW=0;
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


