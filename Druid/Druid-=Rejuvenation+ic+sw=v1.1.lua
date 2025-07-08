-=Rejuvenation=- Rank в зависимости от уровня играка, его маны, уровня цели и отсутствующего здоровья цели.
/script local UL,UM,UT,AH=UnitLevel,UnitMana;local function GotSpell(spell,rank) local ix,spellName,spellRank;if not spell then spell="Inner Focus";rank="";end;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local function GotBuff(name,target) if not target then target = 'target' end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function action(name) local ix for ix=1,200 do if GetSpellName(ix,'spell')==name then if GetSpellCooldown(ix,'spell')==0 then CastSpellByName(name) return 1 end end end end local function BIF() return buffed("Clearcasting")=="buff" end;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;local function inCombat() return UnitAffectingCombat(UT);end;AH=UnitHealthMax(UT)-UnitHealth(UT);if GotBuff("Rejuvenation",UT) and action("Swiftmend") then else if UL("player")>59 and UL(UT)>57 and ((UM("player")>359 and (AH>888 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 11") then CastSpellByName("Rejuvenation(Rank 11)"); else if UL("player")>57 and UL(UT)>51 and ((UM("player")>334 and (AH>756 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 10") then CastSpellByName("Rejuvenation(Rank 10)"); else if UL("player")>51 and UL(UT)>45 and ((UM("player")>279 and (AH>608 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 9") then CastSpellByName("Rejuvenation(Rank 9)"); else if UL("player")>45 and UL(UT)>39 and ((UM("player")>234 and (AH>488 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 8") then CastSpellByName("Rejuvenation(Rank 8)"); else if UL("player")>39 and UL(UT)>33 and ((UM("player")>194 and (AH>388 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 7") then CastSpellByName("Rejuvenation(Rank 7)"); else if UL("player")>33 and UL(UT)>27 and ((UM("player")>159 and (AH>304 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 6") then CastSpellByName("Rejuvenation(Rank 6)"); else if UL("player")>27 and UL(UT)>21 and ((UM("player")>134 and (AH>244 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 5") then CastSpellByName("Rejuvenation(Rank 5)"); else if UL("player")>21 and UL(UT)>15 and ((UM("player")>104 and (AH>180 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 4") then CastSpellByName("Rejuvenation(Rank 4)"); else if UL("player")>15 and UL(UT)>9 and ((UM("player")>74 and (AH>116 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 3") then CastSpellByName("Rejuvenation(Rank 3)"); else if UL("player")>9 and UL(UT)>3 and ((UM("player")>39 and (AH>56 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 2") then CastSpellByName("Rejuvenation(Rank 2)"); else if UL("player")>3 and UL(UT)>0 and ((UM("player")>24 and (AH>32 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 1") then CastSpellByName("Rejuvenation(Rank 1)"); else CastSpellByName("Rejuvenation(Rank 1)");end;end;end;end;end;end;end;end;end;end;end;end;
-=-
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
local function GotBuff(name,target) 
	if not target then target = 'target' end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff(target,ix) 
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function action(name) 
	local ix 
	for ix=1,200 do 
		if GetSpellName(ix,'spell')==name then 
			if GetSpellCooldown(ix,'spell')==0 then 
				CastSpellByName(name) 
				return 1 
			end 
		end 
	end 
end 
local function BIF() return buffed("Clearcasting")=="buff" end;
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
local function inCombat() return UnitAffectingCombat(UT);end;
AH=UnitHealthMax(UT)-UnitHealth(UT);
if GotBuff("Rejuvenation",UT) and action("Swiftmend") then 
else 
	if UL("player")>59 and UL(UT)>57 and ((UM("player")>359 and (AH>888 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 11") then CastSpellByName("Rejuvenation(Rank 11)"); 
	else 
		if UL("player")>57 and UL(UT)>51 and ((UM("player")>334 and (AH>756 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 10") then CastSpellByName("Rejuvenation(Rank 10)"); 
		else 
			if UL("player")>51 and UL(UT)>45 and ((UM("player")>279 and (AH>608 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 9") then CastSpellByName("Rejuvenation(Rank 9)"); 
			else 
				if UL("player")>45 and UL(UT)>39 and ((UM("player")>234 and (AH>488 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 8") then CastSpellByName("Rejuvenation(Rank 8)"); 
				else 
					if UL("player")>39 and UL(UT)>33 and ((UM("player")>194 and (AH>388 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 7") then CastSpellByName("Rejuvenation(Rank 7)"); 
					else 
						if UL("player")>33 and UL(UT)>27 and ((UM("player")>159 and (AH>304 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 6") then CastSpellByName("Rejuvenation(Rank 6)"); 
						else 
							if UL("player")>27 and UL(UT)>21 and ((UM("player")>134 and (AH>244 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 5") then CastSpellByName("Rejuvenation(Rank 5)"); 
							else 
								if UL("player")>21 and UL(UT)>15 and ((UM("player")>104 and (AH>180 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 4") then CastSpellByName("Rejuvenation(Rank 4)"); 
								else 
									if UL("player")>15 and UL(UT)>9 and ((UM("player")>74 and (AH>116 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 3") then CastSpellByName("Rejuvenation(Rank 3)"); 
									else 
										if UL("player")>9 and UL(UT)>3 and ((UM("player")>39 and (AH>56 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 2") then CastSpellByName("Rejuvenation(Rank 2)"); 
										else 
											if UL("player")>3 and UL(UT)>0 and ((UM("player")>24 and (AH>32 or inCombat())) or BIF()) and GotSpell("Rejuvenation","Rank 1") then CastSpellByName("Rejuvenation(Rank 1)"); 
											else CastSpellByName("Rejuvenation(Rank 1)");
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