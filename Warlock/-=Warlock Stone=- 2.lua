-=Warlock Stone=- v2

-=Create and use Felstone=-
/script if not UseItemByName("Felstone") then CastSpellByName("Create Felstone");end;

-=-

-=Create and use Firestone=-
/script if not UseItemByName("Firestone") then CastSpellByName("Create Firestone");end;

-=-

-=Create and use Spellstone=-
/script if not UseItemByName("Spellstone") then CastSpellByName("Create Spellstone");end;

-=-

-=Create and use Wrathstone=-
/script if not UseItemByName("Wrathstone") then CastSpellByName("Create Wrathstone");end;

-=-

-=Create and use Healthstone=-
/script local function GotSpell(spell) local ix,spellName,spellRank;for ix=1,200 do spellName=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell then return ix;end;end;end;end;if not UseItemByName("Major Healthstone") and not UseItemByName("Greater Healthstone") and not UseItemByName("Healthstone") and not UseItemByName("Lesser Healthstone") and not UseItemByName("Minor Healthstone") then if GotSpell("Create Healthstone (Major)") then CastSpell(GotSpell("Create Healthstone (Major)"),1);else if GotSpell("Create Healthstone (Greater)") then CastSpell(GotSpell("Create Healthstone (Greater)"),1);else if GotSpell("Create Healthstone") then CastSpell(GotSpell("Create Healthstone"),1);else if GotSpell("Create Healthstone (Lesser)") then CastSpell(GotSpell("Create Healthstone (Lesser)"),1);else if GotSpell("Create Healthstone (Minor)") then CastSpell(GotSpell("Create Healthstone (Minor)"),1);end;end;end;end;end;end;if nil then CastSpellByName("Create Healthstone (Major)");CastSpellByName("Create Healthstone (Greater)");CastSpellByName("Create Healthstone");CastSpellByName("Create Healthstone (Lesser)");CastSpellByName("Create Healthstone (Minor)");end;

/script 
local function GotSpell(spell) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell then return ix;end;
		end;
	end;
end;
if not UseItemByName("Major Healthstone") and not UseItemByName("Greater Healthstone") and not UseItemByName("Healthstone") and not UseItemByName("Lesser Healthstone") and not UseItemByName("Minor Healthstone") then 
	if GotSpell("Create Healthstone (Major)") then CastSpell(GotSpell("Create Healthstone (Major)"),1);
	else 
		if GotSpell("Create Healthstone (Greater)") then CastSpell(GotSpell("Create Healthstone (Greater)"),1);
		else 
			if GotSpell("Create Healthstone") then CastSpell(GotSpell("Create Healthstone"),1);
			else 
				if GotSpell("Create Healthstone (Lesser)") then CastSpell(GotSpell("Create Healthstone (Lesser)"),1);
				else 
					if GotSpell("Create Healthstone (Minor)") then CastSpell(GotSpell("Create Healthstone (Minor)"),1);end;
				end;
			end;
		end;
	end;
end;
if nil then CastSpellByName("Create Healthstone (Major)");CastSpellByName("Create Healthstone (Greater)");CastSpellByName("Create Healthstone");CastSpellByName("Create Healthstone (Lesser)");CastSpellByName("Create Healthstone (Minor)");end;

-=-

-=Create and use Soulstone=-
/script local function GotSpell(spell) local ix,spellName,spellRank;for ix=1,200 do spellName=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell then return ix;end;end;end;end;if not UseItemByName("Major Soulstone") and not UseItemByName("Greater Soulstone") and not UseItemByName("Soulstone") and not UseItemByName("Lesser Soulstone") and not UseItemByName("Minor Soulstone") then if GotSpell("Create Soulstone (Major)") then CastSpell(GotSpell("Create Soulstone (Major)"),1);else if GotSpell("Create Soulstone (Greater)") then CastSpell(GotSpell("Create Soulstone (Greater)"),1);else if GotSpell("Create Soulstone") then CastSpell(GotSpell("Create Soulstone"),1);else if GotSpell("Create Soulstone (Lesser)") then CastSpell(GotSpell("Create Soulstone (Lesser)"),1);else if GotSpell("Create Soulstone (Minor)") then CastSpell(GotSpell("Create Soulstone (Minor)"),1);end;end;end;end;end;end;if nil then CastSpellByName("Create Soulstone (Major)");CastSpellByName("Create Soulstone (Greater)");CastSpellByName("Create Soulstone");CastSpellByName("Create Soulstone (Lesser)");CastSpellByName("Create Soulstone (Minor)");end;

/script 
local function GotSpell(spell) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell then return ix;end;
		end;
	end;
end;
if not UseItemByName("Major Soulstone") and not UseItemByName("Greater Soulstone") and not UseItemByName("Soulstone") and not UseItemByName("Lesser Soulstone") and not UseItemByName("Minor Soulstone") then 
	if GotSpell("Create Soulstone (Major)") then CastSpell(GotSpell("Create Soulstone (Major)"),1);
	else 
		if GotSpell("Create Soulstone (Greater)") then CastSpell(GotSpell("Create Soulstone (Greater)"),1);
		else 
			if GotSpell("Create Soulstone") then CastSpell(GotSpell("Create Soulstone"),1);
			else 
				if GotSpell("Create Soulstone (Lesser)") then CastSpell(GotSpell("Create Soulstone (Lesser)"),1);
				else 
					if GotSpell("Create Soulstone (Minor)") then CastSpell(GotSpell("Create Soulstone (Minor)"),1);end;
				end;
			end;
		end;
	end;
end;
if nil then CastSpellByName("Create Soulstone (Major)");CastSpellByName("Create Soulstone (Greater)");CastSpellByName("Create Soulstone");CastSpellByName("Create Soulstone (Lesser)");CastSpellByName("Create Soulstone (Minor)");end;
