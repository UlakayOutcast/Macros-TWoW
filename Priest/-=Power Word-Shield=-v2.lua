-=Power Word:Shield=- v2 Ранг в зависимости от уровня цели, оставшейся маны и активного Inner Focus

/script local function GotSpell(spell,rank) local ix,spellName,spellRank;if not spell then spell="Inner Focus";rank="";end;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local function GotDebuff(name,target) if not target then target = "player";end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function BIF() return buffed("Inner Focus")=="buff" end;function CastSpels()local ctrl,PM,PL,TL,UT=IsControlKeyDown(),UnitMana("player"),UnitLevel("player");if UnitLevel("target")==0 or UnitCanAttack("player","target") or ctrl then UT = "player";TL=UnitLevel("player");else UT = "target";TL=UnitLevel("target");end;if not IsAltKeyDown() or BIF() or not GotSpell() then if not GotDebuff("Spell_Holy_AshesToAshes",UT) then if PL>59 and TL>53 and (PM>500 or BIF()) and GotSpell("Power Word: Shield","Rank 10") then CastSpellByName("Power Word: Shield(Rank 10)",ctrl);return;end;if PL>53 and TL>47 and (PM>382 or BIF()) and GotSpell("Power Word: Shield","Rank 9") then CastSpellByName("Power Word: Shield(Rank 9)",ctrl);return;end;if PL>47 and TL>41 and (PM>355 or BIF()) and GotSpell("Power Word: Shield","Rank 8") then CastSpellByName("Power Word: Shield(Rank 8)",ctrl);return;end;if PL>41 and TL>35 and (PM>300 or BIF()) and GotSpell("Power Word: Shield","Rank 7") then CastSpellByName("Power Word: Shield(Rank 7)",ctrl);return;end;if PL>35 and TL>29 and (PM>250 or BIF()) and GotSpell("Power Word: Shield","Rank 6") then CastSpellByName("Power Word: Shield(Rank 6)",ctrl);return;end;if PL>29 and TL>23 and (PM>210 or BIF()) and GotSpell("Power Word: Shield","Rank 5") then CastSpellByName("Power Word: Shield(Rank 5)",ctrl);return;end;if PL>23 and TL>17 and (PM>175 or BIF()) and GotSpell("Power Word: Shield","Rank 4") then CastSpellByName("Power Word: Shield(Rank 4)",ctrl);return;end;if PL>17 and TL>11 and (PM>130 or BIF()) and GotSpell("Power Word: Shield","Rank 3") then CastSpellByName("Power Word: Shield(Rank 3)",ctrl);return;end;if PL>11 and TL>5 and (PM>80 or BIF()) and GotSpell("Power Word: Shield","Rank 2") then CastSpellByName("Power Word: Shield(Rank 2)",ctrl);return;end;if PL>5 and TL>0 and (PM>45 or BIF()) and GotSpell("Power Word: Shield","Rank 1") then CastSpellByName("Power Word: Shield(Rank 1)",ctrl);return;end;end;else CastSpellByName("Inner Focus");end;end;CastSpels();
-=-
/script 
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
	if not target then target = "player";end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function BIF() return buffed("Inner Focus")=="buff" end;
function CastSpels()
	local ctrl,PM,PL,TL,UT=IsControlKeyDown(),UnitMana("player"),UnitLevel("player");
	if UnitLevel("target")==0 or UnitCanAttack("player","target") or ctrl then UT = "player";TL=UnitLevel("player");else UT = "target";TL=UnitLevel("target");end;
	if not IsAltKeyDown() or BIF() or not GotSpell() then 
		if not GotDebuff("Spell_Holy_AshesToAshes",UT) then 
			if PL>59 and TL>53 and (PM>500 or BIF()) and GotSpell("Power Word: Shield","Rank 10") then CastSpellByName("Power Word: Shield(Rank 10)",ctrl);return;end;
			if PL>53 and TL>47 and (PM>382 or BIF()) and GotSpell("Power Word: Shield","Rank 9") then CastSpellByName("Power Word: Shield(Rank 9)",ctrl);return;end;
			if PL>47 and TL>41 and (PM>355 or BIF()) and GotSpell("Power Word: Shield","Rank 8") then CastSpellByName("Power Word: Shield(Rank 8)",ctrl);return;end;
			if PL>41 and TL>35 and (PM>300 or BIF()) and GotSpell("Power Word: Shield","Rank 7") then CastSpellByName("Power Word: Shield(Rank 7)",ctrl);return;end;
			if PL>35 and TL>29 and (PM>250 or BIF()) and GotSpell("Power Word: Shield","Rank 6") then CastSpellByName("Power Word: Shield(Rank 6)",ctrl);return;end;
			if PL>29 and TL>23 and (PM>210 or BIF()) and GotSpell("Power Word: Shield","Rank 5") then CastSpellByName("Power Word: Shield(Rank 5)",ctrl);return;end;
			if PL>23 and TL>17 and (PM>175 or BIF()) and GotSpell("Power Word: Shield","Rank 4") then CastSpellByName("Power Word: Shield(Rank 4)",ctrl);return;end;
			if PL>17 and TL>11 and (PM>130 or BIF()) and GotSpell("Power Word: Shield","Rank 3") then CastSpellByName("Power Word: Shield(Rank 3)",ctrl);return;end;
			if PL>11 and TL>5 and (PM>80 or BIF()) and GotSpell("Power Word: Shield","Rank 2") then CastSpellByName("Power Word: Shield(Rank 2)",ctrl);return;end;
			if PL>5 and TL>0 and (PM>45 or BIF()) and GotSpell("Power Word: Shield","Rank 1") then CastSpellByName("Power Word: Shield(Rank 1)",ctrl);return;end;
		end;
	else 
		CastSpellByName("Inner Focus");
	end;
end;
CastSpels();