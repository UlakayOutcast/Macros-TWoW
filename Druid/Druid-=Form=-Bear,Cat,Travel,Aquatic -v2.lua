Выходит из любой формы или принимает фору если не в форме.
-=Bear Form=-
/script local N,X=GetNumShapeshiftForms()for X=1,N do if strfind(GetShapeshiftFormInfo(X),"WispSplode")then CastShapeshiftForm(X)N=0;end;end;for X=1,N do if strfind(GetShapeshiftFormInfo(X),"BearForm")then CastSpellByName("Bear Form")end;end;
-=-
/script local N,X=GetNumShapeshiftForms()
for X=1,N do 
	if strfind(GetShapeshiftFormInfo(X),"WispSplode")then 
		CastShapeshiftForm(X)N=0;
	end;
end;
for X=1,N do 
	if strfind(GetShapeshiftFormInfo(X),"BearForm")then 
		CastSpellByName("Bear Form")
	end;
end;

-=Dire Bear Form=-
/script local N,X=GetNumShapeshiftForms()for X=1,N do if strfind(GetShapeshiftFormInfo(X),"WispSplode")then CastShapeshiftForm(X)N=0;end;end;for X=1,N do if strfind(GetShapeshiftFormInfo(X),"BearForm")then CastSpellByName("Dire Bear Form")end;end;
-=-
/script local N,X=GetNumShapeshiftForms()
for X=1,N do 
	if strfind(GetShapeshiftFormInfo(X),"WispSplode")then 
		CastShapeshiftForm(X)N=0;
	end;
end;
for X=1,N do 
	if strfind(GetShapeshiftFormInfo(X),"BearForm")then 
		CastSpellByName("Dire Bear Form")
	end;
end;


-=Cat Form=-
/script local N,X=GetNumShapeshiftForms()for X=1,N do if strfind(GetShapeshiftFormInfo(X),"WispSplode")then CastShapeshiftForm(X)N=0;end;end;for X=1,N do if strfind(GetShapeshiftFormInfo(X),"CatForm")then CastSpellByName("Cat Form")end;end;
-=-
/script local N,X=GetNumShapeshiftForms()
for X=1,N do 
	if strfind(GetShapeshiftFormInfo(X),"WispSplode")then 
		CastShapeshiftForm(X)N=0;
	end;
end;
for X=1,N do 
	if strfind(GetShapeshiftFormInfo(X),"CatForm")then 
		CastSpellByName("Cat Form")
	end;
end;


-=Travel Form=-
/script local N,X=GetNumShapeshiftForms()for X=1,N do if strfind(GetShapeshiftFormInfo(X),"WispSplode")then CastShapeshiftForm(X)N=0;end;end;for X=1,N do if strfind(GetShapeshiftFormInfo(X),"TravelForm")then CastSpellByName("Travel Form")end;end;
-=-
/script local N,X=GetNumShapeshiftForms()
for X=1,N do 
	if strfind(GetShapeshiftFormInfo(X),"WispSplode")then 
		CastShapeshiftForm(X)N=0;
	end;
end;
for X=1,N do 
	if strfind(GetShapeshiftFormInfo(X),"TravelForm")then 
		CastSpellByName("Travel Form")
	end;
end;


-=Aquatic Form=-
/script local N,X=GetNumShapeshiftForms()for X=1,N do if strfind(GetShapeshiftFormInfo(X),"WispSplode")then CastShapeshiftForm(X)N=0;end;end;for X=1,N do if strfind(GetShapeshiftFormInfo(X),"AquaticForm")then CastSpellByName("Aquatic Form")end;end;
-=-
/script local N,X=GetNumShapeshiftForms()
for X=1,N do 
	if strfind(GetShapeshiftFormInfo(X),"WispSplode")then 
		CastShapeshiftForm(X)N=0;
	end;
end;
for X=1,N do 
	if strfind(GetShapeshiftFormInfo(X),"AquaticForm")then 
		CastSpellByName("Aquatic Form")
	end;
end;


-=Moonkin Form=-
/script local N,X=GetNumShapeshiftForms()for X=1,N do if strfind(GetShapeshiftFormInfo(X),"WispSplode")then CastShapeshiftForm(X)N=0;end;end;for X=1,N do if strfind(GetShapeshiftFormInfo(X),"ForceOfNature")then CastSpellByName("Moonkin Form")end;end;
-=-
/script local N,X=GetNumShapeshiftForms()
for X=1,N do 
	if strfind(GetShapeshiftFormInfo(X),"WispSplode")then 
		CastShapeshiftForm(X)N=0;
	end;
end;
for X=1,N do 
	if strfind(GetShapeshiftFormInfo(X),"ForceOfNature")then 
		CastSpellByName("Moonkin Form")
	end;
end;


-=Tree of Life Form=-
/script local N,X=GetNumShapeshiftForms()for X=1,N do if strfind(GetShapeshiftFormInfo(X),"WispSplode")then CastShapeshiftForm(X)N=0;end;end;for X=1,N do if strfind(GetShapeshiftFormInfo(X),"TreeofLife")then CastSpellByName("Tree of Life Form")end;end;
-=-
/script local N,X=GetNumShapeshiftForms()
for X=1,N do 
	if strfind(GetShapeshiftFormInfo(X),"WispSplode")then 
		CastShapeshiftForm(X)N=0;
	end;
end;
for X=1,N do 
	if strfind(GetShapeshiftFormInfo(X),"TreeofLife")then 
		CastSpellByName("Tree of Life Form")
	end;
end;




/script local ix,SN=1,GetSpellName(1,"spell");while(SN)do ix=ix+1;SN=GetSpellName(ix,"spell");if SN=="Bear Form"then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Bear Form");end;break;end;end;
/script local ix,SN=1,GetSpellName(1,"spell");while(SN)do ix=ix+1;SN=GetSpellName(ix,"spell");if SN=="Dire Bear Form"then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Dire Bear Form");end;break;end;end;
/script local ix,SN=1,GetSpellName(1,"spell");while(SN)do ix=ix+1;SN=GetSpellName(ix,"spell");if SN=="Cat Form"then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Cat Form");end;break;end;end;
/script local ix,SN=1;SN=GetSpellName(ix,"spell");while(SN)do ix=ix+1;SN=GetSpellName(ix,"spell");if SN=="Moonkin Form"then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Moonkin Form");end;break;end;end;
/script local ix,SN=1,GetSpellName(1,"spell");while(SN)do ix=ix+1;SN=GetSpellName(ix,"spell");if SN=="Travel Form"then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Travel Form");end;break;end;end;
/script local ix,SN=1,GetSpellName(1,"spell");while(SN)do ix=ix+1;SN=GetSpellName(ix,"spell");if SN=="Aquatic Form"then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Aquatic Form");end;break;end;end;
/script local ix,SN=1;SN=GetSpellName(ix,"spell");while(SN)do ix=ix+1;SN=GetSpellName(ix,"spell");if SN=="Tree of Life Form"then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Tree of Life Form");end;break;end;end;
