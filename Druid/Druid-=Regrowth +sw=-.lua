-=Regrowth=- +Swiftmend Rank в зависимости от уровня играка, его маны, уровня цели и отсутствующего здоровья цели. С зажатым Alt используется "Nature's Swiftness"
/script local UL,UM,UT,AH=UnitLevel,UnitMana;local function GotSpell(spell,rank) local ix,spellName,spellRank;if not spell then spell="Nature's Swiftness";rank="";end;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local function GotBuff(name,target) if not target then target = 'target' end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local SMB=GotBuff("Spell_Shadow_ManaBurn");if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;local function inCombat() return UnitAffectingCombat(UT);end;AH=UnitHealthMax(UT)-UnitHealth(UT);if not IsAltKeyDown() then if not GotBuff("ResistNature",UT) or not GotSpell("Swiftmend") then if UL("player")>59 and UL(UT)>53 and ((UM("player")>879 and AH>2067) or SMB) and GotSpell("Regrowth","Rank 9") then CastSpellByName("Regrowth(Rank 9)"); else if UL("player")>53 and UL(UT)>47 and ((UM("player")>739 and AH>1670) or SMB) and GotSpell("Regrowth","Rank 8") then CastSpellByName("Regrowth(Rank 8)"); else if UL("player")>47 and UL(UT)>41 and ((UM("player")>614 and AH>1332) or SMB) and GotSpell("Regrowth","Rank 7") then CastSpellByName("Regrowth(Rank 7)"); else if UL("player")>41 and UL(UT)>35 and ((UM("player")>509 and AH>1057) or SMB) and GotSpell("Regrowth","Rank 6") then CastSpellByName("Regrowth(Rank 6)"); else if UL("player")>35 and UL(UT)>29 and ((UM("player")>419 and AH>832) or SMB) and GotSpell("Regrowth","Rank 5") then CastSpellByName("Regrowth(Rank 5)"); else if UL("player")>29 and UL(UT)>23 and ((UM("player")>349 and AH>661) or SMB) and GotSpell("Regrowth","Rank 4") then CastSpellByName("Regrowth(Rank 4)"); else if UL("player")>23 and UL(UT)>17 and ((UM("player")>279 and AH>449) or SMB) and GotSpell("Regrowth","Rank 3") then CastSpellByName("Regrowth(Rank 3)"); else if UL("player")>17 and UL(UT)>11 and ((UM("player")>204 and AH>339) or SMB) and GotSpell("Regrowth","Rank 2") then CastSpellByName("Regrowth(Rank 2)"); else if UL("player")>11 and UL(UT)>0 and ((UM("player")>119 and AH>182) or SMB) and GotSpell("Regrowth","Rank 1") then CastSpellByName("Regrowth(Rank 1)"); else CastSpellByName("Regrowth(Rank 1)");end;end;end;end;end;end;end;end;end;else CastSpellByName("Swiftmend")end;else CastSpellByName("Nature's Swiftness");end;
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
local function GotBuff(name,target) 
	if not target then target = 'target' end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff(target,ix) 
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local SMB=GotBuff("Spell_Shadow_ManaBurn");
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
local function inCombat() return UnitAffectingCombat(UT);end;
AH=UnitHealthMax(UT)-UnitHealth(UT);
if not IsAltKeyDown() then 
	if not GotBuff("ResistNature",UT) or not GotSpell("Swiftmend") then 
		if UL("player")>59 and UL(UT)>53 and ((UM("player")>879 and AH>2067) or SMB) and GotSpell("Regrowth","Rank 9") then CastSpellByName("Regrowth(Rank 9)"); 
		else 
			if UL("player")>53 and UL(UT)>47 and ((UM("player")>739 and AH>1670) or SMB) and GotSpell("Regrowth","Rank 8") then CastSpellByName("Regrowth(Rank 8)"); 
			else 
				if UL("player")>47 and UL(UT)>41 and ((UM("player")>614 and AH>1332) or SMB) and GotSpell("Regrowth","Rank 7") then CastSpellByName("Regrowth(Rank 7)"); 
				else 
					if UL("player")>41 and UL(UT)>35 and ((UM("player")>509 and AH>1057) or SMB) and GotSpell("Regrowth","Rank 6") then CastSpellByName("Regrowth(Rank 6)"); 
					else 
						if UL("player")>35 and UL(UT)>29 and ((UM("player")>419 and AH>832) or SMB) and GotSpell("Regrowth","Rank 5") then CastSpellByName("Regrowth(Rank 5)"); 
						else 
							if UL("player")>29 and UL(UT)>23 and ((UM("player")>349 and AH>661) or SMB) and GotSpell("Regrowth","Rank 4") then CastSpellByName("Regrowth(Rank 4)"); 
							else 
								if UL("player")>23 and UL(UT)>17 and ((UM("player")>279 and AH>449) or SMB) and GotSpell("Regrowth","Rank 3") then CastSpellByName("Regrowth(Rank 3)"); 
								else 
									if UL("player")>17 and UL(UT)>11 and ((UM("player")>204 and AH>339) or SMB) and GotSpell("Regrowth","Rank 2") then CastSpellByName("Regrowth(Rank 2)"); 
									else 
										if UL("player")>11 and UL(UT)>0 and ((UM("player")>119 and AH>182) or SMB) and GotSpell("Regrowth","Rank 1") then CastSpellByName("Regrowth(Rank 1)"); 
										else CastSpellByName("Regrowth(Rank 1)");
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
		CastSpellByName("Swiftmend")
	end;
else 
	CastSpellByName("Nature's Swiftness");
end;