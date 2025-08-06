-=Flash of Light=- 1.17.2 Rank в зависимости от уровня играка, его маны и отсутствующего здоровья цели.

/script local UL,UM,UT,AH=UnitLevel,UnitMana;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return false;else if spellName==spell and (spellRank==rank or rank==nil) then if GetSpellCooldown(ix,"spell")==0 then return true; else return false; end;end;end;end;end;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);if UL("player")>59 and UM("player")>179 and AH>127 and GotSpell("Flash of Light","Rank 7") then CastSpellByName("Flash of Light(Rank 7)");else if UL("player")>57 and UM("player")>139 and AH>343 and GotSpell("Flash of Light","Rank 6") then CastSpellByName("Flash of Light(Rank 6)");else if UL("player")>49 and UM("player")>114 and AH>267 and GotSpell("Flash of Light","Rank 5") then CastSpellByName("Flash of Light(Rank 5)");else if UL("player")>41 and UM("player")>89 and AH>197 and GotSpell("Flash of Light","Rank 4") then CastSpellByName("Flash of Light(Rank 4)");else if UL("player")>33 and UM("player")>69 and AH>145 and GotSpell("Flash of Light","Rank 3") then CastSpellByName("Flash of Light(Rank 3)");else if UL("player")>25 and UM("player")>49 and AH>96 and GotSpell("Flash of Light","Rank 2") then CastSpellByName("Flash of Light(Rank 2)");else if UL("player")>19 and UM("player")>35 and AH>62 and GotSpell("Flash of Light","Rank 1") then CastSpellByName("Flash of Light(Rank 1)");else CastSpellByName("Flash of Light(Rank 1)");end;end;end;end;end;end;end;

/script local UL,UM,UT,AH=UnitLevel,UnitMana;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do 
		spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return false;
		else 
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if GetSpellCooldown(ix,"spell")==0 then return true; else return false; end;
			end;
		end;
	end;
end;
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
AH=UnitHealthMax(UT)-UnitHealth(UT);
if UL("player")>59 and UM("player")>179 and AH>127 and GotSpell("Flash of Light","Rank 7") then CastSpellByName("Flash of Light(Rank 7)");
else 
	if UL("player")>57 and UM("player")>139 and AH>343 and GotSpell("Flash of Light","Rank 6") then CastSpellByName("Flash of Light(Rank 6)");
	else 
		if UL("player")>49 and UM("player")>114 and AH>267 and GotSpell("Flash of Light","Rank 5") then CastSpellByName("Flash of Light(Rank 5)");
		else 
			if UL("player")>41 and UM("player")>89 and AH>197 and GotSpell("Flash of Light","Rank 4") then CastSpellByName("Flash of Light(Rank 4)");
			else 
				if UL("player")>33 and UM("player")>69 and AH>145 and GotSpell("Flash of Light","Rank 3") then CastSpellByName("Flash of Light(Rank 3)");
				else 
					if UL("player")>25 and UM("player")>49 and AH>96 and GotSpell("Flash of Light","Rank 2") then CastSpellByName("Flash of Light(Rank 2)");
					else 
						if UL("player")>19 and UM("player")>35 and AH>62 and GotSpell("Flash of Light","Rank 1") then CastSpellByName("Flash of Light(Rank 1)");
						else CastSpellByName("Flash of Light(Rank 1)");
						end;
					end;
				end;
			end;
		end;
	end;
end;