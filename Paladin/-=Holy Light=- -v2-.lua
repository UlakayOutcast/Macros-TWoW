-=Flash of Light=- Rank в зависимости от уровня играка, его маны и отсутствующего здоровья цели.
С зажатым Alt используется "Divine Favor"

/script local UL,UM,UT,AH=UnitLevel,UnitMana;local function GotSpell(spell,rank) local ix,spellName,spellRank;if not spell then spell="Inner Focus";rank="";end;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local function BIF() return buffed("Inner Focus")=="buff" end;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);if not IsAltKeyDown() or BIF() or not GotSpell() then if UL("player")>59 and ((UM("player")>379) or BIF()) and AH>1771 and GotSpell("Holy Light","Rank 7") then CastSpellByName("Holy Light(Rank 7)");else if UL("player")>53 and ((UM("player")>314) or BIF()) and AH>1389 and GotSpell("Holy Light","Rank 6") then CastSpellByName("Holy Light(Rank 6)");else if UL("player")>45 and ((UM("player")>379) or BIF()) and AH>1054 and GotSpell("Holy Light","Rank 7") then CastSpellByName("Holy Light(Rank 7)");else if UL("player")>37 and ((UM("player")>314) or BIF()) and AH>781 and GotSpell("Holy Light","Rank 6") then CastSpellByName("Holy Light(Rank 6)");else if UL("player")>29 and ((UM("player")>264) or BIF()) and AH>554 and GotSpell("Holy Light","Rank 5") then CastSpellByName("Holy Light(Rank 5)");else if UL("player")>21 and ((UM("player")>214) or BIF()) and AH>357 and GotSpell("Holy Light","Rank 4") then CastSpellByName("Holy Light(Rank 4)");else if UL("player")>13 and ((UM("player")>157) or BIF()) and AH>188 and GotSpell("Holy Light","Rank 3") then CastSpellByName("Holy Light(Rank 3)");else if UL("player")>5 and ((UM("player")>154) or BIF()) and AH>91 and GotSpell("Holy Light","Rank 2") then CastSpellByName("Holy Light(Rank 2)");else if UL("player")>0 and ((UM("player")>124) or BIF()) and AH>48 and GotSpell("Holy Light","Rank 1") then CastSpellByName("Holy Light(Rank 1)");else CastSpellByName("Holy Light(Rank 1)");end;end;end;end;end;end;end;end;end;else CastSpellByName("Inner Focus");end;
--
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
	if UL("player")>59 and ((UM("player")>379) or BIF()) and AH>1771 and GotSpell("Holy Light","Rank 7") then CastSpellByName("Holy Light(Rank 7)");
	else 
		if UL("player")>53 and ((UM("player")>314) or BIF()) and AH>1389 and GotSpell("Holy Light","Rank 6") then CastSpellByName("Holy Light(Rank 6)");
		else 
			if UL("player")>45 and ((UM("player")>379) or BIF()) and AH>1054 and GotSpell("Holy Light","Rank 7") then CastSpellByName("Holy Light(Rank 7)");
			else 
				if UL("player")>37 and ((UM("player")>314) or BIF()) and AH>781 and GotSpell("Holy Light","Rank 6") then CastSpellByName("Holy Light(Rank 6)");
				else 
					if UL("player")>29 and ((UM("player")>264) or BIF()) and AH>554 and GotSpell("Holy Light","Rank 5") then CastSpellByName("Holy Light(Rank 5)");
					else 
						if UL("player")>21 and ((UM("player")>214) or BIF()) and AH>357 and GotSpell("Holy Light","Rank 4") then CastSpellByName("Holy Light(Rank 4)");
						else 
							if UL("player")>13 and ((UM("player")>157) or BIF()) and AH>188 and GotSpell("Holy Light","Rank 3") then CastSpellByName("Holy Light(Rank 3)");
							else 
								if UL("player")>5 and ((UM("player")>154) or BIF()) and AH>91 and GotSpell("Holy Light","Rank 2") then CastSpellByName("Holy Light(Rank 2)");
								else 
									if UL("player")>0 and ((UM("player")>124) or BIF()) and AH>48 and GotSpell("Holy Light","Rank 1") then CastSpellByName("Holy Light(Rank 1)");
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
else 
	CastSpellByName("Inner Focus");
end;

-=Flash of Light=- SuperMacro. Rank в зависимости от уровня играка и его маны.
С зажатым Alt используется "Divine Favor"
