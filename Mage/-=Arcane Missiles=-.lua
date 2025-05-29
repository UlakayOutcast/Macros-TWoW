-=Arcane Missiles
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank)local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then local St,Du=GetSpellCooldown(ix,"spell");if sw==nil and St==0 then if rank then CastSpellByName(spell.."("..rank..")")else CastSpell(ix,"spell");end;return ix;end;end;ix=ix-1;end;end;local PL,PM,CC,HT=UnitLevel("player"),UnitMana("player"),GotBuff("Spell_Shadow_ManaBurn"),UnitHealth("target");if PL<54 or (PM<595 and not CC) or HT<755 or not ActSpell("Arcane Missiles","Rank 7") then if PL<54 or (PM<500 and not CC) or HT<575 or not ActSpell("Arcane Missiles","Rank 6") then if PL<46 or (PM<410 and not CC) or HT<415 or not ActSpell("Arcane Missiles","Rank 5") then if PL<38 or (PM<320 and not CC) or HT<280 or not ActSpell("Arcane Missiles","Rank 4") then if PL<30 or (PM<235 and not CC) or HT<144 or not ActSpell("Arcane Missiles","Rank 3") then if PL<22 or (PM<140 and not CC) or HT<48 or not ActSpell("Arcane Missiles","Rank 2") then if PL<14 or (PM<85 and not CC) or not ActSpell("Arcane Missiles","Rank 1") then if nil then CastSpellByName("Arcane Missiles");end;end;end;end;end;end;end;end;

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
local PL,PM,CC,HT=UnitLevel("player"),UnitMana("player"),GotBuff("Spell_Shadow_ManaBurn"),UnitHealth("target");
if PL<54 or (PM<595 and not CC) or HT<755 or not ActSpell("Arcane Missiles","Rank 7") then 
	if PL<54 or (PM<500 and not CC) or HT<575 or not ActSpell("Arcane Missiles","Rank 6") then 
		if PL<46 or (PM<410 and not CC) or HT<415 or not ActSpell("Arcane Missiles","Rank 5") then 
			if PL<38 or (PM<320 and not CC) or HT<280 or not ActSpell("Arcane Missiles","Rank 4") then 
				if PL<30 or (PM<235 and not CC) or HT<144 or not ActSpell("Arcane Missiles","Rank 3") then 
					if PL<22 or (PM<140 and not CC) or HT<48 or not ActSpell("Arcane Missiles","Rank 2") then 
						if PL<14 or (PM<85 and not CC) or not ActSpell("Arcane Missiles","Rank 1") then 
						if nil then CastSpellByName("Arcane Missiles");end;
						end;
					end;
				end;
			end;
		end;
	end;
end;