-=Inner Focus + Flash Heal + Heal=- Ранг в зависимости от уровня цели, здоровья цели, оставшейся маны и активного Inner Focus

/script local UL,UM,NS,UT,AH=UnitLevel,UnitMana;local function GotSpell(spell,rank) local ix,spellName,spellRank;if not spell then spell="Inner Focus";rank="";end;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local function BIF() return buffed("Inner Focus")=="buff" end;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);if not IsAltKeyDown() or BIF() or not GotSpell() then if UnitHealth(UT)>(UnitHealthMax(UT)*0.25) then if UL("player")>59 and ((UM("player")>709) or BIF()) and AH>1966 and GotSpell("Greater Heal","Rank 5") then CastSpellByName("Greater Heal(Rank 5)");else if UL("player")>57 and ((UM("player")>654) or BIF()) and AH>1798 and GotSpell("Greater Heal","Rank 4") then CastSpellByName("Greater Heal(Rank 4)");else if UL("player")>51 and ((UM("player")>544) or BIF()) and AH>1437 and GotSpell("Greater Heal","Rank 3") then CastSpellByName("Greater Heal(Rank 3)");else if UL("player")>45 and ((UM("player")>454) or BIF()) and AH>1149 and GotSpell("Greater Heal","Rank 2") then CastSpellByName("Greater Heal(Rank 2)");else if UL("player")>39 and ((UM("player")>369) or BIF()) and AH>899 and GotSpell("Greater Heal","Rank 1") then CastSpellByName("Greater Heal(Rank 1)");else if UL("player")>33 and ((UM("player")>304) or BIF()) and AH>712 and GotSpell("Heal","Rank 4") then CastSpellByName("Heal(Rank 4)");else if UL("player")>27 and ((UM("player")>254) or BIF()) and AH>566 and GotSpell("Heal","Rank 3") then CastSpellByName("Heal(Rank 3)");else if UL("player")>21 and ((UM("player")>204) or BIF()) and AH>429 and GotSpell("Heal","Rank 2") then CastSpellByName("Heal(Rank 2)");else if UL("player")>15 and ((UM("player")>154) or BIF()) and AH>295 and GotSpell("Heal","Rank 1") then CastSpellByName("Heal(Rank 1)");else if UL("player")>9 and ((UM("player")>74) or BIF()) and AH>135 and GotSpell("Lesser Heal","Rank 3") then CastSpellByName("Lesser Heal(Rank 3)");else if UL("player")>3 and ((UM("player")>44) or BIF()) and AH>71 and GotSpell("Lesser Heal","Rank 2") then CastSpellByName("Lesser Heal(Rank 2)");else if UL("player")>0 and ((UM("player")>29) or BIF()) and AH>46 and GotSpell("Lesser Heal","Rank 1") then CastSpellByName("Lesser Heal(Rank 1)");else CastSpellByName("Lesser Heal(Rank 1)");end;end;end;end;end;end;end;end;end;end;end;end;else if UL("player")>55 and ((UM("player")>379) or BIF()) and AH>812 and GotSpell("Flash Heal","Rank 7") then CastSpellByName("Flash Heal(Rank 7)");else if UL("player")>49 and ((UM("player")>314) or BIF()) and AH>644 and GotSpell("Flash Heal","Rank 6") then CastSpellByName("Flash Heal(Rank 6)");else if UL("player")>44 and ((UM("player")>264) or BIF()) and AH>518 and GotSpell("Flash Heal","Rank 5") then CastSpellByName("Flash Heal(Rank 5)");else if UL("player")>37 and ((UM("player")>214) or BIF()) and AH>400 and GotSpell("Flash Heal","Rank 4") then CastSpellByName("Flash Heal(Rank 4)");else if UL("player")>31 and ((UM("player")>157) or BIF()) and AH>327 and GotSpell("Flash Heal","Rank 3") then CastSpellByName("Flash Heal(Rank 3)");else if UL("player")>25 and ((UM("player")>154) or BIF()) and AH>258 and GotSpell("Flash Heal","Rank 2") then CastSpellByName("Flash Heal(Rank 2)");else if UL("player")>19 and ((UM("player")>124) or BIF()) and AH>193 and GotSpell("Flash Heal","Rank 1") then CastSpellByName("Flash Heal(Rank 1)");else CastSpellByName("Lesser Heal(Rank 1)");end;end;end;end;end;end;end;end;else CastSpellByName("Inner Focus");end;
-=-
/script local UL,UM,NS,UT,AH=UnitLevel,UnitMana;
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
		if UL("player")>59 and ((UM("player")>709) or BIF()) and AH>1966 and GotSpell("Greater Heal","Rank 5") then CastSpellByName("Greater Heal(Rank 5)");
		else 
			if UL("player")>57 and ((UM("player")>654) or BIF()) and AH>1798 and GotSpell("Greater Heal","Rank 4") then CastSpellByName("Greater Heal(Rank 4)");
			else 
				if UL("player")>51 and ((UM("player")>544) or BIF()) and AH>1437 and GotSpell("Greater Heal","Rank 3") then CastSpellByName("Greater Heal(Rank 3)");
				else 
					if UL("player")>45 and ((UM("player")>454) or BIF()) and AH>1149 and GotSpell("Greater Heal","Rank 2") then CastSpellByName("Greater Heal(Rank 2)");
					else 
						if UL("player")>39 and ((UM("player")>369) or BIF()) and AH>899 and GotSpell("Greater Heal","Rank 1") then CastSpellByName("Greater Heal(Rank 1)");
						else 
							if UL("player")>33 and ((UM("player")>304) or BIF()) and AH>712 and GotSpell("Heal","Rank 4") then CastSpellByName("Heal(Rank 4)");
							else 
								if UL("player")>27 and ((UM("player")>254) or BIF()) and AH>566 and GotSpell("Heal","Rank 3") then CastSpellByName("Heal(Rank 3)");
								else 
									if UL("player")>21 and ((UM("player")>204) or BIF()) and AH>429 and GotSpell("Heal","Rank 2") then CastSpellByName("Heal(Rank 2)");
									else 
										if UL("player")>15 and ((UM("player")>154) or BIF()) and AH>295 and GotSpell("Heal","Rank 1") then CastSpellByName("Heal(Rank 1)");
										else 
											if UL("player")>9 and ((UM("player")>74) or BIF()) and AH>135 and GotSpell("Lesser Heal","Rank 3") then CastSpellByName("Lesser Heal(Rank 3)");
											else 
												if UL("player")>3 and ((UM("player")>44) or BIF()) and AH>71 and GotSpell("Lesser Heal","Rank 2") then CastSpellByName("Lesser Heal(Rank 2)");
												else 
													if UL("player")>0 and ((UM("player")>29) or BIF()) and AH>46 and GotSpell("Lesser Heal","Rank 1") then CastSpellByName("Lesser Heal(Rank 1)");
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
	else 
		if UL("player")>55 and ((UM("player")>379) or BIF()) and AH>812 and GotSpell("Flash Heal","Rank 7") then CastSpellByName("Flash Heal(Rank 7)");
		else 
			if UL("player")>49 and ((UM("player")>314) or BIF()) and AH>644 and GotSpell("Flash Heal","Rank 6") then CastSpellByName("Flash Heal(Rank 6)");
			else 
				if UL("player")>44 and ((UM("player")>264) or BIF()) and AH>518 and GotSpell("Flash Heal","Rank 5") then CastSpellByName("Flash Heal(Rank 5)");
				else 
					if UL("player")>37 and ((UM("player")>214) or BIF()) and AH>400 and GotSpell("Flash Heal","Rank 4") then CastSpellByName("Flash Heal(Rank 4)");
					else 
						if UL("player")>31 and ((UM("player")>157) or BIF()) and AH>327 and GotSpell("Flash Heal","Rank 3") then CastSpellByName("Flash Heal(Rank 3)");
						else 
							if UL("player")>25 and ((UM("player")>154) or BIF()) and AH>258 and GotSpell("Flash Heal","Rank 2") then CastSpellByName("Flash Heal(Rank 2)");
							else 
								if UL("player")>19 and ((UM("player")>124) or BIF()) and AH>193 and GotSpell("Flash Heal","Rank 1") then CastSpellByName("Flash Heal(Rank 1)");
								else CastSpellByName("Lesser Heal(Rank 1)");
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

