-=Power Word:Shield=-

/script local UL,UM,UT=UnitLevel,UnitMana;local function GotSpell(spell,rank) local ix,spellName,spellRank;if not spell then spell="Inner Focus";rank="";end;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local function GotDebuff(name,target)     if UnitExists("target") then if UnitIsEnemy("target","player") then target = "player"; else target = "target";end; else target = "player" end;    local tex,cnt,ix;    for ix = 1,32 do       tex,cnt = UnitDebuff(target,ix);      if not tex then return end;      if strfind(tex,name) then return cnt end;    end;end;local function BIF() return buffed("Inner Focus")=="buff" end;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;if not IsAltKeyDown() or BIF() or not GotSpell() then if not GotDebuff("Spell_Holy_AshesToAshes") then if UL("player")>59 and UL(UT)>53 and (UM("player")>500 or BIF()) and GotSpell("Power Word: Shield","Rank 10") then CastSpellByName("Power Word: Shield(Rank 10)"); else if UL("player")>53 and UL(UT)>47 and (UM("player")>382 or BIF()) and GotSpell("Power Word: Shield","Rank 9") then CastSpellByName("Power Word: Shield(Rank 9)"); else if UL("player")>47 and UL(UT)>41 and (UM("player")>355 or BIF()) and GotSpell("Power Word: Shield","Rank 8") then CastSpellByName("Power Word: Shield(Rank 8)"); else if UL("player")>41 and UL(UT)>35 and (UM("player")>300 or BIF()) and GotSpell("Power Word: Shield","Rank 7") then CastSpellByName("Power Word: Shield(Rank 7)"); else if UL("player")>35 and UL(UT)>29 and (UM("player")>250 or BIF()) and GotSpell("Power Word: Shield","Rank 6") then CastSpellByName("Power Word: Shield(Rank 6)"); else if UL("player")>29 and UL(UT)>23 and (UM("player")>210 or BIF()) and GotSpell("Power Word: Shield","Rank 5") then CastSpellByName("Power Word: Shield(Rank 5)"); else if UL("player")>23 and UL(UT)>17 and (UM("player")>175 or BIF()) and GotSpell("Power Word: Shield","Rank 4") then CastSpellByName("Power Word: Shield(Rank 4)"); else if UL("player")>17 and UL(UT)>11 and (UM("player")>130 or BIF()) and GotSpell("Power Word: Shield","Rank 3") then CastSpellByName("Power Word: Shield(Rank 3)"); else if UL("player")>11 and UL(UT)>5 and (UM("player")>80 or BIF()) and GotSpell("Power Word: Shield","Rank 2") then CastSpellByName("Power Word: Shield(Rank 2)"); else if UL("player")>5 and UL(UT)>0 and (UM("player")>45 or BIF()) and GotSpell("Power Word: Shield","Rank 1") then CastSpellByName("Power Word: Shield(Rank 1)"); end;end;end;end;end;end;end;end;end;end;else if not UnitExists("target") or UnitIsUnit("player","target") or UnitIsEnemy("player","target") then CastSpellByName("Touch of Weakness"); end;end;else CastSpellByName("Inner Focus");end;
-=-
/script local UL,UM,UT=UnitLevel,UnitMana;
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
local function GotDebuff(name,target) 
	if UnitExists("target") then if UnitIsEnemy("target","player") then target = "player"; else target = "target";end; else target = "player" end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function BIF() return buffed("Inner Focus")=="buff" end;
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
if not IsAltKeyDown() or BIF() or not GotSpell() then 
	if not GotDebuff("Spell_Holy_AshesToAshes") then 
		if UL("player")>59 and UL(UT)>53 and (UM("player")>500 or BIF()) and GotSpell("Power Word: Shield","Rank 10") then CastSpellByName("Power Word: Shield(Rank 10)"); 
		else 
			if UL("player")>53 and UL(UT)>47 and (UM("player")>382 or BIF()) and GotSpell("Power Word: Shield","Rank 9") then CastSpellByName("Power Word: Shield(Rank 9)"); 
			else 
				if UL("player")>47 and UL(UT)>41 and (UM("player")>355 or BIF()) and GotSpell("Power Word: Shield","Rank 8") then CastSpellByName("Power Word: Shield(Rank 8)"); 
				else 
					if UL("player")>41 and UL(UT)>35 and (UM("player")>300 or BIF()) and GotSpell("Power Word: Shield","Rank 7") then CastSpellByName("Power Word: Shield(Rank 7)"); 
					else 
						if UL("player")>35 and UL(UT)>29 and (UM("player")>250 or BIF()) and GotSpell("Power Word: Shield","Rank 6") then CastSpellByName("Power Word: Shield(Rank 6)"); 
						else 
							if UL("player")>29 and UL(UT)>23 and (UM("player")>210 or BIF()) and GotSpell("Power Word: Shield","Rank 5") then CastSpellByName("Power Word: Shield(Rank 5)"); 
							else 
								if UL("player")>23 and UL(UT)>17 and (UM("player")>175 or BIF()) and GotSpell("Power Word: Shield","Rank 4") then CastSpellByName("Power Word: Shield(Rank 4)"); 
								else 
									if UL("player")>17 and UL(UT)>11 and (UM("player")>130 or BIF()) and GotSpell("Power Word: Shield","Rank 3") then CastSpellByName("Power Word: Shield(Rank 3)"); 
									else 
										if UL("player")>11 and UL(UT)>5 and (UM("player")>80 or BIF()) and GotSpell("Power Word: Shield","Rank 2") then CastSpellByName("Power Word: Shield(Rank 2)"); 
										else 
											if UL("player")>5 and UL(UT)>0 and (UM("player")>45 or BIF()) and GotSpell("Power Word: Shield","Rank 1") then CastSpellByName("Power Word: Shield(Rank 1)"); 
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
		if not UnitExists("target") or UnitIsUnit("player","target") or UnitIsEnemy("player","target") then CastSpellByName("Touch of Weakness"); end;
	end;
else 
	CastSpellByName("Inner Focus");
end;
