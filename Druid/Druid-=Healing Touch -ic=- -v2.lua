-=Healing Touch -ic=- Rank в зависимости от уровня играка, его маны и отсутствующего здоровья цели. С зажатым Alt используется "Nature's Swiftness"
/script local UL,UM,UT,AH=UnitLevel,UnitMana;local function GotSpell(spell,rank) local ix,spellName,spellRank;if not spell then spell="Nature's Swiftness";rank="";end;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local function BIF() return buffed("Clearcasting")=="buff" end;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);if not IsAltKeyDown() or not GotSpell() then if UL("player")>59 and ((UM("player")>799 and AH>2267) or BIF()) and GotSpell("Healing Touch","Rank 11") then CastSpellByName("Healing Touch(Rank 11)"); else if UL("player")>55 and ((UM("player")>719 and AH>1890) or BIF()) and GotSpell("Healing Touch","Rank 10") then CastSpellByName("Healing Touch(Rank 10)"); else if UL("player")>49 and ((UM("player")>599 and AH>1516) or BIF()) and GotSpell("Healing Touch","Rank 9") then CastSpellByName("Healing Touch(Rank 9)"); else if UL("player")>43 and ((UM("player")>494 and AH>1199) or BIF()) and GotSpell("Healing Touch","Rank 8") then CastSpellByName("Healing Touch(Rank 8)"); else if UL("player")>37 and ((UM("player")>404 and AH>936) or BIF()) and GotSpell("Healing Touch","Rank 7") then CastSpellByName("Healing Touch(Rank 7)"); else if UL("player")>31 and ((UM("player")>334 and AH>742) or BIF()) and GotSpell("Healing Touch","Rank 6") then CastSpellByName("Healing Touch(Rank 6)"); else if UL("player")>25 and ((UM("player")>269 and AH>572) or BIF()) and GotSpell("Healing Touch","Rank 5") then CastSpellByName("Healing Touch(Rank 5)"); else if UL("player")>19 and ((UM("player")>184 and AH>363) or BIF()) and GotSpell("Healing Touch","Rank 4") then CastSpellByName("Healing Touch(Rank 4)"); else if UL("player")>13 and ((UM("player")>109 and AH>195) or BIF()) and GotSpell("Healing Touch","Rank 3") then CastSpellByName("Healing Touch(Rank 3)"); else if UL("player")>7 and ((UM("player")>54 and AH>88) or BIF()) and GotSpell("Healing Touch","Rank 2") then CastSpellByName("Healing Touch(Rank 2)"); else if UL("player")>0 and ((UM("player")>24 and AH>37) or BIF()) and GotSpell("Healing Touch","Rank 1") then CastSpellByName("Healing Touch(Rank 1)"); else CastSpellByName("Healing Touch(Rank 1)");end;end;end;end;end;end;end;end;end;end;end;else CastSpellByName("Nature's Swiftness");end;
-=-
/script local UL,UM,UT,AH=UnitLevel,UnitMana;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;if not spell then spell="Nature's Swiftness";rank="";end;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell and spellRank==rank then 
				if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;
			end;
		end;
	end;
end;
local function BIF() return buffed("Clearcasting")=="buff" end;
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
AH=UnitHealthMax(UT)-UnitHealth(UT);
if not IsAltKeyDown() or not GotSpell() then 
	if UL("player")>59 and ((UM("player")>799 and AH>2267) or BIF()) and GotSpell("Healing Touch","Rank 11") then CastSpellByName("Healing Touch(Rank 11)"); 
	else 
		if UL("player")>55 and ((UM("player")>719 and AH>1890) or BIF()) and GotSpell("Healing Touch","Rank 10") then CastSpellByName("Healing Touch(Rank 10)"); 
		else 
			if UL("player")>49 and ((UM("player")>599 and AH>1516) or BIF()) and GotSpell("Healing Touch","Rank 9") then CastSpellByName("Healing Touch(Rank 9)"); 
			else 
				if UL("player")>43 and ((UM("player")>494 and AH>1199) or BIF()) and GotSpell("Healing Touch","Rank 8") then CastSpellByName("Healing Touch(Rank 8)"); 
				else 
					if UL("player")>37 and ((UM("player")>404 and AH>936) or BIF()) and GotSpell("Healing Touch","Rank 7") then CastSpellByName("Healing Touch(Rank 7)"); 
					else 
						if UL("player")>31 and ((UM("player")>334 and AH>742) or BIF()) and GotSpell("Healing Touch","Rank 6") then CastSpellByName("Healing Touch(Rank 6)"); 
						else 
							if UL("player")>25 and ((UM("player")>269 and AH>572) or BIF()) and GotSpell("Healing Touch","Rank 5") then CastSpellByName("Healing Touch(Rank 5)"); 
							else 
								if UL("player")>19 and ((UM("player")>184 and AH>363) or BIF()) and GotSpell("Healing Touch","Rank 4") then CastSpellByName("Healing Touch(Rank 4)"); 
								else 
									if UL("player")>13 and ((UM("player")>109 and AH>195) or BIF()) and GotSpell("Healing Touch","Rank 3") then CastSpellByName("Healing Touch(Rank 3)"); 
									else 
										if UL("player")>7 and ((UM("player")>54 and AH>88) or BIF()) and GotSpell("Healing Touch","Rank 2") then CastSpellByName("Healing Touch(Rank 2)"); 
										else 
											if UL("player")>0 and ((UM("player")>24 and AH>37) or BIF()) and GotSpell("Healing Touch","Rank 1") then CastSpellByName("Healing Touch(Rank 1)"); 
											else CastSpellByName("Healing Touch(Rank 1)");
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
else 
	CastSpellByName("Nature's Swiftness");
end;