/script local UL,UM,NS,UT,AH=UnitLevel,UnitMana;local function GotSpell(spell,rank) local ix,spellName,spellRank;if not spell then spell="Inner Focus";rank="";end;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local function BIF() return buffed("Inner Focus")=="buff" end;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);if not IsAltKeyDown() or BIF() or not GotSpell() then if UnitHealth(UT)<(UnitHealthMax(UT)*0.25) then if UL("player")>55 and ((UM("player")>379) or BIF()) and AH>812 and GotSpell("Flash Heal","Rank 7") then NS="Flash Heal(Rank 7)";else if UL("player")>49 and ((UM("player")>314) or BIF()) and AH>644 and GotSpell("Flash Heal","Rank 6") then NS="Flash Heal(Rank 6)";else if UL("player")>44 and ((UM("player")>264) or BIF()) and AH>518 and GotSpell("Flash Heal","Rank 5") then NS="Flash Heal(Rank 5)";else if UL("player")>37 and ((UM("player")>214) or BIF()) and AH>400 and GotSpell("Flash Heal","Rank 4") then NS="Flash Heal(Rank 4)";else if UL("player")>31 and ((UM("player")>157) or BIF()) and AH>327 and GotSpell("Flash Heal","Rank 3") then NS="Flash Heal(Rank 3)";else if UL("player")>25 and ((UM("player")>154) or BIF()) and AH>258 and GotSpell("Flash Heal","Rank 2") then NS="Flash Heal(Rank 2)";else if UL("player")>19 and ((UM("player")>124) or BIF()) and AH>193 and GotSpell("Flash Heal","Rank 1") then NS="Flash Heal(Rank 1)";else NS="Lesser Heal(Rank 1)";end;end;end;end;end;end;end;else if UL("player")>59 and ((UM("player")>709) or BIF()) and AH>1966 and GotSpell("Greater Heal","Rank 5") then NS="Greater Heal(Rank 5)";else if UL("player")>57 and ((UM("player")>654) or BIF()) and AH>1798 and GotSpell("Greater Heal","Rank 4") then NS="Greater Heal(Rank 4)";else if UL("player")>51 and ((UM("player")>544) or BIF()) and AH>1437 and GotSpell("Greater Heal","Rank 3") then NS="Greater Heal(Rank 3)";else if UL("player")>45 and ((UM("player")>454) or BIF()) and AH>1149 and GotSpell("Greater Heal","Rank 2") then NS="Greater Heal(Rank 2)";else if UL("player")>39 and ((UM("player")>369) or BIF()) and AH>899 and GotSpell("Greater Heal","Rank 1") then NS="Greater Heal(Rank 1)";else if UL("player")>33 and ((UM("player")>304) or BIF()) and AH>712 and GotSpell("Heal","Rank 4") then NS="Heal(Rank 4)";else if UL("player")>27 and ((UM("player")>254) or BIF()) and AH>566 and GotSpell("Heal","Rank 3") then NS="Heal(Rank 3)";else if UL("player")>21 and ((UM("player")>204) or BIF()) and AH>429 and GotSpell("Heal","Rank 2") then NS="Heal(Rank 2)";else if UL("player")>15 and ((UM("player")>154) or BIF()) and AH>295 and GotSpell("Heal","Rank 1") then NS="Heal(Rank 1)";else if UL("player")>9 and ((UM("player")>74) or BIF()) and AH>135 and GotSpell("Lesser Heal","Rank 3") then NS="Lesser Heal(Rank 3)";else if UL("player")>3 and ((UM("player")>44) or BIF()) and AH>71 and GotSpell("Lesser Heal","Rank 2") then NS="Lesser Heal(Rank 2)";else if UL("player")>0 and ((UM("player")>29) or BIF()) and AH>46 and GotSpell("Lesser Heal","Rank 1") then NS="Lesser Heal(Rank 1)";else NS="Lesser Heal(Rank 1)";end;end;end;end;end;end;end;end;end;end;end;end;end;CastSpellByName(NS);else CastSpellByName("Inner Focus");end;
-=-
/script local UL,UM,NS,UT,AH=UnitLevel,UnitMana;
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
	if UnitHealth(UT)<(UnitHealthMax(UT)*0.25) then 
		if UL("player")>55 and ((UM("player")>379) or BIF()) and AH>812 and GotSpell("Flash Heal","Rank 7") then NS="Flash Heal(Rank 7)";
		else 
			if UL("player")>49 and ((UM("player")>314) or BIF()) and AH>644 and GotSpell("Flash Heal","Rank 6") then NS="Flash Heal(Rank 6)";
			else 
				if UL("player")>44 and ((UM("player")>264) or BIF()) and AH>518 and GotSpell("Flash Heal","Rank 5") then NS="Flash Heal(Rank 5)";
				else 
					if UL("player")>37 and ((UM("player")>214) or BIF()) and AH>400 and GotSpell("Flash Heal","Rank 4") then NS="Flash Heal(Rank 4)";
					else 
						if UL("player")>31 and ((UM("player")>157) or BIF()) and AH>327 and GotSpell("Flash Heal","Rank 3") then NS="Flash Heal(Rank 3)";
						else 
							if UL("player")>25 and ((UM("player")>154) or BIF()) and AH>258 and GotSpell("Flash Heal","Rank 2") then NS="Flash Heal(Rank 2)";
							else 
								if UL("player")>19 and ((UM("player")>124) or BIF()) and AH>193 and GotSpell("Flash Heal","Rank 1") then NS="Flash Heal(Rank 1)";
								else NS="Lesser Heal(Rank 1)";
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	else 
		if UL("player")>59 and ((UM("player")>709) or BIF()) and AH>1966 and GotSpell("Greater Heal","Rank 5") then NS="Greater Heal(Rank 5)";
		else 
			if UL("player")>57 and ((UM("player")>654) or BIF()) and AH>1798 and GotSpell("Greater Heal","Rank 4") then NS="Greater Heal(Rank 4)";
			else 
				if UL("player")>51 and ((UM("player")>544) or BIF()) and AH>1437 and GotSpell("Greater Heal","Rank 3") then NS="Greater Heal(Rank 3)";
				else 
					if UL("player")>45 and ((UM("player")>454) or BIF()) and AH>1149 and GotSpell("Greater Heal","Rank 2") then NS="Greater Heal(Rank 2)";
					else 
						if UL("player")>39 and ((UM("player")>369) or BIF()) and AH>899 and GotSpell("Greater Heal","Rank 1") then NS="Greater Heal(Rank 1)";
						else 
							if UL("player")>33 and ((UM("player")>304) or BIF()) and AH>712 and GotSpell("Heal","Rank 4") then NS="Heal(Rank 4)";
							else 
								if UL("player")>27 and ((UM("player")>254) or BIF()) and AH>566 and GotSpell("Heal","Rank 3") then NS="Heal(Rank 3)";
								else 
									if UL("player")>21 and ((UM("player")>204) or BIF()) and AH>429 and GotSpell("Heal","Rank 2") then NS="Heal(Rank 2)";
									else 
										if UL("player")>15 and ((UM("player")>154) or BIF()) and AH>295 and GotSpell("Heal","Rank 1") then NS="Heal(Rank 1)";
										else 
											if UL("player")>9 and ((UM("player")>74) or BIF()) and AH>135 and GotSpell("Lesser Heal","Rank 3") then NS="Lesser Heal(Rank 3)";
											else 
												if UL("player")>3 and ((UM("player")>44) or BIF()) and AH>71 and GotSpell("Lesser Heal","Rank 2") then NS="Lesser Heal(Rank 2)";
												else 
													if UL("player")>0 and ((UM("player")>29) or BIF()) and AH>46 and GotSpell("Lesser Heal","Rank 1") then NS="Lesser Heal(Rank 1)";
													else NS="Lesser Heal(Rank 1)";
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
	end;
	CastSpellByName(NS);
else 
	CastSpellByName("Inner Focus");
end;
