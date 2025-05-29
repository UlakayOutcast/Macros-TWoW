-=Arcane Explosion=-
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank)local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then local St,Du=GetSpellCooldown(ix,"spell");if sw==nil and St==0 then if rank then CastSpellByName(spell.."("..rank..")")else CastSpell(ix,"spell");end;return ix;end;end;ix=ix-1;end;end;local PL,PM,CC=UnitLevel("player"),UnitMana("player"),GotBuff("Spell_Shadow_ManaBurn");if PL<54 or (PM<390 and not CC) or not ActSpell("Arcane Explosion","Rank 6") then if PL<46 or (PM<315 and not CC) or not ActSpell("Arcane Explosion","Rank 5") then if PL<38 or (PM<250 and not CC) or not ActSpell("Arcane Explosion","Rank 4") then if PL<30 or (PM<185 and not CC) or not ActSpell("Arcane Explosion","Rank 3") then if PL<22 or (PM<120 and not CC) or not ActSpell("Arcane Explosion","Rank 2") then if PL<14 or (PM<75 and not CC) or not ActSpell("Arcane Explosion","Rank 1") then if nil then CastSpellByName("Arcane Explosion");end;end;end;end;end;end;end;

/script 
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function ActSpell(spell,rank)
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		spellName,spellRank=GetSpellName(ix,"spell");
		if spellName==spell and (spellRank==rank or rank==nil) then 
			local St,Du=GetSpellCooldown(ix,"spell");
			if sw==nil and St==0 then 
				if rank then CastSpellByName(spell.."("..rank..")")
				else CastSpell(ix,"spell");end;
				return ix;
			end;
		end;
		ix=ix-1;
	end;
end;
local PL,PM,CC=UnitLevel("player"),UnitMana("player"),GotBuff("Spell_Shadow_ManaBurn");
if PL<54 or (PM<390 and not CC) or not ActSpell("Arcane Explosion","Rank 6") then 
	if PL<46 or (PM<315 and not CC) or not ActSpell("Arcane Explosion","Rank 5") then 
		if PL<38 or (PM<250 and not CC) or not ActSpell("Arcane Explosion","Rank 4") then 
			if PL<30 or (PM<185 and not CC) or not ActSpell("Arcane Explosion","Rank 3") then 
				if PL<22 or (PM<120 and not CC) or not ActSpell("Arcane Explosion","Rank 2") then 
					if PL<14 or (PM<75 and not CC) or not ActSpell("Arcane Explosion","Rank 1") then 
					if nil then CastSpellByName("Arcane Explosion");end;
					end;
				end;
			end;
		end;
	end;
end;