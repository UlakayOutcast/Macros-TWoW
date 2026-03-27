
Felstone
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;if not GotBuff("felstone") then if not UseItemByName("Felstone") then CastSpellByName("Create Felstone");end;else if not GotBuff("RagingScream") then CastSpellByName("Demon Armor")end;end;

/script 
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
if not GotBuff("felstone") then 
	if not UseItemByName("Felstone") then CastSpellByName("Create Felstone");end;
else 
	if not GotBuff("RagingScream") then CastSpellByName("Demon Armor")end;
end;


Firestone
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;if not GotBuff("FireTar") then if not UseItemByName("Firestone") then CastSpellByName("Create Firestone");end;else if not GotBuff("RagingScream") then CastSpellByName("Demon Armor")end;end;

/script 
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
if not GotBuff("FireTar") then 
	if not UseItemByName("Firestone") then CastSpellByName("Create Firestone");end;
else 
	if not GotBuff("RagingScream") then CastSpellByName("Demon Armor")end;
end;


Spellstone
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;if not GotBuff("Sapphire") then if not UseItemByName("Spellstone") then CastSpellByName("Create Spellstone");end;else if not GotBuff("RagingScream") then CastSpellByName("Demon Armor")end;end;

/script 
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
if not GotBuff("Sapphire") then 
	if not UseItemByName("Spellstone") then CastSpellByName("Create Spellstone");end;
else 
	if not GotBuff("RagingScream") then CastSpellByName("Demon Armor")end;
end;


Wrathstone
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;if not GotBuff("Bloodstone") then if not UseItemByName("Wrathstone") then CastSpellByName("Create Wrathstone");end;else if not GotBuff("RagingScream") then CastSpellByName("Demon Armor")end;end;

/script 
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
if not GotBuff("Bloodstone") then 
	if not UseItemByName("Wrathstone") then CastSpellByName("Create Wrathstone");end;
else 
	if not GotBuff("RagingScream") then CastSpellByName("Demon Armor")end;
end;

Voidstone
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;if not GotBuff("Bloodstone") then if not UseItemByName("Voidstone") then CastSpellByName("Create Voidstone");end;else if not GotBuff("RagingScream") then CastSpellByName("Demon Armor")end;end;

/script 
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
if not GotBuff("Bloodstone") then 
	if not UseItemByName("Voidstone") then CastSpellByName("Create Voidstone");end;
else 
	if not GotBuff("RagingScream") then CastSpellByName("Demon Armor")end;
end;
