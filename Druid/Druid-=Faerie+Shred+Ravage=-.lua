Druid-=Faerie+Shred+Ravage=-
/script local ix;if UnitExists("target")==nil then TargetNearestEnemy();end;if buffed("Prowl")==nil then for ix=1,99 do if IsAttackAction(ix)and not IsCurrentAction(ix)then UseAction(ix)end;end;local tex,cnt;if UnitExists("target") then for ix = 1,32 do tex,cnt = UnitDebuff("target",ix);if tex then if strfind(tex,"Spell_Nature_FaerieFire") then ix=33;end;else ix=32;end;if ix==32 then local yx,spellName,spellRank=192 while(yx>0) do spellName,spellRank=GetSpellName(yx,"spell");if spellName=="Faerie Fire (Feral)" then if GetSpellCooldown(yx,"spell")==0 then CastSpell(yx,'spell');end;end;yx=yx-1 end;end;end;end;for ix=1,200 do N,R=GetSpellName(ix,"spell");if N=="Shred" and GetSpellCooldown(ix,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then CastSpellByName("Shred");ix=200;end;end;else for ix=1,200 do N,R=GetSpellName(ix,"spell");if N=="Ravage" and GetSpellCooldown(ix,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then CastSpellByName("Ravage");ix=200;end;end;end;

/script 
local ix;
if UnitExists("target")==nil then TargetNearestEnemy();end;
if buffed("Prowl")==nil then 
	for ix=1,99 do if IsAttackAction(ix)and not IsCurrentAction(ix)then UseAction(ix)end;end;
	local tex,cnt;
	if UnitExists("target") then 
		for ix = 1,32 do 
			tex,cnt = UnitDebuff("target",ix);
			if tex then 
				if strfind(tex,"Spell_Nature_FaerieFire") then 
					ix=33;
				end;
			else 
				ix=32;
			end;
			if ix==32 then 
				local yx,spellName,spellRank=192 
				while(yx>0) do 
					spellName,spellRank=GetSpellName(yx,"spell");
					if spellName=="Faerie Fire (Feral)" then 
						if GetSpellCooldown(yx,"spell")==0 then 
							CastSpell(yx,'spell');
						end;
					end;
					yx=yx-1 
				end;
			end;
		end;
	end;
	for ix=1,200 do N,R=GetSpellName(ix,"spell");
		if N=="Shred" and GetSpellCooldown(ix,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then 
			CastSpellByName("Shred");ix=200;
		end;
	end;
else 
	for ix=1,200 do N,R=GetSpellName(ix,"spell");
		if N=="Ravage" and GetSpellCooldown(ix,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then 
			CastSpellByName("Ravage");ix=200;
		end;
	end;
end;

Druid-=Faerie+Shred+Ravage+Tiger's Fury=-
/script local ix;if UnitExists("target")==nil then TargetNearestEnemy();end;if buffed("Prowl")==nil then for ix=1,99 do if IsAttackAction(ix)and not IsCurrentAction(ix)then UseAction(ix)end;end;local tex,cnt;if UnitExists("target") then for ix = 1,32 do tex,cnt = UnitDebuff("target",ix);if tex then if strfind(tex,"Spell_Nature_FaerieFire") then ix=33;end;else ix=32;end;if ix==32 then local yx,spellName,spellRank=192 while(yx>0) do spellName,spellRank=GetSpellName(yx,"spell");if spellName=="Faerie Fire (Feral)" then if GetSpellCooldown(yx,"spell")==0 then CastSpell(yx,'spell');end;end;yx=yx-1 end;end;end;end;if buffed("Tiger's Fury")==nil and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Tiger's Fury")end;for ix=1,200 do N,R=GetSpellName(ix,"spell");if N=="Shred" and GetSpellCooldown(ix,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then CastSpellByName("Shred");ix=200;end;end;else for ix=1,200 do N,R=GetSpellName(ix,"spell");if N=="Ravage" and GetSpellCooldown(ix,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then CastSpellByName("Ravage");ix=200;end;end;end;

/script 
local ix;
if UnitExists("target")==nil then TargetNearestEnemy();end;
if buffed("Prowl")==nil then 
	for ix=1,99 do if IsAttackAction(ix)and not IsCurrentAction(ix)then UseAction(ix)end;end;
	local tex,cnt;
	if UnitExists("target") then 
		for ix = 1,32 do 
			tex,cnt = UnitDebuff("target",ix);
			if tex then 
				if strfind(tex,"Spell_Nature_FaerieFire") then 
					ix=33;
				end;
			else 
				ix=32;
			end;
			if ix==32 then 
				local yx,spellName,spellRank=192 
				while(yx>0) do 
					spellName,spellRank=GetSpellName(yx,"spell");
					if spellName=="Faerie Fire (Feral)" then 
						if GetSpellCooldown(yx,"spell")==0 then 
							CastSpell(yx,'spell');
						end;
					end;
					yx=yx-1 
				end;
			end;
		end;
	end;
	if buffed("Tiger's Fury")==nil and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Tiger's Fury")end;
	for ix=1,200 do N,R=GetSpellName(ix,"spell");
		if N=="Shred" and GetSpellCooldown(ix,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then 
			CastSpellByName("Shred");ix=200;
		end;
	end;
else 
	for ix=1,200 do N,R=GetSpellName(ix,"spell");
		if N=="Ravage" and GetSpellCooldown(ix,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then 
			CastSpellByName("Ravage");ix=200;
		end;
	end;
end;