-=Renew=-

/script local UL,UM,NS,UT,AH=UnitLevel,UnitMana,"Renew";local function GotSpell(spell,rank) local ix,spellName,spellRank;if not spell then spell="Inner Focus";rank="";end;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local function BIF() return buffed("Inner Focus")=="buff" end;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;local function inCombat() return UnitAffectingCombat(UT);end;AH=UnitHealthMax(UT)-UnitHealth(UT);if not IsAltKeyDown() or BIF() or not GotSpell() then if UL("player")>59 and UL(UT)>55 and (UM("player")>409 or BIF()) and (AH>970 or inCombat()) and GotSpell("Renew","Rank 10") then CastSpellByName("Renew(Rank 10)"); else if UL("player")>55 and UL(UT)>49 and (UM("player")>364 or BIF()) and (AH>810 or inCombat()) and GotSpell("Renew","Rank 9") then CastSpellByName("Renew(Rank 9)"); else if UL("player")>49 and UL(UT)>44 and (UM("player")>304 or BIF()) and (AH>650 or inCombat()) and GotSpell("Renew","Rank 8") then CastSpellByName("Renew(Rank 8)"); else if UL("player")>43 and UL(UT)>37 and (UM("player")>249 or BIF()) and (AH>510 or inCombat()) and GotSpell("Renew","Rank 7") then CastSpellByName("Renew(Rank 7)"); else if UL("player")>37 and UL(UT)>31 and (UM("player")>204 or BIF()) and (AH>400 or inCombat()) and GotSpell("Renew","Rank 6") then CastSpellByName("Renew(Rank 6)"); else if UL("player")>31 and UL(UT)>25 and (UM("player")>169 or BIF()) and (AH>315 or inCombat()) and GotSpell("Renew","Rank 5") then CastSpellByName("Renew(Rank 5)"); else if UL("player")>25 and UL(UT)>19 and (UM("player")>139 or BIF()) and (AH>245 or inCombat()) and GotSpell("Renew","Rank 4") then CastSpellByName("Renew(Rank 4)"); else if UL("player")>19 and UL(UT)>13 and (UM("player")>104 or BIF()) and (AH>175 or inCombat()) and GotSpell("Renew","Rank 3") then CastSpellByName("Renew(Rank 3)"); else if UL("player")>13 and UL(UT)>7 and (UM("player")>64 or BIF()) and (AH>100 or inCombat()) and GotSpell("Renew","Rank 2") then CastSpellByName("Renew(Rank 2)"); else if UL("player")>7 and UL(UT)>0 and (UM("player")>29 or BIF()) and AH>45 and GotSpell("Renew","Rank 1") then CastSpellByName("Renew(Rank 1)"); else CastSpellByName("Renew(Rank 1)");end;end;end;end;end;end;end;end;end;end;else CastSpellByName("Inner Focus");end;
-=-
/script local UL,UM,NS,UT,AH=UnitLevel,UnitMana,"Renew";
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
local function inCombat() return UnitAffectingCombat(UT);end;
AH=UnitHealthMax(UT)-UnitHealth(UT);
if not IsAltKeyDown() or BIF() or not GotSpell() then 
	if UL("player")>59 and UL(UT)>55 and (UM("player")>409 or BIF()) and (AH>970 or inCombat()) and GotSpell("Renew","Rank 10") then CastSpellByName("Renew(Rank 10)"); 
	else 
		if UL("player")>55 and UL(UT)>49 and (UM("player")>364 or BIF()) and (AH>810 or inCombat()) and GotSpell("Renew","Rank 9") then CastSpellByName("Renew(Rank 9)"); 
		else 
			if UL("player")>49 and UL(UT)>44 and (UM("player")>304 or BIF()) and (AH>650 or inCombat()) and GotSpell("Renew","Rank 8") then CastSpellByName("Renew(Rank 8)"); 
			else 
				if UL("player")>43 and UL(UT)>37 and (UM("player")>249 or BIF()) and (AH>510 or inCombat()) and GotSpell("Renew","Rank 7") then CastSpellByName("Renew(Rank 7)"); 
				else 
					if UL("player")>37 and UL(UT)>31 and (UM("player")>204 or BIF()) and (AH>400 or inCombat()) and GotSpell("Renew","Rank 6") then CastSpellByName("Renew(Rank 6)"); 
					else 
						if UL("player")>31 and UL(UT)>25 and (UM("player")>169 or BIF()) and (AH>315 or inCombat()) and GotSpell("Renew","Rank 5") then CastSpellByName("Renew(Rank 5)"); 
						else 
							if UL("player")>25 and UL(UT)>19 and (UM("player")>139 or BIF()) and (AH>245 or inCombat()) and GotSpell("Renew","Rank 4") then CastSpellByName("Renew(Rank 4)"); 
							else 
								if UL("player")>19 and UL(UT)>13 and (UM("player")>104 or BIF()) and (AH>175 or inCombat()) and GotSpell("Renew","Rank 3") then CastSpellByName("Renew(Rank 3)"); 
								else 
									if UL("player")>13 and UL(UT)>7 and (UM("player")>64 or BIF()) and (AH>100 or inCombat()) and GotSpell("Renew","Rank 2") then CastSpellByName("Renew(Rank 2)"); 
									else 
										if UL("player")>7 and UL(UT)>0 and (UM("player")>29 or BIF()) and AH>45 and GotSpell("Renew","Rank 1") then CastSpellByName("Renew(Rank 1)"); 
										else CastSpellByName("Renew(Rank 1)");
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

