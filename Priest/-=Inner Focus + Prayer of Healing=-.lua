-=Inner Focus + Flash Heal + Heal=-

/script local UL,UM=UnitLevel,UnitMana;local function GotSpell(spell,rank) local ix,spellName,spellRank;if not spell then spell="Inner Focus";rank="";end;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local function BIF() return buffed("Inner Focus")=="buff" end;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;if not IsAltKeyDown() or BIF() or not GotSpell() then if UL("player")>59 and ((UM("player")>1069) or BIF()) and GotSpell("Prayer of Healing","Rank 5") then CastSpellByName("Prayer of Healing(Rank 5)");else if UL("player")>59 and ((UM("player")>1029) or BIF()) and GotSpell("Prayer of Healing","Rank 4") then CastSpellByName("Prayer of Healing(Rank 4)");else if UL("player")>49 and ((UM("player")>769) or BIF()) and GotSpell("Prayer of Healing","Rank 3") then CastSpellByName("Prayer of Healing(Rank 3)");else if UL("player")>39 and ((UM("player")>559) or BIF())and GotSpell("Prayer of Healing","Rank 2") then CastSpellByName("Prayer of Healing(Rank 2)");else CastSpellByName("Prayer of Healing(Rank 1)");end;end;end;end;else CastSpellByName("Inner Focus");end;
-=-
/script local UL,UM=UnitLevel,UnitMana;
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
if not IsAltKeyDown() or BIF() or not GotSpell() then 
	if UL("player")>59 and ((UM("player")>1069) or BIF()) and GotSpell("Prayer of Healing","Rank 5") then CastSpellByName("Prayer of Healing(Rank 5)");
	else 
		if UL("player")>59 and ((UM("player")>1029) or BIF()) and GotSpell("Prayer of Healing","Rank 4") then CastSpellByName("Prayer of Healing(Rank 4)");
		else 
			if UL("player")>49 and ((UM("player")>769) or BIF()) and GotSpell("Prayer of Healing","Rank 3") then CastSpellByName("Prayer of Healing(Rank 3)");
			else 
				if UL("player")>39 and ((UM("player")>559) or BIF())and GotSpell("Prayer of Healing","Rank 2") then CastSpellByName("Prayer of Healing(Rank 2)");
				else 
					CastSpellByName("Prayer of Healing(Rank 1)");
				end;
			end;
		end;
	end;
else 
	CastSpellByName("Inner Focus");
end;