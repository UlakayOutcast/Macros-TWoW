attak-wand



-=WA=-
/script local x,s,a;for x=1,99 do if IsAttackAction(x)then a=x;end;if GetSpellName(x,"spell")=="Shoot"then s=x;end;end;s=GetSpellCooldown(s,"spell")if not IsCurrentAction(a) then AttackTarget()end;if s==0 then CastSpellByName("Shoot")end;
-=-
/script local x,s,a;
for x=1,99 do 
	if IsAttackAction(x)then a=x;end;
	if GetSpellName(x,"spell")=="Shoot"then s=x;end;
end;
s=GetSpellCooldown(s,"spell")
if not IsCurrentAction(a) then AttackTarget()end;
if s==0 then CastSpellByName("Shoot")end;

-=AW=-
/script local x,s,a;for x=1,99 do if IsAttackAction(x)then a=x;end;if GetSpellName(x,"spell")=="Shoot" then s=x;end;end;if not IsCurrentAction(a) then AttackTarget()else if GetSpellCooldown(s,"spell")==0 then CastSpellByName("Shoot")end;end

-=-
/script local x,s,a;
for x=1,99 do 
	if IsAttackAction(x)then a=x;end;
	if GetSpellName(x,"spell")=="Shoot" then s=x;end;
end;
if not IsCurrentAction(a) then AttackTarget()
else 
	if GetSpellCooldown(s,"spell")==0 then 
		CastSpellByName("Shoot")
	end;
end


-=BA=-
/script local x,s,a;for x=1,99 do if IsAttackAction(x)then a=x;end;if GetSpellName(x,"spell")=="Auto Shot"then s=x;end;end;if not IsCurrentAction(a) then AttackTarget()end;if GetSpellCooldown(s,"spell")==0 then CastSpellByName("Auto Shot","spell")end;
-=-
/script local x,s,a;
for x=1,99 do 
	if IsAttackAction(x)then a=x;end;
	if GetSpellName(x,"spell")=="Auto Shot"then s=x;end;
end;
if not IsCurrentAction(a) then AttackTarget()end;
if GetSpellCooldown(s,"spell")==0 then CastSpellByName("Auto Shot","spell")end;


-=AB=-
/script local x,s,a;for x=1,99 do if IsAttackAction(x)then a=x;end;if GetSpellName(x,"spell")=="Auto Shot"then s=x;end;end;if not IsCurrentAction(a)then AttackTarget()else if GetSpellCooldown(s,"spell")==0 then CastSpellByName("Auto Shot","spell")end;end

-=-
/script local x,s,a;
for x=1,99 do 
	if IsAttackAction(x)then a=x;end;
	if GetSpellName(x,"spell")=="Auto Shot"then s=x;end;
end;
if not IsCurrentAction(a)then AttackTarget()
else 
	if GetSpellCooldown(s,"spell")==0 then 
		CastSpellByName("Auto Shot","spell")
	end;
end


-=-=-
/script local x,y;if UnitExists("target")==nil then TargetNearestEnemy();end;for x=1,200 do if IsAttackAction(x)then y=x;if not IsCurrentAction(y)then for x=1,200 do if IsAutoRepeatAction(x)then UseAction(y);break;else if x==200 then UseAction(y+1);end;end;end;else UseAction(y+1);end;end;end;

/script local x,y;
if UnitExists("target")==nil then TargetNearestEnemy();end;
for x=1,200 do 
	if IsAttackAction(x)then y=x;
		if not IsCurrentAction(y)then 
			for x=1,200 do 
				if IsAutoRepeatAction(x)then 
					UseAction(y);break;
				else 
					if x==200 then UseAction(y+1);end;
				end;
			end;
		else 
			UseAction(y+1);
		end;
	end;
end;