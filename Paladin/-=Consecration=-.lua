-=Consecration=-
/script local SE,Rank,spellName,spellRank=0;if nil then CastSpellByName("Consecration");end;local function ActSpell(spell,rank,sw) local ix=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,'spell');return ix;end;end;end;ix=ix-1;end;end;end;function CastSpels()local PM=UnitMana("player");if PM>=505 and ActSpell("Consecration","Rank 5") then return;end;if PM>=390 and ActSpell("Consecration","Rank 4") then return;end;if PM>=290 and ActSpell("Consecration","Rank 3") then return;end;if PM>=205 and ActSpell("Consecration","Rank 2") then return;end;if PM>=120 and ActSpell("Consecration","Rank 1") then return;end;end;CastSpels();

/script local SE,Rank,spellName,spellRank=0;if nil then CastSpellByName("Consecration");end;
local function ActSpell(spell,rank,sw) 
	local ix=192;
	while(ix>0) do 
		if ix==0 then return nil;
		else 
			spellName,spellRank=GetSpellName(ix,"spell");
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if sw==true then return ix;end;
				if sw==0 then return GetSpellCooldown(ix,"spell");end;
				if sw==nil then 
					if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,'spell');return ix;end;
				end;
			end;
			ix=ix-1;
		end;
	end;
end;
function CastSpels()
	local PM=UnitMana("player");
	if PM>=505 and ActSpell("Consecration","Rank 5") then return;end;
	if PM>=390 and ActSpell("Consecration","Rank 4") then return;end;
	if PM>=290 and ActSpell("Consecration","Rank 3") then return;end;
	if PM>=205 and ActSpell("Consecration","Rank 2") then return;end;
	if PM>=120 and ActSpell("Consecration","Rank 1") then return;end;
end;
CastSpels();