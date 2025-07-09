-=Moonfire=- На всех 
/script local function GotBuff(name,target) if not target then target="player" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function GotDebuff(name,target) if not target then target="target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;if not UnitExists("target") or not UnitCanAttack("player","target") then TargetNearestEnemy();end;if UnitExists("target")then if ( UnitAffectingCombat("player") and UnitAffectingCombat("target") and not GotDebuff("Spell_Nature_StarFall") ) or not UnitAffectingCombat("player") then local TH=UnitHealth("target");local PM=UnitMana("player")local _,_,_,_,Moonglow=GetTalentInfo(1,13);Moonglow=1-Moonglow*3/100;local OoC=GotBuff("Spell_Shadow_ManaBurn")if (PM>=375*Moonglow or OoC) and TH>=222 and ActSpell("Moonfire","Rank 5") then return;end;if (PM>=325*Moonglow or OoC) and TH>=186 and ActSpell("Moonfire","Rank 4") then return;end;if (PM>=280*Moonglow or OoC) and TH>=155 and ActSpell("Moonfire","Rank 3") then return;end;if (PM>=235*Moonglow or OoC) and TH>=126 and ActSpell("Moonfire","Rank 2") then return;end;if (PM>=190*Moonglow or OoC) and TH>=98 and ActSpell("Moonfire","Rank 1") then return;end;if (PM>=150*Moonglow or OoC) and TH>=74 and ActSpell("Moonfire","Rank 5") then return;end;if (PM>=105*Moonglow or OoC) and TH>=49 and ActSpell("Moonfire","Rank 4") then return;end;if (PM>=75*Moonglow or OoC) and TH>=32 and ActSpell("Moonfire","Rank 3") then return;end;if (PM>=50*Moonglow or OoC) and TH>=18 and ActSpell("Moonfire","Rank 2") then return;end;if (PM>=25*Moonglow or OoC) and TH>=10 and ActSpell("Moonfire","Rank 1") then return;end;if nil then CastSpellByName("Moonfire");end;else TargetNearestEnemy();end;end;
-=-
/script 
local function GotBuff(name,target) 
	if not target then target="player" end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return; end;
		if strfind(tex,name) then return cnt; end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target="target" end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix);
		if not tex then return; end;
		if strfind(tex,name) then return cnt; end;
	end;
end;
local function ActSpell(spell,rank,sw) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		spellName,spellRank=GetSpellName(ix,"spell");
		if spellName==spell and (spellRank==rank or rank==nil) then 
			if sw==true then return ix;end;
			if sw==0 then return GetSpellCooldown(ix,"spell");end;
			if sw=="self" then 
				if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;
			end;
			if sw==nil then 
				if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;
			end;
		end;
		ix=ix-1;
	end;
end;
if not UnitExists("target") or not UnitCanAttack("player","target") then TargetNearestEnemy();end;
if UnitExists("target")then 
	if ( UnitAffectingCombat("player") and UnitAffectingCombat("target") and not GotDebuff("Spell_Nature_StarFall") ) or not UnitAffectingCombat("player") then 
		local TH=UnitHealth("target");
		local PM=UnitMana("player")
		local _,_,_,_,Moonglow=GetTalentInfo(1,13);Moonglow=1-Moonglow*3/100;
		local OoC=GotBuff("Spell_Shadow_ManaBurn")
		if (PM>=375*Moonglow or OoC) and TH>=222 and ActSpell("Moonfire","Rank 5") then return;end;
		if (PM>=325*Moonglow or OoC) and TH>=186 and ActSpell("Moonfire","Rank 4") then return;end;
		if (PM>=280*Moonglow or OoC) and TH>=155 and ActSpell("Moonfire","Rank 3") then return;end;
		if (PM>=235*Moonglow or OoC) and TH>=126 and ActSpell("Moonfire","Rank 2") then return;end;
		if (PM>=190*Moonglow or OoC) and TH>=98 and ActSpell("Moonfire","Rank 1") then return;end;
		if (PM>=150*Moonglow or OoC) and TH>=74 and ActSpell("Moonfire","Rank 5") then return;end;
		if (PM>=105*Moonglow or OoC) and TH>=49 and ActSpell("Moonfire","Rank 4") then return;end;
		if (PM>=75*Moonglow or OoC) and TH>=32 and ActSpell("Moonfire","Rank 3") then return;end;
		if (PM>=50*Moonglow or OoC) and TH>=18 and ActSpell("Moonfire","Rank 2") then return;end;
		if (PM>=25*Moonglow or OoC) and TH>=10 and ActSpell("Moonfire","Rank 1") then return;end;
		if nil then CastSpellByName("Moonfire");end;
	else 
		TargetNearestEnemy();
	end;
end;