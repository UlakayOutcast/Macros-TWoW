Druid-=Fury+Shred+Ravage=-

/script local C;local function GotBuff(name,target) if not target then target="player";end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local PM=UnitMana("player")local OoC=GotBuff("Spell_Shadow_ManaBurn")if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;local _,_,_,_,IS=GetTalentInfo(2,13);IS=IS*6;if not GotBuff("Ability_Mount_JungleTiger") and PM>=30 then CastSpellByName("Tiger's Fury")end;if not GotBuff("Ability_Ambush") then for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Shred" and GetSpellCooldown(C,"spell")==0 and (PM>=60-IS or OoC) then CastSpellByName("Shred");C=200;end;end;for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;else for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Ravage" and GetSpellCooldown(C,"spell")==0 and (PM>=60 or OoC) then CastSpellByName("Ravage");C=200;end;end;end 

/script local C;
local function GotBuff(name,target) 
	if not target then target="player";end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff(target,ix);
		if not tex then return; end;
		if strfind(tex,name) then return cnt; end;
	end;
end;
local PM=UnitMana("player")
local OoC=GotBuff("Spell_Shadow_ManaBurn")
if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
local _,_,_,_,IS=GetTalentInfo(2,13);IS=IS*6;
if not GotBuff("Ability_Mount_JungleTiger") and PM>=30 then CastSpellByName("Tiger's Fury")end;
if not GotBuff("Ability_Ambush") then 
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Shred" and GetSpellCooldown(C,"spell")==0 and (PM>=60-IS or OoC) then 
			CastSpellByName("Shred");C=200;
		end;
	end;
	for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");return;end; ix=96;end;end;
else 
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Ravage" and GetSpellCooldown(C,"spell")==0 and (PM>=60 or OoC) then 
			CastSpellByName("Ravage");C=200;
		end;
	end;
end;



--old--

/script local C;if UnitExists("target")==nil then TargetNearestEnemy();end;if buffed("Tiger's Fury")==nil and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Tiger's Fury")end;if buffed("Prowl")==nil then for C=1,99 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;end;for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Shred" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then CastSpellByName("Shred");C=200;end;end;else for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Ravage" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then CastSpellByName("Ravage");C=200;end;end;end 

/script local C;
if UnitExists("target")==nil then TargetNearestEnemy();end;
if buffed("Tiger's Fury")==nil and (UnitMana("player")>29 or buffed("Clearcasting")=="buff") then CastSpellByName("Tiger's Fury")end;
if buffed("Prowl")==nil then 
	for C=1,99 do 
		if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;
	end;
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Shred" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then 
			CastSpellByName("Shred");C=200;
		end;
	end;
else 
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Ravage" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then 
			CastSpellByName("Ravage");C=200;
		end;
	end;
end;


Druid-=Shred+Ravage=-
/script local C;if UnitExists("target")==nil then TargetNearestEnemy();end;if buffed("Prowl")==nil then for C=1,99 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;end;for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Shred" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then CastSpellByName("Shred");C=200;end;end;else for C=1,200 do N,R=GetSpellName(C,"spell");if N=="Ravage" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then CastSpellByName("Ravage");C=200;end;end;end 

/script local C;
if UnitExists("target")==nil then TargetNearestEnemy();end;
if buffed("Prowl")==nil then 
	for C=1,99 do 
		if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;
	end;
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Shred" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then 
			CastSpellByName("Shred");C=200;
		end;
	end;
else 
	for C=1,200 do N,R=GetSpellName(C,"spell");
		if N=="Ravage" and GetSpellCooldown(C,"spell")==0 and (UnitMana("player")>59 or buffed("Clearcasting")=="buff") then 
			CastSpellByName("Ravage");C=200;
		end;
	end;
end;
