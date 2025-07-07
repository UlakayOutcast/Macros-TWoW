-=Flash-Holy Light=- -v3.1 — 1.17.2 PfUi mouseover
/script local UL,UM,UT,AH=UnitLevel,UnitMana;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local function GotBuff(name,target)     local tex,cnt,ix for ix = 1,32 do       tex,cnt = UnitBuff("player",ix)       if not tex then return end;      if strfind(tex,name) then return cnt end;    end;end;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);if UnitHealth(UT)>UnitHealthMax(UT)*0.20 or GotBuff("ability_paladin_judgementblue") then if UL("player")>59 and UM("player")>659 and AH>1590 and GotSpell("Holy Light","Rank 9") then SlashCmdList.PFCAST("Holy Light(Rank 9)");else if UL("player")>53 and UM("player")>579 and AH>1246 and GotSpell("Holy Light","Rank 8") then SlashCmdList.PFCAST("Holy Light(Rank 8)");else if UL("player")>45 and UM("player")>464 and AH>945 and GotSpell("Holy Light","Rank 7") then SlashCmdList.PFCAST("Holy Light(Rank 7)");else if UL("player")>37 and UM("player")>364 and AH>698 and GotSpell("Holy Light","Rank 6") then SlashCmdList.PFCAST("Holy Light(Rank 6)");else if UL("player")>29 and UM("player")>274 and AH>491 and GotSpell("Holy Light","Rank 5") then SlashCmdList.PFCAST("Holy Light(Rank 5)");else if UL("player")>21 and UM("player")>189 and AH>310 and GotSpell("Holy Light","Rank 4") then SlashCmdList.PFCAST("Holy Light(Rank 4)");else if UL("player")>13 and UM("player")>109 and AH>159 and GotSpell("Holy Light","Rank 3") then SlashCmdList.PFCAST("Holy Light(Rank 3)");else if UL("player")>5 and UM("player")>59 and AH>76 and GotSpell("Holy Light","Rank 2") then SlashCmdList.PFCAST("Holy Light(Rank 2)");else if UL("player")>0 and UM("player")>34 and AH>39 and GotSpell("Holy Light","Rank 1") then SlashCmdList.PFCAST("Holy Light(Rank 1)");else SlashCmdList.PFCAST("Holy Light(Rank 1)");end;end;end;end;end;end;end;end;end;else if UL("player")>57 and UM("player")>139 and AH>343 and GotSpell("Flash of Light","Rank 6") then SlashCmdList.PFCAST("Flash of Light(Rank 6)");else if UL("player")>49 and UM("player")>114 and AH>267 and GotSpell("Flash of Light","Rank 5") then SlashCmdList.PFCAST("Flash of Light(Rank 5)");else if UL("player")>41 and UM("player")>89 and AH>197 and GotSpell("Flash of Light","Rank 4") then SlashCmdList.PFCAST("Flash of Light(Rank 4)");else if UL("player")>33 and UM("player")>69 and AH>145 and GotSpell("Flash of Light","Rank 3") then SlashCmdList.PFCAST("Flash of Light(Rank 3)");else if UL("player")>25 and UM("player")>49 and AH>96 and GotSpell("Flash of Light","Rank 2") then SlashCmdList.PFCAST("Flash of Light(Rank 2)");else if UL("player")>19 and UM("player")>35 and AH>62 and GotSpell("Flash of Light","Rank 1") then SlashCmdList.PFCAST("Flash of Light(Rank 1)");else SlashCmdList.PFCAST("Flash of Light(Rank 1)");end;end;end;end;end;end;end;
-=-
/script local UL,UM,UT,AH=UnitLevel,UnitMana;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
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
    local tex,cnt,ix 
	for ix = 1,32 do 
      tex,cnt = UnitBuff("player",ix) 
      if not tex then return end;
      if strfind(tex,name) then return cnt end;
    end;
end;
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
AH=UnitHealthMax(UT)-UnitHealth(UT);
if UnitHealth(UT)>UnitHealthMax(UT)*0.20 or GotBuff("ability_paladin_judgementblue") then 
	if UL("player")>59 and UM("player")>659 and AH>1590 and GotSpell("Holy Light","Rank 9") then SlashCmdList.PFCAST("Holy Light(Rank 9)");
	else 
		if UL("player")>53 and UM("player")>579 and AH>1246 and GotSpell("Holy Light","Rank 8") then SlashCmdList.PFCAST("Holy Light(Rank 8)");
		else 
			if UL("player")>45 and UM("player")>464 and AH>945 and GotSpell("Holy Light","Rank 7") then SlashCmdList.PFCAST("Holy Light(Rank 7)");
			else 
				if UL("player")>37 and UM("player")>364 and AH>698 and GotSpell("Holy Light","Rank 6") then SlashCmdList.PFCAST("Holy Light(Rank 6)");
				else 
					if UL("player")>29 and UM("player")>274 and AH>491 and GotSpell("Holy Light","Rank 5") then SlashCmdList.PFCAST("Holy Light(Rank 5)");
					else 
						if UL("player")>21 and UM("player")>189 and AH>310 and GotSpell("Holy Light","Rank 4") then SlashCmdList.PFCAST("Holy Light(Rank 4)");
						else 
							if UL("player")>13 and UM("player")>109 and AH>159 and GotSpell("Holy Light","Rank 3") then SlashCmdList.PFCAST("Holy Light(Rank 3)");
							else 
								if UL("player")>5 and UM("player")>59 and AH>76 and GotSpell("Holy Light","Rank 2") then SlashCmdList.PFCAST("Holy Light(Rank 2)");
								else 
									if UL("player")>0 and UM("player")>34 and AH>39 and GotSpell("Holy Light","Rank 1") then SlashCmdList.PFCAST("Holy Light(Rank 1)");
									else SlashCmdList.PFCAST("Holy Light(Rank 1)");
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
	if UL("player")>57 and UM("player")>139 and AH>343 and GotSpell("Flash of Light","Rank 6") then SlashCmdList.PFCAST("Flash of Light(Rank 6)");
	else 
		if UL("player")>49 and UM("player")>114 and AH>267 and GotSpell("Flash of Light","Rank 5") then SlashCmdList.PFCAST("Flash of Light(Rank 5)");
		else 
			if UL("player")>41 and UM("player")>89 and AH>197 and GotSpell("Flash of Light","Rank 4") then SlashCmdList.PFCAST("Flash of Light(Rank 4)");
			else 
				if UL("player")>33 and UM("player")>69 and AH>145 and GotSpell("Flash of Light","Rank 3") then SlashCmdList.PFCAST("Flash of Light(Rank 3)");
				else 
					if UL("player")>25 and UM("player")>49 and AH>96 and GotSpell("Flash of Light","Rank 2") then SlashCmdList.PFCAST("Flash of Light(Rank 2)");
					else 
						if UL("player")>19 and UM("player")>35 and AH>62 and GotSpell("Flash of Light","Rank 1") then SlashCmdList.PFCAST("Flash of Light(Rank 1)");
						else SlashCmdList.PFCAST("Flash of Light(Rank 1)");
						end;
					end;
				end;
			end;
		end;
	end;
end;