-=-=-

/script local UL,UM,NS,UT,AH=UnitLevel,UnitMana,"Renew";local function GotSpell(spell,rank) local ix,spellName,spellRank;if not spell then spell="Inner Focus";rank="";end;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local function BIF() return buffed("Inner Focus")=="buff" end;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);if not IsAltKeyDown() or BIF() or not GotSpell() then if UL("player")>59 and UL(UT)>55 and (UM("player")>409 or BIF()) and AH>970 and GotSpell("Renew","Rank 10") then CastSpellByName("Renew(Rank 10)"); else if UL("player")>55 and UL(UT)>49 and (UM("player")>364 or BIF()) and AH>810 and GotSpell("Renew","Rank 9") then CastSpellByName("Renew(Rank 9)"); else if UL("player")>49 and UL(UT)>44 and (UM("player")>304 or BIF()) and AH>650 and GotSpell("Renew","Rank 8") then CastSpellByName("Renew(Rank 8)"); else if UL("player")>43 and UL(UT)>37 and (UM("player")>249 or BIF()) and AH>510 and GotSpell("Renew","Rank 7") then CastSpellByName("Renew(Rank 7)"); else if UL("player")>37 and UL(UT)>31 and (UM("player")>204 or BIF()) and AH>400 and GotSpell("Renew","Rank 6") then CastSpellByName("Renew(Rank 6)"); else if UL("player")>31 and UL(UT)>25 and (UM("player")>169 or BIF()) and AH>315 and GotSpell("Renew","Rank 5") then CastSpellByName("Renew(Rank 5)"); else if UL("player")>25 and UL(UT)>19 and (UM("player")>139 or BIF()) and AH>245 and GotSpell("Renew","Rank 4") then CastSpellByName("Renew(Rank 4)"); else if UL("player")>19 and UL(UT)>13 and (UM("player")>104 or BIF()) and AH>175 and GotSpell("Renew","Rank 3") then CastSpellByName("Renew(Rank 3)"); else if UL("player")>13 and UL(UT)>7 and (UM("player")>64 or BIF()) and AH>100 and GotSpell("Renew","Rank 2") then CastSpellByName("Renew(Rank 2)"); else if UL("player")>7 and UL(UT)>0 and (UM("player")>29 or BIF()) and AH>45 and GotSpell("Renew","Rank 1") then CastSpellByName("Renew(Rank 1)"); else CastSpellByName("Renew(Rank 1)");end;end;end;end;end;end;end;end;end;end;else CastSpellByName("Inner Focus");end;
-=-
/script local UL,UM,NS,UT,AH=UnitLevel,UnitMana,"Renew";
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
	if UL("player")>59 and UL(UT)>55 and (UM("player")>409 or BIF()) and AH>970 and GotSpell("Renew","Rank 10") then CastSpellByName("Renew(Rank 10)"); 
	else 
		if UL("player")>55 and UL(UT)>49 and (UM("player")>364 or BIF()) and AH>810 and GotSpell("Renew","Rank 9") then CastSpellByName("Renew(Rank 9)"); 
		else 
			if UL("player")>49 and UL(UT)>44 and (UM("player")>304 or BIF()) and AH>650 and GotSpell("Renew","Rank 8") then CastSpellByName("Renew(Rank 8)"); 
			else 
				if UL("player")>43 and UL(UT)>37 and (UM("player")>249 or BIF()) and AH>510 and GotSpell("Renew","Rank 7") then CastSpellByName("Renew(Rank 7)"); 
				else 
					if UL("player")>37 and UL(UT)>31 and (UM("player")>204 or BIF()) and AH>400 and GotSpell("Renew","Rank 6") then CastSpellByName("Renew(Rank 6)"); 
					else 
						if UL("player")>31 and UL(UT)>25 and (UM("player")>169 or BIF()) and AH>315 and GotSpell("Renew","Rank 5") then CastSpellByName("Renew(Rank 5)"); 
						else 
							if UL("player")>25 and UL(UT)>19 and (UM("player")>139 or BIF()) and AH>245 and GotSpell("Renew","Rank 4") then CastSpellByName("Renew(Rank 4)"); 
							else 
								if UL("player")>19 and UL(UT)>13 and (UM("player")>104 or BIF()) and AH>175 and GotSpell("Renew","Rank 3") then CastSpellByName("Renew(Rank 3)"); 
								else 
									if UL("player")>13 and UL(UT)>7 and (UM("player")>64 or BIF()) and AH>100 and GotSpell("Renew","Rank 2") then CastSpellByName("Renew(Rank 2)"); 
									else 
										if UL("player")>7 and UL(UT)>0 and (UM("player")>29 or BIF()) and AH>45 and GotSpell("Renew","Rank 1") then CastSpellByName("Renew(Rank 1)"); 
										else CastSpellByName("Renew(Rank 1)");
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

