-=Flash-Holy Light=- Rank и тип в зависимости от уровня играка, его маны и отсутствующего здоровья цели.
С зажатым Alt используется "Divine Favor".

/script local UL,UM,UT,AH=UnitLevel,UnitMana;local function GotSpell(spell,rank) local ix,spellName,spellRank;if not spell then spell="Inner Focus";rank="";end;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local function BIF() return buffed("Inner Focus")=="buff" end;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);if not IsAltKeyDown() or BIF() or not GotSpell() then if UnitHealth(UT)>(UnitHealthMax(UT)*0.25) then if UL("player")>57 and ((UM("player")>139) or BIF()) and AH>343 and GotSpell("Flash of Light","Rank 6") then CastSpellByName("Flash of Light(Rank 6)");else if UL("player")>49 and ((UM("player")>114) or BIF()) and AH>267 and GotSpell("Flash of Light","Rank 5") then CastSpellByName("Flash of Light(Rank 5)");else if UL("player")>41 and ((UM("player")>89) or BIF()) and AH>197 and GotSpell("Flash of Light","Rank 4") then CastSpellByName("Flash of Light(Rank 4)");else if UL("player")>33 and ((UM("player")>69) or BIF()) and AH>145 and GotSpell("Flash of Light","Rank 3") then CastSpellByName("Flash of Light(Rank 3)");else if UL("player")>25 and ((UM("player")>49) or BIF()) and AH>96 and GotSpell("Flash of Light","Rank 2") then CastSpellByName("Flash of Light(Rank 2)");else if UL("player")>19 and ((UM("player")>35) or BIF()) and AH>62 and GotSpell("Flash of Light","Rank 1") then CastSpellByName("Flash of Light(Rank 1)");else CastSpellByName("Flash of Light(Rank 1)");end;end;end;end;end;end;else if UL("player")>59 and ((UM("player")>659) or BIF()) and AH>1590 and GotSpell("Holy Light","Rank 9") then CastSpellByName("Holy Light(Rank 9)");else if UL("player")>53 and ((UM("player")>579) or BIF()) and AH>1246 and GotSpell("Holy Light","Rank 8") then CastSpellByName("Holy Light(Rank 8)");else if UL("player")>45 and ((UM("player")>464) or BIF()) and AH>945 and GotSpell("Holy Light","Rank 7") then CastSpellByName("Holy Light(Rank 7)");else if UL("player")>37 and ((UM("player")>364) or BIF()) and AH>698 and GotSpell("Holy Light","Rank 6") then CastSpellByName("Holy Light(Rank 6)");else if UL("player")>29 and ((UM("player")>274) or BIF()) and AH>491 and GotSpell("Holy Light","Rank 5") then CastSpellByName("Holy Light(Rank 5)");else if UL("player")>21 and ((UM("player")>189) or BIF()) and AH>310 and GotSpell("Holy Light","Rank 4") then CastSpellByName("Holy Light(Rank 4)");else if UL("player")>13 and ((UM("player")>109) or BIF()) and AH>159 and GotSpell("Holy Light","Rank 3") then CastSpellByName("Holy Light(Rank 3)");else if UL("player")>5 and ((UM("player")>59) or BIF()) and AH>76 and GotSpell("Holy Light","Rank 2") then CastSpellByName("Holy Light(Rank 2)");else if UL("player")>0 and ((UM("player")>34) or BIF()) and AH>39 and GotSpell("Holy Light","Rank 1") then CastSpellByName("Holy Light(Rank 1)");else CastSpellByName("Holy Light(Rank 1)");end;end;end;end;end;end;end;end;end;end;else CastSpellByName("Inner Focus");end;

/script local UL,UM,UT,AH=UnitLevel,UnitMana;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;if not spell then spell="Inner Focus";rank="";end;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell and spellRank==rank then 
				if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;
			end;
		end;
	end;
end;
local function BIF() return buffed("Inner Focus")=="buff" end;
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
AH=UnitHealthMax(UT)-UnitHealth(UT);
if not IsAltKeyDown() or BIF() or not GotSpell() then 
	if UnitHealth(UT)>(UnitHealthMax(UT)*0.25) then 
		if UL("player")>57 and ((UM("player")>139) or BIF()) and AH>343 and GotSpell("Flash of Light","Rank 6") then CastSpellByName("Flash of Light(Rank 6)");
		else 
			if UL("player")>49 and ((UM("player")>114) or BIF()) and AH>267 and GotSpell("Flash of Light","Rank 5") then CastSpellByName("Flash of Light(Rank 5)");
			else 
				if UL("player")>41 and ((UM("player")>89) or BIF()) and AH>197 and GotSpell("Flash of Light","Rank 4") then CastSpellByName("Flash of Light(Rank 4)");
				else 
					if UL("player")>33 and ((UM("player")>69) or BIF()) and AH>145 and GotSpell("Flash of Light","Rank 3") then CastSpellByName("Flash of Light(Rank 3)");
					else 
						if UL("player")>25 and ((UM("player")>49) or BIF()) and AH>96 and GotSpell("Flash of Light","Rank 2") then CastSpellByName("Flash of Light(Rank 2)");
						else 
							if UL("player")>19 and ((UM("player")>35) or BIF()) and AH>62 and GotSpell("Flash of Light","Rank 1") then CastSpellByName("Flash of Light(Rank 1)");
							else CastSpellByName("Flash of Light(Rank 1)");
							end;
						end;
					end;
				end;
			end;
		end;
	else 
		if UL("player")>59 and ((UM("player")>659) or BIF()) and AH>1590 and GotSpell("Holy Light","Rank 9") then CastSpellByName("Holy Light(Rank 9)");
		else 
			if UL("player")>53 and ((UM("player")>579) or BIF()) and AH>1246 and GotSpell("Holy Light","Rank 8") then CastSpellByName("Holy Light(Rank 8)");
			else 
				if UL("player")>45 and ((UM("player")>464) or BIF()) and AH>945 and GotSpell("Holy Light","Rank 7") then CastSpellByName("Holy Light(Rank 7)");
				else 
					if UL("player")>37 and ((UM("player")>364) or BIF()) and AH>698 and GotSpell("Holy Light","Rank 6") then CastSpellByName("Holy Light(Rank 6)");
					else 
						if UL("player")>29 and ((UM("player")>274) or BIF()) and AH>491 and GotSpell("Holy Light","Rank 5") then CastSpellByName("Holy Light(Rank 5)");
						else 
							if UL("player")>21 and ((UM("player")>189) or BIF()) and AH>310 and GotSpell("Holy Light","Rank 4") then CastSpellByName("Holy Light(Rank 4)");
							else 
								if UL("player")>13 and ((UM("player")>109) or BIF()) and AH>159 and GotSpell("Holy Light","Rank 3") then CastSpellByName("Holy Light(Rank 3)");
								else 
									if UL("player")>5 and ((UM("player")>59) or BIF()) and AH>76 and GotSpell("Holy Light","Rank 2") then CastSpellByName("Holy Light(Rank 2)");
									else 
										if UL("player")>0 and ((UM("player")>34) or BIF()) and AH>39 and GotSpell("Holy Light","Rank 1") then CastSpellByName("Holy Light(Rank 1)");
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
	end;
else 
	CastSpellByName("Inner Focus");
end;