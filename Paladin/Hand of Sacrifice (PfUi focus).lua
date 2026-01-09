Использует для каста Hand of Sacrifice на focus PfUi
-=-

/script local F,T,E=pfUI.uf.focus.unitname,"target";E=UnitExists(T)if UnitInParty(T)then CastSpellByName("Hand of Sacrifice")else if F then TargetByName(F)end;CastSpellByName("Hand of Sacrifice")if E then TargetLastTarget()else ClearTarget()end;end;

/script 
local F,T,E=pfUI.uf.focus.unitname,"target";E=UnitExists(T)
if UnitInParty(T)then 
	CastSpellByName("Hand of Sacrifice")
else 
	if F then TargetByName(F)end;
	CastSpellByName("Hand of Sacrifice")
	if E then TargetLastTarget()else ClearTarget()end;
end;

-=-

SuperMacro с дополнительной проверкой себя как цели.
/script local F,T,E=pfUI.uf.focus.unitname,"target";E=UnitExists(T)if UnitInParty(T)and not UnitIsUnit("target","player")then CastSpellByName("Hand of Sacrifice")else if F then TargetByName(F)end;CastSpellByName("Hand of Sacrifice")if E then TargetLastTarget()else ClearTarget()end;end;

/script 
local F,T,E=pfUI.uf.focus.unitname,"target";E=UnitExists(T)
if UnitInParty(T)and not UnitIsUnit("target","player")then 
	CastSpellByName("Hand of Sacrifice")
else 
	if F then TargetByName(F)end;
	CastSpellByName("Hand of Sacrifice")
	if E then TargetLastTarget()else ClearTarget()end;
end;

-=-

Hand of Sacrifice на focus PfUi и На всю группу
/script local function GBuff(name) local tex,cnt for ix = 1,32 do tex,cnt = UnitBuff("target",ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function Act(spell) local ix,spellName,spellRank=192;while(ix>0) do spellName=GetSpellName(ix,"spell");if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;else return;end;end;ix=ix-1;end;end;function CastSpel() local cast;local LT=UnitExists("target");if UnitInParty("target") and not UnitIsUnit("target","player") then CastSpellByName("Hand of Sacrifice");else if UnitMana("player")>=100 then if pfUI.uf.focus.unitname then TargetByName(pfUI.uf.focus.unitname); if UnitInParty("target") and not GBuff("Spell_Holy_SealOfSacrifice") then cast=1;end;end;if not cast and UnitExists("party1") then TargetUnit("party1"); if not GBuff("Spell_Holy_SealOfSacrifice") then cast=1;end;end;if not cast and UnitExists("party2") then TargetUnit("party2"); if not GBuff("Spell_Holy_SealOfSacrifice") then cast=1;end;end;if not cast and UnitExists("party3") then TargetUnit("party3"); if not GBuff("Spell_Holy_SealOfSacrifice") then cast=1;end;end;if not cast and UnitExists("party4") then TargetUnit("party4"); if not GBuff("Spell_Holy_SealOfSacrifice") then cast=1;end;end;if not cast and UnitExists("party5") then TargetUnit("party5"); if not GBuff("Spell_Holy_SealOfSacrifice") then cast=1;end;end;if cast then Act("Hand of Sacrifice");end;if LT then TargetLastTarget()else ClearTarget()end;end;end;end;CastSpel()

/script 
local function GBuff(name) 
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitBuff("target",ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function Act(spell) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		spellName=GetSpellName(ix,"spell");
		if spellName==spell then 
			if GetSpellCooldown(ix,"spell")==0 then 
				CastSpell(ix,"spell");
				return ix;
			else 
				return;
			end;
		end;
		ix=ix-1;
	end;
end;
function CastSpel() 
	local cast;
	local LT=UnitExists("target");
	if UnitInParty("target") and not UnitIsUnit("target","player") then 
		CastSpellByName("Hand of Sacrifice");
	else 
		if UnitMana("player")>=100 then 
			if pfUI.uf.focus.unitname then TargetByName(pfUI.uf.focus.unitname); if UnitInParty("target") and not GBuff("Spell_Holy_SealOfSacrifice") then cast=1;end;end;
			if not cast and UnitExists("party1") then TargetUnit("party1"); if not GBuff("Spell_Holy_SealOfSacrifice") then cast=1;end;end;
			if not cast and UnitExists("party2") then TargetUnit("party2"); if not GBuff("Spell_Holy_SealOfSacrifice") then cast=1;end;end;
			if not cast and UnitExists("party3") then TargetUnit("party3"); if not GBuff("Spell_Holy_SealOfSacrifice") then cast=1;end;end;
			if not cast and UnitExists("party4") then TargetUnit("party4"); if not GBuff("Spell_Holy_SealOfSacrifice") then cast=1;end;end;
			if not cast and UnitExists("party5") then TargetUnit("party5"); if not GBuff("Spell_Holy_SealOfSacrifice") then cast=1;end;end;
			if cast then Act("Hand of Sacrifice");end;
			if LT then TargetLastTarget()else ClearTarget()end;
		end;
	end;
end;
CastSpel()