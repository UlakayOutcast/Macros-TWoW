-=[Attack]+Raptor Strike,Mongoose Bite,Counterattack=-
/script for C=1,96 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C);end;end;CastSpellByName("Raptor Strike");CastSpellByName("Mongoose Bite");CastSpellByName("Counterattack");

/script 
for C=1,96 do if IsAttackAction(C)and not IsCurrentAction(C)then UseAction(C);end;end;
CastSpellByName("Raptor Strike");
CastSpellByName("Mongoose Bite");
CastSpellByName("Counterattack");


-=RMC=- С проверкой отката
/script local X;for X=1,192 do if GetSpellName(X,"spell")=="Raptor Strike"then if GetSpellCooldown(X,"spell")==0 then CastSpellByName("Raptor Strike");else CastSpellByName("Mongoose Bite");CastSpellByName("Counterattack");end;break;end;end;

/script local X;
for X=1,192 do 
	if GetSpellName(X,"spell")=="Raptor Strike"then 
		if GetSpellCooldown(X,"spell")==0 then 
			CastSpellByName("Raptor Strike");
		else 
			CastSpellByName("Mongoose Bite");
			CastSpellByName("Counterattack");
		end;
		break;
	end;
end;


-=ARMC=- С проверкой отката. SuperMacro
/script local A,R,M,C,X;for X=1,192 do if IsAttackAction(X)then A=X;end;if GetSpellName(X,"spell")=="Raptor Strike"then R=X;end;if GetSpellName(X,"spell")=="Mongoose Bite"then M=X;end;if GetSpellName(X,"spell")=="Counterattack"then C=X;end;end;if not IsCurrentAction(A) then UseAction(A);end;if R and GetSpellCooldown(R,"spell")==0 then CastSpellByName("Raptor Strike")end;if M and GetSpellCooldown(M,"spell")==0 then CastSpellByName("Mongoose Bite")end;if C and GetSpellCooldown(C,"spell")==0 then CastSpellByName("Counterattack")end;

/script local A,R,M,C,X;
for X=1,192 do 
	if IsAttackAction(X)then A=X;end;
	if GetSpellName(X,"spell")=="Raptor Strike"then R=X;end;
	if GetSpellName(X,"spell")=="Mongoose Bite"then M=X;end;
	if GetSpellName(X,"spell")=="Counterattack"then C=X;end;
end;
if not IsCurrentAction(A) then UseAction(A);end;
if R and GetSpellCooldown(R,"spell")==0 then CastSpellByName("Raptor Strike")end;
if M and GetSpellCooldown(M,"spell")==0 then CastSpellByName("Mongoose Bite")end;
if C and GetSpellCooldown(C,"spell")==0 then CastSpellByName("Counterattack")end;



-=ARMC=- С проверкой отката и подстановкой ранга. SuperMacro
/script local N,R,C;local UL=UnitLevel;if UnitExists("target")==nil then TargetNearestEnemy();end;for C=1,72 do if IsAttackAction(C)then if not IsCurrentAction(C)then UseAction(C);end;C=72;end;end;if UL("player")>55 then LV="Rank 8" else if UL("player")>47 then LV="Rank 7" else if UL("player")>39 then LV="Rank 6" else if UL("player")>31 then LV="Rank 5" else if UL("player")>23 then LV="Rank 4" else if UL("player")>15 then LV="Rank 3" else if UL("player")>7 then LV="Rank 2" else if UL("player")>0 then LV="Rank 1" else LV="0" end;end;end;end;end;end;end;end; for C=1,200,1 do N,R=GetSpellName(C,"spell");if N=="Raptor Strike" and R==LV and GetSpellCooldown(C,"spell")==0 then CastSpellByName("Raptor Strike("..LV..")");break;end;end;if UL("player")>57 then LV="Rank 4" else if UL("player")>43 then LV="Rank 3" else if UL("player")>29 then LV="Rank 2" else if UL("player")>15 then LV="Rank 1" else LV="0" end;end;end;end;for C=1,200,1 do N,R=GetSpellName(C,"spell");if N=="Raptor Strike" and R==LV and GetSpellCooldown(C,"spell")==0 then CastSpellByName("Mongoose Bite("..LV..")");break;end;end;if UL("player")>53 then LV="Rank 3" else if UL("player")>41 then LV="Rank 2" else if UL("player")>30 then LV="Rank 1" else LV="0" end;end;end;for C=1,200,1 do N,R=GetSpellName(C,"spell");if N=="Raptor Strike" and R==LV and GetSpellCooldown(C,"spell")==0 then CastSpellByName("Counterattack("..LV..")");break;end;end;

/script local N,R,C;local UL=UnitLevel;
if UnitExists("target")==nil then TargetNearestEnemy();end;
for C=1,72 do 
	if IsAttackAction(C)then 
		if not IsCurrentAction(C)then UseAction(C);end;C=72;
	end;
end;
if UL("player")>55 then LV="Rank 8" else 
if UL("player")>47 then LV="Rank 7" else 
if UL("player")>39 then LV="Rank 6" else 
if UL("player")>31 then LV="Rank 5" else 
if UL("player")>23 then LV="Rank 4" else 
if UL("player")>15 then LV="Rank 3" else 
if UL("player")>7 then LV="Rank 2" else 
if UL("player")>0 then LV="Rank 1" else LV="0" 
end;end;end;end;end;end;end;end; 
for C=1,200,1 do N,R=GetSpellName(C,"spell");
	if N=="Raptor Strike" and R==LV and GetSpellCooldown(C,"spell")==0 then 
		CastSpellByName("Raptor Strike("..LV..")");break;
	end;
end;
if UL("player")>57 then LV="Rank 4" else 
if UL("player")>43 then LV="Rank 3" else 
if UL("player")>29 then LV="Rank 2" else 
if UL("player")>15 then LV="Rank 1" else LV="0" 
end;end;end;end;
for C=1,200,1 do N,R=GetSpellName(C,"spell");
	if N=="Raptor Strike" and R==LV and GetSpellCooldown(C,"spell")==0 then 
		CastSpellByName("Mongoose Bite("..LV..")");break;
	end;
end;
if UL("player")>53 then LV="Rank 3" else 
if UL("player")>41 then LV="Rank 2" else 
if UL("player")>30 then LV="Rank 1" else LV="0" 
end;end;end;
for C=1,200,1 do N,R=GetSpellName(C,"spell");
	if N=="Raptor Strike" and R==LV and GetSpellCooldown(C,"spell")==0 then 
		CastSpellByName("Counterattack("..LV..")");break;
	end;
end;