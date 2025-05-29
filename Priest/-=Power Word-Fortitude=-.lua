-=Power Word:Fortitude=-

/script local UL=UnitLevel;local UM=UnitMana;local UT;local SW=0;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then return ix;end;end;end;end;if UnitExists("target")==nil or UnitCanAttack("player","target") then UT="player";else UT="target";end;if UL("player")>59 and UL(UT)>47 then if UM("player")>1500 and GotSpell("Power Word: Fortitude","Rank 6") then CastSpellByName("Power Word: Fortitude(Rank 6)");SW=1;end;else if UL("player")>47 and UL(UT)>36 then if UM("player")>1170 and GotSpell("Power Word: Fortitude","Rank 5") then CastSpellByName("Power Word: Fortitude(Rank 5)");SW=1;end;else if UL("player")>35 and UL(UT)>24 then if UM("player")>745 and GotSpell("Power Word: Fortitude","Rank 4") then CastSpellByName("Power Word: Fortitude(Rank 4)");SW=1;end;else if UL("player")>23 and UL(UT)>14 then if UM("player")>400 and GotSpell("Power Word: Fortitude","Rank 3") then CastSpellByName("Power Word: Fortitude(Rank 3)");SW=1;end;else if UL("player")>11 and UL(UT)>2 then if UM("player")>155 and GotSpell("Power Word: Fortitude","Rank 2") then CastSpellByName("Power Word: Fortitude(Rank 2)");SW=1;end;else if UL("player")>1 and UL(UT)>0 then if UM("player")>60 and GotSpell("Power Word: Fortitude","Rank 1") then CastSpellByName("Power Word: Fortitude(Rank 1)");SW=1;end;end;end;end;end;end;end;if UT=="player" then DoEmote("pray",0); else if CheckInteractDistance("target",4) and SW==1 then DoEmote("pray",target);end;end;
-=-
/script local UL=UnitLevel;local UM=UnitMana;local UT;local SW=0;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell and spellRank==rank then return ix;end;
		end;
	end;
end;
if UnitExists("target")==nil or UnitCanAttack("player","target") then UT="player";else UT="target";end;
if UL("player")>59 and UL(UT)>47 then if UM("player")>1500 and GotSpell("Power Word: Fortitude","Rank 6") then CastSpellByName("Power Word: Fortitude(Rank 6)");SW=1;end;
else 
	if UL("player")>47 and UL(UT)>36 then if UM("player")>1170 and GotSpell("Power Word: Fortitude","Rank 5") then CastSpellByName("Power Word: Fortitude(Rank 5)");SW=1;end;
	else 
		if UL("player")>35 and UL(UT)>24 then if UM("player")>745 and GotSpell("Power Word: Fortitude","Rank 4") then CastSpellByName("Power Word: Fortitude(Rank 4)");SW=1;end;
		else 
			if UL("player")>23 and UL(UT)>14 then if UM("player")>400 and GotSpell("Power Word: Fortitude","Rank 3") then CastSpellByName("Power Word: Fortitude(Rank 3)");SW=1;end;
			else 
				if UL("player")>11 and UL(UT)>2 then if UM("player")>155 and GotSpell("Power Word: Fortitude","Rank 2") then CastSpellByName("Power Word: Fortitude(Rank 2)");SW=1;end;
				else 
					if UL("player")>1 and UL(UT)>0 then if UM("player")>60 and GotSpell("Power Word: Fortitude","Rank 1") then CastSpellByName("Power Word: Fortitude(Rank 1)");SW=1;end;
					end;
				end;
			end;
		end;
	end;
end;
if UT=="player" then DoEmote("pray",0); else if CheckInteractDistance("target",4) and SW==1 then DoEmote("pray",target);end;end;

-=-=-

/script local UL=UnitLevel;local UM=UnitMana;local UT;local SW=0;local SW2=0;
if UnitExists("target")==nil or UnitCanAttack("player","target") then UT="player";SW=1;else UT="target";SW=2;end;
if UL("player")>59 and UL(UT)>47 then if UM("player")>1500 then CastSpellByName("Power Word: Fortitude(Rank 6)");SW2=1;end;
else 
	if UL("player")>47 and UL(UT)>36 then if UM("player")>1170 then CastSpellByName("Power Word: Fortitude(Rank 5)");SW2=1;end;
	else 
		if UL("player")>35 and UL(UT)>24 then if UM("player")>745 then CastSpellByName("Power Word: Fortitude(Rank 4)");SW2=1;end;
		else 
			if UL("player")>23 and UL(UT)>14 then if UM("player")>400 then CastSpellByName("Power Word: Fortitude(Rank 3)");SW2=1;end;
			else 
				if UL("player")>11 and UL(UT)>2 then if UM("player")>155 then CastSpellByName("Power Word: Fortitude(Rank 2)");SW2=1;end;
				else 
					if UL("player")>1 and UL(UT)>0 then if UM("player")>60 then CastSpellByName("Power Word: Fortitude(Rank 1)");SW2=1;end;
					end;
				end;
			end;
		end;
	end;
end;if SW2==1 and SW==2 then DoEmote("raise",target);end;
||
end;if SW2==1 then if SW==1 then TargetUnit("player");DoEmote("raise",player);TargetLastTarget();end;if SW==2 then DoEmote("raise",target);end;end;