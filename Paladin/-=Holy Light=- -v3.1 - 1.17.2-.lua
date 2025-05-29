-=Holy of Light=- Rank в зависимости от уровня играка, его маны и отсутствующего здоровья цели.

/script local UL,UM,UT,AH=UnitLevel,UnitMana;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return false;else if spellName==spell and (spellRank==rank or rank==nil) then if GetSpellCooldown(ix,"spell")==0 then return true; else return false; end;end;end;end;end;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);if UL("player")>59 and UM("player")>659 and AH>1590 and GotSpell("Holy Light","Rank 9") then CastSpellByName("Holy Light(Rank 9)");else if UL("player")>53 and UM("player")>579 and AH>1246 and GotSpell("Holy Light","Rank 8") then CastSpellByName("Holy Light(Rank 8)");else if UL("player")>45 and UM("player")>464 and AH>945 and GotSpell("Holy Light","Rank 7") then CastSpellByName("Holy Light(Rank 7)");else if UL("player")>37 and UM("player")>364 and AH>698 and GotSpell("Holy Light","Rank 6") then CastSpellByName("Holy Light(Rank 6)");else if UL("player")>29 and UM("player")>274 and AH>491 and GotSpell("Holy Light","Rank 5") then CastSpellByName("Holy Light(Rank 5)");else if UL("player")>21 and UM("player")>189 and AH>310 and GotSpell("Holy Light","Rank 4") then CastSpellByName("Holy Light(Rank 4)");else if UL("player")>13 and UM("player")>109 and AH>159 and GotSpell("Holy Light","Rank 3") then CastSpellByName("Holy Light(Rank 3)");else if UL("player")>5 and UM("player")>59 and AH>76 and GotSpell("Holy Light","Rank 2") then CastSpellByName("Holy Light(Rank 2)");else if UL("player")>0 and UM("player")>34 and AH>39 and GotSpell("Holy Light","Rank 1") then CastSpellByName("Holy Light(Rank 1)");else CastSpellByName("Holy Light(Rank 1)");end;end;end;end;end;end;end;end;end;

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
if UL("player")>59 and UM("player")>659 and AH>1590 and GotSpell("Holy Light","Rank 9") then CastSpellByName("Holy Light(Rank 9)");
else 
	if UL("player")>53 and UM("player")>579 and AH>1246 and GotSpell("Holy Light","Rank 8") then CastSpellByName("Holy Light(Rank 8)");
	else 
		if UL("player")>45 and UM("player")>464 and AH>945 and GotSpell("Holy Light","Rank 7") then CastSpellByName("Holy Light(Rank 7)");
		else 
			if UL("player")>37 and UM("player")>364 and AH>698 and GotSpell("Holy Light","Rank 6") then CastSpellByName("Holy Light(Rank 6)");
			else 
				if UL("player")>29 and UM("player")>274 and AH>491 and GotSpell("Holy Light","Rank 5") then CastSpellByName("Holy Light(Rank 5)");
				else 
					if UL("player")>21 and UM("player")>189 and AH>310 and GotSpell("Holy Light","Rank 4") then CastSpellByName("Holy Light(Rank 4)");
					else 
						if UL("player")>13 and UM("player")>109 and AH>159 and GotSpell("Holy Light","Rank 3") then CastSpellByName("Holy Light(Rank 3)");
						else 
							if UL("player")>5 and UM("player")>59 and AH>76 and GotSpell("Holy Light","Rank 2") then CastSpellByName("Holy Light(Rank 2)");
							else 
								if UL("player")>0 and UM("player")>34 and AH>39 and GotSpell("Holy Light","Rank 1") then CastSpellByName("Holy Light(Rank 1)");
								else CastSpellByName("Holy Light(Rank 1)");
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end;