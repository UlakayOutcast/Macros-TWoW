-=Shadowburn=- Тип и Ранг в зависимости от здоровья цели и маны игрока (спроверкой таланта Cataclysm).
/script local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell and spellRank==rank then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;local UH,PM=0,0;local _,_,_,_,TR = GetTalentInfo(3, 2);TR=(100-TR*2)/100;if UnitExists("target") then UH=UnitHealth("target");end;PM=UnitMana("player");if nil then CastSpellByName("Shadowburn");end;if UH<=503+random(503) and PM>=365*TR and GotSpell("Shadowburn","Rank 6") then CastSpellByName("Shadowburn(Rank 6)"); else if UH<=393+random(393) and PM>=305*TR and GotSpell("Shadowburn","Rank 5") then CastSpellByName("Shadowburn(Rank 5)"); else if UH<=294+random(294) and PM>=245*TR and GotSpell("Shadowburn","Rank 4") then CastSpellByName("Shadowburn(Rank 4)"); else if UH<=211+random(211) and PM>=190*TR and GotSpell("Shadowburn","Rank 3") then CastSpellByName("Shadowburn(Rank 3)"); else if UH<=132+random(132) and PM>=130*TR and GotSpell("Shadowburn","Rank 2") then CastSpellByName("Shadowburn(Rank 2)"); else if UH<=100+random(100) and PM>=105*TR and GotSpell("Shadowburn","Rank 1") then CastSpellByName("Shadowburn(Rank 1)"); end;end;end;end;end;end;

/script 
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
local UH,PM=0,0;
local _,_,_,_,TR = GetTalentInfo(3, 2);TR=(100-TR*2)/100;
if UnitExists("target") then UH=UnitHealth("target");end;
PM=UnitMana("player");if nil then CastSpellByName("Shadowburn");end;
if UH<=503+random(503) and PM>=365*TR and GotSpell("Shadowburn","Rank 6") then CastSpellByName("Shadowburn(Rank 6)"); 
else 
	if UH<=393+random(393) and PM>=305*TR and GotSpell("Shadowburn","Rank 5") then CastSpellByName("Shadowburn(Rank 5)"); 
	else 
		if UH<=294+random(294) and PM>=245*TR and GotSpell("Shadowburn","Rank 4") then CastSpellByName("Shadowburn(Rank 4)"); 
		else 
			if UH<=211+random(211) and PM>=190*TR and GotSpell("Shadowburn","Rank 3") then CastSpellByName("Shadowburn(Rank 3)"); 
			else 
				if UH<=132+random(132) and PM>=130*TR and GotSpell("Shadowburn","Rank 2") then CastSpellByName("Shadowburn(Rank 2)"); 
				else 
					if UH<=100+random(100) and PM>=105*TR and GotSpell("Shadowburn","Rank 1") then CastSpellByName("Shadowburn(Rank 1)"); end;
				end;
			end;
		end;
	end;
end;
