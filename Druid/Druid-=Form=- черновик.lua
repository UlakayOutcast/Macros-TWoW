Bear Form + Feral Charge
/script local C,N,A,X="Bear Form";for X=1,GetNumShapeshiftForms()do _,N,A=GetShapeshiftFormInfo(X)if A==1 then A=X;break;end;end;if N==C then CastSpellByName("Feral Charge")else if A then CastShapeshiftForm(A)else CastSpellByName(C)end;end;

/script local C,N,A,X="Bear Form";
for X=1,GetNumShapeshiftForms()do 
	_,N,A=GetShapeshiftFormInfo(X)
	if A==1 then A=X;break;end;
end;
if N==C then 
	CastSpellByName("Feral Charge")
else 
	if A then 
		CastShapeshiftForm(A)
	else 
		CastSpellByName(C)
	end;
end;


Dire Bear Form + Feral Charge
/script local C,N,A,X="Dire Bear Form";for X=1,GetNumShapeshiftForms()do _,N,A=GetShapeshiftFormInfo(X)if A==1 then A=X;break;end;end;if N==C then CastSpellByName("Feral Charge")else if A then CastShapeshiftForm(A)else CastSpellByName(C)end;end;

/script local C,N,A,X="Dire Bear Form";
for X=1,GetNumShapeshiftForms()do 
	_,N,A=GetShapeshiftFormInfo(X)
	if A==1 then A=X;break;end;
end;
if N==C then 
	CastSpellByName("Feral Charge")
else 
	if A then 
		CastShapeshiftForm(A)
	else 
		CastSpellByName(C)
	end;
end;


Cat Form + Prowl
/script local C,N,A,X="Cat Form";for X=1,GetNumShapeshiftForms()do _,N,A=GetShapeshiftFormInfo(X)if A==1 then A=X;break;end;end;if N==C then CastSpellByName("Prowl")else if A then CastShapeshiftForm(A)else CastSpellByName(C)end;end;

/script local C,N,A,X="Cat Form";
for X=1,GetNumShapeshiftForms()do 
	_,N,A=GetShapeshiftFormInfo(X)
	if A==1 then A=X;break;end;
end;
if N==C then 
	CastSpellByName("Prowl")
else 
	if A then 
		CastShapeshiftForm(A)
	else 
		CastSpellByName(C)
	end;
end;


Cancel Form + Rejuvenation
/script local C,N,A,X="Cat Form";for X=1,GetNumShapeshiftForms()do _,N,A=GetShapeshiftFormInfo(X)if A==1 then A=X;break;end;end;if not A then CastSpellByName("Rejuvenation")else CastShapeshiftForm(A)end;

/script local C,N,A,X="Cat Form";
for X=1,GetNumShapeshiftForms()do 
	_,N,A=GetShapeshiftFormInfo(X)
	if A==1 then A=X;break;end;
end;
if not A then 
	CastSpellByName("Rejuvenation")
else 
	CastShapeshiftForm(A)
end;