-=-=-

/script local UL,UM,NS,UT,AH=UnitLevel,UnitMana,"Renew";local function GotSpell(spell,rank) local ix,spellName,spellRank;if not spell then spell="Inner Focus";rank="";end;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local function BIF() return buffed("Inner Focus")=="buff" end;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);if not IsAltKeyDown() or BIF() or not GotSpell() then if UL("player")>59 and UL(UT)>55 and (UM("player")>409 or BIF()) and AH>970 and GotSpell("Renew","Rank 10") then NS="Renew(Rank 10)"; else if UL("player")>55 and UL(UT)>49 and (UM("player")>364 or BIF()) and AH>810 and GotSpell("Renew","Rank 9") then NS="Renew(Rank 9)"; else if UL("player")>49 and UL(UT)>44 and (UM("player")>304 or BIF()) and AH>650 and GotSpell("Renew","Rank 8") then NS="Renew(Rank 8)"; else if UL("player")>43 and UL(UT)>37 and (UM("player")>249 or BIF()) and AH>510 and GotSpell("Renew","Rank 7") then NS="Renew(Rank 7)"; else if UL("player")>37 and UL(UT)>31 and (UM("player")>204 or BIF()) and AH>400 and GotSpell("Renew","Rank 6") then NS="Renew(Rank 6)"; else if UL("player")>31 and UL(UT)>25 and (UM("player")>169 or BIF()) and AH>315 and GotSpell("Renew","Rank 5") then NS="Renew(Rank 5)"; else if UL("player")>25 and UL(UT)>19 and (UM("player")>139 or BIF()) and AH>245 and GotSpell("Renew","Rank 4") then NS="Renew(Rank 4)"; else if UL("player")>19 and UL(UT)>13 and (UM("player")>104 or BIF()) and AH>175 and GotSpell("Renew","Rank 3") then NS="Renew(Rank 3)"; else if UL("player")>13 and UL(UT)>7 and (UM("player")>64 or BIF()) and AH>100 and GotSpell("Renew","Rank 2") then NS="Renew(Rank 2)"; else if UL("player")>7 and UL(UT)>0 and (UM("player")>29 or BIF()) and AH>45 and GotSpell("Renew","Rank 1") then NS="Renew(Rank 1)"; else NS="Renew(Rank 1)";end;end;end;end;end;end;end;end;end;end;CastSpellByName(NS);else CastSpellByName("Inner Focus");end;
-=-
/script local UL,UM,NS,UT,AH=UnitLevel,UnitMana,"Renew";
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
	if UL("player")>59 and UL(UT)>55 and (UM("player")>409 or BIF()) and AH>970 and GotSpell("Renew","Rank 10") then NS="Renew(Rank 10)"; 
	else 
		if UL("player")>55 and UL(UT)>49 and (UM("player")>364 or BIF()) and AH>810 and GotSpell("Renew","Rank 9") then NS="Renew(Rank 9)"; 
		else 
			if UL("player")>49 and UL(UT)>44 and (UM("player")>304 or BIF()) and AH>650 and GotSpell("Renew","Rank 8") then NS="Renew(Rank 8)"; 
			else 
				if UL("player")>43 and UL(UT)>37 and (UM("player")>249 or BIF()) and AH>510 and GotSpell("Renew","Rank 7") then NS="Renew(Rank 7)"; 
				else 
					if UL("player")>37 and UL(UT)>31 and (UM("player")>204 or BIF()) and AH>400 and GotSpell("Renew","Rank 6") then NS="Renew(Rank 6)"; 
					else 
						if UL("player")>31 and UL(UT)>25 and (UM("player")>169 or BIF()) and AH>315 and GotSpell("Renew","Rank 5") then NS="Renew(Rank 5)"; 
						else 
							if UL("player")>25 and UL(UT)>19 and (UM("player")>139 or BIF()) and AH>245 and GotSpell("Renew","Rank 4") then NS="Renew(Rank 4)"; 
							else 
								if UL("player")>19 and UL(UT)>13 and (UM("player")>104 or BIF()) and AH>175 and GotSpell("Renew","Rank 3") then NS="Renew(Rank 3)"; 
								else 
									if UL("player")>13 and UL(UT)>7 and (UM("player")>64 or BIF()) and AH>100 and GotSpell("Renew","Rank 2") then NS="Renew(Rank 2)"; 
									else 
										if UL("player")>7 and UL(UT)>0 and (UM("player")>29 or BIF()) and AH>45 and GotSpell("Renew","Rank 1") then NS="Renew(Rank 1)"; 
										else NS="Renew(Rank 1)";
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
	CastSpellByName(NS);
else 
	CastSpellByName("Inner Focus");
end;

