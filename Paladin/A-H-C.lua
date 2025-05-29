-=Attack-Holy Strike-Crusader Strike=- S

-=-
/script local TH,DB,tex,cnt,ix,At,HS,CS1,CS2,CS3,CS4,CS5,CD;if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;TH=UnitHealth("target");for ix=1,192 do if IsAttackAction(ix)then At=ix;end;local spellName,spellRank=GetSpellName(ix,"spell") if spellName=="Holy Strike" then HS=ix;end;if spellName=="Crusader Strike" and spellRank=="Rank 1" then CS1=ix;end;if spellName=="Crusader Strike" and spellRank=="Rank 2" then CS2=ix;end;if spellName=="Crusader Strike" and spellRank=="Rank 3" then CS3=ix;end;if spellName=="Crusader Strike" and spellRank=="Rank 4" then CS4=ix;end;if spellName=="Crusader Strike" and spellRank=="Rank 5" then CS5=ix;end;end;if not IsCurrentAction(At)then UseAction(At)end;if CS1 then CD=GetSpellCooldown(CS1,"spell")end;if TH<=103 and CS5 and CD==0 then CastSpell(CS5,1);else if TH<=69 and CS4 and CD==0 then CastSpell(CS4,1);else if TH<=46 and CS3 and CD==0 then CastSpell(CS3,1);else if TH<=27 and CS2 and CD==0 then CastSpell(CS2,1);else if TH<=12 and CS1 and CD==0 then CastSpell(CS1,1);else if HS then CD=GetSpellCooldown(HS,"spell");end;if HS and CD==0 then CastSpellByName("Holy Strike");else if CS1 then if GetSpellCooldown(CS1,"spell")==0 then CastSpellByName("Crusader Strike");end;end;end;end;end;end;end;end;
--
/script 
local TH,DB,tex,cnt,ix,At,HS,CS1,CS2,CS3,CS4,CS5,CD;
if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;TH=UnitHealth("target");
for ix=1,192 do 
	if IsAttackAction(ix)then At=ix;end;
	local spellName,spellRank=GetSpellName(ix,"spell") 
	if spellName=="Holy Strike" then HS=ix;end;
	if spellName=="Crusader Strike" and spellRank=="Rank 1" then CS1=ix;end;
	if spellName=="Crusader Strike" and spellRank=="Rank 2" then CS2=ix;end;
	if spellName=="Crusader Strike" and spellRank=="Rank 3" then CS3=ix;end;
	if spellName=="Crusader Strike" and spellRank=="Rank 4" then CS4=ix;end;
	if spellName=="Crusader Strike" and spellRank=="Rank 5" then CS5=ix;end;
end;
if not IsCurrentAction(At)then UseAction(At)end;
if CS1 then CD=GetSpellCooldown(CS1,"spell")end;
if TH<=103 and CS5 and CD==0 then CastSpell(CS5,1);
else if TH<=69 and CS4 and CD==0 then CastSpell(CS4,1);
	else if TH<=46 and CS3 and CD==0 then CastSpell(CS3,1);
		else if TH<=27 and CS2 and CD==0 then CastSpell(CS2,1);
			else if TH<=12 and CS1 and CD==0 then CastSpell(CS1,1);
				else 
					if HS then CD=GetSpellCooldown(HS,"spell");end;
					if HS and CD==0 then CastSpellByName("Holy Strike");
					else 
						if CS1 then if GetSpellCooldown(CS1,"spell")==0 then CastSpellByName("Crusader Strike");end;end;
					end;
				end;
			end;
		end;
	end;
end;


