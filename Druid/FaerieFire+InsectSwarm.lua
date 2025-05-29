/script local C,N,A,X=CastSpellByName;local function DB(N,T)if UnitExists("target")then for X=1,32 do T=UnitDebuff("target",X);if not T then X=32;else if strfind(T,N)then return T;end;end;end;end;end;for X=1,GetNumShapeshiftForms()do _,N,A=GetShapeshiftFormInfo(X)if A==1 then CastShapeshiftForm(X)break;end;end;if not A then  if not DB("FaerieFire")then C("Faerie Fire")else if not DB("InsectSwarm")then C("Insect Swarm")end; end; end;

/script local C,N,A,X=CastSpellByName;
local function DB(N,T)
	if UnitExists("target")then 
		for X=1,32 do 
			T=UnitDebuff("target",X);
			if not T then X=32;
			else 
				if strfind(T,N)then return T;end;
			end;
		end;
	end;
end;
for X=1,GetNumShapeshiftForms()do 
	_,N,A=GetShapeshiftFormInfo(X)
	if A==1 then CastShapeshiftForm(X)break;end;
end;
if not A then  
	if not DB("FaerieFire")then C("Faerie Fire")
	else 
		if not DB("InsectSwarm")then C("Insect Swarm")end;
	end; 
end;