
Judgement+Seal of Righteousness
/script local mana = UnitMana("player")/UnitManaMax("player");local function GotBuff(name)local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function ActSpell(spell) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;end;ix=ix-1;end;end;end;if GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath") or GotBuff("InnerRage") or GotBuff("ThunderBolt") then ActSpell("Judgement");else ActSpell("Seal of Righteousness");end;if not 1 then CastSpellByName("Judgement");end;

/script local mana = UnitMana("player")/UnitManaMax("player");
local function GotBuff(name)
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return; end;
		if strfind(tex,name) then return cnt; end;
	end;
end;
local function ActSpell(spell) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		if ix==0 then return nil;
		else 
			spellName,spellRank=GetSpellName(ix,"spell");
			if spellName==spell then 
				if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;
			end;
			ix=ix-1;
		end;
	end;
end;
if GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath") or GotBuff("InnerRage") or GotBuff("ThunderBolt") 
then 
	ActSpell("Judgement");
else 
	ActSpell("Seal of Righteousness");
end;
if not 1 then CastSpellByName("Judgement");end;

-=-
Judgement+Seal of the Crusader
/script local mana = UnitMana("player")/UnitManaMax("player");local function GotBuff(name)local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function ActSpell(spell) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;end;ix=ix-1;end;end;end;if GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath") or GotBuff("InnerRage") or GotBuff("ThunderBolt") then ActSpell("Judgement");else ActSpell("Seal of the Crusader");end;if not 1 then CastSpellByName("Judgement");end;

/script local mana = UnitMana("player")/UnitManaMax("player");
local function GotBuff(name)
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return; end;
		if strfind(tex,name) then return cnt; end;
	end;
end;
local function ActSpell(spell) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		if ix==0 then return nil;
		else 
			spellName,spellRank=GetSpellName(ix,"spell");
			if spellName==spell then 
				if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;
			end;
			ix=ix-1;
		end;
	end;
end;
if GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath") or GotBuff("InnerRage") or GotBuff("ThunderBolt") 
then 
	ActSpell("Judgement");
else 
	ActSpell("Seal of the Crusader");
end;
if not 1 then CastSpellByName("Judgement");end;

-=-
Judgement+Seal of Command
/script local mana = UnitMana("player")/UnitManaMax("player");local function GotBuff(name)local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function ActSpell(spell) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;end;ix=ix-1;end;end;end;if GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath") or GotBuff("InnerRage") or GotBuff("ThunderBolt") then ActSpell("Judgement");else ActSpell("Seal of Command");end;if not 1 then CastSpellByName("Judgement");end;

/script local mana = UnitMana("player")/UnitManaMax("player");
local function GotBuff(name)
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return; end;
		if strfind(tex,name) then return cnt; end;
	end;
end;
local function ActSpell(spell) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		if ix==0 then return nil;
		else 
			spellName,spellRank=GetSpellName(ix,"spell");
			if spellName==spell then 
				if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;
			end;
			ix=ix-1;
		end;
	end;
end;
if GotBuff("HolySmite") or GotBuff("HealingAura") or GotBuff("RighteousnessAura") or GotBuff("SealOfWrath") or GotBuff("InnerRage") or GotBuff("ThunderBolt") 
then 
	ActSpell("Judgement");
else 
	ActSpell("Seal of Command");
end;
if not 1 then CastSpellByName("Judgement");end;