-=Corruption+Immolate=-
/script local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;if GotDebuff("Spell_Shadow_AbominationExplosion") then CastSpellByName("Immolate"); else CastSpellByName("Corruption"); end;

/script 
local function GotDebuff(name,target) 
	if not target then target = "target" end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
if GotDebuff("Spell_Shadow_AbominationExplosion") then CastSpellByName("Immolate"); else CastSpellByName("Corruption"); end;

-=Immolate+Corruption=-
/script local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;if GotDebuff("Spell_Fire_Immolation") then CastSpellByName("Corruption"); else CastSpellByName("Immolate"); end;

/script 
local function GotDebuff(name,target) 
	if not target then target = "target" end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
if GotDebuff("Spell_Fire_Immolation") then CastSpellByName("Corruption"); else CastSpellByName("Immolate"); end;