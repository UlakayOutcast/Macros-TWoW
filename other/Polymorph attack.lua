/script local X,D=32;
if UnitExists("taget")then 
	for X=1,32 do D=UnitDebuff("target",X)
		if D=="Polymorph"or D=="Shackle"then ClearTarget()break;end;
	end;
end;
if X==16 then 
	for X=1,96 do if IsAttackAction(X)and not IsCurrentAction(X)then UseAction(X)break;end;end;
end;