-=-
/script local TH,DB,tex,cnt,ix,At,HS,CS1,CS2,CS3,CS4,CS5,CD;if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;TH=UnitHealth("target");for ix=1,192 do if IsAttackAction(ix)then At=ix;end;local spellName,spellRank=GetSpellName(ix,"spell") if spellName=="Holy Strike" then HS=ix;end;if spellName=="Crusader Strike" and spellRank=="Rank 1" then CS1=ix;end;if spellName=="Crusader Strike" and spellRank=="Rank 2" then CS2=ix;end;if spellName=="Crusader Strike" and spellRank=="Rank 3" then CS3=ix;end;if spellName=="Crusader Strike" and spellRank=="Rank 4" then CS4=ix;end;if spellName=="Crusader Strike" and spellRank=="Rank 5" then CS5=ix;end;local tex,cnt = UnitDebuff("target",ix);if tex then if strfind(tex,"CrusaderStrike") then DB=cnt;end;end;end;if not IsCurrentAction(At)then UseAction(At)end;if CS1 then CD=GetSpellCooldown(CS1,"spell")end;if TH<=103 and CS5 and CD==0 then CastSpell(CS5,1);else if TH<=69 and CS4 and CD==0 then CastSpell(CS4,1);else if TH<=46 and CS3 and CD==0 then CastSpell(CS3,1);else if TH<=27 and CS2 and CD==0 then CastSpell(CS2,1);else if TH<=12 and CS1 and CD==0 then CastSpell(CS1,1);else if HS then CD=GetSpellCooldown(HS,"spell");end;if HS and CD==0 then CastSpellByName("Holy Strike");else if CS1 and (not DB or DB<5) then if GetSpellCooldown(CS1,"spell")==0 then CastSpellByName("Crusader Strike");end;end;end;end;end;end;end;end;
---
/script 
local TH,DB,tex,cnt,ix,At,HS,CS1,CS2,CS3,CS4,CS5,CD;
if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;TH=UnitHealth("target");
for ix=1,192 do 
	if IsAttackAction(ix)then At=ix;end;
	local spellName,spellRank=GetSpellName(ix,"spell") 
	if spellName=="Holy Strike" then HS=ix;end;
	if spellName=="Crusader Strike" and spellRank=="Rank 1" then CS1=ix;end;
	if spellName=="Crusader Strike" and spellRank=="Rank 2" then CS2=ix;end;
	if spellName=="Crusader Strike" and spellRank=="Rank 3" then CS3=ix;end;
	if spellName=="Crusader Strike" and spellRank=="Rank 4" then CS4=ix;end;
	if spellName=="Crusader Strike" and spellRank=="Rank 5" then CS5=ix;end;
	local tex,cnt = UnitDebuff("target",ix);if tex then if strfind(tex,"CrusaderStrike") then DB=cnt;end;end;
end;
if not IsCurrentAction(At)then UseAction(At)end;
if CS1 then CD=GetSpellCooldown(CS1,"spell")end;
if TH<=103 and CS5 and CD==0 then CastSpell(CS5,1);
else if TH<=69 and CS4 and CD==0 then CastSpell(CS4,1);
	else if TH<=46 and CS3 and CD==0 then CastSpell(CS3,1);
		else if TH<=27 and CS2 and CD==0 then CastSpell(CS2,1);
			else if TH<=12 and CS1 and CD==0 then CastSpell(CS1,1);
				else 
					if HS then CD=GetSpellCooldown(HS,"spell");end;
					if HS and CD==0 then CastSpellByName("Holy Strike");
					else 
						if CS1 and (not DB or DB<5) then if GetSpellCooldown(CS1,"spell")==0 then CastSpellByName("Crusader Strike");end;end;
					end;
				end;
			end;
		end;
	end;
end;


-=-
/script local C;for C=1,99 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;end;for C=1,99 do if GetSpellName(C,1)=="Holy Strike"then if GetSpellCooldown(C,1)==0 then CastSpellByName("Holy Strike")else CastSpellByName("Crusader Strike")end;break;end;end;
--
/script local C;
for C=1,99 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C)end;end;
for C=1,99 do 
	if GetSpellName(C,1)=="Holy Strike"then 
		if GetSpellCooldown(C,1)==0 then 
			CastSpellByName("Holy Strike")
		else 
			CastSpellByName("Crusader Strike")
		end;
		break;
	end;
end;