-=Fel Domination and Summon demmon=- SuperMacro addon required

With ALT
-=Summon Imp + Fel Domination=-
/script if IsAltKeyDown()~=1 or buffed("Fel Domination")=="buff" then CastSpellByName("Summon Imp");else CastSpellByName("Fel Domination");end

-=Summon Voidwalker + Fel Domination=-
/script if IsAltKeyDown()~=1 or buffed("Fel Domination")=="buff" then CastSpellByName("Summon Voidwalker");else CastSpellByName("Fel Domination");end;

-=Summon Succubus + Fel Domination=-
/script if IsAltKeyDown()~=1 or buffed("Fel Domination")=="buff" then CastSpellByName("Summon Succubus");else CastSpellByName("Fel Domination");end;

-=Summon Felhunter + Fel Domination=-
/script if IsAltKeyDown()~=1 or buffed("Fel Domination")=="buff" then CastSpellByName("Summon Felhunter");else CastSpellByName("Fel Domination");end;

-=-

-=Fel Domination + Summon Imp=-
/script if IsAltKeyDown()==1 and buffed("Fel Domination")~="buff" then CastSpellByName("Fel Domination");else CastSpellByName("Summon Imp");end

-=Fel Domination + Summon Voidwalker=-
/script if IsAltKeyDown()==1 and buffed("Fel Domination")~="buff" then CastSpellByName("Fel Domination");else CastSpellByName("Summon Voidwalker");end;

-=Fel Domination + Summon Succubus=-
/script if IsAltKeyDown()==1 and buffed("Fel Domination")~="buff" then CastSpellByName("Fel Domination");else CastSpellByName("Summon Succubus");end;

-=Fel Domination + Summon Felhunter=-
/script if IsAltKeyDown()==1 and buffed("Fel Domination")~="buff" then CastSpellByName("Fel Domination");else CastSpellByName("Summon Felhunter");end;


Without ALT
-=Summon Imp + Fel Domination=-
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;if not GotSpell("Fel Domination") or GotBuff("Spell_Nature_RemoveCurse") then CastSpellByName("Summon Imp");else CastSpellByName("Fel Domination");end;

/script 
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell then 
				if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;
			end;
		end;
	end;
end;
if not GotSpell("Fel Domination") or GotBuff("Spell_Nature_RemoveCurse") then CastSpellByName("Summon Imp");else CastSpellByName("Fel Domination");end;

-=Summon Voidwalker + Fel Domination=-
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;if not GotSpell("Fel Domination") or GotBuff("Spell_Nature_RemoveCurse") then CastSpellByName("Summon Voidwalker");else CastSpellByName("Fel Domination");end;

/script 
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell then 
				if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;
			end;
		end;
	end;
end;
if not GotSpell("Fel Domination") or GotBuff("Spell_Nature_RemoveCurse") then CastSpellByName("Summon Voidwalker");else CastSpellByName("Fel Domination");end;

-=Summon Succubus + Fel Domination=-
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;if not GotSpell("Fel Domination") or GotBuff("Spell_Nature_RemoveCurse") then CastSpellByName("Summon Succubus");else CastSpellByName("Fel Domination");end;

/script 
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell then 
				if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;
			end;
		end;
	end;
end;
if not GotSpell("Fel Domination") or GotBuff("Spell_Nature_RemoveCurse") then CastSpellByName("Summon Succubus");else CastSpellByName("Fel Domination");end;

-=Summon Felhunter + Fel Domination=-
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;if not GotSpell("Fel Domination") or GotBuff("Spell_Nature_RemoveCurse") then CastSpellByName("Summon Felhunter");else CastSpellByName("Fel Domination");end;

/script 
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell then 
				if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;
			end;
		end;
	end;
end;
if not GotSpell("Fel Domination") or GotBuff("Spell_Nature_RemoveCurse") then CastSpellByName("Summon Felhunter");else CastSpellByName("Fel Domination");end;

-=-

-=Fel Domination + Summon Imp=-
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;if GotSpell("Fel Domination") and not GotBuff("Spell_Nature_RemoveCurse") then CastSpellByName("Fel Domination");else CastSpellByName("Summon Imp");end;

/script 
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell then 
				if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;
			end;
		end;
	end;
end;
if GotSpell("Fel Domination") and not GotBuff("Spell_Nature_RemoveCurse") then CastSpellByName("Fel Domination");else CastSpellByName("Summon Imp");end;

-=Fel Domination + Summon Voidwalker=-
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;if GotSpell("Fel Domination") and not GotBuff("Spell_Nature_RemoveCurse") then CastSpellByName("Fel Domination");else CastSpellByName("Summon Voidwalker");end;

/script 
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell then 
				if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;
			end;
		end;
	end;
end;
if GotSpell("Fel Domination") and not GotBuff("Spell_Nature_RemoveCurse") then CastSpellByName("Fel Domination");else CastSpellByName("Summon Voidwalker");end;

-=Fel Domination + Summon Succubus=-
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;if GotSpell("Fel Domination") and not GotBuff("Spell_Nature_RemoveCurse") then CastSpellByName("Fel Domination");else CastSpellByName("Summon Succubus");end;

/script 
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell then 
				if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;
			end;
		end;
	end;
end;
if GotSpell("Fel Domination") and not GotBuff("Spell_Nature_RemoveCurse") then CastSpellByName("Fel Domination");else CastSpellByName("Summon Succubus");end;

-=Fel Domination + Summon Felhunter=-
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;end;end;end;end;if GotSpell("Fel Domination") and not GotBuff("Spell_Nature_RemoveCurse") then CastSpellByName("Fel Domination");else CastSpellByName("Summon Felhunter");end;

/script 
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell then 
				if GetSpellCooldown(ix,"spell")==0 then return true; else return; end;
			end;
		end;
	end;
end;
if GotSpell("Fel Domination") and not GotBuff("Spell_Nature_RemoveCurse") then CastSpellByName("Fel Domination");else CastSpellByName("Summon Felhunter");end;